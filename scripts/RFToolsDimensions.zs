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
recipes.addShaped(<rftoolsdim:dimension_enscriber>, [[<galacticraftplanets:item_basic_asteroids:5>,<planetprogression:satellite_module_basic>,<galacticraftplanets:item_basic_asteroids:5>],[<rftoolsdim:empty_dimension_tab>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftoolsdim:empty_dimension_tab>],[<galacticraftplanets:item_basic_asteroids:5>,<planetprogression:satellite_module_basic>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Dimension Editor
recipes.remove(<rftoolsdim:dimension_editor>);
recipes.addShaped(<rftoolsdim:dimension_editor>, [[<galacticraftplanets:item_basic_asteroids:5>,<enderutilities:machine_1:1>,<galacticraftplanets:item_basic_asteroids:5>],[<rftoolsdim:empty_dimension_tab>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftoolsdim:empty_dimension_tab>],[<galacticraftplanets:item_basic_asteroids:5>,<enderutilities:machine_1:1>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Dimlet Workbench
recipes.remove(<rftoolsdim:dimlet_workbench>);
recipes.addShaped(<rftoolsdim:dimlet_workbench>, [[<galacticraftplanets:item_basic_asteroids:5>,<avaritia:extreme_crafting_table>,<galacticraftplanets:item_basic_asteroids:5>],[<rftoolsdim:empty_dimension_tab>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftoolsdim:empty_dimension_tab>],[<galacticraftplanets:item_basic_asteroids:5>,<avaritia:extreme_crafting_table>,<galacticraftplanets:item_basic_asteroids:5>]]);

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



print("ENDING RFToolsDimensions.zs");