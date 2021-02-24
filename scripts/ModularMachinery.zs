# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;

print("STARTING ModularMachinery.zs");

# Modularium
recipes.remove(<modularmachinery:itemmodularium>);
EIOAlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 6, [<plustic:mirioningot>,<enderutilities:enderpart:2>,<botania:quartz> * 4], 24000);
mods.immersiveengineering.ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 6, <plustic:mirioningot>, null, 120, 400, [<enderutilities:enderpart:2>,<botania:quartz> * 4]);

# Modular Fey Crafter Machine Blueprint
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:modular_fey_crafter"}), [<roots:fey_crafter>,<modularmachinery:itemmodularium>,<minecraft:paper>]);

# Tender Ender Blender Machine Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:tender_ender_blender"}), [[<modularmachinery:itemmodularium>,<thaumcraft:plate:2>,<modularmachinery:itemmodularium>],[<minecraft:paper>,<botania:endereyeblock>,<minecraft:paper>],[<modularmachinery:itemmodularium>,<thaumcraft:plate:2>,<modularmachinery:itemmodularium>]]);

# Machine Casing
recipes.remove(<modularmachinery:blockcasing>);
recipes.addShaped(<modularmachinery:blockcasing> * 4, [[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>,<mekanism:basicblock:8>,<modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>]]);

# Machine Controller
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<quantumflux:craftingpiece:4>,<extendedcrafting:frame>,<quantumflux:craftingpiece:4>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>]]);

# Tiny Item Input
recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShapeless(<modularmachinery:blockinputbus>, [<modularmachinery:blockcasing>,<appliedenergistics2:part:240>]);

# Tiny Item Output
recipes.remove(<modularmachinery:blockoutputbus>);
recipes.addShapeless(<modularmachinery:blockoutputbus>, [<modularmachinery:blockcasing>,<appliedenergistics2:part:260>]);

# Small Item Input
recipes.remove(<modularmachinery:blockinputbus:1>);
recipes.addShapeless(<modularmachinery:blockinputbus:1>, [<modularmachinery:blockinputbus>,<appliedenergistics2:material:27>,<modularmachinery:itemmodularium>]);

# Small Item Output
recipes.remove(<modularmachinery:blockoutputbus:1>);
recipes.addShapeless(<modularmachinery:blockoutputbus:1>, [<modularmachinery:blockoutputbus>,<appliedenergistics2:material:27>,<modularmachinery:itemmodularium>]);

# Normal Item Input
recipes.addShaped(<modularmachinery:blockinputbus:2>, [[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<bloodmagic:blood_rune:6>,<modularmachinery:blockinputbus:1>,<bloodmagic:blood_rune:6>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>]]);

# Normal Item Output
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<bloodmagic:blood_rune:6>,<modularmachinery:blockoutputbus:1>,<bloodmagic:blood_rune:6>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>]]);

# Tiny Energy Input Hatch
recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch>, [[null,<mekanism:energyupgrade>,null],[<mekanism:energyupgrade>,<modularmachinery:blockcasing>,<mekanism:energyupgrade>],[null,<mekanism:energyupgrade>,null]]);

# Small Energy Input Hatch
recipes.remove(<modularmachinery:blockenergyinputhatch:1>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:1>, [[null,<teslacorelib:energy_tier1>,null],[<teslacorelib:energy_tier1>,<modularmachinery:blockenergyinputhatch>,<teslacorelib:energy_tier1>],[null,<teslacorelib:energy_tier1>,null]]);

# Normal Energy Input Hatch
recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>, [[null,<teslacorelib:energy_tier2>,null],[<teslacorelib:energy_tier2>,<modularmachinery:blockenergyinputhatch:1>,<teslacorelib:energy_tier2>],[null,<teslacorelib:energy_tier2>,null]]);

# Reinforced Energy Input Hatch
recipes.addShaped(<modularmachinery:blockenergyinputhatch:3>, [[null,<contenttweaker:virtus>,null],[<contenttweaker:virtus>,<modularmachinery:blockenergyinputhatch:2>,<contenttweaker:virtus>],[null,<contenttweaker:virtus>,null]]);

print("ENDING ModularMachinery.zs");