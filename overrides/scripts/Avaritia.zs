# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.thaumcraft.Crucible;

print("STARTING Avaritia.zs");

# Crystal Matrix Ingot
recipes.removeShaped(<avaritia:resource:1>);
mods.immersiveengineering.ArcFurnace.addRecipe(<avaritia:resource:1>, <avaritia:resource> * 5, null, 600, 800, [<minecraft:nether_star> * 2]);
#EIOAlloySmelter.addRecipe(<avaritia:resource:1>, [<avaritia:resource> * 5, <minecraft:nether_star> * 2], 80000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
IEAlloySmelter.addRecipe(<avaritia:resource:1>, <avaritia:resource> * 5, <minecraft:nether_star> * 2, 1200);
mods.thermalexpansion.InductionSmelter.addRecipe(<avaritia:resource:1>, <avaritia:resource> * 5, <minecraft:nether_star> * 2, 80000);

# Infinity Ingot
mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:6>);

# Extreme Crafting Table
recipes.remove(<avaritia:extreme_crafting_table>);
# addition in config/modularmachinery/recipes/laser_focus_avaritia_extreme_crafting_table.json

# Singularities
mods.avaritia.Compressor.removeAll();
# recipes in extendedcrafting.zs

# Neutronium Compressor
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
mods.avaritia.ExtremeCrafting.addShaped("neutronium_compressor", <avaritia:neutronium_compressor>,
[[<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>],
[<contenttweaker:celestial_crystal_core>,<draconicevolution:chaotic_core>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<draconicevolution:chaotic_core>,<contenttweaker:celestial_crystal_core>],
[<alchemistry:ingot:95>,<contenttweaker:zysc_baach_sheet>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter>,<projecte:item.pe_matter>,<projecte:item.pe_matter>,<projecte:item.pe_matter:1>,<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:95>],
[<alchemistry:ingot:72>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter>,<contenttweaker:corrupted_draconium_block>,<contenttweaker:techy_singularity>,<contenttweaker:corrupted_draconium_block>,<projecte:item.pe_matter>,<projecte:item.pe_matter:1>,<alchemistry:ingot:72>],
[<alchemistry:ingot:72>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter>,<contenttweaker:techy_singularity>,<contenttweaker:penultimate_machine_frame>,<contenttweaker:techy_singularity>,<projecte:item.pe_matter>,<projecte:item.pe_matter:1>,<alchemistry:ingot:72>],
[<alchemistry:ingot:72>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter>,<contenttweaker:corrupted_draconium_block>,<contenttweaker:techy_singularity>,<contenttweaker:corrupted_draconium_block>,<projecte:item.pe_matter>,<projecte:item.pe_matter:1>,<alchemistry:ingot:72>],
[<alchemistry:ingot:72>,<contenttweaker:zysc_baach_sheet>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter>,<projecte:item.pe_matter>,<projecte:item.pe_matter>,<projecte:item.pe_matter:1>,<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:72>],
[<alchemistry:ingot:95>,<draconicevolution:chaotic_core>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<draconicevolution:chaotic_core>,<alchemistry:ingot:95>],
[<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<contenttweaker:celestial_crystal_core>]]);

# Neutron Collector
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutron_collector>);
mods.avaritia.ExtremeCrafting.addShaped("neutron_collector",<avaritia:neutron_collector>,
[[<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<contenttweaker:white_matter>,<contenttweaker:white_matter>,<avaritia:resource:1>,<avaritia:resource:1>,<avaritia:resource:1>,<contenttweaker:white_matter>,<contenttweaker:white_matter>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<contenttweaker:white_matter>,<avaritia:resource:1>,<contenttweaker:antimatter_cluster>,<avaritia:resource:1>,<contenttweaker:antimatter_cluster>,<avaritia:resource:1>,<contenttweaker:white_matter>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<galacticraftcore:collector>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<projecte:collector_mk3>,<extrautils2:passivegenerator:6>,<projecte:collector_mk3>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<galacticraftcore:collector>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<contenttweaker:white_matter>,<avaritia:resource:1>,<contenttweaker:antimatter_cluster>,<avaritia:resource:1>,<contenttweaker:antimatter_cluster>,<avaritia:resource:1>,<contenttweaker:white_matter>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<contenttweaker:white_matter>,<contenttweaker:white_matter>,<avaritia:resource:1>,<avaritia:resource:1>,<avaritia:resource:1>,<contenttweaker:white_matter>,<contenttweaker:white_matter>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>]]);
mods.avaritia.ExtremeCrafting.addShaped("neutron_collector2",<avaritia:neutron_collector>,
[[<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<contenttweaker:white_matter>,<contenttweaker:white_matter>,<avaritia:resource:1>,<avaritia:resource:1>,<avaritia:resource:1>,<contenttweaker:white_matter>,<contenttweaker:white_matter>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<contenttweaker:white_matter>,<avaritia:resource:1>,<contenttweaker:antimatter_cluster>,<avaritia:resource:1>,<contenttweaker:antimatter_cluster>,<avaritia:resource:1>,<contenttweaker:white_matter>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<galacticraftcore:collector>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:4>,<projecte:collector_mk3>,<avaritia:resource:4>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<galacticraftcore:collector>,<avaritia:resource:1>,<actuallyadditions:block_ranged_collector>,<avaritia:resource:1>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<contenttweaker:white_matter>,<avaritia:resource:1>,<contenttweaker:antimatter_cluster>,<avaritia:resource:1>,<contenttweaker:antimatter_cluster>,<avaritia:resource:1>,<contenttweaker:white_matter>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<contenttweaker:white_matter>,<contenttweaker:white_matter>,<avaritia:resource:1>,<avaritia:resource:1>,<avaritia:resource:1>,<contenttweaker:white_matter>,<contenttweaker:white_matter>,<extendedcrafting:material:32>],
[<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,<extendedcrafting:material:32>]]);

# Pile of Neutrons
<avaritia:resource:2>.addTooltip(format.white("Created by the Neutron Collector every"));
<avaritia:resource:2>.addTooltip(format.white("7111 ticks, or ~355 seconds/~6 minutes."));
<avaritia:resource:2>.addTooltip(format.white("You can speed this up significantly"));
<avaritia:resource:2>.addTooltip(format.white("with Watches of Flowing Time."));

# Cosmic Meatballs
mods.avaritia.ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
# recipe in config/modularmachinery/recipes/high_voltage_plasmafier_avaritia_cosmic_meatballs.json

# Ultimate Stew
mods.avaritia.ExtremeCrafting.remove(<avaritia:ultimate_stew>);
recipes.addShaped(<avaritia:ultimate_stew>, [[<avaritia:cosmic_meatballs>,<avaritia:cosmic_meatballs>,<avaritia:cosmic_meatballs>],[<bewitchment:witches_cauldron>,<avaritia:cosmic_meatballs>,<bewitchment:witches_cauldron>],[<bewitchment:witches_cauldron>,<bewitchment:witches_cauldron>,<bewitchment:witches_cauldron>]]);

# Endest Pearl
mods.avaritia.ExtremeCrafting.remove(<avaritia:endest_pearl>);
recipes.addShaped(<avaritia:endest_pearl>, [[<contenttweaker:corruption_core>,<contenttweaker:enderio_singularity>,<contenttweaker:corruption_core>],[<contenttweaker:enderio_singularity>,<extendedcrafting:material:40>,<contenttweaker:enderio_singularity>],[<contenttweaker:corruption_core>,<contenttweaker:enderio_singularity>,<contenttweaker:corruption_core>]]);

# Infinity Catalyst
mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
mods.avaritia.ExtremeCrafting.addShaped("infinity_catalyst", <avaritia:resource:5> * 3,
[[null,null,null,null,<contenttweaker:antimatter_cluster>,null,null,null,null],
[null,<contenttweaker:antimatter_cluster>,null,null,<extendedcrafting:storage:4>,null,null,<contenttweaker:antimatter_cluster>,null],
[null,null,<contenttweaker:antimatter_cluster>,<extendedcrafting:storage:4>,<avaritia:block_resource>,<extendedcrafting:storage:4>,<contenttweaker:antimatter_cluster>,null,null],
[null,null,<extendedcrafting:storage:4>,<avaritia:block_resource>,<avaritia:ultimate_stew>,<avaritia:block_resource>,<extendedcrafting:storage:4>,null,null],
[<contenttweaker:antimatter_cluster>,<extendedcrafting:storage:4>,<avaritia:block_resource>,<avaritia:endest_pearl>,<contenttweaker:essence_of_infinity>,<avaritia:endest_pearl>,<avaritia:block_resource>,<extendedcrafting:storage:4>,<contenttweaker:antimatter_cluster>],
[null,null,<extendedcrafting:storage:4>,<avaritia:block_resource>,<avaritia:ultimate_stew>,<avaritia:block_resource>,<extendedcrafting:storage:4>,null,null],
[null,null,<contenttweaker:antimatter_cluster>,<extendedcrafting:storage:4>,<avaritia:block_resource>,<extendedcrafting:storage:4>,<contenttweaker:antimatter_cluster>,null,null],
[null,<contenttweaker:antimatter_cluster>,null,null,<extendedcrafting:storage:4>,null,null,<contenttweaker:antimatter_cluster>,null],
[null,null,null,null,<contenttweaker:antimatter_cluster>,null,null,null,null]]);

# Infinity Ingot
mods.thaumcraft.Crucible.registerRecipe("infinity_ingot", "", <avaritia:resource:6>, <avaritia:resource:5>, [<aspect:auram> * 250, <aspect:sol> * 250, <aspect:luna> * 250, <aspect:diabolus> * 100, <aspect:praecantatio> * 100]);

print("ENDING Avaritia.zs");
