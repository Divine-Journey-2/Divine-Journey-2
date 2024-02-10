#!/usr/bin/env python3

# Created by WaitingIdly for Divine Journey 2, licensed as GPLv3


"""Updates the version for the DJ2 pack

Presumes that the old version is exactly equal to the tag used
"""

import sys
from argparse import ArgumentParser
from subprocess import run
from os import getenv, path
from shutil import copyfile
from collections import OrderedDict


def parse_args():
    parser = ArgumentParser(prog="build", description=__doc__)
    parser.add_argument("--version", "-V",
                        type=str,
                        required=True,
                        help="the version being updated to")
    parser.add_argument("--old", "-O",
                        type=str,
                        required=False,
                        help="version being updated from, defaults to the latest git tag")
    return parser.parse_args()


basePath = path.normpath(path.abspath(__file__ + "/../../"))

filesToUpdateVersion = [
    "manifest.json",
    "overrides/config/CustomMainMenu/mainmenu.json",
    "overrides/config/mputils/addons/mpbasic/mpbasic.cfg"
]


def oldVersion() -> str:
    """Get the current tag"""
    try:
        return run(["git", "describe", "--abbrev=0", "--tags"], capture_output=True, cwd=basePath).stdout.strip().decode("utf-8")
    except:
        print("could not determine git sha, skipping")
    return ""


def updateVersion(old: str, version: str):
    """Replaces the old version number with the new version number in all targeted files"""
    for file in filesToUpdateVersion:
        f = open(file, "r")
        filedata = f.read()
        f.close()

        newdata = filedata.replace(old, version)

        with open(file, 'w') as new:
            new.write(newdata)


def convertChangelog(version: str):
    """Converts and filters the existing changelog in the LATEST.md file to a file named after the version"""

    # Create a changelog file for the given version
    changelogFile = f"changelog/Divine Journey {version}.md"

    target = OrderedDict()

    # Split the file into the dict based on headers
    with open("changelog/LATEST.md") as changelog:
        for line in changelog.readlines():
            if line.startswith("##"):
                target[line] = list()
            elif len(target) == 0 or line == "\n":
                pass
            else:
                target[next(reversed(target))].append(line)
                pass

    # Filter out any headers which have no entries
    goal = OrderedDict({k: v for (k, v) in target.items() if len(v) > 0})

    # Write the remaining headers and their values to the changelog
    with open(changelogFile, "w") as file:
        for (key, value) in goal.items():
            file.write("\n" + key + "\n")
            for entry in value:
                file.write(entry)
        else:
            file.write("\nCould not find a changelog")

    # Overwrite the in-game changelog file
    with open("overrides/config/mputils/changelog.txt", "w") as file:
        file.write(f"""YOU'LL NEED TO UPDATE YOUR QUEST BOOK BY TYPING:
/bq_admin default load
(This has to only be done once in multiplayer, by an admin.)
""")
        file.write(f"\nUpdate {version}:\n")
        with open(changelogFile) as changelog:
            file.write(changelog.read())

    if getenv("GITHUB_OUTPUT") != None:
        with open(getenv("GITHUB_OUTPUT"), "a") as fh:
            print(f"changelog={changelogFile}", file=fh)

    copyfile("changelog/TEMPLATE.md", "changelog/LATEST.md")


def process(args):
    """Converts the pack version in various files and converts the changelog file"""

    old_version = args.old if args.old else oldVersion()

    if old_version == "":
        sys.exit("old version was not found, exiting")

    if args.version == old_version:
        print("old version was the same as new version, skipping")
        return

    updateVersion(old_version, args.version)
    convertChangelog(args.version)
    print("updated version-related files")


if (__name__ == "__main__"):
    process(parse_args())
