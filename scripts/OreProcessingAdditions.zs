#priority 10
# Author: Atricos

import crafttweaker.item.IItemStack;
import mods.astralsorcery.StarlightInfusion;
import mods.astralsorcery.Grindstone;
import mods.actuallyadditions.Crusher as AACrusher;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Pulverizer;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.extrautils2.Crusher as EUCrusher;
import mods.bloodmagic.AlchemyTable;
import mods.appliedenergistics2.Grinder;
import mods.enderio.SagMill;
import moretweaker.lightningcraft.LightningCrusher;
import mods.thermalexpansion.InductionSmelter;
import mods.roots.Mortar;
import mods.immersiveengineering.AlloySmelter;

print("STARTING OreProcessingAdditions.zs");

# Ingot/Gem -> Dust
function addMaterialToDustCrushing(ingot as IItemStack, dust as IItemStack) {
	recipes.addShapeless(dust, [ingot, <ore:dustPetrotheum>]);
	addMaterialToDustCrushingWOPetrotheum(ingot, dust);
}

# Ingot/Gem -> Dust, w/o Petrotheum
function addMaterialToDustCrushingWOPetrotheum(ingot as IItemStack, dust as IItemStack) {
	IECrusher.addRecipe(dust, ingot, 4000);
	AACrusher.addRecipe(dust, ingot);
	Grinder.addRecipe(dust, ingot, 4);
	mods.thermalexpansion.Pulverizer.addRecipe(dust, ingot, 2000);
	EUCrusher.add(dust, ingot);
	mods.enderio.SagMill.addRecipe([dust], [100], ingot);
	LightningCrusher.add(dust, ingot);
	mods.mekanism.crusher.addRecipe(ingot, dust);
}

# Ore -> 2x Dust
function addOreDoubling(ore as IItemStack, dust as IItemStack, ingot as IItemStack) {
	recipes.addShapeless(dust * 2, [ore, <ore:dustPetrotheum>]);
	recipes.addShapeless(ingot * 2, [ore, <ore:dustPetrotheum>, <ore:dustPyrotheum>]);
	recipes.addShapeless(ingot * 2, [ore, <ore:dustPetrotheum>, <ore:dustPyrotheum>]);
	IECrusher.addRecipe(dust * 2, ore, 4000);
	AACrusher.addRecipe(dust * 2, ore);
	mods.astralsorcery.Grindstone.addRecipe(ore, dust);
	Grinder.addRecipe(dust, ore, 4, dust, 0.9);
	mods.thermalexpansion.Pulverizer.addRecipe(dust * 2, ore, 4000);
	EUCrusher.add(dust * 2, ore);
	mods.enderio.SagMill.addRecipe([dust * 2], [100], ore);
	LightningCrusher.add(dust * 2, ore);
	mods.mekanism.enrichment.addRecipe(ore, dust * 2);
	mods.astralsorcery.StarlightInfusion.addInfusion(ore, ingot * 3, false, 1, 200);
}

# Ore -> 2x Ingot / 3x Ingot (InductionSmelter)
function addInductionSmelterOreMultiplying(ore as IItemStack, ingot as IItemStack) {
	mods.thermalexpansion.InductionSmelter.addRecipe(ingot * 2, <minecraft:sand:*>, ore, 4000, <thermalfoundation:material:865>, 5);
	mods.thermalexpansion.InductionSmelter.addRecipe(ingot * 3, <thermalfoundation:material:865>, ore, 4000, <thermalfoundation:material:864>, 75);
	mods.thermalexpansion.InductionSmelter.addRecipe(ingot * 3, <thermalfoundation:material:866>, ore, 4000, <thermalfoundation:material:865>, 75);
}

# Dust -> Ingot
function addDustSmelting(dust as IItemStack, ingot as IItemStack) {
	recipes.addShapeless(ingot, [dust, <ore:dustPyrotheum>]);
	furnace.addRecipe(ingot, dust);
	mods.immersiveengineering.ArcFurnace.addRecipe(ingot, dust, null, 100, 512);
	mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot, dust, 2000);
	mods.thermalexpansion.InductionSmelter.addRecipe(ingot, <minecraft:sand:*>, dust, 1000, <thermalfoundation:material:864>, 25);
	mods.enderio.AlloySmelter.addRecipe(ingot, [dust], 2000);
}

# Ore -> 1x Ingot (Smelting)
function addOreToIngotSmelting(ore as IItemStack, ingot as IItemStack) {
	furnace.addRecipe(ingot, ore);
	mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot, ore, 2000);
	mods.enderio.AlloySmelter.addRecipe(ingot, [ore], 2000);
}

# Ore -> 2x Gem
function addOreToGemProcessing(ore as IItemStack, gem as IItemStack, secondaryOutput as IItemStack, gemAmount as int, starlightInfusionGemAmount as int) {
	recipes.addShapeless(gem * gemAmount, [ore,<ore:dustPetrotheum>]);
	furnace.addRecipe(gem, ore);
	mods.astralsorcery.StarlightInfusion.addInfusion(ore, gem * starlightInfusionGemAmount, false, 1, 200);
	AACrusher.addRecipe(gem * gemAmount, ore, secondaryOutput, 50);
	mods.mekanism.enrichment.addRecipe(ore, gem * gemAmount);
	mods.thermalexpansion.RedstoneFurnace.addRecipe(gem, ore, 2000);
	mods.thermalexpansion.Pulverizer.addRecipe(gem * gemAmount, ore, 4000, secondaryOutput, 15);
	IECrusher.addRecipe(gem * gemAmount, ore, 4000, secondaryOutput, 0.15);
	EUCrusher.add(gem * gemAmount, ore, secondaryOutput, 0.15);
	mods.enderio.SagMill.addRecipe([gem * gemAmount], [100], ore, "NONE", 4000);
}

# Gem -> Dust
function addGemToDustProcessing(gem as IItemStack, dust as IItemStack, secondaryOutput as IItemStack, dustAmount as int) {
	AACrusher.addRecipe(dust * dustAmount, gem, secondaryOutput, 50);
	mods.mekanism.enrichment.addRecipe(gem, dust * dustAmount);
	mods.thermalexpansion.RedstoneFurnace.addRecipe(dust, gem, 2000);
	mods.thermalexpansion.Pulverizer.addRecipe(dust * dustAmount, gem, 4000, secondaryOutput, 15);
	IECrusher.addRecipe(dust * dustAmount, gem, 4000, secondaryOutput, 0.15);
	EUCrusher.add(dust * dustAmount, gem, secondaryOutput, 0.15);
	mods.enderio.SagMill.addRecipe([dust * dustAmount], [100], gem, "NONE", 4000);
}


# Putting together Ore Doubling, Ore Smelting, Ingot Smelting, Ingot Crushing, InductionSmelter Ore Multiplying
function addOreProcessingWithDustAndIngot(ore as IItemStack, dust as IItemStack, ingot as IItemStack) {
	addOreDoubling(ore, dust, ingot);
	addOreToIngotSmelting(ore, ingot);
	addMaterialToDustCrushing(ingot, dust);
	addDustSmelting(dust, ingot);
	addInductionSmelterOreMultiplying(ore, ingot);
}

# Adding Dust & Ore Doubling for materials that don't have one
function addDustProcessing(ore as IItemStack, dust as IItemStack, ingot as IItemStack) {
	addOreDoubling(ore, dust, ingot);
	addMaterialToDustCrushing(ingot, dust);
	addDustSmelting(dust, ingot);
}

# Cincinnasite
addOreToGemProcessing(<betternether:cincinnasite_ore>, <betternether:cincinnasite>, <minecraft:netherrack>, 2, 4);

# Relic
addOreProcessingWithDustAndIngot(relicOre, relicDust, relicIngot);

# Realmite
addDustProcessing(<divinerpg:realmite_ore>, <contenttweaker:realmite_dust>, <divinerpg:realmite_ingot>);

# Arlemite
addDustProcessing(<divinerpg:arlemite_ore>, <contenttweaker:arlemite_dust>, <divinerpg:arlemite_ingot>);

# Rupee
addDustProcessing(<divinerpg:rupee_ore>, <contenttweaker:rupee_dust>, <divinerpg:rupee_ingot>);

# Netherite
addDustProcessing(<divinerpg:netherite_ore>, <contenttweaker:netherite_dust>, <divinerpg:netherite_ingot>);

# Bloodgem
addOreToGemProcessing(<divinerpg:bloodgem_ore>, <divinerpg:bloodgem>, null, 2, 4);
addMaterialToDustCrushing(<divinerpg:bloodgem>, <contenttweaker:bloodgem_dust>);

# Ambrosium
addOreToGemProcessing(<aether_legacy:ambrosium_ore>, <aether_legacy:ambrosium_shard>, null, 2, 4);
addOreToIngotSmelting(<aether_legacy:ambrosium_ore>, <aether_legacy:ambrosium_shard>);

# Crushed Black Quartz
EUCrusher.add(<actuallyadditions:item_dust:7>, <actuallyadditions:item_misc:5>);
mods.mekanism.crusher.addRecipe(<actuallyadditions:item_misc:5>, <actuallyadditions:item_dust:7>);

# Black Quartz
val allBlackQuartzOres = [<actuallyadditions:block_misc:3>, <undergroundbiomes:igneous_stone_actuallyadditions_block_misc_3:*>, <undergroundbiomes:metamorphic_stone_actuallyadditions_block_misc_3:*>, <undergroundbiomes:sedimentary_stone_actuallyadditions_block_misc_3:*>] as IItemStack[];
for ore in allBlackQuartzOres {
	mods.mekanism.enrichment.addRecipe(ore, <actuallyadditions:item_misc:5> * 2);
}
var allBlackQuartzOresListed = [<actuallyadditions:block_misc:3>] as IItemStack[];
for i in 0 to 8 {
	allBlackQuartzOresListed += <undergroundbiomes:igneous_stone_actuallyadditions_block_misc_3>.withDamage(i);
	allBlackQuartzOresListed += <undergroundbiomes:metamorphic_stone_actuallyadditions_block_misc_3>.withDamage(i);
	allBlackQuartzOresListed += <undergroundbiomes:sedimentary_stone_actuallyadditions_block_misc_3>.withDamage(i);
}
for ore in allBlackQuartzOresListed {
	EUCrusher.add(<actuallyadditions:item_misc:5> * 2, ore);
}

# Zanite
val zaniteGem = <aether_legacy:zanite_gemstone>;
val zaniteOre = <aether_legacy:zanite_ore>;
recipes.addShapeless(zaniteGem * 2, [zaniteOre,<ore:dustPetrotheum>]);
furnace.addRecipe(zaniteGem, zaniteOre);
mods.astralsorcery.StarlightInfusion.addInfusion(zaniteOre, zaniteGem * 4, false, 1, 200);
mods.mekanism.enrichment.addRecipe(zaniteOre, zaniteGem * 2);
mods.thermalexpansion.RedstoneFurnace.addRecipe(zaniteGem, zaniteOre, 2000);
IECrusher.addRecipe(zaniteGem * 2, zaniteOre, 4000);
EUCrusher.add(zaniteGem * 2, zaniteOre);

# Silicon
addOreToGemProcessing(<galacticraftcore:basic_block_core:8>, <appliedenergistics2:material:5>, null, 2, 4);
addOreToGemProcessing(<galacticraftplanets:venus:10>, <appliedenergistics2:material:5>, null, 2, 4);

# Ilmenite Ore to Titanium, Rutile Ore to Titanium
addOreProcessingWithDustAndIngot(<galacticraftplanets:asteroids_block:4>, <galacticraftplanets:item_basic_asteroids:9>, <galacticraftplanets:item_basic_asteroids>);
addOreProcessingWithDustAndIngot(<libvulpes:ore0:8>, <galacticraftplanets:item_basic_asteroids:9>, <galacticraftplanets:item_basic_asteroids>);

# Tin
val additionalTinOres = [<erebus:ore_tin>, <galacticraftcore:basic_block_core:6>, <galacticraftplanets:mars:1>, <galacticraftplanets:venus:11>, <galacticraftcore:basic_block_moon:1>, <abyssalcraft:abytinore>] as IItemStack[];
for ore in additionalTinOres {
	addOreToIngotSmelting(ore, <thermalfoundation:material:129>);
}

# Aluminum
addOreToIngotSmelting(<erebus:ore_aluminium>,<thermalfoundation:material:132>);

# Copper
val additionalCopperOres = [<erebus:ore_copper>, <galacticraftcore:basic_block_core:5>, <galacticraftcore:basic_block_moon>, <galacticraftplanets:mars>, <galacticraftplanets:venus:7>, <abyssalcraft:abycopore>, <immersiveengineering:ore>] as IItemStack[];
for ore in additionalCopperOres {
	addOreToIngotSmelting(ore,<thermalfoundation:material:128>);
}

# Dark Dust
addMaterialToDustCrushing(<contenttweaker:dark_ingot>, <contenttweaker:dark_dust>);
addDustSmelting(<contenttweaker:dark_dust>, <contenttweaker:dark_ingot>);

# Energized Dark Dust
addMaterialToDustCrushing(<contenttweaker:energized_dark_ingot>, <contenttweaker:energized_dark_dust>);
addDustSmelting(<contenttweaker:energized_dark_dust>, <contenttweaker:energized_dark_ingot>);

# Coke Dust
mods.immersiveengineering.Crusher.removeRecipesForInput(<thermalfoundation:material:802>);
addMaterialToDustCrushing(<thermalfoundation:material:802>, <immersiveengineering:material:17>);

# Ender Dust
recipes.addShapeless(<appliedenergistics2:material:46>, [<minecraft:ender_pearl>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<appliedenergistics2:material:46>, <minecraft:ender_pearl>, 4000);
AACrusher.addRecipe(<appliedenergistics2:material:46>, <minecraft:ender_pearl>);
EUCrusher.add(<appliedenergistics2:material:46>, <minecraft:ender_pearl>);
LightningCrusher.add(<appliedenergistics2:material:46>, <minecraft:ender_pearl>);
mods.mekanism.crusher.addRecipe(<minecraft:ender_pearl>, <appliedenergistics2:material:46>);
Grinder.removeRecipe(<thermalfoundation:material:895>);

# Wheat to Flour
addMaterialToDustCrushing(<minecraft:wheat>, <natura:materials:2>);
Mortar.addRecipe(<natura:materials:2>, [<minecraft:wheat>, null, null, null, null]);
Mortar.addRecipe(<natura:materials:2> * 2, [<minecraft:wheat>, <minecraft:wheat>, null, null, null]);
Mortar.addRecipe(<natura:materials:2> * 3, [<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>, null, null]);
Mortar.addRecipe(<natura:materials:2> * 4, [<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>, null]);
Mortar.addRecipe(<natura:materials:2> * 5, [<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>]);

# QuantumFlux Industrial Grade Graphite Ore to Graphite Dust
addOreToIngotSmelting(<quantumflux:graphiteore>, <quantumflux:graphitedust>);
recipes.addShapeless(<quantumflux:graphitedust> * 2, [<quantumflux:graphiteore>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<quantumflux:graphitedust> * 2, <quantumflux:graphiteore>, 4000);
AACrusher.addRecipe(<quantumflux:graphitedust> * 2, <quantumflux:graphiteore>);
mods.astralsorcery.Grindstone.addRecipe(<quantumflux:graphiteore>, <quantumflux:graphitedust>);
Grinder.addRecipe(<quantumflux:graphitedust>, <quantumflux:graphiteore>, 4, <quantumflux:graphitedust>, 0.9);
mods.thermalexpansion.Pulverizer.addRecipe(<quantumflux:graphitedust> * 2, <quantumflux:graphiteore>, 4000);
EUCrusher.add(<quantumflux:graphitedust> * 2, <quantumflux:graphiteore>);
mods.enderio.SagMill.addRecipe([<quantumflux:graphitedust> * 2], [100], <quantumflux:graphiteore>);
LightningCrusher.add(<quantumflux:graphitedust> * 2, <quantumflux:graphiteore>);
mods.mekanism.enrichment.addRecipe(<quantumflux:graphiteore>, <quantumflux:graphitedust> * 2);

# Mekanism Lithium Dust -> Alchemistry Lithium Ingot
addDustSmelting(<mekanism:otherdust:4>, <alchemistry:ingot:3>);

# Alchemistry Lithium Ingot -> Mekanism Lithium Dust
recipes.addShapeless(<mekanism:otherdust:4>, [<alchemistry:ingot:3>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<mekanism:otherdust:4>, <alchemistry:ingot:3>, 4000);
Grinder.addRecipe(<mekanism:otherdust:4>, <alchemistry:ingot:3>, 4);
EUCrusher.add(<mekanism:otherdust:4>, <alchemistry:ingot:3>);
mods.enderio.SagMill.addRecipe([<mekanism:otherdust:4>], [100], <alchemistry:ingot:3>);
LightningCrusher.add(<mekanism:otherdust:4>, <alchemistry:ingot:3>);
mods.mekanism.crusher.addRecipe(<alchemistry:ingot:3>, <mekanism:otherdust:4>);

# Eden Ore -> Eden Fragments
mods.thermalexpansion.Pulverizer.removeRecipe(<divinerpg:eden_ore>);
mods.actuallyadditions.Crusher.removeRecipe(<divinerpg:eden_gem>);
addGemToDustProcessing(<divinerpg:eden_ore>, <divinerpg:eden_fragments>, null, 3);

# Wildwood Ore -> Wildwood Fragments
mods.thermalexpansion.Pulverizer.removeRecipe(<divinerpg:wildwood_ore>);
mods.actuallyadditions.Crusher.removeRecipe(<divinerpg:wildwood_gem>);
addGemToDustProcessing(<divinerpg:wildwood_ore>, <divinerpg:wildwood_fragments>, null, 3);

# Apalachia Ore -> Apalachia Fragments
mods.thermalexpansion.Pulverizer.removeRecipe(<divinerpg:apalachia_ore>);
mods.actuallyadditions.Crusher.removeRecipe(<divinerpg:apalachia_gem>);
addGemToDustProcessing(<divinerpg:apalachia_ore>, <divinerpg:apalachia_fragments>, null, 3);

# Skythern Ore -> Skythern Fragments
mods.thermalexpansion.Pulverizer.removeRecipe(<divinerpg:skythern_ore>);
mods.actuallyadditions.Crusher.removeRecipe(<divinerpg:skythern_gem>);
addGemToDustProcessing(<divinerpg:skythern_ore>, <divinerpg:skythern_fragments>, null, 3);

# Mortum Ore -> Mortum Fragments
mods.thermalexpansion.Pulverizer.removeRecipe(<divinerpg:mortum_ore>);
mods.actuallyadditions.Crusher.removeRecipe(<divinerpg:mortum_gem>);
addGemToDustProcessing(<divinerpg:mortum_ore>, <divinerpg:mortum_fragments>, null, 3);

function divinerpg_gem_to_dust(gem as IItemStack, dust as IItemStack) {
	mods.thermalexpansion.Pulverizer.removeRecipe(gem);
	mods.actuallyadditions.Crusher.removeRecipe(dust);
	addGemToDustProcessing(gem, dust, null, 2);
}

function divinerpg_dust_additions(plants as IItemStack[], gem as IItemStack, dust as IItemStack) {
	for plant in plants {
		addGemToDustProcessing(plant, dust, null, 4);
	}
	divinerpg_gem_to_dust(gem, dust);
}

# Sun Blossom, Eden Brush, Sunbloom, Eden Gem -> Eden Dust
divinerpg_dust_additions([<divinerpg:sun_blossom>, <divinerpg:eden_brush>, <divinerpg:sunbloom>], <divinerpg:eden_gem>, <divinerpg:eden_dust>);

# Wildwood Tallgrass, Moon Bud, Moonlight Fern, Wildwood Gem -> Wildwood Dust
divinerpg_dust_additions([<divinerpg:wildwood_tallgrass>, <divinerpg:moon_bud>, <divinerpg:moonlight_fern>], <divinerpg:wildwood_gem>, <divinerpg:wildwood_dust>);

# Apalachia Tallgrass, Dusk Flower, Apalachia Gem -> Apalachia Dust
divinerpg_dust_additions([<divinerpg:apalachia_tallgrass>, <divinerpg:dusk_flower>], <divinerpg:apalachia_gem>, <divinerpg:apalachia_dust>);

# Dust Lily, Dust Brambles, Skythern Brush, Skythern Gem -> Skythern Dust
divinerpg_dust_additions([<divinerpg:dust_lily>, <divinerpg:dust_brambles>, <divinerpg:skythern_brush>], <divinerpg:skythern_gem>, <divinerpg:skythern_dust>);

# Demon Brambles, Mortum Brush, Eye Plant, Mortum Gem -> Mortum Dust
divinerpg_dust_additions([<divinerpg:demon_brambles>, <divinerpg:mortum_brush>, <divinerpg:eye_plant>], <divinerpg:mortum_gem>, <divinerpg:mortum_dust>);

# Coralium Ore -> Coralium Gems
val aby_coralium_ores = [<abyssalcraft:coraliumore>, <abyssalcraft:abycorore>] as IItemStack[];
for aby_ore in aby_coralium_ores {
	mods.astralsorcery.StarlightInfusion.addInfusion(aby_ore, <abyssalcraft:coralium> * 3, false, 1, 200);
	mods.mekanism.enrichment.addRecipe(aby_ore, <abyssalcraft:coralium> * 2);
	EUCrusher.add(<abyssalcraft:coralium> * 2, aby_ore, null, 0.15);
	mods.enderio.SagMill.addRecipe([<abyssalcraft:coralium> * 2], [100], aby_ore, "NONE", 4000);
}

# Abyssalnite Ore -> Abyssalnite Dust/Ingot
val aby_abyssalnite_ores = [<abyssalcraft:abyore>, <abyssalcraft:abydreadore>] as IItemStack[];
for aby_ore in aby_abyssalnite_ores {
	Grinder.addRecipe(<acintegration:dust>, aby_ore, 4, <acintegration:dust>, 0.9);
	mods.enderio.SagMill.addRecipe([<acintegration:dust> * 2], [100], aby_ore);
	mods.mekanism.enrichment.addRecipe(aby_ore, <acintegration:dust> * 2);
	mods.astralsorcery.StarlightInfusion.addInfusion(aby_ore, <abyssalcraft:abyingot> * 3, false, 1, 200);
}
addOreDoubling(<abyssalcraft:dreadore>, <acintegration:dust>, <abyssalcraft:abyingot>);

# Abyssalnite Ingot -> Dust
Grinder.addRecipe(<acintegration:dust>, <abyssalcraft:abyingot>, 4);
mods.enderio.SagMill.addRecipe([<acintegration:dust>], [100], <abyssalcraft:abyingot>);
mods.mekanism.crusher.addRecipe(<abyssalcraft:abyingot>, <acintegration:dust>);

# Pearlescent Coralium Ore -> Coralium Pearl
recipes.addShapeless(<abyssalcraft:cpearl> * 2, [<abyssalcraft:abypcorore>,<ore:dustPetrotheum>]);
mods.astralsorcery.StarlightInfusion.addInfusion(<abyssalcraft:abypcorore>, <abyssalcraft:cpearl> * 3, false, 1, 200);
AACrusher.addRecipe(<abyssalcraft:cpearl> * 2, <abyssalcraft:abypcorore>, null, 50);
mods.mekanism.enrichment.addRecipe(<abyssalcraft:abypcorore>, <abyssalcraft:cpearl> * 2);
mods.thermalexpansion.Pulverizer.addRecipe(<abyssalcraft:cpearl> * 2, <abyssalcraft:abypcorore>, 4000, null, 15);
IECrusher.addRecipe(<abyssalcraft:cpearl> * 2, <abyssalcraft:abypcorore>, 4000, null, 0.15);
EUCrusher.add(<abyssalcraft:cpearl> * 2, <abyssalcraft:abypcorore>, null, 0.15);
mods.enderio.SagMill.addRecipe([<abyssalcraft:cpearl> * 2], [100], <abyssalcraft:abypcorore>, "NONE", 4000);

# Liquified Coralium Ore -> Refined Coralium Dust/Ingot
Grinder.addRecipe(<acintegration:dust:1>, <abyssalcraft:abylcorore>, 4, <acintegration:dust:1>, 0.9);
mods.enderio.SagMill.addRecipe([<acintegration:dust:1>* 2], [100], <abyssalcraft:abylcorore>);
mods.mekanism.enrichment.addRecipe(<abyssalcraft:abylcorore>, <acintegration:dust:1> * 2);
mods.astralsorcery.StarlightInfusion.addInfusion(<abyssalcraft:abylcorore>, <abyssalcraft:cingot> * 3, false, 1, 200);

# Refined Coralium Ingot -> Dust
Grinder.addRecipe(<acintegration:dust:1>, <abyssalcraft:cingot>, 4);
mods.enderio.SagMill.addRecipe([<acintegration:dust:1>], [100], <abyssalcraft:cingot>);
mods.mekanism.crusher.addRecipe(<abyssalcraft:cingot>, <acintegration:dust:1>);

# Crushed Dark Gem
recipes.addShapeless(<evilcraft:dark_gem_crushed>, [<evilcraft:dark_gem>, <ore:dustPetrotheum>]);
AACrusher.addRecipe(<evilcraft:dark_gem_crushed>, <evilcraft:dark_gem>);
Grinder.addRecipe(<evilcraft:dark_gem_crushed>, <evilcraft:dark_gem>, 4);
mods.thermalexpansion.Pulverizer.addRecipe(<evilcraft:dark_gem_crushed>, <evilcraft:dark_gem>, 2000);
EUCrusher.add(<evilcraft:dark_gem_crushed>, <evilcraft:dark_gem>);
LightningCrusher.add(<evilcraft:dark_gem_crushed>, <evilcraft:dark_gem>);
mods.mekanism.crusher.addRecipe(<evilcraft:dark_gem>, <evilcraft:dark_gem_crushed>);

# Amethyst unification
<ore:oreAmethyst>.remove(<bewitchment:amethyst_ore>);
recipes.addShapeless(<mysticalworld:amethyst_gem> * 2, [<ore:oreAmethyst>,<ore:dustPetrotheum>]);
furnace.remove(<bewitchment:amethyst>);
furnace.addRecipe(<mysticalworld:amethyst_gem>, <ore:oreAmethyst>);
mods.astralsorcery.StarlightInfusion.addInfusion(<mysticalworld:amethyst_ore>, <mysticalworld:amethyst_gem> * 3, false, 1, 200);
AACrusher.addRecipe(<mysticalworld:amethyst_gem> * 2, <ore:oreAmethyst>, null, 50);
mods.mekanism.enrichment.removeRecipe(<mysticalworld:amethyst_ore>);
mods.mekanism.enrichment.removeRecipe(<bewitchment:amethyst_ore>);
mods.mekanism.enrichment.addRecipe(<ore:oreAmethyst>, <mysticalworld:amethyst_gem> * 2);
for amethyst_ore in <ore:oreAmethyst>.items {
	mods.thermalexpansion.RedstoneFurnace.removeRecipe(amethyst_ore);
	mods.thermalexpansion.RedstoneFurnace.addRecipe(<mysticalworld:amethyst_gem>, amethyst_ore, 2000);
	EUCrusher.add(<mysticalworld:amethyst_gem> * 2, amethyst_ore, null, 0.15);
}
IECrusher.removeRecipe(<bewitchment:amethyst>);
IECrusher.addRecipe(<mysticalworld:amethyst_gem> * 2, <ore:oreAmethyst>, 4000, null, 0.15);

# Magic Crystal
#addOreToGemProcessing(<ebwizardry:crystal_ore>, <ebwizardry:magic_crystal>, null, 2, 4);

# Erebus Gneiss -> Gneiss Rock
addOreToGemProcessing(<erebus:gneiss>, <erebus:materials:47>, null, 4, 4);

# Fluix Dust
recipes.addShapeless(<appliedenergistics2:material:8>, [<appliedenergistics2:material:7>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, 4000);
AACrusher.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>);
EUCrusher.add(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>);
LightningCrusher.add(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>);

# Hay Bale -> 9x Wheat
IECrusher.addRecipe(<minecraft:wheat> * 9, <minecraft:hay_block>, 4000);
AACrusher.addRecipe(<minecraft:wheat> * 9, <minecraft:hay_block>);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:wheat> * 9, <minecraft:hay_block>, 2000);
EUCrusher.add(<minecraft:wheat> * 9, <minecraft:hay_block>);
mods.enderio.SagMill.addRecipe([<minecraft:wheat> * 9], [100], <minecraft:hay_block>);
LightningCrusher.add(<minecraft:wheat> * 9, <minecraft:hay_block>);
mods.mekanism.crusher.addRecipe(<minecraft:wheat> * 9, <minecraft:hay_block>);

# Nether Ore fixes & additions
<ore:oreEmerald>.remove(<bno:ore_netheremerald>);
<ore:oreNetherEmerald>.add(<bno:ore_netheremerald>);
<ore:oreDiamond>.remove(<bno:ore_netherdiamond>);
<ore:oreNetherDiamond>.add(<bno:ore_netherdiamond>);
<ore:oreRedstone>.remove(<bno:ore_netherredstone>);
<ore:oreNetherRedstone>.add(<bno:ore_netherredstone>);
<ore:oreLapis>.remove(<bno:ore_netherlapis>);
<ore:oreNetherLapis>.add(<bno:ore_netherlapis>);
<ore:oreCoal>.remove(<bno:ore_nethercoal>);
<ore:oreNetherCoal>.add(<bno:ore_nethercoal>);
<ore:oreGold>.remove(<bno:ore_nethergold>);
<ore:oreNetherGold>.add(<bno:ore_nethergold>);
<ore:oreIron>.remove(<bno:ore_netheriron>);
<ore:oreNetherIron>.add(<bno:ore_netheriron>);
<ore:oreCopper>.remove(<bno:ore_nethercopper>);
<ore:oreNetherCopper>.add(<bno:ore_nethercopper>);
<ore:oreTin>.remove(<bno:ore_nethertin>);
<ore:oreNetherTin>.add(<bno:ore_nethertin>);

mods.actuallyadditions.Crusher.removeRecipe(<thermalfoundation:material:64>);
AACrusher.addRecipe(<thermalfoundation:material:64>, <thermalfoundation:material:128>);
AACrusher.addRecipe(<thermalfoundation:material:64> * 4, <bno:ore_nethercopper>, <thermalfoundation:material:1>, 20);
for copper_ore in <ore:oreCopper>.items {
	AACrusher.addRecipe(<thermalfoundation:material:64> * 2, copper_ore, <thermalfoundation:material:1>, 20);
}

mods.actuallyadditions.Crusher.removeRecipe(<thermalfoundation:material:65>);
AACrusher.addRecipe(<thermalfoundation:material:65>, <thermalfoundation:material:129>);
AACrusher.addRecipe(<thermalfoundation:material:65> * 4, <bno:ore_nethertin>, <thermalfoundation:material>, 20);
for tin_ore in <ore:oreTin>.items {
	AACrusher.addRecipe(<thermalfoundation:material:65> * 2, tin_ore, <thermalfoundation:material>, 20);
}

mods.actuallyadditions.Crusher.removeRecipe(<minecraft:redstone>);
AACrusher.addRecipe(<minecraft:redstone> * 6, <bno:ore_netherredstone>, <thermalfoundation:material:866>, 25);
for redstone_ore in <ore:oreRedstone>.items {
	AACrusher.addRecipe(<minecraft:redstone> * 6, redstone_ore, <thermalfoundation:material:866>, 25);
}

function addNetherOreToGemProcessing(ore as IItemStack, dust as IItemStack, gem as IItemStack, dustAmount as int, gemAmount as int, secondaryOutput as IItemStack) {
	IECrusher.addRecipe(gem * gemAmount, ore, 4000, secondaryOutput, 0.1);
	mods.astralsorcery.Grindstone.addRecipe(ore, dust);
	EUCrusher.add(gem * gemAmount, ore, gem, 0.2f);
	LightningCrusher.add(dust * dustAmount, ore);
	mods.astralsorcery.StarlightInfusion.addInfusion(ore, gem * gemAmount, false, 1, 200);
}

function addNetherOreToIngotProcessing(ore as IItemStack, dust as IItemStack, ingot as IItemStack, secondaryOutput as IItemStack) {
	IECrusher.addRecipe(dust * 2, ore, 4000, secondaryOutput, 0.1);
	mods.astralsorcery.Grindstone.addRecipe(ore, dust);
	EUCrusher.add(dust * 2, ore, secondaryOutput, 0.1f);
	LightningCrusher.add(dust * 2, ore);
	mods.astralsorcery.StarlightInfusion.addInfusion(ore, ingot * 3, false, 1, 200);
}

addNetherOreToGemProcessing(<bno:ore_netheremerald>, <actuallyadditions:item_dust:3>, <minecraft:emerald>, 3, 2, null);
addNetherOreToGemProcessing(<bno:ore_netherdiamond>, <mekanism:otherdust>, <minecraft:diamond>, 3, 2, null);
addNetherOreToGemProcessing(<bno:ore_netherlapis>, <actuallyadditions:item_dust:4>, <minecraft:dye:4>, 12, 9, <thermalfoundation:material:771>);
addNetherOreToGemProcessing(<bno:ore_nethercoal>, <thermalfoundation:material:768>, <minecraft:coal>, 4, 4, null);
addNetherOreToGemProcessing(<bno:ore_netherredstone>, <minecraft:redstone>, <minecraft:redstone>, 8, 8, <thermalfoundation:material:866>);
mods.thermalexpansion.Pulverizer.removeRecipe(<bno:ore_netherredstone>);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:redstone> * 6, <bno:ore_netherredstone>, 4000, <thermalfoundation:material:866>, 25);
mods.enderio.SagMill.removeRecipe(<bno:ore_netherredstone>);
mods.enderio.SagMill.addRecipe([<minecraft:redstone> * 6, <thermalfoundation:material:866>, <minecraft:netherrack>, <extrautils2:ingredients>], [1,0.25,0.1,0.01], <bno:ore_netherredstone>, "NONE", 3600);

addNetherOreToIngotProcessing(<bno:ore_nethergold>, <thermalfoundation:material:1>, <minecraft:gold_ingot>, <thermalfoundation:material:866>);
addNetherOreToIngotProcessing(<bno:ore_netheriron>, <thermalfoundation:material>, <minecraft:iron_ingot>, <thermalfoundation:material:69>);
addNetherOreToIngotProcessing(<bno:ore_nethercopper>, <thermalfoundation:material:64>, <thermalfoundation:material:128>, <thermalfoundation:material:1>);
addNetherOreToIngotProcessing(<bno:ore_nethertin>, <thermalfoundation:material:65>, <thermalfoundation:material:129>, null);

function addAdditionalNetherGemProcessing(ore as IItemStack, gem as IItemStack, gemAmount as int, secondaryOutput as IItemStack) {
	IECrusher.addRecipe(gem * gemAmount, ore, 4000, secondaryOutput, 0.4);
	AACrusher.addRecipe(gem * gemAmount, ore, secondaryOutput, 0.4);
	mods.astralsorcery.Grindstone.addRecipe(ore, gem);
	Grinder.addRecipe(gem, ore, 4, gem, 0.9);
	EUCrusher.add(gem * gemAmount, ore, secondaryOutput, 0.4f);
	LightningCrusher.add(gem * gemAmount, ore);
	mods.mekanism.enrichment.addRecipe(ore, gem * gemAmount);
}

addAdditionalNetherGemProcessing(<thermalfoundation:ore_fluid:3>,<thermalfoundation:material:894>,3,<thermalfoundation:material:771>);
mods.mekanism.enrichment.removeRecipe(<mysticalagriculture:nether_inferium_ore>);
addAdditionalNetherGemProcessing(<mysticalagriculture:nether_inferium_ore>,<mysticalagriculture:crafting>,5,null);
mods.mekanism.enrichment.removeRecipe(<mysticalagriculture:nether_prosperity_ore>);
addAdditionalNetherGemProcessing(<mysticalagriculture:nether_prosperity_ore>,<mysticalagriculture:crafting:5>,5,null);

# Redstone Ore SAG Milling can produce a Resonating Redstone Crystal
mods.enderio.SagMill.removeRecipe(<minecraft:redstone_ore>);
mods.enderio.SagMill.addRecipe([<minecraft:redstone> * 6, <thermalfoundation:material:866>, <minecraft:cobblestone>, <extrautils2:ingredients>], [1,0.25,0.1,0.01], <minecraft:redstone_ore>, "NONE", 3600);

# Sky Stone Dust
recipes.addShapeless(<appliedenergistics2:material:45>, [<appliedenergistics2:sky_stone_block>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>, 4000);
AACrusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>);
EUCrusher.add(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>);
mods.enderio.SagMill.addRecipe([<appliedenergistics2:material:45>], [100], <appliedenergistics2:sky_stone_block>);
LightningCrusher.add(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>);
mods.mekanism.crusher.addRecipe(<appliedenergistics2:sky_stone_block>, <appliedenergistics2:material:45>);

# Pulverized Iridium
Grinder.addRecipe(<thermalfoundation:material:71>, <thermalfoundation:material:135>, 4);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:71>], [100], <thermalfoundation:material:135>);

# Crushed Black Quartz
recipes.addShapeless(<actuallyadditions:item_dust:7>, [<actuallyadditions:item_misc:5>, <ore:dustPetrotheum>]);
Grinder.addRecipe(<actuallyadditions:item_dust:7>, <actuallyadditions:item_misc:5>, 4);
mods.enderio.SagMill.addRecipe([<actuallyadditions:item_dust:7>], [100], <actuallyadditions:item_misc:5>);

# Resonating Redstone Crystal
mods.thermalexpansion.Pulverizer.removeRecipe(<extrautils2:ingredients>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<extrautils2:ingredients>);
LightningCrusher.remove(<minecraft:redstone>);
LightningCrusher.add(<minecraft:redstone> * 6, <ore:oreRedstone>);
LightningCrusher.add(<minecraft:redstone> * 6, <bno:ore_netherredstone>);

# Prosperity Ore
recipes.addShapeless(<mysticalagriculture:crafting:5> * 4, [<mysticalagriculture:prosperity_ore>,<ore:dustPetrotheum>]);
mods.astralsorcery.StarlightInfusion.addInfusion(<mysticalagriculture:prosperity_ore>, <mysticalagriculture:crafting:5> * 6, false, 1, 200);
AACrusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:prosperity_ore>);
IECrusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:prosperity_ore>, 4000);
EUCrusher.add(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:prosperity_ore>);
LightningCrusher.add(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:prosperity_ore>);
mods.astralsorcery.Grindstone.addRecipe(<mysticalagriculture:prosperity_ore>, <mysticalagriculture:crafting:5>);

# Nether Prosperity Ore
recipes.addShapeless(<mysticalagriculture:crafting:5> * 5, [<mysticalagriculture:nether_prosperity_ore>,<ore:dustPetrotheum>]);
mods.astralsorcery.StarlightInfusion.addInfusion(<mysticalagriculture:nether_prosperity_ore>, <mysticalagriculture:crafting:5> * 6, false, 1, 200);

# End Prosperity Ore
recipes.addShapeless(<mysticalagriculture:crafting:5> * 5, [<mysticalagriculture:end_prosperity_ore>,<ore:dustPetrotheum>]);
mods.astralsorcery.StarlightInfusion.addInfusion(<mysticalagriculture:end_prosperity_ore>, <mysticalagriculture:crafting:5> * 6, false, 1, 200);
AACrusher.addRecipe(<mysticalagriculture:crafting:5> * 5, <mysticalagriculture:end_prosperity_ore>);
IECrusher.addRecipe(<mysticalagriculture:crafting:5> * 5, <mysticalagriculture:end_prosperity_ore>, 4000);
EUCrusher.add(<mysticalagriculture:crafting:5> * 5, <mysticalagriculture:end_prosperity_ore>);
LightningCrusher.add(<mysticalagriculture:crafting:5> * 5, <mysticalagriculture:end_prosperity_ore>);
mods.astralsorcery.Grindstone.addRecipe(<mysticalagriculture:end_prosperity_ore>, <mysticalagriculture:crafting:5>);
mods.mekanism.enrichment.removeRecipe(<mysticalagriculture:end_prosperity_ore>);
mods.mekanism.enrichment.addRecipe(<mysticalagriculture:end_prosperity_ore>, <mysticalagriculture:crafting:5> * 5);
mods.thermalexpansion.Pulverizer.removeRecipe(<mysticalagriculture:end_prosperity_ore>);
mods.thermalexpansion.Pulverizer.addRecipe(<mysticalagriculture:crafting:5> * 5, <mysticalagriculture:end_prosperity_ore>, 4000);
mods.enderio.SagMill.removeRecipe(<mysticalagriculture:end_prosperity_ore>);
mods.enderio.SagMill.addRecipe([<mysticalagriculture:crafting:5> * 5, <minecraft:end_stone>], [1, 0.15], <mysticalagriculture:end_prosperity_ore>, "MULTIPLY_OUTPUT");

# Inferium Ore
recipes.addShapeless(<mysticalagriculture:crafting> * 4, [<mysticalagriculture:inferium_ore>,<ore:dustPetrotheum>]);
mods.astralsorcery.StarlightInfusion.addInfusion(<mysticalagriculture:inferium_ore>, <mysticalagriculture:crafting> * 6, false, 1, 200);
AACrusher.addRecipe(<mysticalagriculture:crafting> * 4, <mysticalagriculture:inferium_ore>);
IECrusher.addRecipe(<mysticalagriculture:crafting> * 4, <mysticalagriculture:inferium_ore>, 4000);
EUCrusher.add(<mysticalagriculture:crafting> * 4, <mysticalagriculture:inferium_ore>);
LightningCrusher.add(<mysticalagriculture:crafting> * 4, <mysticalagriculture:inferium_ore>);
mods.astralsorcery.Grindstone.addRecipe(<mysticalagriculture:inferium_ore>, <mysticalagriculture:crafting>);

# Nether Inferium Ore
recipes.addShapeless(<mysticalagriculture:crafting> * 5, [<mysticalagriculture:nether_inferium_ore>,<ore:dustPetrotheum>]);
mods.astralsorcery.StarlightInfusion.addInfusion(<mysticalagriculture:nether_inferium_ore>, <mysticalagriculture:crafting> * 6, false, 1, 200);

# End Inferium Ore
recipes.addShapeless(<mysticalagriculture:crafting> * 5, [<mysticalagriculture:end_inferium_ore>,<ore:dustPetrotheum>]);
mods.astralsorcery.StarlightInfusion.addInfusion(<mysticalagriculture:end_inferium_ore>, <mysticalagriculture:crafting> * 6, false, 1, 200);
AACrusher.addRecipe(<mysticalagriculture:crafting> * 5, <mysticalagriculture:end_inferium_ore>);
IECrusher.addRecipe(<mysticalagriculture:crafting> * 5, <mysticalagriculture:end_inferium_ore>, 4000);
EUCrusher.add(<mysticalagriculture:crafting> * 5, <mysticalagriculture:end_inferium_ore>);
LightningCrusher.add(<mysticalagriculture:crafting> * 5, <mysticalagriculture:end_inferium_ore>);
mods.astralsorcery.Grindstone.addRecipe(<mysticalagriculture:end_inferium_ore>, <mysticalagriculture:crafting>);
mods.mekanism.enrichment.removeRecipe(<mysticalagriculture:end_inferium_ore>);
mods.mekanism.enrichment.addRecipe(<mysticalagriculture:end_inferium_ore>, <mysticalagriculture:crafting> * 5);
mods.thermalexpansion.Pulverizer.removeRecipe(<mysticalagriculture:end_inferium_ore>);
mods.thermalexpansion.Pulverizer.addRecipe(<mysticalagriculture:crafting> * 5, <mysticalagriculture:end_inferium_ore>, 4000);
mods.enderio.SagMill.removeRecipe(<mysticalagriculture:end_inferium_ore>);
mods.enderio.SagMill.addRecipe([<mysticalagriculture:crafting> * 5, <minecraft:end_stone>], [1, 0.15], <mysticalagriculture:end_inferium_ore>, "MULTIPLY_OUTPUT");

# Salis Mundus
addMaterialToDustCrushingWOPetrotheum(<contenttweaker:rainbow_tablet>, <thaumcraft:salis_mundus>);

# Quartz Sliver
addMaterialToDustCrushingWOPetrotheum(<botania:quartz:6>, <thaumcraft:nugget:9> * 16);

# Tier 1 Mob Chunk
addMaterialToDustCrushingWOPetrotheum(<openblocks:trophy:*>, <mysticalagriculture:chunk>);

# Bewitchment Silver Ore removal
<ore:oreSilver>.remove(<bewitchment:silver_ore>);

# Electricium Dust
Grinder.addRecipe(<lightningcraft:dust>, <lightningcraft:ingot>, 4);
EUCrusher.add(<lightningcraft:dust>, <lightningcraft:ingot>);
mods.enderio.SagMill.addRecipe([<lightningcraft:dust>], [100], <lightningcraft:ingot>);
mods.mekanism.crusher.addRecipe(<lightningcraft:ingot>, <lightningcraft:dust>);

# Skyfather Dust
Grinder.addRecipe(<lightningcraft:dust:1>, <lightningcraft:ingot:1>, 4);
EUCrusher.add(<lightningcraft:dust:1>, <lightningcraft:ingot:1>);
mods.enderio.SagMill.addRecipe([<lightningcraft:dust:1>], [100], <lightningcraft:ingot:1>);
mods.mekanism.crusher.addRecipe(<lightningcraft:ingot:1>, <lightningcraft:dust:1>);

# Mystic Dust
Grinder.addRecipe(<lightningcraft:dust:2>, <lightningcraft:ingot:2>, 4);
EUCrusher.add(<lightningcraft:dust:2>, <lightningcraft:ingot:2>);
mods.enderio.SagMill.addRecipe([<lightningcraft:dust:2>], [100], <lightningcraft:ingot:2>);
mods.mekanism.crusher.addRecipe(<lightningcraft:ingot:2>, <lightningcraft:dust:2>);

# Stardust from Starmetal
Grinder.addRecipe(<astralsorcery:itemcraftingcomponent:2> * 2, <astralsorcery:itemcraftingcomponent:1>, 4);
mods.mekanism.crusher.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2> * 2);

# Starmetal from Stardust
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>, 2000);
mods.enderio.AlloySmelter.addRecipe(<astralsorcery:itemcraftingcomponent:1>, [<astralsorcery:itemcraftingcomponent:2>], 2000);

# Lunar Sapphire
addOreToGemProcessing(<galacticraftcore:basic_block_moon:6>, <galacticraftcore:item_basic_moon:2>, null, 2, 3);

# Cheese Curd
addOreToGemProcessing(<galacticraftcore:basic_block_moon:2>, <galacticraftcore:cheese_curd>, null, 2, 3);

print("ENDING OreProcessingAdditions.zs");