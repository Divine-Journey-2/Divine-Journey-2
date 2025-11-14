
View all [changelogs](https://github.com/Divine-Journey-2/Divine-Journey-2/tree/main/changelog)

## Mod Modifications:

- Add Galacticraft Legacy 4.0.7
- Add Omniwand 2.0.1
- Add Morph Overlay 1.0.1
- Update VintageFix 0.5.5 -> 0.6.2
- Update Thaumcraft Fix 1.1.2 -> 1.1.8
- Update Universal Tweaks 1.14.0 -> 1.17.0
- Update FermiumASM 5.24 -> 5.28
- Update Recurrent Complex 1.4.8.5 -> 1.4.8.6
- Update Bewitchment 0.0.22.64 -> 0.0.22.65
- Update Hammer Lib 2.0.6.32 -> 12.2.58
- Remove Neat 1.4 (Enders Modpack Tweaks)
- Remove MPUtils 1.5.7 (Enders Modpack Tweaks)
- Remove MPUtils Basic Tools 1.4.11 (Enders Modpack Tweaks)
- Remove Controlling 3.0.10 (Enders Modpack Tweaks)
- Remove Featured Servers 1.0.6 (Enders Modpack Tweaks)
- Remove Startup Timer 1.1.0 (Enders Modpack Tweaks)
- Remove Additional Resources 0.2.0.28
- Remove Galacticraft Planets 4.0.2.280 (Galacticraft Legacy)
- Remove GalacticraftCore 4.0.2.280 (Galacticraft Legacy)
- Remove MicdoodleCore 4.0.2.280 (Galacticraft Legacy)

## Bugfixes:

- Fix Galacticraft items displaying the incorrect key in tooltips (Galacticraft Legacy)
- Fix a bug where Galacticraft would prevent the `LivingKnockBackEvent` from firing, blocking functionality from other mods (Galacticraft Legacy)
- Fix an issue where Galacticraft would attempt to read more characters of the lang code than existed (Galacticraft Legacy)
- Fix Nether Portals being creatable in some Galacticraft dimensions (Galacticraft Legacy)
- Fix playing weather sounds causing a rare crash (Galacticraft Legacy)
- Fix Galacticraft inventories breaking Extra Utilities 2 Find Me feature (Galacticraft Legacy)
- Fix Galacticraft allowing removal of Curse of Binding armor (Galacticraft Legacy)
- Fix visual bug and crash when displaying EvilCraft Blood Block (VintageFix)
- Fix some entities rendering without lighting (VintageFix)
- Fix a bug preventing a fix from applying, which fixes an occasional crash when the world closes (VintageFix)
- Fix a frequent startup crash involving the Elemental Shovel (Thaumcraft Fix)
- Allow some village structures to use biome-specific cobblestone types instead of just plain cobblestone (Universal Tweaks)
- Fix Blood Magic Rituals resetting some values on restart due to not being saved to the world (Universal Tweaks)
- Fix a fluid dupe/void bug involving Mekanism Tanks (Universal Tweaks)
- Fix Quark's Share Item feature sharing the localization key instead of the name of the item when on a server with some items (Universal Tweaks)
- Fix EnderIO Farming Station crashing with AgriCraft crop sticks - doesn't allow use, just stops the crash (Universal Tweaks)
- Fix Bewitchment Witches' Oven consuming fuel items that have a container (Universal Tweaks)
- Fix bugs with Immersive Engingeering tools breaking (Universal Tweaks)
- Fix DivineRPG water mobs replacing Squid spawns and taking up/exceeding the hostile mob cap (Universal Tweaks)
- Fix various issues with DivineRPG replacing items in the main hand instead of the used hand (Universal Tweaks)
- Fix broken particle effects with some ProjectRed blocks (FermiumASM)
- Fix Bewitchment Distillery crashing when attempting to produce multiple outputs when only one slot is empty (Bewitchment)
- Fix rendering bug with shaders that required restarting to fix (Hammer Lib)

## Balance Adjustments:

- Make Galacticraft machines handling gases compatible with Mekanism gas capabilities (Galacticraft Legacy)
- Allow the Infinity Enchantment to be combined with the Mending Enchantment (Universal Tweaks)
- Allow CoFH Multishot to apply to any bow (Universal Tweaks)

## QoL Improvements:

- Add Compact NASA Workbench, which is a singleblock version of the NASA Workbench (Galacticraft Legacy)
- Highlight nearby mobs blocking sleeping (Universal Tweaks)
- Allow swapping armor when you have some already equipped (Universal Tweaks)
- Allow the graphics settings to control if Actually Additions Item Lasers display the item being transferred (Universal Tweaks)
- Improve performance significantly when mining with a tool that has the Vengeance Curse (Universal Tweaks)
- Replace the Morph'O'Tool with the Omniwand, which offers improved usability, and add a recipe converting it (Omniwand)
- Add borders to the corner of the transformed items for the Omniwand, Morph'O'Tool, and Akashic Tome (Morph Overlay)
- Enable FermiumASM's onDemandAnimatedTextures setting, improving rendering performance
- Disable Recurrent Complex special saplings, which caused tree farms to be extremely slow and generate fences unless laid out in a checkerboard pattern

## Text and Quest Updates:

- Fix a few typos in Thaumonomicon researches (Thaumcraft Fix)
- Change the text warning that the EnderIO Farming Station crashes with AgriCraft Crop Sticks, as instead of crashing it now merely does nothing.
- Add several more buttons for pack info, including a discord invite (Enders Modpack Tweaks)

## Texture Transformations:


## GitHub Developments:


## Miscellaneous Changes:

- Remove some crafttweaker event usages for spawning DivineRPG bosses due to being made part of Universal Tweaks
- Add a message notifying that the server has finished starting up (Enders Modpack Tweaks)
- Change the entity health bar display to require being looked at, saving a significant amount of performance
- Disable Recurrent Complex sending admins a message notifying the status of various structures
