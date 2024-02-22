
## Mod Modifications:

- Update DJ2Addons: 1.1.0 -> 1.2.0
- Update AE2 Extended Life: 0.52.4 -> 0.53.3
- Update Roots: 3.1.5 -> 3.1.6
- Update Thaumic Additions: 2.2.3 -> 2.2.5
- Add Requious Frakto 0.12
- Add Zen Utils 1.11.2
- Add Tinkers OreDict Cache 1.0

## Bugfixes:

- Fix Aerogel creation causing crashes
- Bewitchment now only accepts items with the correct nbt data
- Fix bug where you couldn't use the Astral Sorcery Luminescent Table if you hadn't manually crafted it
- Fix Uncrafting table still having a duplication bug despite it being disabled via config
- Prevent salt ore from dropping the wrong salt by making salt ore unobtainable again
- Fix Chrome Singularity having 2 recipes, with one invisible
- Prevent Runic Smasher from breaking supposedly unbreakable dungeon blocks
- Prevent minor progression skip by removing Bewitchment's Biome Shift ritual
- Fixed the Amethyst Hoe having significantly more durability than it should
- Fixed the wrong Glod being given as a quest reward
- Fix a dupe bug involving Certus Quartz
- Make Mystical World Pearls give the correct amount of buttons
- Fix Silver Shulker Boxes being uncraftable due to a conflicting recipe
- Fix Thermal Expansion's recipe for Contenttweaker's Chicken Nugget only using one specific flour
- Prevent the Bibliocraft Bell from being obtainable, as it causes bugs
- Prevent Tinkers Construct Slime Islands from generating on the Moon
- Fix the Skyroot bucket duplicating in the Aether Enchanter
- Updating Thaumic Energistics to the fork fixes Essentia Storage Cells not being able to be partitioned
- Updating Thaumic Energistics to the fork reduces lag when using the Arcane Crafting Terminal on large networks
- Updating Thaumic Energistics to the fork fixes strange connection issues involving AE2 Security

## Balance Adjustments:

- Updating Thaumic Energistics to the fork introduces automated Arcane Crafting
- Added Immersive Engineering Ore veins to most dimensions
- Remove the Tender Ender Blender
- Right clicking on a Stabilized End Crystal or End Crystal with an Ender Core activates it, regardless of dimension
- Increase the cost of the Astral Sorcery Luminescent Table
- Throwing a Sun Crystal in EnderIO Liquid Sunshine instantly fills it
- Throwing Gold Ingots or Gold Blocks into EnderIO Fire Water converts them into Demon Metal Ingots and Demon Metal Blocks, respectively
- Increased music amount and cap from Totemic Instruments. This makes rituals significantly easier to complete (should solve #213)
- Buff Spiked Plate damage and blood multiplier, by a total of x64

## QoL Improvements:

- Added a JEI tab displaying Immersive Ore veins
- Added a right-click interaction tab displaying various recipes (most were told as tooltips previously)
- Make any lava placed in the Aether convert into Aerogel
- Fluid tanks can be used in place of buckets for all* crafts which consume fluid (*hopefully didn't miss any)
- Add Mystical Agriculture essence recipes for magical saplings
- Increase amount of RF Exciters gained per craft
- Right clicking on an Astral Sorcery table allows the player to use that tier of table (previously, would require crafting it or sharing a Scroll of Written Expertise)
- Hide useless Tinkers Construct Gear Cast
- Add Vethea mob drops as a Mob Loot Fabricator recipe
- Add all* Witch drops to the Mob Loot Fabricator (*hats are still excluded)
- Energized Certus Quartz Block now requires the correct RF amount
- Add an alternative recipe for HOP Graphite Ingots - 8 Coal Coke smelted in an EnderIO Alloy Furnace
- Hide uncraftable Lightningcraft tools (most removed due to being buggy)
- Starmetal ore below a Celestial Crystal Cluster now reverts to Ludicrous Ore, instead of Iron
- Add EMC to a number of blocks/nuggets
- Significantly reduce the cost of 'small' and 'medium' Storage Crates, add quests describing them
- Change Blood Magic's Blood Tank recipe to make it not absurdly expensive, instead just costing increasing amounts of Life Essence
- Break Glod Blocks and Empowered Glod Blocks now drops the correct nbt data versions
- Add (back) textures to Blood Magic's Sigil recipes
- Add uncrafting for Black Quartz Blocks
- Add an uncrafting recipe for Compressed Crafting Tables
- Buff the length of the Warpward Brew
- Updating Thaumic Energistics adds "ghost aspects", which can be dragged from JEI for configuration

## Text and Quest Updates:

- Added a few commands `/dj2 [command]` to link to various places - curseforge, discord, bugs, and guides
- Add a tooltip to Builders Gadgets Paste containers indicating their maximum paste amount
- Fix typo in DJ2's custom advancement for unlocking Roots
- Updating Thaumic Augmentation changes a bunch of text in its Thaumonomicon section
- (Chapter 1) Add a quest for the Small Storage Crate
- (Chapter 3) Add a quest for the Medium Storage Crate and the Storage Crate Keeper
- (Chapter 4) Fix a typo in the Facilitate and Capacitate quest
- (Chapter 7) Suggest waiting on the Supernatural Velocity quest
- (Chapter 11) Fix a few typos relating to the Builder Card
- (Chapter 14) Change the unlocking quest for Extendingot to be accurate to its cost
- (Chapter 21) Add autocrafting information for Thaumic Energistics
- (Chapter 23) Remove incorrect information relating to Crop Sticks
- (Chapter 23) Adjust information pertaining to the Scroll of Written Expertise, and being able to right click to gain the knowledge of how to use the table

## Miscellaneous Changes:

- Prevent Underground Biomes from generating in non-overworld Dimensions. Not technically a bug, but an unintended change that players dislike
