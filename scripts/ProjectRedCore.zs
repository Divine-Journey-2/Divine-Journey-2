#priority -10
# Author: Atricos

import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.Pulverizer;
import mods.actuallyadditions.Crusher as AACrusher;
import mods.astralsorcery.StarlightInfusion;
import mods.astralsorcery.Grindstone;
import mods.thermalexpansion.RedstoneFurnace;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.extrautils2.Crusher as EUCrusher;
import mods.appliedenergistics2.Grinder;
import mods.enderio.SagMill;
import moretweaker.lightningcraft.LightningCrusher;
import mods.thermalexpansion.InductionSmelter;
import mods.roots.Mortar;

print("STARTING ProjectRedCore.zs");

# Red Alloy Ingot
mods.immersiveengineering.AlloySmelter.removeRecipe(<projectred-core:resource_item:103>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<projectred-core:resource_item:103>);
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:103>, <projectred-core:resource_item:251>, null,  200, 128);

# Using a custom Electrotine item, because CraftTweaker Block Drops can't recognize mod names with a dash, like 'projectred-core'
# Removing Electrotine (rest is in ContentTweakerRecipes.zs under # Electrotine)
recipes.remove(<projectred-core:resource_item:105>);

# Electrotine Ore Processing (has to be lower priority than the item's creation)
# Removals
mods.thermalexpansion.Pulverizer.removeRecipe(<contenttweaker:electrotine_ore>);
mods.actuallyadditions.Crusher.removeRecipe(<contenttweaker:electrotine>);
mods.astralsorcery.Grindstone.removeRecipe(<contenttweaker:electrotine>);
# Additions
recipes.addShapeless(<contenttweaker:electrotine> * 4, [<contenttweaker:electrotine_ore>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<contenttweaker:electrotine> * 4, <contenttweaker:electrotine_ore>, 4000);
AACrusher.addRecipe(<contenttweaker:electrotine> * 4, <contenttweaker:electrotine_ore>);
mods.astralsorcery.Grindstone.addRecipe(<contenttweaker:electrotine_ore>, <contenttweaker:electrotine> * 4);
Grinder.addRecipe(<contenttweaker:electrotine> * 2, <contenttweaker:electrotine_ore>, 4, <contenttweaker:electrotine>, 0.9);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:electrotine> * 4, <contenttweaker:electrotine_ore>, 4000);
EUCrusher.add(<contenttweaker:electrotine> * 4, <contenttweaker:electrotine_ore>);
mods.enderio.SagMill.addRecipe([<contenttweaker:electrotine> * 4], [100], <contenttweaker:electrotine_ore>);
LightningCrusher.add(<contenttweaker:electrotine> * 4, <contenttweaker:electrotine_ore>);
mods.mekanism.enrichment.addRecipe(<contenttweaker:electrotine_ore>, <contenttweaker:electrotine> * 4);
mods.astralsorcery.StarlightInfusion.addInfusion(<contenttweaker:electrotine_ore>, <contenttweaker:electrotine> * 6, false, 1, 200);
furnace.addRecipe(<contenttweaker:electrotine>, <contenttweaker:electrotine_ore>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<contenttweaker:electrotine>, <contenttweaker:electrotine_ore>, 2000);
mods.enderio.AlloySmelter.addRecipe(<contenttweaker:electrotine>, [<contenttweaker:electrotine_ore>], 2000);
	
print("ENDING ProjectRedCore.zs");