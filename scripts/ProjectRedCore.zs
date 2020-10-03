# Author: Atricos

import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;

print("STARTING ProjectRedCore.zs");

# Red Alloy Ingot
mods.immersiveengineering.AlloySmelter.removeRecipe(<projectred-core:resource_item:103>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<projectred-core:resource_item:103>);
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:103>, <projectred-core:resource_item:251>, null,  200, 128);

print("ENDING ProjectRedCore.zs");