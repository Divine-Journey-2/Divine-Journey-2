# Author: Atricos
# The original PlusTiC mod got taken down, now externally it's called xXx_MoreToolMats_xXx, however, internally, it's still called PlusTiC.

import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.thermalexpansion.InductionSmelter;
import mods.actuallyadditions.Empowerer;

print("STARTING PlusTiC.zs");

# Osgloglas in the Arc Furnace and Alloy Smelter
mods.immersiveengineering.ArcFurnace.addRecipe(<plustic:osgloglasingot>, <ore:ingotOsmium>, null, 200, 256, [<mekanism:ingot>, <mekanism:ingot:3>]);
mods.enderio.AlloySmelter.addRecipe(<plustic:osgloglasingot>, [<ore:ingotOsmium>, <mekanism:ingot>, <mekanism:ingot:3>], 20000);

# Osmiridium in the Arc Furnace, EnderIO Alloy Smelter, Immersive Alloy Smelter, Induction Smelter
mods.immersiveengineering.ArcFurnace.addRecipe(<plustic:osmiridiumingot> * 2, <mekanism:ingot:1>, null, 80, 200, [<thermalfoundation:material:135>], "Alloying");
EIOAlloySmelter.addRecipe(<plustic:osmiridiumingot> * 2, [<mekanism:ingot:1>, <thermalfoundation:material:135>], 4000);
IEAlloySmelter.addRecipe(<plustic:osmiridiumingot> * 2, <mekanism:ingot:1>, <thermalfoundation:material:135>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<plustic:osmiridiumingot> * 2, <mekanism:ingot:1>, <thermalfoundation:material:135>, 4000);

# Mirion Ingot
mods.actuallyadditions.Empowerer.addRecipe(<plustic:mirioningot> * 4, <minecraft:glass>, <tconstruct:ingots>, <botania:manaresource>, <botania:manaresource:7>, <botania:manaresource:4>, 4000, 100, [0.828125, 0.89453125, 0.546875]);

# Centrifuge Core
recipes.remove(<plustic:centrifuge:1>);
recipes.addShaped(<plustic:centrifuge:1>, [[<thermalfoundation:material:136>,<thermalfoundation:material:136>,<thermalfoundation:material:136>],[<thermalfoundation:material:136>,<tconstruct:seared_tank>,<thermalfoundation:material:136>],[<thermalfoundation:material:136>,<thermalexpansion:machine:10>,<thermalfoundation:material:136>]]);

# Centrifuge Tank
recipes.remove(<plustic:centrifuge>);
recipes.addShaped(<plustic:centrifuge>, [[<thermalfoundation:material:136>,<thermalfoundation:material:136>,<thermalfoundation:material:136>],[<thermalfoundation:material:136>,<tconstruct:seared_tank>,<thermalfoundation:material:136>],[<thermalfoundation:material:136>,<thermalfoundation:material:136>,<thermalfoundation:material:136>]]);

print("ENDING PlusTiC.zs");