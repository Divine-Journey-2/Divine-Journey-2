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

import argparse
import hashlib
import json
import os
import shutil
import subprocess
import requests


def parse_args():
    parser = argparse.ArgumentParser(prog="build", description=__doc__)
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
basePath = os.path.normpath(os.path.abspath(__file__ + "/../../"))

buildOut = basePath + "/build"
client = buildOut + "/client"
server = buildOut + "/server"
cache = buildOut + "/cache"
output = buildOut + "/output"

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


def createBaseDir():
    """Create the client, server, cache, and mods directory"""
    os.makedirs(client, exist_ok=True)
    os.makedirs(server, exist_ok=True)
    os.makedirs(cache, exist_ok=True)
    os.makedirs(cache + "/libraries", exist_ok=True)
    os.makedirs(cache + "/mods", exist_ok=True)
    os.makedirs(cache + "/mods/client", exist_ok=True)
    os.makedirs(cache + "/mods/server", exist_ok=True)


def serverModNotice(failedModDownload: list):
    """Mods that could not be downloaded"""
    if (len(failedModDownload) != 0):
        print("Could not download %s mods" % (len(failedModDownload)))
        with open(server + "/README_SERVER.md", "w") as f:
            f.write("\n# YOU NEED TO MANUALLY DOWNLOAD THESE MODS\n")
            for i in failedModDownload:
                f.write(i + "\n")


def generateModlist(manifest, key: str, modlistServer: list, modlistClient: list):
    """Get the list of URLs of mods from Curseforge"""
    print("Downloading mods")

    failedModDownload = []

    # Curseforge api key
    if (key == None):
        with open(basePath + "/buildtools/API-KEY", "r") as file:
            key = file.readline().replace("\n", "")

    if (key == None):
        os.getenv("CFAPIKEY")

    headers = {"Accept": "application/json", "x-api-key": key}

    invalidApiKey = headers["x-api-key"] == None
    sentWarning = False

    for mod in manifest["files"]:
        if (invalidApiKey):
            if (sentWarning):
                print("Your API key is invalid")
                print(headers["x-api-key"])
                print("Skipping downloading mods")
                sentWarning = True
            continue

        basicUrl = "https://api.curseforge.com/v1/mods/{0}/files/{1}/download-url".format(mod["projectID"], mod["fileID"])
        standard = requests.get(basicUrl, headers=headers)

        if (standard.status_code == 403):
            print("Curseforge returned status code 403 Forbidden, which typically means your API key is invalid")
            invalidApiKey = True
            continue
        try:
            metadata = json.loads(standard.text)
        except:
            print("failed to download" + basicUrl)
            if ("slug" in mod):
                failedModDownload.append("https://www.curseforge.com/minecraft/mc-mods/{0}/files/{1}".format(mod["slug"], mod["fileID"]))
            else:
                mod_request = requests.get("https://api.curseforge.com/v1/mods/{0}".format(mod["projectID"]), headers=headers)
                try:
                    data = mod_request.json()["data"]
                    failedModDownload.append("https://www.curseforge.com/minecraft/mc-mods/{0}/files/{1}".format(data["slug"], mod["fileID"]))
                except:
                    failedModDownload.append("This is the raw mod id and file id, the cf api was being mega fucked: `{0}`, `{1}`".format(mod["projectID"], mod["fileID"]))
            continue

        # Put the mod in a list depending on if its client only
        if (("clientOnly" in mod and mod["clientOnly"])):
            modlistClient.append(metadata["data"])
        else:
            modlistServer.append(metadata["data"])

    serverModNotice(failedModDownload)
    print("modlist compiled")


def externalDeps(manifest, retries: int):
    """If we have external dependancies, try to download them"""
    if ("externalDeps" in manifest and len(manifest["externalDeps"]) != 0):
        for mod in manifest["externalDeps"]:
            with open(cache + "/mods/" + mod["url"].split("/")[-1], "w+b") as jar:
                for i in range(retries + 1):
                    if (i == retries):
                        raise Exception("Download failed")

                    r = requests.get(mod["url"])

                    hash = hashlib.sha256(r.content).hexdigest()
                    if (str(hash) == mod["hash"]):
                        jar.write(r.content)
                        print("hash succsessful for {}".format(mod["name"]))
                        break
                    else:
                        print("hash unsuccsessful for {}".format(mod["name"]))
                        print("use", str(hash),
                              "this if it is consistant across runs")
                        pass


def downloadModList(modlistServer: list, modlistClient: list):
    """Download mods generated by generateModlist"""

    # Clear cached mods
    shutil.rmtree(cache + "/mods/client", ignore_errors=True)
    shutil.rmtree(cache + "/mods/server", ignore_errors=True)
    os.makedirs(cache + "/mods/client", exist_ok=True)
    os.makedirs(cache + "/mods/server", exist_ok=True)

    # Copy mod overrides into cache
    shutil.copytree(basePath + "/overrides/mods", cache + "/mods/server", dirs_exist_ok=True)

    # Download all mods to a location based on their list to the cache,
    for mod in modlistServer:
        with open(cache + "/mods/server/" + mod.split("/")[-1], "w+b") as jar:
            r = requests.get(mod)
            jar.write(r.content)
            print(mod + " Downloaded")
    print("%s Server Mods Downloaded" % (len(modlistServer)))

    for mod in modlistClient:
        with open(cache + "/mods/client/" + mod.split("/")[-1], "w+b") as jar:
            r = requests.get(mod)
            jar.write(r.content)
            print(mod + " Downloaded")
    print("%s Client Mods Downloaded" % (len(modlistClient)))

    print("All Mods Downloaded")


def getVersion(manifest):
    """Get the name + version from the manifest.

Since DJ2 is considered the 2nd primary version, trim those characters from the name
    """
    return manifest["name"].replace(" ", "_").replace("_2", "") + "_" + manifest["version"]


def getPreReleaseName() -> str:
    """Get the prerelase name based on the date of the last commit and the git sha to name the zip files"""
    try:
        p = subprocess.run(["git", "rev-parse", "--short", "HEAD"], capture_output=True, cwd=basePath)
        name = subprocess.getoutput("git log -1 --format=\"%as\"")
        return name + "_" + p.stdout.strip().decode("utf-8")
    except:
        print("could not determine git sha, skipping")
    return ""


def getForgeVersion(manifest):
    """Get the Forge version"""
    forgeVer = manifest["minecraft"]["modLoaders"][0]["id"].split("-")[-1]
    mcVer = manifest["minecraft"]["version"]
    return "forge-" + mcVer + "-" + forgeVer + ".jar"


def getForgeInstaller(manifest):
    """Get the URL to the Forge installer"""
    forgeVer = manifest["minecraft"]["modLoaders"][0]["id"].split("-")[-1]
    mcVer = manifest["minecraft"]["version"]
    return "https://maven.minecraftforge.net/net/minecraftforge/forge/" + mcVer + "-" + forgeVer + "/forge-" + mcVer + "-" + forgeVer + "-installer.jar"


def forgeInstaller(manifest):
    """Download the Forge Installer and install it"""
    with open(cache + "/forge-installer.jar", "w+b") as jar:
        url = getForgeInstaller(manifest)
        r = requests.get(url)
        jar.write(r.content)

    print("Forge installer Downloaded")

    vanilla = server + "/minecraft_server.1.12.2.jar"

    if (not os.path.isfile(vanilla)):
        with open(server + "/minecraft_server.1.12.2.jar", "w+b") as jar:
            url = "https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar"
            r = requests.get(url)
            jar.write(r.content)
        print("Vanilla Downloaded")

    subprocess.run(["java", "-jar", "forge-installer.jar", "--installServer"], cwd=cache + "/")

    print("Forge Installed")

    try:
        os.remove(cache + "/forge-installer.jar")
    except Exception as e:
        print("Couldn't delete forge-installer.jar: %s" % (e))

    try:
        os.remove(cache + "/forge-installer.jar.log")
    except Exception as e:
        print("Couldn't delete forge-installer.jar.log: %s" % (e))


def copyClient():
    """Copy required contents to client instance, and then delete designated files"""
    shutil.copy(basePath + "/manifest.json", client + "/manifest.json")
    shutil.copy(basePath + "/LICENSE", client + "/LICENSE")
    shutil.copy(basePath + "/modlist.html", client + "/modlist.html")

    try:
        shutil.copytree(basePath + "/overrides", client + "/overrides")
    except:
        pass

    for file in deleteConfigFiles:
        location = client + "/overrides/config/" + file
        if (os.path.isfile(location)):
            try:
                os.remove(location)
            except:
                pass
        else:
            shutil.rmtree(location, ignore_errors=True)


def copyServer(manifest):
    """Copy required contents to server instance, and then delete designated files"""
    shutil.copy(basePath + "/manifest.json", server + "/manifest.json")
    shutil.copy(basePath + "/LICENSE", server + "/LICENSE")
    shutil.copy(basePath + "/modlist.html", server + "/modlist.html")

    shutil.copy(cache + "/" + getForgeVersion(manifest), server)
    shutil.copy(cache + "/minecraft_server.1.12.2.jar", server)
    shutil.copytree(basePath + "/serverfiles", server, dirs_exist_ok=True)
    shutil.copytree(cache + "/mods/server", server + "/mods", dirs_exist_ok=True)
    shutil.copytree(cache + "/libraries", server + "/libraries", dirs_exist_ok=True)

    for dir in serverCopyDirs:
        try:
            shutil.copytree(basePath + "/overrides/" + dir, server + "/" + dir)
        except:
            pass

    for file in deleteConfigFiles:
        location = server + "/config/" + file
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
    shutil.make_archive(output + "/" + archive, "zip", client)
    print("client zip \"%s.zip\" made" % (archive))


def buildServer(archive: str):
    """Build the server zip"""
    shutil.make_archive(output + "/" + archive, "zip", server)
    print("server zip \"%s.zip\" made" % (archive))


def updateMMCInstance(instancePath: str):
    """Update an existing MultiMC (or fork, eg Prism Launcher) compatible instance to contain the correct files"""
    print("linking the instance %s" % (instancePath))

    # Copy all mods from both server and client caches into MMC after clearing it
    shutil.rmtree(instancePath + "/mods", ignore_errors=True)
    shutil.copytree(cache + "/mods/server", instancePath + "/mods", dirs_exist_ok=True)
    shutil.copytree(cache + "/mods/client", instancePath + "/mods", dirs_exist_ok=True)
    # Link all overrides to instance
    for dir in symLinkDirs:
        try:
            shutil.rmtree(instancePath + "/" + dir, ignore_errors=True)
            os.symlink(client + "/overrides/" + dir, instancePath + "/" + dir)
        except Exception as e:
            print("failed to copy link because of %s" % (e))
    print("your instance is now linked to the git repo")


def build(args):
    """Build client, server, and with options for more"""
    modlistServer = []
    modlistClient = []

    if (not args.client and not args.server and not args.dev):
        print("You must specify either client, server, or dev")
        return

    # Read the manifest
    with open(basePath + "/manifest.json", "r") as file:
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

    # Download any external depenancies defined in the manifest, and add sucessful downloads to the modlist
    if (args.download):
        externalDeps(manifest, args.retries)

    # Create modlist
    if (args.download):
        generateModlist(manifest, args.key, modlistServer, modlistClient)

    # Download mods
    if (args.download):
        downloadModList(modlistServer, modlistClient)

    # Download and install Forge and its libraries
    if (args.server):
        forgeInstaller(manifest)

    # Copy required files to the client instance
    if (args.client):
        copyClient()

    # Copy required files to the server instance
    if (args.server):
        copyServer(manifest)

    # Get the modpack name and version from the manifest
    version = getVersion(manifest)

    # Get the date and sha of the most recent git commit
    name = ""
    if (args.prerelease):
        name = getPreReleaseName()

    archive_name = "%s_%s" % (version, name) if name else version

    # Zip the client
    if (args.client):
        client_name = archive_name
        saveGithubOutput("client_name", client_name)
        if (args.zip):
            buildClient(client_name)

    # Zip the server
    if (args.server):
        server_name = archive_name + "_Server_Pack"
        saveGithubOutput("server_name", server_name)
        if (args.zip):
            buildServer(server_name)

    if (args.dev):
        updateMMCInstance(args.dev)

    print("done")


if (__name__ == "__main__"):
    build(parse_args())
