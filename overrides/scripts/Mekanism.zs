# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

print("STARTING Mekanism.zs");

# Steel Casing
recipes.remove(<mekanism:basicblock:8>);
recipes.addShaped(<mekanism:basicblock:8>, [[<thermalfoundation:material:352>,<immersiveengineering:material:2>,<thermalfoundation:material:352>],[<immersiveengineering:material:2>,<contenttweaker:energized_osmium_ingot>,<immersiveengineering:material:2>],[<thermalfoundation:material:352>,<immersiveengineering:material:2>,<thermalfoundation:material:352>]]);

# Metallurgic Infuser
recipes.remove(<mekanism:machineblock:8>);
recipes.addShapedMirrored(<mekanism:machineblock:8>, [[<immersiveengineering:sheetmetal:8>,<minecraft:furnace>,<thermalfoundation:material:352>],[<immersiveengineering:sheetmetal:8>,<mekanism:basicblock:8>,<thermalfoundation:material:352>],[<immersiveengineering:sheetmetal:8>,<minecraft:furnace>,<thermalfoundation:material:352>]]);

# Enrichment Chamber
recipes.remove(<mekanism:machineblock>);
recipes.addShaped(<mekanism:machineblock>, [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<appliedenergistics2:quartz_growth_accelerator>,<mekanism:basicblock:8>,<appliedenergistics2:quartz_growth_accelerator>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Crusher
recipes.remove(<mekanism:machineblock:3>);
recipes.addShaped(<mekanism:machineblock:3>, [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<betternether:cincinnasite_forged>,<mekanism:basicblock:8>,<betternether:cincinnasite_forged>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Energized Smelter
recipes.remove(<mekanism:machineblock:10>);
recipes.addShaped(<mekanism:machineblock:10>, [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<minecraft:furnace>,<mekanism:basicblock:8>,<minecraft:furnace>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Advanced Control Circuit
recipes.remove(<mekanism:controlcircuit:1>);
recipes.addShaped(<mekanism:controlcircuit:1>, [[<ore:ingotEnergeticAlloy>,<mekanism:enrichedalloy>,<ore:ingotEnergeticAlloy>],[<mekanism:enrichedalloy>,<mekanism:controlcircuit>,<mekanism:enrichedalloy>],[<ore:ingotEnergeticAlloy>,<mekanism:enrichedalloy>,<ore:ingotEnergeticAlloy>]]);

# Osmium Compressor
recipes.remove(<mekanism:machineblock:1>);
recipes.addShaped(<mekanism:machineblock:1>, [[<contenttweaker:enriched_gum>,<mekanism:controlcircuit:1>,<contenttweaker:enriched_gum>],[<minecraft:bucket>,<mekanism:basicblock:8>,<minecraft:bucket>],[<contenttweaker:enriched_gum>,<mekanism:controlcircuit:1>,<contenttweaker:enriched_gum>]]);

# Refined Obsidian only in Osmium Compressor, not in the Arc Furnace
mods.immersiveengineering.ArcFurnace.removeRecipe(<mekanism:ingot:0>);

# Precision Sawmill
recipes.remove(<mekanism:machineblock2:5>);
recipes.addShaped(<mekanism:machineblock2:5>, [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<chiselsandbits:bitsaw_diamond:0>.noReturn(),<mekanism:basicblock:8>,<chiselsandbits:bitsaw_diamond:0>.noReturn()],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Basic Enriching Factory
recipes.remove(<mekanism:machineblock:5>.withTag({recipeType: 1}));
recipes.addShaped(<mekanism:machineblock:5>.withTag({recipeType: 1}), [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<mekanism:machineblock>,<contenttweaker:enriched_gum>,<mekanism:machineblock>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Basic Smelting Factory
recipes.remove(<mekanism:machineblock:5>.withTag({recipeType: 0}));
recipes.addShaped(<mekanism:machineblock:5>.withTag({recipeType: 0}), [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<mekanism:machineblock:10>,<contenttweaker:enriched_gum>,<mekanism:machineblock:10>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Basic Crushing Factory
recipes.remove(<mekanism:machineblock:5>.withTag({recipeType: 2}));
recipes.addShaped(<mekanism:machineblock:5>.withTag({recipeType: 2}), [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<mekanism:machineblock:3>,<contenttweaker:enriched_gum>,<mekanism:machineblock:3>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Basic Compressing Factory
recipes.remove(<mekanism:machineblock:5>.withTag({recipeType: 3}));
recipes.addShaped(<mekanism:machineblock:5>.withTag({recipeType: 3}), [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<mekanism:machineblock:1>,<contenttweaker:enriched_gum>,<mekanism:machineblock:1>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Basic Infusing Factory
recipes.remove(<mekanism:machineblock:5>.withTag({recipeType: 7}));
recipes.addShaped(<mekanism:machineblock:5>.withTag({recipeType: 7}), [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<mekanism:machineblock:8>,<contenttweaker:enriched_gum>,<mekanism:machineblock:8>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Basic Sawing Factory
recipes.remove(<mekanism:machineblock:5>.withTag({recipeType: 8}));
recipes.addShaped(<mekanism:machineblock:5>.withTag({recipeType: 8}), [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<mekanism:machineblock2:5>,<contenttweaker:enriched_gum>,<mekanism:machineblock2:5>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Electric Pump
recipes.remove(<mekanism:machineblock:12>);
recipes.addShaped(<mekanism:machineblock:12>, [[null,<mekanism:controlcircuit:1>,null],[<minecraft:bucket>,<mekanism:basicblock:8>,<minecraft:bucket>],[<thermalfoundation:material:352>,<immersiveengineering:metal_device1:6>,<thermalfoundation:material:352>]]);

# Energy Tablet
recipes.remove(<mekanism:energytablet>);
recipes.addShaped(<mekanism:energytablet>, [[<thermalfoundation:material:160>,<ore:ingotOsgloglas>,<thermalfoundation:material:160>],[<mekanism:enrichedalloy>,<ore:ingotOsgloglas>,<mekanism:enrichedalloy>],[<thermalfoundation:material:160>,<ore:ingotOsgloglas>,<thermalfoundation:material:160>]]);

# Chargepad
recipes.remove(<mekanism:machineblock:14>);
recipes.addShaped(<mekanism:machineblock:14>, [[<minecraft:stone_pressure_plate>,<immersiveengineering:metal_device1:5>,<minecraft:stone_pressure_plate>],[<thermalfoundation:material:160>,<mekanism:energytablet>,<thermalfoundation:material:160>]]);

# Logistical Sorter
recipes.remove(<mekanism:machineblock:15>);
recipes.addShaped(<mekanism:machineblock:15>, [[<thermalfoundation:material:352>,<mekanism:controlcircuit>,<thermalfoundation:material:352>],[<minecraft:piston>,<ore:ingotOsgloglas>,<minecraft:piston>],[<thermalfoundation:material:352>,<mekanism:controlcircuit>,<thermalfoundation:material:352>]]);

# Elite Control Circuit
recipes.remove(<mekanism:controlcircuit:2>);
recipes.addShaped(<mekanism:controlcircuit:2>, [[<ore:ingotEnergeticSilver>,<mekanism:reinforcedalloy>,<ore:ingotEnergeticSilver>],[<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>],[<ore:ingotEnergeticSilver>,<mekanism:reinforcedalloy>,<ore:ingotEnergeticSilver>]]);

# Ultimate Control Circuit
recipes.remove(<mekanism:controlcircuit:3>);
recipes.addShaped(<mekanism:controlcircuit:3>, [[<extrautils2:ingredients:3>,<mekanism:atomicalloy>,<extrautils2:ingredients:3>],[<mekanism:atomicalloy>,<mekanism:controlcircuit:2>,<mekanism:atomicalloy>],[<extrautils2:ingredients:3>,<mekanism:atomicalloy>,<extrautils2:ingredients:3>]]);

# Basic Logistical Transporter
recipes.remove(<mekanism:transmitter:3>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:3>.withTag({tier: 0}) * 6, [[<immersiveengineering:material:2>,<ore:ingotOsgloglas>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<mekanism:controlcircuit>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<ore:ingotOsgloglas>,<immersiveengineering:material:2>]]);

# Advanced Logistical Transporter
recipes.remove(<mekanism:transmitter:3>.withTag({tier: 1}));
recipes.addShaped(<mekanism:transmitter:3>.withTag({tier: 1}) * 3, [[<immersiveengineering:material:2>,<mekanism:controlcircuit:1>,<immersiveengineering:material:2>],[<mekanism:transmitter:3>.withTag({tier: 0}),<mekanism:transmitter:3>.withTag({tier: 0}),<mekanism:transmitter:3>.withTag({tier: 0})],[<immersiveengineering:material:2>,<mekanism:controlcircuit:1>,<immersiveengineering:material:2>]]);

# Basic Universal Cable
recipes.remove(<mekanism:transmitter>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter>.withTag({tier: 0}) * 6, [[<immersiveengineering:material:2>,<minecraft:redstone>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<contenttweaker:energized_osmium_ingot>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<minecraft:redstone>,<immersiveengineering:material:2>]]);

# Advanced Universal Cable
recipes.remove(<mekanism:transmitter>.withTag({tier: 1}));
recipes.addShaped(<mekanism:transmitter>.withTag({tier: 1}) * 3, [[<minecraft:redstone>,<ore:ingotRedAlloy>,<minecraft:redstone>],[<mekanism:transmitter>.withTag({tier: 0}),<mekanism:transmitter>.withTag({tier: 0}),<mekanism:transmitter>.withTag({tier: 0})],[<minecraft:redstone>,<ore:ingotRedAlloy>,<minecraft:redstone>]]);

# Elite Universal Cable
recipes.remove(<mekanism:transmitter>.withTag({tier: 2}));
recipes.addShaped(<mekanism:transmitter>.withTag({tier: 2}) * 3, [[<ore:ingotRedAlloy>,<mekanism:reinforcedalloy>,<ore:ingotRedAlloy>],[<mekanism:transmitter>.withTag({tier: 1}),<mekanism:transmitter>.withTag({tier: 1}),<mekanism:transmitter>.withTag({tier: 1})],[<ore:ingotRedAlloy>,<mekanism:reinforcedalloy>,<ore:ingotRedAlloy>]]);

# Ultimate Universal Cable
recipes.remove(<mekanism:transmitter>.withTag({tier: 3}));
recipes.addShaped(<mekanism:transmitter>.withTag({tier: 3}) * 3, [[<ore:ingotRedAlloy>,<mekanism:atomicalloy>,<ore:ingotRedAlloy>],[<mekanism:transmitter>.withTag({tier: 2}),<mekanism:transmitter>.withTag({tier: 2}),<mekanism:transmitter>.withTag({tier: 2})],[<ore:ingotRedAlloy>,<mekanism:atomicalloy>,<ore:ingotRedAlloy>]]);

# Basic Mechanical Pipe
recipes.remove(<mekanism:transmitter:1>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 0}) * 6, [[<immersiveengineering:material:2>,<immersiveengineering:material:18>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<minecraft:bucket>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<immersiveengineering:material:18>,<immersiveengineering:material:2>]]);

# Advanced Mechanical Pipe
recipes.remove(<mekanism:transmitter:1>.withTag({tier: 1}));
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 1}) * 3, [[<immersiveengineering:material:2>,<mekanism:controlcircuit:1>,<immersiveengineering:material:2>],[<mekanism:transmitter:1>.withTag({tier: 0}),<mekanism:transmitter:1>.withTag({tier: 0}),<mekanism:transmitter:1>.withTag({tier: 0})],[<immersiveengineering:material:2>,<mekanism:controlcircuit:1>,<immersiveengineering:material:2>]]);

# Elite Mechanical Pipe
recipes.remove(<mekanism:transmitter:1>.withTag({tier: 2}));
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 2}) * 3, [[<immersiveengineering:material:2>,<mekanism:controlcircuit:2>,<immersiveengineering:material:2>],[<mekanism:transmitter:1>.withTag({tier: 1}),<mekanism:transmitter:1>.withTag({tier: 1}),<mekanism:transmitter:1>.withTag({tier: 1})],[<immersiveengineering:material:2>,<mekanism:controlcircuit:2>,<immersiveengineering:material:2>]]);

# Ultimate Mechanical Pipe
recipes.remove(<mekanism:transmitter:1>.withTag({tier: 3}));
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 3}) * 3, [[<immersiveengineering:material:2>,<mekanism:controlcircuit:3>,<immersiveengineering:material:2>],[<mekanism:transmitter:1>.withTag({tier: 2}),<mekanism:transmitter:1>.withTag({tier: 2}),<mekanism:transmitter:1>.withTag({tier: 2})],[<immersiveengineering:material:2>,<mekanism:controlcircuit:3>,<immersiveengineering:material:2>]]);

# Restrictive Transporter
recipes.remove(<mekanism:transmitter:4>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:4>.withTag({tier: 0}), [[null,<thermalfoundation:material:160>,null],[<minecraft:iron_bars>,<mekanism:transmitter:3>.withTag({tier: 0}),<minecraft:iron_bars>],[null,<thermalfoundation:material:160>,null]]);

# Diversion Transporter
recipes.remove(<mekanism:transmitter:5>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:5>.withTag({tier: 0}), [[null,<minecraft:redstone>,null],[<minecraft:iron_bars>,<mekanism:transmitter:3>.withTag({tier: 0}),<minecraft:iron_bars>],[null,<minecraft:redstone>,null]]);

# Function to upgrade Caches and Strongboxes while keeping their contents, locked state, owner ID, etc.
function thermalUpgrade(input_tag as IData, out as IItemStack, new_level as byte) as IItemStack {
	val new_level_tag = {Level: new_level as byte} as IData;
	val new_tag = input_tag + new_level_tag;
	return out.withTag(new_tag);
}

# Basic Energy Cube
recipes.remove(<mekanism:energycube>.withTag({tier: 0}));
recipes.addShaped("mek_energycube", <mekanism:energycube>.withTag({tier: 0}), [[<ore:ingotOsgloglas>,<mekanism:energytablet>.marked("tablet1"),<ore:ingotOsgloglas>],[<thermalfoundation:material:160>,<immersiveengineering:metal_device0:2>,<thermalfoundation:material:160>],[<ore:ingotOsgloglas>,<mekanism:energytablet>.marked("tablet2"),<ore:ingotOsgloglas>]],
function(out, ins, cInfo) {
	if(ins.tablet1.tag has "mekData") {
		if(ins.tablet2.tag has "mekData") {
			return out.withTag({tier: 0, mekData: {energyStored: ins.tablet1.tag.mekData.energyStored + ins.tablet2.tag.mekData.energyStored}});
		} else {
			return out.withTag({tier: 0, mekData: {energyStored: ins.tablet1.tag.mekData.energyStored}});
		}
	} else {
		if(ins.tablet2.tag has "mekData") {
			return out.withTag({tier: 0, mekData: {energyStored: ins.tablet2.tag.mekData.energyStored}});
		} else {
			return out;
		}
	}
}, null);

# Function to add up current Energy values when upgrading to a higher tier Energy Cube
function mekEnergyCellUpgrade(tag_cube as IData, tag_tablet1 as IData, tag_tablet2 as IData, out as IItemStack, level as int) as IItemStack {
	if(tag_cube has "mekData") {
		if(tag_tablet1 has "mekData") {
			if(tag_tablet2 has "mekData") {
				return out.withTag({tier: level, mekData: {energyStored: tag_cube.mekData.energyStored + tag_tablet1.mekData.energyStored + tag_tablet2.mekData.energyStored}});
			} else {
				return out.withTag({tier: level, mekData: {energyStored: tag_cube.mekData.energyStored + tag_tablet1.mekData.energyStored}});
			}
		} else {
			if(tag_tablet2 has "mekData") {
				return out.withTag({tier: level, mekData: {energyStored: tag_cube.mekData.energyStored + tag_tablet2.mekData.energyStored}});
			} else {
				return out.withTag({tier: level, mekData: {energyStored: tag_cube.mekData.energyStored}});
			}
		}
	} else {
		if(tag_tablet1 has "mekData") {
			if(tag_tablet2 has "mekData") {
				return out.withTag({tier: level, mekData: {energyStored: tag_tablet1.mekData.energyStored + tag_tablet2.mekData.energyStored}});
			} else {
				return out.withTag({tier: level, mekData: {energyStored: tag_tablet1.mekData.energyStored}});
			}
		} else {
			if(tag_tablet2 has "mekData") {
				return out.withTag({tier: level, mekData: {energyStored: tag_tablet2.mekData.energyStored}});
			} else {
				return out.withTag({tier: level});
			}
		}
	}
}

# Advanced Energy Cube
recipes.remove(<mekanism:energycube>.withTag({tier: 1}));
recipes.addShaped("mek_energycube_upgrade1", <mekanism:energycube>.withTag({tier: 1}), [[<ore:ingotEnergeticAlloy>,<mekanism:energytablet>.marked("tablet1"),<ore:ingotEnergeticAlloy>],[<contenttweaker:energized_osmium_ingot>,<mekanism:energycube>.withTag({tier: 0}).marked("cube"),<contenttweaker:energized_osmium_ingot>],[<ore:ingotEnergeticAlloy>,<mekanism:energytablet>.marked("tablet2"),<ore:ingotEnergeticAlloy>]],
    function(out, ins, cInfo) { return mekEnergyCellUpgrade(ins.cube.tag, ins.tablet1.tag, ins.tablet2.tag, out, 1 as int); }, null);


# Elite Energy Cube
recipes.remove(<mekanism:energycube>.withTag({tier: 2}));
recipes.addShaped("mek_energycube_upgrade2", <mekanism:energycube>.withTag({tier: 2}), [[<mekanism:reinforcedalloy>,<mekanism:energytablet>.marked("tablet1"),<mekanism:reinforcedalloy>],[<ore:ingotEnergeticSilver>,<mekanism:energycube>.withTag({tier: 1}).marked("cube"),<ore:ingotEnergeticSilver>],[<mekanism:reinforcedalloy>,<mekanism:energytablet>.marked("tablet2"),<mekanism:reinforcedalloy>]],
    function(out, ins, cInfo) { return mekEnergyCellUpgrade(ins.cube.tag, ins.tablet1.tag, ins.tablet2.tag, out, 2 as int); }, null);

# Ultimate Energy Cube
recipes.remove(<mekanism:energycube>.withTag({tier: 3}));
recipes.addShaped("mek_energycube_upgrade3", <mekanism:energycube>.withTag({tier: 3}), [[<mekanism:atomicalloy>,<mekanism:energytablet>.marked("tablet1"),<mekanism:atomicalloy>],[<mekanism:reinforcedalloy>,<mekanism:energycube>.withTag({tier: 2}).marked("cube"),<mekanism:reinforcedalloy>],[<mekanism:atomicalloy>,<mekanism:energytablet>.marked("tablet2"),<mekanism:atomicalloy>]],
    function(out, ins, cInfo) { return mekEnergyCellUpgrade(ins.cube.tag, ins.tablet1.tag, ins.tablet2.tag, out, 3 as int); }, null);

# Formulaic Assemblicator
recipes.remove(<mekanism:machineblock3:5>);
recipes.addShaped(<mekanism:machineblock3:5>, [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<ore:workbench>,<mekanism:basicblock:8>,<ore:workbench>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Dynamic Tank
recipes.remove(<mekanism:basicblock:9>);
recipes.addShaped(<mekanism:basicblock:9> * 4, [[<immersiveengineering:sheetmetal:8>,<thermalfoundation:material:352>,<immersiveengineering:sheetmetal:8>],[<thermalfoundation:material:352>,<mekanism:enrichedalloy>,<thermalfoundation:material:352>],[<immersiveengineering:sheetmetal:8>,<thermalfoundation:material:352>,<immersiveengineering:sheetmetal:8>]]);

# Structural Glass
recipes.remove(<mekanism:basicblock:10>);
recipes.addShaped(<mekanism:basicblock:10> * 4, [[<immersiveengineering:sheetmetal:8>,<ore:blockGlass>,<immersiveengineering:sheetmetal:8>],[<ore:blockGlass>,<mekanism:enrichedalloy>,<ore:blockGlass>],[<immersiveengineering:sheetmetal:8>,<ore:blockGlass>,<immersiveengineering:sheetmetal:8>]]);

# Dynamic Valve
recipes.remove(<mekanism:basicblock:11>);
recipes.addShaped(<mekanism:basicblock:11>, [[<mekanism:basicblock:9>,<minecraft:bucket>,<mekanism:basicblock:9>],[<minecraft:bucket>,<mekanism:controlcircuit>,<minecraft:bucket>],[<mekanism:basicblock:9>,<minecraft:bucket>,<mekanism:basicblock:9>]]);

# Seismic Reader
recipes.remove(<mekanism:seismicreader>);
recipes.addShaped(<mekanism:seismicreader>, [[<thermalfoundation:material:352>,<mekanism:atomicalloy>,<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<mekanism:energytablet>.marked("tablet"),<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Seismic Vibrator
recipes.remove(<mekanism:machineblock2:9>);
recipes.addShaped(<mekanism:machineblock2:9>, [[<immersiveengineering:material:2>,<mekanism:atomicalloy>,<immersiveengineering:material:2>],[<mekanism:controlcircuit>,<mekanism:basicblock:8>,<mekanism:controlcircuit>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Basic Fluid Tank
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 0}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier: 0}), [[<ore:ingotOsmium>,<thermalfoundation:material:352>,<ore:ingotOsmium>],[<ore:ingotOsmium>,<ore:blockGlass>,<ore:ingotOsmium>],[<ore:ingotOsmium>,<thermalfoundation:material:352>,<ore:ingotOsmium>]]);

# Advanced Fluid Tank
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 1}));
recipes.addShaped("mek_fluidtank_upgrade1", <mekanism:machineblock2:11>.withTag({tier: 1}), [[<mekanism:enrichedalloy>,<thermalfoundation:material:352>,<mekanism:enrichedalloy>],[<immersiveengineering:material:2>,<mekanism:machineblock2:11>.withTag({tier: 0}).marked("tank"),<immersiveengineering:material:2>],[<mekanism:enrichedalloy>,<thermalfoundation:material:352>,<mekanism:enrichedalloy>]],
function(out, ins, cInfo) { 
	if(ins.tank.tag has "mekData") {
		if(ins.tank.tag.mekData has "fluidTank") {
			return out.withTag({tier: 1, mekData: {fluidTank: ins.tank.tag.mekData.fluidTank}});
		} else {
			return out.withTag({tier: 1, mekData: ins.tank.tag.mekData});
		}
	} else {
		return out;
}}, null);

# Elite Fluid Tank
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 2}));
recipes.addShaped("mek_fluidtank_upgrade2", <mekanism:machineblock2:11>.withTag({tier: 2}), [[<mekanism:reinforcedalloy>,<thermalfoundation:material:352>,<mekanism:reinforcedalloy>],[<immersiveengineering:material:2>,<mekanism:machineblock2:11>.withTag({tier: 1}).marked("tank"),<immersiveengineering:material:2>],[<mekanism:reinforcedalloy>,<thermalfoundation:material:352>,<mekanism:reinforcedalloy>]],
function(out, ins, cInfo) { 
	if(ins.tank.tag has "mekData") {
		if(ins.tank.tag.mekData has "fluidTank") {
			return out.withTag({tier: 2, mekData: {fluidTank: ins.tank.tag.mekData.fluidTank}});
		} else {
			return out.withTag({tier: 2, mekData: ins.tank.tag.mekData});
		}
	} else {
		return out;
}}, null);

# Ultimate Fluid Tank
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 3}));
recipes.addShaped("mek_fluidtank_upgrade3", <mekanism:machineblock2:11>.withTag({tier: 3}), [[<mekanism:atomicalloy>,<thermalfoundation:material:352>,<mekanism:atomicalloy>],[<immersiveengineering:material:2>,<mekanism:machineblock2:11>.withTag({tier: 2}).marked("tank"),<immersiveengineering:material:2>],[<mekanism:atomicalloy>,<thermalfoundation:material:352>,<mekanism:atomicalloy>]],
function(out, ins, cInfo) { 
	if(ins.tank.tag has "mekData") {
		if(ins.tank.tag.mekData has "fluidTank") {
			return out.withTag({tier: 3, mekData: {fluidTank: ins.tank.tag.mekData.fluidTank}});
		} else {
			return out.withTag({tier: 3, mekData: ins.tank.tag.mekData});
		}
	} else {
		return out;
}}, null);

# Fluidic Plenisher
recipes.remove(<mekanism:machineblock2:12>);
recipes.addShaped("mek_fluidic_plenisher", <mekanism:machineblock2:12>, [[<thermalfoundation:material:321>,<mekanism:controlcircuit>,<thermalfoundation:material:321>],[<thermalfoundation:material:321>,<mekanism:machineblock:12>.marked("pump"),<thermalfoundation:material:321>],[<thermalfoundation:material:321>,<mekanism:controlcircuit>,<thermalfoundation:material:321>]],
function(out, ins, cInfo) {
	if(ins.pump.tag has "mekData") {
		return out.withTag({mekData: {energyStored: ins.pump.tag.mekData.energyStored}});
	} else {
		return out;
}}, null);

# Security Desk
recipes.remove(<mekanism:basicblock2:9>);
recipes.addShaped(<mekanism:basicblock2:9>, [[<thermalfoundation:material:352>,<ore:blockGlassGreen>,<thermalfoundation:material:352>],[<mekanism:controlcircuit:2>,<mekanism:basicblock:8>,<mekanism:controlcircuit:2>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Speed Upgrade
recipes.remove(<mekanism:speedupgrade>);
recipes.addShaped(<mekanism:speedupgrade>, [[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>],[<mekanism:enrichedalloy>,<ore:dustOsmium>,<mekanism:enrichedalloy>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);
<mekanism:speedupgrade>.maxStackSize = 64;

# Energy Upgrade
recipes.remove(<mekanism:energyupgrade>);
recipes.addShaped(<mekanism:energyupgrade>, [[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>],[<mekanism:enrichedalloy>,<ore:ingotOsgloglas>,<mekanism:enrichedalloy>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);
<mekanism:energyupgrade>.maxStackSize = 64;

# Muffling Upgrade
recipes.remove(<mekanism:mufflingupgrade>);
recipes.addShaped(<mekanism:mufflingupgrade>, [[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>],[<mekanism:enrichedalloy>,<minecraft:noteblock>,<mekanism:enrichedalloy>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);
<mekanism:mufflingupgrade>.maxStackSize = 64;

# Robit
recipes.remove(<mekanism:robit>);
recipes.addShaped("mek_robit", <mekanism:robit>, [[null,<thermalfoundation:material:352>,null],[<ore:ingotOsgloglas>,<mekanism:energycube>.withTag({tier: 0}),<ore:ingotOsgloglas>],[<mekanism:atomicalloy>,<mekanism:machineblock:13>.marked("chest"),<mekanism:atomicalloy>]],
	function(out, ins, cInfo) {
		if(ins.chest.tag has "mekData") {
			if(ins.chest.tag.mekData has "Items") {
				return out.withTag({mekData: {Items: ins.chest.tag.mekData.Items}});
			} else {
				return out;
			}
		} else {
			return out;
		}
	}, null);
<mekanism:robit>.addTooltip(format.red(format.bold("Warning: ")) + format.gray(format.bold("Only the items in the top 3 rows of the input Chest will remain in Robit's inventory!")));

# Electrolytic Core
recipes.remove(<mekanism:electrolyticcore>);
recipes.addShaped(<mekanism:electrolyticcore>, [[<enderio:item_material:68>,null,<enderio:item_material:68>],[<enderio:item_alloy_ingot:3>,<enderio:item_material:44>,<thermalfoundation:material:136>],[<enderio:item_basic_capacitor:2>,<enderio:item_material:68>,<enderio:item_basic_capacitor:2>]]);

# Electrolytic Separator
recipes.remove(<mekanism:machineblock2:4>);
recipes.addShaped(<mekanism:machineblock2:4>, [[<enderio:block_tank:1>,null,<enderio:block_tank:1>],[<enderio:block_tank:1>,<mekanism:electrolyticcore>,<enderio:block_tank:1>],[<enderio:block_alloy:6>,<mekanism:basicblock:8>,<enderio:block_alloy:6>]]);

# Basic Gas Tank
recipes.remove(<mekanism:gastank>);
recipes.addShaped(<mekanism:gastank>.withTag({tier: 0}), [[<enderio:item_alloy_ingot:6>,<contenttweaker:energized_osmium_ingot>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<enderio:block_tank:1>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>]]);

function mekGasTankUpgrade(input_tag as IData, out as IItemStack, level as int) as IItemStack {
	if(input_tag has "mekData") {
		return out.withTag({tier: level, mekData: input_tag.mekData});
	} else {
		return out.withTag({tier: level});
	}
}

# Advanced Gas Tank
recipes.addShaped("mek_gastank_upgrade1", <mekanism:gastank>.withTag({tier: 1}), [[<mekanism:enrichedalloy>,<enderio:item_alloy_ingot:6>,<mekanism:enrichedalloy>],[<enderio:item_alloy_ingot:6>,<mekanism:gastank>.withTag({tier: 0}).marked("tank"),<enderio:item_alloy_ingot:6>],[<mekanism:enrichedalloy>,<enderio:item_alloy_ingot:6>,<mekanism:enrichedalloy>]],
function(out, ins, cInfo) { return mekGasTankUpgrade(ins.tank.tag, out, 1); }, null);

# Elite Gas Tank
recipes.addShaped("mek_gastank_upgrade2", <mekanism:gastank>.withTag({tier: 2}), [[<mekanism:reinforcedalloy>,<enderio:item_alloy_ingot:6>,<mekanism:reinforcedalloy>],[<enderio:item_alloy_ingot:6>,<mekanism:gastank>.withTag({tier: 1}).marked("tank"),<enderio:item_alloy_ingot:6>],[<mekanism:reinforcedalloy>,<enderio:item_alloy_ingot:6>,<mekanism:reinforcedalloy>]],
function(out, ins, cInfo) { return mekGasTankUpgrade(ins.tank.tag, out, 2); }, null);

# Ultimate Gas Tank
recipes.addShaped("mek_gastank_upgrade3", <mekanism:gastank>.withTag({tier: 3}), [[<mekanism:atomicalloy>,<enderio:item_alloy_ingot:6>,<mekanism:atomicalloy>],[<enderio:item_alloy_ingot:6>,<mekanism:gastank>.withTag({tier: 2}).marked("tank"),<enderio:item_alloy_ingot:6>],[<mekanism:atomicalloy>,<enderio:item_alloy_ingot:6>,<mekanism:atomicalloy>]],
function(out, ins, cInfo) { return mekGasTankUpgrade(ins.tank.tag, out, 3); }, null);

# Pressurized Reaction Chamber
recipes.remove(<mekanism:machineblock2:10>);
recipes.addShaped(<mekanism:machineblock2:10>, [[<enderio:item_material:68>,<enderio:item_material:68>,<enderio:item_material:68>],[<enderio:item_material:68>,<mekanism:electrolyticcore>,<enderio:item_material:68>],[<mekanism:gastank>.withTag({tier: 3}),<mekanism:machineblock>,<mekanism:gastank>.withTag({tier: 3})]]);

# Rotary Condensentrator
recipes.remove(<mekanism:machineblock2>);
recipes.addShapedMirrored(<mekanism:machineblock2>, [[<enderio:item_material:68>,<mekanism:controlcircuit:3>,<enderio:item_material:68>],[<mekanism:gastank>.withTag({tier: 3}),<mekanism:electrolyticcore>,<mekanism:machineblock2:11>.withTag({tier: 3})],[<enderio:item_material:68>,<mekanism:controlcircuit:3>,<enderio:item_material:68>]]);

# Basic Pressurized Tube
recipes.remove(<mekanism:transmitter:2>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:2>.withTag({tier: 0}) * 3, [[<immersiveengineering:material:2>,<enderio:item_alloy_ingot:6>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<thermaldynamics:duct_16>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<enderio:item_alloy_ingot:6>,<immersiveengineering:material:2>]]);

# Advanced Pressurized Tube
recipes.remove(<mekanism:transmitter:2>.withTag({tier: 1}));
recipes.addShaped(<mekanism:transmitter:2>.withTag({tier: 1}) * 3, [[<enderio:item_alloy_ingot:6>,<mekanism:enrichedalloy>,<enderio:item_alloy_ingot:6>],[<mekanism:transmitter:2>.withTag({tier: 0}),<mekanism:transmitter:2>.withTag({tier: 0}),<mekanism:transmitter:2>.withTag({tier: 0})],[<enderio:item_alloy_ingot:6>,<mekanism:enrichedalloy>,<enderio:item_alloy_ingot:6>]]);

# Elite Pressurized Tube
recipes.remove(<mekanism:transmitter:2>.withTag({tier: 2}));
recipes.addShaped(<mekanism:transmitter:2>.withTag({tier: 2}) * 3, [[<enderio:item_alloy_ingot:6>,<mekanism:reinforcedalloy>,<enderio:item_alloy_ingot:6>],[<mekanism:transmitter:2>.withTag({tier: 1}),<mekanism:transmitter:2>.withTag({tier: 1}),<mekanism:transmitter:2>.withTag({tier: 1})],[<enderio:item_alloy_ingot:6>,<mekanism:reinforcedalloy>,<enderio:item_alloy_ingot:6>]]);

# Ultimate Pressurized Tube
recipes.remove(<mekanism:transmitter:2>.withTag({tier: 3}));
recipes.addShaped(<mekanism:transmitter:2>.withTag({tier: 3}) * 3, [[<enderio:item_alloy_ingot:6>,<mekanism:atomicalloy>,<enderio:item_alloy_ingot:6>],[<mekanism:transmitter:2>.withTag({tier: 2}),<mekanism:transmitter:2>.withTag({tier: 2}),<mekanism:transmitter:2>.withTag({tier: 2})],[<enderio:item_alloy_ingot:6>,<mekanism:atomicalloy>,<enderio:item_alloy_ingot:6>]]);

# Teleporter
recipes.remove(<mekanism:machineblock:11>);
recipes.addShaped(<mekanism:machineblock:11>, [[<plustic:osgloglasblock>,<enderio:item_material:73>,<plustic:osgloglasblock>],[<enderio:item_material:73>,<enderio:block_travel_anchor>,<enderio:item_material:73>],[<plustic:osgloglasblock>,<enderio:item_material:54>,<plustic:osgloglasblock>]]);

# Teleporter Frame
recipes.remove(<mekanism:basicblock:7>);
recipes.addShaped(<mekanism:basicblock:7> * 3, [[<plustic:osgloglasblock>,<enderio:item_material:73>,<plustic:osgloglasblock>],[<enderio:item_material:73>,<enderio:item_material:54>,<enderio:item_material:73>],[<plustic:osgloglasblock>,<enderio:item_material:73>,<plustic:osgloglasblock>]]);

# Purification Chamber
recipes.remove(<mekanism:machineblock:9>);
recipes.addShaped(<mekanism:machineblock:9>, [[<enderio:item_alloy_ingot:6>,<mekanism:controlcircuit:3>,<enderio:item_alloy_ingot:6>],[<contenttweaker:cosmic_alloy>,<mekanism:machineblock>,<contenttweaker:cosmic_alloy>],[<enderio:block_alloy:6>,<mekanism:controlcircuit:3>,<enderio:block_alloy:6>]]);

# Thermal Evaporation Block
recipes.remove(<mekanism:basicblock2>);
recipes.addShaped(<mekanism:basicblock2> * 4, [[<minecraft:brick_block>,<thermalfoundation:material:320>,<minecraft:brick_block>],[<thermalfoundation:material:320>,<contenttweaker:ingot_of_elevation>,<thermalfoundation:material:320>],[<minecraft:brick_block>,<thermalfoundation:material:320>,<minecraft:brick_block>]]);

# Thermal Evaporation Valve
recipes.remove(<mekanism:basicblock:15>);
recipes.addShaped(<mekanism:basicblock:15>, [[null,<mekanism:basicblock2>,null],[<mekanism:basicblock2>,<contenttweaker:cosmic_alloy>,<mekanism:basicblock2>],[null,<mekanism:basicblock2>,null]]);

# Thermal Evaporation Controller
recipes.remove(<mekanism:basicblock:14>);
recipes.addShaped(<mekanism:basicblock:14>, [[<mekanism:basicblock2>,<mekanism:basicblock2>,<mekanism:basicblock2>],[<quantumflux:craftingpiece:4>,<contenttweaker:cosmic_alloy>,<quantumflux:craftingpiece:4>],[<mekanism:basicblock2>,<mekanism:basicblock2>,<mekanism:basicblock2>]]);

# Induction Casing
recipes.remove(<mekanism:basicblock2:1>);
recipes.addShaped(<mekanism:basicblock2:1> * 4, [[<enderio:item_alloy_ingot>,<plustic:osgloglasingot>,<enderio:item_alloy_ingot>],[<plustic:osgloglasingot>,<contenttweaker:ingot_of_elevation>,<plustic:osgloglasingot>],[<enderio:item_alloy_ingot>,<plustic:osgloglasingot>,<enderio:item_alloy_ingot>]]);

# Induction Port
recipes.remove(<mekanism:basicblock2:2>);
recipes.addShaped(<mekanism:basicblock2:2>, [[null,<mekanism:basicblock2:1>,null],[<mekanism:basicblock2:1>,<contenttweaker:cosmic_alloy>,<mekanism:basicblock2:1>],[null,<mekanism:basicblock2:1>,null]]);

# Chemical Crystallizer
recipes.remove(<mekanism:machineblock2:8>);
recipes.addShaped(<mekanism:machineblock2:8>, [[<enderio:item_alloy_ingot>,<contenttweaker:cosmic_alloy>,<enderio:item_alloy_ingot>],[<mekanism:gastank>.withTag({tier: 3}),<enderio:item_material:54>,<mekanism:gastank>.withTag({tier: 3})],[<mekanism:controlcircuit:3>,<contenttweaker:cosmic_alloy>,<mekanism:controlcircuit:3>]]);

# Chemical Oxidyzer
recipes.remove(<mekanism:machineblock2:1>);
recipes.addShaped(<mekanism:machineblock2:1>, [[<enderio:item_alloy_ingot:6>,<contenttweaker:cosmic_alloy>,<enderio:item_alloy_ingot:6>],[<mekanism:gastank>.withTag({tier: 3}),<enderio:item_material:54>,<mekanism:gastank>.withTag({tier: 3})],[<mekanism:controlcircuit:3>,<contenttweaker:cosmic_alloy>,<mekanism:controlcircuit:3>]]);

# Basic Induction Cell
recipes.remove(<mekanism:basicblock2:3>.withTag({tier: 0}));
recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 0}), [[<alchemistry:ingot:3>,<mekanism:energytablet>,<alchemistry:ingot:3>],[<mekanism:energytablet>,<mekanism:energycube>.withTag({tier: 0}),<mekanism:energytablet>],[<alchemistry:ingot:3>,<mekanism:energytablet>,<alchemistry:ingot:3>]]);

# Basic Induction Provider
recipes.remove(<mekanism:basicblock2:4>.withTag({tier: 0}));
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 0}), [[<alchemistry:ingot:3>,<mekanism:controlcircuit>,<alchemistry:ingot:3>],[<mekanism:controlcircuit>,<mekanism:energycube>.withTag({tier: 0}),<mekanism:controlcircuit>],[<alchemistry:ingot:3>,<mekanism:controlcircuit>,<alchemistry:ingot:3>]]);

# Fuelwood Heater
recipes.remove(<mekanism:machineblock3:6>);
recipes.addShaped(<mekanism:machineblock3:6>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>],[<mekanism:controlcircuit:2>,<actuallyadditions:block_heat_collector>,<mekanism:controlcircuit:2>],[<enderio:item_alloy_ingot:6>,<contenttweaker:cosmic_alloy>,<enderio:item_alloy_ingot:6>]]);

# Resistive Heater
recipes.remove(<mekanism:machineblock3:4>);
recipes.addShaped(<mekanism:machineblock3:4>, [[<enderio:item_alloy_ingot:6>,<mekanism:energytablet>,<enderio:item_alloy_ingot:6>],[<contenttweaker:cosmic_alloy>,<mekanism:machineblock3:6>,<contenttweaker:cosmic_alloy>],[<enderio:item_alloy_ingot:6>,<mekanism:energytablet>,<enderio:item_alloy_ingot:6>]]);

# Boiler Casing
recipes.remove(<mekanism:basicblock2:7>);
recipes.addShaped(<mekanism:basicblock2:7> * 4, [[<enderio:item_alloy_ingot:6>,<alchemistry:ingot:3>,<enderio:item_alloy_ingot:6>],[<alchemistry:ingot:3>,<contenttweaker:ingot_of_elevation>,<alchemistry:ingot:3>],[<enderio:item_alloy_ingot:6>,<alchemistry:ingot:3>,<enderio:item_alloy_ingot:6>]]);

# Boiler Valve
recipes.remove(<mekanism:basicblock2:8>);
recipes.addShaped(<mekanism:basicblock2:8>, [[null,<mekanism:basicblock2:7>,null],[<mekanism:basicblock2:7>,<contenttweaker:cosmic_alloy>,<mekanism:basicblock2:7>],[null,<mekanism:basicblock2:7>,null]]);

# Superheating Element
recipes.remove(<mekanism:basicblock2:5>);
recipes.addShaped(<mekanism:basicblock2:5>, [[<enderio:item_alloy_ingot:7>,<enderio:item_material:68>,<enderio:item_alloy_ingot:7>],[<enderio:item_material:68>,<contenttweaker:cosmic_alloy>,<enderio:item_material:68>],[<enderio:item_alloy_ingot:7>,<enderio:item_material:68>,<enderio:item_alloy_ingot:7>]]);

# Pressure Dispenser
recipes.remove(<mekanism:basicblock2:6>);
recipes.addShaped(<mekanism:basicblock2:6>, [[<enderio:item_alloy_ingot>,<enderio:item_material:68>,<enderio:item_alloy_ingot>],[<enderio:item_material:68>,<contenttweaker:cosmic_alloy>,<enderio:item_material:68>],[<enderio:item_alloy_ingot>,<enderio:item_material:68>,<enderio:item_alloy_ingot>]]);

# Basic Thermodynamic Conductor
recipes.remove(<mekanism:transmitter:6>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:6>.withTag({tier: 0}) * 6, [[<immersiveengineering:material:2>,<enderio:item_alloy_endergy_ingot:6>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<contenttweaker:ingot_of_elevation>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<enderio:item_alloy_endergy_ingot:6>,<immersiveengineering:material:2>]]);

# Advanced Thermodynamic Conductor
recipes.remove(<mekanism:transmitter:6>.withTag({tier: 1}));
recipes.addShaped(<mekanism:transmitter:6>.withTag({tier: 1}) * 3, [[<enderio:item_alloy_endergy_ingot:6>,<mekanism:enrichedalloy>,<enderio:item_alloy_endergy_ingot:6>],[<mekanism:transmitter:6>.withTag({tier: 0}),<mekanism:transmitter:6>.withTag({tier: 0}),<mekanism:transmitter:6>.withTag({tier: 0})],[<enderio:item_alloy_endergy_ingot:6>,<mekanism:enrichedalloy>,<enderio:item_alloy_endergy_ingot:6>]]);

# Elite Thermodynamic Conductor
recipes.remove(<mekanism:transmitter:6>.withTag({tier: 2}));
recipes.addShaped(<mekanism:transmitter:6>.withTag({tier: 2}) * 3, [[<enderio:item_alloy_endergy_ingot:6>,<mekanism:reinforcedalloy>,<enderio:item_alloy_endergy_ingot:6>],[<mekanism:transmitter:6>.withTag({tier: 1}),<mekanism:transmitter:6>.withTag({tier: 1}),<mekanism:transmitter:6>.withTag({tier: 1})],[<enderio:item_alloy_endergy_ingot:6>,<mekanism:reinforcedalloy>,<enderio:item_alloy_endergy_ingot:6>]]);

# Ultimate Thermodynamic Conductor
recipes.remove(<mekanism:transmitter:6>.withTag({tier: 3}));
recipes.addShaped(<mekanism:transmitter:6>.withTag({tier: 3}) * 3, [[<enderio:item_alloy_endergy_ingot:6>,<mekanism:atomicalloy>,<enderio:item_alloy_endergy_ingot:6>],[<mekanism:transmitter:6>.withTag({tier: 2}),<mekanism:transmitter:6>.withTag({tier: 2}),<mekanism:transmitter:6>.withTag({tier: 2})],[<enderio:item_alloy_endergy_ingot:6>,<mekanism:atomicalloy>,<enderio:item_alloy_endergy_ingot:6>]]);

# Teleportation Core
recipes.remove(<mekanism:teleportationcore>);
recipes.addShaped(<mekanism:teleportationcore> * 2, [[<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>],[<enderio:item_material:18>,<contenttweaker:cosmic_alloy>,<enderio:item_material:18>],[<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>]]);

# Portable Teleporter
recipes.remove(<mekanism:portableteleporter>);
recipes.addShaped(<mekanism:portableteleporter>, [[<enderio:item_alloy_ingot>,<rftools:screen>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<mekanism:teleportationcore>,<enderio:item_alloy_ingot>],[null,<enderio:block_travel_anchor>,null]]);

# Elite Logistical Transporter
recipes.remove(<mekanism:transmitter:3>.withTag({tier: 2}));
recipes.addShaped(<mekanism:transmitter:3>.withTag({tier: 2}) * 3, [[<mekanism:controlcircuit:2>,<contenttweaker:cosmic_alloy>,<mekanism:controlcircuit:2>],[<mekanism:transmitter:3>.withTag({tier: 1}),<mekanism:transmitter:3>.withTag({tier: 1}),<mekanism:transmitter:3>.withTag({tier: 1})],[<mekanism:controlcircuit:2>,<contenttweaker:cosmic_alloy>,<mekanism:controlcircuit:2>]]);

# Ultimate Logistical Transporter
recipes.remove(<mekanism:transmitter:3>.withTag({tier: 3}));
recipes.addShaped(<mekanism:transmitter:3>.withTag({tier: 3}) * 3, [[<mekanism:controlcircuit:3>,<contenttweaker:cosmic_alloy>,<mekanism:controlcircuit:3>],[<mekanism:transmitter:3>.withTag({tier: 2}),<mekanism:transmitter:3>.withTag({tier: 2}),<mekanism:transmitter:3>.withTag({tier: 2})],[<mekanism:controlcircuit:3>,<contenttweaker:cosmic_alloy>,<mekanism:controlcircuit:3>]]);

# Gas Upgrade
recipes.remove(<mekanism:gasupgrade>);
recipes.addShaped(<mekanism:gasupgrade>, [[<enderio:item_alloy_ingot>,<mekanism:speedupgrade>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<thermalfoundation:material:136>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:1>]]);
<mekanism:gasupgrade>.maxStackSize = 64;

# Filter Upgrade
recipes.remove(<mekanism:filterupgrade>);
recipes.addShaped(<mekanism:filterupgrade>, [[<enderio:item_alloy_ingot>,<contenttweaker:ingot_of_elevation>,<enderio:item_alloy_ingot>],[<contenttweaker:ingot_of_elevation>,<enderio:item_dark_steel_upgrade>,<contenttweaker:ingot_of_elevation>],[<enderio:item_alloy_ingot>,<contenttweaker:ingot_of_elevation>,<enderio:item_alloy_ingot>]]);

# Solar Neutron Activator
recipes.remove(<mekanism:machineblock3:1>);
recipes.addShaped(<mekanism:machineblock3:1>, [[<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>],[null,<enderio:item_alloy_ingot:6>,null],[<enderio:block_alloy:6>,<mekanism:basicblock2:3>.withTag({tier: 1}),<enderio:block_alloy:6>]]);

# Chemical Infuser
recipes.remove(<mekanism:machineblock2:2>);
recipes.addShaped(<mekanism:machineblock2:2>, [[<alchemistry:ingot:3>,null,<alchemistry:ingot:3>],[<mekanism:gastank>.withTag({tier: 3}),<contenttweaker:cosmic_alloy>,<mekanism:gastank>.withTag({tier: 3})],[<enderio:item_material:68>,<enderio:item_material:68>,<enderio:item_material:68>]]);

# Chemical Dissolution Chamber
recipes.remove(<mekanism:machineblock2:6>);
recipes.addShaped(<mekanism:machineblock2:6>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>],[<mekanism:gastank>.withTag({tier: 3}),<contenttweaker:cosmic_alloy>,<mekanism:gastank>.withTag({tier: 3})],[<ore:blockOsmiridium>,<actuallyadditions:block_misc:8>,<ore:blockOsmiridium>]]);

# Chemical Washer
recipes.remove(<mekanism:machineblock2:7>);
recipes.addShaped(<mekanism:machineblock2:7>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:6>],[<contenttweaker:cosmic_alloy>,<enderio:block_niard>,<contenttweaker:cosmic_alloy>],[<ore:blockOsmiridium>,<actuallyadditions:block_misc:8>,<ore:blockOsmiridium>]]);

# Laser
recipes.remove(<mekanism:machineblock2:13>);
recipes.addShapedMirrored(<mekanism:machineblock2:13>, [[<enderio:block_alloy:6>,<thermalfoundation:material:135>,null],[<actuallyadditions:block_misc:9>,<contenttweaker:cosmic_alloy>,<contenttweaker:steaming_restonia_crystal>],[<enderio:block_alloy:6>,<thermalfoundation:material:135>,null]]);

# Laser Amplifier
recipes.remove(<mekanism:machineblock2:14>);
recipes.addShaped(<mekanism:machineblock2:14>, [[<enderio:block_alloy:6>,<enderio:item_alloy_ingot:6>,<enderio:block_alloy:6>],[<enderio:item_alloy_ingot:6>,<mekanism:energycube>.withTag({tier: 3}),<contenttweaker:steaming_restonia_crystal>],[<enderio:block_alloy:6>,<actuallyadditions:block_misc:9>,<enderio:block_alloy:6>]]);

# Laser Tractor Beam
recipes.remove(<mekanism:machineblock2:15>);
recipes.addShaped(<mekanism:machineblock2:15>, [[null,<ore:ingotOsgloglas>,null],[<ore:ingotOsgloglas>,<mekanism:machineblock2:14>,<ore:ingotOsgloglas>],[null,<ore:ingotOsgloglas>,null]]);

# Digital Miner
recipes.remove(<mekanism:machineblock:4>);
recipes.addShaped(<mekanism:machineblock:4>, [[<mekanism:teleportationcore>,<mekanism:robit>,<mekanism:teleportationcore>],[<contenttweaker:cosmic_alloy>,<rftools:builder>,<contenttweaker:cosmic_alloy>],[<mekanism:machineblock:15>,<contenttweaker:dread_crystal>,<mekanism:machineblock:15>]]);

# Quantum Entagloporter
recipes.remove(<mekanism:machineblock3>);
recipes.addShaped(<mekanism:machineblock3>, [[<enderio:block_alloy:6>,<contenttweaker:cosmic_alloy>,<enderio:block_alloy:6>],[<contenttweaker:steaming_restonia_crystal>,<enderio:block_transceiver>,<contenttweaker:steaming_restonia_crystal>],[<enderio:block_alloy:6>,<contenttweaker:cosmic_alloy>,<enderio:block_alloy:6>]]);

function addMekAdvancedAndEliteFactoryRecipe(basic_factory as IItemStack, advanced_factory as IItemStack, elite_factory as IItemStack) {
	recipes.remove(advanced_factory);
	recipes.addShaped(advanced_factory, [[<enderio:item_alloy_ingot:6>,<mekanism:controlcircuit:1>,<enderio:item_alloy_ingot:6>],[<mekanism:controlcircuit:1>,basic_factory,<mekanism:controlcircuit:1>],[<enderio:item_alloy_ingot:6>,<contenttweaker:cosmic_alloy>,<enderio:item_alloy_ingot:6>]]);
	recipes.remove(elite_factory);
	recipes.addShaped(elite_factory, [[<enderio:block_alloy:6>,<contenttweaker:steaming_restonia_crystal_block>,<enderio:block_alloy:6>],[<contenttweaker:cosmic_alloy>,advanced_factory,<contenttweaker:cosmic_alloy>],[<enderio:block_alloy:6>,<contenttweaker:steaming_restonia_crystal_block>,<enderio:block_alloy:6>]]);
}

# Advanced & Elite Sawing Factory
addMekAdvancedAndEliteFactoryRecipe(<mekanism:machineblock:5>.withTag({recipeType: 0}), <mekanism:machineblock:6>.withTag({recipeType: 0}), <mekanism:machineblock:7>.withTag({recipeType: 0}));

# Advanced & Elite Enriching Factory
addMekAdvancedAndEliteFactoryRecipe(<mekanism:machineblock:5>.withTag({recipeType: 1}), <mekanism:machineblock:6>.withTag({recipeType: 1}), <mekanism:machineblock:7>.withTag({recipeType: 1}));

# Advanced & Elite Crushing Factory
addMekAdvancedAndEliteFactoryRecipe(<mekanism:machineblock:5>.withTag({recipeType: 2}), <mekanism:machineblock:6>.withTag({recipeType: 2}), <mekanism:machineblock:7>.withTag({recipeType: 2}));

# Advanced & Elite Compressing Factory
addMekAdvancedAndEliteFactoryRecipe(<mekanism:machineblock:5>.withTag({recipeType: 3}), <mekanism:machineblock:6>.withTag({recipeType: 3}), <mekanism:machineblock:7>.withTag({recipeType: 3}));

# Basic Purifying Factory
recipes.remove(<mekanism:machineblock:5>.withTag({recipeType: 5}));
recipes.addShaped(<mekanism:machineblock:5>.withTag({recipeType: 5}), [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<mekanism:machineblock:9>,<contenttweaker:enriched_gum>,<mekanism:machineblock:9>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Advanced & Elite Purifying Factory
addMekAdvancedAndEliteFactoryRecipe(<mekanism:machineblock:5>.withTag({recipeType: 5}), <mekanism:machineblock:6>.withTag({recipeType: 5}), <mekanism:machineblock:7>.withTag({recipeType: 5}));

# Chemical Injection Chamber
recipes.remove(<mekanism:machineblock2:3>);
recipes.addShaped(<mekanism:machineblock2:3>, [[<enderio:item_alloy_ingot:6>,<alchemistry:ingot:3>,<enderio:item_alloy_ingot:6>],[<alchemistry:ingot:3>,<mekanism:machineblock:9>,<alchemistry:ingot:3>],[<enderio:block_alloy:6>,<alchemistry:ingot:3>,<enderio:block_alloy:6>]]);

# Basic Injecting Factory
recipes.remove(<mekanism:machineblock:5>.withTag({recipeType: 6}));
recipes.addShaped(<mekanism:machineblock:5>.withTag({recipeType: 6}), [[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>],[<mekanism:machineblock2:3>,<contenttweaker:enriched_gum>,<mekanism:machineblock2:3>],[<ore:ingotRedAlloy>,<mekanism:controlcircuit>,<ore:ingotRedAlloy>]]);

# Advanced & Elite Injecting Factory
addMekAdvancedAndEliteFactoryRecipe(<mekanism:machineblock:5>.withTag({recipeType: 6}), <mekanism:machineblock:6>.withTag({recipeType: 6}), <mekanism:machineblock:7>.withTag({recipeType: 6}));

# Advanced & Elite Infusing Factory
addMekAdvancedAndEliteFactoryRecipe(<mekanism:machineblock:5>.withTag({recipeType: 7}), <mekanism:machineblock:6>.withTag({recipeType: 7}), <mekanism:machineblock:7>.withTag({recipeType: 7}));

# Advanced & Elite Sawing Factory
addMekAdvancedAndEliteFactoryRecipe(<mekanism:machineblock:5>.withTag({recipeType: 8}), <mekanism:machineblock:6>.withTag({recipeType: 8}), <mekanism:machineblock:7>.withTag({recipeType: 8}));

# Jetpack
recipes.remove(<mekanism:jetpack>);
recipes.addShaped(<mekanism:jetpack>, [[<enderio:item_alloy_ingot:6>,<mekanism:controlcircuit:1>,<enderio:item_alloy_ingot:6>],[<contenttweaker:steaming_restonia_crystal>,<mekanism:gastank>.withTag({tier: 3}),<contenttweaker:steaming_restonia_crystal>],[<simplyjetpacks:metaitemmods:9>,null,<simplyjetpacks:metaitemmods:9>]]);

# Armored Jetpack
recipes.remove(<mekanism:armoredjetpack>);
recipes.addShaped(<mekanism:armoredjetpack>, [[<enderio:block_alloy:1>,null,<enderio:block_alloy:1>],[<simplyjetpacks:metaitemmods:15>,<mekanism:jetpack>,<simplyjetpacks:metaitemmods:15>]]);

# Flamethrower
recipes.remove(<mekanism:flamethrower>.withTag({}));
recipes.addShapedMirrored(<mekanism:flamethrower>.withTag({}), [[null,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>],[<enderio:block_alloy:1>,<mekanism:gastank>.withTag({tier: 3}),<contenttweaker:steaming_restonia_crystal>],[<enderio:block_alloy:1>,<mekanism:controlcircuit:1>,null]]);

# Tier Installers
recipes.remove(<mekanism:tierinstaller>);
recipes.remove(<mekanism:tierinstaller:1>);
recipes.remove(<mekanism:tierinstaller:2>);
recipes.remove(<mekanism:tierinstaller:3>);

# Anchor Upgrade
recipes.remove(<mekanism:anchorupgrade>);
recipes.addShaped(<mekanism:anchorupgrade>, [[<enderio:item_alloy_ingot>,<alchemistry:ingot:3>,<enderio:item_alloy_ingot>],[<alchemistry:ingot:3>,<extrautils2:chunkloader>,<alchemistry:ingot:3>],[<enderio:item_alloy_ingot>,<alchemistry:ingot:3>,<enderio:item_alloy_ingot>]]);

# Cardboard Box
recipes.remove(<mekanism:cardboardbox>);
recipes.addShaped(<mekanism:cardboardbox>, [[<thermalfoundation:material:800>,<thermalfoundation:material:800>,<thermalfoundation:material:800>],[<thermalfoundation:material:800>,<enderutilities:dolly>,<thermalfoundation:material:800>],[<thermalfoundation:material:800>,<thermalfoundation:material:800>,<thermalfoundation:material:800>]]);

# Brine can only be created in the Thermal Evaporation Multiblock
mods.mekanism.chemical.oxidizer.removeRecipe(<gas:brine>, <mekanism:salt>);

# Removing Sawmill Bed recipes
mods.mekanism.sawmill.removeRecipe(<minecraft:bed:*>);

# Atomic Disassembler
recipes.remove(<mekanism:atomicdisassembler>);
recipes.addShaped("mekanism_atomic_disassembler", <mekanism:atomicdisassembler>, [[<contenttweaker:cosmic_alloy>,<mekanism:energytablet>.marked("tablet"),<contenttweaker:cosmic_alloy>],[<contenttweaker:cosmic_alloy>,<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:cosmic_alloy>],[null,<enderio:item_alloy_endergy_ingot:3>,null]],
function(out,ins,cInfo) {
	if(ins.tablet.tag has "mekData") {
		return out.withTag({mekData: {energyStored: ins.tablet.tag.mekData.energyStored}});
	} else {
		return out;
	}
}, null);
#<mekanism:atomicdisassembler>.addTooltip(format.red(format.bold("Warning: ")) + format.white("DESTROYS most blocks."));

# Plastic Roads with Sand OreDict
for i in 0 to 16 {
	recipes.removeShaped(<mekanism:roadplasticblock>.withDamage(i), [[<minecraft:sand>,<minecraft:sand>,<minecraft:sand>],[<*>,<*>,<*>],[<minecraft:sand>,<minecraft:sand>,<minecraft:sand>]]);
	recipes.addShaped(<mekanism:roadplasticblock>.withDamage(i), [[<ore:sand>,<ore:sand>,<ore:sand>],[<mekanism:slickplasticblock>.withDamage(i),<mekanism:slickplasticblock>.withDamage(i),<mekanism:slickplasticblock>.withDamage(i)],[<ore:sand>,<ore:sand>,<ore:sand>]]);
}

# Creative Energy Cube
mods.extendedcrafting.TableCrafting.addShaped(<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
[[<alchemistry:ingot:108>, <plustic:osgloglasblock>, <alchemistry:ingot:100>, <plustic:osgloglasblock>, <alchemistry:ingot:108>], 
[<plustic:osgloglasblock>, <mekanism:basicblock2:3>.withTag({tier: 3}), <mekanism:basicblock2:3>.withTag({tier: 3}), <mekanism:basicblock2:3>.withTag({tier: 3}), <plustic:osgloglasblock>], 
[<alchemistry:ingot:100>, <mekanism:basicblock2:3>.withTag({tier: 3}), <immersiveengineering:metal_device0:3>, <mekanism:basicblock2:3>.withTag({tier: 3}), <alchemistry:ingot:100>], 
[<plustic:osgloglasblock>, <mekanism:basicblock2:3>.withTag({tier: 3}), <mekanism:basicblock2:3>.withTag({tier: 3}), <mekanism:basicblock2:3>.withTag({tier: 3}), <plustic:osgloglasblock>], 
[<alchemistry:ingot:108>, <plustic:osgloglasblock>, <alchemistry:ingot:100>, <plustic:osgloglasblock>, <alchemistry:ingot:108>]]);

# Creative Fluid Tank
mods.extendedcrafting.TableCrafting.addShaped(<mekanism:machineblock2:11>.withTag({tier: 4}),
[[<alchemistry:ingot:97>, <mekanism:machineblock2:11>.withTag({tier: 3}), <contenttweaker:clay>, <mekanism:machineblock2:11>.withTag({tier: 3}), <alchemistry:ingot:97>], 
[<alchemistry:ingot:73>, <mekanism:machineblock2:11>.withTag({tier: 3}), <bigreactors:reactorcreativecoolantport>, <mekanism:machineblock2:11>.withTag({tier: 3}), <alchemistry:ingot:73>], 
[<alchemistry:ingot:73>, <galacticraftcore:infinite_oxygen>, <draconicevolution:creative_rf_source>, <galacticraftcore:infinite_oxygen>, <alchemistry:ingot:73>], 
[<alchemistry:ingot:73>, <mekanism:machineblock2:11>.withTag({tier: 3}), <bigreactors:turbinecreativesteamgenerator>, <mekanism:machineblock2:11>.withTag({tier: 3}), <alchemistry:ingot:73>], 
[<alchemistry:ingot:97>, <mekanism:machineblock2:11>.withTag({tier: 3}), <contenttweaker:clay>, <mekanism:machineblock2:11>.withTag({tier: 3}), <alchemistry:ingot:97>]]);

# Creative Gas Tank
mods.extendedcrafting.TableCrafting.addShaped(<mekanism:gastank>.withTag({tier: 4}),
[[<alchemistry:ingot:62>, <mekanism:gastank>.withTag({tier: 3}), <contenttweaker:clay>, <mekanism:gastank>.withTag({tier: 3}), <alchemistry:ingot:62>], 
[<alchemistry:ingot:62>, <mekanism:gastank>.withTag({tier: 3}), <bigreactors:reactorcreativecoolantport>, <mekanism:gastank>.withTag({tier: 3}), <alchemistry:ingot:62>], 
[<alchemistry:ingot:62>, <galacticraftcore:infinite_oxygen>, <draconicevolution:creative_rf_source>, <galacticraftcore:infinite_oxygen>, <alchemistry:ingot:62>], 
[<alchemistry:ingot:62>, <mekanism:gastank>.withTag({tier: 3}), <bigreactors:turbinecreativesteamgenerator>, <mekanism:gastank>.withTag({tier: 3}), <alchemistry:ingot:62>], 
[<alchemistry:ingot:62>, <mekanism:gastank>.withTag({tier: 3}), <contenttweaker:clay>, <mekanism:gastank>.withTag({tier: 3}), <alchemistry:ingot:62>]]);

# Creative Bin
mods.extendedcrafting.TableCrafting.addShaped(<mekanism:basicblock:6>.withTag({tier: 4}),
[[<alchemistry:ingot:116>, <alchemistry:ingot:116>, <alchemistry:ingot:116>, <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_neutronium>, <alchemistry:ingot:116>, <alchemistry:ingot:116>, <alchemistry:ingot:116>], 
[<alchemistry:ingot:116>, <mekanism:gastank>.withTag({tier: 4}), <mekanism:gastank>.withTag({tier: 4}), <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_neutronium>, <mekanism:gastank>.withTag({tier: 4}), <mekanism:gastank>.withTag({tier: 4}), <alchemistry:ingot:116>], 
[<alchemistry:ingot:116>, <mekanism:machineblock2:11>.withTag({tier: 4}), <mekanism:machineblock2:11>.withTag({tier: 4}), <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mekanism:machineblock2:11>.withTag({tier: 4}), <mekanism:machineblock2:11>.withTag({tier: 4}), <alchemistry:ingot:116>], 
[<bewitchment:blessed_stone>, <contenttweaker:neutronium_singularity>, <mysticalagradditions:stuff:69>, <mekanism:basicblock:6>.withTag({tier: 3}), <mekanism:basicblock:6>.withTag({tier: 3}), <mekanism:basicblock:6>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, <contenttweaker:neutronium_singularity>, <bewitchment:blessed_stone>], 
[<bewitchment:blessed_stone>, <contenttweaker:neutronium_singularity>, <mysticalagradditions:stuff:69>, <mekanism:basicblock:6>.withTag({tier: 3}), <extrautils2:creativechest>, <mekanism:basicblock:6>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, <contenttweaker:neutronium_singularity>, <bewitchment:blessed_stone>], 
[<bewitchment:blessed_stone>, <contenttweaker:neutronium_singularity>, <mysticalagradditions:stuff:69>, <mekanism:basicblock:6>.withTag({tier: 3}), <mekanism:basicblock:6>.withTag({tier: 3}), <mekanism:basicblock:6>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, <contenttweaker:neutronium_singularity>, <bewitchment:blessed_stone>], 
[<alchemistry:ingot:111>, <storagedrawers:upgrade_creative:1>, <storagedrawers:upgrade_creative:1>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <storagedrawers:upgrade_creative:1>, <storagedrawers:upgrade_creative:1>, <alchemistry:ingot:111>], 
[<alchemistry:ingot:111>, <alchemistry:ingot:111>, <alchemistry:ingot:111>, <contenttweaker:neutronium_singularity>, <contenttweaker:neutronium_singularity>, <contenttweaker:neutronium_singularity>, <alchemistry:ingot:111>, <alchemistry:ingot:111>, <alchemistry:ingot:111>], 
[<alchemistry:ingot:49>, <alchemistry:ingot:49>, <alchemistry:ingot:49>, <alchemistry:ingot:49>, <alchemistry:ingot:49>, <alchemistry:ingot:49>, <alchemistry:ingot:49>, <alchemistry:ingot:49>, <alchemistry:ingot:49>]]);

# Clear Mekanism machines via crafting
recipes.addHiddenShapeless("mek_0_clear", <mekanism:machineblock:0>, [<mekanism:machineblock:0>]);
recipes.addHiddenShapeless("mek_1_clear", <mekanism:machineblock:1>, [<mekanism:machineblock:1>]);
recipes.addHiddenShapeless("mek_3_clear", <mekanism:machineblock:3>, [<mekanism:machineblock:3>]);
recipes.addHiddenShapeless("mek_4_clear", <mekanism:machineblock:4>, [<mekanism:machineblock:4>]);
recipes.addHiddenShapeless("mek_5_0_clear", <mekanism:machineblock:5>.withTag({recipeType: 0}), [<mekanism:machineblock:5>.withTag({recipeType: 0})]);
recipes.addHiddenShapeless("mek_5_1_clear", <mekanism:machineblock:5>.withTag({recipeType: 1}), [<mekanism:machineblock:5>.withTag({recipeType: 1})]);
recipes.addHiddenShapeless("mek_5_2_clear", <mekanism:machineblock:5>.withTag({recipeType: 2}), [<mekanism:machineblock:5>.withTag({recipeType: 2})]);
recipes.addHiddenShapeless("mek_5_3_clear", <mekanism:machineblock:5>.withTag({recipeType: 3}), [<mekanism:machineblock:5>.withTag({recipeType: 3})]);
recipes.addHiddenShapeless("mek_5_5_clear", <mekanism:machineblock:5>.withTag({recipeType: 5}), [<mekanism:machineblock:5>.withTag({recipeType: 5})]);
recipes.addHiddenShapeless("mek_5_6_clear", <mekanism:machineblock:5>.withTag({recipeType: 6}), [<mekanism:machineblock:5>.withTag({recipeType: 6})]);
recipes.addHiddenShapeless("mek_5_7_clear", <mekanism:machineblock:5>.withTag({recipeType: 7}), [<mekanism:machineblock:5>.withTag({recipeType: 7})]);
recipes.addHiddenShapeless("mek_5_8_clear", <mekanism:machineblock:5>.withTag({recipeType: 8}), [<mekanism:machineblock:5>.withTag({recipeType: 8})]);
recipes.addHiddenShapeless("mek_6_0_clear", <mekanism:machineblock:6>.withTag({recipeType: 0}), [<mekanism:machineblock:6>.withTag({recipeType: 0})]);
recipes.addHiddenShapeless("mek_6_1_clear", <mekanism:machineblock:6>.withTag({recipeType: 1}), [<mekanism:machineblock:6>.withTag({recipeType: 1})]);
recipes.addHiddenShapeless("mek_6_2_clear", <mekanism:machineblock:6>.withTag({recipeType: 2}), [<mekanism:machineblock:6>.withTag({recipeType: 2})]);
recipes.addHiddenShapeless("mek_6_3_clear", <mekanism:machineblock:6>.withTag({recipeType: 3}), [<mekanism:machineblock:6>.withTag({recipeType: 3})]);
recipes.addHiddenShapeless("mek_6_5_clear", <mekanism:machineblock:6>.withTag({recipeType: 5}), [<mekanism:machineblock:6>.withTag({recipeType: 5})]);
recipes.addHiddenShapeless("mek_6_6_clear", <mekanism:machineblock:6>.withTag({recipeType: 6}), [<mekanism:machineblock:6>.withTag({recipeType: 6})]);
recipes.addHiddenShapeless("mek_6_7_clear", <mekanism:machineblock:6>.withTag({recipeType: 7}), [<mekanism:machineblock:6>.withTag({recipeType: 7})]);
recipes.addHiddenShapeless("mek_6_8_clear", <mekanism:machineblock:6>.withTag({recipeType: 8}), [<mekanism:machineblock:6>.withTag({recipeType: 8})]);
recipes.addHiddenShapeless("mek_7_0_clear", <mekanism:machineblock:7>.withTag({recipeType: 0}), [<mekanism:machineblock:7>.withTag({recipeType: 0})]);
recipes.addHiddenShapeless("mek_7_1_clear", <mekanism:machineblock:7>.withTag({recipeType: 1}), [<mekanism:machineblock:7>.withTag({recipeType: 1})]);
recipes.addHiddenShapeless("mek_7_2_clear", <mekanism:machineblock:7>.withTag({recipeType: 2}), [<mekanism:machineblock:7>.withTag({recipeType: 2})]);
recipes.addHiddenShapeless("mek_7_3_clear", <mekanism:machineblock:7>.withTag({recipeType: 3}), [<mekanism:machineblock:7>.withTag({recipeType: 3})]);
recipes.addHiddenShapeless("mek_7_5_clear", <mekanism:machineblock:7>.withTag({recipeType: 5}), [<mekanism:machineblock:7>.withTag({recipeType: 5})]);
recipes.addHiddenShapeless("mek_7_6_clear", <mekanism:machineblock:7>.withTag({recipeType: 6}), [<mekanism:machineblock:7>.withTag({recipeType: 6})]);
recipes.addHiddenShapeless("mek_7_7_clear", <mekanism:machineblock:7>.withTag({recipeType: 7}), [<mekanism:machineblock:7>.withTag({recipeType: 7})]);
recipes.addHiddenShapeless("mek_7_8_clear", <mekanism:machineblock:7>.withTag({recipeType: 8}), [<mekanism:machineblock:7>.withTag({recipeType: 8})]);
recipes.addHiddenShapeless("mek_8_clear", <mekanism:machineblock:8>, [<mekanism:machineblock:8>]);
recipes.addHiddenShapeless("mek_9_clear", <mekanism:machineblock:9>, [<mekanism:machineblock:9>]);
recipes.addHiddenShapeless("mek_10_clear", <mekanism:machineblock:10>, [<mekanism:machineblock:10>]);
recipes.addHiddenShapeless("mek_12_clear", <mekanism:machineblock:12>, [<mekanism:machineblock:12>]);
recipes.addHiddenShapeless("mek2_0_clear", <mekanism:machineblock2:0>, [<mekanism:machineblock2:0>]);
recipes.addHiddenShapeless("mek2_1_clear", <mekanism:machineblock2:1>, [<mekanism:machineblock2:1>]);
recipes.addHiddenShapeless("mek2_2_clear", <mekanism:machineblock2:2>, [<mekanism:machineblock2:2>]);
recipes.addHiddenShapeless("mek2_3_clear", <mekanism:machineblock2:3>, [<mekanism:machineblock2:3>]);
recipes.addHiddenShapeless("mek2_4_clear", <mekanism:machineblock2:4>, [<mekanism:machineblock2:4>]);
recipes.addHiddenShapeless("mek2_5_clear", <mekanism:machineblock2:5>, [<mekanism:machineblock2:5>]);
recipes.addHiddenShapeless("mek2_6_clear", <mekanism:machineblock2:6>, [<mekanism:machineblock2:6>]);
recipes.addHiddenShapeless("mek2_7_clear", <mekanism:machineblock2:7>, [<mekanism:machineblock2:7>]);
recipes.addHiddenShapeless("mek2_8_clear", <mekanism:machineblock2:8>, [<mekanism:machineblock2:8>]);
recipes.addHiddenShapeless("mek2_9_clear", <mekanism:machineblock2:9>, [<mekanism:machineblock2:9>]);
recipes.addHiddenShapeless("mek2_10_clear", <mekanism:machineblock2:10>, [<mekanism:machineblock2:10>]);
recipes.addHiddenShapeless("mek2_12_clear", <mekanism:machineblock2:12>, [<mekanism:machineblock2:12>]);
recipes.addHiddenShapeless("mek2_13_clear", <mekanism:machineblock2:13>, [<mekanism:machineblock2:13>]);
recipes.addHiddenShapeless("mek2_14_clear", <mekanism:machineblock2:14>, [<mekanism:machineblock2:14>]);
recipes.addHiddenShapeless("mek2_15_clear", <mekanism:machineblock2:15>, [<mekanism:machineblock2:15>]);
recipes.addHiddenShapeless("mek3_0_clear", <mekanism:machineblock3:0>, [<mekanism:machineblock3:0>]);
recipes.addHiddenShapeless("mek3_1_clear", <mekanism:machineblock3:1>, [<mekanism:machineblock3:1>]);
recipes.addHiddenShapeless("mek3_3_clear", <mekanism:machineblock3:3>, [<mekanism:machineblock3:3>]);
recipes.addHiddenShapeless("mek3_4_clear", <mekanism:machineblock3:4>, [<mekanism:machineblock3:4>]);
recipes.addHiddenShapeless("mek3_5_clear", <mekanism:machineblock3:5>, [<mekanism:machineblock3:5>]);
recipes.addHiddenShapeless("mek3_6_clear", <mekanism:machineblock3:6>, [<mekanism:machineblock3:6>]);

# Dynamic Tank warning tooltip
<mekanism:basicblock:9>.addTooltip(format.red(format.bold("Warning: ")) + format.white("Sometimes the Dynamic Tank can FORGET"));
<mekanism:basicblock:9>.addTooltip(format.white("its liquid. NOT recommended to craft / use."));
<mekanism:basicblock:11>.addTooltip(format.red(format.bold("Warning: ")) + format.white("Sometimes the Dynamic Tank can FORGET"));
<mekanism:basicblock:11>.addTooltip(format.white("its liquid. NOT recommended to craft / use."));

print("ENDING Mekanism.zs");