# Author: Atricos

import mods.thermalexpansion.Transposer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thermalexpansion.InductionSmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.industrialforegoing.LaserDrill;

print("STARTING IndustrialForegoing.zs");

# Plastic
mods.thermalexpansion.Transposer.addFillRecipe(<industrialforegoing:plastic>, <mekanism:polyethene:2> * 4, <liquid:nutrient_distillation> * 500, 6000);

function addIFMachineRecipe(output as IItemStack, top_input as IIngredient, side_input as IIngredient, bottom_input as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[<industrialforegoing:plastic>,top_input,<industrialforegoing:plastic>],[side_input,<teslacorelib:machine_case>,side_input],[<industrialforegoing:plastic>,bottom_input,<industrialforegoing:plastic>]]);
}

function addIFMachineRecipeAsymmetrical(output as IItemStack, top_input as IIngredient, left_input as IIngredient, right_input as IIngredient, bottom_input as IIngredient) {
	recipes.remove(output);
	recipes.addShapedMirrored(output, [[<industrialforegoing:plastic>,top_input,<industrialforegoing:plastic>],[left_input,<teslacorelib:machine_case>,right_input],[<industrialforegoing:plastic>,bottom_input,<industrialforegoing:plastic>]]);
}

# Petrified Fuel Generator
addIFMachineRecipe(<industrialforegoing:petrified_fuel_generator>, <minecraft:piston>, <thermalfoundation:material:802>, <minecraft:furnace>);

# Enchantment Sorter
addIFMachineRecipe(<industrialforegoing:enchantment_refiner>, <actuallyadditions:block_misc:6>, <minecraft:enchanted_book>, <thermalfoundation:material:26>);

# Enchantment Extractor
addIFMachineRecipe(<industrialforegoing:enchantment_extractor>, <thermalfoundation:material:25>, <minecraft:enchanted_book>, <immersiveengineering:wooden_device0:7>);

# Enchantment Applicator
addIFMachineRecipe(<industrialforegoing:enchantment_aplicator>, <thermalfoundation:material:25>, <minecraft:enchanted_book>, <enderio:block_dark_steel_anvil>);

# Mob Crusher
addIFMachineRecipe(<industrialforegoing:mob_relocator>, <enderio:item_dark_steel_sword>, <thermalfoundation:material:264>, <enderio:block_killer_joe>);

# Potion Brewer
addIFMachineRecipe(<industrialforegoing:potion_enervator>, <thermalexpansion:augment:369>, <minecraft:brewing_stand>, <thermalexpansion:machine:7>);

# Animal Baby Separator
addIFMachineRecipe(<industrialforegoing:animal_independence_selector>, <industrialforegoing:conveyor:*>, <minecraft:lead>, <industrialforegoing:conveyor:*>);

# Animal Feeder
addIFMachineRecipe(<industrialforegoing:animal_stock_increaser>, <minecraft:tallgrass:1>, <minecraft:golden_apple>, <minecraft:piston>);

# Plant Sower
addIFMachineRecipe(<industrialforegoing:crop_sower>, <minecraft:flower_pot>, <minecraft:piston>, <enderio:item_material:42>);

# Plant Fertilezer
addIFMachineRecipe(<industrialforegoing:crop_enrich_material_injector>, <openblocks:sprinkler>, <minecraft:bone_block>, <openblocks:sprinkler>);

# Plant Gatherer
addIFMachineRecipeAsymmetrical(<industrialforegoing:crop_recolector>, <divinerpg:realmite_hoe>, <divinerpg:arlemite_hoe>, <divinerpg:rupee_hoe>, <enderio:item_material:42>);

# Black Hole Unit
recipes.removeShaped(<industrialforegoing:black_hole_unit>);
recipes.addShaped(<industrialforegoing:black_hole_unit>, [[<industrialforegoing:plastic>,<appliedenergistics2:storage_cell_64k>.noReturn(),<industrialforegoing:plastic>],[<appliedenergistics2:storage_cell_64k>.noReturn(),<teslacorelib:machine_case>,<appliedenergistics2:storage_cell_64k>.noReturn()],[<mekanism:machineblock3>,<appliedenergistics2:storage_cell_64k>.noReturn(),<mekanism:machineblock3>]]);

# Water Condensator
addIFMachineRecipe(<industrialforegoing:water_condensator>, <thermalfoundation:material:24>, <thermalfoundation:material:24>, <thermalexpansion:device>);

# Resources Fisher
addIFMachineRecipe(<industrialforegoing:water_resources_collector>, <thermalfoundation:material:24>, <thermalfoundation:material:24>, <thermalexpansion:device:4>);

# Animal Rancher
addIFMachineRecipe(<industrialforegoing:animal_resource_harvester>, <minecraft:shears>, <minecraft:bucket>, <minecraft:shears>);

# Mob Slaugher Factory
addIFMachineRecipe(<industrialforegoing:mob_slaughter_factory>, <minecraft:slime>, <enderio:item_dark_steel_sword>, <minecraft:slime>);

# Block Breaker
addIFMachineRecipe(<industrialforegoing:block_destroyer>, <enderio:item_dark_steel_pickaxe>, <minecraft:piston>, <enderio:item_alloy_ingot:3>);

# Block Placer
addIFMachineRecipe(<industrialforegoing:block_placer>, <enderio:item_material:73>, <minecraft:dropper>, <enderio:item_alloy_ingot:3>);

# Tree Fluid Extractor
addIFMachineRecipe(<industrialforegoing:tree_fluid_extractor>, <mob_grinding_utils:xp_tap>, <thermalfoundation:material:295>, <thermalexpansion:device:3>);

# Latex Processing Unit
addIFMachineRecipe(<industrialforegoing:latex_processing_unit>, <industrialforegoing:plastic>, <thermalfoundation:material:295>, <thermalexpansion:device:6>);

# Sewage Composter
addIFMachineRecipe(<industrialforegoing:sewage_composter_solidifier>, <enderio:block_tank:1>, <minecraft:dirt:2>, <enderio:block_stirling_generator>);

# Animal Sewer
addIFMachineRecipe(<industrialforegoing:animal_byproduct_recolector>, <enderio:block_tank:1>, <thermalfoundation:material:25>, <industrialforegoing:animal_resource_harvester>);

# Sludge Refiner
addIFMachineRecipe(<industrialforegoing:sludge_refiner>, <thermalfoundation:material:25>, <extrautils2:compresseddirt>, <enderio:block_vat>);

# Mob Detector
addIFMachineRecipe(<industrialforegoing:mob_detector>, <enderio:item_alloy_ingot:3>, <minecraft:heavy_weighted_pressure_plate>, <enderio:item_alloy_ingot:3>);

# Lava Fabricator
addIFMachineRecipe(<industrialforegoing:lava_fabricator>, <minecraft:lava_bucket>.noReturn(), <enderio:block_tank:1>, <thermalexpansion:machine:15>);

# Bioreactor
addIFMachineRecipe(<industrialforegoing:bioreactor>, <minecraft:brewing_stand>, <forge:bucketfilled>.withTag({FluidName: "biodiesel", Amount: 1000}).noReturn(), <enderio:block_combustion_generator>);

# Biofuel Generator
addIFMachineRecipe(<industrialforegoing:biofuel_generator>, <thermalfoundation:material:295>, <enderio:block_tank:1>, <enderio:block_combustion_generator>);

# Ore Processor
addIFMachineRecipe(<industrialforegoing:ore_processor>, <thermalexpansion:machine>, <thermalfoundation:material:25>, <thermalexpansion:machine:1>);

# Black Hole Controller
addIFMachineRecipe(<industrialforegoing:black_hole_controller_reworked>, <appliedenergistics2:drive>, <industrialforegoing:black_hole_unit>, <appliedenergistics2:drive>);

# Dye Mixer
addIFMachineRecipeAsymmetrical(<industrialforegoing:dye_mixer>, <ore:dyeGreen>, <ore:dyeRed>, <ore:dyeBlue>, <thermalfoundation:material:25>);

# Enchantment Factory
addIFMachineRecipe(<industrialforegoing:enchantment_invoker>, <openblocks:xp_drain>, <thermalfoundation:material:26>, <openblocks:auto_enchantment_table>);

# Spores Reactor
addIFMachineRecipeAsymmetrical(<industrialforegoing:spores_recreator>, <industrialforegoing:fertilizer>, <minecraft:brown_mushroom_block>, <minecraft:red_mushroom_block>, <enderio:block_farm_station>);

# Animal Grower
addIFMachineRecipe(<industrialforegoing:animal_growth_increaser>, <minecraft:wheat>, <minecraft:wheat>, <thermalfoundation:material:25>);

# Material Stonework Factory
addIFMachineRecipeAsymmetrical(<industrialforegoing:material_stonework_factory>, <enderio:block_simple_crafter>, <enderio:item_dark_steel_pickaxe>, <enderio:block_simple_alloy_smelter>, <industrialforegoing:pink_slime_ingot>);

# Black Hole Tank
recipes.removeShaped(<industrialforegoing:black_hole_tank>);
recipes.addShaped(<industrialforegoing:black_hole_tank>, [[<industrialforegoing:plastic>,<appliedenergistics2:fluid_storage_cell_64k>.withTag({}).noReturn(),<industrialforegoing:plastic>],[<appliedenergistics2:fluid_storage_cell_64k>.withTag({}).noReturn(),<teslacorelib:machine_case>,<appliedenergistics2:fluid_storage_cell_64k>.withTag({}).noReturn()],[<mekanism:machineblock3>,<appliedenergistics2:fluid_storage_cell_64k>.withTag({}).noReturn(),<mekanism:machineblock3>]]);

# Resourceful Furnace
addIFMachineRecipe(<industrialforegoing:resourceful_furnace>, <minecraft:furnace>, <minecraft:furnace>, <thermalfoundation:material:25>);

# Energy Field Provider
addIFMachineRecipe(<industrialforegoing:energy_field_provider>, <industrialforegoing:energy_field_addon>, <thermalfoundation:material:25>, <enderio:item_material:43>);

# Energy Field Addon
recipes.remove(<industrialforegoing:energy_field_addon>);
recipes.addShaped(<industrialforegoing:energy_field_addon>, [[<enderio:item_alloy_ingot:3>,<industrialforegoing:pink_slime_ingot>,<enderio:item_alloy_ingot:3>],[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:range_addon:9>,<industrialforegoing:pink_slime_ingot>],[<enderio:item_alloy_ingot:3>,<industrialforegoing:pink_slime_ingot>,<enderio:item_alloy_ingot:3>]]);

# Protein Reactor
addIFMachineRecipeAsymmetrical(<industrialforegoing:protein_reactor>, <thermalfoundation:material:26>, <minecraft:porkchop>, <minecraft:beef>, <enderio:block_vat>);

# Protein Generator
addIFMachineRecipeAsymmetrical(<industrialforegoing:protein_generator>, <thermalfoundation:material:26>, <minecraft:porkchop>, <minecraft:beef>, <industrialforegoing:biofuel_generator>);

# Hydrator
recipes.remove(<industrialforegoing:hydrator>);
recipes.addShaped(<industrialforegoing:hydrator>, [[<industrialforegoing:plastic>,<industrialforegoing:crop_enrich_material_injector>,<industrialforegoing:plastic>],[<botania:manaresource:4>,<teslacorelib:machine_case>,<botania:manaresource:4>],[<industrialforegoing:plastic>,<industrialforegoing:crop_enrich_material_injector>,<industrialforegoing:plastic>]]);

# Wither Builder
addIFMachineRecipe(<industrialforegoing:wither_builder>, <minecraft:skull:1>, <minecraft:soul_sand>, <industrialforegoing:block_placer>);

# Fluid Pump
addIFMachineRecipe(<industrialforegoing:fluid_pump>, <enderio:block_tank:1>, <thermalfoundation:material:26>, <mekanism:machineblock:12>);

# Fluid Crafter
addIFMachineRecipe(<industrialforegoing:fluid_crafter>, <thermalfoundation:material:25>, <minecraft:bucket>, <mekanism:machineblock3:5>);

# Plant Interactor
addIFMachineRecipeAsymmetrical(<industrialforegoing:plant_interactor>, <divinerpg:realmite_hoe>, <divinerpg:arlemite_hoe>, <divinerpg:rupee_hoe>, <thermalfoundation:material:25>);

# Item Splitter
addIFMachineRecipe(<industrialforegoing:item_splitter>, <thermalfoundation:material:24>, <minecraft:hopper>, <thermalfoundation:material:24>);

# Fluid Dictionary Converter
addIFMachineRecipe(<industrialforegoing:fluiddictionary_converter>, <thermalfoundation:material:26>, <enderio:block_tank:1>, <thermalfoundation:material:26>);

# Froster
addIFMachineRecipe(<industrialforegoing:froster>, <thermalfoundation:material:25>, <thermalfoundation:material:25>, <thermalexpansion:machine:14>);

# Pitful Fuel Generator
recipes.remove(<industrialforegoing:pitiful_fuel_generator>);
recipes.addShaped(<industrialforegoing:pitiful_fuel_generator>, [[<ore:cobblestone>,<minecraft:furnace>,<ore:cobblestone>],[<minecraft:furnace>,<teslacorelib:machine_case>,<minecraft:furnace>],[<ore:cobblestone>,<minecraft:furnace>,<ore:cobblestone>]]);

# Mob Duplicator
recipes.remove(<industrialforegoing:mob_duplicator>);
recipes.addShaped(<industrialforegoing:mob_duplicator>, [[<industrialforegoing:plastic>,<industrialforegoing:fortune_addon>,<industrialforegoing:plastic>],[<actuallyadditions:block_crystal_empowered:4>,<teslacorelib:machine_case>,<actuallyadditions:block_crystal_empowered:4>],[<industrialforegoing:plastic>,<enderio:block_powered_spawner>,<industrialforegoing:plastic>]]);
<industrialforegoing:mob_duplicator>.addTooltip(format.red(format.bold("Warning: ")) + format.white("The Mob Imprisonment Tool is gated"));
<industrialforegoing:mob_duplicator>.addTooltip(format.white("until Chapter 25. ") + format.white(format.italic("(This is because there is")));
<industrialforegoing:mob_duplicator>.addTooltip(format.white(format.italic("no blacklist for it in the configs.)")));

function addIFRangeAddonRecipe(output as IItemStack, sides as IIngredient, center as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[sides,<industrialforegoing:plastic>,sides],[sides,center,sides],[sides,<industrialforegoing:plastic>,sides]]);
}

# Range Addon +1
addIFRangeAddonRecipe(<industrialforegoing:range_addon>, <ore:cobblestone>, <enderio:item_material:69>);

# Range Addon +2
addIFRangeAddonRecipe(<industrialforegoing:range_addon:1>, <minecraft:dye:4>, <industrialforegoing:range_addon>);

# Range Addon +3
addIFRangeAddonRecipe(<industrialforegoing:range_addon:2>, <minecraft:iron_ingot>, <industrialforegoing:range_addon:1>);

# Range Addon +4
addIFRangeAddonRecipe(<industrialforegoing:range_addon:3>, <thermalfoundation:material:129>, <industrialforegoing:range_addon:2>);

# Range Addon +5
addIFRangeAddonRecipe(<industrialforegoing:range_addon:4>, <thermalfoundation:material:128>, <industrialforegoing:range_addon:3>);

# Range Addon +6
addIFRangeAddonRecipe(<industrialforegoing:range_addon:5>, <thermalfoundation:material:163>, <industrialforegoing:range_addon:4>);

# Range Addon +7
addIFRangeAddonRecipe(<industrialforegoing:range_addon:6>, <thermalfoundation:material:130>, <industrialforegoing:range_addon:5>);

# Range Addon +8
addIFRangeAddonRecipe(<industrialforegoing:range_addon:7>, <minecraft:gold_ingot>, <industrialforegoing:range_addon:6>);

# Range Addon +9
addIFRangeAddonRecipe(<industrialforegoing:range_addon:8>, <minecraft:quartz>, <industrialforegoing:range_addon:7>);

# Range Addon +10
addIFRangeAddonRecipe(<industrialforegoing:range_addon:9>, <minecraft:diamond>, <industrialforegoing:range_addon:8>);

# Range Addon +11
addIFRangeAddonRecipe(<industrialforegoing:range_addon:10>, <thermalfoundation:material:134>, <industrialforegoing:range_addon:9>);

# Range Addon +12
addIFRangeAddonRecipe(<industrialforegoing:range_addon:11>, <minecraft:emerald>, <industrialforegoing:range_addon:10>);

# Change Range Addon Stack Size
for i in 0 to 11 {
	<industrialforegoing:range_addon>.definition.makeStack(i).maxStackSize = 64;
}

# Adult Filter
recipes.remove(<industrialforegoing:adult_filter>);
recipes.addShaped(<industrialforegoing:adult_filter>, [[<enderio:item_alloy_ingot>,<industrialforegoing:plastic>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot:4>,<minecraft:egg>,<enderio:item_alloy_ingot:4>],[<enderio:item_alloy_ingot>,<industrialforegoing:plastic>,<enderio:item_alloy_ingot>]]);

# Pink Slime Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<industrialforegoing:pink_slime_ingot>, <industrialforegoing:pink_slime>, <thermalfoundation:material:136>, 8000);
EIOAlloySmelter.addRecipe(<industrialforegoing:pink_slime_ingot>, [<industrialforegoing:pink_slime>, <thermalfoundation:material:136>], 8000);
mods.immersiveengineering.ArcFurnace.addRecipe(<industrialforegoing:pink_slime_ingot>, <industrialforegoing:pink_slime>, null, 200, 512, [<thermalfoundation:material:136>], "Alloying");
IEAlloySmelter.addRecipe(<industrialforegoing:pink_slime_ingot>, <industrialforegoing:pink_slime>, <thermalfoundation:material:136>, 500);

# Meat Feeder
recipes.remove(<industrialforegoing:meat_feeder>);
recipes.addShapedMirrored(<industrialforegoing:meat_feeder>, [[null,<enderio:item_alloy_ingot:6>,<industrialforegoing:plastic>],[<minecraft:glass_bottle>,<immersiveengineering:material:2>,<enderio:item_alloy_ingot:6>],[<immersiveengineering:material:2>,<minecraft:glass_bottle>,null]]);

# Mob Imprisonment Tool
recipes.remove(<industrialforegoing:mob_imprisonment_tool>);
recipes.addShaped(<industrialforegoing:mob_imprisonment_tool>, [[<industrialforegoing:plastic>,<draconicevolution:wyvern_core>,<industrialforegoing:plastic>],[<draconicevolution:wyvern_core>,<enderio:item_soul_vial>,<draconicevolution:wyvern_core>],[<industrialforegoing:plastic>,<draconicevolution:wyvern_core>,<industrialforegoing:plastic>]]);

function addIFLaserLensRecipe(output as IItemStack, input_glass_pane as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:plastic>,<industrialforegoing:pink_slime_ingot>],[<industrialforegoing:plastic>,input_glass_pane,<industrialforegoing:plastic>],[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:plastic>,<industrialforegoing:pink_slime_ingot>]]);
}

# All Laser Lenses
val glass_panes = [<ore:paneGlassWhite>, <ore:paneGlassOrange>, <ore:paneGlassMagenta>, <ore:paneGlassLightBlue>, <ore:paneGlassYellow>, <ore:paneGlassLime>, <ore:paneGlassPink>, <ore:paneGlassGray>, <ore:paneGlassLightGray>, <ore:paneGlassCyan>, <ore:paneGlassPurple>, <ore:paneGlassBlue>, <ore:paneGlassBrown>, <ore:paneGlassGreen>, <ore:paneGlassRed>, <ore:paneGlassBlack>] as IIngredient[];
for i in 0 to 16 {
	addIFLaserLensRecipe(<industrialforegoing:laser_lens>.withDamage(i), glass_panes[i]);
	recipes.remove(<industrialforegoing:laser_lens_inverted>.withDamage(i));
}

function addIFConveyorUpgradeRecipe(output as IItemStack, center as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[<thermalfoundation:material:32>,<industrialforegoing:plastic>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,center,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<industrialforegoing:conveyor:*>,<thermalfoundation:material:32>]]);
}

# Extraction Conveyor Upgrade
addIFConveyorUpgradeRecipe(<industrialforegoing:conveyor_upgrade>, <minecraft:dispenser>);

# Insertion Conveyor Upgrade
addIFConveyorUpgradeRecipe(<industrialforegoing:conveyor_upgrade:1>, <minecraft:hopper>);

# Detection Conveyor Upgrade
addIFConveyorUpgradeRecipe(<industrialforegoing:conveyor_upgrade:2>, <minecraft:comparator>);

# Bouncing Conveyor Upgrade
addIFConveyorUpgradeRecipe(<industrialforegoing:conveyor_upgrade:3>, <minecraft:slime>);

# Dropping Conveyor Upgrade
addIFConveyorUpgradeRecipe(<industrialforegoing:conveyor_upgrade:4>, <minecraft:iron_trapdoor>);

# Blinking Conveyor Upgrade
addIFConveyorUpgradeRecipe(<industrialforegoing:conveyor_upgrade:5>, <minecraft:chorus_flower>);

# Splitting Conveyor Upgrade
addIFConveyorUpgradeRecipe(<industrialforegoing:conveyor_upgrade:6>, <thermalfoundation:material:24>);

# Infinity Drill
recipes.remove(<industrialforegoing:infinity_drill>);
recipes.addShapedMirrored(<industrialforegoing:infinity_drill>.withTag({Energy: 0 as long, Fluid: {FluidName: "biofuel", Amount: 0}, Special: 0 as byte, Selected: "POOR"}), [[null,<enderio:block_alloy:6>,<enderio:block_alloy:6>],[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:laser_drill>,<enderio:block_alloy:6>],[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:black_hole_tank>,null]]);

# Black Hole Label
recipes.remove(<industrialforegoing:black_hole_label>);
recipes.addShaped(<industrialforegoing:black_hole_label>, [[<industrialforegoing:plastic>,<industrialforegoing:plastic>,<industrialforegoing:plastic>],[<minecraft:paper>,<enderio:item_alloy_ingot:6>,<minecraft:paper>],[<industrialforegoing:plastic>,<industrialforegoing:plastic>,<industrialforegoing:plastic>]]);

# Fortune Addon
recipes.remove(<industrialforegoing:fortune_addon>);
recipes.addShaped(<industrialforegoing:fortune_addon>, [[<minecraft:emerald>,<industrialforegoing:pink_slime_ingot>,<minecraft:emerald>],[<minecraft:emerald>,<industrialforegoing:range_addon:11>,<minecraft:emerald>],[<minecraft:emerald>,<industrialforegoing:pink_slime_ingot>,<minecraft:emerald>]]);

# Laser Base
recipes.remove(<industrialforegoing:laser_base>);
recipes.addShaped(<industrialforegoing:laser_base>, [[<industrialforegoing:plastic>,<teslacorelib:machine_case>,<industrialforegoing:plastic>],[<enderio:item_alloy_endergy_ingot:1>,<contenttweaker:steaming_restonia_crystal_block>,<enderio:item_alloy_endergy_ingot:1>],[<industrialforegoing:plastic>,<contenttweaker:steaming_restonia_crystal>,<industrialforegoing:plastic>]]);

# Laser Drill
recipes.remove(<industrialforegoing:laser_drill>);
recipes.addShaped(<industrialforegoing:laser_drill>, [[<industrialforegoing:plastic>,<contenttweaker:steaming_restonia_crystal>,<industrialforegoing:plastic>],[<contenttweaker:steaming_restonia_crystal>,<teslacorelib:machine_case>,<contenttweaker:steaming_restonia_crystal>],[<industrialforegoing:plastic>,<contenttweaker:steaming_restonia_crystal>,<industrialforegoing:plastic>]]);

# Pink Slime
<ore:slimeball>.remove(<industrialforegoing:pink_slime>);
recipes.addShaped(<industrialforegoing:pink_slime> * 8, [[<mysticalagriculture:slime_essence>,<ore:dyePink>,<mysticalagriculture:slime_essence>],[<ore:dyePink>,<mysticalagriculture:slime_essence>,<ore:dyePink>],[<mysticalagriculture:slime_essence>,<ore:dyePink>,<mysticalagriculture:slime_essence>]]);

print("ENDING IndustrialForegoing.zs");
