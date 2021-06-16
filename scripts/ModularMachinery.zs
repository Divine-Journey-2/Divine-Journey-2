# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;

print("STARTING ModularMachinery.zs");

# Modularium
recipes.remove(<modularmachinery:itemmodularium>);
EIOAlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 16, [<plustic:mirioningot>,<enderutilities:enderpart:2>,<botania:quartz> * 4], 24000);
mods.immersiveengineering.ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 16, <plustic:mirioningot>, null, 120, 400, [<enderutilities:enderpart:2>,<botania:quartz> * 4]);

# Modular Fey Crafter Machine Blueprint
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:modular_fey_crafter"}), [<roots:fey_crafter>,<modularmachinery:itemmodularium>,<minecraft:paper>]);

# Tender Ender Blender Machine Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:tender_ender_blender"}), [[<modularmachinery:itemmodularium>,<thaumcraft:plate:2>,<modularmachinery:itemmodularium>],[<minecraft:paper>,<botania:endereyeblock>,<minecraft:paper>],[<modularmachinery:itemmodularium>,<thaumcraft:plate:2>,<modularmachinery:itemmodularium>]]);

# Auto Infusion Matrix Machine Blueprint
recipes.addShapedMirrored(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:auto_infusion_matrix"}), [[<minecraft:paper>,<contenttweaker:condensed_vis_crystal_cognitio>,<minecraft:paper>],[<thaumcraft:matrix_speed>,<thaumicaugmentation:material:3>,<thaumcraft:matrix_cost>],[<minecraft:paper>,<contenttweaker:condensed_vis_crystal_cognitio>,<minecraft:paper>]]);

# Liquicrafter Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:liquicrafter"}), [[<galacticraftcore:heavy_plating>,<minecraft:paper>,<galacticraftcore:heavy_plating>],[<industrialforegoing:fluid_crafter>,<lightningcraft:material:9>,<industrialforegoing:fluid_crafter>],[<galacticraftcore:heavy_plating>,<minecraft:paper>,<galacticraftcore:heavy_plating>]]);

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

# Reinforced Item Input
recipes.addShaped(<modularmachinery:blockinputbus:3>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>],[<galacticraftcore:basic_item:11>,<modularmachinery:blockinputbus:2>,<galacticraftcore:basic_item:11>],[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>]]);

# Reinforced Item Output
recipes.addShaped(<modularmachinery:blockoutputbus:3>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>],[<galacticraftcore:basic_item:11>,<modularmachinery:blockoutputbus:2>,<galacticraftcore:basic_item:11>],[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>]]);

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

# Big Energy Input Hatch
recipes.addShaped(<modularmachinery:blockenergyinputhatch:4>, [[<thaumcraft:plate:2>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "potentia"}]}),<thaumcraft:plate:2>],[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "potentia"}]}),<modularmachinery:blockenergyinputhatch:3>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "potentia"}]})],[<thaumcraft:plate:2>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "potentia"}]}),<thaumcraft:plate:2>]]);

# Reinforced Machine Casing
recipes.remove(<modularmachinery:blockcasing:4>);
recipes.addShaped(<modularmachinery:blockcasing:4>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>],[<galacticraftcore:basic_item:11>,<modularmachinery:blockcasing>,<galacticraftcore:basic_item:11>],[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>]]);

# Machine Vent
recipes.remove(<modularmachinery:blockcasing:1>);
recipes.addShaped(<modularmachinery:blockcasing:1>, [[<galacticraftcore:basic_item:11>,<galacticraftcore:air_vent>,<galacticraftcore:basic_item:11>],[<galacticraftcore:air_vent>,<modularmachinery:blockcasing>,<galacticraftcore:air_vent>],[<galacticraftcore:basic_item:11>,<galacticraftcore:air_vent>,<galacticraftcore:basic_item:11>]]);

# Tiny Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.addShapeless(<modularmachinery:blockfluidinputhatch>, [<modularmachinery:blockcasing>,<appliedenergistics2:part:241>]);

# Small Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch:1>);
recipes.addShapeless(<modularmachinery:blockfluidinputhatch:1>, [<modularmachinery:blockfluidinputhatch>,<appliedenergistics2:material:27>,<modularmachinery:itemmodularium>]);

# Normal Fluid Input Hatch
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<bloodmagic:blood_rune:5>,<modularmachinery:blockfluidinputhatch:1>,<bloodmagic:blood_rune:5>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>]]);

# Reinforced Fluid Input Hatch
recipes.addShaped(<modularmachinery:blockfluidinputhatch:3>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>],[<galacticraftcore:basic_item:11>,<modularmachinery:blockfluidinputhatch:2>,<galacticraftcore:basic_item:11>],[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>]]);

# Tiny Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch>, [<modularmachinery:blockcasing>,<appliedenergistics2:part:261>]);

# Small Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch:1>);
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:1>, [<modularmachinery:blockfluidoutputhatch>,<appliedenergistics2:material:27>,<modularmachinery:itemmodularium>]);

# Normal Fluid Output Hatch
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<bloodmagic:blood_rune:5>,<modularmachinery:blockfluidoutputhatch:1>,<bloodmagic:blood_rune:5>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>]]);

# Reinforced Fluid Output Hatch
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3>, [[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>],[<galacticraftcore:basic_item:11>,<modularmachinery:blockfluidoutputhatch:2>,<galacticraftcore:basic_item:11>],[<galacticraftcore:heavy_plating>,<galacticraftcore:basic_item:11>,<galacticraftcore:heavy_plating>]]);

print("ENDING ModularMachinery.zs");