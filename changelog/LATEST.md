
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
- Fixes some Advancements requiring specificly a single item.
- Fixes Thaumcraft Augmentation Effect Crystal recipes requiring the full research to be completed instead of only the second stage, which prevents them from ever being obtainable without using the Cheater's Thaumonomicon.
- Fixes the Bewitchment Blessed Stone being unbreakable after being placed.

## Balance Adjustments:

- Makes the OpenBlocks Last Stand consider post-armor/potion/enchantment damage for xp reduction instead of pre (Universal Tweaks).
- Disable the ability to farm Eldritch Autocasters (bug in EnderIO config allows picking them up in Soul Vials).

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
- Decrease AbyssalCraft portal cooldown significantly.

## Text and Quest Updates:

- Fix the Celestial Collector Crystal having an invalid character sequence, causing it to not be formatted properly.
- Add a warning tooltip to EnderIO ME Conduits indicating that overuse can be bad and suggesting using them less.

## Texture Transformations:



## GitHub Developments:

- Improves the release generation scripts
- Fixes a bug where "Could not find a changelog" was always printed
- Fixes a bug where the server changelog was not written properly


## Miscellaneous Changes:
