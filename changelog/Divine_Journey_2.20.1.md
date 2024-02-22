
## Mod Changes:

- Update Thaumic Augmentation 2.1.9 -> 2.1.11
- Update ZenUtils 1.14.8 -> 1.15.3
- Update CraftTweaker 4.1.20.684 -> 4.1.20.695
- Update AE2 Extended Life 0.55.20 -> 0.55.27
- Update Serialization Is Bad 1.4 -> 1.5
- Update Roots 3.1.6 -> 3.1.7

## Bugfixes:

- Fixes a useless tin ingot being obtainable.
- Fixes a useless nickel ingot being obtainable
- Fixes the Roots Summoning Ritual helper displaying the incorrect item for summoning a Frog.
- Fixes Roots Open Staff keybind causing inventory desync when pressed without a staff (Roots).
- Fixes crafting recipes in the AE2 ME Terminal not working properly with various recipe actions (AE2 Extended Life).
- Fixes not being able to launch in countries that block GitHub due to a missing SIB config file (Serialization Is Bad).
- Fixes the Creative Reservoir recipe indicating it needs the wrong tier of Mekanism Tank.
- Fixes written books not functioning properly on servers and add commands to print out the text of the introduction and logic books.
- Prevents falling from the Aether Dimension into the Overworld.
- Disables the SwingThroughGrass tweak, as it allowed interaction with villagers.

## Balance Changes:

- Replaces MATC Infusion Crystals with ContentTweaker Infusion Crystals.
	- Enables durability, starting at 1024 and halving per tier.
	- Able to convert blocks at a time (but consuming 9 durability).
	- Fixes issues involving crafting infusion crystals.

## QoL:

- Adds a recipe to explode a Mystical Iron Block as an item into 9 Shattered Mystical Iron Crystals.
- Adds a Crystal/Obsidian -> Diamond Chest recipe.
- Adds a Crystal/Obsidian -> Diamond Shulker Box recipe.
- Adds an alternative way to craft Enderium via a Block of Enderpearl instead of 4 Ender Pearls.
- Makes Platinum Ingots no longer fit in the primary Arc Furnace slots, preventing shift+click from placing them in the wrong spot.
- Increases the stack size of Potions, Splash Potions, Lingering Potions, Empty Buckets, and Beds to 64.
- Adds an uncrafting recipe for Insanium Blocks.

## Text, Texture, and Quest Changes:

- Fixes an incorrect Chinese localization in the Book of Logic.
- Updates a bunch of Contenttweaker textures, including BM Essences, Dusts, food items, and unbreakable generated structure blocks.
- Fixes text coloring for the Uber Conduit Probe quest.
- Fixes a typo in the Lightning Powah quest, where "componets" is used instead of "components".
- Fixes the Venus web string quest requiring 7 instead of 8.
- Includes information on where the Ancient Lanterns can be found, instead of just requesting crafting them.
- Fixes an error in the Alchemistry Fission Multiblock quest, where "Fission Controller multiblock" is used instead of "Fission multiblock".
- Fixes a typo in the title of the Cheese ore quest, where "ITS MADE OUT OF CHEESE" is used instead of "IT IS MADE OUT OF CHEESE".
- Fixes a typo in the Tier 4 Essences quest, where "the" is used instead of "this".
- Fixes the tooltips for Erebus Elastic Fibre and Dragonfly Wing being swapped.
- Changes `DefaultQuests.json` to use localization instead of containing the exact strings.
- Removes a number of unneeded information from the `DefaultQuests.json`, reducing the file size significantly.
- Adds a tooltip to the Philosophers Stone indicating that it is consumed by the recipe, and change the questbook accordingly.
- Fixes an error creating Thermal augment tooltips.
- Fixes written books not functioning properly on servers and add commands to print out the text of the introduction and logic books.
- Changes the color of some of the text in the introduction book from black to gold.
