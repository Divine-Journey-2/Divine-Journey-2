
View all [changelogs](https://github.com/Divine-Journey-2/Divine-Journey-2/tree/main/changelog)

## Mod Modifications:

- Add VintageFix 0.5.5
- Add Thaumcraft Fix 1.1.2
- Update Aether Legacy 1.5.3.2 -> 1.5.4.1
- Update Universal Tweaks 1.12.0 -> 1.14.0
- Update Thaumic Augmentation 2.1.13 -> 2.1.14
- Update FermiumASM 5.23 -> 5.24
- Update MixinBooter 9.4 -> 10.6
- Update ConfigAnytime 2.0 -> 3.0
- Remove Bad Wither No Cookie! Reloaded (Universal Tweaks)

## Bugfixes:

- Fix the main menu containing `@PACK_VERSION@` instead of the actual version.
- Fix the server sometimes freezing on shutdown instead of properly shutting down (VintageFix).
- Fix the Mob Loot Fabricator Vis Crystal recipe not appearing in JEI when searching for Vis Crystals.
- Fix Astral Sorcery tools rarely causing a Division By Zero error in patterns (Universal Tweaks).
- Fix the Chorus Fruit mode in the EnderIO Farming Station being capable of looping infinitely (Universal Tweaks).
- Fix the EnderIO Soul Binder JEI category displaying recipes incorrectly depending on the focus (Universal Tweaks).
- Fix an issue where some of the EnderIO Filter buttons did not save their state properly (Universal Tweaks).
- Fix Modular Magic sometimes causing a NPE (Universal Tweaks).
- Fix EnderIO armor + MmmMmmMmmMmm functioning incorrectly together (Universal Tweaks).
- Fix some memory leaks with EnderIO and Bibliocraft (Universal Tweaks).
- Disable Vanilla Minecart dropping itself as it occasionally caused crashes.
- Fix several duplication bugs in Thaumcraft (Thaumcraft Fix).
- Fix multiple bugs related to the Thaumcraft Focal Manipulator (Thaumcraft Fix).
- Fix the `launch.sh` server file using bash exclusive features with a shebang of sh.

## Balance Adjustments:

- Increase the Mob Loot Fabricator Vis Crystal recipe outputs from 1 to 64 and the cooldown from 1s to 60s to reduce lag.
- Increase the chance the Aether Legacy Golden Dungeon generates (Aether Legacy).
- Decrease the chance the Aether Legacy Silver Dungeon generates (Aether Legacy).

## QoL Improvements:

- Improve rendering performance and memory usage via a number of optimizations (VintageFix).
- Cache the entry points of mod jars (VintageFix).
- Downgrade pointless logging of potion information on startup to debug-only (Universal Tweaks).
- Disable Actually Additions Item Laser particles based on particle settings (Universal Tweaks).
- Improve the performance of the EvilCraft Vengeance Spirit config for mob farms (Universal Tweaks).
- Improve the performance of Iron Chest Crystal Chest/Shulker Box rendering (Universal Tweaks).
- Remove Thaumcraft Vis Crystals and tree generation from non-Overworld/Deep Dark dimensions (Thaumcraft Fix).
- Disable Project Red 3D Logic Wires, saving ~100mb of memory.

## Text and Quest Updates:

- Ensure Questbook titles and descriptions containing equal signs that should have whitespace around them actually have whitespace.
- Add a note that higher HP mobs yield more Blood Magic LE and Will and EvilCraft Blood to some quests.
- Fix incomplete information about the function of Spark Augments in the quest describing them.
- Add information on to tame and breed Eagles in the relevant quest.
- Add information about how AbyssalCraft Statues need sky access to work in quest to craft them.
- Add information about how the destructive effects of AbyssalCraft Statues have been disabled to the AbyssalCraft Statues quest.

## Texture Transformations:

- Enhanced the texture for Thaumic Augmentation Railgun (Thaumic Augmentation).

## GitHub Developments:

- Fix the main menu containing `@PACK_VERSION@` instead of the actual version.
- Improve the usability of the `build.py` build tool.
- Fix `update_version.py` not loading the changelog text onto CurseForge and requiring manual intervention.
- Change `TEMPLATE.md` to only have two blank lines between entries instead of three with the goal of reducing merge conflicts.
- Rename releases with only a single digit for their major version to have a `0` prefixed to it.

## Miscellaneous Changes:
