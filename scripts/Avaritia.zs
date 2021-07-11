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

print("ENDING Avaritia.zs");