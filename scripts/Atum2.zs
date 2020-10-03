# Author: Atricos
print("STARTING Atum2.zs");

# Crates
recipes.remove(<atum:deadwood_crate>);
recipes.addShaped(<atum:deadwood_crate>, [[<atum:deadwood_log>,<atum:deadwood_planks>,<atum:deadwood_log>],[<atum:deadwood_planks>,<minecraft:iron_nugget>,<atum:deadwood_planks>],[<atum:deadwood_log>,<atum:deadwood_planks>,<atum:deadwood_log>]]);
recipes.remove(<atum:palm_crate>);
recipes.addShaped(<atum:palm_crate>, [[<atum:palm_log>,<atum:palm_planks>,<atum:palm_log>],[<atum:palm_planks>,<minecraft:iron_nugget>,<atum:palm_planks>],[<atum:palm_log>,<atum:palm_planks>,<atum:palm_log>]]);

# Limestone Furnace
recipes.remove(<atum:limestone_furnace>);
recipes.addShaped(<atum:limestone_furnace>, [[<atum:limestone_cracked>,<atum:limestone_cracked_slab>,<atum:limestone_cracked>],[<immersiveengineering:material:1>,<ore:blockCoal>,<immersiveengineering:material:1>],[<atum:limestone_cracked>,<atum:limestone_cracked_slab>,<atum:limestone_cracked>]]);

# Scarab
recipes.remove(<atum:scarab>);
recipes.addShapeless(<atum:scarab>, [<contenttweaker:flawless_scarab_body>,<contenttweaker:flawless_scarab_wings>]);

# OreDicts
val atumMeleeArtifactOreDict = <ore:atumMeleeArtifact>;
atumMeleeArtifactOreDict.addItems([<atum:atums_will>, <atum:ptahs_decadence>, <atum:ptahs_undoing>, <atum:gebs_toil>, <atum:gebs_might>, <atum:tefnuts_call>, <atum:tefnuts_blessing>, <atum:shus_exile>, <atum:horuss_ascension>, <atum:seths_sting>, <atum:montus_strike>, <atum:anubiss_wrath>, <atum:nuits_ire>, <atum:nuits_quarter>, <atum:anputs_hunger>]);

val atumRangedArtifactOreDict = <ore:atumRangedArtifact>;
atumRangedArtifactOreDict.addItems([<atum:ras_fury>, <atum:gebs_grounding>, <atum:seths_venom>, <atum:tefnuts_rain>, <atum:shus_breath>, <atum:horuss_soaring>, <atum:montus_blast>, <atum:nuits_duality>, <atum:atums_bounty>]);

val atumArmorArtifactOreDict = <ore:atumArmorArtifact>;
atumArmorArtifactOreDict.addItems([<atum:eyes_of_atum>, <atum:body_of_atum>, <atum:legs_of_atum>, <atum:feet_of_atum>, <atum:halo_of_ra>, <atum:body_of_ra>, <atum:legs_of_ra>, <atum:feet_of_ra>, <atum:atums_protection>]);

val atumNecklaceArtifactOreDict = <ore:atumNecklaceArtifact>;
atumNecklaceArtifactOreDict.addItems([<atum:atums_homecoming>, <atum:shus_swiftness>, <atum:isis_healing>, <atum:anubiss_mercy>, <atum:nuits_vanishing>]);

# Tooltips
for item in atumMeleeArtifactOreDict.items {
	item.addTooltip(format.darkRed(format.bold("Considered as an Atum Melee Artifact.")));
}

for item in atumRangedArtifactOreDict.items {
	item.addTooltip(format.darkRed(format.bold("Considered as an Atum Ranged Artifact.")));
}

for item in atumArmorArtifactOreDict.items {
	item.addTooltip(format.darkRed(format.bold("Considered as an Atum Armor Artifact.")));
}

for item in atumNecklaceArtifactOreDict.items {
	item.addTooltip(format.darkRed(format.bold("Considered as an Atum Necklace Artifact.")));
}

# Atum Equipment
recipes.addShapeless(<contenttweaker:atum_equipment>, [atumMeleeArtifactOreDict, atumRangedArtifactOreDict, atumArmorArtifactOreDict, atumNecklaceArtifactOreDict]);

# Atum Warrior
recipes.addShapedMirrored(<contenttweaker:atum_warrior>, [[<contenttweaker:atum_equipment>,<contenttweaker:atum_poppet>,<atum:golden_date_enchanted>],[null,<atum:idol_of_labor>,null]]);

# Change the Relic OreDict
val atumRelic = <ore:relic>;
atumRelic.removeItems([<atum:loot_dirty_idol>, <atum:loot_dirty_necklace>, <atum:loot_dirty_scepter>, <atum:loot_dirty_broach>, <atum:loot_dirty_ring>]);

# Atum Poppet
recipes.addShaped(<contenttweaker:atum_poppet>, [[null,<atum:linen_white>,null],[<atum:linen_white>,<atum:emmer_bread>,<atum:linen_white>],[<atum:linen_brown>,<atum:linen_brown>,<atum:linen_brown>]]);

# Kiln
recipes.remove(<atum:kiln>);
recipes.addShaped(<atum:kiln>, [[<atum:limestone_brick_small>,<atum:limestone_brick_small>,<atum:limestone_brick_small>],[<contenttweaker:relic_block>,<atum:limestone_furnace>,<contenttweaker:relic_block>],[<atum:limestone_brick_small>,<atum:limestone_brick_small>,<atum:limestone_brick_small>]]);

# Quern
recipes.remove(<atum:quern>);
recipes.addShaped(<atum:quern>, [[null,<contenttweaker:relic_ingot>,null],[<atum:limestone>,<atum:limestone>,<atum:limestone>],[<atum:ceramic_brown>,<contenttweaker:relic_block>,<atum:ceramic_brown>]]);

# Spinning Wheel
recipes.remove(<atum:spinning_wheel>);
recipes.addShaped(<atum:spinning_wheel>, [[<atum:cloth_scrap>,<atum:cloth_scrap>,<atum:cloth_scrap>],[<atum:ceramic_silver>,<minecraft:repeater>,<atum:ceramic_silver>],[<atum:ceramic_brown>,<contenttweaker:relic_block>,<atum:ceramic_brown>]]);
recipes.addShaped(<atum:spinning_wheel>, [[<atum:linen_thread>,<atum:linen_thread>,<atum:linen_thread>],[<atum:ceramic_silver>,<minecraft:repeater>,<atum:ceramic_silver>],[<atum:ceramic_brown>,<contenttweaker:relic_block>,<atum:ceramic_brown>]]);

# Linen Thread
mods.atum.SpinningWheel.removeRecipe("atum:flax");
mods.atum.SpinningWheel.removeRecipe("atum:cloth_scrap");
mods.atum.SpinningWheel.addRecipe(<atum:flax>, <atum:linen_thread> * 3, 4);

# Radiant Beacon
recipes.remove(<atum:radiant_beacon>);
recipes.addShaped(<atum:radiant_beacon>, [[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>],[<atum:efreet_heart>,<atum:heart_of_ra>,<atum:efreet_heart>],[<contenttweaker:relic_block>,<contenttweaker:relic_block>,<contenttweaker:relic_block>]]);

# Bolt of Linen Cloth
recipes.remove(<atum:linen_cloth>);
recipes.addShapedMirrored(<atum:linen_cloth> * 2, [[null,<atum:linen_thread>,<ore:stickWood>],[<atum:linen_thread>,<ore:stickWood>,<atum:linen_thread>],[<ore:stickWood>,<atum:linen_thread>,null]]);

# Enchanted Golden Date
recipes.remove(<atum:golden_date_enchanted>);
<atum:golden_date_enchanted>.addTooltip(format.darkRed(format.bold("Obtained by trading with Sunspeakers.")));

# Emmer Flour Tooltip
<atum:emmer_flour>.addTooltip(format.darkRed(format.italic("Right Click me on a Water source block to convert me into Emmer Dough!")));

# Linen Bandage
recipes.remove(<atum:linen_bandage>);

print("ENDING Atum2.zs");