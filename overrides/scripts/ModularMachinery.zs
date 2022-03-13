# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;

print("STARTING ModularMachinery.zs");

# Modularium
recipes.remove(<modularmachinery:itemmodularium>);
#EIOAlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 16, [<plustic:mirioningot>,<enderutilities:enderpart:2>,<botania:quartz> * 4], 24000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
mods.immersiveengineering.ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 16, <plustic:mirioningot>, null, 120, 400, [<enderutilities:enderpart:2>,<botania:quartz> * 4]);

# Tender Ender Blender Machine Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:tender_ender_blender"}), [[<modularmachinery:itemmodularium>,<thaumcraft:plate:2>,<modularmachinery:itemmodularium>],[<minecraft:paper>,<botania:endereyeblock>,<minecraft:paper>],[<modularmachinery:itemmodularium>,<thaumcraft:plate:2>,<modularmachinery:itemmodularium>]]);

# Auto Infusion Matrix Machine Blueprint
recipes.addShapedMirrored(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:auto_infusion_matrix"}), [[<minecraft:paper>,<contenttweaker:condensed_vis_crystal_cognitio>,<minecraft:paper>],[<thaumcraft:matrix_speed>,<thaumicaugmentation:material:3>,<thaumcraft:matrix_cost>],[<minecraft:paper>,<contenttweaker:condensed_vis_crystal_cognitio>,<minecraft:paper>]]);

# Lightningcraft Infusion Machine Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:lightningcraft_infusion_multiblock"}), [[<minecraft:paper>,<lightningcraft:material:4>,<minecraft:paper>],[<lightningcraft:material:4>,<lightningcraft:static_generator>,<lightningcraft:material:4>],[<minecraft:paper>,<lightningcraft:material:4>,<minecraft:paper>]]);

# Liquicrafter Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:liquicrafter"}), [[<galacticraftcore:heavy_plating>,<minecraft:paper>,<galacticraftcore:heavy_plating>],[<industrialforegoing:fluid_crafter>,<lightningcraft:material:9>,<industrialforegoing:fluid_crafter>],[<galacticraftcore:heavy_plating>,<minecraft:paper>,<galacticraftcore:heavy_plating>]]);

# Ultimate Compressor Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ultimate_compressor"}), [[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:basic_item:14>,<minecraft:paper>,<galacticraftcore:basic_item:14>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Laser Focus Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:laser_focus"}), [[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],[<minecraft:paper>,<mekanism:machineblock2:14>,<mekanism:machineblock2:13>],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Chemical Caster Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:chemical_caster"}), [[<draconicevolution:chaos_shard:1>,<draconicevolution:chaos_shard:1>,<draconicevolution:chaos_shard:1>],[<minecraft:paper>,<alchemistry:compound:13>,<minecraft:paper>],[<draconicevolution:chaos_shard:1>,<draconicevolution:chaos_shard:1>,<draconicevolution:chaos_shard:1>]]);

# Weak Fusion Plant Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:weak_fusion_plant"}), [[<alchemistry:ingot:42>,<minecraft:paper>,<alchemistry:ingot:42>],[<contenttweaker:ruby_rubidium>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:ruby_rubidium>],[<alchemistry:ingot:42>,<minecraft:paper>,<alchemistry:ingot:42>]]);

# Mass Inscriber Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mass_inscriber"}), [[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],[<contenttweaker:scheduling_processor>,<minecraft:paper>,<contenttweaker:scheduling_processor>],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Mob Loot Fabricator Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mob_loot_fabricator"}), [[<astralsorcery:itemusabledust:1>,<evilcraft:vein_sword>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}),<astralsorcery:itemusabledust:1>],[<mob_grinding_utils:saw>,<minecraft:paper>,<mob_grinding_utils:saw>],[<astralsorcery:itemusabledust:1>,<evilcraft:vein_sword>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}),<astralsorcery:itemusabledust:1>]]);

# High Voltage Plasmafier Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:high_voltage_plasmafier"}), [[<alchemistry:ingot:90>,<contenttweaker:essence_of_atomic_fusion>,<alchemistry:ingot:90>],[<contenttweaker:plasma_core>,<minecraft:paper>,<contenttweaker:plasma_core>],[<alchemistry:ingot:90>,<contenttweaker:essence_of_atomic_fusion>,<alchemistry:ingot:90>]]);

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

# Big Item Input
recipes.addShaped(<modularmachinery:blockinputbus:4>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:basic_item:13>,<modularmachinery:blockinputbus:3>,<galacticraftcore:basic_item:13>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_mars:3>]]);

# Big Item Output
recipes.addShaped(<modularmachinery:blockoutputbus:4>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:basic_item:13>,<modularmachinery:blockoutputbus:3>,<galacticraftcore:basic_item:13>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_mars:3>]]);

# Huge Item Input
recipes.addShaped(<modularmachinery:blockinputbus:5>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>],[<draconicevolution:draconic_core>,<modularmachinery:blockinputbus:4>,<draconicevolution:draconic_core>],[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Huge Item Output
recipes.addShaped(<modularmachinery:blockoutputbus:5>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>],[<draconicevolution:draconic_core>,<modularmachinery:blockoutputbus:4>,<draconicevolution:draconic_core>],[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Ludicrous Item Input
recipes.addShaped(<modularmachinery:blockinputbus:6>, [[<alchemistry:ingot:90>,<contenttweaker:perfectium_ball>,<alchemistry:ingot:90>],[<contenttweaker:perfectium_ball>,<modularmachinery:blockinputbus:5>,<contenttweaker:perfectium_ball>],[<alchemistry:ingot:90>,<contenttweaker:perfectium_ball>,<alchemistry:ingot:90>]]);

# Ludicrous Item Output
recipes.addShaped(<modularmachinery:blockoutputbus:6>, [[<alchemistry:ingot:90>,<contenttweaker:perfectium_ball>,<alchemistry:ingot:90>],[<contenttweaker:perfectium_ball>,<modularmachinery:blockoutputbus:5>,<contenttweaker:perfectium_ball>],[<alchemistry:ingot:90>,<contenttweaker:perfectium_ball>,<alchemistry:ingot:90>]]);

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

# Huge Energy Input Hatch
recipes.addShaped(<modularmachinery:blockenergyinputhatch:5>, [[<contenttweaker:lightning_charge>,<contenttweaker:travelers_tenacity>,<contenttweaker:lightning_charge>],[<contenttweaker:travelers_tenacity>,<modularmachinery:blockenergyinputhatch:4>,<contenttweaker:travelers_tenacity>],[<contenttweaker:lightning_charge>,<contenttweaker:travelers_tenacity>,<contenttweaker:lightning_charge>]]);

# Ludicrous Energy Input Hatch
recipes.addShaped(<modularmachinery:blockenergyinputhatch:6>, [[<draconicadditions:chaotic_energy_core>,<avaritia:resource:1>,<draconicadditions:chaotic_energy_core>],[<avaritia:resource:1>,<modularmachinery:blockenergyinputhatch:5>,<avaritia:resource:1>],[<draconicadditions:chaotic_energy_core>,<avaritia:resource:1>,<draconicadditions:chaotic_energy_core>]]);

# Ultimate Energy Input Hatch
recipes.addShaped(<modularmachinery:blockenergyinputhatch:7>, [[<contenttweaker:corrupted_dragon_token>,<contenttweaker:ruby_rubidium>,<contenttweaker:corrupted_dragon_token>],[<contenttweaker:ruby_rubidium>,<modularmachinery:blockenergyinputhatch:6>,<contenttweaker:ruby_rubidium>],[<contenttweaker:corrupted_dragon_token>,<contenttweaker:ruby_rubidium>,<contenttweaker:corrupted_dragon_token>]]);

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

# Big Fluid Input hatch
recipes.addShaped(<modularmachinery:blockfluidinputhatch:4>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:basic_item:13>,<modularmachinery:blockfluidinputhatch:3>,<galacticraftcore:basic_item:13>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_mars:3>]]);

# Huge Fluid Input Hatch
recipes.addShaped(<modularmachinery:blockfluidinputhatch:5>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>],[<draconicevolution:draconic_core>,<modularmachinery:blockfluidinputhatch:4>,<draconicevolution:draconic_core>],[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Ludicrous Fluid Input Hatch
recipes.addShaped(<modularmachinery:blockfluidinputhatch:6>, [[<alchemistry:ingot:90>,<contenttweaker:perfectium_ball>,<alchemistry:ingot:90>],[<contenttweaker:perfectium_ball>,<modularmachinery:blockfluidinputhatch:5>,<contenttweaker:perfectium_ball>],[<alchemistry:ingot:90>,<contenttweaker:perfectium_ball>,<alchemistry:ingot:90>]]);

# Vacuum Fluid Input Hatch
recipes.addShaped(<modularmachinery:blockfluidinputhatch:7>, [[<alchemistry:ingot:91>,<projecte:item.pe_matter>,<alchemistry:ingot:91>],[<projecte:item.pe_matter>,<modularmachinery:blockfluidinputhatch:6>,<projecte:item.pe_matter>],[<alchemistry:ingot:91>,<projecte:item.pe_matter>,<alchemistry:ingot:91>]]);

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

# Big Fluid Input hatch
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:basic_item:13>,<modularmachinery:blockfluidoutputhatch:3>,<galacticraftcore:basic_item:13>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_mars:3>]]);

# Huge Fluid Input Hatch
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:5>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>],[<draconicevolution:draconic_core>,<modularmachinery:blockfluidoutputhatch:4>,<draconicevolution:draconic_core>],[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Ludicrous Fluid Input Hatch
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:6>, [[<alchemistry:ingot:90>,<contenttweaker:perfectium_ball>,<alchemistry:ingot:90>],[<contenttweaker:perfectium_ball>,<modularmachinery:blockfluidoutputhatch:5>,<contenttweaker:perfectium_ball>],[<alchemistry:ingot:90>,<contenttweaker:perfectium_ball>,<alchemistry:ingot:90>]]);

# Vacuum Fluid Input Hatch
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:7>, [[<alchemistry:ingot:91>,<projecte:item.pe_matter>,<alchemistry:ingot:91>],[<projecte:item.pe_matter>,<modularmachinery:blockfluidoutputhatch:6>,<projecte:item.pe_matter>],[<alchemistry:ingot:91>,<projecte:item.pe_matter>,<alchemistry:ingot:91>]]);

# Firebox Casing
recipes.remove(<modularmachinery:blockcasing:2>);
recipes.addShaped(<modularmachinery:blockcasing:2>, [[<galacticraftplanets:item_basic_asteroids:5>,<botania:quartztypeblaze>,<galacticraftplanets:item_basic_asteroids:5>],[<actuallyadditions:block_shock_suppressor>,<modularmachinery:blockcasing>,<actuallyadditions:block_shock_suppressor>],[<galacticraftplanets:item_basic_asteroids:5>,<botania:quartztypeblaze>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Machine Circuitry
recipes.addShaped(<modularmachinery:blockcasing:5>, [[<modularmachinery:blockcasing:4>,<contenttweaker:zysc_baach_sheet>,<modularmachinery:blockcasing:4>],[<contenttweaker:zysc_baach_sheet>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:zysc_baach_sheet>],[<modularmachinery:blockcasing:4>,<contenttweaker:zysc_baach_sheet>,<modularmachinery:blockcasing:4>]]);

# Machine Gearbox
recipes.addShaped(<modularmachinery:blockcasing:3>, [[<modularmachinery:blockcasing:4>,<contenttweaker:vmb_compound>,<modularmachinery:blockcasing:4>],[<contenttweaker:vmb_compound>,<contenttweaker:titanium_gear>,<contenttweaker:vmb_compound>],[<modularmachinery:blockcasing:4>,<contenttweaker:vmb_compound>,<modularmachinery:blockcasing:4>]]);

# Removing unused components
recipes.remove(<modularmachinery:blockenergyoutputhatch>);
recipes.remove(<modularmachinery:blockenergyoutputhatch:1>);

print("ENDING ModularMachinery.zs");
