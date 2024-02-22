
## Mod Changes:

- Remove ErebusFix 0.0.0.1
- Remove BetterP2P 1.2.3
- Remove NotEnoughEnergistics 2.0.6
- Remove Thaumic Energistics 2.2.6
- Add Thaumic Energistics Extended Life 2.2.7
- Add Enhanced P2P 1.2.3
- Add ConfigAnytime 1.0
- Add Uber Conduit Probe 1.0.3
- Add Nature's Compass 1.8.5
- Add Integrated NBT 1.2.2
- Update Recurrent Complex 1.4.8.4 -> 1.4.8.5
- Update Storage Drawers 5.4.2 -> 5.5.0
- Update EnderCore 0.5.76 -> 0.5.78
- Update EnderIO 5.3.70 -> 5.3.72
- Update EnderIO Endergy 5.3.70 -> 5.3.72
- Update GasConduits 5.3.70 -> 5.3.72
- Update LagGoggles 5.8-132 -> 5.9-140
- Update Placebo 1.6.0 -> 1.6.1
- Update Extended Crafting: Nomifactory Edition 1.7.0 -> 1.7.0.6
- Update Zen Utils 1.13.1 -> 1.14.8
- Update Applied Energistics 2: Extended Life 0.54.19 -> 0.55.20
- Update JEI Utilities 0.2.11 -> 0.2.12
- Update SerializationIsBad 1.3 -> 1.4

## Bugfixes:

- Fix Thornvines not generating in the Nether.
- Fix a few useless ingots being obtainable via EMC.
- Fix Quark and Bewitchment candles having the same recipe.
- Remove unused Project Red Electrotine from JEI.
- Prevent the Matter Transporter picking up a Black Hole Tank/Unit.
- Fix a typo in `RootsEntitySpawning.zs` where the incorrect entity was referenced, and thus did not appear in JEI.
- Fix ExtraUtils2 Grid Power Mills having the wrong multiplier when using the Chinese language. Does not fix any other language.
- Fixed a typo in excavator vein registration preventing a vein from generating on the Moon.
- Fix an issue where Java OpenJ9 was unable to launch DJ2 (Recurrent Complex update).
- Increase Packet limit (Universal Tweaks).
- Fix BetterP2P not working properly by switching to EnhancedP2P.
- Fix dragging from JEI not working properly by removing NotEnoughEnergistics.
- Prevent Atum Sandstorms from generating sand layers, which would cause IE Wire Connectors to crash.
- Fully remove Mystical World Quartz Ore.
- Fix the HOP Graphite recipe in the Squeezer not rendering. Now outputs a fluid (Tinkers Construct Seared Stone).
- Fix the RFTools Dimensions Phased Field Generator requiring a Draconic Evolution Advanced Dislocator with specific NBT data, and being uncraftable with a freshly crafted Advanced Dislocator.
- Fix the Thermal Expansion Centrifugal Separator only being craftable with Vanilla Compasses with specific NBT data.
- Fix the Thermal Expansion Induction Smelter not accepting some Vanilla Compasses with specific NBT data.
- Fix Immersive Engineering Coke Dust not being able to make Immersive Engineering Steel Ingots with Thermal Foundation Pulverized Iron.
- Fix Natura Imps not behaving properly when trying to remove a leash from them.
- Fix the default keybind for Draconic Evolution's Place In World being unusable due to a conflict with EnderIO.

## Balance Changes:

- Add an Aether Golden Berry Mystical Agriculture recipe.
- Mildly tweak the Bewitchment candle recipe.
- Add a Mystical Agriculture recipe for Ender Air.
- Make the Mystical Agriculture recipe for Dragon's Breath use Ender Air.
- Add a Mob Loot Fabricator recipe for Extended Crafting Ender Nuggets.
- Add a few more animals - Imps, Buffalo, Eagles, and Wisps - to Root's Animal Harvest Ritual.
- Add a use for the Void Metal Singularity.
- Add a Certus Quartz Excavator vein to the Overworld/Twilight Forest/Deep Dark at Uncommon rarity (3x as common as Quartzite).
- Remove the craftable Coralium Infused Stone from the oredict, removing a lone undesired duplication recipe.
- Add a crafting recipe to skip the Erebus Dimension.
- Adjust the duplication recipe for Crown of Skies to be able to duplicated without entering the Erebus Dimension.
- Adjust the recipes for IE Capacitors to include a Yellorium Block at MV.
- Adjust the Mystical Agriculture Tier 1 Mob Chunk to be a crafting recipe using 8 Mystical Agriculture Soulium Ingots
- Adjust the recipe for Mystical Agriculture Soulium Ingots to require a Simply Jetpacks Dark Soularium Ingot.
- Adjust the Mob Loot Factory Vanilla Hostile recipe to give an OpenBlock Trophy instead of Mystical Agriculture Tier 1 Mob Chunks.
- Add a cheap duplication recipe for Mystical Agriculture Cruxes after having obtained and grown the seed.

## QoL:

- Make UB Oil Sands variants drop the base block when Silk Touched.
- Remove UB Iridium Ore, as you obtain Iridium Ore via Laser Drill, never mining.
- Add Chisel categories to convert ores between types (basic/UB/dimensional).
- Add conversion recipes for each soul gem tier (instead of just the final tier) that also copy will quantity instead of resetting.
- Adjust Angelic Chestplate recipe to cost Elevatium instead of an Angel Ring.
- Allow use of any Mossy Cobblestone in the Roots Grove Supplication Ritual.
- Disable Astral Sorcery flares to prevent laggy entity buildup due to automation.
- Make the Storage Drawer Framing Table no longer consumes items to frame Drawers (Storage Drawers).
- Change how redstone mode is set on EnderIO Conduits (EnderCore).
- Update the default keybinds. This will not impact pre-existing instances.
- Disable Pause on Lost Focus by default (toggled via F3+P).
- Add Uber Conduit Probe to Chapter 10, which allows configuring a range of conduits in just two clicks.
- Add Nature's Compass to Chapter 2, which allows searching for specific biomes.
- Change the recipe for Draconic Additions Inertia Cancellation Ring in Draconic Evolution to be obtained at the same time as the Angel Ring, in Astral Sorcery.
- Add Integrated NBT to Chapter 11, which allows easily getting NBT data, particularly helpful with deeply nested NBT data.

## Text and Quest Changes:

- Move tooltip text into an `en_us.lang` file, allowing localization.
- Fix a few typos related to those tooltips.
- Localize tooltips and some other text to Simplified Chinese.
- Make obtaining the Matter Reciever an optional quest (Chapter 27).
- Specify that RFTools Dimensions Material and Fluid Absorbers have to have the target block/fluid below them (Chapter 27).
- Adjust the positioning of multiple Chapter 27 quests.
- Fix a typo in the Alchemistry Machine Frame quest (Chapter 26).
- Add a quest reward to Krypton-currencies (Chapter 28).
- Fix a typo in negordyH (Chapter 28).
- Fix an inaccurate reference to what items can be obtained via EMC in the Tinkering Extreme (Chapter 29).
- Fix a typo in Chapter 30.
- Fix two LightningCraft quests not having real names (Chapter 22).
- Clarify how to interact with the Creative Tank.
- Add a quest describing Botania Lenses and how mana transfer works.
- Remove a duplicate tooltip for Imp Leather.
- Add Flux Electrum Seeds to the MOAR ALLOYZ quest (Chapter 16).
- Fix an extra blank space the Explore World JEI category.
- Adjust the Angelic Silicon Crystal Mix and Angelic Silicon Crystal Mix Block textures.
- Remove yet another reference to Ender Cores only being craftable in the End.
- Remove incorrect Unstable Ingot tooltip.
- Fix the Thaumcraft Research Table indicating it needs 2 Wood Tables in JEI.
- Move EnderIO enchantment tooltips to the standardized system, preventing some visual oddness.
- Update quests for the Wireless Crafting Terminal and related items to instead point towards the base-AE2 items.
- Add a tooltip Stairs to the Configure JEI category indicating that the functionality of the wrench is to rotate blocks.
- Add Solar Seeds to the `seedsTier6` oredict.
- Remove Dragon Egg and Essence from the tier 6 oredicts and add them to the tier 5 oredicts.
- Increase the size of the Chapter 15 Floral Fertilizer quest to indicate that it is a required quest for the next chapter.
- Only require the final tier of LightningCraft Air Terminal (Copper) in the quest, instead of each tier.
- Add a quest for Gas Upgrades to Chapter 13.
- Add a quest for the Erebus Skip in Chapter 7, NBT Extractor in Chapter 11, Uber Conduit Probe in Chapter 10, and Nature's Compass in Chapter 2.
- Fix incorrect information in the Arcane Ashes quest.
- Remove outdated information about a "second page of quest rewards".
- Remove incorrect information about the Thaumcraft Infusion Matrix being automatable.
- Note that the Absorbtion Hopper can pick up items through walls.
- Fix a typo in the Immersive Engineering Lightning Powah quest.
- Fix a typo referring to "Ender Crystals" instead of "End Crystals" in the Dragon Token quest.
- Fix incorrect information in the Bewitchment Poppet quest about it not being automatable.
- Fix incorrect information about the number of Tiny Chaos Fragments obtained in the Growing Chaos quest.
- Fix incorrect information about the uses of the Matrix Multiplication Units.
- Make the Solar Neutron Activator quest ignore NBT.
- Fix a typo referring to "Hand Purple" instead of "Han Purple".
- Fix a typo referring to "Rainbow Plates" instead of "Rainbow Tablets".
- Adjust the placement of some quests in a number of chapters to accommodate changes.
