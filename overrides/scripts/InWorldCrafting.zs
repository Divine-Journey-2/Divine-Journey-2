# Author: Atricos

import mods.inworldcrafting.FluidToItem;

print("STARTING InWorldCrafting.zs");

mods.inworldcrafting.FluidToItem.transform(<minecraft:iron_ingot>, <liquid:water>, [<contenttweaker:burning_essence>, <contenttweaker:rough_iron_mesh>], false);

# Fully charge the sun crystal
mods.inworldcrafting.FluidToItem.transform(<extrautils2:suncrystal>, <liquid:liquid_sunshine>, [<extrautils2:suncrystal:*>], false);

print("ENDING InWorldCrafting.zs");
