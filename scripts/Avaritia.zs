# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;

print("STARTING Avaritia.zs");

# Crystal Matrix Ingot
recipes.removeShaped(<avaritia:resource:1>);
mods.immersiveengineering.ArcFurnace.addRecipe(<avaritia:resource:1>, <avaritia:resource> * 5, null, 600, 800, [<minecraft:nether_star> * 2]);
EIOAlloySmelter.addRecipe(<avaritia:resource:1>, [<avaritia:resource> * 5, <minecraft:nether_star> * 2], 80000);
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

print("ENDING Avaritia.zs");