// Author: Atricos, WaitingIdly

import mods.chisel.Carving;
import mods.aether_legacy.Enchanter;

print("STARTING Atum2.zs");

// Sticks
recipes.remove(<atum:palm_stick>);
recipes.addShaped(<atum:palm_stick>, [[<atum:palm_planks>,null],[null,<atum:palm_planks>]]);
recipes.removeByRecipeName("atum:deadwood_stick");
recipes.addShaped(<atum:deadwood_stick>, [[<atum:deadwood_planks>,null],[null,<atum:deadwood_planks>]]);

// Crates
recipes.remove(<atum:deadwood_crate>);
recipes.addShaped(<atum:deadwood_crate>, [[<atum:deadwood_log>,<atum:deadwood_planks>,<atum:deadwood_log>],[<atum:deadwood_planks>,<minecraft:iron_nugget>,<atum:deadwood_planks>],[<atum:deadwood_log>,<atum:deadwood_planks>,<atum:deadwood_log>]]);
recipes.remove(<atum:palm_crate>);
recipes.addShaped(<atum:palm_crate>, [[<atum:palm_log>,<atum:palm_planks>,<atum:palm_log>],[<atum:palm_planks>,<minecraft:iron_nugget>,<atum:palm_planks>],[<atum:palm_log>,<atum:palm_planks>,<atum:palm_log>]]);

// Limestone Chest
recipes.remove(<atum:limestone_chest>);
recipes.addShaped(<atum:limestone_chest>, [[<atum:limestone>,<atum:limestone>,<atum:limestone>],[<atum:limestone>,<minecraft:iron_nugget>,<atum:limestone>],[<atum:limestone>,<atum:limestone>,<atum:limestone>]]);

// Limestone Furnace
recipes.remove(<atum:limestone_furnace>);
recipes.addShaped(<atum:limestone_furnace>, [[<atum:limestone_cracked>,<atum:limestone_cracked_slab>,<atum:limestone_cracked>],[<immersiveengineering:material:1>,<ore:blockCoal>,<immersiveengineering:material:1>],[<atum:limestone_cracked>,<atum:limestone_cracked_slab>,<atum:limestone_cracked>]]);

// Scarab
recipes.remove(<atum:scarab>);
recipes.addShapeless(<atum:scarab>, [<contenttweaker:flawless_scarab_body>,<contenttweaker:flawless_scarab_wings>]);

// OreDicts
val atumMeleeArtifactOreDict = <ore:atumMeleeArtifact>;
atumMeleeArtifactOreDict.addItems([<atum:atums_will>, <atum:ptahs_decadence>, <atum:ptahs_undoing>, <atum:gebs_toil>, <atum:gebs_might>, <atum:tefnuts_call>, <atum:tefnuts_blessing>, <atum:shus_exile>, <atum:horuss_ascension>, <atum:seths_sting>, <atum:montus_strike>, <atum:anubiss_wrath>, <atum:nuits_ire>, <atum:nuits_quarter>, <atum:anputs_hunger>]);

val atumRangedArtifactOreDict = <ore:atumRangedArtifact>;
atumRangedArtifactOreDict.addItems([<atum:ras_fury>, <atum:gebs_grounding>, <atum:seths_venom>, <atum:tefnuts_rain>, <atum:shus_breath>, <atum:horuss_soaring>, <atum:montus_blast>, <atum:nuits_duality>, <atum:atums_bounty>]);

val atumArmorArtifactOreDict = <ore:atumArmorArtifact>;
atumArmorArtifactOreDict.addItems([<atum:eyes_of_atum>, <atum:body_of_atum>, <atum:legs_of_atum>, <atum:feet_of_atum>, <atum:halo_of_ra>, <atum:body_of_ra>, <atum:legs_of_ra>, <atum:feet_of_ra>, <atum:atums_protection>]);

val atumNecklaceArtifactOreDict = <ore:atumNecklaceArtifact>;
atumNecklaceArtifactOreDict.addItems([<atum:atums_homecoming>, <atum:shus_swiftness>, <atum:isis_healing>, <atum:anubiss_mercy>, <atum:nuits_vanishing>]);

// Tooltips
for item in atumMeleeArtifactOreDict.items {
    item.addTooltip(game.localize("dj2.atum_artifact_melee.desc0"));
}

for item in atumRangedArtifactOreDict.items {
    item.addTooltip(game.localize("dj2.atum_artifact_ranged.desc1"));
}

for item in atumArmorArtifactOreDict.items {
    item.addTooltip(game.localize("dj2.atum_artifact_armor.desc2"));
}

for item in atumNecklaceArtifactOreDict.items {
    item.addTooltip(game.localize("dj2.atum_artifact_necklace.desc3"));
}

<atum:relic_ore>.addTooltip(game.localize("dj2.relic_ore.desc0"));
<atum:relic_ore>.addTooltip(game.localize("dj2.relic_ore.desc1"));

// Atum Equipment
recipes.addShapeless(<contenttweaker:atum_equipment>, [atumMeleeArtifactOreDict, atumRangedArtifactOreDict]);
recipes.addShapeless(<contenttweaker:atum_equipment>, [atumMeleeArtifactOreDict, atumArmorArtifactOreDict]);
recipes.addShapeless(<contenttweaker:atum_equipment>, [atumMeleeArtifactOreDict, atumNecklaceArtifactOreDict]);
recipes.addShapeless(<contenttweaker:atum_equipment>, [atumRangedArtifactOreDict, atumArmorArtifactOreDict]);
recipes.addShapeless(<contenttweaker:atum_equipment>, [atumRangedArtifactOreDict, atumNecklaceArtifactOreDict]);
recipes.addShapeless(<contenttweaker:atum_equipment>, [atumArmorArtifactOreDict, atumNecklaceArtifactOreDict]);

// Atum Warrior
recipes.addShapedMirrored(<contenttweaker:atum_warrior>, [[<contenttweaker:atum_equipment>,<contenttweaker:atum_poppet>,<atum:golden_date_enchanted>],[null,<atum:idol_of_labor>,null]]);

// Change the Relic OreDict
val atumRelic = <ore:relic>;
atumRelic.removeItems([<atum:loot_dirty_idol>, <atum:loot_dirty_necklace>, <atum:loot_dirty_scepter>, <atum:loot_dirty_broach>, <atum:loot_dirty_ring>]);

// Atum Poppet
recipes.addShaped(<contenttweaker:atum_poppet>, [[null,<atum:linen_white>,null],[<atum:linen_white>,<atum:emmer_bread>,<atum:linen_white>],[<atum:linen_brown>,<atum:linen_brown>,<atum:linen_brown>]]);

// Kiln
recipes.remove(<atum:kiln>);
recipes.addShaped(<atum:kiln>, [[<atum:limestone_brick_small>,<atum:limestone_brick_small>,<atum:limestone_brick_small>],[<contenttweaker:relic_block>,<atum:limestone_furnace>,<contenttweaker:relic_block>],[<atum:limestone_brick_small>,<atum:limestone_brick_small>,<atum:limestone_brick_small>]]);

// Quern
recipes.remove(<atum:quern>);
recipes.addShaped(<atum:quern>, [[null,<contenttweaker:relic_ingot>,null],[<atum:limestone>,<atum:limestone>,<atum:limestone>],[<atum:ceramic_brown>,<contenttweaker:relic_block>,<atum:ceramic_brown>]]);

// Spinning Wheel
recipes.remove(<atum:spinning_wheel>);
recipes.addShaped(<atum:spinning_wheel>, [[<atum:cloth_scrap>,<atum:cloth_scrap>,<atum:cloth_scrap>],[<atum:ceramic_silver>,<minecraft:repeater>,<atum:ceramic_silver>],[<atum:ceramic_brown>,<contenttweaker:relic_block>,<atum:ceramic_brown>]]);
recipes.addShaped(<atum:spinning_wheel>, [[<atum:linen_thread>,<atum:linen_thread>,<atum:linen_thread>],[<atum:ceramic_silver>,<minecraft:repeater>,<atum:ceramic_silver>],[<atum:ceramic_brown>,<contenttweaker:relic_block>,<atum:ceramic_brown>]]);

// Linen Thread
mods.atum.SpinningWheel.removeRecipe("atum:flax");
mods.atum.SpinningWheel.removeRecipe("atum:cloth_scrap");
mods.atum.SpinningWheel.addRecipe(<atum:flax>, <atum:linen_thread> * 3, 4);

// Radiant Beacon
recipes.remove(<atum:radiant_beacon>);
recipes.addShaped(<atum:radiant_beacon>, [[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>],[<atum:efreet_heart>,<atum:heart_of_ra>,<atum:efreet_heart>],[<contenttweaker:relic_block>,<contenttweaker:relic_block>,<contenttweaker:relic_block>]]);

// Bolt of Linen Cloth
recipes.remove(<atum:linen_cloth>);
recipes.addShapedMirrored(<atum:linen_cloth> * 2, [[null,<atum:linen_thread>,<ore:stickWood>],[<atum:linen_thread>,<ore:stickWood>,<atum:linen_thread>],[<ore:stickWood>,<atum:linen_thread>,null]]);

// Enchanted Golden Date
recipes.remove(<atum:golden_date_enchanted>);
<atum:golden_date_enchanted>.addTooltip(game.localize("dj2.golden_date_enchanted.desc0"));
<atum:golden_date_enchanted>.addTooltip(game.localize("dj2.golden_date_enchanted.desc1"));
mods.aether_legacy.Enchanter.registerEnchantment(<atum:golden_date>, <atum:golden_date_enchanted>, 100);

// Emmer Flour Tooltip
<atum:emmer_flour>.addTooltip(game.localize("dj2.emmer_flour.desc0"));

// Linen Bandage
recipes.remove(<atum:linen_bandage>);

// Separate Linens and Wools
<ore:woolWhite>.remove(<atum:linen_white>);
<ore:woolOrange>.remove(<atum:linen_orange>);
<ore:woolMagenta>.remove(<atum:linen_magenta>);
<ore:woolLightBlue>.remove(<atum:linen_light_blue>);
<ore:woolYellow>.remove(<atum:linen_yellow>);
<ore:woolLime>.remove(<atum:linen_lime>);
<ore:woolPink>.remove(<atum:linen_pink>);
<ore:woolGray>.remove(<atum:linen_gray>);
<ore:woolSilver>.remove(<atum:linen_silver>);
<ore:woolCyan>.remove(<atum:linen_cyan>);
<ore:woolPurple>.remove(<atum:linen_purple>);
<ore:woolBlue>.remove(<atum:linen_blue>);
<ore:woolBrown>.remove(<atum:linen_brown>);
<ore:woolGreen>.remove(<atum:linen_green>);
<ore:woolRed>.remove(<atum:linen_red>);
<ore:woolBlack>.remove(<atum:linen_black>);

// Gold Coin duplication reipe
recipes.addShaped(<atum:coin_gold> * 4, [[<minecraft:gold_nugget>,<minecraft:gold_nugget>,<minecraft:gold_nugget>],[<minecraft:gold_nugget>,<atum:coin_gold>,<minecraft:gold_nugget>],[<minecraft:gold_nugget>,<minecraft:gold_nugget>,<minecraft:gold_nugget>]]);

// Adding Atum Limestone to Chisel
Carving.addVariation("limestone", <atum:limestone>);
Carving.addVariation("limestone", <atum:limestone_brick_small>);
Carving.addVariation("limestone", <atum:limestone_brick_large>);
Carving.addVariation("limestone", <atum:limestone_brick_cracked_brick>);
Carving.addVariation("limestone", <atum:limestone_brick_chiseled>);
Carving.addVariation("limestone", <atum:limestone_brick_carved>);

// Adding Atum Porphyry to Chisel
Carving.addGroup("porphyry");
Carving.addVariation("porphyry", <atum:porphyry>);
Carving.addVariation("porphyry", <atum:porphyry_brick_smooth>);
Carving.addVariation("porphyry", <atum:porphyry_brick_polished>);
Carving.addVariation("porphyry", <atum:porphyry_brick_carved>);
Carving.addVariation("porphyry", <atum:porphyry_brick_tiled>);
Carving.addVariation("porphyry", <atum:porphyry_brick_pillar>);

// Adding Atum Alabaster to Chisel
Carving.addGroup("alabaster");
Carving.addVariation("alabaster", <atum:alabaster>);
Carving.addVariation("alabaster", <atum:alabaster_brick_smooth>);
Carving.addVariation("alabaster", <atum:alabaster_brick_polished>);
Carving.addVariation("alabaster", <atum:alabaster_brick_carved>);
Carving.addVariation("alabaster", <atum:alabaster_brick_tiled>);
Carving.addVariation("alabaster", <atum:alabaster_brick_pillar>);

print("ENDING Atum2.zs");
