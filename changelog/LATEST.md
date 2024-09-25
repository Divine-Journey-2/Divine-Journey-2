
View all [changelogs](https://github.com/Divine-Journey-2/Divine-Journey-2/tree/main/changelog)

## Mod Modifications:

- Remove VanillaFix 1.0.10
- Remove FoamFix 0.10.15
- Remove DupeFix Project 3.1.6
- Remove Toast Control 1.8.1
- Remove Forgiving Void 1.1.0
- Remove RandomPatches 1.22.1.10
- Update MixinBooter 7.0 -> 9.1
- Update Universal Tweaks 1.7.1 -> 1.12.0
- Add FermiumBooter 1.1.0
- Add FermiumASM 5.23

## Bugfixes:

- Fixes the Meteor generated in Atum not being findable via the AE2 Meteor Compass.
- Fixes Astral Sorcery applying its NBT capability when its not needed (FermiumASM).
- Fixes certifications being expired due to outdated Java (8u51), which could prevent downloading resources (FermiumASM).
- Fixes Actually Additions Laser Upgrade not apply when the last item in the stack (Universal Tweaks).
- Fixes Astral Sorcery particle effects continuing to apply when changing dimensions (Universal Tweaks).
- Fixes Sooty Marble Pillars rendering adjacent fluids improperly (Universal Tweaks).
- Fixes Erebus Cabbage not dropping Cabbages in some situations (Universal Tweaks).
- Fixes Erebus Quark Hammer texture being *really* tiny (Universal Tweaks).
- Fixes Extra Utilities 2 Radar breaking completely near Bibliocraft blocks (Universal Tweaks).
- Fixes Extra Utilities 2 Creative Mill not being breakable (Universal Tweaks).
- Fixes Extra Utilities 2 Deep Dark mobs getting their stats repeatedly increased to the maximum value (Universal Tweaks).
- Fixes Extra Utilities 2 crashing when using EnderIO Direct or Astral Sorcery Smelting enchantments/effects (Universal Tweaks).
- Fixes Industrial Foregoing Range Addons stating their maximum range as one less than the maximum (Universal Tweaks).
- Fixes RFTools Dimensions preventing joining a singleplayer world after joining a multiplayer world with an RFTools Dimension registered (Universal Tweaks).
- Prevents Keybind names from overflowing the keybinding screen (Universal Tweaks).
- Fixes sleeping resetting rain/thunder times (Universal Tweaks).
- Fixes some particles not appearing clientside (Universal Tweaks).
- Fixes flying into ME Drives occasionally causing a crash.
- Fixes some Advancements requiring specifically a single item.
- Fixes Thaumcraft Augmentation Effect Crystal recipes requiring the full research to be completed instead of only the second stage, which prevents them from ever being obtainable without using the Cheater's Thaumonomicon.
- Fixes the Bewitchment Blessed Stone being unbreakable after being placed.
- Fixes a console error where PlusTiC attempted to register modifiers for Constructs Armory.
- Fixes the Crown of Skies recipe involving a Robit for the Erebus Skip recipe being uncraftable in some GUIs on servers.
- Fixes Immersive Engineering Excavator veins not generated in the Twilight Forest - they were instead generating in an unregistered dimension "9".
- Fixes the Technology Advancement from being completable via obtaining any Immersive Engineering tool instead of specifically the Immersive Engineering Engineers' Hammer.

## Balance Adjustments:

- Makes the OpenBlocks Last Stand consider post-armor/potion/enchantment damage for xp reduction instead of pre (Universal Tweaks).
- Disables the ability to farm Eldritch Autocasters (bug in EnderIO config allows picking them up in Soul Vials).
- Adds the ability to create Bewitchment Coquina via a Fluid Transposer recipe.
- Removes the ability to create Elevatium via the Laser Focus Multiblock, and add the ability create Empowered Crystals significantly faster than Empowering.

## QoL Improvements:

- Speeds up loading the game significantly (FermiumASM).
- Disables AbyssalCraft Plague potion clouds (Universal Tweaks).
- Downgrades some Astral Sorcery warnings to debug logging (Universal Tweaks).
- Disables Redstone Lighting, improving performance by reducing lighting checks (Universal Tweaks).
- Improves the server connection speed on some servers (Universal Tweaks).
- Keeps sent message history when leaving a world (Universal Tweaks).
- Removes duplicate messages and adds a number to indicate how many times that message has been repeated (Universal Tweaks).
- Improves the Open to LAN GUI (Universal Tweaks).
- Disables potion particle effects emitted by yourself (Universal Tweaks).
- Improves the ping display in the tab menu (Universal Tweaks).
- Changes the third person view to ignore non-solid blocks (Universal Tweaks).
- Improves Minecart drops by dropping the combined item instead of breaking apart item (Universal Tweaks).
- Allows placing Pumpkins and Jack'O'Lanterns without a supporting block and End Crystals without Bedrock or Obsidian (Universal Tweaks).
- Decreases AbyssalCraft portal cooldown significantly.
- Allows converting block form of Rotten Flesh and Bonemeal into AbyssalCraft Crystal Shards.
- Adds Botania Floral Fertilizer to Mystical Flower recipes to the custom Activate Block or Entity JEI Category.
- Adds Botania Mystical Flower to Tall Mystical Flower recipes to the custom Activate Block or Entity JEI Category.

## Text and Quest Updates:

- Fixes the Celestial Collector Crystal having an invalid character sequence, causing it to not be formatted properly.
- Adds a warning tooltip to EnderIO ME Conduits indicating that overuse can be bad and suggesting using them less.
- Adds a tooltip to the Extra Utilities 2 Chunk Loading Ward instructing to use FTB Utilities to load chunks.
- Fixes a typo involving the DivineRPG Skythern dimension being typod as "shythern" for the Excavator.
- Fixes a handful of places incorrect capitalizing CurseForge.
- Adjusts the GalactiCraft questline description to replace the reference to Empowering with building the Laser Focus Multiblock.
- Improves the quest description wording for the Bewitchment Altar quest.
- Includes a description of how to construct the Tinkers' Construct Smeltery in the Smeltery Controller quest.
- Includes a note that using Silk Touch on the Erebus Mushroom blocks results in obtaining the full mushroom block directly in the Erebus Mushroom quest.
- Fixes a typo in the Goddess Pearl quest.
- Adds the Tinkers' Construct Materials and You book to the Blank Pattern quest.
- Adjusts the Laser crafting advantages quest to require a stack of each of the empowered crystals instead of a stack of Elevatium.
- Adds a quest for the Astral Sorcery Ritual Pedestal, describing all the rituals.
- Adds a tooltip to Thaumcraft Porous Stone informing of how it can be obtained.
- Makes the Mantle of Stars quest have the Constellations colored for emphasis.
- Fixes a large number of typos in the lang files.
- Implements the serial comma (e.g. `a, b and c` -> `a, b, and c`) in places it was missing to ensure consistency.
- Makes the Bewitchment Altar quest accept any Vanilla Carpet instead of just Red, and indicate that the Carpet must be Vanilla.
- Makes the Enter the Emptiness quest require either of the two prerequisite quests, allowing the Fracture Locator quest to be optional.

## Texture Transformations:



## GitHub Developments:

- Improves the release generation scripts
- Fixes a bug where "Could not find a changelog" was always printed
- Fixes a bug where the server changelog was not written properly
- Fixes a handful of places incorrect capitalizing CurseForge.


## Miscellaneous Changes:

- Updates the server launch scripts to indicate that the user should modify the `launch_config.ini` file.
- Updates the server README file to improve the description of the `java` file used.
