
## Mod Changes:

- Add Demagnetize 1.1.2
- Update Thaumic Energistics 2.2.5 -> 2.2.6
- Update BQTweaker 3.1.3 -> 3.1.5
- Update Universal Tweaks 1.4.0 -> 1.5.0
- Update ZenUtils 1.12.8 -> 1.13.1

## Bugfixes:

- Resolve TombManyGraves Death Lists from corrupting the player inventory after dying too many times. This is done by dropping them in-world rather than allowing them to go into the grave, so should be minimally impactful.
- Fix a crash and a few undesirable behaviors relating to inserting items into a Drawer Controller. These were caused by a Universal Tweaks config, "Item Handlers".
- Fix items combining in situations where they wouldn't prior to 2.19.2. This was caused by a Universal Tweaks config, "Item Entities".
- Stop a crash when using the HFT in your offhand while your main hand had an item and right clicking on a Drawer face that did not accept items.
- Fix occasionally consuming a second item without an animation (UT).

## Balance Changes:

- Move Viaducts into early Mekanism (Chapter 6).
- Move Long Range Viaducts into mob_grinding_utils (Chapter 9).
- Add a Mystical Agriculture recipe for Aether Dirt.
- Add a Mystical Agriculture recipe for most saplings, and most logs using that sapling.
- Add a Mystical Agriculture recipe for Tinker's Slime Saplings & Slime Blocks.
- Add a Mystical Agriculture recipe for Wildwood Saplings.
- Add a Mystical Agriculture recipe for Abyssalcraft Stone.

## QoL:

- Make UB ores drop the ore they are based on when Silk Touched instead of their actual raw ore.
- Remove Thermal Foundation Platinum, Astral Sorcery Rock Crystal, and Astral Sorcery Starmetal from the list of UB ores. These ores are created, not worldgen, so having them exist is just clutter.
- Remove the now-unused Untreated Viaducts from JEI.
- Stop random natura crops generating in non-overworld/non-nether dimensions.
- Hid all but Stripped Red Cedar Logs & variants from JEI, as they are unobtainable.
- Add an Activate Block Interaction to JEI for the Bark Stripper converted Red Cedar Logs into Stripped Red Cedar Logs.
- Add crafting recipes for Stripped Red Cedar Pillars and Stripped Red Cedar Pillar Bases.
- Make the Creative Essentia Cell from Thaumic Energistics contain unlimited MAX_INT quantity of essentia rather than just an unlimited 1000 (Thaumic Energistics).
- Add a JEI category to turn unpowered snowglobes into powered snowglobes.
- Add the Demagnetizer block to Chapter 11 and the Advanced Demagnitizer to Chapter 12.
- Allow creating paths underneath blocks (UT)

## Text and Quest Changes:

- Add a quest for Viaducts, explaining how they work and offering a sizable reward for making them to incentivize investing in a system.
- Fix JetPlate quests underrepresenting the capacity of the JetPlates.
- Fix a typo of Mekanism in the Laser Focus Multiblock quest.
- Fix the dimensions on the Extreme Reactors quest being Z instead of Y in the Cyanite Ingot quest.
- Fix another erroneous reference to Ender Cores on only being able to be activated in the End in the Ender Core (Enhanced) quest.
- Tone down the praise of the Digital Miner in the Digital Miner quest. RIP the "most powerful quarry".
- Instruct about valid IE Waterwheels orientations in relation to Kinetic Dynamos in the Waterwheel quest.
- Fix the Blood Infuser quest requiring specific NBT data.
- Add a quest to Chapter 11 for the Demagnetizer.
