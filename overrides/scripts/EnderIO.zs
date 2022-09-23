# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.tconstruct.Alloy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.enderio.SoulBinder;
import mods.tconstruct.Casting;
import crafttweaker.recipes.IRecipeFunction;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.thermalexpansion.Compactor;
import mods.roots.Fey;
import crafttweaker.enchantments.IEnchantmentDefinition;
import mods.enderio.Enchanter;
import mods.thermalexpansion.Transposer;

print("STARTING EnderIO.zs");

# Fluid Tank
recipes.remove(<enderio:block_tank>);
recipes.addShaped(<enderio:block_tank>.withTag({"enderio:data": {tank: {Empty: "", Capacity: 16000}}}), [[<thermalfoundation:material:352>,<immersiveengineering:metal_decoration1:1>,<thermalfoundation:material:352>],[<immersiveengineering:metal_decoration1:1>,<ore:blockGlass>,<immersiveengineering:metal_decoration1:1>],[<thermalfoundation:material:352>,<immersiveengineering:metal_decoration1:1>,<thermalfoundation:material:352>]]);
#

# Conductive Iron in the Immersive Alloy Smelter
IEAlloySmelter.addRecipe(<enderio:item_alloy_ingot:4>, <minecraft:iron_ingot>, <minecraft:redstone>, 200);

# Electrical Steel Alt recipes with Steel and Silicon
EIOAlloySmelter.addRecipe(<enderio:item_alloy_ingot>, [<thermalfoundation:material:160>, <appliedenergistics2:material:5>], 10000);
EIOAlloySmelter.addRecipe(<enderio:item_alloy_ingot>, [<thermalfoundation:material:96>, <appliedenergistics2:material:5>], 10000);
IEAlloySmelter.addRecipe(<enderio:item_alloy_ingot>, <thermalfoundation:material:160>, <appliedenergistics2:material:5>, 200);
IEAlloySmelter.addRecipe(<enderio:item_alloy_ingot>, <thermalfoundation:material:96>, <appliedenergistics2:material:5>, 200);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot>, <appliedenergistics2:material:5>, null, 200, 512, [<thermalfoundation:material:160>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot>, <appliedenergistics2:material:5>, null, 200, 512, [<thermalfoundation:material:96>], "Alloying");

# Pulsating Iron in the Arc Furnace
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:5>, <minecraft:iron_ingot>, null, 200, 512, [<minecraft:ender_pearl>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:5>, <thermalfoundation:material:0>, null, 200, 512, [<minecraft:ender_pearl>], "Alloying");

# Vibrant Alloy in the Arc Furnace
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:1>, null, 200, 512, [<minecraft:ender_pearl>], "Alloying");

# Energetic Silver in the Arc Furnace
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <ore:ingotSilver>, null, 200, 256, [<minecraft:redstone>, <minecraft:glowstone_dust>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <ore:dustSilver>, null, 200, 256, [<minecraft:redstone>, <minecraft:glowstone_dust>], "Alloying");

# Vivid Alloy
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:6>, <enderio:item_alloy_endergy_ingot:5>, null, 200, 256, [<minecraft:ender_pearl>], "Alloying");
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:6>, <enderio:item_alloy_endergy_ingot:5>, <minecraft:ender_pearl>, 10000);

# Crystalline Pink Slime
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:4>, <industrialforegoing:pink_slime_ingot>, null, 120, 240, [<enderio:item_material:36>], "Alloying");
IEAlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:4>, <industrialforegoing:pink_slime_ingot>, <enderio:item_material:36>, 250);
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:4>, <industrialforegoing:pink_slime_ingot>, <enderio:item_material:36>, 8000);

# Vacuum Chest
recipes.remove(<enderio:block_vacuum_chest>);
recipes.addShaped(<enderio:block_vacuum_chest>, [[<ore:ingotElectricalSteel>,<enderio:item_material:14>,<ore:ingotElectricalSteel>],[<enderio:item_material:14>,<openblocks:vacuum_hopper>,<enderio:item_material:14>],[<ore:ingotElectricalSteel>,<enderio:item_material:14>,<ore:ingotElectricalSteel>]]);

# Simple Machine Chassis
recipes.remove(<enderio:item_material>);
recipes.addShaped(<enderio:item_material>, [[<contenttweaker:energized_dark_ingot>,<enderio:item_material:20>,<contenttweaker:energized_dark_ingot>],[<enderio:item_material:20>,<thermalexpansion:frame>,<enderio:item_material:20>],[<contenttweaker:energized_dark_ingot>,<enderio:item_material:20>,<contenttweaker:energized_dark_ingot>]]);

# Dark Steel
mods.immersiveengineering.ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:6>);
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6>, <contenttweaker:energized_dark_ingot>, null, 400, 512, [<thermalfoundation:material:160>,<mekanism:ingot>], "Alloying");
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:96>, <thermalfoundation:material:770>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:160>, <thermalfoundation:material:770>);
mods.tconstruct.Alloy.removeRecipe(<liquid:dark_steel>);

# Industrial Dye Blend
recipes.remove(<enderio:item_material:51>);
recipes.addShapedMirrored(<enderio:item_material:51> * 2, [[<actuallyadditions:item_dust:4>,<appliedenergistics2:material:3>,<enderio:item_material:48>],[<appliedenergistics2:material:3>,<enderio:item_material:50>,<appliedenergistics2:material:3>],[<enderio:item_material:48>,<appliedenergistics2:material:3>,<actuallyadditions:item_dust:4>]]);

# Industrial Machine Chassis
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material>, <enderio:item_material:51>);
recipes.addShaped(<enderio:item_material:1>, [[<enderio:item_alloy_ingot:6>,<enderio:item_material:51>,<enderio:item_alloy_ingot:6>],[<enderio:item_material:51>,<enderio:item_material>,<enderio:item_material:51>],[<enderio:item_alloy_ingot:6>,<enderio:item_material:51>,<enderio:item_alloy_ingot:6>]]);

# Basic Capacitor
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShaped(<enderio:item_basic_capacitor>, [[null,<contenttweaker:energized_dark_ingot>,null],[<enderio:item_material:20>,<contenttweaker:energized_dark_ingot>,<enderio:item_material:20>],[<immersiveengineering:material:2>,null,<immersiveengineering:material:2>]]);

# Double-Layer Capacitor
recipes.remove(<enderio:item_basic_capacitor:1>);
recipes.addShaped(<enderio:item_basic_capacitor:1>, [[null,<enderio:item_alloy_ingot:1>,null],[allCoalDusts,<enderio:item_alloy_ingot:1>,allCoalDusts],[<enderio:item_basic_capacitor>,null,<enderio:item_basic_capacitor>]]);

# Octadic Capacitor
recipes.remove(<enderio:item_basic_capacitor:2>);
recipes.addShaped(<enderio:item_basic_capacitor:2>, [[null,<enderio:item_alloy_ingot:2>,null],[<mekanism:ingot:3>,<enderio:item_alloy_ingot:2>,<mekanism:ingot:3>],[<enderio:item_basic_capacitor:1>,null,<enderio:item_basic_capacitor:1>]]);

# Silver Capacitor
recipes.remove(<enderio:item_capacitor_silver>);
recipes.addShaped(<enderio:item_capacitor_silver>, [[null,<contenttweaker:energized_dark_ingot>,null],[<enderio:item_material:20>,<contenttweaker:energized_dark_ingot>,<enderio:item_material:20>],[<contenttweaker:silver_rod>,null,<contenttweaker:silver_rod>]]);

# Endergetic Capacitor
recipes.remove(<enderio:item_capacitor_energetic_silver>);
recipes.addShaped(<enderio:item_capacitor_energetic_silver>, [[null,<enderio:item_alloy_endergy_ingot:5>,null],[allCoalDusts,<enderio:item_alloy_endergy_ingot:5>,allCoalDusts],[<enderio:item_capacitor_silver>,null,<enderio:item_capacitor_silver>]]);

# Endergized Capacitor
recipes.remove(<enderio:item_capacitor_vivid>);
recipes.addShaped(<enderio:item_capacitor_vivid>, [[null,<enderio:item_alloy_endergy_ingot:6>,null],[<mekanism:ingot:3>,<enderio:item_alloy_endergy_ingot:6>,<mekanism:ingot:3>],[<enderio:item_capacitor_energetic_silver>,null,<enderio:item_capacitor_energetic_silver>]]);

# Grainy Capacitor
recipes.remove(<enderio:item_capacitor_grainy>);
recipes.addShaped(<enderio:item_capacitor_grainy>, [[null,<enderio:item_material:20>,null],[<immersiveengineering:material:2>,null,<immersiveengineering:material:2>]]);

# Yeta Wrench
recipes.remove(<enderio:item_yeta_wrench>);
recipes.addShapedMirrored(<enderio:item_yeta_wrench>, [[null,<thermalfoundation:material:167>,null],[null,<enderio:item_material:73>,<thermalfoundation:material:167>],[<thermalfoundation:material:167>,null,null]]);

# Binder Composite
recipes.remove(<enderio:item_material:22>);
recipes.addShaped(<enderio:item_material:22> * 4, [[<ore:gravel>,<ore:clay>,<ore:gravel>],[<ore:sand>,<contenttweaker:energized_dark_dust>,<ore:sand>],[<ore:gravel>,<ore:clay>,<ore:gravel>]]);

# Conduit Binder
furnace.remove(<enderio:item_material:4>);
furnace.addRecipe(<enderio:item_material:4>, <enderio:item_material:22>);

# Item Conduit
recipes.remove(<enderio:item_item_conduit>);
recipes.addShaped(<enderio:item_item_conduit> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Fluid Conduit
recipes.remove(<enderio:item_liquid_conduit>);
recipes.addShaped(<enderio:item_liquid_conduit> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<ore:fusedGlass>,<ore:fusedGlass>,<ore:fusedGlass>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Pressurized Fluid Conduit
recipes.remove(<enderio:item_liquid_conduit:1>);
recipes.addShaped(<enderio:item_liquid_conduit:1> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<ore:fusedQuartz>,<enderio:item_liquid_conduit>,<ore:fusedQuartz>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Ender Fluid Conduit
recipes.remove(<enderio:item_liquid_conduit:2>);
recipes.addShaped(<enderio:item_liquid_conduit:2> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_ingot:2>,<enderio:item_liquid_conduit:1>,<enderio:item_alloy_ingot:2>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Remove Data Conduit
recipes.remove(<enderio:item_data_conduit:0>);

# Gas Conduits
recipes.remove(<enderio:item_gas_conduit:0>);
recipes.remove(<enderio:item_gas_conduit:1>);
recipes.remove(<enderio:item_gas_conduit:2>);
recipes.addShaped(<enderio:item_gas_conduit:2> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<mekanism:transmitter:2>.withTag({tier: 3}),<enderio:item_liquid_conduit:2>,<mekanism:transmitter:2>.withTag({tier: 3})],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Energy Conduit
recipes.remove(<enderio:item_power_conduit>);
recipes.addShaped(<enderio:item_power_conduit> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_ingot:4>,<enderio:item_alloy_ingot:4>,<enderio:item_alloy_ingot:4>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Enhanced Energy Conduit
recipes.remove(<enderio:item_power_conduit:1>);
recipes.addShaped(<enderio:item_power_conduit:1> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_ingot:1>,<enderio:item_power_conduit>,<enderio:item_alloy_ingot:1>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Ender Energy Conduit
recipes.remove(<enderio:item_power_conduit:2>);
recipes.addShaped(<enderio:item_power_conduit:2> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_ingot:2>,<enderio:item_power_conduit:1>,<enderio:item_alloy_ingot:2>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Redstone Alloy
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:3>, <projectred-core:resource_item:103>, <appliedenergistics2:material:5>, 10000);

# Redstone Conduit
recipes.remove(<enderio:item_redstone_conduit>);
recipes.addShaped(<enderio:item_redstone_conduit> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Crude Energy Conduit
recipes.remove(<enderio:item_endergy_conduit>);
#recipes.addShaped(<enderio:item_endergy_conduit> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot>,<enderio:item_alloy_endergy_ingot>,<enderio:item_alloy_endergy_ingot>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Iron Energy Conduit
recipes.remove(<enderio:item_endergy_conduit:1>);
#recipes.addShaped(<enderio:item_endergy_conduit:1> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<minecraft:iron_ingot>,<enderio:item_material:75>,<minecraft:iron_ingot>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Aluminum Energy Conduit
recipes.remove(<enderio:item_endergy_conduit:2>);
#recipes.addShaped(<enderio:item_endergy_conduit:2> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<thermalfoundation:material:132>,<enderio:item_material:75>,<thermalfoundation:material:132>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Gold Energy Conduit
recipes.remove(<enderio:item_endergy_conduit:3>);
#recipes.addShaped(<enderio:item_endergy_conduit:3> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<minecraft:gold_ingot>,<enderio:item_material:75>,<minecraft:gold_ingot>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Copper Energy Conduit
recipes.remove(<enderio:item_endergy_conduit:4>);
#recipes.addShaped(<enderio:item_endergy_conduit:4> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<thermalfoundation:material:128>,<enderio:item_material:75>,<thermalfoundation:material:128>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Silver Energy Conduit
recipes.remove(<enderio:item_endergy_conduit:5>);
recipes.addShaped(<enderio:item_endergy_conduit:5> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<thermalfoundation:material:130>,<enderio:item_material:75>,<thermalfoundation:material:130>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Electrum Energy Conduit
recipes.remove(<enderio:item_endergy_conduit:6>);
recipes.addShaped(<enderio:item_endergy_conduit:6> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<thermalfoundation:material:161>,<enderio:item_endergy_conduit:5>,<thermalfoundation:material:161>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Energetic Silver Energy Conduit
recipes.remove(<enderio:item_endergy_conduit:7>);
recipes.addShaped(<enderio:item_endergy_conduit:7> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:5>,<enderio:item_endergy_conduit:6>,<enderio:item_alloy_endergy_ingot:5>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Infinity Bimetal Gear
recipes.remove(<enderio:item_material:11>);
recipes.addShaped(<enderio:item_material:11>, [[<thermalfoundation:material:160>,<thermalfoundation:material:23>,<thermalfoundation:material:160>],[<thermalfoundation:material:23>,<enderio:item_material:20>,<thermalfoundation:material:23>],[<thermalfoundation:material:160>,<thermalfoundation:material:23>,<thermalfoundation:material:160>]]);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:11>);

# Energized Bimetal Gear
recipes.remove(<enderio:item_material:12>);
recipes.addShaped(<enderio:item_material:12>, [[null,<enderio:item_alloy_ingot:1>,null],[<enderio:item_alloy_ingot:1>,<enderio:item_material:11>,<enderio:item_alloy_ingot:1>],[null,<enderio:item_alloy_ingot:1>,null]]);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:12>);

# Vibrant Bimetal Gear
recipes.remove(<enderio:item_material:13>);
recipes.addShaped(<enderio:item_material:13>, [[null,<enderio:item_alloy_ingot:2>,null],[<enderio:item_alloy_ingot:2>,<enderio:item_material:12>,<enderio:item_alloy_ingot:2>],[null,<enderio:item_alloy_ingot:2>,null]]);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:13>);

# Dark Bimetal Gear
recipes.remove(<enderio:item_material:73>);
recipes.addShaped(<enderio:item_material:73>, [[null,<enderio:item_alloy_ingot:6>,null],[<enderio:item_alloy_ingot:6>,<enderio:item_material:11>,<enderio:item_alloy_ingot:6>],[null,<enderio:item_alloy_ingot:6>,null]]);
mods.thermalexpansion.Compactor.removeGearRecipe(<evilcraft:dark_gem> * 4);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:73>);

# Simple Powered Furnace
recipes.remove(<enderio:block_simple_furnace>);
recipes.addShaped(<enderio:block_simple_furnace>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<minecraft:furnace>,<enderio:item_material>,<minecraft:furnace>],[<enderio:item_material:11>,allCoalBlocks,<enderio:item_material:11>]]);

# Simple Stirling Generator
recipes.remove(<enderio:block_simple_stirling_generator>);
recipes.addShaped(<enderio:block_simple_stirling_generator>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<thermalfoundation:material:802>,<enderio:item_material>,<thermalfoundation:material:802>],[<enderio:item_material:11>,<minecraft:piston>,<enderio:item_material:11>]]);

# Simple Crafter
recipes.remove(<enderio:block_simple_crafter>);
recipes.addShaped(<enderio:block_simple_crafter>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<minecraft:crafting_table>,<enderio:item_material>,<minecraft:crafting_table>],[<enderio:item_material:11>,<contenttweaker:silicon_plate>,<enderio:item_material:11>]]);

# Simple Alloy Smelter
recipes.remove(<enderio:block_simple_alloy_smelter>);
recipes.addShaped(<enderio:block_simple_alloy_smelter>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<minecraft:furnace>,<enderio:item_material>,<minecraft:furnace>],[<enderio:item_material:11>,<minecraft:furnace>,<enderio:item_material:11>]]);

# Simple SAG Mill
recipes.remove(<enderio:block_simple_sag_mill>);
recipes.addShaped(<enderio:block_simple_sag_mill>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<betternether:cincinnasite_forged>,<enderio:item_material>,<betternether:cincinnasite_forged>],[<enderio:item_material:11>,<minecraft:piston>,<enderio:item_material:11>]]);

# Simple Wired Charger
recipes.remove(<enderio:block_simple_wired_charger>);
recipes.addShaped(<enderio:block_simple_wired_charger>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<thermalfoundation:material:258>,<enderio:item_material>,<thermalfoundation:material:258>],[<enderio:item_material:11>,<enderio:block_alloy>,<enderio:item_material:11>]]);

function addEnderIOBaseMachineRecipe(output_item as IItemStack, side_item as IItemStack, bottom_item as IItemStack) {
	recipes.remove(output_item);
	recipes.addShaped(output_item, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[side_item,<enderio:item_material:1>,side_item],[<enderio:item_material:73>,bottom_item,<enderio:item_material:73>]]);
}

# Alloy Smelter
addEnderIOBaseMachineRecipe(<enderio:block_alloy_smelter>, <enderio:block_simple_alloy_smelter>, <enderio:item_alloy_ingot>);

# Stirling Generator
addEnderIOBaseMachineRecipe(<enderio:block_stirling_generator>, <enderio:block_simple_stirling_generator>, <enderio:item_alloy_ingot>);

# SAG Mill
addEnderIOBaseMachineRecipe(<enderio:block_sag_mill>, <enderio:block_simple_sag_mill>, <enderio:item_alloy_ingot>);

# Wired Charger
addEnderIOBaseMachineRecipe(<enderio:block_wired_charger>, <enderio:block_simple_wired_charger>, <enderio:item_alloy_ingot>);

# Crafter
addEnderIOBaseMachineRecipe(<enderio:block_crafter>, <enderio:block_simple_crafter>, <enderio:item_alloy_ingot>);

# Item Buffer
recipes.remove(<enderio:block_buffer>);
recipes.addShaped(<enderio:block_buffer>, [[<enderio:item_alloy_ingot>,<ore:chestWood>,<enderio:item_alloy_ingot>],[<ore:chestWood>,<enderio:item_material>,<ore:chestWood>],[<enderio:item_alloy_ingot>,<ore:chestWood>,<enderio:item_alloy_ingot>]]);

# Power Buffer
recipes.remove(<enderio:block_buffer:1>);
recipes.addShaped(<enderio:block_buffer:1>, [[<enderio:item_alloy_ingot>,<enderio:item_power_conduit:2>,<enderio:item_alloy_ingot>],[<enderio:item_power_conduit:2>,<enderio:item_material:1>,<enderio:item_power_conduit:2>],[<enderio:item_alloy_ingot>,<enderio:item_power_conduit:2>,<enderio:item_alloy_ingot>]]);

# Lava Heat Exchanger
addEnderIOBaseMachineRecipe(<enderio:block_lava_generator>, <enderio:item_material:72>, <enderio:block_tank>);

# Painting Machine
addEnderIOBaseMachineRecipe(<enderio:block_painter>, <openblocks:paintbrush>, <minecraft:diamond>);

# The Vat
addEnderIOBaseMachineRecipe(<enderio:block_vat>, <enderio:block_tank>, <enderio:block_simple_furnace>);

# Pressurized Fluid Tank
recipes.remove(<enderio:block_tank:1>);
recipes.addShaped("enderio_pressurized_fluid_tank", <enderio:block_tank:1>.withTag({"enderio:data": {tank: {Empty: "", Capacity: 32000}}}), [[<enderio:item_alloy_ingot:6>,<enderio:block_dark_iron_bars>,<enderio:item_alloy_ingot:6>],[<enderio:block_dark_iron_bars>,<enderio:block_tank>.marked("tank"),<enderio:block_dark_iron_bars>],[<enderio:item_alloy_ingot:6>,<enderio:block_dark_iron_bars>,<enderio:item_alloy_ingot:6>]],
function(out, ins, cInfo) {
	if(ins.tank.tag has "enderio:data") {
		if(ins.tank.tag.memberGet("enderio:data") has "tank") {
			if(ins.tank.tag.memberGet("enderio:data").tank has "FluidName" && ins.tank.tag.memberGet("enderio:data").tank has "Amount") {
				return out.withTag({"enderio:data": {tank: {FluidName: ins.tank.tag.memberGet("enderio:data").tank.FluidName, Capacity: 32000, Amount: ins.tank.tag.memberGet("enderio:data").tank.Amount}}});
			}
			else {
				return out.withTag({"enderio:data": {tank: {Empty: "", Capacity: 32000}}});
			}
		} else {
			return out.withTag({"enderio:data": {tank: {Empty: "", Capacity: 32000}}});
		}
	} else {
		return out.withTag({"enderio:data": {tank: {Empty: "", Capacity: 32000}}});
	}
}, null);

recipes.remove(<enderio:block_tank:1>);
recipes.addHiddenShaped("enderio_pressurized_fluid_tank2", <enderio:block_tank:1>.withTag({"enderio:data": {tank: {Empty: "", Capacity: 32000}}}), [[<enderio:item_alloy_ingot:6>,<enderio:block_dark_iron_bars>,<enderio:item_alloy_ingot:6>],[<enderio:block_dark_iron_bars>,<enderio:block_tank>.withTag({"enderio:data": {tank: {Empty: "", Capacity: 16000}}}).marked("tank"),<enderio:block_dark_iron_bars>],[<enderio:item_alloy_ingot:6>,<enderio:block_dark_iron_bars>,<enderio:item_alloy_ingot:6>]],
function(out, ins, cInfo) {
	if(ins.tank.tag has "enderio:data") {
		if(ins.tank.tag.memberGet("enderio:data") has "tank") {
			if(ins.tank.tag.memberGet("enderio:data").tank has "FluidName" && ins.tank.tag.memberGet("enderio:data").tank has "Amount") {
				return out.withTag({"enderio:data": {tank: {FluidName: ins.tank.tag.memberGet("enderio:data").tank.FluidName, Capacity: 32000, Amount: ins.tank.tag.memberGet("enderio:data").tank.Amount}}});
			}
			else {
				return out.withTag({"enderio:data": {tank: {Empty: "", Capacity: 32000}}});
			}
		} else {
			return out.withTag({"enderio:data": {tank: {Empty: "", Capacity: 32000}}});
		}
	} else {
		return out.withTag({"enderio:data": {tank: {Empty: "", Capacity: 32000}}});
	}
}, null);

# Combustion Generator
addEnderIOBaseMachineRecipe(<enderio:block_combustion_generator>, <enderio:block_tank>, <enderio:block_simple_stirling_generator>);

# Niard
addEnderIOBaseMachineRecipe(<enderio:block_niard>, <minecraft:piston>, <enderio:block_tank>);

# Experience Rod
recipes.remove(<enderio:item_xp_transfer>);
recipes.addShapedMirrored(<enderio:item_xp_transfer>, [[null,<enderio:block_alloy:2>,<enderio:block_alloy:7>],[<enderio:block_alloy:2>,<thermalfoundation:tome_experience>,<enderio:block_alloy:2>],[<enderio:block_alloy:7>,<enderio:block_alloy:2>,null]]);

# XP Vacuum
recipes.remove(<enderio:block_xp_vacuum>);
recipes.addShaped(<enderio:block_xp_vacuum>, [[<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>],[<contenttweaker:energized_dark_ingot>,<thermalfoundation:tome_experience>,<contenttweaker:energized_dark_ingot>],[<contenttweaker:energized_dark_ingot>,<openblocks:vacuum_hopper>,<contenttweaker:energized_dark_ingot>]]);

# Omnivoir
recipes.remove(<enderio:block_omni_reservoir>);
recipes.addShaped(<enderio:block_omni_reservoir> * 16, [[<enderio:item_alloy_ingot:6>,<openblocks:tank>,<enderio:item_alloy_ingot:6>],[<openblocks:tank>,null,<openblocks:tank>],[<enderio:item_alloy_ingot:6>,<openblocks:tank>,<enderio:item_alloy_ingot:6>]]);

# Enchanter
recipes.remove(<enderio:block_enchanter>);
recipes.addShaped(<enderio:block_enchanter>, [[<minecraft:diamond_block>,<minecraft:book>,<minecraft:diamond_block>],[<enderio:block_alloy:6>,<openblocks:auto_enchantment_table>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>]]);

# Remove Death Urn
recipes.remove(<enderio:item_material:81>);

# Remove Inventory Panel related things
recipes.remove(<enderio:item_material:64>);
recipes.remove(<enderio:block_inventory_panel>);
recipes.remove(<enderio:item_inventory_remote:0>);
recipes.remove(<enderio:item_inventory_remote:1>);
recipes.remove(<enderio:item_inventory_remote:2>);
recipes.remove(<enderio:block_inventory_panel_sensor>);
recipes.remove(<enderio:block_inventory_chest_tiny>);
recipes.remove(<enderio:block_inventory_chest_small>);
recipes.remove(<enderio:block_inventory_chest_medium>);
recipes.remove(<enderio:block_inventory_chest_big>);
recipes.remove(<enderio:block_inventory_chest_large>);
recipes.remove(<enderio:block_inventory_chest_huge>);
recipes.remove(<enderio:block_inventory_chest_enormous>);
recipes.remove(<enderio:block_inventory_chest_warehouse>);
recipes.remove(<enderio:block_inventory_chest_warehouse13>);

# Basic Capacitor Bank
recipes.remove(<enderio:block_cap_bank:1>);
recipes.addShaped(<enderio:block_cap_bank:1>, [[<enderio:item_alloy_ingot:6>,<enderio:item_basic_capacitor>,<enderio:item_alloy_ingot:6>],[<enderio:item_basic_capacitor>,<plustic:osgloglasblock>,<enderio:item_basic_capacitor>],[<enderio:item_alloy_ingot:6>,<enderio:item_basic_capacitor>,<enderio:item_alloy_ingot:6>]]);

val enderIOCapBankUpgrade as IRecipeFunction = function(out, ins, cInfo) {
	var total_energy = 0;
	if(ins.left_capbank.tag has "enderio:energy") {
		total_energy += ins.left_capbank.tag.memberGet("enderio:energy");
	}
	if(ins.right_capbank.tag has "enderio:energy") {
		total_energy += ins.right_capbank.tag.memberGet("enderio:energy");
	}
	return out.updateTag({"enderio:energy": total_energy});
};

# Capacitor Bank
recipes.remove(<enderio:block_cap_bank:2>);
recipes.addShaped("enderio_capbank_upgrade1", <enderio:block_cap_bank:2>, [[<enderio:item_alloy_ingot:1>,<enderio:item_basic_capacitor:1>,<enderio:item_alloy_ingot:1>],[<enderio:block_cap_bank:1>.marked("left_capbank"),<enderio:block_alloy>,<enderio:block_cap_bank:1>.marked("right_capbank")],[<enderio:item_alloy_ingot:1>,<enderio:item_basic_capacitor:1>,<enderio:item_alloy_ingot:1>]],
enderIOCapBankUpgrade, null);

# Capacitor Bank
recipes.remove(<enderio:block_cap_bank:3>);
recipes.addShaped("enderio_capbank_upgrade2", <enderio:block_cap_bank:3>, [[<enderio:item_alloy_ingot:2>,<enderio:item_basic_capacitor:2>,<enderio:item_alloy_ingot:2>],[<enderio:block_cap_bank:2>.marked("left_capbank"),<enderio:block_alloy:2>,<enderio:block_cap_bank:2>.marked("right_capbank")],[<enderio:item_alloy_ingot:2>,<enderio:item_basic_capacitor:2>,<enderio:item_alloy_ingot:2>]],
enderIOCapBankUpgrade, null);

# Impulse Hopper
recipes.remove(<enderio:block_impulse_hopper>);
recipes.addShaped(<enderio:block_impulse_hopper>, [[<enderio:item_alloy_ingot:6>,<enderio:item_material:13>,<enderio:item_alloy_ingot:6>],[<mob_grinding_utils:absorption_hopper>,<enderio:item_material:1>,<mob_grinding_utils:absorption_hopper>],[<enderio:item_alloy_ingot:6>,<enderio:item_material:13>,<enderio:item_alloy_ingot:6>]]);
recipes.addShaped(<enderio:block_impulse_hopper>, [[<enderio:item_alloy_ingot:6>,<mob_grinding_utils:absorption_hopper>,<enderio:item_alloy_ingot:6>],[<enderio:item_material:13>,<enderio:item_material:1>,<enderio:item_material:13>],[<enderio:item_alloy_ingot:6>,<mob_grinding_utils:absorption_hopper>,<enderio:item_alloy_ingot:6>]]);

# Energy Gauge
recipes.remove(<enderio:block_gauge>);
recipes.addShaped(<enderio:block_gauge>, [[<enderio:item_alloy_ingot>,null,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot:6>,<enderio:item_conduit_probe>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot>,null,<enderio:item_alloy_ingot>]]);

# Power Monitor
recipes.remove(<enderio:block_power_monitor>);
recipes.addShaped(<enderio:block_power_monitor>, [[<enderio:item_alloy_ingot:6>,<enderio:item_conduit_probe>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<enderio:item_material:1>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<immersiveengineering:connector:11>,<enderio:item_alloy_ingot:6>]]);

# Graphical Power Monitor
recipes.remove(<enderio:block_advanced_power_monitor>);
recipes.addShapedMirrored(<enderio:block_advanced_power_monitor>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<enderio:block_power_monitor>,<enderio:item_alloy_ingot:6>],[<ore:dyeRed>,<ore:dyeYellow>,<ore:dyeGreen>]]);

# Soul Attuned Dye Blend
recipes.remove(<enderio:item_material:52>);
recipes.addShaped(<enderio:item_material:52> * 2, [[<enderio:item_material:49>,<appliedenergistics2:material:3>,<enderio:item_material:49>],[<appliedenergistics2:material:3>,<enderio:item_material:50>,<appliedenergistics2:material:3>],[<enderio:item_material:49>,<appliedenergistics2:material:3>,<enderio:item_material:49>]]);

# Soul Machine Chassis
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material>, <enderio:item_material:52>);
recipes.addShaped(<enderio:item_material:53>, [[<enderio:item_alloy_ingot:7>,<enderio:item_material:52>,<enderio:item_alloy_ingot:7>],[<enderio:item_material:52>,<enderio:item_material:1>,<enderio:item_material:52>],[<enderio:item_alloy_ingot:7>,<enderio:item_material:52>,<enderio:item_alloy_ingot:7>]]);

# Endervoir
recipes.remove(<enderio:block_reservoir>);
Fey.addRecipe("enderio:block_reservoir", <enderio:block_reservoir>, [<minecraft:potion>.withTag({Potion: "minecraft:water"}), <roots:dewgonia>, <roots:dewgonia>, <roots:terra_moss>, <roots:mortar>]);

# Slice'n'Splice
recipes.remove(<enderio:block_slice_and_splice>);
recipes.addShapedMirrored(<enderio:block_slice_and_splice>, [[<enderio:item_alloy_ingot:7>,<enderio:item_alloy_ingot:7>,<enderio:item_alloy_ingot:7>],[<enderio:item_dark_steel_axe>,<enderio:item_material:53>,<enderio:item_dark_steel_shears>],[<enderio:item_material:12>,<ore:itemSkull>,<enderio:item_material:12>]]);

# Farming Station
recipes.remove(<enderio:block_farm_station>);
recipes.addShapedMirrored(<enderio:block_farm_station>, [[<enderio:item_alloy_ingot:7>,<enderio:item_alloy_ingot:7>,<enderio:item_alloy_ingot:7>],[<divinerpg:arlemite_hoe>,<enderio:item_material:53>,<divinerpg:rupee_hoe>],[<enderio:item_material:12>,<enderio:item_material:42>,<enderio:item_material:12>]]);
<enderio:block_farm_station>.addTooltip(format.red(format.bold("WARNING: ")) + format.white("Do NOT use this machine to harvest crops"));
<enderio:block_farm_station>.addTooltip(format.white("from Crop Sticks. It will always CRASH your game."));
<enderio:block_farm_station>.addTooltip(format.white(format.italic("<Press Shift for alternatives>")));
<enderio:block_farm_station>.addShiftTooltip(format.white("Instead, use either a Botania Drum of the Wild /"));
<enderio:block_farm_station>.addShiftTooltip(format.white(" / Horn of the Wild, an Actually Additions Farmer,"));
<enderio:block_farm_station>.addShiftTooltip(format.white("or an Industrial Foregoing Plant Interactor;"));
<enderio:block_farm_station>.addShiftTooltip(format.white("along with a Ranged Collector or an Absorption Hopper."));

# Pulsating Crystal
recipes.remove(<enderio:item_material:14>);
recipes.addShaped(<enderio:item_material:14>, [[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>],[<enderio:item_alloy_ingot:5>,<minecraft:diamond>,<enderio:item_alloy_ingot:5>],[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>]]);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:14>);
mods.tconstruct.Casting.addTableRecipe(<enderio:item_material:14>, <minecraft:diamond>, <liquid:pulsating_iron>, 1152, true, 60);
recipes.addShaped(<enderio:item_material:14> * 4, [[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>],[<enderio:item_alloy_ingot:5>,<actuallyadditions:item_crystal:2>,<enderio:item_alloy_ingot:5>],[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>]]);
mods.tconstruct.Casting.addTableRecipe(<enderio:item_material:14> * 4, <actuallyadditions:item_crystal:2>, <liquid:pulsating_iron>, 1152, true, 60);

# Vibrant Crystal
recipes.remove(<enderio:item_material:15>);
recipes.addShaped(<enderio:item_material:15>, [[<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>],[<enderio:item_alloy_ingot:2>,<minecraft:emerald>,<enderio:item_alloy_ingot:2>],[<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>]]);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:15>);
mods.tconstruct.Casting.addTableRecipe(<enderio:item_material:15>, <minecraft:emerald>, <liquid:vibrant_alloy>, 1152, true, 60);
recipes.addShaped(<enderio:item_material:15> * 4, [[<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>],[<enderio:item_alloy_ingot:2>,<actuallyadditions:item_crystal:4>,<enderio:item_alloy_ingot:2>],[<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>]]);
mods.tconstruct.Casting.addTableRecipe(<enderio:item_material:15> * 4, <actuallyadditions:item_crystal:4>, <liquid:vibrant_alloy>, 1152, true, 60);

function addEnderIOObeliskRecipe(output as IItemStack, top_input as IItemStack, mid_input as IItemStack) {
	recipes.remove(output);
	recipes.addShaped(output, [[null,top_input,null],[<enderio:item_material:12>,mid_input,<enderio:item_material:12>],[<enderio:item_alloy_ingot:7>,<enderio:item_material:53>,<enderio:item_alloy_ingot:7>]]);
}

# Attractor Obelisk
addEnderIOObeliskRecipe(<enderio:block_attractor_obelisk>, <enderio:item_material:17>, <mob_grinding_utils:fan>);

# Aversion Obelisk
addEnderIOObeliskRecipe(<enderio:block_aversion_obelisk>, <enderio:block_enderman_skull:2>, <mob_grinding_utils:fan>);

# Inhibitor Obelisk
addEnderIOObeliskRecipe(<enderio:block_inhibitor_obelisk>, <enderio:item_material:16>, <mob_grinding_utils:ender_inhibitor_on>);
addEnderIOObeliskRecipe(<enderio:block_inhibitor_obelisk>, <enderio:item_material:16>, <mob_grinding_utils:ender_inhibitor_off>);

# Relocator Obelisk
recipes.remove(<enderio:block_relocator_obelisk>);
recipes.addShaped(<enderio:block_relocator_obelisk>, [[null,<minecraft:prismarine>,null],[<minecraft:prismarine>,<enderio:block_aversion_obelisk>,<minecraft:prismarine>],[<enderio:item_material:13>,<contenttweaker:energized_dark_block>,<enderio:item_material:13>]]);

# Weather Obelisk
addEnderIOObeliskRecipe(<enderio:block_weather_obelisk>, <enderio:item_material:18>, <enderio:block_cap_bank:3>);

# Experience Obelisk
addEnderIOObeliskRecipe(<enderio:block_experience_obelisk>, <enderio:item_xp_transfer>, <extrautils2:drum:2>);

# End Steel Chassis
recipes.remove(<enderio:item_material:66>);
recipes.addShaped(<enderio:item_material:66>, [[<enderio:item_alloy_ingot:8>,<enderio:block_end_iron_bars>,<enderio:item_alloy_ingot:8>],[<enderio:block_end_iron_bars>,<enderio:item_material:53>,<enderio:block_end_iron_bars>],[<enderio:item_alloy_ingot:8>,<enderio:block_end_iron_bars>,<enderio:item_alloy_ingot:8>]]);

# Enhanced Dye Blend
recipes.remove(<enderio:item_material:67>);
recipes.addShaped(<enderio:item_material:67> * 2, [[<enderio:item_material:36>,<appliedenergistics2:material:3>,<enderio:item_material:36>],[<appliedenergistics2:material:3>,<enderio:item_material:50>,<appliedenergistics2:material:3>],[<enderio:item_material:36>,<appliedenergistics2:material:3>,<enderio:item_material:36>]]);

# Enhanced Machine Chassis
recipes.addShaped(<enderio:item_material:54>, [[<enderio:item_alloy_endergy_ingot:2>,<enderio:item_material:67>,<enderio:item_alloy_endergy_ingot:2>],[<enderio:item_material:67>,<enderio:item_material:66>,<enderio:item_material:67>],[<enderio:item_alloy_endergy_ingot:2>,<enderio:item_material:67>,<enderio:item_alloy_endergy_ingot:2>]]);

function addEnderIOEnhancedMachineRecipe(output as IItemStack, machine_input as IItemStack) {
	recipes.remove(output);
	recipes.addShaped(output, [[machine_input,machine_input,machine_input],[<enderio:item_alloy_endergy_ingot:2>,machine_input,<enderio:item_alloy_endergy_ingot:2>],[<enderio:item_material:13>,<enderio:item_material:54>,<enderio:item_material:13>]]);
}

# Enhanced Alloy Smelter
addEnderIOEnhancedMachineRecipe(<enderio:block_enhanced_alloy_smelter>, <enderio:block_alloy_smelter>);

# Enhanced Combustion Generator
addEnderIOEnhancedMachineRecipe(<enderio:block_enhanced_combustion_generator>, <enderio:block_combustion_generator>);

# Enhanced SAG Mill
addEnderIOEnhancedMachineRecipe(<enderio:block_enhanced_sag_mill>, <enderio:block_sag_mill>);

# The Enhanced Vat
addEnderIOEnhancedMachineRecipe(<enderio:block_enhanced_vat>, <enderio:block_vat>);

# Enhanced Wired Charger
addEnderIOEnhancedMachineRecipe(<enderio:block_enhanced_wired_charger>, <enderio:block_wired_charger>);

# Killer Joe
recipes.remove(<enderio:block_killer_joe>);
recipes.addShaped(<enderio:block_killer_joe>, [[<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>],[<ore:fusedQuartz>,<enderio:item_material:42>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<enderio:item_material:54>,<ore:fusedQuartz>]]);

# Zombie Generator
recipes.remove(<enderio:block_zombie_generator>);
recipes.addShaped(<enderio:block_zombie_generator>, [[<enderio:block_alloy>,<enderio:block_alloy>,<enderio:block_alloy>],[<ore:fusedQuartz>,<enderio:item_material:40>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<enderio:item_material:54>,<ore:fusedQuartz>]]);

# Frank'n'Zombie Generator
recipes.remove(<enderio:block_franken_zombie_generator>);
recipes.addShaped(<enderio:block_franken_zombie_generator>, [[<enderio:block_alloy:7>,<enderio:block_alloy:7>,<enderio:block_alloy:7>],[<ore:fusedQuartz>,<enderio:block_zombie_generator>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<enderio:item_material:42>,<ore:fusedQuartz>]]);

# Ender Generator
recipes.remove(<enderio:block_ender_generator>);
recipes.addShaped(<enderio:block_ender_generator>, [[<enderio:block_alloy:8>,<enderio:block_alloy:8>,<enderio:block_alloy:8>],[<ore:fusedQuartz>,<enderio:block_franken_zombie_generator>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<enderio:item_material:43>,<ore:fusedQuartz>]]);

# ME Conduit
recipes.remove(<enderio:item_me_conduit>);
recipes.addShaped(<enderio:item_me_conduit> * 3, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<appliedenergistics2:part:16>,<appliedenergistics2:part:16>,<appliedenergistics2:part:16>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);
recipes.addShapeless(<enderio:item_me_conduit> * 4, [<enderio:item_me_conduit:1>]);

# Dense ME Conduit
recipes.remove(<enderio:item_me_conduit:1>);
recipes.addShaped(<enderio:item_me_conduit:1>, [[<enderio:item_me_conduit>,<enderio:item_me_conduit>],[<enderio:item_me_conduit>,<enderio:item_me_conduit>]]);

# Extraction Speed Upgrade
recipes.remove(<enderio:item_extract_speed_upgrade>);
recipes.addShaped(<enderio:item_extract_speed_upgrade>, [[null,<contenttweaker:energized_dark_dust>,null],[<enderio:item_alloy_ingot>,<extrautils2:ingredients:6>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<minecraft:piston>,<enderio:item_alloy_ingot>]]);

# Extraction Speed Downgrade
recipes.remove(<enderio:item_extract_speed_downgrade>);
recipes.addShaped(<enderio:item_extract_speed_downgrade>, [[<enderio:item_alloy_ingot>,<ore:slimeball>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<extrautils2:ingredients:6>,<enderio:item_alloy_ingot>],[null,<contenttweaker:energized_dark_dust>,null]]);

# Photovoltaic Composite
recipes.remove(<enderio:item_material:38>);
recipes.addShapeless(<enderio:item_material:38> * 2, [<contenttweaker:rf_powder>,<actuallyadditions:item_dust:4>,<appliedenergistics2:material:5>,<contenttweaker:energized_dark_dust>]);

# Photovoltaic Plate
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_material:3>, <enderio:item_material:38>, null, 100, 512, [<contenttweaker:energized_dark_ingot>, <appliedenergistics2:material:46>], "Alloying");

# Simple Photovoltaic Cell
recipes.remove(<enderio:block_solar_panel>);
recipes.addShaped(<enderio:block_solar_panel>, [[<enderio:item_alloy_ingot>,<ore:fusedQuartz>,<enderio:item_alloy_ingot>],[<enderio:item_material:3>,<enderio:item_material:3>,<enderio:item_material:3>],[<contenttweaker:energized_dark_ingot>,<enderio:item_material:11>,<contenttweaker:energized_dark_ingot>]]);

# Photovoltaic Cell
recipes.remove(<enderio:block_solar_panel:1>);
recipes.addShaped(<enderio:block_solar_panel:1>, [[<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:1>],[<enderio:item_material:3>,<enderio:block_solar_panel>,<enderio:item_material:3>],[<minecraft:daylight_detector>,<enderio:item_material:12>,<minecraft:daylight_detector>]]);

# Advanced Photovoltaic Cell
recipes.remove(<enderio:block_solar_panel:2>);
recipes.addShaped(<enderio:block_solar_panel:2>, [[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>],[<enderio:item_material:3>,<enderio:block_solar_panel:1>,<enderio:item_material:3>],[<minecraft:daylight_detector>,<enderio:item_material:73>,<minecraft:daylight_detector>]]);

# Vibrant Photovoltaic Cell
recipes.remove(<enderio:block_solar_panel:3>);
recipes.addShaped(<enderio:block_solar_panel:3>, [[<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:2>],[<enderio:item_material:3>,<enderio:block_solar_panel:2>,<enderio:item_material:3>],[<minecraft:daylight_detector>,<enderio:item_material:13>,<minecraft:daylight_detector>]]);

# Basic Item Filter
recipes.remove(<enderio:item_basic_item_filter>);
recipes.addShaped(<enderio:item_basic_item_filter>, [[null,<enderio:item_material:4>,null],[<enderio:item_material:4>,<thermaldynamics:filter>,<enderio:item_material:4>],[null,<enderio:item_material:4>,null]]);

# Advanced Item Filter
recipes.remove(<enderio:item_advanced_item_filter>);
recipes.addShaped(<enderio:item_advanced_item_filter>, [[null,<enderio:item_material:4>,null],[<enderio:item_material:4>,<enderio:item_basic_item_filter>,<enderio:item_material:4>],[null,<enderio:item_material:41>,null]]);

# Limited Item Filter
recipes.remove(<enderio:item_limited_item_filter>);
recipes.addShaped(<enderio:item_limited_item_filter>, [[null,<enderio:item_material:4>,null],[<enderio:item_material:4>,<enderio:item_advanced_item_filter>,<enderio:item_material:4>],[null,<extrautils2:ingredients:7>,null]]);

# Big Item Filter
recipes.remove(<enderio:item_big_item_filter>);
recipes.addShaped(<enderio:item_big_item_filter>, [[null,<enderio:item_material:4>,null],[<enderio:item_material:4>,<thermaldynamics:filter:4>,<enderio:item_material:4>],[null,<enderio:item_material:45>,null]]);

# Advanced Big Item Filter
recipes.remove(<enderio:item_big_advanced_item_filter>);
recipes.addShaped(<enderio:item_big_advanced_item_filter>, [[null,<minecraft:shulker_shell>,null],[<enderio:item_material:4>,<enderio:item_big_item_filter>,<enderio:item_material:4>],[null,<minecraft:shulker_shell>,null]]);

# Existing Item Filter
recipes.remove(<enderio:item_existing_item_filter>);
recipes.addShaped(<enderio:item_existing_item_filter>, [[null,<enderio:item_material:4>,null],[<enderio:item_material:4>,<enderio:item_advanced_item_filter>,<enderio:item_material:4>],[null,<minecraft:observer>,null]]);

# Mod Item Filter
recipes.remove(<enderio:item_mod_item_filter>);
recipes.addShaped(<enderio:item_mod_item_filter>, [[null,<enderio:item_material:4>,null],[<enderio:item_material:4>,<enderio:item_advanced_item_filter>,<enderio:item_material:4>],[null,<enderio:item_yeta_wrench>,null]]);

# Power Item Filter
recipes.remove(<enderio:item_power_item_filter>);
recipes.addShaped(<enderio:item_power_item_filter>, [[null,<enderio:item_material:4>,null],[<enderio:item_material:4>,<enderio:item_advanced_item_filter>,<enderio:item_material:4>],[null,<enderio:item_conduit_probe>,null]]);

# Basic Fluid Filter
recipes.remove(<enderio:item_fluid_filter>);
recipes.addShaped(<enderio:item_fluid_filter>, [[null,<enderio:item_material:4>,null],[<enderio:item_material:4>,<thermaldynamics:servo>,<enderio:item_material:4>],[null,<enderio:item_material:4>,null]]);

# Redstone Filter Base
recipes.remove(<enderio:item_material:60>);
recipes.addShaped(<enderio:item_material:60>, [[<enderio:item_alloy_ingot:3>,<enderio:item_material:4>,<enderio:item_alloy_ingot:3>],[<enderio:item_material:4>,<thermaldynamics:relay>,<enderio:item_material:4>],[<enderio:item_alloy_ingot:3>,<enderio:item_material:4>,<enderio:item_alloy_ingot:3>]]);

# Conduit Probe
recipes.remove(<enderio:item_conduit_probe>);
recipes.addShaped(<enderio:item_conduit_probe>, [[<enderio:item_alloy_nugget>,null,<enderio:item_alloy_nugget>],[<enderio:item_alloy_ingot>,<enderio:item_yeta_wrench>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<contenttweaker:energized_dark_dust>,<enderio:item_alloy_ingot>]]);

# Conduit Facade
recipes.remove(<enderio:item_conduit_facade>);
recipes.addShaped(<enderio:item_conduit_facade> * 4, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_material:4>,null,<enderio:item_material:4>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Transparent Conduit Facade
recipes.remove(<enderio:item_conduit_facade:2>);
recipes.addShaped(<enderio:item_conduit_facade:2> * 4, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_material:4>,<ore:fusedGlass>,<enderio:item_material:4>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Glider Wing
recipes.remove(<enderio:item_material:6>);
recipes.addShapedMirrored(<enderio:item_material:6>, [[null,<enderio:item_alloy_ingot:6>,<contenttweaker:industrial_leather>],[<enderio:item_alloy_ingot:6>,<contenttweaker:industrial_leather>,<contenttweaker:industrial_leather>],[<contenttweaker:industrial_leather>,<contenttweaker:industrial_leather>,<openblocks:generic>]]);

# Dark Paper Anvil
recipes.remove(<enderio:block_dark_paper_anvil>);

# Electromagnet
recipes.remove(<enderio:item_magnet>);
recipes.addShaped(<enderio:item_magnet>, [[<enderio:item_alloy_ingot:3>,<enderio:item_material:15>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:3>,null,<enderio:item_alloy_ingot:3>],[<enderio:block_alloy>,null,<enderio:block_alloy>]]);

# Dark Helm
recipes.remove(<enderio:item_dark_steel_helmet>);
recipes.addShaped(<enderio:item_dark_steel_helmet>, [[<thermalfoundation:storage_alloy:7>,<enderio:block_alloy:6>,<thermalfoundation:storage_alloy:7>],[<enderio:block_alloy:6>,<minecraft:diamond_helmet>,<enderio:block_alloy:6>]]);

# Dark Plate
recipes.remove(<enderio:item_dark_steel_chestplate>);
recipes.addShaped(<enderio:item_dark_steel_chestplate>, [[<thermalfoundation:storage_alloy:7>,<minecraft:diamond_chestplate>,<thermalfoundation:storage_alloy:7>],[<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<thermalfoundation:storage_alloy:7>,<enderio:block_alloy:6>]]);

# Dark Leggings
recipes.remove(<enderio:item_dark_steel_leggings>);
recipes.addShaped(<enderio:item_dark_steel_leggings>, [[<thermalfoundation:storage_alloy:7>,<enderio:block_alloy:6>,<thermalfoundation:storage_alloy:7>],[<enderio:block_alloy:6>,<minecraft:diamond_leggings>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,null,<enderio:block_alloy:6>]]);

# Dark Boots
recipes.remove(<enderio:item_dark_steel_boots>);
recipes.addShaped(<enderio:item_dark_steel_boots>, [[<enderio:block_alloy:6>,null,<enderio:block_alloy:6>],[<thermalfoundation:storage_alloy:7>,<minecraft:diamond_boots>,<thermalfoundation:storage_alloy:7>]]);

# Blank Dark Steel Upgrade
# recipe in enderio/recipes/user/user_recipes.xml

# Dark Bow
recipes.remove(<enderio:item_dark_steel_bow>);
recipes.addShaped(<enderio:item_dark_steel_bow>, [[<enderio:item_alloy_ingot:6>,<enderio:item_material:8>,<minecraft:string>],[<enderio:item_material:45>,null,<minecraft:string>],[<enderio:item_alloy_ingot:6>,<enderio:item_material:8>,<minecraft:string>]]);

# Ender Helm
recipes.remove(<enderio:item_end_steel_helmet>);
recipes.addShaped(<enderio:item_end_steel_helmet>, [[<enderio:block_alloy:8>,<enderio:item_material:56>,<enderio:block_alloy:8>],[<enderio:item_alloy_ingot:8>,<enderio:item_dark_steel_helmet>,<enderio:item_alloy_ingot:8>]]);

# Ender Plate
recipes.remove(<enderio:item_end_steel_chestplate>);
recipes.addShaped(<enderio:item_end_steel_chestplate>, [[<enderio:block_alloy:8>,<enderio:item_material:56>,<enderio:block_alloy:8>],[<enderio:item_alloy_ingot:8>,<enderio:item_dark_steel_chestplate>,<enderio:item_alloy_ingot:8>],[<enderio:block_alloy:8>,<enderio:item_alloy_ingot:8>,<enderio:block_alloy:8>]]);

# Ender Leggings
recipes.remove(<enderio:item_end_steel_leggings>);
recipes.addShaped(<enderio:item_end_steel_leggings>, [[<enderio:block_alloy:8>,<enderio:item_material:56>,<enderio:block_alloy:8>],[<enderio:item_alloy_ingot:8>,<enderio:item_dark_steel_leggings>,<enderio:item_alloy_ingot:8>],[<enderio:item_alloy_ingot:8>,null,<enderio:item_alloy_ingot:8>]]);

# Ender Boots
recipes.remove(<enderio:item_end_steel_boots>);
recipes.addShaped(<enderio:item_end_steel_boots>, [[<enderio:item_alloy_ingot:8>,<enderio:item_material:56>,<enderio:item_alloy_ingot:8>],[<enderio:block_alloy:8>,<enderio:item_dark_steel_boots>,<enderio:block_alloy:8>]]);

# Soul Vial
recipes.remove(<enderio:item_soul_vial>);
recipes.addShaped(<enderio:item_soul_vial>, [[<ore:fusedQuartz>,<enderio:block_alloy:7>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<enderio:item_material:41>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<ore:fusedQuartz>,<ore:fusedQuartz>]]);
<enderio:item_soul_vial>.maxStackSize = 64;

# Dark Steel Upgrade "Elytra"
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra"}));
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra"}), [<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"}), <minecraft:elytra>]);

# Dark Steel Upgrade "Travel"
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"}));
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"}), [<enderio:item_dark_steel_upgrade>, <enderio:item_travel_staff>]);

# Simple Machine Parts
recipes.remove(<enderio:item_material:69>);
recipes.addShaped(<enderio:item_material:69> * 8, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<enderio:item_material>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>]]);

# Machine Parts
recipes.remove(<enderio:item_material:2>);
recipes.addShaped(<enderio:item_material:2> * 8, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<enderio:item_material:1>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>]]);

# Enhanced Machine Parts
recipes.remove(<enderio:item_material:68>);
recipes.addShaped(<enderio:item_material:68> * 8, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<enderio:item_material:54>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>]]);

# Crystalline Alloy Ingot
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:1>, <enderio:item_alloy_endergy_ingot:6>, null, 120, 512, [<enderio:item_material:36>, <contenttweaker:ingot_of_elevation>], "Alloying");

# Stellar Alloy Ingot
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:3>, <enderio:item_alloy_endergy_ingot:1>, null, 400, 512, [<contenttweaker:crystalline_brown_slime_ingot>, <botania:manaresource:5>], "Alloying");

# Crystalline Capacitor
recipes.remove(<enderio:item_capacitor_crystalline>);
recipes.addShaped(<enderio:item_capacitor_crystalline>, [[null,<enderio:item_alloy_endergy_ingot:1>,null],[<minecraft:sea_lantern>,<enderio:item_alloy_endergy_ingot:1>,<minecraft:sea_lantern>],[<enderio:item_basic_capacitor:2>,null,<enderio:item_basic_capacitor:2>]]);
recipes.addShaped(<enderio:item_capacitor_crystalline>, [[null,<enderio:item_alloy_endergy_ingot:1>,null],[<minecraft:sea_lantern>,<enderio:item_alloy_endergy_ingot:1>,<minecraft:sea_lantern>],[<enderio:item_capacitor_vivid>,null,<enderio:item_capacitor_vivid>]]);

# Melodic Capacitor
recipes.remove(<enderio:item_capacitor_melodic>);
recipes.addShaped(<enderio:item_capacitor_melodic>, [[null,<enderio:item_alloy_endergy_ingot:2>,null],[<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_endergy_ingot:2>,<simplyjetpacks:metaitemmods:12>],[<enderio:item_capacitor_crystalline>,null,<enderio:item_capacitor_crystalline>]]);

# Stellar Capacitor
recipes.remove(<enderio:item_capacitor_stellar>);
recipes.addShaped(<enderio:item_capacitor_stellar>, [[null,<enderio:item_alloy_endergy_ingot:3>,null],[<enderio:item_alloy_endergy_ingot:3>,<minecraft:shulker_shell>,<enderio:item_alloy_endergy_ingot:3>],[<enderio:item_capacitor_melodic>,null,<enderio:item_capacitor_melodic>]]);

# Wireless Charger
recipes.remove(<enderio:block_wireless_charger>);
recipes.addShaped(<enderio:block_wireless_charger>, [[<enderio:block_alloy:6>,<enderio:item_capacitor_crystalline>,<enderio:block_alloy:6>],[<enderio:item_capacitor_crystalline>,<enderio:item_material:44>,<enderio:item_capacitor_crystalline>],[<enderio:block_alloy:6>,<enderio:item_capacitor_crystalline>,<enderio:block_alloy:6>]]);

# Travel Anchor
recipes.remove(<enderio:block_travel_anchor>);
recipes.addShaped(<enderio:block_travel_anchor>, [[<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_endergy_ingot:1>,<simplyjetpacks:metaitemmods:12>],[<enderio:item_alloy_endergy_ingot:1>,<enderio:item_material:44>,<enderio:item_alloy_endergy_ingot:1>],[<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_endergy_ingot:1>,<simplyjetpacks:metaitemmods:12>]]);

# Infinity Rod
recipes.remove(<enderio:item_material:71>);
recipes.addShaped(<enderio:item_material:71>, [[null,<simplyjetpacks:metaitemmods:12>,<enderio:item_material:20>],[<simplyjetpacks:metaitemmods:12>,<enderio:item_material:20>,<simplyjetpacks:metaitemmods:12>],[<enderio:item_material:20>,<simplyjetpacks:metaitemmods:12>,null]]);

# Staff of Travelling
recipes.remove(<enderio:item_travel_staff>);
recipes.addShapedMirrored(<enderio:item_travel_staff>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 0}}), [[null,null,<enderio:item_material:18>],[null,<enderio:item_material:71>,null],[<enderio:item_material:71>,null,null]]);

# Telepad Block
recipes.remove(<enderio:block_tele_pad>);
recipes.addShaped(<enderio:block_tele_pad>, [[<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>],[<quantumflux:craftingpiece:5>,<enderio:block_travel_anchor>,<quantumflux:craftingpiece:5>],[<enderio:item_material:73>,<enderio:item_material:15>,<enderio:item_material:73>]]);

# Dimensional Tranciever
recipes.remove(<enderio:block_transceiver>);
recipes.addShaped(<enderio:block_transceiver>, [[<simplyjetpacks:metaitemmods:12>,<enderio:item_material:44>,<simplyjetpacks:metaitemmods:12>],[<enderio:item_material:18>,<actuallyadditions:block_misc:8>,<enderio:item_material:18>],[<simplyjetpacks:metaitemmods:12>,<enderio:item_capacitor_melodic>,<simplyjetpacks:metaitemmods:12>]]);

# Dialing Device
recipes.remove(<enderio:block_dialing_device>);
recipes.addShaped(<enderio:block_dialing_device>, [[null,<enderio:item_material:43>,null],[<enderio:item_alloy_ingot:6>,<enderio:block_tele_pad>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<enderio:item_capacitor_crystalline>,<enderio:item_alloy_ingot:6>]]);

# Crystalline Energy Conduit
recipes.remove(<enderio:item_endergy_conduit:8>);
recipes.addShaped(<enderio:item_endergy_conduit:8> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:1>,<enderio:item_power_conduit:2>,<enderio:item_alloy_endergy_ingot:1>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:8> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:1>,<enderio:item_endergy_conduit:7>,<enderio:item_alloy_endergy_ingot:1>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Crystalline Pink Slime Energy Coinduit
recipes.remove(<enderio:item_endergy_conduit:9>);
recipes.addShaped(<enderio:item_endergy_conduit:9> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:4>,<enderio:item_endergy_conduit:8>,<enderio:item_alloy_endergy_ingot:4>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Melodic Energy Coinduit
recipes.remove(<enderio:item_endergy_conduit:10>);
recipes.addShaped(<enderio:item_endergy_conduit:10> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:2>,<enderio:item_endergy_conduit:9>,<enderio:item_alloy_endergy_ingot:2>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Stellar Energy Coinduit
recipes.remove(<enderio:item_endergy_conduit:11>);
recipes.addShaped(<enderio:item_endergy_conduit:11> * 6, [[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:3>,<enderio:item_endergy_conduit:10>,<enderio:item_alloy_endergy_ingot:3>],[<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

# Wireless Energy Transmitter Dish Assembly
recipes.remove(<enderio:item_material:65>);
recipes.addShaped(<enderio:item_material:65>, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<quantumflux:craftingpiece:5>,<enderio:item_capacitor_melodic>,<quantumflux:craftingpiece:5>],[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>]]);

# Wireless Charging Antenna
recipes.remove(<enderio:block_normal_wireless_charger>);
recipes.addShaped(<enderio:block_normal_wireless_charger>, [[<enderio:item_material:65>,<enderio:item_material:44>,<enderio:item_material:65>],[<enderio:item_material:65>,<enderio:block_wireless_charger>,<enderio:item_material:65>],[<enderio:item_alloy_ingot>,<enderio:item_material:18>,<enderio:item_alloy_ingot>]]);

# Enhanced Wireless Charging Antenna
recipes.remove(<enderio:block_enhanced_wireless_charger>);
recipes.addShaped(<enderio:block_enhanced_wireless_charger>, [[<enderio:item_material:65>,<enderio:item_material:44>,<enderio:item_material:65>],[<enderio:block_wireless_charger_extension>,<enderio:block_normal_wireless_charger>,<enderio:block_wireless_charger_extension>],[<enderio:item_capacitor_melodic>,<enderio:item_material:18>,<enderio:item_capacitor_melodic>]]);

# Wireless Charging Extension
recipes.remove(<enderio:block_wireless_charger_extension>);
recipes.addShaped(<enderio:block_wireless_charger_extension>, [[null,<enderio:item_material:65>,null],[<enderio:item_material:65>,<enderio:item_material:44>,<enderio:item_material:65>],[null,<enderio:item_material:65>,null]]);

# Rod of Return
recipes.remove(<enderio:item_rod_of_return>);
recipes.addShapedMirrored(<enderio:item_rod_of_return>, [[null,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_material:16>],[null,<enderio:item_material:71>,<enderio:item_alloy_endergy_ingot:1>],[<enderio:item_material:71>,null,null]]);

# Coordiante Selector
recipes.remove(<enderio:item_coord_selector>);
recipes.addShaped(<enderio:item_coord_selector>, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_endergy_ingot:1>,<quantumflux:craftingpiece:5>,<enderio:item_alloy_endergy_ingot:1>],[null,<enderio:item_alloy_ingot>,null]]);

# Powered Spawner
recipes.remove(<enderio:block_powered_spawner>);
recipes.addShaped(<enderio:block_powered_spawner>, [[<enderio:block_alloy:7>,<enderio:item_material:18>,<enderio:block_alloy:7>],[<simplyjetpacks:metaitemmods:24>,<rftools:spawner>,<simplyjetpacks:metaitemmods:24>],[<simplyjetpacks:metaitemmods:11>,<enderio:block_franken_zombie_generator>,<simplyjetpacks:metaitemmods:11>]]);

# Removing Iron Alloy Ingot, Nugget & Block, and related recipes
recipes.remove(<enderio:item_alloy_ingot:9>);
recipes.remove(<enderio:block_alloy:9>);
recipes.remove(<enderio:item_alloy_nugget:9>);
recipes.remove(<enderio:item_alloy_ball:9>);
recipes.remove(<enderio:block_electric_light:2>);
recipes.addShaped(<enderio:block_electric_light:2>, [[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],[<minecraft:iron_ingot>,<ore:glowstone>,<minecraft:iron_ingot>]]);
recipes.remove(<enderio:block_exit_rail>);
recipes.addShaped(<enderio:block_exit_rail>, [[<minecraft:iron_ingot>,<minecraft:piston>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:stone_pressure_plate>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:redstone_torch>,<minecraft:iron_ingot>]]);
recipes.remove(<enderio:item_dark_steel_shield>);
recipes.addShaped(<enderio:item_dark_steel_shield>, [[<enderio:item_alloy_ingot:6>,<minecraft:iron_ingot>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,null,<enderio:item_alloy_ingot:6>],[null,<enderio:item_alloy_ingot:6>,null]]);

# Organic Black Dye
#EIOAlloySmelter.removeRecipe(<enderio:item_material:50>);
#EIOAlloySmelter.addRecipe(<enderio:item_material:50> * 2, [<ore:allCoalDusts> * 6, <ore:slimeball>, <minecraft:coal:*>], 2000);
#EIOAlloySmelter.addRecipe(<enderio:item_material:50>, [<ore:allCoalDusts> * 3, <minecraft:egg>, <minecraft:coal:*>], 1500);
# recipe in config/enderio/recipes/user/user_recipes.xml

# Life Stealing Enchantment in the Enchanter
mods.enderio.Enchanter.removeRecipe(<enchantment:evilcraft:life_stealing>);
#mods.enderio.Enchanter.addRecipe(<enchantment:evilcraft:life_stealing>, <evilcraft:dark_power_gem>, 4, 12);
# wish this didn't crash my game :(

# Arrow of Decay
recipes.remove(<minecraft:tipped_arrow>.withTag({Potion: "enderio:withering"}));
recipes.addShaped(<minecraft:tipped_arrow>.withTag({Potion: "enderio:withering"}) * 8, [[<minecraft:arrow>,<minecraft:arrow>,<minecraft:arrow>],[<minecraft:arrow>,<minecraft:lingering_potion>.withTag({Potion: "cofhcore:wither"}),<minecraft:arrow>],[<minecraft:arrow>,<minecraft:arrow>,<minecraft:arrow>]]);

# Nutritious Stick
mods.thermalexpansion.Transposer.addFillRecipe(<enderio:item_material:8>, <minecraft:stick>, <liquid:nutrient_distillation> * 500, 3000);

# Dark Shears
recipes.remove(<enderio:item_dark_steel_shears>);
recipes.addShaped(<enderio:item_dark_steel_shears>, [[null,<enderio:item_alloy_ingot:6>,null],[<ore:plankWood>,<minecraft:string>,<enderio:item_alloy_ingot:6>],[<immersiveengineering:material:1>,<ore:plankWood>,null]]);

# Stellar Helmet
recipes.remove(<enderio:item_stellar_alloy_helmet>);
recipes.addShaped(<enderio:item_stellar_alloy_helmet>, [[<enderio:item_alloy_endergy_ingot:3>,<enderio:item_end_steel_helmet>,<enderio:item_alloy_endergy_ingot:3>],[<enderio:item_alloy_endergy_ingot:3>,<bewitchment:heaven_extract>.noReturn(),<enderio:item_alloy_endergy_ingot:3>]]);

# Stellar Chestplate
recipes.remove(<enderio:item_stellar_alloy_chestplate>);
recipes.addShaped(<enderio:item_stellar_alloy_chestplate>, [[<enderio:item_alloy_endergy_ingot:3>,<bewitchment:heaven_extract>.noReturn(),<enderio:item_alloy_endergy_ingot:3>],[<enderio:item_alloy_endergy_ingot:3>,<enderio:item_end_steel_chestplate>,<enderio:item_alloy_endergy_ingot:3>],[<enderio:item_alloy_endergy_ingot:3>,<enderio:item_alloy_endergy_ingot:3>,<enderio:item_alloy_endergy_ingot:3>]]);

# Stellar Leggings
recipes.remove(<enderio:item_stellar_alloy_leggings>);
recipes.addShaped(<enderio:item_stellar_alloy_leggings>, [[<enderio:item_alloy_endergy_ingot:3>,<enderio:item_end_steel_leggings>,<enderio:item_alloy_endergy_ingot:3>],[<enderio:item_alloy_endergy_ingot:3>,<bewitchment:heaven_extract>.noReturn(),<enderio:item_alloy_endergy_ingot:3>],[<enderio:item_alloy_endergy_ingot:3>,null,<enderio:item_alloy_endergy_ingot:3>]]);

# Stellar Booots
recipes.remove(<enderio:item_stellar_alloy_boots>);
recipes.addShaped(<enderio:item_stellar_alloy_boots>, [[<enderio:item_alloy_endergy_ingot:3>,<bewitchment:heaven_extract>.noReturn(),<enderio:item_alloy_endergy_ingot:3>],[<enderio:item_alloy_endergy_ingot:3>,<enderio:item_end_steel_boots>,<enderio:item_alloy_endergy_ingot:3>]]);

# Creative Capacitor Bank
mods.extendedcrafting.TableCrafting.addShaped(<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}),
[[<enderio:block_alloy:6>, <enderio:block_alloy:6>, <solarflux:solar_panel_draconic>, <enderio:block_alloy:6>, <enderio:block_alloy:6>],
[<enderio:block_alloy:6>, <enderio:block_cap_bank:3>, <enderio:item_capacitor_stellar>, <enderio:block_cap_bank:3>, <enderio:block_alloy:6>],
[<enderio:item_material:44>, <enderio:item_capacitor_stellar>, <quantumflux:quibitcluster>, <enderio:item_capacitor_stellar>, <enderio:item_material:44>],
[<enderio:block_alloy:6>, <enderio:block_cap_bank:3>, <enderio:item_capacitor_stellar>, <enderio:block_cap_bank:3>, <enderio:block_alloy:6>],
[<enderio:block_alloy:6>, <enderio:block_alloy:6>, <ore:skullSentientEnder>, <enderio:block_alloy:6>, <enderio:block_alloy:6>]]);

# Creative Buffer
mods.extendedcrafting.TableCrafting.addShaped(<enderio:block_buffer:3>,
[[<enderio:block_alloy:6>, <galacticraftcore:basic_item:12>, <galacticraftcore:basic_item:12>, <galacticraftcore:basic_item:12>, <enderio:block_alloy:6>],
[<galacticraftcore:basic_item:12>, <enderio:block_buffer:2>, <enderio:block_buffer:2>, <enderio:block_buffer:2>, <galacticraftcore:basic_item:12>],
[<galacticraftcore:basic_item:12>, <enderio:block_buffer:2>, <mekanism:basicblock:6>.withTag({tier: 4}), <enderio:block_buffer:2>, <galacticraftcore:basic_item:12>],
[<galacticraftcore:basic_item:12>, <enderio:block_buffer:2>, <enderio:block_buffer:2>, <enderio:block_buffer:2>, <galacticraftcore:basic_item:12>],
[<enderio:block_alloy:6>, <galacticraftcore:basic_item:12>, <galacticraftcore:basic_item:12>, <galacticraftcore:basic_item:12>, <enderio:block_alloy:6>]]);

print("ENDING EnderIO.zs");
