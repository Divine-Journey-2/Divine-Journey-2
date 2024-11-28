#!/usr/bin/env python3

# Originally from mc-modpack-template by htmlcsjs, licensed as LGPLv3
# https://github.com/htmlcsjs/mc-modpack-template/blob/main/build/main.py
#
# Modified by WaitingIdly for Divine Journey 2, licensed as GPLv3


"""build client & server bundles

Requires that the file structure have a manifest.json, modlist.html,
LICENSE, and an overrides folder on the same level as the buildtools
folder containing this file.
"""

from argparse import ArgumentParser
from hashlib import sha256
from threading import Thread
import json
import os
import shutil
import subprocess
import requests
from requests.adapters import HTTPAdapter
from urllib3.util.retry import Retry
from time import time


def parse_args():
    parser = ArgumentParser(prog="build", description=__doc__)
    parser.add_argument("--name", "-N",
                        type=str,
                        default="Divine Journey 2",
                        help="the name of the pack being released")
    parser.add_argument("--version", "-V",
                        type=str,
                        required=False,
                        help="the version of the pack being released")
    parser.add_argument("--prerelease", "-P",
                        action="store_true",
                        help="generates a name based on the manifest version, date of last commit, and sha of last commit")
    parser.add_argument("--retries",
                        type=int,
                        default=3,
                        help="download attempts before failure")
    parser.add_argument("--wipe", "-W",
                        action="store_true",
                        help="wipe output dirs")
    parser.add_argument("--client", "-C",
                        action="store_true",
                        help="build and export client")
    parser.add_argument("--server", "-S",
                        action="store_true",
                        help="build and export server. may require download to be true to function")
    parser.add_argument("--download", "-D",
                        action="store_true",
                        help="downloads mods from curseforge")
    parser.add_argument("--zip", "-Z",
                        action="store_true",
                        help="Zips up the output files for further use")
    parser.add_argument("--dev",
                        type=str,
                        help="makes a folder with all the files symlinked for development. probably only works on linux")
    parser.add_argument("--key",
                        type=str,
                        default=None,
                        help="the curseforge download api key. default of ./API-KEY and then the os env variable of CFAPIKEY")
    return parser.parse_args()


# The path to the Divine Journey 2 root folder
basePath = os.path.normpath(os.path.abspath(f"{__file__}/../../"))

buildOut = f"{basePath}/build"
client = f"{buildOut}/client"
server = f"{buildOut}/server"
cache = f"{buildOut}/cache"
output = f"{buildOut}/output"

# Files and directories that should be deleted
deleteConfigFiles = [
    "brandon3055/ProjectIntelligence",
    "brandon3055/ResourceCache"
    "splash.properties",
    "jei/worldSettings.cfg",
    "InvTweaks.cfg",
    "AppliedEnergistics2/VersionChecker.cfg",
    "AppliedEnergistics2/items.csv",
    "jei/bookmarks.ini",
    "tconstruct_oredictcache.dat",
    "brandon3055/contributors.json",
    "thaumicjei_itemstack_aspects.json"
]
# Directories that should be copied to the serverfiles
serverCopyDirs = [
    "scripts",
    "config",
    "structures"
]
# Directories that should be symlinked when creating a mmc-compatible instance
symLinkDirs = [
    "config",
    "resources",
    "scripts",
    "structures"
]
# Files which contain a "@PACK_VERSION@" which must be replaced with the pack variable number
filesToUpdateVersionClient = [
    "manifest.json",
    "overrides/config/CustomMainMenu/mainmenu.json",
    "overrides/config/mputils/addons/mpbasic/mpbasic.cfg"
]
filesToUpdateVersionServer = [
    "manifest.json",
    "config/CustomMainMenu/mainmenu.json",
    "config/mputils/addons/mpbasic/mpbasic.cfg"
]

def print_argument_settings(args):
    """Prints what the build command will do"""
    print("starting the build process with the following settings")
    print(f"name: {args.name}")
    print(f"version: {args.version}")
    print(f"client: {args.client}")
    print(f"server: {args.server}")
    print(f"MultiMC-compatible Instance: {args.dev != None}")
    print(f"create zip: {args.zip}")
    print(f"download mods: {args.download}")
    print(f"pre-release: {args.prerelease}")
    print(f"deleting prior files: {args.wipe}")


def getApiKey(key: str) -> str:
    """Return the CurseForge API key"""
    if (key == None):
        key = os.getenv("CFAPIKEY")

    if (key == None):
        with open(f"{basePath}/buildtools/API-KEY", "r") as file:
            key = file.readline().replace("\n", "")

    return key


def createBaseDir():
    """Create the client, server, cache, and mods directory"""
    os.makedirs(client, exist_ok=True)
    os.makedirs(server, exist_ok=True)
    os.makedirs(cache, exist_ok=True)
    os.makedirs(output, exist_ok=True)
    os.makedirs(f"{cache}/libraries", exist_ok=True)
    os.makedirs(f"{cache}/mods", exist_ok=True)
    os.makedirs(f"{cache}/mods/client", exist_ok=True)
    os.makedirs(f"{cache}/mods/server", exist_ok=True)


def serverModNotice(failedModDownload: list):
    """Mods that could not be downloaded"""
    if (len(failedModDownload) != 0):
        print(f"Could not download {len(failedModDownload)} mods")
        with open(f"{server}/README_SERVER.md", "w") as f:
            f.write("\n# YOU NEED TO MANUALLY DOWNLOAD THESE MODS\n")
            for i in failedModDownload:
                f.write(f"{i}\n")


def fetchMod(modlistClient: list, modlistServer: list, failedModDownload: list, mod: dict, headers: dict):
    """Fetches a mod from the Curseforge API"""

    basicUrl = "https://api.curseforge.com/v1/mods/{0}/files/{1}/download-url".format(mod["projectID"], mod["fileID"])
    standard = requests.get(basicUrl, headers=headers)

    if (standard.status_code == 403):
        print("Curseforge returned status code 403 Forbidden, which typically means your API key is invalid")
        return
    try:
        metadata = json.loads(standard.text)
    except:
        print(f"failed to download {basicUrl}")
        if ("slug" in mod):
            failedModDownload.append("https://www.curseforge.com/minecraft/mc-mods/{0}/files/{1}".format(mod["slug"], mod["fileID"]))
        else:
            mod_request = requests.get("https://api.curseforge.com/v1/mods/{0}".format(mod["projectID"]), headers=headers)
            try:
                data = mod_request.json()["data"]
                failedModDownload.append("https://www.curseforge.com/minecraft/mc-mods/{0}/files/{1}".format(data["slug"], mod["fileID"]))
            except:
                failedModDownload.append("This is the raw mod id and file id, the cf api was being mega fucked: `{0}`, `{1}`".format(mod["projectID"], mod["fileID"]))
        return

    # Put the mod in a list depending on if its client only
    if (("clientOnly" in mod and mod["clientOnly"])):
        modlistClient.append(metadata["data"])
    else:
        modlistServer.append(metadata["data"])


def generateModlist(manifest: dict, key: str, modlistServer: list, modlistClient: list, retries: int):
    """Get the list of URLs of mods from Curseforge"""
    print("getting the download url of all mods")

    failedModDownload = []

    access = requests.Session()
    access.mount("https://", HTTPAdapter(max_retries=Retry(total=retries, backoff_factor=1)))
    headers = {"Accept": "application/json", "x-api-key": key}
    standard = requests.get("https://api.curseforge.com/v1/games", headers=headers)

    if standard.status_code == 403:
        print("Curseforge returned status code 403 Forbidden")
        print("This typically means your API key is invalid")
        print(headers["x-api-key"])
        print("Skipping downloading mods")
    else:
        threads = []
        for mod in manifest["files"]:
            threads.append(Thread(target=fetchMod, args=(modlistClient, modlistServer, failedModDownload, mod, headers,)))
            threads[-1].start()
        for thread in threads:
            thread.join()

    serverModNotice(failedModDownload)
    print("modlist compiled")


def externalDeps(manifest, retries: int):
    """If we have external dependencies, try to download them"""
    counter = 0

    if ("externalDeps" in manifest and len(manifest["externalDeps"]) != 0):
        for mod in manifest["externalDeps"]:
            link = mod["url"].split("/")[-1]
            with open(f"{cache}/mods/{link}", "w+b") as jar:
                counter += 1
                for i in range(retries + 1):
                    if (i == retries):
                        raise Exception("Download failed")

                    r = requests.get(mod["url"])

                    hash = sha256(r.content).hexdigest()
                    if (str(hash) == mod["hash"]):
                        jar.write(r.content)
                        print("hash successful for {}".format(mod["name"]))
                        break
                    else:
                        print("hash unsuccessful for {}".format(mod["name"]))
                        print("use", str(hash), "this if it is consistent across runs")
                        pass
    if counter > 0:
        print(f"downloaded {str(counter)} mods via external dependencies")


def downloadMod(downloadedMods: list, location: str, mod, retries: int):
    """Downloads a mod to a folder in the cache"""

    access = requests.Session()
    access.mount("https://", HTTPAdapter(max_retries=Retry(total=retries, backoff_factor=1)))
    response = access.get(mod)

    link = mod.split("/")[-1]
    with open(f"{cache}/mods/{location}/{link}", "w+b") as jar:
        jar.write(response.content)
        print(f"{mod} downloaded")
        downloadedMods.append(mod)


def downloadModList(modlistServer: list, modlistClient: list, retries: int):
    """Download mods generated by generateModlist"""

    # Clear cached mods
    shutil.rmtree(f"{cache}/mods/client", ignore_errors=True)
    shutil.rmtree(f"{cache}/mods/server", ignore_errors=True)
    os.makedirs(f"{cache}/mods/client", exist_ok=True)
    os.makedirs(f"{cache}/mods/server", exist_ok=True)

    # Copy mod overrides into cache
    shutil.copytree(f"{basePath}/overrides/mods", f"{cache}/mods/server", dirs_exist_ok=True)

    # Download all mods to a location based on their list to the cache
    threads = []
    downloadedMods = []
    for mod in modlistServer:
        threads.append(Thread(target=downloadMod, args=(downloadedMods, "server", mod, retries)))
        threads[-1].start()
    for mod in modlistClient:
        threads.append(Thread(target=downloadMod, args=(downloadedMods, "client", mod, retries)))
        threads[-1].start()
    for thread in threads:
        thread.join()

    print(f"{len(downloadedMods)} mods downloaded")

    if len(downloadedMods) >= (len(modlistServer) + len(modlistClient)):
        print("all mods were downloaded")
    else:
        print("failed to download all mods, the following mods were not downloaded")
        missingMods = [x for x in (modlistServer + modlistClient) if x not in downloadedMods]
        for mod in missingMods:
            print(mod)


def getGitTagVersion() -> str:
    """Get the current git tag to determine the version"""
    try:
        return subprocess.run(["git", "describe", "--abbrev=0", "--tags"], capture_output=True, cwd=basePath).stdout.strip().decode("utf-8")
    except:
        print("could not determine git sha, skipping")
    return ""


def getStandardName(name: str, version: str) -> str:
    """Get the standard name based on the args"""
    name = name.replace(' ', '_')
    version = version.replace('2.', '.')
    return f"{name}{version}"


def getPreReleaseName() -> str:
    """Get the prerelease name based on the date of the last commit and the git sha to name the zip files"""
    try:
        p = subprocess.run(["git", "rev-parse", "--short", "HEAD"], capture_output=True, cwd=basePath)
        link = p.stdout.strip().decode("utf-8")
        name = subprocess.getoutput("git log -1 --format=\"%as\"")
        return f"{name}_{link}"
    except:
        print("could not determine git sha, skipping")
    return ""


def convertPackVersion(root: str, version: str, locations: list):
    """Convert the @PACK_VERSION@ placeholders into the actual pack version being used"""
    for target in locations:
        file = f"{root}/{target}"
        if os.path.isfile(file) and os.path.exists(file):
            f = open(file, "r")
            filedata = f.read()
            f.close()

            newdata = filedata.replace("@PACK_VERSION@", version)

            with open(file, 'w') as new:
                new.write(newdata)


def getForgeVersion(manifest):
    """Get the Forge version"""
    forgeVer = manifest["minecraft"]["modLoaders"][0]["id"].split("-")[-1]
    mcVer = manifest["minecraft"]["version"]
    return f"forge-{mcVer}-{forgeVer}.jar"


def getForgeInstaller(manifest):
    """Get the URL to the Forge installer"""
    forgeVer = manifest["minecraft"]["modLoaders"][0]["id"].split("-")[-1]
    mcVer = manifest["minecraft"]["version"]
    return f"https://maven.minecraftforge.net/net/minecraftforge/forge/{mcVer}-{forgeVer}/forge-{mcVer}-{forgeVer}-installer.jar"


def forgeInstaller(manifest):
    """Download the Forge Installer and install it"""
    with open(f"{cache}/forge-installer.jar", "w+b") as jar:
        url = getForgeInstaller(manifest)
        r = requests.get(url)
        jar.write(r.content)

    print("Forge installer Downloaded")

    vanilla = f"{server}/minecraft_server.1.12.2.jar"

    if (not os.path.isfile(vanilla)):
        with open(f"{server}/minecraft_server.1.12.2.jar", "w+b") as jar:
            url = "https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar"
            r = requests.get(url)
            jar.write(r.content)
        print("Vanilla Downloaded")

    subprocess.run(["java", "-jar", "forge-installer.jar", "--installServer"], cwd=f"{cache}/")

    print("Forge Installed")

    try:
        os.remove(f"{cache}/forge-installer.jar")
    except Exception as e:
        print(f"Couldn't delete forge-installer.jar: {e}")

    try:
        os.remove(f"{cache}/forge-installer.jar.log")
    except Exception as e:
        print(f"Couldn't delete forge-installer.jar.log: {e}")


def copyClient():
    """Copy required contents to client instance, and then delete designated files"""
    shutil.copy(f"{basePath}/manifest.json", f"{client}/manifest.json")
    shutil.copy(f"{basePath}/LICENSE", f"{client}/LICENSE")
    shutil.copy(f"{basePath}/modlist.html", f"{client}/modlist.html")

    try:
        shutil.copytree(f"{basePath}/overrides", f"{client}/overrides")
    except:
        pass

    for file in deleteConfigFiles:
        location = f"{client}/overrides/config/{file}"
        if (os.path.isfile(location)):
            try:
                os.remove(location)
            except:
                pass
        else:
            shutil.rmtree(location, ignore_errors=True)


def copyServer(manifest):
    """Copy required contents to server instance, and then delete designated files"""
    shutil.copy(f"{basePath}/manifest.json", f"{server}/manifest.json")
    shutil.copy(f"{basePath}/LICENSE", f"{server}/LICENSE")
    shutil.copy(f"{basePath}/modlist.html", f"{server}/modlist.html")

    shutil.copy(f"{cache}/{getForgeVersion(manifest)}", server)
    shutil.copy(f"{cache}/minecraft_server.1.12.2.jar", server)
    shutil.copytree(f"{basePath}/serverfiles", server, dirs_exist_ok=True)
    shutil.copytree(f"{cache}/mods/server", f"{server}/mods", dirs_exist_ok=True)
    shutil.copytree(f"{cache}/libraries", f"{server}/libraries", dirs_exist_ok=True)

    for dir in serverCopyDirs:
        try:
            shutil.copytree(f"{basePath}/overrides/{dir}", f"{server}/{dir}")
        except:
            pass

    for file in deleteConfigFiles:
        location = f"{server}/config/{file}"
        if (os.path.isfile(location)):
            try:
                os.remove(location)
            except:
                pass
        else:
            shutil.rmtree(location, ignore_errors=True)

    print("directories copied to build/server")

def saveGithubOutput(location: str, value: str):
    """Save a value to a location for github to output from the current workflow job"""
    if os.getenv("GITHUB_OUTPUT") != None:
        with open(os.getenv("GITHUB_OUTPUT"), "a") as fh:
            print(f"{location}={value}", file=fh)


def buildClient(archive: str):
    """Build the client zip"""
    saveGithubOutput("client_name", archive)
    shutil.make_archive(f"{output}/{archive}", "zip", client)
    print(f"client zip \"{archive}.zip\" made")


def buildServer(archive: str):
    """Build the server zip"""
    saveGithubOutput("server_name", archive)
    shutil.make_archive(f"{output}/{archive}", "zip", server)
    print(f"server zip \"{archive}.zip\" made")


def updateMMCInstance(instancePath: str):
    """Update an existing MultiMC (or fork, eg Prism Launcher) compatible instance to contain the correct files"""
    print(f"linking the instance {instancePath}")

    # Copy all mods from both server and client caches into MMC after clearing it
    shutil.rmtree(f"{instancePath}/mods", ignore_errors=True)
    shutil.copytree(f"{cache}/mods/server", f"{instancePath}/mods", dirs_exist_ok=True)
    shutil.copytree(f"{cache}/mods/client", f"{instancePath}/mods", dirs_exist_ok=True)
    # Link all overrides to instance
    for dir in symLinkDirs:
        try:
            shutil.rmtree(f"{instancePath}/{dir}", ignore_errors=True)
            os.symlink(f"{client}/overrides/{dir}", f"{instancePath}/{dir}")
        except Exception as e:
            print(f"failed to copy link because of {e}")
    print("your instance is now linked to the git repo")


def printTime(start: int, description: str):
    """Print the time since the start for the given task to be accomplished"""
    print(f"{description} {str(round(time() - start, 2))} seconds")


def build(args):
    """Build client, server, and with options for more"""

    print_argument_settings(args)

    start = time()

    modlistServer = []
    modlistClient = []

    if (not args.client and not args.server and not args.dev):
        print("you must specify either client, server, or dev")
        return

    # Curseforge api key
    apiKey = getApiKey(args.key)

    # Read the manifest
    with open(f"{basePath}/manifest.json", "r") as file:
        manifest = json.load(file)

    # Remove the output zips along with client and server folders if relevant
    if (args.wipe):
        shutil.rmtree(output, ignore_errors=True)
        if (args.client):
            shutil.rmtree(client, ignore_errors=True)
        if (args.server):
            shutil.rmtree(server, ignore_errors=True)

    # Ensure the base directories exist
    createBaseDir()

    if (args.download):
        printTime(start, "starting download process at")

        # Download any external dependencies defined in the manifest, and add successful downloads to the modlist
        externalDeps(manifest, args.retries)
        printTime(start, "downloaded external dependencies in")

        # Create modlist
        generateModlist(manifest, apiKey, modlistServer, modlistClient, args.retries)
        printTime(start, "generated a modlist to download in")

        # Download mods
        downloadModList(modlistServer, modlistClient, args.retries)
        printTime(start, "downloaded the modlist in")

    # Download and install Forge and its libraries
    if (args.server):
        forgeInstaller(manifest)
        printTime(start, "installed the forge installer in")

    # Get the modpack version from git tags if not an argument
    version = getGitTagVersion() if args.version == None else args.version

    # Copy required files to the client instance
    if (args.client):
        copyClient()
        convertPackVersion(client, version, filesToUpdateVersionClient)

    # Copy required files to the server instance
    if (args.server):
        copyServer(manifest)
        convertPackVersion(server, version, filesToUpdateVersionServer)

    if (args.zip):
        # Get the standard name of the pack
        standardName = getStandardName(args.name, version)

        # Get the date and sha of the most recent git commit
        preReleaseName = getPreReleaseName() if args.prerelease else ""

        archive_name = f"{standardName}_{preReleaseName}" if preReleaseName else standardName

        # Zip the client
        if (args.client):
            buildClient(archive_name)

        # Zip the server
        if (args.server):
            buildServer(f"{archive_name}_Server_Pack")

    if (args.dev):
        updateMMCInstance(args.dev)

    printTime(start, "done in")


if (__name__ == "__main__"):
    build(parse_args())
