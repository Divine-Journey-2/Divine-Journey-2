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
    return parser.parse_args()


basePath = path.normpath(path.abspath(f"{__file__}/../../"))
UPDATE_QUESTBOOK = f"""YOU'LL NEED TO UPDATE YOUR QUEST BOOK BY TYPING:
/bq_admin default load
(This has to only be done once in multiplayer, by an admin.)\n"""

def convertChangelog(version: str):
    """Converts and filters the existing changelog in the LATEST.md file to a file named after the version"""

    # Create a changelog file for the given version
    changelogFile = f"changelog/Divine_Journey_{version}.md"

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
            file.write(f"\n{key}\n")
            for entry in value:
                file.write(entry)
        if len(goal.items()) <= 0:
            file.write("\nCould not find a changelog")

    # Overwrite the in-game changelog file
    with open("overrides/config/mputils/changelog.txt", "w") as file:
        file.write(UPDATE_QUESTBOOK)
        file.write(f"\nUpdate {version}:\n")
        with open(changelogFile) as changelog:
            file.write(changelog.read())

    if getenv("GITHUB_OUTPUT") != None:
        with open(getenv("GITHUB_OUTPUT"), "a") as fh:
            print(f"changelog_file={changelogFile}", file=fh)

    copyfile("changelog/TEMPLATE.md", "changelog/LATEST.md")


def process(args):
    """Converts the pack version in various files and converts the changelog file"""

    convertChangelog(args.version)
    print("updated version-related files")


if (__name__ == "__main__"):
    process(parse_args())
