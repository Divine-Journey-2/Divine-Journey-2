#!/usr/bin/env python3

# Created by WaitingIdly for Divine Journey 2, licensed as GPLv3
#
# Inspired by Nomifactory's quest_i18n TypeScript code, licensed as LGPLv3
# https://github.com/Nomifactory/Nomifactory/blob/dev/buildtools/tasks/shared/transforms/quest_i18n.ts


"""filter the questbook file

accepts a lang param to set what language the output language file is, defaults to en_us
removes useless betterquesting props, since they are automatically assumed on loading the questbook file
this reduces file size by roughly 50% (eg DJ2 4.2mb -> 2.2mb)
"""

from argparse import ArgumentParser
import json
import os

def parse_args():
    parser = ArgumentParser(prog="build", description=__doc__)
    parser.add_argument("--prefix",
                        type=str,
                        default="dj2",
                        help="prefix applied to questbook entries, typically the modpack id, defaults to dj2")
    parser.add_argument("--lang",
                        type=str,
                        default="en_us",
                        help="what language the output language file is, defaults to en_us")
    parser.add_argument("--inverted", "-I",
                        action="store_true",
                        help="inverts the process, replacing the lang keys in the questbook file with text. ignores the prefix setting")
    return parser.parse_args()

# Props that BQ automatically assumes by default, thus only increasing the size of the DefaultQuests json.
uselessProps = {
    # betterquesting
    "issilent:1": 0,
    "snd_complete:8": "minecraft:entity.player.levelup",
    "lockedprogress:1": 0,
    "visibility:8": "NORMAL",
    "tasklogic:8": "AND",
    "repeattime:3": -1,
    "simultaneous:1": 0,
    "globalshare:1": 0,
    "questlogic:8": "AND",
    "snd_update:8": "minecraft:entity.player.levelup",
    "autoclaim:1": 0,
    "repeat_relative:1": 1,
    "ismain:1": 0,

    # task: retrieval
    "partialMatch:1": 0,
    "autoConsume:1": 0,
    "groupDetect:1": 0,
    "ignoreNBT:1": 0,
    "index:3": 0,
    "consume:1": 0,

    # task: location
    "visible:1": 0,
    "invert:1": 0,
    "index:3": 0,
    "structure:8": "",
    "hideInfo:1": 0,
    "posX:3": 0,
    "posY:3": 0,
    "posZ:3": 0,
    "biome:8": "",
    "taxiCabDist:1": 0,

    # item
    "OreDict:8": "",
    "Damage:2": 0,
    "Count:3": 0,
    "ForgeCaps:10": {}, # deletes anything with the given key

    # questline
    "bg_image:8": "",
    "bg_size:3": 256,

    # delete edit mode if its true
    "editmode:1": 1,
}

basePath = os.path.normpath(os.path.abspath(f"{__file__}/../../"))
defaultQuests = f"{basePath}/overrides/config/betterquesting/DefaultQuests.json"
lang = f"{basePath}/overrides/resources/betterquesting/lang"

PLACEHOLDER_TEXT = "PLACEHOLDER_TEXT"

def convertToLang(line: str) -> str:
    """replaces any `\\n` or other json escape sequences with the correct escape character, `%`"""
    return repr(line)[1:-1].replace("%", "%%").replace("\\", "%").replace("%'", "'")

def convertToJSON(line: str) -> str:
    """replaces any `%n` or other lang escape sequences with the correct escape character, `\`"""
    return line.replace("%%", PLACEHOLDER_TEXT).replace("%", "\\").replace(PLACEHOLDER_TEXT, "%").replace("\"", "\\\"")

def nest(location: dict) -> dict:
    """navigates through a dict to delete anything undesired"""

    for entry in dict(location):
        if (uselessProps.get(entry) == {} or uselessProps.get(entry) == location[entry]):
            del location[entry]
        elif (isinstance(location[entry], dict)):
            location[entry] = nest(location[entry])
    return location


def i18n(output: dict, book: dict, location: str, place: str, prefix: str):
    """converts questbook title/desc into lang file"""

    start = f"{prefix}.quest"

    alreadyKnownKeys = []
    for entry in dict(book[location]):
        if ("questID:3" in book[location][entry]):
            id = book[location][entry]["questID:3"]
        elif ("lineID:3" in book[location][entry]):
            id = book[location][entry]["lineID:3"]
        else:
            print(f"Could not find questid or lineid for location {location} {entry}")
            continue

        key = f"{start}.{place}.{id}"

        convert(alreadyKnownKeys, output, book, location, entry, start, target="name:8", key=f"{key}.title")
        convert(alreadyKnownKeys, output, book, location, entry, start, target="desc:8", key=f"{key}.desc")

    if (len(alreadyKnownKeys) > 0):
        print(f"Already knew {len(alreadyKnownKeys)} keys")


def convert(alreadyKnownKeys: dict, output: dict, book: dict,
            location: str, entry: str, start: str, target: str, key: str):
    if (book[location][entry]["properties:10"]["betterquesting:10"][target].startswith(start)):
        alreadyKnownKeys.append(key)
    else:
        output[key] = convertToLang(book[location][entry]["properties:10"]["betterquesting:10"][target])
        book[location][entry]["properties:10"]["betterquesting:10"][target] = key.rstrip()


def delIconCount(book: dict):
    """delete count property for icons"""

    for entry in dict(book["questDatabase:9"]):
        try:
            del book["questDatabase:9"][entry]["properties:10"]["betterquesting:10"]["icon:10"]["Count:3"]
        except:
            pass
    for entry in dict(book["questLines:9"]):
        try:
            del book["questLines:9"][entry]["properties:10"]["betterquesting:10"]["icon:10"]["Count:3"]
        except:
            pass


def key(entry: str) -> bool:
    """put database after questline, sort by int, and then desc after title"""
    return ("db" in entry, int(entry.split(".")[3]), "desc" in entry)


def build(args):
    os.makedirs(lang, exist_ok=True)
    langFile = f"{lang}/{args.lang}.lang"
    questKeys = {}

    # Read the questbook file
    with open(defaultQuests, "r") as file:
        questbook = json.load(file)

    try:
        with open(langFile, "r") as file:
            for line in file.readlines():
                split = line.split("=", 1)
                questKeys[split[0]] = split[1].rstrip()
    except FileNotFoundError:
        print(f"lang file {langFile} was not found")


    nest(questbook)

    delIconCount(questbook)

    if args.inverted:
        with open(defaultQuests, "r") as file:
            filedata = file.read()

        for entry in questKeys:
            filedata = filedata.replace(entry, convertToJSON(questKeys[entry]))

        with open(defaultQuests, "w") as file:
            file.write(filedata)
    else:
        i18n(output=questKeys, book=questbook, location="questLines:9", place="ql", prefix=args.prefix)
        i18n(output=questKeys, book=questbook, location="questDatabase:9", place="db", prefix=args.prefix)

        with open(defaultQuests, "w") as file:
            json.dump(questbook, file, indent=2)

        with open(langFile, "w") as file:
            for i in sorted(questKeys, key=key):
                file.write(f"{i}={questKeys[i]}\n")


if (__name__ == "__main__"):
    build(parse_args())
