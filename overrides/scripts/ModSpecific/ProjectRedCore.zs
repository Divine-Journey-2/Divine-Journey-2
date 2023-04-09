#priority -10
# Author: Atricos

import crafttweaker.item.IItemStack;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
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
import mods.thermalexpansion.Sawmill;
import mods.alchemistry.Combiner;
import mods.alchemistry.Dissolver;

print("STARTING ProjectRedCore.zs");

# Circuit Plate
furnace.remove(<projectred-core:resource_item>);
furnace.addRecipe(<projectred-core:resource_item> * 2, <ore:stone>);
for i in 0 to 8 {
	furnace.addRecipe(<projectred-core:resource_item> * 2, <undergroundbiomes:sedimentary_stone>.withDamage(i));
	furnace.addRecipe(<projectred-core:resource_item> * 2, <undergroundbiomes:igneous_stone>.withDamage(i));
	furnace.addRecipe(<projectred-core:resource_item> * 2, <undergroundbiomes:metamorphic_stone>.withDamage(i));
}

# Red Alloy Ingot
IEAlloySmelter.removeRecipe(<projectred-core:resource_item:103>);
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

# Sandy Coal Compound -> Sandy Silicon Compound
<projectred-core:resource_item:250>.displayName = "Sandy Silicon Compound";
recipes.remove(<projectred-core:resource_item:250>);
recipes.addShaped(<projectred-core:resource_item:250>, [[<extrautils2:compressedsand>,<galacticraftcore:basic_block_core:13>,<extrautils2:compressedsand>],[<galacticraftcore:basic_block_core:13>,<extrautils2:compressedsand>,<galacticraftcore:basic_block_core:13>],[<extrautils2:compressedsand>,<galacticraftcore:basic_block_core:13>,<extrautils2:compressedsand>]]);

# Silicon
recipes.remove(<projectred-core:resource_item:301>);
recipes.addShapeless(<projectred-core:resource_item:301> * 4, [<microblockcbe:saw_diamond>.anyDamage().transformDamage(),<projectred-core:resource_item:300>]);
recipes.addShapeless(<projectred-core:resource_item:301> * 4, [<chiselsandbits:bitsaw_diamond>.anyDamage().transformDamage(),<projectred-core:resource_item:300>]);
mods.thermalexpansion.Sawmill.addRecipe(<projectred-core:resource_item:301> * 4, <projectred-core:resource_item:300>, 4000);
mods.mekanism.sawmill.addRecipe(<projectred-core:resource_item:300>, <projectred-core:resource_item:301> * 4);

function addProjectRedSiliconCompoundRecipe(output as IItemStack, input_material as IItemStack) {
	recipes.remove(output);
	mods.immersiveengineering.ArcFurnace.addRecipe(output, <projectred-core:resource_item:301>, null, 160, 240, [input_material], "Alloying");
	#EIOAlloySmelter.addRecipe(output, [<projectred-core:resource_item:301>, input_material], 10000);
	# Alloy Smelter recipes in enderio/recipes/user/user_recipes.xml
	IEAlloySmelter.addRecipe(output, <projectred-core:resource_item:301>, input_material, 400);
	mods.thermalexpansion.InductionSmelter.addRecipe(output, <projectred-core:resource_item:301>, input_material, 10000);
}

# Glowing Silicon Compound
addProjectRedSiliconCompoundRecipe(<projectred-core:resource_item:311>, <minecraft:glowstone_dust> * 24);

# Red Silicon Compound
addProjectRedSiliconCompoundRecipe(<projectred-core:resource_item:310>, <minecraft:redstone> * 24);

# Electrotine Silicon Compound
addProjectRedSiliconCompoundRecipe(<projectred-core:resource_item:312>, <contenttweaker:electrotine> * 24);

# Motor
recipes.remove(<projectred-core:resource_item:410>);
recipes.addShaped(<projectred-core:resource_item:410>, [[null,<galacticraftcore:air_vent>,null],[<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:engine>,<galacticraftplanets:item_basic_mars:3>]]);

# Peridot
mods.alchemistry.Combiner.addRecipe(<projectred-core:resource_item:202>, [<alchemistry:compound:43>,<alchemistry:compound:4>,<alchemistry:compound:39>]);
mods.alchemistry.Dissolver.addRecipe(<projectred-core:resource_item:202>, true, 1, [[100, <alchemistry:compound:43>,<alchemistry:compound:4>,<alchemistry:compound:39>]]);

# Sapphire
mods.alchemistry.Combiner.removeRecipe(<projectred-core:resource_item:201>);
mods.alchemistry.Combiner.addRecipe(<projectred-core:resource_item:201>, [<alchemistry:compound:23>,<alchemistry:compound:42>,<alchemistry:compound:3>]);
mods.alchemistry.Dissolver.removeRecipe(<projectred-core:resource_item:201>);
mods.alchemistry.Dissolver.addRecipe(<projectred-core:resource_item:201>, true, 1, [[100, <alchemistry:compound:23>,<alchemistry:compound:42>,<alchemistry:compound:3>]]);

# Ruby
mods.alchemistry.Combiner.removeRecipe(<projectred-core:resource_item:200>);
mods.alchemistry.Combiner.addRecipe(<projectred-core:resource_item:200>, [<alchemistry:compound:17>,<alchemistry:compound:20>,<alchemistry:compound:52>]);
mods.alchemistry.Dissolver.removeRecipe(<projectred-core:resource_item:200>);
mods.alchemistry.Dissolver.addRecipe(<projectred-core:resource_item:200>, true, 1, [[100, <alchemistry:compound:17>,<alchemistry:compound:20>,<alchemistry:compound:52>]]);

print("ENDING ProjectRedCore.zs");