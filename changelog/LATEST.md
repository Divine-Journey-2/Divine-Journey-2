
View all [changelogs](https://github.com/Divine-Journey-2/Divine-Journey-2/tree/main/changelog)

## Mod Modifications:

- Update AE2 Extended Life 0.55.27 -> 0.56.4
- Update ConfigAnytime 1.0 -> 2.0
- Update Startup Timer 1.0.1 -> 1.1.0
- Update ZenUtils 1.15.3 -> 1.17.1
- Update Crafttweaker 4.1.20.695 -> 4.1.20.698
- Update Thaumic Augmentation 2.1.11 -> 2.1.13
- Update Journeymap 5.7.1 -> 5.7.1p3
- Update Enhanced P2P betterp2p_plusplus 1.2.3 -> betterp2p 1.2.3

## Bugfixes:

- Removes Natura Button -> Plank recipes from the Thermal Expansion Sawmill, as it allowed you to duplicate those planks.
- Fixes the conversion recipe for outdated Mystical Agriculture Tiered Crystals not consuming the crystal.
- Fixes Alchemistry Titanium Plate Dissolver recipe giving 9 times what it ought to.
- Fixes breaking Quantum Flux Graphite Ore dropping their Graphite Dust instead of our fixed Graphite Dust.
- Fixes the Immersive Engineering Industrial Squeezer returning a HOP Graphite Ingot instead of HOP Graphite Dust.
- Allows Primordial Fragments to be used in the Impetus Crystal recipe, only use Primordial Fragments.
- Fixes Mekansim Sawdust being obtainable in some specific recipes.
- Prevents a crash when pushing an OpenBlocks Trophy with a Piston by disabling the ability to push Trophies.
- Disables the abilty to try to teleport to a specific biome via Nature's Compass, as it frequently crashes the server.
- Fixes a bug preventing sand from converting to Glass in the Thermal Expansion Magma Crucible.
- Fixes Mekanism Creative Tank NBT being weird in Creative Reservoir recipe.

## Balance Adjustments:

- Adds the ability to get Ghastlings without progressing through the Twilight Forest, increases their energy cost to use in the Powered Spawner.
- Adds the ability to get Red Hearts from the Mob Loot Fabricator via the Vanilla Hostile recipe.
- Adds the ability to get Yellow Hearts from the Mob Loot Fabricator via the Twilight Forest boss recipe.
- Tweaks the Mystical Agriculture Chunk recipe to include 4 Inferium Essence instead of an additional 4 Soulium Ingots.
- Removes the slightly-more-expensive recipe for Roots Unending Bowls that is done in the Vanilla Crafting Table.
- Reduces the cost of smelting Lead Dust into Ingots, as it was 3600 instead of the 2000 for any other added recipe.
- Removes Abyssalcraft Sand from the Pure Daisy Livingmatter conversion recipe, as its not dirt and causes lag.
- Adds EMC to the Dungeon of Arcana boss drops.
- Reduces the time for Seared Stone to create a Stone Gear from 50 seconds to 5 seconds, making it inline with other operations.
- Adds the ability to smelt Corrupted Draconium Dust back into Corrupted Draconium Ingots.
- Changes the cost of the Black Hole Tank and Unit to be the 64k Components instead of the 64k Cells.

## QoL Improvements:

- Adds Plastic to the Compacting Drawer, allowing it to be converted even though it doesn't have a downgrade recipe.
- Adds Ghasts and Ghastlings to the Roots Spawning Ritual.
- Adds a direct recipe to create Water Bottles with Mystical Agriculture Water Essence.
- Adds an Actually Additions Advanced Laser Relay NBT clearing recipe.
- Adds RFTools Crafter NBT clearing recipes.
- Adds Mekanism Tank and Gas Tank NBT clearing recipes.
- Increases the Quantum Flux Void Bucket stack size to 64.
- Reduces the excavation amount of OreExcavation by a single block, so veinmining the maximum amount will return exactly two stacks.
- Adds a phantom placement marker to show where AE2 Cables and Parts will be placed (AE2-EL).
- Adds Toasts for completing or cancelling a Crafting Task (AE2-EL).
- Adds a crafting recipe to convert Better Nether Bone Blocks into Vanilla Bone Blocks.

## Text and Quest Updates:

- Adjusts tooltips of Bewitchment's Dimensional Sand and Hoof for consistency with other Bewitchment tooltips.
- Adjusts Monolith Stone tooltip to display more accurate Shoggoth Lair generation.
- Adjusts Activated Ender Core tooltips to display proper automation procedure.
- Fixes Acceleration Rune tooltip to display correct altar I/O modification.
- Fixes various typos and grammatical errors in tooltips and quests.
- Adds Industrial Grade Graphite tooltip which was lost after converting the item to a ContentTweaker item.
- Removes duplicate Imp Leather tooltip.
- Removes incorrect Abyssalnite Ore tooltip.
- Unifies several tooltips for consistency.
- Updates loading screen tip to include the information that Erebus is skippable.
- Updates and improve some tips.
- Updates Upgrade Kits quest to display upgrades and number of Augments more accurately.
- Changes the Spores Reactor quest dependency from Plastic to Fertilizer, since that is what it costs.
- Adds a tooltip to the Aether Legacy Altar to inform about the "sped up while above Gravitite Block" feature.
- Adds information to the Core Sample Drill Quest that Core Samples can be placed down in-world.
- Adds information about the Mekanism Gauge Dropper to the PRC Quest, and adds a tooltip about being able to clear it via Shift+Right Click.
- Fixes a typo in the Mana Spreader Lens quest.
- Changes the dependency of the Roots Unendling Bowl to be off of Dark Steel (its cost), and adjust Chapter 10 accordingly.
- Changes the dependency of the Astral Sorcery Attunement Altar to be off the Celestial Altar (what its crafted in), and adjust Chapter 23 accordingly.
- Adds information about effect of Starlight to the production of the Astral Sorcery Lightwell to the Lightwell Quest.
- Adds information about the stats of the Astral Sorcery Collector Crystal to the production of Starlight to the Celestial Collector Crystal Quest.
- Increases the quest reward for obtaining Jetpacks, and attach the JetPlate Quests to the preceeding Jetpack Quests.
- Updates the Galacticraft Communications Dish Card Quest to indicate the interaction must be with the base of the Communications Dish.
- Fixes a random double-quote appearing in a tip.
- Fixes a typo in the name of the Essence of Continuity.
- Fixes missinformation about Stellar Conduits being enough to power the Weak Fusion Plant, suggest Cryo-Stabilized Fluxducts instead.
- Fixes a typo where "rename" was incorrectly changed to "redesc" due to renaming lang keys from `x.name=` into `x.desc=`.
- Fixes an incorrect statement about the logic of the quest being OR when it is AND.
- Fixes an incorrectly possisive "it's" instead of "its".
- Fixes Drawer tooltips incorrectly calling any potion "Witches' Brew", should now display the correct name.
- Updates the Meteorite Compass Quest to state that it points to the Sky Stone Chest, due to a change while updating AE2-EL.
- Notes that DivineRPG Furnaces cannot be automatically extracted from.
- Updates the Petal Apothecary Quest to include information about how the Roots Unending Bowl automatically fills it up with water.
- Fixes the Dread Lamp and Mega Torch Quests to include the correct information on the size and shape of effect.
- Makes some quests in Chapter 27 not be NBT-specific.
- Fixes incorrect information about the Celestial Crystal growth process in the quest.
- Fixes Mystical Agriculture Seed Quests requiring items without NBT, making Agricraft-enhanced crops invalid.

## Texture Transformations:

- Converts the Galactic Machine Frame into an actual block, instead of just an item.
- Updates a bunch of AE2 textures (AE2-EL).

## GitHub Developments:

- Creates this file, `LATEST.md`, for changes to be added to on a rolling basis.
- Imports the Curseforge changelog for every post-release version to the Github, in the `changelog` folder.
- Creates a Python script to update the version.
- Creates a Github Action to create a "nightly" release every time the `main` branch gets a push.
- Creates a Github Action to automate publishing a release.
- Creates a rolling "LATEST" changelog file, for changes to be added to.

## Miscellaneous Changes:

- Updates the Serialization Is Bad config file with the latest changes from their GitHub.
