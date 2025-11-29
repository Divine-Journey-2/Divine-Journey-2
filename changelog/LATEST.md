
View all [changelogs](https://github.com/Divine-Journey-2/Divine-Journey-2/tree/main/changelog)

## Mod Modifications:

- Add Omniwand 2.0.1
- Add Morph Overlay 1.0.1
- Add Crash Assistant 1.10.20
- Add Botania CEU 369b
- Add Red Core 0.7-Dev-1
- Add Alfheim 1.6
- Add NoiseThreader 1.1.1
- Add Integrated Derivitive 1.1.2
- Update MixinBooter 10.6 -> 10.7
- Update VintageFix 0.5.5 -> 0.6.2
- Update Thaumcraft Fix 1.1.2 -> 1.1.8
- Update Universal Tweaks 1.14.0 -> 1.17.0
- Update FermiumASM 5.24 -> 5.28
- Update Recurrent Complex 1.4.8.5 -> 1.4.8.6
- Update Bewitchment 0.0.22.64 -> 0.0.22.65
- Update Hammer Lib 2.0.6.32 -> 12.2.58
- Replace Neat 1.4, MPUtils 1.5.7, MPUtils Basic Tools 1.4.11, Featured Servers 1.0.6, Startup Timer 1.1.0 -> Ender Modpack Tweaks 0.5.11
- Replace MicdoodleCore 4.0.2.280, GalacticraftCore 4.0.2.280, Galacticraft Planets 4.0.2.280 -> Galacticraft Legacy 4.0.7
- Replace Botania 364.4 -> Botania CEU 369b
- Replace Twilight Forest 3.11.1021 -> Twilight Forest - Deforestation Edition 3.14
- Replace Natura 4.3.2.69 -> Natura Legacy 4.4.0
- Replace Shadowfacts' Forgelin 1.8.4 -> Forgelin-Continuous 2.1.20.0
- Replace Quark r1.6-179 -> Quark: RotN Edition r1.6-189
- Replace Mouse Tweaks 2.10.1 -> Mouse Tweaks Unofficial 3.1.5
- Remove Additional Resources 0.2.0.28
- Remove Bed Patch 2.2

## Bugfixes:

- Fix Galacticraft items displaying the incorrect key in tooltips (Galacticraft Legacy).
- Fix a bug where Galacticraft would prevent the `LivingKnockBackEvent` from firing, blocking functionality from other mods (Galacticraft Legacy).
- Fix an issue where Galacticraft would attempt to read more characters of the lang code than existed (Galacticraft Legacy).
- Fix Nether Portals being creatable in some Galacticraft dimensions (Galacticraft Legacy).
- Fix playing weather sounds causing a rare crash (Galacticraft Legacy).
- Fix Galacticraft inventories breaking Extra Utilities 2 Find Me feature (Galacticraft Legacy).
- Fix Galacticraft allowing removal of Curse of Binding armor (Galacticraft Legacy).
- Fix visual bug and crash when displaying EvilCraft Blood Block (VintageFix).
- Fix some entities rendering without lighting (VintageFix).
- Fix a bug preventing a fix from applying, which fixes an occasional crash when the world closes (VintageFix).
- Fix a frequent startup crash involving the Elemental Shovel (Thaumcraft Fix).
- Allow some village structures to use biome-specific cobblestone types instead of just plain cobblestone (Universal Tweaks).
- Fix Blood Magic Rituals resetting some values on restart due to not being saved to the world (Universal Tweaks).
- Fix a fluid dupe/void bug involving Mekanism Tanks (Universal Tweaks).
- Fix Quark's Share Item feature sharing the localization key instead of the name of the item when on a server with some items (Universal Tweaks).
- Fix EnderIO Farming Station crashing with AgriCraft crop sticks - doesn't allow use, just stops the crash (Universal Tweaks).
- Fix Bewitchment Witches' Oven consuming fuel items that have a container (Universal Tweaks).
- Fix bugs with Immersive Engingeering tools breaking (Universal Tweaks).
- Fix DivineRPG water mobs replacing Squid spawns and taking up/exceeding the hostile mob cap (Universal Tweaks).
- Fix various issues with DivineRPG replacing items in the main hand instead of the used hand (Universal Tweaks).
- Fix broken particle effects with some ProjectRed blocks (FermiumASM).
- Fix Bewitchment Distillery crashing when attempting to produce multiple outputs when only one slot is empty (Bewitchment).
- Fix rendering bug with shaders that required restarting to fix (Hammer Lib).
- Fix pack info buttons opening a GUI that doesn't scroll properly (Ender Modpack Tweaks).
- Remove the possibility of chunk banning from the Alfheim Portal (Botania CEU).
- Fix bug involving Storage Drawers and Corporea (Botania CEU).
- Fix a few vanilla lighting bugs, including incorrect stair and slab lighting (Alfheim).
- Fix Natura Saplings not growing properly in some situations (Natura Legacy).
- Fix RFTools Peace Essence not checking NBT data properly, make it a shapeless recipe.
- Fix the RFTools Filter Module not displaying whitelist status properly after being crafted.
- Fix Extra Utilities 2 Bladerang enchantment book being uncraftable.
- Fix Quark Flower Pots being able to cause cascading errors (Quark: RotN Edition).
- Fix a few issues with Quark Cave Roots terrain generation (Quark: RotN Edition).
- Fix the possibility of voiding items when inserting into a shulker box via GUI (Quark: RotN Edition).
- Fix Integrated Tunnels being able to break unbreakable blocks (Integrated Derivative).
- Fix Integrated Dynamics Delayer being formatted incorrectly and missing data (Integrated Derivative).
- Fix the wrong type of Charcoal Block being used in AbyssalCraft.
- Fix scrolling before changing GUIs treating the item behind hovered afterwards as just been scrolled (Mouse Tweaks Unofficial).

## Balance Adjustments:

- Make Galacticraft machines handling gases compatible with Mekanism gas capabilities (Galacticraft Legacy).
- Allow the Infinity Enchantment to be combined with the Mending Enchantment (Universal Tweaks).
- Allow CoFH Multishot to apply to any bow (Universal Tweaks).
- Increase the spawn rate of Natura Imps (Natura Legacy).
- Natura Imps are now tempted and bred by Natura Nether Mushrooms instead of Soup (Natura Legacy).
- Decrease DivineRPG Ent spawn rate from 20% per log to 2%.
- Add a real Bewitchment Toe of Frog drop to the Bewitchment Mob Loot Fabricator recipe.
- Change the Blood Magic Plant Oil and Cutting Fluid recipes, using more varied items and running faster.
- Make EvilCraft Vengeance Spirits only spawn when the Vengeance Ring is active and a player kills a mob.
- Make EvilCraft Environmental Accumulator require mining level 5 in order to be broken, should prevent breaking earlygame.
- Add a Mob Loot Fabricator entry for Dungeon Tokens.
- Increase the power I/O for Immersive Engineering capacitors.

## QoL Improvements:

- Add Compact NASA Workbench, which is a singleblock version of the NASA Workbench (Galacticraft Legacy).
- Highlight nearby mobs blocking sleeping (Universal Tweaks).
- Allow swapping armor when you have some already equipped (Universal Tweaks).
- Allow the graphics settings to control if Actually Additions Item Lasers display the item being transferred (Universal Tweaks).
- Improve performance significantly when mining with a tool that has the Vengeance Curse (Universal Tweaks).
- Replace the Morph'O'Tool with the Omniwand, which offers improved usability, and add a recipe converting it (Omniwand).
- Add borders to the corner of the transformed items for the Omniwand, Morph'O'Tool, and Akashic Tome (Morph Overlay).
- Enable FermiumASM's onDemandAnimatedTextures setting, improving rendering performance.
- Disable Recurrent Complex special saplings, which caused tree farms to be extremely slow and generate fences unless laid out in a checkerboard pattern.
- Add a custom GUI post-crash to better share the crash information and link to the DJ2 discord (Crash Assistant).
- Add an early warning when attempting to load Essential (Crash Assisant).
- Switch to the Alfheim lighting engine, improving lighting performance (Alfheim).
- Enable JEI ResourceID searching as required prefix by default.
- Hide NYI items from The Twilight Forest from JEI.
- Disable EnderIO celebrating the New Year, as it tends to cause significant lag.
- Add a NBT clearing recipe for the RFTools Filter Module.
- Limit the rendering of items in Storage Drawers to only be if you are within 12 blocks.
- Improve worldgen performance (NoiseThreader).
- Disable excessive warning about cascading terrain generation.
- Disable JEI Color searching by default, speeding up startup time by ~5%.
- Tooltip on the "Merge to Nearby Chests" button in your inventory that holding shift changes its mode (Quark: RotN Edition).
- Add the ability to drag entries from JEI into Integrated Dynamics Logic Programmer (Integrated Derivative).
- Improve the Integrated Tunnels Omni-Directional Connector channel copy recipe (Integrated Derivative).
- Add Chisel Carving for Sand types, in particular for Underground Biomes.
- Add Chisel Carving variations for Quark Sandstone types.

## Text and Quest Updates:

- Fix a few typos in Thaumonomicon researches (Thaumcraft Fix).
- Change the text warning that the EnderIO Farming Station crashes with AgriCraft Crop Sticks, as instead of crashing it now merely does nothing.
- Add several more buttons for pack info, including a discord invite (Ender Modpack Tweaks).
- Make Roots Moss quest accept any type of knife instead of only Iron.
- Remove the outdated warning for breaking Extra Utilities 2 machines with Direct.
- Remove the outdated comment for using the "Find In Nearby Inventories" keybind.
- Remove the outdated suggest to try the "Extended Vein Mining" feature for the Atomic Disassembler, as it was disabled.
- Fix a typo in quest 499, 1231, and 1698.
- Adjust Roots Runestone quest to reflect that you have already made a Ritual, and fix a typo regarding that Ritual.
- Note where and how Energized Clathrate spawns in the Transmutation Ritual quest.
- Note what effect the Tesla Core Lib Speed and Energy upgrades actually have.
- Note that only the primary soil block from the Drop of Evil can be harvested with Silk Touch.
- Note that the size of the rift affects Primordial Pearl drop rate, and that the maximum is 10%.
- Remove the LightningCraft Tx/Rx Link Tag requirement from the Wireless LE quest and adjust wording.
- Describe what heating options exist for the Bewitchment Cauldron.
- Update Imaginary Time Block quest description to include the range.
- Fix Immersive Engineering Blast Furnace quest noting Thermal Expansion instead of Mekanism as when you next get Steel.
- Improve quest description of the Integrated Dynamics Mechanical Squeezer and Mechanical Drying Basin by including information on their sides.
- Add missing lang keys for Underground Biomes Chiseled Metamorphic Sandstone.
- Hide a few unused items without lang keys from JEI.
- Adjust the Exploration I Prismarine quest, make it no longer require brewing the Water Breathing potion quest and expand information about it.

## Texture Transformations:

- Fix Twilight Forest Door textures being missing and unhide from JEI (Twilight Forest - Deforestation Edition).
- Allow some Twilight Forest trophies to be animated when powered by redstone (Twilight Forest - Deforestation Edition).
- Update many Natura textures (Natura Legacy).
- Add Natura Imp variant textures (Natura Legacy).

## GitHub Developments:

- Fix error in `questbook.py` by attempting to use a backslash in a comment.
- Adjust `questbook.py` to allow prefixes of a length other than 3 characters.

## Miscellaneous Changes:

- Remove some crafttweaker event usages for spawning DivineRPG bosses due to being made part of Universal Tweaks.
- Remove a check fixing lead behavior with Natura Imps due to being fixed in Natura Legacy.
- Add a message notifying that the server has finished starting up (Ender Modpack Tweaks).
- Change the entity health bar display to require being looked at, saving a significant amount of performance.
- Disable Recurrent Complex sending admins a message notifying the status of various structures.
- Add Nightly link to the README.
