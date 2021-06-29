# Author: Atricos

import mods.thermalexpansion.Transposer;

print("STARTING AgriCraft.zs");

# Crops Sticks
mods.thermalexpansion.Transposer.addFillRecipe(<agricraft:crop_sticks>, <ore:stickWood>.firstItem * 4, <liquid:growth_infusion_liquid> * 10, 8000);

print("ENDING AgriCraft.zs");