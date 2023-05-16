#priority 18
# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import moretweaker.lightningcraft.LightningCrusher;
import mods.tconstruct.Melting;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.astralsorcery.Grindstone;
import mods.alchemistry.Combiner;
import mods.appliedenergistics2.Grinder;
import mods.thermalexpansion.Pulverizer;
import mods.actuallyadditions.Crusher as AACrusher;
import mods.enderio.SagMill;
import mods.extrautils2.Crusher as EUCrusher;
import mods.roots.Mortar;
import mods.bloodmagic.AlchemyTable;

print("STARTING UnifyingDusts.zs");

function removeDustSmeltingSimple(dust as IItemStack, gem as IItemStack) {
	furnace.remove(gem, dust);
}

function removeDustSmeltingLightningCraft(dust as IItemStack, correctDust as IItemStack, crushAmount as int, gem as IItemStack, ore as IOreDictEntry) {
	LightningCrusher.remove(dust);
	LightningCrusher.add(correctDust * crushAmount, ore);
	LightningCrusher.add(correctDust, gem);
}

function unifyMekanismDust(mekDust as IItemStack, correctDust as IItemStack, enrichableOres as IItemStack[], undergroundBiomesOres as IItemStack[], dirtyDust as IItemStack, ingot as IItemStack) {
	mods.mekanism.enrichment.removeRecipe(dirtyDust);
	mods.mekanism.enrichment.addRecipe(dirtyDust, correctDust);
	for ore in enrichableOres {
		mods.mekanism.enrichment.removeRecipe(ore);
		mods.mekanism.enrichment.addRecipe(ore, correctDust * 2);
	}
	for ore in undergroundBiomesOres {
		mods.mekanism.enrichment.addRecipe(ore, correctDust * 2);
	}
	mods.mekanism.crusher.removeRecipe(mekDust);
	mods.mekanism.crusher.addRecipe(ingot, correctDust);
	furnace.remove(ingot, mekDust);
}

# Diamond Dust
#recipes.replaceAllOccurences(<ore:dustDiamond>, <mekanism:otherdust>, <*>);
<ore:dustDiamond>.removeItems([<lightningcraft:material:1>, <actuallyadditions:item_dust:2>]);
removeDustSmeltingLightningCraft(<lightningcraft:material:1>, <mekanism:otherdust>, 3, <minecraft:diamond>, <ore:oreDiamond>);
removeDustSmeltingSimple(<actuallyadditions:item_dust:2>, <minecraft:diamond>);
removeDustSmeltingSimple(<lightningcraft:material:1>, <minecraft:diamond>);

# Emerald Dust
#recipes.replaceAllOccurences(<ore:dustEmerald>, <actuallyadditions:item_dust:3>, <*>);
<ore:dustEmerald>.remove(<lightningcraft:material:2>);
removeDustSmeltingLightningCraft(<lightningcraft:material:2>, <actuallyadditions:item_dust:3>, 3, <minecraft:emerald>, <ore:oreEmerald>);
removeDustSmeltingSimple(<lightningcraft:material:2>, <minecraft:emerald>);

# Quartz Dust
#recipes.replaceAllOccurences(<ore:dustNetherQuartz>, <appliedenergistics2:material:3>, <*>);
#recipes.replaceAllOccurences(<ore:dustQuartz>, <appliedenergistics2:material:3>, <*>);
<ore:dustNetherQuartz>.removeItems([<lightningcraft:material:3>, <enderio:item_material:33>, <actuallyadditions:item_dust:5>]);
<ore:dustQuartz>.removeItems([<lightningcraft:material:3>, <actuallyadditions:item_dust:5>]);
removeDustSmeltingLightningCraft(<lightningcraft:material:3>, <appliedenergistics2:material:3>, 4, <minecraft:quartz>, <ore:oreQuartz>);
removeDustSmeltingSimple(<lightningcraft:material:3>, <minecraft:quartz>);
removeDustSmeltingSimple(<enderio:item_material:33>, <appliedenergistics2:material:5>);
removeDustSmeltingSimple(<actuallyadditions:item_dust:5>, <appliedenergistics2:material:5>);
mods.mekanism.enrichment.removeRecipe(<actuallyadditions:item_dust:5>, <minecraft:quartz>);
mods.mekanism.enrichment.removeRecipe(<enderio:item_material:33>, <minecraft:quartz>);

# Obsidian Dust
#recipes.replaceAllOccurences(<ore:dustObsidian>, <thermalfoundation:material:770>, <*>);
<ore:dustObsidian>.removeItems([<mekanism:otherdust:6>, <enderio:item_material:29>]);
mods.mekanism.enrichment.removeRecipe(<minecraft:obsidian>);
mods.mekanism.enrichment.addRecipe(<minecraft:obsidian>, <thermalfoundation:material:770> * 4);
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:5>);
mods.mekanism.infuser.addRecipe("DIAMOND", 10, <thermalfoundation:material:770>, <mekanism:otherdust:5>);
mods.tconstruct.Melting.removeRecipe(<liquid:obsidian>, <mekanism:otherdust:6>);
mods.tconstruct.Melting.removeRecipe(<liquid:obsidian>, <enderio:item_material:29>);

# Iron Dust
#recipes.replaceAllOccurences(<ore:dustIron>, <thermalfoundation:material>, <*>);
<ore:dustIron>.removeItems([<mekanism:dust>, <appliedenergistics2:material:49>]);
val ironOres = [<atum:iron_ore>,<lightningcraft:ore_block>,<bno:ore_netheriron>,<abyssalcraft:abyiroore>,<minecraft:iron_ore>,<erebus:ore_iron>] as IItemStack[];
val undergroundBiomesIronOres = [<undergroundbiomes:igneous_stone_iron_ore:*>, <undergroundbiomes:metamorphic_stone_iron_ore:*>, <undergroundbiomes:sedimentary_stone_iron_ore:*>] as IItemStack[];
unifyMekanismDust(<mekanism:dust>, <thermalfoundation:material>, ironOres, undergroundBiomesIronOres, <mekanism:dirtydust>, <minecraft:iron_ingot>);
furnace.remove(<minecraft:iron_ingot>, <appliedenergistics2:material:49>);

# Gold Dust
#recipes.replaceAllOccurences(<ore:dustGold>, <thermalfoundation:material:1>, <*>);
<ore:dustGold>.remove(<mekanism:dust:1>);
val goldOres = [<lightningcraft:ore_block:1>,<abyssalcraft:abygolore>,<bno:ore_nethergold>,<minecraft:gold_ore>,<atum:gold_ore>,<erebus:ore_gold>] as IItemStack[];
val undergroundBiomesGoldOres = [<undergroundbiomes:igneous_stone_gold_ore:*>, <undergroundbiomes:metamorphic_stone_gold_ore:*>, <undergroundbiomes:sedimentary_stone_gold_ore:*>] as IItemStack[];
unifyMekanismDust(<mekanism:dust:1>, <thermalfoundation:material:1>, goldOres, undergroundBiomesGoldOres, <mekanism:dirtydust:1>, <minecraft:gold_ingot>);

# Copper Dust
#recipes.replaceAllOccurences(<ore:dustCopper>, <thermalfoundation:material:64>, <*>);
<ore:dustCopper>.removeItems([<enderio:item_material:26>,<mekanism:dust:3>,<immersiveengineering:metal:9>]);
val copperOres = [<erebus:ore_copper>,<immersiveengineering:ore>,<bno:ore_nethercopper>,<galacticraftcore:basic_block_moon>,<mekanism:oreblock:1>,<abyssalcraft:abycopore>,<galacticraftcore:basic_block_core:5>,<thermalfoundation:ore>] as IItemStack[];
val undergroundBiomesCopperOres = [<undergroundbiomes:igneous_stone_thermalfoundation_ore:*>,<undergroundbiomes:metamorphic_stone_thermalfoundation_ore:*>,<undergroundbiomes:sedimentary_stone_thermalfoundation_ore:*>] as IItemStack[];
unifyMekanismDust(<mekanism:dust:3>, <thermalfoundation:material:64>, copperOres, undergroundBiomesCopperOres, <mekanism:dirtydust:3>, <thermalfoundation:material:128>);
furnace.remove(<mekanism:ingot:5>);

# Tin Dust
#recipes.replaceAllOccurences(<ore:dustTin>, <thermalfoundation:material:65>, <*>);
<ore:dustTin>.removeItems([<mekanism:dust:4>,<enderio:item_material:27>]);
val tinOres = [<bno:ore_nethertin>,<galacticraftcore:basic_block_moon:1>,<mekanism:oreblock:2>,<abyssalcraft:abytinore>,<galacticraftcore:basic_block_core:6>,<erebus:ore_tin>,<thermalfoundation:ore:1>] as IItemStack[];
val undergroundBiomesTinOres = [<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.tin.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.tin.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.tin.name:*>] as IItemStack[];
unifyMekanismDust(<mekanism:dust:4>, <thermalfoundation:material:65>, tinOres, undergroundBiomesTinOres, <mekanism:dirtydust:4>, <thermalfoundation:material:129>);
#furnace.remove(<thermalfoundation:material:129>, <mekanism:dust:4>);

# Silver Dust
#recipes.replaceAllOccurences(<ore:dustSilver>, <thermalfoundation:material:66>, <*>);
<ore:dustSilver>.remove(<mekanism:dust:5>);
val silverOres = [<bewitchment:silver_ore>,<immersiveengineering:ore:3>,<erebus:ore_silver>,<thermalfoundation:ore:2>] as IItemStack[];
val undergroundBiomesSilverOres = [<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.silver.name:*>, <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.silver.name:*>, <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.silver.name:*>] as IItemStack[];
unifyMekanismDust(<mekanism:dust:5>, <thermalfoundation:material:66>, silverOres, undergroundBiomesSilverOres, <mekanism:dirtydust:5>, <thermalfoundation:material:130>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:130>, <thermalfoundation:material:66>, null, 100, 512);

# Lead Dust
#recipes.replaceAllOccurences(<ore:dustLead>, <thermalfoundation:material:67>, <*>);
<ore:dustLead>.remove(<mekanism:dust:6>);
val leadOres = [<erebus:ore_lead>,<immersiveengineering:ore:2>,<thermalfoundation:ore:3>] as IItemStack[];
val undergroundBiomesLeadOres = [<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.lead.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.lead.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.lead.name:*>] as IItemStack[];
unifyMekanismDust(<mekanism:dust:6>, <thermalfoundation:material:67>, leadOres, undergroundBiomesLeadOres, <mekanism:dirtydust:6>, <thermalfoundation:material:131>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:131>, <thermalfoundation:material:67>, null, 100, 512);

# Aluminum Dust
#recipes.replaceAllOccurences(<ore:dustAluminum>, <thermalfoundation:material:68>, <*>);
<ore:dustAluminum>.removeItems([<galacticraftcore:ic2compat>,<immersiveengineering:metal:10>]);
<ore:dustAluminium>.remove(<galacticraftcore:ic2compat>);
recipes.remove(<galacticraftcore:ic2compat>);
IECrusher.removeRecipe(<galacticraftcore:ic2compat>);




Grinder.removeRecipe(<galacticraftplanets:venus:6>);
Grinder.removeRecipe(<galacticraftplanets:asteroids_block:3>);
Grinder.removeRecipe(<galacticraftcore:basic_block_core:7>);

for ore in <ore:oreNaturalAluminum>.items {
	Grinder.removeRecipe(ore);
}

recipes.addShapeless(<thermalfoundation:material:68>, [<galacticraftcore:ic2compat>]);




Grinder.removeRecipe(<erebus:materials:42>);
Grinder.removeRecipe(<abyssalcraft:crystal:20>);
Grinder.addRecipe(<thermalfoundation:material:68>, <abyssalcraft:crystal:20>, 4);
LightningCrusher.remove(<galacticraftcore:ic2compat>);
furnace.remove(<thermalfoundation:material:132>, <galacticraftcore:ic2compat>);
furnace.remove(<galacticraftcore:basic_item:5>, <galacticraftcore:ic2compat>);
furnace.addRecipe(<thermalfoundation:material:132>, <thermalfoundation:material:68>);

# Saltpeter / Niter
#recipes.replaceAllOccurences(<ore:dustSaltpeter>, <thermalfoundation:material:772>, <*>);
<ore:dustSaltpeter>.removeItems([<bloodmagic:component:24>,<immersiveengineering:material:24>,<abyssalcraft:nitre>]);
mods.bloodmagic.AlchemyTable.removeRecipe([<bloodmagic:component:22>,<bloodmagic:component:22>,<thermalfoundation:material:768>]);
for item in <ore:sandstone>.items {
	IECrusher.removeRecipesForInput(item);
}
IECrusher.addRecipe(<minecraft:sand> * 2, <ore:sandstone>, 4000, <thermalfoundation:material:772>, 0.3);
furnace.remove(<abyssalcraft:nitre>);
furnace.addRecipe(<thermalfoundation:material:772>, <abyssalcraft:abynitore>, 1.0);
furnace.addRecipe(<thermalfoundation:material:772>, <abyssalcraft:nitreore>, 1.0);
mods.abyssalcraft.Materializer.removeMaterialization(<abyssalcraft:nitre>);
mods.abyssalcraft.Materializer.addMaterialization(<thermalfoundation:material:772>, [<abyssalcraft:crystal:8>, <abyssalcraft:crystal:9>]);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:nitre>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<immersiveengineering:material:24>);

# Salt
val saltOreDicts = [<ore:itemSalt>,<ore:dustSalt>,<ore:foodSalt>,<ore:salt>,<ore:listAllSalt>,<ore:ingredientSalt>,<ore:pinchSalt>,<ore:portionSalt>,<ore:lumpSalt>,<ore:materialSalt>] as IOreDictEntry[];
for oredict in saltOreDicts {
	#recipes.replaceAllOccurences(oredict, <mekanism:salt>, <*>);
	oredict.remove(<bewitchment:salt>);
}
mods.alchemistry.Combiner.removeRecipe(<bewitchment:salt>);
#recipes.replaceAllOccurences(<bewitchment:salt>, <mekanism:salt>);
#recipes.replaceAllOccurences(<ore:blockSalt>,<mekanism:saltblock>);
<ore:blockSalt>.remove(<bewitchment:block_of_salt>);
recipes.remove(<bewitchment:salt>);
recipes.remove(<bewitchment:block_of_salt>);
recipes.addShapeless(<mekanism:salt> * 9, [<mekanism:saltblock>]);
recipes.remove(<mekanism:saltblock>);
recipes.addShaped(<mekanism:saltblock>, [[<mekanism:salt>,<mekanism:salt>,<mekanism:salt>],[<mekanism:salt>,<mekanism:salt>,<mekanism:salt>],[<mekanism:salt>,<mekanism:salt>,<mekanism:salt>]]);
mods.alchemistry.Combiner.addRecipe(<mekanism:salt>, [<alchemistry:compound:6> * 8]);
LightningCrusher.remove(<bewitchment:salt>);
furnace.remove(<bewitchment:salt>);
IECrusher.removeRecipesForInput(<bewitchment:salt_ore>);
mods.astralsorcery.Grindstone.removeRecipe(<bewitchment:salt>);
mods.mekanism.chemical.oxidizer.removeRecipe(<gas:brine>, <bewitchment:salt>);
mods.alchemistry.Dissolver.removeRecipe(<bewitchment:salt>);
mods.alchemistry.Dissolver.addRecipe(<mekanism:salt>, false, 1, [[100,<alchemistry:compound:6> * 8]]);
mods.mekanism.enrichment.removeRecipe(<mekanism:saltblock>);


# Titanium Dust
mods.enderio.SagMill.removeRecipe(<galacticraftplanets:item_basic_asteroids>);
mods.enderio.SagMill.removeRecipe(<galacticraftplanets:asteroids_block:7>);
mods.thermalexpansion.Pulverizer.removeRecipe(<galacticraftplanets:item_basic_asteroids>);
mods.thermalexpansion.Pulverizer.addRecipe(<galacticraftplanets:item_basic_asteroids:9>, <galacticraftplanets:item_basic_asteroids>, 2000);

# Sulfur
#recipes.replaceAllOccurences(<ore:dustSulfur>,<thermalfoundation:material:771>);
val wrongSulfurs = [<immersiveengineering:material:25>,<abyssalcraft:sulfur>,<natura:materials:4>,<mekanism:otherdust:3>] as IItemStack[];
<ore:dustSulfur>.removeItems(wrongSulfurs);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:blaze_powder>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:blaze_powder> * 4, <ore:rodBlaze>, 4000, <thermalfoundation:material:771>, 0.5);
for sulfur in wrongSulfurs {
	mods.mekanism.chemical.oxidizer.removeRecipe(<gas:sulfurdioxide>, sulfur);
}
recipes.remove(<natura:materials:4>);
recipes.addShaped(<thermalfoundation:material:771>, [[<natura:clouds:3>,<natura:clouds:3>],[<natura:clouds:3>,<natura:clouds:3>]]);
mods.abyssalcraft.Materializer.removeMaterialization(<abyssalcraft:sulfur>);
mods.abyssalcraft.Materializer.addMaterialization(<thermalfoundation:material:771>, [<abyssalcraft:crystal:2>]);
mods.abyssalcraft.Transmutator.removeTransmutationOutput(<abyssalcraft:sulfur>);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystalcluster:2>, <thermalfoundation:material:771>, 0.2);
mods.mekanism.reaction.removeRecipe(<mekanism:otherdust:3>, <gas:hydrogen>);
mods.mekanism.reaction.addRecipe(allCoalBlocks, <liquid:water>, <gas:oxygen>, <thermalfoundation:material:771> * 9, <gas:hydrogen>, 200, 400);
mods.mekanism.chemical.injection.removeRecipe(<mekanism:otherdust:3>);
mods.mekanism.chemical.injection.addRecipe(<minecraft:gunpowder>, <gas:hydrogen>, <thermalfoundation:material:771>);

# Steel
<ore:dustSteel>.removeItems([<mekanism:otherdust:1>,<immersiveengineering:metal:17>,<bigreactors:duststeel>]);
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:1>);
mods.mekanism.infuser.addRecipe("CARBON", 10, <mekanism:enrichediron>, <thermalfoundation:material:96>);
mods.mekanism.crusher.removeRecipe(<mekanism:otherdust:1>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:160>, <thermalfoundation:material:96>);

# Bronze
mods.mekanism.crusher.removeRecipe(<thermalfoundation:material:99>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:163>, <thermalfoundation:material:99>);
Grinder.removeRecipe(<mekanism:ingot:2>);

# Constantan
<ore:dustConstantan>.remove(<immersiveengineering:metal:15>);
recipes.remove(<immersiveengineering:metal:15>);
furnace.remove(<immersiveengineering:metal:15>);

# Crushed Lapis
<ore:dustLapis>.remove(<enderio:item_material:32>);
mods.mekanism.enrichment.removeRecipe(<enderio:item_material:32>);

# Sawdust
val erebusPlanks = <ore:erebusPlank>;
for i in 0 to 13 {
	erebusPlanks.add(<erebus:planks>.withDamage(i));
}

for plank in <ore:plankWood>.items {
	if(!(vetheaPlanks has plank | erebusPlanks has plank)) {
		mods.mekanism.sawmill.removeRecipe(plank);
	}
	mods.mekanism.sawmill.addRecipe(plank, <minecraft:stick> * 6, <thermalfoundation:material:800>, 0.25);
}

val logWoodNoYield = <ore:logWoodNoYield>;
logWoodNoYield.addItems([<abyssalcraft:dltlog2>, <betternether:stalagnate_stem>, <erebus:log_bamboo>, <natura:redwood_logs>, <natura:redwood_logs:2>]);

val logs_and_planks = [
					[<minecraft:log>,<minecraft:planks>],
					[<minecraft:log:1>,<minecraft:planks:1>],
					[<minecraft:log:2>,<minecraft:planks:2>],
					[<minecraft:log:3>,<minecraft:planks:3>],
					[<minecraft:log2>,<minecraft:planks:4>],
					[<minecraft:log2:1>,<minecraft:planks:5>],
					[<abyssalcraft:dltlog>,<abyssalcraft:dltplank>],
					[<abyssalcraft:dreadlog>,<abyssalcraft:dreadplanks>],
					[<aether_legacy:aether_log>,<aether_legacy:skyroot_plank>],
					[<aether_legacy:aether_log:1>,<aether_legacy:skyroot_plank>],
					[<atum:palm_log>,<atum:palm_planks>],
					[<atum:deadwood_log>,<atum:deadwood_planks>],
					[<bewitchment:cypress_wood>,<bewitchment:cypress_planks>],
					[<bewitchment:elder_wood>,<bewitchment:elder_planks>],
					[<bewitchment:juniper_wood>,<bewitchment:juniper_planks>],
					[<bewitchment:dragons_blood_wood>,<bewitchment:dragons_blood_planks>],
					[<divinerpg:divine_log>,<divinerpg:divine_planks>],
					[<divinerpg:frozen_log>,<divinerpg:frozen_planks>],
					[<divinerpg:eden_log>,<divinerpg:eden_planks>],
					[<divinerpg:wildwood_log>,<divinerpg:wildwood_planks>],
					[<divinerpg:apalachia_log>,<divinerpg:apalachia_planks>],
					[<divinerpg:skythern_log>,<divinerpg:skythern_planks>],
					[<divinerpg:mortum_log>,<divinerpg:mortum_planks>],
					[<divinerpg:eucalyptus_log>,<divinerpg:eucalyptus_planks>],
					[<erebus:log_baobab>,<erebus:planks>],
					[<erebus:log_eucalyptus>,<erebus:planks:1>],
					[<erebus:log_mahogany>,<erebus:planks:2>],
					[<erebus:log_mossbark>,<erebus:planks:3>],
					[<erebus:log_asper>,<erebus:planks:4>],
					[<erebus:log_cypress>,<erebus:planks:5>],
					[<erebus:log_balsam>,<erebus:planks:6>],
					[<erebus:log_rotten>,<erebus:planks:9>],
					[<erebus:log_marshwood>,<erebus:planks:10>],
					[<erebus:log_scorched>,<erebus:planks:11>],
					[<evilcraft:undead_log>,<evilcraft:undead_plank>],
					[<extrautils2:ironwood_log>,<extrautils2:ironwood_planks>],
					[<extrautils2:ironwood_log:1>,<extrautils2:ironwood_planks:1>],
					[<lightningcraft:wood_log>,<lightningcraft:wood_plank>],
					[<mysticalworld:charred_log>,<mysticalworld:charred_planks>],
					[<natura:overworld_logs>,<natura:overworld_planks>],
					[<natura:overworld_logs:1>,<natura:overworld_planks:1>],
					[<natura:overworld_logs:2>,<natura:overworld_planks:2>],
					[<natura:overworld_logs:3>,<natura:overworld_planks:3>],
					[<natura:overworld_logs2>,<natura:overworld_planks:4>],
					[<natura:overworld_logs2:1>,<natura:overworld_planks:5>],
					[<natura:overworld_logs2:2>,<natura:overworld_planks:6>],
					[<natura:overworld_logs2:3>,<natura:overworld_planks:7>],
					[<natura:redwood_logs:1>,<natura:overworld_planks:8>],
					[<natura:nether_logs>,<natura:nether_planks>],
					[<natura:nether_logs:1>,<natura:nether_planks:2>],
					[<natura:nether_logs:2>,<natura:nether_planks:3>],
					[<natura:nether_logs2>,<natura:nether_planks:1>],
					[<natura:nether_logs2:1>,<natura:nether_planks:1>],
					[<natura:nether_logs2:2>,<natura:nether_planks:1>],
					[<natura:nether_logs2:3>,<natura:nether_planks:1>],
					[<natura:nether_logs2:4>,<natura:nether_planks:1>],
					[<natura:nether_logs2:5>,<natura:nether_planks:1>],
					[<natura:nether_logs2:6>,<natura:nether_planks:1>],
					[<natura:nether_logs2:7>,<natura:nether_planks:1>],
					[<natura:nether_logs2:8>,<natura:nether_planks:1>],
					[<natura:nether_logs2:9>,<natura:nether_planks:1>],
					[<natura:nether_logs2:10>,<natura:nether_planks:1>],
					[<natura:nether_logs2:11>,<natura:nether_planks:1>],
					[<natura:nether_logs2:12>,<natura:nether_planks:1>],
					[<natura:nether_logs2:13>,<natura:nether_planks:1>],
					[<natura:nether_logs2:14>,<natura:nether_planks:1>],
					[<natura:nether_logs2:15>,<natura:nether_planks:1>],
					[<roots:wildwood_log>,<roots:wildwood_planks>],
					[<thaumcraft:log_greatwood>,<thaumcraft:plank_greatwood>],
					[<thaumcraft:log_silverwood>,<thaumcraft:plank_silverwood>],
					[<twilightforest:twilight_log>,<twilightforest:twilight_oak_planks>],
					[<twilightforest:twilight_log:1>,<twilightforest:canopy_planks>],
					[<twilightforest:twilight_log:2>,<twilightforest:mangrove_planks>],
					[<twilightforest:twilight_log:3>,<twilightforest:dark_planks>],
					[<twilightforest:magic_log>,<twilightforest:time_planks>],
					[<twilightforest:magic_log:1>,<twilightforest:trans_planks>],
					[<twilightforest:magic_log:2>,<twilightforest:mine_planks>],
					[<twilightforest:magic_log:3>,<twilightforest:sort_planks>],
					[<totemic:cedar_log>,<totemic:cedar_plank>],
					[<traverse:fir_log>,<traverse:fir_planks>]] as IItemStack[][];

val logWoodNoOrigMekRecipe = [<divinerpg:divine_log>,<divinerpg:frozen_log>,<divinerpg:eden_log>,<divinerpg:wildwood_log>,<divinerpg:apalachia_log>,<divinerpg:skythern_log>,<divinerpg:mortum_log>,<divinerpg:eucalyptus_log>,<totemic:cedar_log>,<traverse:fir_log>] as IItemStack[];

for pair in logs_and_planks {
	if (!(logWoodNoOrigMekRecipe has pair[0])) {
		mods.mekanism.sawmill.removeRecipe(pair[0]);
	}
	mods.mekanism.sawmill.addRecipe(pair[0], pair[1] * 6, <thermalfoundation:material:800>, 1);
}
for log in <ore:logWood>.items {
	mods.enderio.SagMill.addRecipe([<thermalfoundation:material:800>, <thermalfoundation:material:800>, <thermalfoundation:material:800>, <thermalfoundation:material:800>], [100,90,50,10], log, "CHANCE_ONLY", 2400);
}
for stair in <ore:stairWood>.items {
	mods.enderio.SagMill.addRecipe([<thermalfoundation:material:800>], [100], stair, "MULTIPLY_OUTPUT", 1200);
}
for slab in <ore:slabWood>.items {
	mods.mekanism.sawmill.removeRecipe(slab);
	mods.mekanism.sawmill.addRecipe(slab, <minecraft:stick> * 3, <thermalfoundation:material:800>, 13);
	mods.enderio.SagMill.addRecipe([<thermalfoundation:material:800>], [100], slab, "MULTIPLY_OUTPUT", 1200);
}
for stick in <ore:stickWood>.items {
	mods.mekanism.sawmill.addRecipe(stick, <thermalfoundation:material:800>);
	mods.enderio.SagMill.addRecipe([<thermalfoundation:material:800>], [100], stick, "MULTIPLY_OUTPUT", 800);
}
mods.mekanism.enrichment.removeRecipe(<mekanism:sawdust>);

<ore:dustWood>.remove(<mekanism:sawdust>);
<ore:pulpWood>.add(<thermalfoundation:material:800>);
<ore:pulpWood>.remove(<mekanism:sawdust>);

# Flour
<ore:dustWheat>.add(<natura:materials:2>);
<ore:dustWheat>.removeItems([<appliedenergistics2:material:4>, <enderio:item_material:21>, <roots:flour>]);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wheat>);
Grinder.removeRecipe(<minecraft:wheat>);
mods.enderio.SagMill.removeRecipe(<minecraft:wheat>);
mods.roots.Mortar.removeRecipe(<roots:flour>);
recipes.remove(<natura:materials:2>);
furnace.remove(<minecraft:bread>, <appliedenergistics2:material:4>);
furnace.remove(<minecraft:bread>, <enderio:item_material:21>);
furnace.remove(<minecraft:bread>, <roots:flour>);
# More recipes in OreProcessingAdditions.zs

# Electrum Dust
<ore:dustElectrum>.remove(<immersiveengineering:metal:16>);
recipes.remove(<immersiveengineering:metal:16>);
furnace.remove(<thermalfoundation:material:161>, <immersiveengineering:metal:16>);

# Crushed Coal -> Pulverized Coal, other Coal Dust removals
mods.actuallyadditions.Crusher.removeRecipe(<actuallyadditions:item_dust:6>);
mods.actuallyadditions.Crusher.addRecipe(<thermalfoundation:material:768>, <minecraft:coal>);
mods.mekanism.enrichment.removeRecipe(<actuallyadditions:item_dust:6>, <minecraft:coal>);
mods.mekanism.enrichment.removeRecipe(<enderio:item_material:23>, <minecraft:coal>);
mods.mekanism.enrichment.removeRecipe(<bloodmagic:component:21>, <minecraft:coal>);
furnace.remove(<minecraft:coal>, <actuallyadditions:item_dust:6>);
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:coal>,<minecraft:coal>,<minecraft:flint>]);

# Pulverized Charcoal
mods.actuallyadditions.Crusher.addRecipe(<thermalfoundation:material:769>, <minecraft:coal:1>);

# Iron Dust
<ore:dustIron>.removeItems([<enderio:item_material:24>,<bloodmagic:component:19>,<immersiveengineering:metal:18>,<actuallyadditions:item_dust>]);
furnace.remove(<minecraft:iron_ingot>, <bloodmagic:component:19>);
furnace.remove(<minecraft:iron_ingot>, <enderio:item_material:24>);
furnace.remove(<minecraft:iron_ingot>, <actuallyadditions:item_dust>);
furnace.remove(<minecraft:iron_ingot>, <immersiveengineering:metal:18>);

# Gold Dust
<ore:dustGold>.removeItems([<actuallyadditions:item_dust:1>,<immersiveengineering:metal:19>,<enderio:item_material:25>,<appliedenergistics2:material:51>,<bloodmagic:component:20>]);
furnace.remove(<minecraft:gold_ingot>, <bloodmagic:component:20>);
furnace.remove(<minecraft:gold_ingot>, <appliedenergistics2:material:51>);
furnace.remove(<minecraft:gold_ingot>, <enderio:item_material:25>);
furnace.remove(<minecraft:gold_ingot>, <immersiveengineering:metal:19>);
furnace.remove(<minecraft:gold_ingot>, <actuallyadditions:item_dust:1>);

print("ENDING UnifyingDusts.zs");
