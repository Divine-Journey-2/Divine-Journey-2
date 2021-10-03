# Author: Atricos

import mods.enderio.SliceNSplice;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import moretweaker.galacticraft.CircuitFabricator;
import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;

print("STARTING GalacticraftCore.zs");

# Removing Wires, as they cause a crash when broken
recipes.remove(<galacticraftcore:aluminum_wire>);
recipes.remove(<galacticraftcore:aluminum_wire:1>);
recipes.remove(<galacticraftcore:aluminum_wire:2>);
recipes.remove(<galacticraftcore:aluminum_wire:3>);
recipes.remove(<galacticraftcore:enclosed:15>);
recipes.remove(<galacticraftcore:enclosed:14>);
recipes.remove(<galacticraftplanets:walkway:1>);

# Grating
recipes.remove(<galacticraftcore:grating>);
recipes.addShaped(<galacticraftcore:grating> * 4, [[null,<enderio:block_dark_iron_bars>,null],[<enderio:block_dark_iron_bars>,<galacticraftcore:basic_item:9>,<enderio:block_dark_iron_bars>],[null,<enderio:block_dark_iron_bars>,null]]);

# Circuit Fabricator
recipes.remove(<galacticraftcore:machine2:4>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:machine2:4>,
[[<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<quantumflux:craftingpiece:4>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<enderio:item_endergy_conduit:10>,<enderio:item_endergy_conduit:10>,<contenttweaker:thaumium_processor>,<enderio:item_endergy_conduit:10>,<enderio:item_endergy_conduit:10>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<enderio:item_endergy_conduit:10>,<mekanism:controlcircuit:3>,<contenttweaker:clearance_processor>,<mekanism:controlcircuit:3>,<enderio:item_endergy_conduit:10>,<contenttweaker:tough_galactic_plating>],
[<quantumflux:craftingpiece:4>,<contenttweaker:thaumium_processor>,<contenttweaker:clearance_processor>,<contenttweaker:galactic_machine_frame>,<contenttweaker:clearance_processor>,<contenttweaker:thaumium_processor>,<quantumflux:craftingpiece:4>],
[<contenttweaker:tough_galactic_plating>,<enderio:item_endergy_conduit:10>,<mekanism:controlcircuit:3>,<contenttweaker:clearance_processor>,<mekanism:controlcircuit:3>,<enderio:item_endergy_conduit:10>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<enderio:item_endergy_conduit:10>,<enderio:item_endergy_conduit:10>,<contenttweaker:thaumium_processor>,<enderio:item_endergy_conduit:10>,<enderio:item_endergy_conduit:10>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<quantumflux:craftingpiece:4>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>]]);  

# Basic Wafer
CircuitFabricator.remove(<galacticraftcore:basic_item:13> * 3);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:13> * 16, <quantumflux:craftingpiece:4>, <projectred-core:resource_item:301>, <projectred-core:resource_item:301>, <contenttweaker:rainbow_tablet>, <contenttweaker:rune_of_gluttony>);

# Advanced Wafer
CircuitFabricator.remove(<galacticraftcore:basic_item:14>);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:14> * 16, <quantumflux:craftingpiece:4>, <projectred-core:resource_item:320>, <projectred-core:resource_item:320>, <contenttweaker:rainbow_tablet>, <contenttweaker:rune_of_lust>);

# Blue Solar Wafer
CircuitFabricator.remove(<galacticraftcore:basic_item:12> * 9);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:12> * 16, <quantumflux:craftingpiece:4>, <projectred-core:resource_item:342>, <projectred-core:resource_item:342>, <contenttweaker:rainbow_tablet>, <contenttweaker:rune_of_envy>);

# Tin Canister
recipes.remove(<galacticraftcore:canister>);
mods.enderio.SliceNSplice.addRecipe(<galacticraftcore:canister> * 4, [<contenttweaker:galactic_ingot>,<bewitchment:stone_ichor>,<contenttweaker:galactic_ingot>,<galacticraftcore:basic_item:7>,<thaumcraft:everfull_urn>,<galacticraftcore:basic_item:7>], 40000);

# Copper Canister
recipes.remove(<galacticraftcore:canister:1>);
mods.enderio.SliceNSplice.addRecipe(<galacticraftcore:canister:1> * 4, [<contenttweaker:galactic_ingot>,<bewitchment:otherworldly_tears>,<contenttweaker:galactic_ingot>,<galacticraftcore:basic_item:6>,<thaumcraft:everfull_urn>,<galacticraftcore:basic_item:6>], 40000);

# Compressor
recipes.remove(<galacticraftcore:machine:12>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:machine:12>,
[[<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<quantumflux:craftingpiece:4>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<bloodmagic:component:14>,<bloodmagic:component:14>,<mekanism:controlcircuit:3>,<bloodmagic:component:14>,<bloodmagic:component:14>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<bloodmagic:component:14>,<galacticraftcore:basic_item:13>,<galacticraftcore:basic_item:13>,<galacticraftcore:basic_item:13>,<bloodmagic:component:14>,<contenttweaker:tough_galactic_plating>],
[<quantumflux:craftingpiece:4>,<mekanism:controlcircuit:3>,<galacticraftcore:basic_item:13>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:basic_item:13>,<mekanism:controlcircuit:3>,<quantumflux:craftingpiece:4>],
[<contenttweaker:tough_galactic_plating>,<bloodmagic:component:14>,<galacticraftcore:basic_item:13>,<galacticraftcore:basic_item:13>,<galacticraftcore:basic_item:13>,<bloodmagic:component:14>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<bloodmagic:component:14>,<bloodmagic:component:14>,<mekanism:controlcircuit:3>,<bloodmagic:component:14>,<bloodmagic:component:14>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<quantumflux:craftingpiece:4>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>]]);

# Electric Compressor
recipes.remove(<galacticraftcore:machine2>);
recipes.addShaped(<galacticraftcore:machine2>, [[<contenttweaker:tough_galactic_plating>,<mekanism:basicblock2:5>,<contenttweaker:tough_galactic_plating>],[<galacticraftcore:basic_item:14>,<galacticraftcore:machine:12>,<galacticraftcore:basic_item:14>],[<contenttweaker:tough_galactic_plating>,<mekanism:basicblock2:5>,<contenttweaker:tough_galactic_plating>]]);

function addGalacticraftBasicCompressedRecipe(output as IItemStack, input_sheetmetal as IItemStack) {
	mods.GalacticraftTweaker.removeCompressorRecipe(output);
	mods.GalacticraftTweaker.addCompressorShapelessRecipe(output, input_sheetmetal,input_sheetmetal,input_sheetmetal,<contenttweaker:tough_galactic_plating>,<contenttweaker:galactic_ingot>,<contenttweaker:tough_galactic_plating>,input_sheetmetal,input_sheetmetal,input_sheetmetal);
}

# Compressed Copper
addGalacticraftBasicCompressedRecipe(<galacticraftcore:basic_item:6>, <immersiveengineering:sheetmetal>);

# Compressed Iron
addGalacticraftBasicCompressedRecipe(<galacticraftcore:basic_item:11>, <immersiveengineering:sheetmetal:9>);

# Compressed Steel
addGalacticraftBasicCompressedRecipe(<galacticraftcore:basic_item:9>, <immersiveengineering:sheetmetal:8>);

# Compressed Aluminum
addGalacticraftBasicCompressedRecipe(<galacticraftcore:basic_item:8>, <immersiveengineering:sheetmetal:1>);

# Compressed Tin
addGalacticraftBasicCompressedRecipe(<galacticraftcore:basic_item:7>, <contenttweaker:tin_sheetmetal>);

# Compressed Bronze
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:10>);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftcore:basic_item:10>, <galacticraftcore:basic_item:6>,<galacticraftcore:basic_item:7>);

# Heavy-Duty Plate
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:heavy_plating> * 2);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftcore:heavy_plating>, <galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:10>,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:10>,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:10>);

# Single Solar Module
recipes.remove(<galacticraftcore:basic_item>);
recipes.addShaped(<galacticraftcore:basic_item> * 3, [[<solarflux:photovoltaic_cell_4>,<solarflux:photovoltaic_cell_4>,<solarflux:photovoltaic_cell_4>],[<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>],[<galacticraftcore:basic_item:7>,<galacticraftcore:basic_item:7>,<galacticraftcore:basic_item:7>]]);

# Full Solar Panel
recipes.remove(<galacticraftcore:basic_item:1>);
recipes.addShaped(<galacticraftcore:basic_item:1>, [[<galacticraftcore:basic_item>,<galacticraftcore:basic_item>,<galacticraftcore:basic_item>],[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>],[<galacticraftcore:basic_item>,<galacticraftcore:basic_item>,<galacticraftcore:basic_item>]]);

# NASA Workbench
recipes.remove(<galacticraftcore:rocket_workbench>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:rocket_workbench>,
[[null,<quantumflux:mattertransporter>,null,null,null,<quantumflux:mattertransporter>,null],
[null,<galacticraftcore:heavy_plating>,null,null,null,<galacticraftcore:heavy_plating>,null],
[<quantumflux:mattertransporter>,<galacticraftcore:heavy_plating>,null,null,null,<galacticraftcore:heavy_plating>,<quantumflux:mattertransporter>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:14>,<enderutilities:machine_1:2>,<rftools:builder>,<enderutilities:machine_1:2>,<galacticraftcore:basic_item:14>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:14>,<enderutilities:machine_1:2>,<contenttweaker:galactic_machine_frame>,<enderutilities:machine_1:2>,<galacticraftcore:basic_item:14>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:14>,<enderutilities:machine_1:2>,<quantumflux:quibitcluster:5>,<enderutilities:machine_1:2>,<galacticraftcore:basic_item:14>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Nose Cone
recipes.remove(<galacticraftcore:nose_cone>);
recipes.addShaped(<galacticraftcore:nose_cone>, [[null,<projectred-core:resource_item:12>,null],[null,<galacticraftcore:heavy_plating>,null],[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:13>,<galacticraftcore:heavy_plating>]]);

# Rocket Fins
recipes.remove(<galacticraftcore:rocket_fins>);
recipes.addShaped(<galacticraftcore:rocket_fins>, [[null,<galacticraftcore:basic_item:13>,null],[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<simplyjetpacks:metaitemmods:11>,<galacticraftcore:heavy_plating>]]);

# Oxygen Fan
recipes.remove(<galacticraftcore:air_fan>);
recipes.addShaped(<galacticraftcore:air_fan>, [[null,<galacticraftcore:basic_item:13>,null],[<galacticraftcore:basic_item:13>,<abyssalcraft:crystalcluster:4>,<galacticraftcore:basic_item:13>],[null,<galacticraftcore:basic_item:13>,null]]);

# Oxygen Vent
recipes.remove(<galacticraftcore:air_vent>);
recipes.addShaped(<galacticraftcore:air_vent>, [[<mekanism:filterupgrade>,<galacticraftcore:basic_item:9>,<mekanism:filterupgrade>],[<galacticraftcore:basic_item:9>,<galacticraftcore:air_fan>,<galacticraftcore:basic_item:9>],[<mekanism:filterupgrade>,<galacticraftcore:basic_item:9>,<mekanism:filterupgrade>]]);

# Tier 1 Rocket Engine
recipes.remove(<galacticraftcore:engine>);
recipes.addShaped(<galacticraftcore:engine>, [[null,<galacticraftcore:air_vent>,null],[<galacticraftcore:heavy_plating>,<galacticraftcore:canister>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:4>.withTag({tier: 3}),<galacticraftcore:heavy_plating>]]);

# Frequency Module
recipes.remove(<galacticraftcore:basic_item:19>);
recipes.addShaped(<galacticraftcore:basic_item:19>, [[<galacticraftcore:basic_item:13>,<galacticraftcore:basic_item:13>,<galacticraftcore:basic_item:13>],[<galacticraftcore:heavy_plating>,<mekanism:portableteleporter>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<mekanism:networkreader>,<galacticraftcore:heavy_plating>]]);

# Communications Dish
recipes.remove(<galacticraftcore:dishbase>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:dishbase>,
[[<galacticraftcore:basic_item:8>,null,<galacticraftcore:basic_item:19>,null,<galacticraftcore:basic_item:8>],
[<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:14>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:14>,<galacticraftcore:basic_item:8>],
[null,null,<galacticraftcore:basic_item:8>,null,null],
[null,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,null],
[<galacticraftcore:basic_item:8>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:8>]]);

# Battery
recipes.remove(<galacticraftcore:battery:100>);
recipes.addShaped(<galacticraftcore:battery:100>.withTag({}), [[<galacticraftcore:basic_item:14>,<galacticraftcore:basic_item:14>,<galacticraftcore:basic_item:14>],[<galacticraftcore:basic_item:7>,<lightningcraft:battery:2>,<galacticraftcore:basic_item:7>],[<galacticraftcore:basic_item:7>,<galacticraftcore:basic_item:7>,<galacticraftcore:basic_item:7>]]);

/*
# Tier 1 Rocket
mods.GalacticraftTweaker.removeNASATier1RocketRecipe();
mods.GalacticraftTweaker.addNASATieredRocketRecipe(1, []);
*/

# Rocket Launch Pad
recipes.remove(<galacticraftcore:landing_pad>);
recipes.addShaped(<galacticraftcore:landing_pad>, [[<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>],[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Empty Canister
recipes.remove(<galacticraftcore:oil_canister_partial:1001>);
recipes.addShaped(<galacticraftcore:oil_canister_partial:1001>, [[<galacticraftcore:basic_item:7>,<galacticraftcore:canister>,<galacticraftcore:basic_item:7>],[<galacticraftcore:basic_item:7>,<enderio:block_tank:1>,<galacticraftcore:basic_item:7>],[<galacticraftcore:basic_item:7>,<galacticraftcore:canister>,<galacticraftcore:basic_item:7>]]);

# Refiery
recipes.remove(<galacticraftcore:refinery>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:refinery>,
[[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:6>,<mekanism:basicblock2:5>,<industrialforegoing:sludge_refiner>,<mekanism:basicblock2:5>,<mekanism:basicblock2:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:5>,<industrialforegoing:sludge_refiner>,<galacticraftcore:basic_item:14>,<industrialforegoing:sludge_refiner>,<mekanism:basicblock2:5>,<galacticraftcore:heavy_plating>],
[<quantumflux:craftingpiece:4>,<industrialforegoing:sludge_refiner>,<galacticraftcore:basic_item:14>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:basic_item:14>,<industrialforegoing:sludge_refiner>,<quantumflux:craftingpiece:4>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:5>,<industrialforegoing:sludge_refiner>,<galacticraftcore:basic_item:14>,<industrialforegoing:sludge_refiner>,<mekanism:basicblock2:5>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:6>,<mekanism:basicblock2:5>,<industrialforegoing:sludge_refiner>,<mekanism:basicblock2:5>,<mekanism:basicblock2:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Fuel Loader
recipes.remove(<galacticraftcore:fuel_loader>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:fuel_loader>,
[[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:14>,<galacticraftcore:canister:1>,<enderio:block_niard>,<galacticraftcore:canister:1>,<galacticraftcore:basic_item:14>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:canister:1>,<enderio:block_niard>,<industrialforegoing:fluid_pump>,<enderio:block_niard>,<galacticraftcore:canister:1>,<galacticraftcore:heavy_plating>],
[<quantumflux:craftingpiece:4>,<enderio:block_niard>,<industrialforegoing:fluid_pump>,<contenttweaker:galactic_machine_frame>,<industrialforegoing:fluid_pump>,<enderio:block_niard>,<quantumflux:craftingpiece:4>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:canister:1>,<enderio:block_niard>,<industrialforegoing:fluid_pump>,<enderio:block_niard>,<galacticraftcore:canister:1>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:14>,<galacticraftcore:canister:1>,<enderio:block_niard>,<galacticraftcore:canister:1>,<galacticraftcore:basic_item:14>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Vacuum Glass (Clear)
recipes.remove(<galacticraftcore:space_glass_clear>);
recipes.addShaped(<galacticraftcore:space_glass_clear> * 5, [[<galacticraftcore:basic_item:8>,<bigreactors:reactorglass>,<galacticraftcore:basic_item:8>],[<bigreactors:reactorglass>,<bigreactors:reactorglass>,<bigreactors:reactorglass>],[<galacticraftcore:basic_item:8>,<bigreactors:reactorglass>,<galacticraftcore:basic_item:8>]]);

# Vacuum Glass
recipes.remove(<galacticraftcore:space_glass_vanilla>);
recipes.addShaped(<galacticraftcore:space_glass_vanilla> * 5, [[<galacticraftcore:basic_item:7>,<bigreactors:reactorglass>,<galacticraftcore:basic_item:7>],[<bigreactors:reactorglass>,<bigreactors:reactorglass>,<bigreactors:reactorglass>],[<galacticraftcore:basic_item:7>,<bigreactors:reactorglass>,<galacticraftcore:basic_item:7>]]);

# Vacuum Glass (Strong)
recipes.remove(<galacticraftcore:space_glass_strong>);
recipes.addShaped(<galacticraftcore:space_glass_strong> * 5, [[<galacticraftcore:basic_item:9>,<bigreactors:reactorglass>,<galacticraftcore:basic_item:9>],[<bigreactors:reactorglass>,<bigreactors:reactorglass>,<bigreactors:reactorglass>],[<galacticraftcore:basic_item:9>,<bigreactors:reactorglass>,<galacticraftcore:basic_item:9>]]);

# Oxygen Mask
recipes.remove(<galacticraftcore:oxygen_mask>);
recipes.addShaped(<galacticraftcore:oxygen_mask>, [[<galacticraftcore:space_glass_clear>,<galacticraftcore:space_glass_clear>,<galacticraftcore:space_glass_clear>],[<galacticraftcore:space_glass_clear>,<mekanism:gasmask>,<galacticraftcore:space_glass_clear>],[<galacticraftcore:space_glass_clear>,<galacticraftcore:space_glass_clear>,<galacticraftcore:space_glass_clear>]]);

# Oxygen Concentrator
recipes.remove(<galacticraftcore:oxygen_concentrator>);
recipes.addShaped(<galacticraftcore:oxygen_concentrator>, [[null,<galacticraftcore:canister>,null],[<galacticraftcore:canister>,<galacticraftcore:basic_item:13>,<galacticraftcore:canister>],[<galacticraftcore:air_vent>,<galacticraftcore:air_vent>,<galacticraftcore:air_vent>]]);

# Fluid Pipe
recipes.remove(<galacticraftcore:fluid_pipe>);
recipes.addShaped(<galacticraftcore:fluid_pipe> * 2, [[null,<galacticraftcore:basic_item:7>,null],[<galacticraftcore:basic_item:7>,<enderio:item_liquid_conduit:1>,<galacticraftcore:basic_item:7>],[null,<galacticraftcore:basic_item:7>,null]]);

# Oxygen Gear
recipes.remove(<galacticraftcore:oxygen_gear>);
recipes.addShaped(<galacticraftcore:oxygen_gear>, [[null,<galacticraftcore:oxygen_concentrator>,null],[<galacticraftcore:heavy_plating>,<enderio:item_stellar_alloy_chestplate>,<galacticraftcore:heavy_plating>],[<galacticraftcore:basic_item:14>,null,<galacticraftcore:basic_item:14>]]);

# Canvas
recipes.remove(<galacticraftcore:canvas>);
recipes.addShapedMirrored(<galacticraftcore:canvas> * 2, [[null,<thaumcraft:fabric>,<lightningcraft:rod:9>],[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>],[<lightningcraft:rod:9>,<thaumcraft:fabric>,null]]);

# Parachute
recipes.remove(<galacticraftcore:parachute>);
recipes.addShaped(<galacticraftcore:parachute>, [[<galacticraftcore:canvas>,<galacticraftcore:canvas>,<galacticraftcore:canvas>],[<lightningcraft:rod:9>,null,<lightningcraft:rod:9>],[null,<galacticraftcore:basic_item:13>,null]]);

# Oxygen Collector
recipes.remove(<galacticraftcore:collector>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:collector>,
[[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:canister>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<quantumflux:craftingpiece:4>,<galacticraftcore:canister>,<galacticraftcore:oxygen_concentrator>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:canister>,<quantumflux:craftingpiece:4>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:canister>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Oxygen Compressor
recipes.remove(<galacticraftcore:oxygen_compressor>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:oxygen_compressor>,
[[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister:1>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister:1>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:canister:1>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<quantumflux:craftingpiece:4>,<galacticraftcore:canister:1>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:machine:12>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:canister:1>,<quantumflux:craftingpiece:4>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister:1>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:canister:1>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister:1>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Light Oxygen Tank
recipes.removeShaped(<galacticraftcore:oxygen_tank_light_full:900>);
recipes.addShaped(<galacticraftcore:oxygen_tank_light_full:900>, [[<botania:manaresource:4>,<botania:manaresource:4>,<botania:manaresource:4>],[<galacticraftcore:canister>,<mekanism:gastank>.withTag({tier: 3}),<galacticraftcore:canister>],[<galacticraftcore:basic_item:7>,<contenttweaker:condensed_vis_crystal_aer>,<galacticraftcore:basic_item:7>]]);

# Medium Oxygen Tank
recipes.removeShaped(<galacticraftcore:oxygen_tank_med_full:1800>);
recipes.addShaped("galacticraft_medium_oxygen_tank", <galacticraftcore:oxygen_tank_med_full:1800>, [[<thaumcraft:metal_brass>,<thaumcraft:metal_brass>,<thaumcraft:metal_brass>],[<galacticraftcore:canister>,<galacticraftcore:oxygen_tank_light_full:*>.marked("tank"),<galacticraftcore:canister>],[<galacticraftcore:basic_item:9>,<contenttweaker:condensed_vis_crystal_aer>,<galacticraftcore:basic_item:9>]],
function(out,ins,cInfo) { return out.withDamage(ins.tank.damage+900); }, null);

# Heavy Oxygen Tank
recipes.removeShaped(<galacticraftcore:oxygen_tank_heavy_full:2700>);
recipes.addShaped("galacticraft_heavy_oxygen_tank", <galacticraftcore:oxygen_tank_heavy_full:2700>, [[<lightningcraft:ingot:2>,<lightningcraft:ingot:2>,<lightningcraft:ingot:2>],[<galacticraftcore:canister>,<galacticraftcore:oxygen_tank_med_full:*>.marked("tank"),<galacticraftcore:canister>],[<galacticraftcore:heavy_plating>,<contenttweaker:condensed_vis_crystal_aer>,<galacticraftcore:heavy_plating>]],
function(out,ins,cInfo) { return out.withDamage(ins.tank.damage+900); }, null);

# Heavy Duty Helmet
recipes.remove(<galacticraftcore:steel_helmet>);
recipes.addShaped(<galacticraftcore:steel_helmet>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<lightningcraft:mystic_helm>,<galacticraftcore:heavy_plating>]]);

# Heavy Duty Chestplate
recipes.remove(<galacticraftcore:steel_chestplate>);
recipes.addShaped(<galacticraftcore:steel_chestplate>, [[<galacticraftcore:heavy_plating>,<lightningcraft:mystic_chest>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Heavy Duty Leggings
recipes.remove(<galacticraftcore:steel_leggings>);
recipes.addShaped(<galacticraftcore:steel_leggings>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<lightningcraft:mystic_legs>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,null,<galacticraftcore:heavy_plating>]]);

# Heavy Duty Boots
recipes.remove(<galacticraftcore:steel_boots>);
recipes.addShaped(<galacticraftcore:steel_boots>, [[<galacticraftcore:heavy_plating>,null,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<lightningcraft:mystic_boots>,<galacticraftcore:heavy_plating>]]);

# Raw Meteoric Iron (alt. recipe)
mods.immersiveengineering.ArcFurnace.addRecipe(<galacticraftcore:meteoric_iron_raw> * 3, <galacticraftcore:basic_block_moon:4> * 8, null, 240, 320, [<galacticraftcore:basic_block_moon:5> * 8, <contenttweaker:cheesy_wafer>]);
#EIOAlloySmelter.addRecipe(<galacticraftcore:meteoric_iron_raw> * 3, [<galacticraftcore:basic_block_moon:4> * 8, <galacticraftcore:basic_block_moon:5> * 8, <contenttweaker:cheesy_wafer>], 16000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
<galacticraftcore:meteoric_iron_raw>.addTooltip(format.white("Obtained by mining Meteors on any Galacticraft Planet."));
<galacticraftcore:meteoric_iron_raw>.addTooltip(format.white("They're pretty rare, so an alternative recipe was also added."));

# Compressed Meteoric Iron
addGalacticraftBasicCompressedRecipe(<galacticraftcore:item_basic_moon:1>, <galacticraftcore:item_basic_moon>);

# Heavy-Duty Plate (Tier 2)
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftplanets:item_basic_mars:3>);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftplanets:item_basic_mars:3> * 3, <galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:item_basic_moon:1>,<galacticraftcore:item_basic_moon:1>,<galacticraftcore:item_basic_moon:1>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>);

# Tier 1 Booster
recipes.remove(<galacticraftcore:engine:1>);
recipes.addShaped(<galacticraftcore:engine:1>, [[<contenttweaker:sapphire_accelerator>,<contenttweaker:sapphire_accelerator>,<contenttweaker:sapphire_accelerator>],[<galacticraftcore:item_basic_moon:1>,<contenttweaker:spacerock>,<galacticraftcore:item_basic_moon:1>],[<simplyjetpacks:metaitemmods:24>,<galacticraftcore:air_vent>,<simplyjetpacks:metaitemmods:24>]]);

# NASA Workbench Schematic (Moon Buggy)
recipes.addShapeless(<galacticraftcore:schematic>, [<galacticraftcore:schematic:1>]);
<galacticraftcore:schematic>.addTooltip(format.white("Can be found in underground ") + format.gray("Moon") + format.white(" Dungeons."));
<galacticraftcore:schematic>.addTooltip(format.white("Can also be converted from the ") + format.blue("Tier 2 Rocket Schematic") + format.white("."));

# NASA Workbench Schematic (Tier 2 Rocket)
recipes.addShapeless(<galacticraftcore:schematic:1>, [<galacticraftcore:schematic>]);
<galacticraftcore:schematic:1>.addTooltip(format.white("Can be found in underground ") + format.gray("Moon") + format.white(" Dungeons."));
<galacticraftcore:schematic:1>.addTooltip(format.white("Can also be converted from the ") + format.blue("Moon Buggy Schematic") + format.white("."));

# Dungeon Locator
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:dungeonfinder>,
[[null,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,null],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<thaumcraft:ingot:2>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}),<contenttweaker:woodland_mansion_locator_token>,<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}),<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<botania:magnetringgreater>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[null,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,null]]);

# Advanced Compressor
recipes.remove(<galacticraftcore:machine4>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:machine4>,
[[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:5>,<mekanism:basicblock2:6>,<contenttweaker:cheesy_wafer>,<mekanism:basicblock2:6>,<mekanism:basicblock2:5>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:6>,<contenttweaker:cheesy_wafer>,<galacticraftcore:item_basic_moon:1>,<contenttweaker:cheesy_wafer>,<mekanism:basicblock2:6>,<galacticraftcore:heavy_plating>],
[<quantumflux:craftingpiece:4>,<contenttweaker:cheesy_wafer>,<galacticraftcore:item_basic_moon:1>,<galacticraftcore:machine2>,<galacticraftcore:item_basic_moon:1>,<contenttweaker:cheesy_wafer>,<quantumflux:craftingpiece:4>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:6>,<contenttweaker:cheesy_wafer>,<galacticraftcore:item_basic_moon:1>,<contenttweaker:cheesy_wafer>,<mekanism:basicblock2:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:5>,<mekanism:basicblock2:6>,<contenttweaker:cheesy_wafer>,<mekanism:basicblock2:6>,<mekanism:basicblock2:5>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Hidden Redstone Wire
recipes.remove(<galacticraftcore:concealed_redstone>);
recipes.addShaped(<galacticraftcore:concealed_redstone> * 4, [[null,<galacticraftcore:basic_block_core:4>,null],[<galacticraftcore:basic_block_core:4>,<projectred-transmission:wire>,<galacticraftcore:basic_block_core:4>],[null,<galacticraftcore:basic_block_core:4>,null]]);

# Heavy Duty Sword
recipes.remove(<galacticraftcore:steel_sword>);
recipes.addShaped(<galacticraftcore:steel_sword>, [[<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>],[<lightningcraft:mystic_sword>]]);

# Heavy Duty Pickaxe
recipes.remove(<galacticraftcore:steel_pickaxe>);
recipes.addShaped(<galacticraftcore:steel_pickaxe>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],[null,<bewitchment:cold_iron_pickaxe>,null],[null,<contenttweaker:galactic_ingot>,null]]);

# Heavy Duty Shovel
recipes.remove(<galacticraftcore:steel_shovel>);
recipes.addShaped(<galacticraftcore:steel_shovel>, [[<galacticraftcore:heavy_plating>],[<bewitchment:cold_iron_shovel>],[<contenttweaker:galactic_ingot>]]);

# Heavy Duty Axe
recipes.remove(<galacticraftcore:steel_axe>);
recipes.addShapedMirrored(<galacticraftcore:steel_axe>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<bewitchment:cold_iron_axe>],[null,<contenttweaker:galactic_ingot>]]);

# Heavy Duty Hoe
recipes.remove(<galacticraftcore:steel_hoe>);
recipes.addShapedMirrored(<galacticraftcore:steel_hoe>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],[null,<bewitchment:cold_iron_hoe>],[null,<contenttweaker:galactic_ingot>]]);

# Pre-Launch Checklist
recipes.remove(<galacticraftcore:prelaunch_checklist>);
recipes.addShapeless(<galacticraftcore:prelaunch_checklist>, [<minecraft:book>,<galacticraftcore:canvas>]);

# Coal Generator
recipes.remove(<galacticraftcore:machine>);
recipes.addShaped(<galacticraftcore:machine>, [[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>],[<enderio:block_stirling_generator>,<contenttweaker:galactic_machine_frame>,<enderio:block_stirling_generator>],[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>]]);

# Tier 1 Dungeon Key
<galacticraftcore:key>.addTooltip(format.white("Dropped by the ") + format.gray("Evolved Skeleton Boss"));
<galacticraftcore:key>.addTooltip(format.white("in the underground ") + format.gray("Moon Dungeon."));

# Basic Solar Panel
recipes.remove(<galacticraftcore:solar>);
recipes.addShaped(<galacticraftcore:solar>, [[<galacticraftcore:basic_item:1>,<galacticraftcore:basic_item:1>,<galacticraftcore:basic_item:1>],[<galacticraftcore:basic_item:9>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:basic_item:9>],[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:13>,<galacticraftcore:basic_item:9>]]);

# Advanced Solar Panel
recipes.remove(<galacticraftcore:solar:4>);
recipes.addShaped(<galacticraftcore:solar:4>, [[<galacticraftcore:basic_item:1>,<galacticraftcore:basic_item:1>,<galacticraftcore:basic_item:1>],[<galacticraftcore:heavy_plating>,<galacticraftcore:solar>,<galacticraftcore:heavy_plating>],[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:14>,<galacticraftcore:heavy_plating>]]);

# Energy Storage Module
recipes.remove(<galacticraftcore:machine_tiered>);
recipes.addShaped(<galacticraftcore:machine_tiered>, [[<galacticraftcore:basic_item:9>,<galacticraftcore:battery:100>,<galacticraftcore:basic_item:9>],[<galacticraftcore:battery:100>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:battery:100>],[<galacticraftcore:basic_item:9>,<plustic:osgloglasblock>,<galacticraftcore:basic_item:9>]]);

# Tin Wall Block
recipes.remove(<galacticraftcore:basic_block_core:4>);
recipes.addShaped(<galacticraftcore:basic_block_core:4> * 4, [[<ore:stone>,<galacticraftcore:basic_item:7>,<ore:stone>],[<galacticraftcore:basic_item:7>,null,<galacticraftcore:basic_item:7>],[<ore:stone>,<galacticraftcore:basic_item:7>,<ore:stone>]]);

# Oxygen Bubble Distributor
recipes.remove(<galacticraftcore:distributor>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:distributor>,
[[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:air_vent>,<galacticraftcore:air_vent>,<galacticraftcore:air_vent>,<galacticraftcore:air_vent>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:air_vent>,<galacticraftcore:air_fan>,<galacticraftcore:air_fan>,<galacticraftcore:air_fan>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>],
[<quantumflux:craftingpiece:4>,<galacticraftcore:air_vent>,<galacticraftcore:air_fan>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:air_fan>,<galacticraftcore:air_vent>,<quantumflux:craftingpiece:4>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:air_vent>,<galacticraftcore:air_fan>,<galacticraftcore:air_fan>,<galacticraftcore:air_fan>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:air_vent>,<galacticraftcore:air_vent>,<galacticraftcore:air_vent>,<galacticraftcore:air_vent>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Oxygen Decompressor
recipes.remove(<galacticraftcore:oxygen_compressor:4>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:oxygen_compressor:4>,
[[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:canister>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<quantumflux:craftingpiece:4>,<galacticraftcore:canister>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:machine:12>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:canister>,<quantumflux:craftingpiece:4>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:canister>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:canister>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Oxygen Sealer
recipes.remove(<galacticraftcore:sealer>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:sealer>,
[[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:8>,<galacticraftcore:air_vent>,<galacticraftcore:air_fan>,<galacticraftcore:air_vent>,<galacticraftcore:basic_item:8>,<galacticraftplanets:item_basic_mars:3>],
[<quantumflux:craftingpiece:4>,<galacticraftcore:basic_item:8>,<galacticraftcore:air_fan>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:air_fan>,<galacticraftcore:basic_item:8>,<quantumflux:craftingpiece:4>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:8>,<galacticraftcore:air_vent>,<galacticraftcore:air_fan>,<galacticraftcore:air_vent>,<galacticraftcore:basic_item:8>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:8>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Oxygen Detector
recipes.remove(<galacticraftcore:oxygen_detector>);
recipes.addShaped(<galacticraftcore:oxygen_detector>, [[<galacticraftplanets:item_basic_mars:3>,<enderio:block_detector_block>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:air_vent>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:air_vent>],[<galacticraftplanets:item_basic_mars:3>,<enderio:block_detector_block>,<galacticraftplanets:item_basic_mars:3>]]);

# Hidden Redstone Repeater
recipes.remove(<galacticraftcore:concealed_repeater>);
recipes.addShaped(<galacticraftcore:concealed_repeater>, [[null,<galacticraftcore:basic_block_core:4>,null],[<galacticraftcore:basic_block_core:4>,<projectred-integration:gate:10>,<galacticraftcore:basic_block_core:4>],[null,<galacticraftcore:basic_block_core:4>,null]]);

# Air Lock Controller
recipes.remove(<galacticraftcore:air_lock_frame:1>);
recipes.addShaped(<galacticraftcore:air_lock_frame:1>, [[<galacticraftcore:air_lock_frame>,<galacticraftcore:item_basic_moon:1>,<galacticraftcore:air_lock_frame>],[<galacticraftcore:item_basic_moon:1>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:item_basic_moon:1>],[<galacticraftcore:air_lock_frame>,<galacticraftcore:item_basic_moon:1>,<galacticraftcore:air_lock_frame>]]);

# Oxygen Storage Module
recipes.remove(<galacticraftcore:machine2:8>);
recipes.addShaped(<galacticraftcore:machine2:8>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:oxygen_tank_heavy_full:*>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:oxygen_tank_heavy_full:*>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:item_basic_mars:3>]]);

# Deconstructor
recipes.remove(<galacticraftcore:machine2:12>);
recipes.addShapedMirrored(<galacticraftcore:machine2:12>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>],[<lightningcraft:lightning_breaker>,<contenttweaker:galactic_machine_frame>,<actuallyadditions:block_atomic_reconstructor>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>]]);

# Chromatic Applicator
recipes.remove(<galacticraftcore:machine3>);
recipes.addShaped(<galacticraftcore:machine3>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:item_basic_moon:1>,<galacticraftcore:heavy_plating>],[<enderio:block_painter>,<contenttweaker:galactic_machine_frame>,<enderio:block_painter>],[<galacticraftcore:heavy_plating>,<galacticraftcore:item_basic_moon:1>,<galacticraftcore:heavy_plating>]]);

# Electric Furnace
recipes.remove(<galacticraftcore:machine_tiered:4>);
recipes.addShaped(<galacticraftcore:machine_tiered:4>, [[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>],[<enderio:block_simple_furnace>,<contenttweaker:galactic_machine_frame>,<enderio:block_simple_furnace>],[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>]]);

# Magnetic Crafting Table
recipes.remove(<galacticraftcore:magnetic_table>);
recipes.addShaped(<galacticraftcore:magnetic_table>, [[null,<galacticraftcore:basic_item:11>,null],[<galacticraftcore:basic_item:11>,<ore:workbench>,<galacticraftcore:basic_item:11>],[null,<quantumflux:magnet>,null]]);

# Display Screen
recipes.remove(<galacticraftcore:view_screen>);
recipes.addShaped(<galacticraftcore:view_screen>, [[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:13>,<galacticraftcore:basic_item:9>],[<galacticraftcore:basic_item:13>,<rftools:screen>,<galacticraftcore:basic_item:13>],[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:13>,<galacticraftcore:basic_item:9>]]);

# Telemetry Unit
recipes.remove(<galacticraftcore:telemetry>);
recipes.addShaped(<galacticraftcore:telemetry>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:19>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:basic_item:9>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:basic_item:9>],[<galacticraftplanets:item_basic_mars:3>,<extrautils2:scanner>,<galacticraftplanets:item_basic_mars:3>]]);

# Electric Arc Furnace
recipes.remove(<galacticraftcore:machine_tiered:12>);
recipes.addShaped(<galacticraftcore:machine_tiered:12>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:machine_tiered:4>,<galacticraftcore:basic_item:14>,<galacticraftcore:machine_tiered:4>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>]]);

# Hydraulic Platform
recipes.remove(<galacticraftcore:platform>);
recipes.addShaped(<galacticraftcore:platform> * 4, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:basic_item:9>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:basic_item:9>],[<galacticraftplanets:item_basic_mars:3>,<rftools:elevator>,<galacticraftplanets:item_basic_mars:3>]]);

# Buggy Fueling Pad
recipes.remove(<galacticraftcore:landing_pad:1>);
recipes.addShaped(<galacticraftcore:landing_pad:1> * 3, [[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>],[<galacticraftcore:landing_pad>,<galacticraftcore:landing_pad>,<galacticraftcore:landing_pad>]]);

# Buggy Wheel
recipes.remove(<galacticraftcore:buggymat>);
recipes.addShaped(<galacticraftcore:buggymat>, [[<galacticraftcore:basic_item:14>,<contenttweaker:star_leather>,<galacticraftcore:basic_item:14>],[<contenttweaker:star_leather>,<galacticraftcore:basic_item:9>,<contenttweaker:star_leather>],[<galacticraftcore:basic_item:14>,<contenttweaker:star_leather>,<galacticraftcore:basic_item:14>]]);

# Buggy Seat
recipes.remove(<galacticraftcore:buggymat:1>);
recipes.addShaped(<galacticraftcore:buggymat:1>, [[<galacticraftplanets:item_basic_mars:3>,null,<galacticraftplanets:item_basic_mars:3>],[<galacticraftplanets:item_basic_mars:3>,<bibliocraft:seatback5>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:basic_item:14>,<bibliocraft:seat>,<galacticraftcore:basic_item:14>]]);

# Buggy Storage Box
recipes.remove(<galacticraftcore:buggymat:2>);
recipes.addShaped(<galacticraftcore:buggymat:2>, [[<galacticraftcore:basic_item:9>,<contenttweaker:cheesy_wafer>,<galacticraftcore:basic_item:9>],[<galacticraftcore:basic_item:9>,<actuallyadditions:block_giant_chest_large>,<galacticraftcore:basic_item:9>],[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>]]);

# Fluid Tank
recipes.remove(<galacticraftcore:fluid_tank>);
recipes.addShaped(<galacticraftcore:fluid_tank>, [[<ore:paneGlassColorless>,<galacticraftcore:basic_item:13>,<ore:paneGlassColorless>],[<ore:paneGlassColorless>,<enderio:block_tank>,<ore:paneGlassColorless>],[<ore:paneGlassColorless>,<ore:paneGlassColorless>,<ore:paneGlassColorless>]]);

# Cargo Loader
recipes.remove(<galacticraftcore:cargo>);
recipes.addShapedMirrored(<galacticraftcore:cargo>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:9>,<galacticraftcore:heavy_plating>],[<actuallyadditions:block_giant_chest_large>,<contenttweaker:galactic_machine_frame>,<enderutilities:inserter>],[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:9>,<galacticraftcore:heavy_plating>]]);

# Cargo Unloader
recipes.remove(<galacticraftcore:cargo:4>);
recipes.addShapedMirrored(<galacticraftcore:cargo:4>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:9>,<galacticraftcore:heavy_plating>],[<actuallyadditions:block_giant_chest_large>,<contenttweaker:galactic_machine_frame>,<thermaldynamics:servo:4>],[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:9>,<galacticraftcore:heavy_plating>]]);

# Sensor Lens
recipes.remove(<galacticraftcore:sensor_lens>);
recipes.addShaped(<galacticraftcore:sensor_lens>, [[<galacticraftcore:item_basic_moon:1>,null,<galacticraftcore:item_basic_moon:1>],[null,<astralsorcery:itemcoloredlens:5>,null],[<galacticraftcore:item_basic_moon:1>,<rftools:sensor_block>,<galacticraftcore:item_basic_moon:1>]]);

# Sensor Glasses
recipes.remove(<galacticraftcore:sensor_glasses>);
recipes.addShaped(<galacticraftcore:sensor_glasses>, [[null,<botania:manaresource:16>,null],[<botania:manaresource:16>,null,<botania:manaresource:16>],[<galacticraftcore:sensor_lens>,<actuallyadditions:item_engineer_goggles_advanced>,<galacticraftcore:sensor_lens>]]);

# Ambient Thermal Controller
recipes.remove(<galacticraftcore:basic_item:20>);
recipes.addShapedMirrored(<galacticraftcore:basic_item:20>, [[<contenttweaker:cheesy_wafer>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>],[<mekanism:basicblock:14>,<projectred-core:resource_item:410>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>]]);

# Infinite Battery
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:infinite_battery>,
[[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>], 
[<projecte:item.pe_matter:1>, <galacticraftcore:battery:*>, <galacticraftcore:battery:*>, <galacticraftcore:battery:*>, <projecte:item.pe_matter:1>], 
[<contenttweaker:white_matter>, <galacticraftcore:battery:*>, <extrautils2:passivegenerator:6>, <galacticraftcore:battery:*>, <contenttweaker:white_matter>], 
[<contenttweaker:white_matter>, <galacticraftcore:battery:*>, <galacticraftcore:battery:*>, <galacticraftcore:battery:*>, <contenttweaker:white_matter>], 
[<contenttweaker:white_matter>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <contenttweaker:white_matter>]]);

# Infinite Oxygen Supply
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:infinite_oxygen>,
[[<contenttweaker:oxygen_rich_barium_calcite_perpetuator>, <galacticraftcore:oxygen_concentrator>, <galacticraftcore:oxygen_concentrator>, <galacticraftcore:oxygen_concentrator>, <contenttweaker:oxygen_rich_barium_calcite_perpetuator>], 
[<galacticraftcore:oxygen_concentrator>, <galacticraftcore:oxygen_tank_heavy_full:*>, <galacticraftcore:oxygen_tank_heavy_full:*>, <galacticraftcore:oxygen_tank_heavy_full:*>, <galacticraftcore:oxygen_concentrator>], 
[<galacticraftcore:oxygen_concentrator>, <galacticraftcore:oxygen_tank_heavy_full:*>, <galacticraftcore:infinite_battery>, <galacticraftcore:oxygen_tank_heavy_full:*>, <galacticraftcore:oxygen_concentrator>], 
[<galacticraftcore:oxygen_concentrator>, <galacticraftcore:oxygen_tank_heavy_full:*>, <galacticraftcore:oxygen_tank_heavy_full:*>, <galacticraftcore:oxygen_tank_heavy_full:*>, <galacticraftcore:oxygen_concentrator>], 
[<contenttweaker:oxygen_rich_barium_calcite_perpetuator>, <galacticraftcore:oxygen_concentrator>, <galacticraftcore:oxygen_concentrator>, <galacticraftcore:oxygen_concentrator>, <contenttweaker:oxygen_rich_barium_calcite_perpetuator>]]);

print("ENDING GalacticraftCore.zs");