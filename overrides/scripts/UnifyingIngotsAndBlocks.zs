#priority 20
# Author: Atricos

import crafttweaker.item.IItemStack;
import mods.thermalexpansion.RedstoneFurnace;
import mods.appliedenergistics2.Grinder;
#import moretweaker.galacticraft.CircuitFabricator;
import mods.actuallyadditions.Crusher;
import mods.thermalexpansion.Factorizer;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.astralsorcery.Grindstone;
import mods.alchemistry.Combiner;
import mods.actuallyadditions.Crusher as AACrusher;
import moretweaker.lightningcraft.LightningCrusher;
import mods.extrautils2.Crusher as EUCrusher;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.astralsorcery.StarlightInfusion;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.alchemistry.Dissolver;
import mods.appliedenergistics2.Inscriber;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.AlloySmelter;

print("STARTING UnifyingIngotsAndBlocks.zs");

# Titanium
#recipes.replaceAllOccurences(<ore:ingotTitanium>, <galacticraftplanets:item_basic_asteroids>, <*>);
#recipes.replaceAllOccurences(<ore:blockTitanium>, <galacticraftplanets:asteroids_block:7>, <*>);
furnace.addRecipe(<galacticraftplanets:item_basic_asteroids>, <galacticraftplanets:item_basic_asteroids:9>, 0.5);
furnace.addRecipe(<galacticraftplanets:item_basic_asteroids>, <galacticraftplanets:asteroids_block:4>, 0.5);
furnace.addRecipe(<galacticraftplanets:item_basic_asteroids>, <galacticraftplanets:item_basic_asteroids:4>, 0.5);
mods.appliedenergistics2.Grinder.removeRecipe(<galacticraftplanets:asteroids_block:4>);
mods.alchemistry.Combiner.addRecipe(<galacticraftplanets:item_basic_asteroids>, [<alchemistry:element:22> * 16]);
mods.tconstruct.Melting.addRecipe(<liquid:titanium> * 144, <galacticraftplanets:item_basic_asteroids:9>, 984);
mods.tconstruct.Melting.addRecipe(<liquid:titanium> * 1296, <galacticraftplanets:asteroids_block:7>, 984);
mods.tconstruct.Melting.addRecipe(<liquid:titanium> * 16, <contenttweaker:titanium_nugget>, 984);
mods.tconstruct.Casting.addTableRecipe(<galacticraftplanets:item_basic_asteroids>, <tconstruct:cast_custom>, <liquid:titanium>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<galacticraftplanets:asteroids_block:7>, null, <liquid:titanium>, 1296);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:titanium_nugget>, <tconstruct:cast_custom:1>, <liquid:titanium>, 16, false);
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:31>);
mods.alchemistry.Dissolver.addRecipe(<galacticraftplanets:item_basic_asteroids>, false, 1, [[100, <alchemistry:element:22> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<galacticraftplanets:asteroids_block:7>, false, 1, [[100, <alchemistry:element:22> * 144]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:titanium_nugget>, false, 1, [[100, <alchemistry:element:22>]]);
mods.thermalexpansion.Factorizer.removeRecipeSplit(<galacticraftplanets:item_basic_asteroids>);

# Copper
val wrongCopperIngots = [<galacticraftcore:basic_item:3>, <mekanism:ingot:5>, <immersiveengineering:metal>, <abyssalcraft:copperingot>, <alchemistry:ingot:29>, <erebus:materials:43>, <bno:ingot_copper>, <projectred-core:resource_item:100>] as IItemStack[];
<ore:ingotCopper>.removeItems(wrongCopperIngots);
#recipes.replaceAllOccurences(<ore:ingotCopper>, <thermalfoundation:material:128>);
for copper in wrongCopperIngots {
	mods.abyssalcraft.Materializer.removeMaterialization(copper);
	mods.appliedenergistics2.Grinder.removeRecipe(copper);
}
<ore:nuggetCopper>.remove(<immersiveengineering:metal:20>);
furnace.remove(<erebus:materials:43>);
furnace.remove(<galacticraftcore:basic_item:3>);
furnace.remove(<abyssalcraft:copperingot>);
furnace.remove(<immersiveengineering:metal>);
mods.abyssalcraft.Transmutator.removeTransmutationOutput(<abyssalcraft:copperingot>);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystalcluster2:1>, <thermalfoundation:material:128>, 0.2);
recipes.remove(<immersiveengineering:metal>);
recipes.remove(<immersiveengineering:storage>);
recipes.remove(<immersiveengineering:metal:20>);
recipes.remove(<mekanism:basicblock:12>);
recipes.remove(<bno:ingot_copper>);
recipes.remove(<bno:block_copper>);
recipes.remove(<mekanism:ingot:5>);
recipes.remove(<galacticraftcore:basic_item:3>);
recipes.remove(<thermalfoundation:storage>);
furnace.remove(<bno:ingot_copper>);
furnace.addRecipe(<thermalfoundation:material:128>, <bno:ore_nethercopper>);
recipes.addShaped(<thermalfoundation:storage>, [[<thermalfoundation:material:128>,<thermalfoundation:material:128>,<thermalfoundation:material:128>],[<thermalfoundation:material:128>,<thermalfoundation:material:128>,<thermalfoundation:material:128>],[<thermalfoundation:material:128>,<thermalfoundation:material:128>,<thermalfoundation:material:128>]]);
recipes.removeShapeless(<thermalfoundation:material:192> * 9, [<erebus:materials:43>]);
recipes.remove(<immersiveengineering:storage_slab>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:128> * 2, <ore:oreCopper>, <immersiveengineering:material:7>, 10, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:64>, null, 5, 512);
recipes.removeShaped(<thermalfoundation:storage>, [[<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>],[<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>],[<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>]]);
recipes.removeByRecipeName("unidict:blockcopper_x1_shape.aaaaaaaaa");
#recipes.replaceAllOccurences(<ore:blockCopper>, <thermalfoundation:storage>);
<ore:blockCopper>.removeItems([<mekanism:basicblock:12>, <bno:block_copper>, <immersiveengineering:storage>]);
recipes.removeShaped(<thermalfoundation:storage>, [[<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>],[<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>],[<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>,<galacticraftcore:basic_item:3>]]);

# Tin
val wrongTinIngots = [<alchemistry:ingot:50>, <abyssalcraft:tiningot>, <mekanism:ingot:6>, <galacticraftcore:basic_item:4>, <projectred-core:resource_item:101>, <erebus:materials:46>] as IItemStack[];
<ore:ingotTin>.removeItems(wrongTinIngots);
#recipes.replaceAllOccurences(<ore:ingotTin>, <thermalfoundation:material:129>);
for tin in wrongTinIngots {
	mods.abyssalcraft.Materializer.removeMaterialization(tin);
	mods.appliedenergistics2.Grinder.removeRecipe(tin);
}
furnace.remove(<erebus:materials:46>);
furnace.remove(<galacticraftcore:basic_item:4>);
furnace.remove(<abyssalcraft:tiningot>);
furnace.remove(<mekanism:ingot:6>);
mods.abyssalcraft.Transmutator.removeTransmutationOutput(<abyssalcraft:tiningot>);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystalcluster2>, <thermalfoundation:material:129>, 0.2);
recipes.remove(<mekanism:ingot:6>);
recipes.remove(<mekanism:basicblock:13>);
recipes.remove(<bno:block_tin>);
recipes.remove(<bno:ingot_tin>);
recipes.remove(<galacticraftcore:basic_item:4>);
recipes.removeShapeless(<thermalfoundation:material:193> * 9, [<erebus:materials:46>]);
recipes.removeByRecipeName("unidict:nuggettin_x9_size.1");
recipes.removeShaped(<thermalfoundation:storage:1>, [[<galacticraftcore:basic_item:4>,<galacticraftcore:basic_item:4>,<galacticraftcore:basic_item:4>],[<galacticraftcore:basic_item:4>,<galacticraftcore:basic_item:4>,<galacticraftcore:basic_item:4>],[<galacticraftcore:basic_item:4>,<galacticraftcore:basic_item:4>,<galacticraftcore:basic_item:4>]]);
<ore:blockTin>.removeItems([<galacticraftcore:basic_block_core:10>,<bno:block_tin>,<mekanism:basicblock:13>]);

# Silicon
<ore:itemSilicon>.removeItems([<enderio:item_material:5>,<galacticraftcore:basic_item:2>]);
#recipes.replaceAllOccurences(<ore:itemSilicon>, <appliedenergistics2:material:5>);
#CircuitFabricator.remove(<galacticraftplanets:basic_item_venus:6>);
recipes.remove(<galacticraftcore:basic_item:2>);
recipes.addShapeless(<appliedenergistics2:material:5> * 9, [<galacticraftcore:basic_block_core:13>]);
mods.actuallyadditions.Crusher.removeRecipe(<galacticraftcore:basic_item:2>);
for silicon in <ore:ingotSilicon>.items {
	mods.thermalexpansion.Pulverizer.removeRecipe(silicon);
}
for silicon_ore in <ore:oreSilicon>.items {
	mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, silicon_ore);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>, silicon_ore);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand:*>, silicon_ore);
}
EUCrusher.remove(<galacticraftplanets:venus:10>);
EUCrusher.remove(<alchemistry:ingot:14>);
mods.thermalexpansion.Factorizer.removeRecipeSplit(<galacticraftcore:basic_block_core:13>);
mods.thermalexpansion.Factorizer.removeRecipeCombine(<alchemistry:ingot:14>);
mods.thermalexpansion.Factorizer.removeRecipeSplit(<alchemistry:ingot:14>);
mods.alchemistry.Dissolver.removeRecipe(<alchemistry:ingot:14>);
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:20>, <appliedenergistics2:material:5>, true, <appliedenergistics2:material:19>);

# Aluminum
val wrongAlumIngots = [<alchemistry:ingot:13>,<erebus:materials:42>,<galacticraftcore:basic_item:5>,<immersiveengineering:metal:1>] as IItemStack[];
<ore:ingotAluminum>.removeItems(wrongAlumIngots);
<ore:ingotAluminium>.removeItems([<erebus:materials:42>,<galacticraftcore:basic_item:5>,<immersiveengineering:storage:1>]);
<ore:blockAluminium>.remove(<galacticraftcore:basic_block_core:11>);
<ore:blockAluminum>.removeItems([<galacticraftcore:basic_block_core:11>,<immersiveengineering:storage:1>]);
<ore:nuggetAluminum>.remove(<immersiveengineering:metal:21>);
for ingot in wrongAlumIngots {
	mods.abyssalcraft.Crystallizer.removeCrystallizationInput(ingot);
}
recipes.remove(<erebus:materials:42>);
furnace.remove(<erebus:materials:42>);
mods.alchemistry.Dissolver.removeRecipe(<erebus:materials:42>);
mods.alchemistry.Combiner.removeRecipe(<erebus:materials:42>);
mods.abyssalcraft.Transmutator.removeTransmutationOutput(<erebus:materials:42>);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystalcluster2:4>, <thermalfoundation:material:132>, 0.2);
recipes.remove(<galacticraftcore:basic_block_core:11>);
mods.alchemistry.Dissolver.removeRecipe(<galacticraftcore:basic_block_core:11>);
recipes.remove(<immersiveengineering:storage_slab:1>);
recipes.remove(<immersiveengineering:storage:1>);
recipes.removeShaped(<thermalfoundation:storage:4>, [[<immersiveengineering:storage_slab:1>],[<immersiveengineering:storage_slab:1>]]);
recipes.remove(<galacticraftcore:basic_item:5>);
mods.mekanism.crusher.removeRecipe(<thermalfoundation:material:68>, <galacticraftcore:basic_item:5>);
mods.mekanism.crusher.removeRecipe(<thermalfoundation:material:68>, <immersiveengineering:metal:1>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>, <immersiveengineering:metal:1>);
furnace.remove(<galacticraftcore:basic_item:5>);
recipes.remove(<immersiveengineering:metal:1>);
furnace.remove(<immersiveengineering:metal:1>);
recipes.remove(<immersiveengineering:metal:21>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:132> * 2, <ore:oreAluminum>, <immersiveengineering:material:7>, 200, 512, null, "Ores");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:132> * 2, <ore:oreAluminium>, <immersiveengineering:material:7>, 200, 512, null, "Ores");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:132> , <thermalfoundation:material:68>, null, 100, 512);

# Steel
<ore:ingotSteel>.removeItems([<mekanism:ingot:4>,<bigreactors:ingotsteel>,<immersiveengineering:metal:8>]);
<ore:blockSteel>.removeItems([<mekanism:basicblock:5>,<bigreactors:blocksteel>]);
recipes.remove(<mekanism:basicblock:5>);
recipes.remove(<mekanism:ingot:4>);
furnace.remove(<mekanism:ingot:4>);
recipes.remove(<bigreactors:ingotsteel>);
recipes.remove(<immersiveengineering:metal:8>);
recipes.remove(<bigreactors:blocksteel>);
recipes.remove(<immersiveengineering:storage:8>);
recipes.removeShaped(<thermalfoundation:storage_alloy>, [[<immersiveengineering:storage_slab:8>],[<immersiveengineering:storage_slab:8>]]);
recipes.remove(<immersiveengineering:storage_slab:8>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <mekanism:ingot:4>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:storage_slab:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, 1200, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:storage_alloy>, <minecraft:iron_block>, 10800, <immersiveengineering:material:7> * 9);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:160> * 2, <minecraft:iron_ingot>, null, 100, 512, [<immersiveengineering:material:17>], "Alloying");
mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:iron_ingot>);
mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:iron_ingot> * 2, <ore:oreIron>, <immersiveengineering:material:7>, 200, 512, null, "Ores");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:160> * 2, <thermalfoundation:material>, null, 100, 512, [<immersiveengineering:material:17>], "Alloying");
furnace.remove(<immersiveengineering:metal:8>);
recipes.remove(<immersiveengineering:metal:28>);

# Bronze
<ore:ingotBronze>.remove(<mekanism:ingot:2>);
<ore:blockBronze>.remove(<mekanism:basicblock:1>);
recipes.remove(<mekanism:basicblock:1>);
recipes.remove(<mekanism:ingot:2>);
mods.mekanism.infuser.removeRecipe(<mekanism:ingot:2>);
mods.mekanism.infuser.addRecipe("TIN", 10, <thermalfoundation:material:128> * 3, <thermalfoundation:material:163> * 4);
mods.tconstruct.Melting.removeRecipe(<liquid:bronze>, <mekanism:ingot:2>);
<ore:nuggetSteel>.remove(<immersiveengineering:metal:28>);

# Constantan
<ore:blockConstantan>.remove(<immersiveengineering:storage:6>);
<ore:ingotConstantan>.remove(<immersiveengineering:metal:6>);
recipes.remove(<immersiveengineering:metal:6>);
recipes.remove(<immersiveengineering:storage_slab:6>);
recipes.removeShaped(<thermalfoundation:storage_alloy:4>, [[<immersiveengineering:storage_slab:6>],[<immersiveengineering:storage_slab:6>]]);
<ore:nuggetConstantan>.remove(<immersiveengineering:metal:26>);
mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <thermalfoundation:material:128>, <thermalfoundation:material:133>, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <thermalfoundation:material:64>, <thermalfoundation:material:69>, 200);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:6>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:164> * 2, <thermalfoundation:material:128>, null, 100, 512, [<thermalfoundation:material:133>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:164> * 2, <thermalfoundation:material:128>, null, 100, 512, [<thermalfoundation:material:69>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:164> * 2, <thermalfoundation:material:64>, null, 100, 512, [<thermalfoundation:material:133>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:164> * 2, <thermalfoundation:material:64>, null, 100, 512, [<thermalfoundation:material:69>], "Alloying");
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:164> * 2, <thermalfoundation:material:64>, <thermalfoundation:material:69>, 4800);

# Coal Coke
<ore:fuelCoke>.remove(<immersiveengineering:material:6>);
<ore:blockFuelCoke>.remove(<immersiveengineering:stone_decoration:3>);
recipes.remove(<immersiveengineering:material:6>);
recipes.remove(<immersiveengineering:stone_decoration:3>);
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:material:6>);
mods.immersiveengineering.CokeOven.addRecipe(<thermalfoundation:material:802>, 500, <minecraft:coal>, 1800);
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
mods.immersiveengineering.CokeOven.addRecipe(<thermalfoundation:storage_resource:1>, 4500, <minecraft:coal_block>, 16200);

# Nether Star Nugget
<ore:nuggetNetherStar>.remove(<extendedcrafting:material:140>);
recipes.remove(<extendedcrafting:material:140>);
recipes.removeShaped(<minecraft:nether_star>, [[<extendedcrafting:material:140>,<extendedcrafting:material:140>,<extendedcrafting:material:140>],[<extendedcrafting:material:140>,<extendedcrafting:material:140>,<extendedcrafting:material:140>],[<extendedcrafting:material:140>,<extendedcrafting:material:140>,<extendedcrafting:material:140>]]);

# Amethyst
<ore:gemAmethyst>.remove(<bewitchment:amethyst>);
<ore:blockAmethyst>.remove(<bewitchment:block_of_amethyst>);
<ore:gemAll>.remove(<bewitchment:amethyst>);
recipes.remove(<bewitchment:amethyst>);
recipes.remove(<bewitchment:block_of_amethyst>);

# Emerald Nugget
<ore:nuggetEmerald>.removeItems([<agricraft:agri_nugget>,<thermalfoundation:material:17>]);
recipes.remove(<thermalfoundation:material:17>);
recipes.removeShaped(<minecraft:emerald>, [[<ore:nuggetEmerald>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<minecraft:emerald>, [[<extendedcrafting:material:129>,<extendedcrafting:material:129>,<extendedcrafting:material:129>],[<extendedcrafting:material:129>,<extendedcrafting:material:129>,<extendedcrafting:material:129>],[<extendedcrafting:material:129>,<extendedcrafting:material:129>,<extendedcrafting:material:129>]]);
mods.tconstruct.Melting.removeRecipe(<liquid:emerald>, <thermalfoundation:material:17>);

# Diamond Nugget
<ore:nuggetDiamond>.removeItems([<agricraft:agri_nugget:1>,<extendedcrafting:material:128>]);
recipes.remove(<extendedcrafting:material:128>);
recipes.removeShaped(<minecraft:diamond>, [[<extendedcrafting:material:128>,<extendedcrafting:material:128>,<extendedcrafting:material:128>],[<extendedcrafting:material:128>,<extendedcrafting:material:128>,<extendedcrafting:material:128>],[<extendedcrafting:material:128>,<extendedcrafting:material:128>,<extendedcrafting:material:128>]]);

# Iron Nugget
recipes.remove(<immersiveengineering:metal:29>);
<ore:nuggetIron>.removeItems([<immersiveengineering:metal:29>,<agricraft:agri_nugget:3>,<thaumcraft:nugget>]);
recipes.removeShapeless(<minecraft:iron_nugget>, [<thaumcraft:nugget>]);

# Tin Nugget
<ore:nuggetTin>.removeItems([<mekanism:nugget:6>,<thaumcraft:nugget:2>,<agricraft:agri_nugget:5>,<bno:nugget_tin>]);
recipes.remove(<thaumcraft:nugget:2>);
recipes.remove(<mekanism:nugget:6>);
recipes.remove(<bno:nugget_tin>);
recipes.removeShaped(<thermalfoundation:material:129>, [[<thaumcraft:nugget:2>,<thaumcraft:nugget:2>,<thaumcraft:nugget:2>],[<thaumcraft:nugget:2>,<thaumcraft:nugget:2>,<thaumcraft:nugget:2>],[<thaumcraft:nugget:2>,<thaumcraft:nugget:2>,<thaumcraft:nugget:2>]]);
recipes.addShaped(<thermalfoundation:material:129>, [[<thermalfoundation:material:193>,<thermalfoundation:material:193>,<thermalfoundation:material:193>],[<thermalfoundation:material:193>,<thermalfoundation:material:193>,<thermalfoundation:material:193>],[<thermalfoundation:material:193>,<thermalfoundation:material:193>,<thermalfoundation:material:193>]]);

# Bronze Nugget
<ore:nuggetBronze>.remove(<mekanism:nugget:2>);
recipes.remove(<mekanism:nugget:2>);

# Copper Block
<ore:blockCopper>.removeItems([<galacticraftcore:basic_block_core:9>]);
recipes.remove(<galacticraftcore:basic_block_core:9>);

# Copper Nugget
<ore:nuggetCopper>.removeItems([<thaumcraft:nugget:1>,<mekanism:nugget:5>,<agricraft:agri_nugget:4>,<bno:nugget_copper>]);
recipes.remove(<mekanism:nugget:5>);
recipes.remove(<thaumcraft:nugget:1>);
recipes.remove(<bno:nugget_copper>);
recipes.removeShaped(<thermalfoundation:material:128>, [[<thaumcraft:nugget:1>,<thaumcraft:nugget:1>,<thaumcraft:nugget:1>],[<thaumcraft:nugget:1>,<thaumcraft:nugget:1>,<thaumcraft:nugget:1>],[<thaumcraft:nugget:1>,<thaumcraft:nugget:1>,<thaumcraft:nugget:1>]]);
recipes.addShaped(<thermalfoundation:material:128>, [[<thermalfoundation:material:192>,<thermalfoundation:material:192>,<thermalfoundation:material:192>],[<thermalfoundation:material:192>,<thermalfoundation:material:192>,<thermalfoundation:material:192>],[<thermalfoundation:material:192>,<thermalfoundation:material:192>,<thermalfoundation:material:192>]]);

# Silver Ingot
<ore:ingotSilver>.removeItems([<bewitchment:silver_ingot>,<immersiveengineering:metal:3>,<projectred-core:resource_item:102>,<erebus:materials:45>,<alchemistry:ingot:47>]);
recipes.remove(<bewitchment:silver_ingot>);
furnace.remove(<bewitchment:silver_ingot>);
furnace.remove(<erebus:materials:45>);
furnace.remove(<immersiveengineering:metal:3>);
recipes.remove(<immersiveengineering:metal:3>);
furnace.addRecipe(<thermalfoundation:material:130>, <erebus:ore_silver>);
Grinder.removeRecipe(<projectred-core:resource_item:102>);
Grinder.removeRecipe(<erebus:materials:45>);
Grinder.removeRecipe(<immersiveengineering:metal:3>);
Grinder.removeRecipe(<bewitchment:silver_ingot>);
Grinder.removeRecipe(<alchemistry:ingot:47>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:3>);

# Silver Nugget
<ore:nuggetSilver>.removeItems([<bewitchment:silver_nugget>,<immersiveengineering:metal:23>]);
recipes.remove(<bewitchment:silver_nugget>);
recipes.remove(<immersiveengineering:metal:23>);
recipes.removeShapeless(<thermalfoundation:material:194> * 9, [<erebus:materials:45>]);

# Silver Block
recipes.removeShaped(<thermalfoundation:storage:2>, [[<immersiveengineering:metal:3>,<immersiveengineering:metal:3>,<immersiveengineering:metal:3>],[<immersiveengineering:metal:3>,<immersiveengineering:metal:3>,<immersiveengineering:metal:3>],[<immersiveengineering:metal:3>,<immersiveengineering:metal:3>,<immersiveengineering:metal:3>]]);
#recipes.addShaped(<thermalfoundation:storage:2>, [[<thermalfoundation:material:130>,<thermalfoundation:material:130>,<thermalfoundation:material:130>],[<thermalfoundation:material:130>,<thermalfoundation:material:130>,<thermalfoundation:material:130>],[<thermalfoundation:material:130>,<thermalfoundation:material:130>,<thermalfoundation:material:130>]]);

# Lead Ingot
recipes.remove(<galacticraftplanets:atomic_battery>);
<ore:ingotLead>.removeItems([<galacticraftplanets:basic_item_venus:1>,<erebus:materials:44>,<alchemistry:ingot:82>,<immersiveengineering:metal:2>]);
mods.appliedenergistics2.Grinder.removeRecipe(<galacticraftplanets:basic_item_venus:1>);
mods.appliedenergistics2.Grinder.removeRecipe(<erebus:materials:44>);
mods.appliedenergistics2.Grinder.removeRecipe(<alchemistry:ingot:82>);
mods.appliedenergistics2.Grinder.removeRecipe(<immersiveengineering:metal:2>);
furnace.remove(<erebus:materials:44>, <erebus:ore_lead>);
furnace.addRecipe(<thermalfoundation:material:131>, <erebus:ore_lead>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:2>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:131> * 2, <ore:oreLead>, <immersiveengineering:material:7>, 200, 512);
furnace.remove(<immersiveengineering:metal:2>);
furnace.addRecipe(<thermalfoundation:material:131>, <thermalfoundation:material:67>);
furnace.addRecipe(<thermalfoundation:material:131>, <ore:oreLead>);
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:67>);
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<ore:oreLead>.firstItem);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<thermalfoundation:material:131>, <thermalfoundation:material:67>, 3600);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<thermalfoundation:material:131>, <ore:oreLead>.firstItem, 3600);

# Lead Block
recipes.removeShaped(<thermalfoundation:storage:3>, [[<immersiveengineering:metal:2>,<immersiveengineering:metal:2>,<immersiveengineering:metal:2>],[<immersiveengineering:metal:2>,<immersiveengineering:metal:2>,<immersiveengineering:metal:2>],[<immersiveengineering:metal:2>,<immersiveengineering:metal:2>,<immersiveengineering:metal:2>]]);
#recipes.addShaped(<thermalfoundation:storage:3>, [[<thermalfoundation:material:131>,<thermalfoundation:material:131>,<thermalfoundation:material:131>],[<thermalfoundation:material:131>,<thermalfoundation:material:131>,<thermalfoundation:material:131>],[<thermalfoundation:material:131>,<thermalfoundation:material:131>,<thermalfoundation:material:131>]]);

# Electrum Ingot
<ore:ingotElectrum>.remove(<immersiveengineering:metal:7>);
mods.appliedenergistics2.Grinder.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <minecraft:gold_ingot>, <thermalfoundation:material:130>, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <thermalfoundation:material:1>, <thermalfoundation:material:66>, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <minecraft:gold_ingot>, <thermalfoundation:material:66>, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <thermalfoundation:material:1>, <thermalfoundation:material:130>, 200);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:161> * 2, <minecraft:gold_ingot>, null, 100, 512, [<thermalfoundation:material:130>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:161> * 2, <thermalfoundation:material:1>, null, 100, 512, [<thermalfoundation:material:66>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:161> * 2, <minecraft:gold_ingot>, null, 100, 512, [<thermalfoundation:material:66>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:161> * 2, <thermalfoundation:material:1>, null, 100, 512, [<thermalfoundation:material:130>], "Alloying");

# Nickel Ingot
<ore:ingotNickel>.remove(<alchemistry:ingot:28>);
mods.appliedenergistics2.Grinder.removeRecipe(<alchemistry:ingot:28>);

# Charcoal Block
recipes.remove(<mekanism:basicblock:3>);
recipes.remove(<actuallyadditions:block_misc:5>);
recipes.removeShaped(<minecraft:coal:1> * 9, [[<*>]]);
recipes.removeShapeless(<minecraft:coal:1> * 9, [<actuallyadditions:block_misc:5>]);

# Lumium in the Arc Furnace
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:166> * 4, <thermalfoundation:material:129> * 3, null, 100, 512, [<thermalfoundation:material:130>, <minecraft:glowstone_dust> * 4], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:166> * 4, <thermalfoundation:material:129> * 3, null, 100, 512, [<thermalfoundation:material:130>, <ore:glowstone>], "Alloying");

print("ENDING UnifyingIngotsAndBlocks.zs");
