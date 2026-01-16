
View all [changelogs](https://github.com/Divine-Journey-2/Divine-Journey-2/tree/main/changelog)

## Mod Modifications:

- Add GroovyScript 1.3.3
- Update Crafttweaker 4.1.20.698 -> 4.1.20.709
- Update Crash Assistant 1.10.20 -> 1.10.28
- Update Extended Crafting: Nomifactory Edition 1.7.0.6 -> 1.7.0.7
- Update Forgelin Continuous 2.1.20.0 -> 2.3.0.0
- Update LootTweaker 0.3.1 -> 0.4.1
- Update Omniwand 2.0.1 -> 2.0.2
- Update ThaumcraftFix 1.1.8 -> 1.1.9
- Update UniversalTweaks 1.17.0 -> 1.18.0
- Update ZenUtils 1.17.1 -> 1.26.11
- Replace OpenBlocks 4.0.2.280 1.8.1, OpenModsLib 0.12.2 -> OpenBlocksReopened 1.8.3.1
- Replace Baubles 1.5.2, ActuallyBaubles 1.1 -> Bubbles 2.4.9
- Remove Morph-O-Tool 1.2-21
- Remove AE2WTLib 1.0.34
- Remove WirelessCraftingTerminal 3.12.97
- Remove WirelessFluidTerminal 1.0.4
- Remove Storage Drawers Extras 3.1.0

## Bugfixes:

- Remove some items from the Omniwand that could delete all NBT data.
- Fix the Peace Essence recipe not being craftable by the proper items.
- Fix the BiblioCraft Armor Stand ignoring the Curse of Binding (Universal Tweaks).
- Fix the BiblioCraft Armor Stand using the wrong slot numbers (Universal Tweaks).
- Fix the BiblioCraft Fancy Signs rendering items and blocks incorrectly (Universal Tweaks).
- Fix the BiblioCraft Antique Atlas and Clipboard rendering incorrectly when the player is left-handed (Universal Tweaks).
- Fix all BiblioCraft Tile Entities not having a critical method for its IItemHandler, causing numerous crashes (Universal Tweaks).
- Fix BiblioCraft inventories not properly transferring items (Universal Tweaks).
- Fix removing itemstacks from BiblioCraft shelves incorrectly copying the itemstack, losing critical data (Universal Tweaks).
- Fix the BiblioCraft Stockroom Catalogue and Clipboard behaving incorrect when used in the offhand (Universal Tweaks).
- Fix BiblioCraft sounds not being registered in multiplayer, causing crashes when played (Universal Tweaks).
- Fix EnderIO Redstone Conduits not removing the signal when the color is changed (Universal Tweaks).
- Fix Aether Legacy Accessories not going into the TombManyGraves Grave (Universal Tweaks).
- Fix dank/null/ voiding bug when an itemstack at max int is interacted with (Universal Tweaks).
- Fix TombManyGraves not spawning the grave in the proper location in some situations (Universal Tweaks).
- Prevent opening the Roots Creative Pouch, as it has no GUI and immediately crashes (Universal Tweaks).
- Fix Roots Icicle Entity not being properly saved (Universal Tweaks).
- Prevent Roots disabled modifiers from being able to consume materials (Universal Tweaks).
- Fix Roots Spell Dust not being copied and thus the actual recipe being able to be modified by some item collectors (Universal Tweaks).
- Fix the Roots Shatter Spell being able to break unbreakable blocks (Universal Tweaks).
- Fix the Roots Summon Creatures Ritual entering an infinite loop when attempting to spawn a mob over the void (Universal Tweaks).
- Fix some Extended Crafting recipes requiring specific NBT.
- Fix the Ultimate Crafting Table recipe returning empty Crafting Storages.
- Fix Totemic Whittling Knifes behaving incorrectly when being repaired.
- Fix OpenBlocks Glyphs not being named properly in WAILA (OpenBlocks Reopened).
- Fix OpenBlocks Item Cannon not being able to fire properly in some directions (OpenBlocks Reopened).
- Prevent non-player entities from being able to enter Vethea.
- Fix Baubles not respecting the Curse of Binding and Vanishing (Bubbles).
- Fix Omniwand items behaving incorrectly due to being transformed from the Morphing Tool.
- Fix custom DJ2 logic for Silk Touch on some Underground Biomes ores breaking, and no longer dropping the base block.

## Balance Adjustments:

- Disable Roots Elemental Soil Redstone ticking (Universal Tweaks).
- Add Tinkers' Construct Kamas to the toolShears oredict, allowing them to be used in the EnderIO Slice'N'Splice.

## QoL Improvements:

- Allow the BiblioCraft Printing Press to use any black dye (Universal Tweaks).
- Change the TombManyGraves timestamp to be ordered consistently (Universal Tweaks).
- When waking from a bed, if the chat had text keep the chat open (Universal Tweaks).
- Improve the performance of Advancement checks (Universal Tweaks).
- Allow leaving OpenBlocks inventories to be done with the inventory key (default: `e`) instead of only escape (OpenBlocks Reopened).
- Allow Elevators to teleport to elevators of other colors (OpenBlocks Reopened).
- Make holding Shift while standing above an OpenBlocks XP Drain to increase the speed of draining (OpenBlocks Reopened).
- Make the OpenBlocks Hang Glider only bne affected by weather if it is exposed to the weather (OpenBlocks Reopened).
- Migrate Morphing Tool items to Omniwand items.

## Text and Quest Updates:

- Fix some typos in a few quests - Hatchs -> Hatches (217), Becuase -> Because (408), and -> an (1731).
- Add information about holding Shift increasing transfer rate of XP drain.
- Remove the custom enchantment descriptions in English for OpenBlocks enchantments, as they are part of OpenBlocks Reopened.

## Texture Transformations:

- Make sure the Thaumcraft Gauntlet renders properly while in the offhand (ThaumcraftFix).
- Change the Baubles GUI to be on the left side of the inventory instead of inline (Bubbles).

## GitHub Developments:

- Fix typo in the MODLIST.md

## Miscellaneous Changes:
