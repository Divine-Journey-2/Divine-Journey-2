# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.integrateddynamics.Squeezer;
import mods.integrateddynamics.MechanicalSqueezer;

print("STARTING IntegratedDynamics.zs");

val anyMenrilLog as IIngredient = <integrateddynamics:menril_log> | <integrateddynamics:menril_log_filled>;

# Menril Sapling
recipes.addShaped(<integrateddynamics:menril_sapling>, [[null,<thermalfoundation:material:136>,null],[<thermalfoundation:material:136>,<ore:treeSapling>,<thermalfoundation:material:136>],[<thermalfoundation:material:136>,<quantumflux:craftingpiece:6>,<thermalfoundation:material:136>]]);

# Squeezer
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>],[<integrateddynamics:crystalized_menril_chunk>,<immersiveengineering:metal_device0:5>,<integrateddynamics:crystalized_menril_chunk>],[<enderio:item_alloy_ingot:6>,<teslacorelib:machine_case>,<enderio:item_alloy_ingot:6>]]);

# Drying Basin
recipes.remove(<integrateddynamics:drying_basin>);
recipes.addShaped(<integrateddynamics:drying_basin>, [[<enderio:item_alloy_ingot:6>,null,<enderio:item_alloy_ingot:6>],[anyMenrilLog,null,anyMenrilLog],[anyMenrilLog,<minecraft:cauldron>,anyMenrilLog]]);

# Logic Cable
recipes.remove(<integrateddynamics:cable>);
recipes.addShaped(<integrateddynamics:cable> * 3, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],[<enderio:item_power_conduit:2>,<enderio:item_power_conduit:2>,<enderio:item_power_conduit:2>],[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);

# Variable Card
recipes.removeShaped(<integrateddynamics:variable>);
recipes.addShaped(<integrateddynamics:variable> * 8, [[<enderio:item_alloy_nugget:6>,<integrateddynamics:crystalized_menril_chunk>,<enderio:item_alloy_nugget:6>],[<integrateddynamics:crystalized_menril_chunk>,<appliedenergistics2:material:25>,<integrateddynamics:crystalized_menril_chunk>],[<enderio:item_alloy_nugget:6>,<integrateddynamics:crystalized_menril_chunk>,<enderio:item_alloy_nugget:6>]]);

# Logic Programmer
recipes.removeShapeless(<integrateddynamics:logic_programmer>, [<*>,<*>]);
recipes.addShaped(<integrateddynamics:logic_programmer>, [[<appliedenergistics2:material:22>,anyMenrilLog,<appliedenergistics2:material:22>],[<integrateddynamics:crystalized_menril_block>,<appliedenergistics2:controller>,<integrateddynamics:crystalized_menril_block>],[<appliedenergistics2:material:22>,anyMenrilLog,<appliedenergistics2:material:22>]]);

# Variable Store
recipes.remove(<integrateddynamics:variablestore>);
recipes.addShaped(<integrateddynamics:variablestore>, [[<contenttweaker:operation_processor>,<integrateddynamics:crystalized_menril_block>,<contenttweaker:operation_processor>],[<integrateddynamics:crystalized_menril_block>,<appliedenergistics2:drive>,<integrateddynamics:crystalized_menril_block>],[<contenttweaker:operation_processor>,<integrateddynamics:crystalized_menril_block>,<contenttweaker:operation_processor>]]);

# Materializer
recipes.remove(<integrateddynamics:materializer>);
recipes.addShaped(<integrateddynamics:materializer>, [[anyMenrilLog,<contenttweaker:operation_processor>,anyMenrilLog],[<contenttweaker:operation_processor>,<integrateddynamics:variablestore>,<contenttweaker:operation_processor>],[anyMenrilLog,<contenttweaker:operation_processor>,anyMenrilLog]]);

# Energy Battery
recipes.removeShaped(<integrateddynamics:energy_battery>);
recipes.addShaped(<integrateddynamics:energy_battery>.withTag({energy: 0}), [[anyMenrilLog,<integrateddynamics:crystalized_menril_block>,anyMenrilLog],[anyMenrilLog,<enderio:block_cap_bank:1>,anyMenrilLog],[anyMenrilLog,<integrateddynamics:crystalized_menril_block>,anyMenrilLog]]);

# Mechanical Squeezer
recipes.remove(<integrateddynamics:mechanical_squeezer>);
recipes.addShaped(<integrateddynamics:mechanical_squeezer>, [[anyMenrilLog,<integrateddynamics:crystalized_menril_block>,anyMenrilLog],[<integrateddynamics:energy_battery>,<integrateddynamics:squeezer>,<integrateddynamics:energy_battery>],[anyMenrilLog,<integrateddynamics:crystalized_menril_block>,anyMenrilLog]]);

# Mechanical Drying Basin
recipes.remove(<integrateddynamics:mechanical_drying_basin>);
recipes.addShaped(<integrateddynamics:mechanical_drying_basin>, [[anyMenrilLog,<integrateddynamics:crystalized_menril_block>,anyMenrilLog],[<integrateddynamics:energy_battery>,<integrateddynamics:drying_basin>,<integrateddynamics:energy_battery>],[anyMenrilLog,<integrateddynamics:crystalized_menril_block>,anyMenrilLog]]);

# Facade
recipes.removeShaped(<integrateddynamics:facade>);
recipes.addShaped(<integrateddynamics:facade> * 8, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],[<integrateddynamics:crystalized_menril_chunk>,<enderio:item_conduit_facade>,<integrateddynamics:crystalized_menril_chunk>],[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);

# Generator
recipes.remove(<integrateddynamics:coal_generator>);
recipes.addShaped(<integrateddynamics:coal_generator>, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],[<thermalfoundation:material:802>,<enderio:item_material>,<thermalfoundation:material:802>],[anyMenrilLog,<integrateddynamics:energy_battery>,anyMenrilLog]]);

# Proxy
recipes.remove(<integrateddynamics:proxy>);
recipes.addShaped(<integrateddynamics:proxy>, [[<integrateddynamics:crystalized_menril_block>,<integrateddynamics:variable>,<integrateddynamics:crystalized_menril_block>],[<appliedenergistics2:memory_card>,<integrateddynamics:variablestore>,<appliedenergistics2:memory_card>],[<integrateddynamics:crystalized_menril_block>,<integrateddynamics:variable>,<integrateddynamics:crystalized_menril_block>]]);

# Delayer
recipes.remove(<integrateddynamics:delay>);
recipes.addShaped(<integrateddynamics:delay>, [[<integrateddynamics:crystalized_menril_block>,<integrateddynamics:variable>,<integrateddynamics:crystalized_menril_block>],[<appliedenergistics2:part:460>,<integrateddynamics:variablestore>,<appliedenergistics2:part:460>],[<integrateddynamics:crystalized_menril_block>,<integrateddynamics:variable>,<integrateddynamics:crystalized_menril_block>]]);

# Wrench
recipes.remove(<integrateddynamics:wrench>);
recipes.addShapedMirrored(<integrateddynamics:wrench>, [[null,<integrateddynamics:crystalized_menril_chunk>,null],[null,anyMenrilLog,<integrateddynamics:crystalized_menril_chunk>],[anyMenrilLog,null,null]]);

# Labeller
recipes.remove(<integrateddynamics:labeller>);
recipes.addShapedMirrored(<integrateddynamics:labeller>, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],[<integrateddynamics:crystalized_menril_chunk>,anyMenrilLog],[anyMenrilLog,null]]);

# Output Variable Transformer
recipes.remove(<integrateddynamics:variable_transformer>);
recipes.addShaped(<integrateddynamics:variable_transformer> * 4, [[null,<integrateddynamics:variable>,anyMenrilLog],[<integrateddynamics:variable>,<appliedenergistics2:material:43>,anyMenrilLog],[null,<integrateddynamics:variable>,anyMenrilLog]]);

# Input Variable Transformer
recipes.remove(<integrateddynamics:variable_transformer:1>);
recipes.addShaped(<integrateddynamics:variable_transformer:1> * 4, [[anyMenrilLog,<integrateddynamics:variable>,null],[anyMenrilLog,<appliedenergistics2:material:44>,<integrateddynamics:variable>],[anyMenrilLog,<integrateddynamics:variable>,null]]);

# Static Light Panel
recipes.remove(<integrateddynamics:part_static_light_panel_item>);
recipes.addShapedMirrored(<integrateddynamics:part_static_light_panel_item>, [[null,<integrateddynamics:crystalized_menril_chunk>],[<integrateddynamics:variable_transformer>,<appliedenergistics2:part:180>],[null,<integrateddynamics:crystalized_menril_chunk>]]);

# Display Panel
recipes.remove(<integrateddynamics:part_display_panel_item>);
recipes.addShaped(<integrateddynamics:part_display_panel_item>, [[null,<contenttweaker:crystalline_brown_slime_ingot>],[<integrateddynamics:variable_transformer>,<integrateddynamics:part_static_light_panel_item>],[null,<contenttweaker:crystalline_brown_slime_ingot>]]);

function addIntegratedDynamicsReaderRecipe(input_item as IIngredient, output as IItemStack) {
	recipes.remove(output);
	recipes.addShapedMirrored(output, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,null],[input_item,<integrateddynamics:variable_transformer:1>,<appliedenergistics2:part:220>],[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,null]]);
}

# Inventory Reader
addIntegratedDynamicsReaderRecipe(<minecraft:chest>,<integrateddynamics:part_inventory_reader_item>);

# Block Reader
addIntegratedDynamicsReaderRecipe(<enderio:block_detector_block>,<integrateddynamics:part_block_reader_item>);

# Fluid Reader
addIntegratedDynamicsReaderRecipe(<rftools:liquid_monitor>,<integrateddynamics:part_fluid_reader_item>);

# Machine Reader
addIntegratedDynamicsReaderRecipe(<enderio:item_material:1>,<integrateddynamics:part_machine_reader_item>);

# Redstone Reader
addIntegratedDynamicsReaderRecipe(<enderio:item_alloy_ingot:3>,<integrateddynamics:part_redstone_reader_item>);

# World Reader
addIntegratedDynamicsReaderRecipe(<industrialforegoing:block_placer>,<integrateddynamics:part_world_reader_item>);

# Audio Reader
addIntegratedDynamicsReaderRecipe(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}),<integrateddynamics:part_audio_reader_item>);

# Network Reader
addIntegratedDynamicsReaderRecipe(<mekanism:networkreader>,<integrateddynamics:part_network_reader_item>);

# Entity Reader
addIntegratedDynamicsReaderRecipe(<industrialforegoing:mob_detector>,<integrateddynamics:part_entity_reader_item>);

# Extra-Dimensional Reader
addIntegratedDynamicsReaderRecipe(<enderio:block_tele_pad>,<integrateddynamics:part_extradimensional_reader_item>);

function addIntegratedDynamicsWriterRecipe(input_item as IIngredient, output as IItemStack) {
	recipes.remove(output);
	recipes.addShapedMirrored(output, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,null],[input_item,<integrateddynamics:variable_transformer>,<appliedenergistics2:part:220>],[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,null]]);
}

# Entity Writer
recipes.remove(<integrateddynamics:part_entity_writer_item>);

# Machine Writer
recipes.remove(<integrateddynamics:part_machine_writer_item>);

# Inventory Writer
recipes.remove(<integrateddynamics:part_inventory_writer_item>);

# Audio Writer
addIntegratedDynamicsWriterRecipe(<ore:record>,<integrateddynamics:part_audio_writer_item>);

# Effect Writer
addIntegratedDynamicsWriterRecipe(<minecraft:firework_charge>,<integrateddynamics:part_effect_writer_item>);

# Redstone Writer
addIntegratedDynamicsWriterRecipe(<enderio:item_alloy_ingot:3>,<integrateddynamics:part_redstone_writer_item>);

# Logic Director
recipes.remove(<integrateddynamics:logic_director>);
recipes.addShaped(<integrateddynamics:logic_director>, [[<integrateddynamics:crystalized_chorus_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_chorus_chunk>],[<integrateddynamics:crystalized_chorus_chunk>,<quantumflux:craftingpiece:6>,<integrateddynamics:crystalized_chorus_chunk>],[<integrateddynamics:crystalized_chorus_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_chorus_chunk>]]);

# Squeezer recipes
# Squeezer.removeRecipe(IItemStack inputStack, @Optional IItemStack outputStack, @Optional ILiquidStack outputFluid);
# MechanicalSqueezer.removeRecipe(IItemStack inputStack, @Optional IItemStack outputStack, @Optional ILiquidStack outputFluid, @Optional(10) int duration);
/*mods.integrateddynamics.Squeezer.removeRecipe(<evilcraft:dark_ore>);
mods.integrateddynamics.Squeezer.removeRecipesWithOutput(<evilcraft:dark_gem>);
mods.integrateddynamics.Squeezer.removeRecipe(<evilcraft:dark_gem>);
mods.integrateddynamics.Squeezer.removeRecipe(<minecraft:lapis_ore>);
mods.integrateddynamics.Squeezer.removeRecipe(<minecraft:redstone_ore>);
mods.integrateddynamics.Squeezer.removeRecipe(<ore:oreGold>.firstItem);
mods.integrateddynamics.Squeezer.removeRecipe(<ore:oreIron>.firstItem);
mods.integrateddynamics.Squeezer.removeRecipe(<ore:oreCopper>.firstItem);
mods.integrateddynamics.Squeezer.removeRecipe(<ore:oreTin>.firstItem);
mods.integrateddynamics.Squeezer.removeRecipe(<ore:oreSilver>.firstItem);
mods.integrateddynamics.Squeezer.removeRecipe(<ore:oreLead>.firstItem);
mods.integrateddynamics.Squeezer.removeRecipe(<ore:oreNickel>.firstItem);
mods.integrateddynamics.Squeezer.removeRecipe(<ore:orePlatinum>.firstItem);
mods.integrateddynamics.Squeezer.removeRecipe(<ore:oreMithril>.firstItem);
mods.integrateddynamics.Squeezer.removeRecipe(<minecraft:quartz_ore>);
mods.integrateddynamics.Squeezer.removeRecipe(<minecraft:diamond_ore>);
mods.integrateddynamics.Squeezer.removeRecipe(<minecraft:emerald_ore>);
mods.integrateddynamics.Squeezer.removeRecipe(<minecraft:coal_ore>);

mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<evilcraft:dark_ore>);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<evilcraft:dark_gem>);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<minecraft:lapis_ore>);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<minecraft:redstone_ore>);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<ore:oreGold>.firstItem);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<ore:oreIron>.firstItem);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<ore:oreCopper>.firstItem);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<ore:oreTin>.firstItem);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<ore:oreSilver>.firstItem);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<ore:oreLead>.firstItem);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<ore:oreNickel>.firstItem);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<ore:orePlatinum>.firstItem);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<ore:oreMithril>.firstItem);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<minecraft:quartz_ore>);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<minecraft:diamond_ore>);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<minecraft:emerald_ore>);
mods.integrateddynamics.MechanicalSqueezer.removeRecipe(<minecraft:coal_ore>);
*/

# Creative Energy Battery
mods.extendedcrafting.TableCrafting.addShaped(<integrateddynamics:creative_energy_battery>,
[[<integrateddynamics:crystalized_menril_block>, <integrateddynamics:menril_log_filled>, <integrateddynamics:menril_log_filled>, <integrateddynamics:menril_log_filled>, <integrateddynamics:crystalized_menril_block>], 
[<integrateddynamics:crystalized_menril_block>, <integrateddynamics:energy_battery>, <integrateddynamics:energy_battery>, <integrateddynamics:energy_battery>, <integrateddynamics:crystalized_menril_block>], 
[<integrateddynamics:crystalized_menril_block>, <integrateddynamics:energy_battery>, <appliedenergistics2:creative_energy_cell>, <integrateddynamics:energy_battery>, <integrateddynamics:crystalized_menril_block>], 
[<integrateddynamics:crystalized_menril_block>, <integrateddynamics:energy_battery>, <integrateddynamics:energy_battery>, <integrateddynamics:energy_battery>, <integrateddynamics:crystalized_menril_block>], 
[<integrateddynamics:crystalized_menril_block>, <integrateddynamics:menril_log_filled>, <integrateddynamics:menril_log_filled>, <integrateddynamics:menril_log_filled>, <integrateddynamics:crystalized_menril_block>]]);

print("ENDING IntegratedDynamics.zs");