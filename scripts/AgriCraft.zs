# Author: Atricos

import mods.thermalexpansion.Transposer;

print("STARTING AgriCraft.zs");

# Crops Sticks
recipes.remove(<agricraft:crop_sticks>);
for stick in <ore:stickWood>.items {
	mods.thermalexpansion.Transposer.addFillRecipe(<agricraft:crop_sticks>, stick * 4, <liquid:growth_infusion_liquid> * 10, 1000);
}

print("ENDING AgriCraft.zs");