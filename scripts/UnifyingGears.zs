#priority 9
# Author: Atricos

import mods.tconstruct.Casting;
import mods.immersiveengineering.MetalPress;
import mods.thermalexpansion.Compactor;
import mods.tconstruct.Melting;

print("STARTING UnifyingGears.zs");

# Wooden Gears
#recipes.replaceAllOccurences(<ore:gearWood>, <thermalfoundation:material:22>, <*>);
<ore:gearWood>.removeItems([<appliedenergistics2:material:40>, <enderio:item_material:9>]);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:23>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:23>, <thermalfoundation:material:22>, <liquid:stone>, 288, true, 1000);
recipes.remove(<appliedenergistics2:material:40>);
recipes.remove(<enderio:item_material:9>);

# Stone Gears
#recipes.replaceAllOccurences(<ore:gearStone>, <thermalfoundation:material:23>, <*>);
<ore:gearStone>.remove(<enderio:item_material:10>);
recipes.remove(<enderio:item_material:10>);

# Diamond Gear
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:26>, <minecraft:diamond>, <immersiveengineering:mold:1>, 4000, 4);

# Emerald Gear
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:27>, <minecraft:emerald>, <immersiveengineering:mold:1>, 4000, 4);

# Titanium Gear
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand:*>, <libvulpes:productgear:7>);
mods.tconstruct.Casting.removeTableRecipe(<libvulpes:productgear:7>);
recipes.remove(<libvulpes:productgear:7>);
#mods.thermalexpansion.Compactor.removeGearRecipe(<libvulpes:productingot:7>);
mods.thermalexpansion.Compactor.removeGearRecipe(<galacticraftplanets:item_basic_asteroids>);
mods.immersiveengineering.MetalPress.removeRecipe(<libvulpes:productgear:7>);
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>, <libvulpes:productgear:7>);
mods.tconstruct.Melting.addRecipe(<liquid:titanium> * 576, <contenttweaker:titanium_gear>, 984);
mods.thermalexpansion.InductionSmelter.addRecipe(<galacticraftplanets:item_basic_asteroids> * 4, <minecraft:sand:*>, <contenttweaker:titanium_gear>, 3000, <thermalfoundation:material:864>, 20);
recipes.addShaped(<contenttweaker:titanium_gear>, [[null,<galacticraftplanets:item_basic_asteroids>,null],[<galacticraftplanets:item_basic_asteroids>,<minecraft:iron_ingot>,<galacticraftplanets:item_basic_asteroids>],[null,<galacticraftplanets:item_basic_asteroids>,null]]);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:titanium_gear>, <tconstruct:cast_custom:4>, <liquid:titanium>, 576, false);
mods.thermalexpansion.Compactor.addGearRecipe(<contenttweaker:titanium_gear>, <galacticraftplanets:item_basic_asteroids> * 4, 4000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:titanium_gear>, <galacticraftplanets:item_basic_asteroids>, <immersiveengineering:mold:1>, 4000, 4);

print("ENDING UnifyingGears.zs");