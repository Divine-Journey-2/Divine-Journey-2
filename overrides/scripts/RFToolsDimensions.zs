# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("STARTING RFToolsDimensions.zs");

# RFTools Dimension Manual
recipes.remove(<rftoolsdim:rftoolsdim_manual>);
recipes.addShaped(<rftoolsdim:rftoolsdim_manual>, [[null,<contenttweaker:highly_radioactive_dimension_splitting_compound>,null],[<contenttweaker:highly_radioactive_dimension_splitting_compound>,<minecraft:book>,<contenttweaker:highly_radioactive_dimension_splitting_compound>],[null,<contenttweaker:highly_radioactive_dimension_splitting_compound>,null]]);

# Empty Dimension Tab
recipes.remove(<rftoolsdim:empty_dimension_tab>);
recipes.addShaped(<rftoolsdim:empty_dimension_tab>, [[<projectred-core:resource_item:200>,<projectred-core:resource_item:201>,<projectred-core:resource_item:202>],[<contenttweaker:highly_radioactive_dimension_splitting_compound>,<contenttweaker:compressed_perfectium_block>,<contenttweaker:highly_radioactive_dimension_splitting_compound>],[<projectred-core:resource_item:200>,<projectred-core:resource_item:201>,<projectred-core:resource_item:202>]]);

# Dimension Builder
recipes.remove(<rftoolsdim:dimension_builder>);
mods.extendedcrafting.TableCrafting.addShaped(<rftoolsdim:dimension_builder>,
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:ingot:90>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:corrupted_dragon_token>,<alchemistry:ingot:90>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:ingot:90>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<rftools:builder>,<rftoolsdim:empty_dimension_tab>,<rftools:builder>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<alchemistry:ingot:90>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:ingot:90>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<rftoolsdim:empty_dimension_tab>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftoolsdim:empty_dimension_tab>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<alchemistry:ingot:90>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:ingot:90>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<rftools:builder>,<rftoolsdim:empty_dimension_tab>,<rftools:builder>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<alchemistry:ingot:90>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:ingot:90>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:corrupted_dragon_token>,<alchemistry:ingot:90>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<alchemistry:ingot:90>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Dimension Enscriber
recipes.remove(<rftoolsdim:dimension_enscriber>);
recipes.addShaped(<rftoolsdim:dimension_enscriber>, [[<alchemistry:ingot:90>,<planetprogression:satellite_module_basic>,<alchemistry:ingot:90>],[<rftoolsdim:empty_dimension_tab>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftoolsdim:empty_dimension_tab>],[<alchemistry:ingot:90>,<planetprogression:satellite_module_basic>,<alchemistry:ingot:90>]]);

# Dimension Editor
recipes.remove(<rftoolsdim:dimension_editor>);
recipes.addShaped(<rftoolsdim:dimension_editor>, [[<alchemistry:ingot:90>,<enderutilities:machine_1:1>,<alchemistry:ingot:90>],[<rftoolsdim:empty_dimension_tab>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftoolsdim:empty_dimension_tab>],[<alchemistry:ingot:90>,<enderutilities:machine_1:1>,<alchemistry:ingot:90>]]);

# Dimlet Workbench
recipes.remove(<rftoolsdim:dimlet_workbench>);
recipes.addShaped(<rftoolsdim:dimlet_workbench>, [[<alchemistry:ingot:90>,<avaritia:extreme_crafting_table>,<alchemistry:ingot:90>],[<rftoolsdim:empty_dimension_tab>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftoolsdim:empty_dimension_tab>],[<alchemistry:ingot:90>,<avaritia:extreme_crafting_table>,<alchemistry:ingot:90>]]);

function addRFToolsDimensionsAbsorberRecipe(output as IItemStack, input_material as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[input_material,<actuallyadditions:block_shock_suppressor>,input_material],[<actuallyadditions:block_shock_suppressor>,<contenttweaker:stabilized_dimensional_machine_frame>,<actuallyadditions:block_shock_suppressor>],[input_material,<actuallyadditions:block_shock_suppressor>,input_material]]);
}

# Material Absorber
addRFToolsDimensionsAbsorberRecipe(<rftoolsdim:material_absorber>,<contenttweaker:copper_bismid_carbonate_sheet>);

# Liquid Absorber
addRFToolsDimensionsAbsorberRecipe(<rftoolsdim:liquid_absorber>,<alchemistry:argon_light>);

# Biome Absorber
addRFToolsDimensionsAbsorberRecipe(<rftoolsdim:biome_absorber>,<extrautils2:terraformer:9>);

# Terrain Absorber
addRFToolsDimensionsAbsorberRecipe(<rftoolsdim:terrain_absorber>,<contenttweaker:environmental_core>);

# Feature Absorber
addRFToolsDimensionsAbsorberRecipe(<rftoolsdim:feature_absorber>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>);

# Time Absorber
addRFToolsDimensionsAbsorberRecipe(<rftoolsdim:time_absorber>,<divinerpg:twilight_clock>);

# Energy Extractor
recipes.remove(<rftoolsdim:energy_extractor>);
recipes.addShaped(<rftoolsdim:energy_extractor>, [[<alchemistry:ingot:90>,<quantumflux:zeropointextractor>,<alchemistry:ingot:90>],[<rftools:infused_diamond>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftools:infused_diamond>],[<alchemistry:ingot:90>,<quantumflux:zeropointextractor>,<alchemistry:ingot:90>]]);

# Activity Probe
recipes.remove(<rftoolsdim:activity_probe>);
recipes.addShaped(<rftoolsdim:activity_probe>, [[<alchemistry:ingot:90>,<enderutilities:enderpart:17>,<alchemistry:ingot:90>],[<rftools:infused_enderpearl>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftools:infused_enderpearl>],[<alchemistry:ingot:90>,<enderutilities:enderpart:17>,<alchemistry:ingot:90>]]);

# Dimension Monitor
recipes.remove(<rftoolsdim:dimension_monitor>);
recipes.addShaped(<rftoolsdim:dimension_monitor>, [[<alchemistry:ingot:41>,<rftools:infused_enderpearl>,<alchemistry:ingot:41>],[<appliedenergistics2:material:28>,<enderio:block_advanced_power_monitor>,<appliedenergistics2:material:28>],[<alchemistry:ingot:41>,<rftools:infused_enderpearl>,<alchemistry:ingot:41>]]);

# Phased Field Generator
recipes.remove(<rftoolsdim:phased_field_generator>);
recipes.addShaped(<rftoolsdim:phased_field_generator>, [[<alchemistry:ingot:70>,<rftools:infused_enderpearl>,<alchemistry:ingot:70>],[<rftools:infused_enderpearl>,<draconicevolution:dislocator_advanced>.withTag({}),<rftools:infused_enderpearl>],[<alchemistry:ingot:70>,<rftools:infused_enderpearl>,<alchemistry:ingot:70>]]);
<rftoolsdim:phased_field_generator>.addTooltip(format.white("Max Power storage: ") + format.red("100,000,000 RF"));
<rftoolsdim:phased_field_generator>.addTooltip(format.white("RF/tick usage: ") + format.red("10,000"));
<rftoolsdim:phased_field_generator>.addTooltip(format.white("Lasts ") + format.red("500 seconds") + format.white(" when fully charged."));

# Dimlet Parcel
recipes.remove(<rftoolsdim:dimlet_parcel>);
recipes.addShaped(<rftoolsdim:dimlet_parcel> * 16, [[<appliedenergistics2:material:28>,<alchemistry:ingot:94>,<appliedenergistics2:material:28>],[<rftools:infused_diamond>,<rftoolsdim:dimlet_base>,<rftools:infused_diamond>],[<appliedenergistics2:material:28>,<rftoolsdim:known_dimlet:7>.withTag({dkey: "None"}),<appliedenergistics2:material:28>]]);

# Dimplet Template
recipes.remove(<rftoolsdim:dimlet_template>);
recipes.addShaped(<rftoolsdim:dimlet_template>, [[<rftools:dimensional_shard>,<rftools:dimensional_shard>,<rftools:dimensional_shard>],[<alchemistry:ingot:5>,<contenttweaker:copper_bismid_carbonate_sheet>,<alchemistry:ingot:5>],[<rftools:dimensional_shard>,<rftools:dimensional_shard>,<rftools:dimensional_shard>]]);

# Dimensional Pattern 1 Block
recipes.remove(<rftoolsdim:dimensional_pattern1_block>);
recipes.addShaped(<rftoolsdim:dimensional_pattern1_block>, [[<rftoolsdim:dimensional_blank_block>,<ore:dyeBlack>,<rftoolsdim:dimensional_blank_block>],[<rftoolsdim:dimensional_blank_block>,<rftoolsdim:dimensional_blank_block>,<rftoolsdim:dimensional_blank_block>],[<rftoolsdim:dimensional_blank_block>,<ore:dyeBlack>,<rftoolsdim:dimensional_blank_block>]]);

# Dimensional Pattern 2 Block
recipes.remove(<rftoolsdim:dimensional_pattern2_block>);
recipes.addShaped(<rftoolsdim:dimensional_pattern2_block>, [[<rftoolsdim:dimensional_blank_block>,<ore:dyeWhite>,<rftoolsdim:dimensional_blank_block>],[<rftoolsdim:dimensional_blank_block>,<rftoolsdim:dimensional_blank_block>,<rftoolsdim:dimensional_blank_block>],[<rftoolsdim:dimensional_blank_block>,<ore:dyeWhite>,<rftoolsdim:dimensional_blank_block>]]);

function addRFToolsDimensionsDimletRecipe(output as IItemStack, input as IIngredient, isAdvanced as bool) {
	recipes.remove(output);
	if(!isAdvanced) {
		recipes.addShaped(output, [[input,input,input],[<appliedenergistics2:material:28>,<contenttweaker:copper_bismid_carbonate_sheet>,<appliedenergistics2:material:28>],[input,input,input]]);
	} else {
		recipes.addShaped(output, [[input,input,input],[<appliedenergistics2:material:28>,<rftoolsdim:dimlet_template>,<appliedenergistics2:material:28>],[input,input,input]]);
	}
}

# Feature Dimlet (None)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:7>.withTag({dkey: "None"}),<alchemistry:compound:1004>, false);

# Mob Dimlet (Default)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:3>.withTag({dkey: "Default"}),<contenttweaker:mobgrindium_ingot>,true);

# Liquid Dimlet (Water)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:1>.withTag({dkey: "minecraft:water@0"}),<contenttweaker:rune_of_water>,false);

# Sky Dimlet (Normal night)
recipes.remove(<rftoolsdim:known_dimlet:4>);
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal.night"}),<contenttweaker:dark_core>,false);

# Controller Dimlet (Single)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:12>.withTag({dkey: "Single"}),<appliedenergistics2:controller>,true);

# Controller Dimlet (Default)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:12>.withTag({dkey: "Default"}),<appliedenergistics2:controller>,false);

# Sky Dimlet (Normal)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal"}),<divinerpg:skythern_chunk>,false);

# Sky Dimlet (Normal day)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal.day"}),<contenttweaker:holy_core>,true);

# Structure Dimlet (None)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:5>.withTag({dkey: "None"}),<thaumcraft:metal_alchemical>,false);

# Time Dimlet (Normal)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:8>.withTag({dkey: "Normal"}),<minecraft:clock>,false);

# Effect Dimlet (None)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:10>.withTag({dkey: "None"}),<alchemistry:compound:58>,true);

# Terrain Dimlet (Void)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:6>.withTag({dkey: "Void"}),<actuallyadditions:block_crystal_empowered:3>,true);

# Terrain Dimlet (Flat)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:6>.withTag({dkey: "Flat"}),<contenttweaker:zysc_baach_sheet>,true);

# Weather Dimlet (Default)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:13>.withTag({dkey: "Default"}),<draconicevolution:rain_sensor>,false);

# Material Dimlet (Stone)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:2>.withTag({dkey: "minecraft:stone@0"}),<minecraft:stone>,false);

# Digit Dimlet (0)
addRFToolsDimensionsDimletRecipe(<rftoolsdim:known_dimlet:9>.withTag({dkey: "0"}),<enderio:item_alloy_ingot:3>,false);
recipes.addShaped(<rftoolsdim:known_dimlet:9>.withTag({dkey: "0"}), [[<rftoolsdim:known_dimlet:9>.withTag({dkey: "9"})]]);

# Mediocre Efficiency Essence
recipes.remove(<rftoolsdim:mediocre_efficiency_essence>);
recipes.addShaped(<rftoolsdim:mediocre_efficiency_essence>, [[<contenttweaker:zysc_baach_sheet>,<rftools:infused_diamond>,<contenttweaker:zysc_baach_sheet>],[<rftools:infused_diamond>,<contenttweaker:corrupted_dragon_token>,<rftools:infused_diamond>],[<contenttweaker:zysc_baach_sheet>,<rftools:infused_diamond>,<contenttweaker:zysc_baach_sheet>]]);

# Efficiency Essence
recipes.remove(<rftoolsdim:efficiency_essence>);
recipes.addShaped(<rftoolsdim:efficiency_essence>, [[<alchemistry:ingot:45>,<rftoolsdim:mediocre_efficiency_essence>,<alchemistry:ingot:45>],[<rftoolsdim:mediocre_efficiency_essence>,<rftools:infused_diamond>,<rftoolsdim:mediocre_efficiency_essence>],[<alchemistry:ingot:45>,<rftoolsdim:mediocre_efficiency_essence>,<alchemistry:ingot:45>]]);

# Dimension Screen Module
recipes.remove(<rftoolsdim:dimension_module>);
recipes.addShaped(<rftoolsdim:dimension_module>, [[null,<rftools:infused_enderpearl>,null],[<minecraft:redstone>,<minecraft:iron_ingot>,<minecraft:redstone>],[null,<rftools:infused_enderpearl>,null]]);

print("ENDING RFToolsDimensions.zs");