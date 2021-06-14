# Author: Atricos

import mods.enderio.SliceNSplice;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("STARTING GalacticraftCore.zs");

# Removing Wires, as they cause a crash when broken
recipes.remove(<galacticraftcore:aluminum_wire>);
recipes.remove(<galacticraftcore:aluminum_wire:1>);
recipes.remove(<galacticraftcore:aluminum_wire:2>);
recipes.remove(<galacticraftcore:aluminum_wire:3>);
recipes.remove(<galacticraftcore:enclosed:15>);
recipes.remove(<galacticraftcore:enclosed:14>);
recipes.remove(<galacticraftplanets:walkway:1>);

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
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:13> * 3);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:13> * 5, <quantumflux:craftingpiece:4>, <projectred-core:resource_item:301>, <projectred-core:resource_item:301>, <contenttweaker:rainbow_tablet>, <botania:rune:10>);

# Advanced Wafer
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:14>);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:14> * 5, <quantumflux:craftingpiece:4>, <projectred-core:resource_item:320>, <projectred-core:resource_item:320>, <contenttweaker:rainbow_tablet>, <botania:rune:9>);

# Blue Solar Wafer
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:12> * 9);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:12> * 5, <quantumflux:craftingpiece:4>, <projectred-core:resource_item:342>, <projectred-core:resource_item:342>, <contenttweaker:rainbow_tablet>, <botania:rune:14>);

# Tin Canister
recipes.remove(<galacticraftcore:canister>);
mods.enderio.SliceNSplice.addRecipe(<galacticraftcore:canister> * 4, [<contenttweaker:galactic_ingot>,<bewitchment:stone_ichor>,<contenttweaker:galactic_ingot>,<thermalfoundation:storage:1>,<thaumcraft:everfull_urn>,<thermalfoundation:storage:1>], 40000);

# Copper Canister
recipes.remove(<galacticraftcore:canister:1>);
mods.enderio.SliceNSplice.addRecipe(<galacticraftcore:canister:1> * 4, [<contenttweaker:galactic_ingot>,<bewitchment:otherworldly_tears>,<contenttweaker:galactic_ingot>,<thermalfoundation:storage>,<thaumcraft:everfull_urn>,<thermalfoundation:storage>], 40000);

# Compressor
recipes.remove(<galacticraftcore:machine:12>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftcore:machine:12>,
[[<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<quantumflux:craftingpiece:4>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<galacticraftcore:basic_item:13>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<mekanism:controlcircuit:3>,<galacticraftcore:basic_item:13>,<mekanism:machineblock:7>.withTag({recipeType: 3, mekData: {}}),<galacticraftcore:basic_item:13>,<mekanism:controlcircuit:3>,<contenttweaker:tough_galactic_plating>],
[<quantumflux:craftingpiece:4>,<galacticraftcore:basic_item:13>,<mekanism:machineblock:7>.withTag({recipeType: 3, mekData: {}}),<contenttweaker:galactic_machine_frame>,<mekanism:machineblock:7>.withTag({recipeType: 3, mekData: {}}),<galacticraftcore:basic_item:13>,<quantumflux:craftingpiece:4>],
[<contenttweaker:tough_galactic_plating>,<mekanism:controlcircuit:3>,<galacticraftcore:basic_item:13>,<mekanism:machineblock:7>.withTag({recipeType: 3, mekData: {}}),<galacticraftcore:basic_item:13>,<mekanism:controlcircuit:3>,<contenttweaker:tough_galactic_plating>],
[<contenttweaker:tough_galactic_plating>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<galacticraftcore:basic_item:13>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<contenttweaker:tough_galactic_plating>],
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

print("ENDING GalacticraftCore.zs");