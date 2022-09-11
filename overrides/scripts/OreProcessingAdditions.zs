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
import mods.mekanism.enrichment;
import mods.mekanism.purification;
import mods.mekanism.chemical.injection;
import mods.mekanism.chemical.dissolution;
import mods.integrateddynamics.MechanicalSqueezer;
import mods.abyssalcraft.Transmutator;
import mods.botania.ManaInfusion;

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
	mods.enderio.SagMill.addRecipe([dust], [1.0], ingot);
	LightningCrusher.add(dust, ingot);
	mods.mekanism.crusher.addRecipe(ingot, dust);
}

# Ore -> 2x Dust
function addOreDoubling(ore as IItemStack, dust as IItemStack, ingot as IItemStack) {
	recipes.addShapeless(dust * 2, [ore, <ore:dustPetrotheum>]);
	recipes.addShapeless(ingot * 2, [ore, <ore:dustPetrotheum>, <ore:dustPyrotheum>]);
	recipes.addShapeless(ingot, [ore, <ore:dustPyrotheum>]);
	IECrusher.addRecipe(dust * 2, ore, 4000);
	AACrusher.addRecipe(dust * 2, ore);
	mods.astralsorcery.Grindstone.addRecipe(ore, dust);
	Grinder.addRecipe(dust, ore, 4, dust, 0.9);
	mods.thermalexpansion.Pulverizer.addRecipe(dust * 2, ore, 4000);
	EUCrusher.add(dust * 2, ore);
	mods.enderio.SagMill.addRecipe([dust * 2], [1.0], ore);
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
	#mods.enderio.AlloySmelter.addRecipe(ingot, [dust], 2000);
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
	mods.enderio.SagMill.addRecipe([gem * gemAmount], [1.0], ore, "NONE", 4000);
}

# Gem -> Dust
function addGemToDustProcessing(gem as IItemStack, dust as IItemStack, secondaryOutput as IItemStack, dustAmount as int) {
	AACrusher.addRecipe(dust * dustAmount, gem, secondaryOutput, 50);
	mods.mekanism.enrichment.addRecipe(gem, dust * dustAmount);
	mods.thermalexpansion.RedstoneFurnace.addRecipe(dust, gem, 2000);
	mods.thermalexpansion.Pulverizer.addRecipe(dust * dustAmount, gem, 4000, secondaryOutput, 15);
	IECrusher.addRecipe(dust * dustAmount, gem, 4000, secondaryOutput, 0.15);
	EUCrusher.add(dust * dustAmount, gem, secondaryOutput, 0.15);
	mods.enderio.SagMill.addRecipe([dust * dustAmount], [1.0], gem, "NONE", 4000);
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

mods.enderio.SagMill.addRecipe([<actuallyadditions:item_misc:5> * 4], [1.0], <actuallyadditions:block_misc:2>, "NONE");
IECrusher.addRecipe(<actuallyadditions:item_misc:5> * 4, <actuallyadditions:block_misc:2>, 4000);
EUCrusher.add(<actuallyadditions:item_misc:5> * 4, <actuallyadditions:block_misc:2>);
mods.thermalexpansion.Pulverizer.addRecipe(<actuallyadditions:item_misc:5> * 4, <actuallyadditions:block_misc:2>, 2000);
mods.botania.ManaInfusion.addAlchemy(<actuallyadditions:item_misc:5> * 4, <actuallyadditions:block_misc:2>, 5000);
mods.abyssalcraft.Transmutator.addTransmutation(<actuallyadditions:block_misc:2>, <actuallyadditions:item_misc:5> * 4, 0);

# MysticalWorld Quartz in the SAG Mill
mods.enderio.SagMill.addRecipe([<minecraft:quartz> * 2, <appliedenergistics2:material:3>], [1.0, 0.1], <mysticalworld:quartz_ore>, "MULTIPLY_OUTPUT");
mods.enderio.SagMill.addRecipe([<minecraft:quartz> * 2, <appliedenergistics2:material:3>], [1.0, 0.1], <mysticalworld:granite_quartz_ore>, "MULTIPLY_OUTPUT");

# Sand -> Gravel in the Pulverizer
for s in <ore:sand>.items {
	mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:gravel>, s, 2000);
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
Mortar.addRecipe("flour", <natura:materials:2>, [<minecraft:wheat>]);

# QuantumFlux Industrial Grade Graphite Ore to Graphite Dust
addOreToIngotSmelting(<quantumflux:graphiteore>, <contenttweaker:industrial_grade_graphite_dust>);
recipes.addShapeless(<contenttweaker:industrial_grade_graphite_dust> * 2, [<quantumflux:graphiteore>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<contenttweaker:industrial_grade_graphite_dust> * 2, <quantumflux:graphiteore>, 4000);
AACrusher.addRecipe(<contenttweaker:industrial_grade_graphite_dust> * 2, <quantumflux:graphiteore>);
mods.astralsorcery.Grindstone.addRecipe(<quantumflux:graphiteore>, <contenttweaker:industrial_grade_graphite_dust>);
Grinder.addRecipe(<contenttweaker:industrial_grade_graphite_dust>, <quantumflux:graphiteore>, 4, <contenttweaker:industrial_grade_graphite_dust>, 0.9);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:industrial_grade_graphite_dust> * 2, <quantumflux:graphiteore>, 4000);
EUCrusher.add(<contenttweaker:industrial_grade_graphite_dust> * 2, <quantumflux:graphiteore>);
mods.enderio.SagMill.addRecipe([<contenttweaker:industrial_grade_graphite_dust> * 2], [1.0], <quantumflux:graphiteore>);
LightningCrusher.add(<contenttweaker:industrial_grade_graphite_dust> * 2, <quantumflux:graphiteore>);
mods.mekanism.enrichment.addRecipe(<quantumflux:graphiteore>, <contenttweaker:industrial_grade_graphite_dust> * 2);

# Mekanism Lithium Dust -> Alchemistry Lithium Ingot
addDustSmelting(<mekanism:otherdust:4>, <alchemistry:ingot:3>);

# Alchemistry Lithium Ingot -> Mekanism Lithium Dust
recipes.addShapeless(<mekanism:otherdust:4>, [<alchemistry:ingot:3>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<mekanism:otherdust:4>, <alchemistry:ingot:3>, 4000);
Grinder.addRecipe(<mekanism:otherdust:4>, <alchemistry:ingot:3>, 4);
EUCrusher.add(<mekanism:otherdust:4>, <alchemistry:ingot:3>);
mods.enderio.SagMill.addRecipe([<mekanism:otherdust:4>], [1.0], <alchemistry:ingot:3>);
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
	mods.enderio.SagMill.addRecipe([<abyssalcraft:coralium> * 2], [1.0], aby_ore, "NONE", 4000);
}

# Abyssalnite Ore -> Abyssalnite Dust/Ingot
val aby_abyssalnite_ores = [<abyssalcraft:abyore>, <abyssalcraft:abydreadore>] as IItemStack[];
for aby_ore in aby_abyssalnite_ores {
	Grinder.addRecipe(<acintegration:dust>, aby_ore, 4, <acintegration:dust>, 0.9);
	mods.enderio.SagMill.addRecipe([<acintegration:dust> * 2], [1.0], aby_ore);
	mods.mekanism.enrichment.addRecipe(aby_ore, <acintegration:dust> * 2);
	mods.astralsorcery.StarlightInfusion.addInfusion(aby_ore, <abyssalcraft:abyingot> * 3, false, 1, 200);
}
addOreDoubling(<abyssalcraft:dreadore>, <acintegration:dust>, <abyssalcraft:abyingot>);

# Abyssalnite Ingot -> Dust
Grinder.addRecipe(<acintegration:dust>, <abyssalcraft:abyingot>, 4);
mods.enderio.SagMill.addRecipe([<acintegration:dust>], [1.0], <abyssalcraft:abyingot>);
mods.mekanism.crusher.addRecipe(<abyssalcraft:abyingot>, <acintegration:dust>);

# Pearlescent Coralium Ore -> Coralium Pearl
recipes.addShapeless(<abyssalcraft:cpearl> * 2, [<abyssalcraft:abypcorore>,<ore:dustPetrotheum>]);
mods.astralsorcery.StarlightInfusion.addInfusion(<abyssalcraft:abypcorore>, <abyssalcraft:cpearl> * 3, false, 1, 200);
AACrusher.addRecipe(<abyssalcraft:cpearl> * 2, <abyssalcraft:abypcorore>, null, 50);
mods.mekanism.enrichment.addRecipe(<abyssalcraft:abypcorore>, <abyssalcraft:cpearl> * 2);
mods.thermalexpansion.Pulverizer.addRecipe(<abyssalcraft:cpearl> * 2, <abyssalcraft:abypcorore>, 4000, null, 15);
IECrusher.addRecipe(<abyssalcraft:cpearl> * 2, <abyssalcraft:abypcorore>, 4000, null, 0.15);
EUCrusher.add(<abyssalcraft:cpearl> * 2, <abyssalcraft:abypcorore>, null, 0.15);
mods.enderio.SagMill.addRecipe([<abyssalcraft:cpearl> * 2], [1.0], <abyssalcraft:abypcorore>, "NONE", 4000);

# Liquified Coralium Ore -> Refined Coralium Dust/Ingot
Grinder.addRecipe(<acintegration:dust:1>, <abyssalcraft:abylcorore>, 4, <acintegration:dust:1>, 0.9);
mods.enderio.SagMill.addRecipe([<acintegration:dust:1>* 2], [1.0], <abyssalcraft:abylcorore>);
mods.mekanism.enrichment.addRecipe(<abyssalcraft:abylcorore>, <acintegration:dust:1> * 2);
mods.astralsorcery.StarlightInfusion.addInfusion(<abyssalcraft:abylcorore>, <abyssalcraft:cingot> * 3, false, 1, 200);

# Refined Coralium Ingot -> Dust
Grinder.addRecipe(<acintegration:dust:1>, <abyssalcraft:cingot>, 4);
mods.enderio.SagMill.addRecipe([<acintegration:dust:1>], [1.0], <abyssalcraft:cingot>);
mods.mekanism.crusher.addRecipe(<abyssalcraft:cingot>, <acintegration:dust:1>);

# Dark Gem
mods.enderio.SagMill.addRecipe([<evilcraft:dark_gem> * 2, <evilcraft:dark_gem_crushed>], [1,0.5], <ore:oreDark>, "NONE", 3600);

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
mods.enderio.SagMill.addRecipe([<minecraft:wheat> * 9], [1.0], <minecraft:hay_block>);
LightningCrusher.add(<minecraft:wheat> * 9, <minecraft:hay_block>);
mods.mekanism.crusher.addRecipe(<minecraft:hay_block>, <minecraft:wheat> * 9);

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
mods.enderio.SagMill.addRecipe([<minecraft:redstone> * 6, <thermalfoundation:material:866>, <extrautils2:ingredients>], [1,0.25,0.01], <ore:oreRedstone>, "NONE", 3600);

# Sky Stone Dust
recipes.addShapeless(<appliedenergistics2:material:45>, [<appliedenergistics2:sky_stone_block>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>, 4000);
AACrusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>);
EUCrusher.add(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>);
mods.enderio.SagMill.addRecipe([<appliedenergistics2:material:45>], [1.0], <appliedenergistics2:sky_stone_block>);
LightningCrusher.add(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>);
mods.mekanism.crusher.addRecipe(<appliedenergistics2:sky_stone_block>, <appliedenergistics2:material:45>);

# Pulverized Iridium
Grinder.addRecipe(<thermalfoundation:material:71>, <thermalfoundation:material:135>, 4);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:71>], [1.0], <thermalfoundation:material:135>);

# Crushed Black Quartz
recipes.addShapeless(<actuallyadditions:item_dust:7>, [<actuallyadditions:item_misc:5>, <ore:dustPetrotheum>]);
Grinder.addRecipe(<actuallyadditions:item_dust:7>, <actuallyadditions:item_misc:5>, 4);
mods.enderio.SagMill.addRecipe([<actuallyadditions:item_dust:7>], [1.0], <actuallyadditions:item_misc:5>);

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
Grinder.addRecipe(<mysticalagriculture:chunk>, <openblocks:trophy:*>, 4);
mods.thermalexpansion.Pulverizer.addRecipe(<mysticalagriculture:chunk>, <openblocks:trophy:*>, 2000);

# Bewitchment Silver Ore removal
<ore:oreSilver>.remove(<bewitchment:silver_ore>);

# Electricium Dust
Grinder.addRecipe(<lightningcraft:dust>, <lightningcraft:ingot>, 4);
EUCrusher.add(<lightningcraft:dust>, <lightningcraft:ingot>);
mods.enderio.SagMill.addRecipe([<lightningcraft:dust>], [1.0], <lightningcraft:ingot>);
mods.mekanism.crusher.addRecipe(<lightningcraft:ingot>, <lightningcraft:dust>);

# Skyfather Dust
Grinder.addRecipe(<lightningcraft:dust:1>, <lightningcraft:ingot:1>, 4);
EUCrusher.add(<lightningcraft:dust:1>, <lightningcraft:ingot:1>);
mods.enderio.SagMill.addRecipe([<lightningcraft:dust:1>], [1.0], <lightningcraft:ingot:1>);
mods.mekanism.crusher.addRecipe(<lightningcraft:ingot:1>, <lightningcraft:dust:1>);

# Mystic Dust
Grinder.addRecipe(<lightningcraft:dust:2>, <lightningcraft:ingot:2>, 4);
EUCrusher.add(<lightningcraft:dust:2>, <lightningcraft:ingot:2>);
mods.enderio.SagMill.addRecipe([<lightningcraft:dust:2>], [1.0], <lightningcraft:ingot:2>);
mods.mekanism.crusher.addRecipe(<lightningcraft:ingot:2>, <lightningcraft:dust:2>);

# Stardust from Starmetal
Grinder.addRecipe(<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:1>, 4);
mods.mekanism.crusher.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>);

# Starmetal from Stardust
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>, 2000);
mods.enderio.AlloySmelter.addRecipe(<astralsorcery:itemcraftingcomponent:1>, [<astralsorcery:itemcraftingcomponent:2>], 2000);

# Lunar Sapphire
addOreToGemProcessing(<galacticraftcore:basic_block_moon:6>, <galacticraftcore:item_basic_moon:2>, null, 2, 3);

# Cheese Curd
addOreToGemProcessing(<galacticraftcore:basic_block_moon:2>, <galacticraftcore:cheese_curd>, null, 2, 3);

# Desh Ore -> Desh Dust -> Desh Ingot
addMaterialToDustCrushing(<galacticraftplanets:item_basic_mars:2>, <contenttweaker:desh_dust>);
addOreDoubling(<galacticraftplanets:mars:2>, <contenttweaker:desh_dust>, <galacticraftplanets:item_basic_mars:2>);
addDustSmelting(<contenttweaker:desh_dust>, <galacticraftplanets:item_basic_mars:2>);

# Solar Ore -> Solar Dust
recipes.addShapeless(<galacticraftplanets:basic_item_venus:4> * 2, [<galacticraftplanets:venus:13>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<galacticraftplanets:basic_item_venus:4> * 2, <galacticraftplanets:venus:13>, 4000);
AACrusher.addRecipe(<galacticraftplanets:basic_item_venus:4> * 2, <galacticraftplanets:venus:13>);
mods.astralsorcery.Grindstone.addRecipe(<galacticraftplanets:venus:13>, <galacticraftplanets:basic_item_venus:4>);
Grinder.addRecipe(<galacticraftplanets:basic_item_venus:4>, <galacticraftplanets:venus:13>, 4, <galacticraftplanets:basic_item_venus:4>, 0.9);
mods.thermalexpansion.Pulverizer.addRecipe(<galacticraftplanets:basic_item_venus:4> * 2, <galacticraftplanets:venus:13>, 4000);
EUCrusher.add(<galacticraftplanets:basic_item_venus:4> * 2, <galacticraftplanets:venus:13>);
mods.enderio.SagMill.addRecipe([<galacticraftplanets:basic_item_venus:4> * 2], [1.0], <galacticraftplanets:venus:13>);
LightningCrusher.add(<galacticraftplanets:basic_item_venus:4> * 2, <galacticraftplanets:venus:13>);
mods.mekanism.enrichment.addRecipe(<galacticraftplanets:venus:13>, <galacticraftplanets:basic_item_venus:4> * 2);

# Dimensional Shard Ore -> Dimensional Shards
recipes.addShapeless(<rftools:dimensional_shard> * 4, [<ore:oreDimensionalShard>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<rftools:dimensional_shard> * 4, <ore:oreDimensionalShard>, 4000);
AACrusher.addRecipe(<rftools:dimensional_shard> * 4, <ore:oreDimensionalShard>);
mods.astralsorcery.Grindstone.addRecipe(<ore:oreDimensionalShard>, <rftools:dimensional_shard>);
Grinder.addRecipe(<rftools:dimensional_shard>, <ore:oreDimensionalShard>, 4, <rftools:dimensional_shard>, 0.9);
/*for ds in <ore:oreDimensionalShard>.items {
	mods.thermalexpansion.Pulverizer.addRecipe(<rftools:dimensional_shard> * 4, <ore:oreDimensionalShard>, 4000, <rftools:dimensional_shard> * 4, 50);
}*/
mods.thermalexpansion.Pulverizer.addRecipe(<rftools:dimensional_shard> * 4, <ore:oreDimensionalShard>.firstItem, 4000, <rftools:dimensional_shard> * 4, 50);
EUCrusher.add(<rftools:dimensional_shard> * 4, <rftools:dimensional_shard_ore>);
LightningCrusher.add(<rftools:dimensional_shard> * 4, <rftools:dimensional_shard_ore>);
mods.mekanism.enrichment.addRecipe(<ore:oreDimensionalShard>, <rftools:dimensional_shard> * 4);

# Corrupted Draconium Dust
addMaterialToDustCrushingWOPetrotheum(<contenttweaker:corrupted_draconium_ingot>, <contenttweaker:corrupted_draconium_dust>);

# Ultimate Ingot
IECrusher.addRecipe(<extendedcrafting:material:32> * 64, <extendedcrafting:singularity_ultimate>, 4000);
AACrusher.addRecipe(<extendedcrafting:material:32> * 64, <extendedcrafting:singularity_ultimate>);
Grinder.addRecipe(<extendedcrafting:material:32> * 64, <extendedcrafting:singularity_ultimate>, 4);
mods.thermalexpansion.Pulverizer.addRecipe(<extendedcrafting:material:32> * 64, <extendedcrafting:singularity_ultimate>, 2000);
EUCrusher.add(<extendedcrafting:material:32> * 64, <extendedcrafting:singularity_ultimate>);
mods.enderio.SagMill.addRecipe([<extendedcrafting:material:32> * 64], [1.0], <extendedcrafting:singularity_ultimate>);
LightningCrusher.add(<extendedcrafting:material:32> * 64, <extendedcrafting:singularity_ultimate>);
mods.mekanism.crusher.addRecipe(<extendedcrafting:singularity_ultimate>, <extendedcrafting:material:32> * 64);

# UB Ores -> SAG Mill
mods.enderio.SagMill.removeRecipe(<thermalfoundation:ore_fluid>);
mods.enderio.SagMill.removeRecipe(<thermalfoundation:ore_fluid:5>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:892> * 2,<thermalfoundation:material:892> * 2,<thermalfoundation:material:833>], [1.0,0.25,0.15], <ore:oreClathrateOilSand>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:67> * 2,<thermalfoundation:material:66>], [1.0,0.2], <ore:oreLead>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<minecraft:quartz> * 2,<appliedenergistics2:material:3>], [1.0,0.1], <ore:oreQuartz>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:66> * 2,<thermalfoundation:material:67>], [1.0,0.2], <ore:oreSilver>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:64> * 2,<thermalfoundation:material:1>], [1.0,0.2], <ore:oreCopper>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<minecraft:dye:4> * 8,<minecraft:dye:4>], [1.0,0.5], <ore:oreLapis>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:0> * 2,<thermalfoundation:material:65> * 2,<thermalfoundation:material:69> * 2], [1.0,0.15,0.1], <ore:oreIron>, "CHANCE_ONLY");
#mods.enderio.SagMill.addRecipe([<thermalfoundation:material:72> * 2], [1.0], <ore:oreMithril>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<minecraft:diamond> * 2, <minecraft:diamond>, <thermalfoundation:material:768>], [1.0, 0.25, 0.05], <ore:oreDiamond>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<draconicevolution:draconium_dust> * 3,<draconicevolution:draconium_dust> * 2,<draconicevolution:draconium_dust> * 2], [1.0, 0.4, 0.15], <ore:oreDraconium>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<minecraft:coal> * 3, <thermalfoundation:material:768>, <minecraft:diamond>], [1.0, 0.6, 0.001], <ore:oreCoal>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<minecraft:emerald> * 2, <minecraft:emerald>], [1.0, 0.25], <ore:oreEmerald>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:65> * 2, <thermalfoundation:material>], [1.0, 0.1], <ore:oreTin>, "CHANCE_ONLY");
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:68> * 2, <thermalfoundation:material>], [1.0, 0.1], <ore:oreAluminum>, "CHANCE_ONLY");

# UB Ores -> Enrichment Chamber
val UBLeadOres = [<undergroundbiomes:igneous_stone_immersiveengineering_ore_2:*>,<undergroundbiomes:metamorphic_stone_immersiveengineering_ore_2:*>,<undergroundbiomes:sedimentary_stone_immersiveengineering_ore_2:*>,<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.lead.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.lead.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.lead.name:*>] as IItemStack[];
val UBCertusQuartzOres = [<undergroundbiomes:igneous_stone_appliedenergistics2_quartz_ore:*>,<undergroundbiomes:metamorphic_stone_appliedenergistics2_quartz_ore:*>,<undergroundbiomes:sedimentary_stone_appliedenergistics2_quartz_ore:*>] as IItemStack[];
val UBChargedCertusQuartzOres = [<undergroundbiomes:igneous_stone_appliedenergistics2_charged_quartz_ore:*>,<undergroundbiomes:metamorphic_stone_appliedenergistics2_charged_quartz_ore:*>,<undergroundbiomes:sedimentary_stone_appliedenergistics2_charged_quartz_ore:*>] as IItemStack[];
val UBAmethystOres = [<undergroundbiomes:igneous_stone_mysticalworld_amethyst_ore:*>,<undergroundbiomes:metamorphic_stone_mysticalworld_amethyst_ore:*>,<undergroundbiomes:sedimentary_stone_mysticalworld_amethyst_ore:*>] as IItemStack[];
val UBIridiumOres = [<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.iridium.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.iridium.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.iridium.name:*>] as IItemStack[];
val UBNickelOres = [<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.nickel.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.nickel.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.nickel.name:*>,<undergroundbiomes:igneous_stone_immersiveengineering_ore_4:*>,<undergroundbiomes:metamorphic_stone_immersiveengineering_ore_4:*>,<undergroundbiomes:sedimentary_stone_immersiveengineering_ore_4:*>] as IItemStack[];
val UBOsmiumOres = [<undergroundbiomes:igneous_stone_mekanism_oreblock:*>,<undergroundbiomes:metamorphic_stone_mekanism_oreblock:*>,<undergroundbiomes:sedimentary_stone_mekanism_oreblock:*>] as IItemStack[];
val UBSilverOres = [<undergroundbiomes:igneous_stone_immersiveengineering_ore_3:*>,<undergroundbiomes:metamorphic_stone_immersiveengineering_ore_3:*>,<undergroundbiomes:sedimentary_stone_immersiveengineering_ore_3:*>,<undergroundbiomes:igneous_stone_mysticalworld_silver_ore:*>,<undergroundbiomes:metamorphic_stone_mysticalworld_silver_ore:*>,<undergroundbiomes:sedimentary_stone_mysticalworld_silver_ore:*>,<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.silver.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.silver.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.silver.name:*>] as IItemStack[];
val UBGoldOres = [<undergroundbiomes:igneous_stone_gold_ore:*>,<undergroundbiomes:metamorphic_stone_gold_ore:*>,<undergroundbiomes:sedimentary_stone_gold_ore:*>] as IItemStack[];
val UBQuartzOres = [<undergroundbiomes:igneous_stone_thaumcraft_ore_quartz:*>,<undergroundbiomes:metamorphic_stone_thaumcraft_ore_quartz:*>,<undergroundbiomes:sedimentary_stone_thaumcraft_ore_quartz:*>] as IItemStack[];
val UBAmberOres = [<undergroundbiomes:igneous_stone_thaumcraft_ore_amber:*>,<undergroundbiomes:metamorphic_stone_thaumcraft_ore_amber:*>,<undergroundbiomes:sedimentary_stone_thaumcraft_ore_amber:*>] as IItemStack[];
val UBAluminumOres = [<undergroundbiomes:igneous_stone_immersiveengineering_ore_1:*>,<undergroundbiomes:metamorphic_stone_immersiveengineering_ore_1:*>,<undergroundbiomes:sedimentary_stone_immersiveengineering_ore_1:*>,<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.aluminum.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.aluminum.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.aluminum.name:*>] as IItemStack[];
val UBLapisOres = [<undergroundbiomes:igneous_stone_lapis_ore:*>,<undergroundbiomes:metamorphic_stone_lapis_ore:*>,<undergroundbiomes:sedimentary_stone_lapis_ore:*>] as IItemStack[];
#val UBMithrilOres = [<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.mithril.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.mithril.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.mithril.name:*>] as IItemStack[];
val UBRedstoneOres = [<undergroundbiomes:igneous_stone_redstone_ore:*>,<undergroundbiomes:metamorphic_stone_redstone_ore:*>,<undergroundbiomes:sedimentary_stone_redstone_ore:*>] as IItemStack[];
val UBPlatinumOres = [<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.platinum.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.platinum.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.platinum.name:*>] as IItemStack[];
val UBDimensionalShardOres = [<undergroundbiomes:igneous_stone_rftools_dimensional_shard_ore:*>,<undergroundbiomes:metamorphic_stone_rftools_dimensional_shard_ore:*>,<undergroundbiomes:sedimentary_stone_rftools_dimensional_shard_ore:*>] as IItemStack[];
val UBDiamondOres = [<undergroundbiomes:igneous_stone_diamond_ore:*>,<undergroundbiomes:metamorphic_stone_diamond_ore:*>,<undergroundbiomes:sedimentary_stone_diamond_ore:*>] as IItemStack[];
val UBDraconiumOres = [<undergroundbiomes:igneous_stone_draconicevolution_draconium_ore:*>,<undergroundbiomes:metamorphic_stone_draconicevolution_draconium_ore:*>,<undergroundbiomes:sedimentary_stone_draconicevolution_draconium_ore:*>] as IItemStack[];
val UBCoalOres = [<undergroundbiomes:igneous_stone_coal_ore:*>,<undergroundbiomes:metamorphic_stone_coal_ore:*>,<undergroundbiomes:sedimentary_stone_coal_ore:*>] as IItemStack[];
val UBEmeraldOres = [<undergroundbiomes:igneous_stone_emerald_ore:*>,<undergroundbiomes:metamorphic_stone_emerald_ore:*>,<undergroundbiomes:sedimentary_stone_emerald_ore:*>] as IItemStack[];
val UBCopperOres = [<undergroundbiomes:igneous_stone_thermalfoundation_ore:*>,<undergroundbiomes:metamorphic_stone_thermalfoundation_ore:*>,<undergroundbiomes:sedimentary_stone_thermalfoundation_ore:*>,<undergroundbiomes:igneous_stone_immersiveengineering_ore:*>,<undergroundbiomes:metamorphic_stone_immersiveengineering_ore:*>,<undergroundbiomes:sedimentary_stone_immersiveengineering_ore:*>,<undergroundbiomes:igneous_stone_mekanism_oreblock_1:*>,<undergroundbiomes:metamorphic_stone_mekanism_oreblock_1:*>,<undergroundbiomes:sedimentary_stone_mekanism_oreblock_1:*>] as IItemStack[];
val UBTinOres = [<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.tin.name:*>,<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.tin.name:*>,<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.tin.name:*>,<undergroundbiomes:igneous_stone_mekanism_oreblock_2:*>,<undergroundbiomes:metamorphic_stone_mekanism_oreblock_2:*>,<undergroundbiomes:sedimentary_stone_mekanism_oreblock_2:*>] as IItemStack[];
val UBIronOres = [<undergroundbiomes:igneous_stone_iron_ore:*>,<undergroundbiomes:metamorphic_stone_iron_ore:*>,<undergroundbiomes:sedimentary_stone_iron_ore:*>] as IItemStack[];

for o in UBLeadOres {
	mods.mekanism.enrichment.addRecipe(o, <thermalfoundation:material:67> * 2);
}
for o in UBCertusQuartzOres {
	mods.mekanism.enrichment.addRecipe(o, <appliedenergistics2:material:0> * 4);
}
for o in UBChargedCertusQuartzOres {
	mods.mekanism.enrichment.addRecipe(o, <appliedenergistics2:material:1> * 4);
}
for o in UBAmethystOres {
	mods.mekanism.enrichment.addRecipe(o, <mysticalworld:amethyst_gem> * 2);
}
for o in UBIridiumOres {
	mods.mekanism.enrichment.addRecipe(o, <thermalfoundation:material:71> * 2);
}
for o in UBNickelOres {
	mods.mekanism.enrichment.addRecipe(o, <thermalfoundation:material:69> * 2);
}
for o in UBOsmiumOres {
	mods.mekanism.enrichment.addRecipe(o, <mekanism:dust:2> * 2);
}
for o in UBSilverOres {
	mods.mekanism.enrichment.addRecipe(o, <thermalfoundation:material:66> * 2);
}
for o in UBGoldOres {
	mods.mekanism.enrichment.addRecipe(o, <thermalfoundation:material:1> * 2);
}
for o in UBQuartzOres {
	mods.mekanism.enrichment.addRecipe(o, <minecraft:quartz> * 6);
}
for o in UBAmberOres {
	mods.mekanism.enrichment.addRecipe(o, <thaumcraft:amber> * 2);
}
for o in UBAluminumOres {
	mods.mekanism.enrichment.addRecipe(o, <thermalfoundation:material:68> * 2);
}
for o in UBLapisOres {
	mods.mekanism.enrichment.addRecipe(o, <minecraft:dye:4> * 12);
}
#for o in UBMithrilOres {
#	mods.mekanism.enrichment.addRecipe(o, <thermalfoundation:material:72> * 2);
#}
for o in UBRedstoneOres {
	mods.mekanism.enrichment.addRecipe(o, <minecraft:redstone> * 12);
}
for o in UBPlatinumOres {
	mods.mekanism.enrichment.addRecipe(o, <thermalfoundation:material:70> * 2);
}
for o in UBDimensionalShardOres {
	mods.mekanism.enrichment.addRecipe(o, <rftools:dimensional_shard> * 4);
}
for o in UBDiamondOres {
	mods.mekanism.enrichment.addRecipe(o, <minecraft:diamond> * 2);
}
for o in UBDraconiumOres {
	mods.mekanism.enrichment.addRecipe(o, <draconicevolution:draconium_dust> * 2);
}
for o in UBCoalOres {
	mods.mekanism.enrichment.addRecipe(o, <minecraft:coal> * 2);
}
for o in UBEmeraldOres {
	mods.mekanism.enrichment.addRecipe(o, <minecraft:emerald> * 2);
}

# UB Ores -> Purification Chamber, Chemical Injection Chamber, Chemical Dissolution Chamber
for o in UBLeadOres {
	mods.mekanism.purification.addRecipe(o, <gas:oxygen>, <mekanism:clump:6> * 3);
	mods.mekanism.chemical.injection.addRecipe(o, <gas:hydrogenchloride>, <mekanism:shard:6> * 4);
	mods.mekanism.chemical.dissolution.addRecipe(o, <gas:lead> * 1000);
}
for o in UBOsmiumOres {
	mods.mekanism.purification.addRecipe(o, <gas:oxygen>, <mekanism:clump:2> * 3);
	mods.mekanism.chemical.injection.addRecipe(o, <gas:hydrogenchloride>, <mekanism:shard:2> * 4);
	mods.mekanism.chemical.dissolution.addRecipe(o, <gas:osmium> * 1000);
}
for o in UBSilverOres {
	mods.mekanism.purification.addRecipe(o, <gas:oxygen>, <mekanism:clump:5> * 3);
	mods.mekanism.chemical.injection.addRecipe(o, <gas:hydrogenchloride>, <mekanism:shard:5> * 4);
	mods.mekanism.chemical.dissolution.addRecipe(o, <gas:silver> * 1000);
}
for o in UBCopperOres {
	mods.mekanism.purification.addRecipe(o, <gas:oxygen>, <mekanism:clump:3> * 3);
	mods.mekanism.chemical.injection.addRecipe(o, <gas:hydrogenchloride>, <mekanism:shard:3> * 4);
	mods.mekanism.chemical.dissolution.addRecipe(o, <gas:copper> * 1000);
}
for o in UBGoldOres {
	mods.mekanism.purification.addRecipe(o, <gas:oxygen>, <mekanism:clump:1> * 3);
	mods.mekanism.chemical.injection.addRecipe(o, <gas:hydrogenchloride>, <mekanism:shard:1> * 4);
	mods.mekanism.chemical.dissolution.addRecipe(o, <gas:gold> * 1000);
}
for o in UBTinOres {
	mods.mekanism.purification.addRecipe(o, <gas:oxygen>, <mekanism:clump:4> * 3);
	mods.mekanism.chemical.injection.addRecipe(o, <gas:hydrogenchloride>, <mekanism:shard:4> * 4);
	mods.mekanism.chemical.dissolution.addRecipe(o, <gas:tin> * 1000);
}
for o in UBIronOres {
	mods.mekanism.purification.addRecipe(o, <gas:oxygen>, <mekanism:clump:0> * 3);
	mods.mekanism.chemical.injection.addRecipe(o, <gas:hydrogenchloride>, <mekanism:shard:0> * 4);
	mods.mekanism.chemical.dissolution.addRecipe(o, <gas:iron> * 1000);
}

# UB Inferium Ores
val UBInferiumOres = [<undergroundbiomes:igneous_stone_mysticalagriculture_inferium_ore:*>,<undergroundbiomes:metamorphic_stone_mysticalagriculture_inferium_ore:*>,<undergroundbiomes:sedimentary_stone_mysticalagriculture_inferium_ore:*>] as IItemStack[];
recipes.addShapeless(<mysticalagriculture:crafting> * 4, [<ore:oreInferium>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<mysticalagriculture:crafting> * 4, <ore:oreInferium>, 4000);
AACrusher.addRecipe(<mysticalagriculture:crafting> * 4, <ore:oreInferium>);
Grinder.addRecipe(<mysticalagriculture:crafting> * 3, <ore:oreInferium>, 4, <mysticalagriculture:crafting>, 0.9);
LightningCrusher.add(<mysticalagriculture:crafting> * 4, <ore:oreInferium>);
for o in UBInferiumOres {
	mods.mekanism.enrichment.addRecipe(o, <mysticalagriculture:crafting> * 4);
}
mods.mekanism.enrichment.addRecipe(<ore:oreInferium>, <mysticalagriculture:crafting> * 4);

# UB Prosperity Ores
val UBProsperityOres = [<undergroundbiomes:igneous_stone_mysticalagriculture_prosperity_ore:*>,<undergroundbiomes:metamorphic_stone_mysticalagriculture_prosperity_ore:*>,<undergroundbiomes:sedimentary_stone_mysticalagriculture_prosperity_ore:*>] as IItemStack[];
recipes.addShapeless(<mysticalagriculture:crafting:5> * 4, [<ore:oreProsperity>, <ore:dustPetrotheum>]);
IECrusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <ore:oreProsperity>, 4000);
AACrusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <ore:oreProsperity>);
Grinder.addRecipe(<mysticalagriculture:crafting:5> * 3, <ore:oreInferium>, 4, <mysticalagriculture:crafting:5>, 0.9);
LightningCrusher.add(<mysticalagriculture:crafting:5> * 4, <ore:oreProsperity>);
for o in UBProsperityOres {
	mods.mekanism.enrichment.addRecipe(o, <mysticalagriculture:crafting:5> * 4);
}
mods.mekanism.enrichment.addRecipe(<ore:oreProsperity>, <mysticalagriculture:crafting:5> * 4);

# Jade Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_jade>);
mods.enderio.SagMill.addRecipe([<erebus:materials:1> * 2, <erebus:materials:1>, <erebus:umberstone:1>], [1.0, 0.5, 0.15], <erebus:ore_jade>, "CHANCE_ONLY");

# Erebus Iron Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_iron>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material> * 2, <thermalfoundation:material:65>, <thermalfoundation:material:69>, <erebus:umberstone:1>], [1.0, 0.5, 0.1, 0.15], <erebus:ore_iron>, "CHANCE_ONLY");

# Erebus Gold Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_gold>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:1> * 2, <thermalfoundation:material:64>, <erebus:umberstone:1>], [1.0, 0.2, 0.15], <erebus:ore_gold>, "CHANCE_ONLY");

# Erebus Coal Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_coal>);
mods.enderio.SagMill.addRecipe([<minecraft:coal> * 3, <thermalfoundation:material:768>, <minecraft:diamond>, <erebus:umberstone:1>], [1.0, 0.6, 0.001, 0.15], <erebus:ore_coal>, "CHANCE_ONLY");

# Erebus Diamond Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_diamond>);
mods.enderio.SagMill.addRecipe([<minecraft:diamond> * 2, <minecraft:diamond>, <thermalfoundation:material:768>, <erebus:umberstone:1>], [1.0, 0.25, 0.05, 15], <erebus:ore_diamond>, "CHANCE_ONLY");

# Erebus Emerald Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_emerald>);
mods.enderio.SagMill.addRecipe([<minecraft:emerald> * 2, <minecraft:emerald>, <erebus:umberstone:1>], [1.0, 0.25, 0.15], <erebus:ore_emerald>, "CHANCE_ONLY");

# Erebus Lapis Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_lapis>);
mods.enderio.SagMill.addRecipe([<minecraft:dye:4> * 8, <minecraft:dye:4>, <erebus:umberstone:1>], [1.0, 0.2, 0.15], <erebus:ore_lapis>, "CHANCE_ONLY");

# Erebus Quartz Ore
mods.enderio.SagMill.addRecipe([<minecraft:quartz> * 2, <appliedenergistics2:material:3>, <erebus:umberstone:1>], [1.0, 0.1, 0.15], <erebus:ore_quartz>, "CHANCE_ONLY");

# Petrified Quartz Ore
mods.enderio.SagMill.addRecipe([<minecraft:quartz> * 2, <appliedenergistics2:material:3>, <erebus:petrified_log_inner>], [1.0, 0.1, 0.15], <erebus:ore_petrified_quartz>, "CHANCE_ONLY");

# Erebus Copper Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_copper>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:64> * 2, <thermalfoundation:material:1>, <erebus:umberstone:1>], [1.0, 0.12, 0.15], <erebus:ore_copper>, "CHANCE_ONLY");

# Erebus Silver Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_silver>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:66> * 2, <thermalfoundation:material:67>, <erebus:umberstone:1>], [1.0, 0.1, 0.15], <erebus:ore_silver>, "CHANCE_ONLY");

# Erebus Tin Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_tin>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:65> * 2, <thermalfoundation:material>, <erebus:umberstone:1>], [1.0, 0.1, 0.15], <erebus:ore_tin>, "CHANCE_ONLY");

# Erebus Lead Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_lead>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:67> * 2, <thermalfoundation:material:66>, <erebus:umberstone:1>], [1.0, 0.1, 0.15], <erebus:ore_lead>, "CHANCE_ONLY");

# Erebus Alumium Ore
mods.enderio.SagMill.removeRecipe(<erebus:ore_aluminium>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:68> * 2, <thermalfoundation:material>, <erebus:umberstone:1>], [1.0, 0.1, 0.15], <erebus:ore_aluminium>, "CHANCE_ONLY");

# Volcanic Diamond Ore
mods.enderio.SagMill.addRecipe([<minecraft:diamond> * 2, <minecraft:diamond>, <thermalfoundation:material:768>, <erebus:volcanic_rock>], [1.0, 0.25, 0.05, 0.15], <erebus:ore_encrusted_diamond>, "CHANCE_ONLY");

# Blaze, Blitz, Blizz, Basalz Powder to Mek Crusher
mods.mekanism.crusher.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder> * 4);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:2050>, <thermalfoundation:material:2051> * 4);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:2048>, <thermalfoundation:material:2049> * 4);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:2052>, <thermalfoundation:material:2053> * 4);

# Certus Quartz Dust from Certus Quartz
val certusQuartzCrystals = [<appliedenergistics2:material>, <appliedenergistics2:material:1>] as IItemStack[];
for c in certusQuartzCrystals {
	recipes.addShapeless(<appliedenergistics2:material:2>, [c, <ore:dustPetrotheum>]);
	IECrusher.addRecipe(<appliedenergistics2:material:2>, c, 4000);
	AACrusher.addRecipe(<appliedenergistics2:material:2>, c);
	EUCrusher.add(<appliedenergistics2:material:2>, c);
	LightningCrusher.add(<appliedenergistics2:material:2>, c);
}
Grinder.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>, 4);
mods.thermalexpansion.Pulverizer.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>, 2000);

# Gold Ore in the SAG Mill
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:1> * 2, <thermalfoundation:material:866>], [1.0,0.05], <ore:oreGold>, "CHANCE_ONLY");

# Remove Cyanite Dust from Yellorite Ore Sag Mill
mods.enderio.SagMill.removeRecipe(<bigreactors:oreyellorite>);
mods.enderio.SagMill.addRecipe([<bigreactors:dustyellorium> * 2, <minecraft:cobblestone>], [1.0,0.15], <bigreactors:oreyellorite>, "CHANCE_ONLY");

# Ingot crushing in the Mekanism Crusher
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:161>, <thermalfoundation:material:97>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:162>, <thermalfoundation:material:98>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:164>, <thermalfoundation:material:100>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:165>, <thermalfoundation:material:101>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:166>, <thermalfoundation:material:102>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:167>, <thermalfoundation:material:103>);

# HOP Graphite crushing
Grinder.addRecipe(<immersiveengineering:material:18>, <immersiveengineering:material:19>, 4);
EUCrusher.add(<immersiveengineering:material:18>, <immersiveengineering:material:19>);
mods.enderio.SagMill.addRecipe([<immersiveengineering:material:18>], [1.0], <immersiveengineering:material:19>);
mods.mekanism.crusher.addRecipe(<immersiveengineering:material:19>, <immersiveengineering:material:18>);

# Dense Construction Chunk: additional crushing recipes
EUCrusher.add(<buildinggadgets:construction_chunk_dense> * 4, <buildinggadgets:constructionblock_dense>);
mods.enderio.SagMill.addRecipe([<buildinggadgets:construction_chunk_dense> * 4], [1.0], <buildinggadgets:constructionblock_dense>);
LightningCrusher.add(<buildinggadgets:construction_chunk_dense> * 4, <buildinggadgets:constructionblock_dense>);

# Construction Paste: additional crushing recipes
EUCrusher.add(<buildinggadgets:constructionpaste>, <buildinggadgets:construction_chunk_dense>);
mods.enderio.SagMill.addRecipe([<buildinggadgets:constructionpaste>], [1.0], <buildinggadgets:construction_chunk_dense>);
LightningCrusher.add(<buildinggadgets:constructionpaste>, <buildinggadgets:construction_chunk_dense>);

# Diamond Horse Armor + Diamond Camel Armor + Diamond Desert Wolf Armor
AACrusher.removeRecipe(<mekanism:otherdust>);
AACrusher.addRecipe(<mekanism:otherdust>, <minecraft:diamond>);
AACrusher.addRecipe(<minecraft:diamond> * 4, <bno:ore_netherdiamond>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:diamond_horse_armor>);
val crushableDiamondArmors = [<minecraft:diamond_horse_armor>,<atum:camel_diamond_armor>,<atum:desert_wolf_diamond_armor>] as IItemStack[];
for a in crushableDiamondArmors {
	AACrusher.addRecipe(<minecraft:diamond> * 4, a);
	IECrusher.addRecipe(<minecraft:diamond> * 4, a, 6000);
	EUCrusher.add(<minecraft:diamond> * 4, a);
	mods.enderio.SagMill.addRecipe([<minecraft:diamond> * 4], [100], a, "NONE", 6000);
	mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:diamond> * 4, a, 6000);
}

# Diamond Gloves
AACrusher.addRecipe(<minecraft:diamond> * 2, <aether_legacy:diamond_gloves>);
IECrusher.addRecipe(<minecraft:diamond> * 2, <aether_legacy:diamond_gloves>, 6000);
EUCrusher.add(<minecraft:diamond> * 2, <aether_legacy:diamond_gloves>);
mods.enderio.SagMill.addRecipe([<minecraft:diamond> * 2], [100], <aether_legacy:diamond_gloves>, "NONE", 6000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:diamond> * 2, <aether_legacy:diamond_gloves>, 6000);

# Removing Mithril Ore (Mithril Ingots are gotten through crafting)
recipes.removeShapeless(<thermalfoundation:material:72>, [<ore:oreMithril>,<thermalfoundation:material:1027>]);
recipes.removeShapeless(<thermalfoundation:material:136>, [<ore:oreMithril>,<thermalfoundation:material:1024>]);
recipes.removeShapeless(<thermalfoundation:material:136>, [<ore:oreMithril>,<thermalfoundation:material:1024>,<thermalfoundation:material:1027>]);
furnace.remove(<thermalfoundation:material:136>);
furnace.addRecipe(<thermalfoundation:material:136>, <thermalfoundation:material:72>);
mods.actuallyadditions.Crusher.removeRecipe(<thermalfoundation:material:72>);
mods.actuallyadditions.Crusher.addRecipe(<thermalfoundation:material:72>, <thermalfoundation:material:136>);
for mithrilOre in <ore:oreMithril>.items {
	mods.thermalexpansion.Pulverizer.removeRecipe(mithrilOre);
	#Squeezer.removeRecipe(mithrilOre, <thermalfoundation:material:72>, 1.0, <thermalfoundation:material:72>, 0.75);
	#MechanicalSqueezer.removeRecipe(mithrilOre, <thermalfoundation:material:72> * 2, 1.0, <thermalfoundation:material:72>, 0.5);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, mithrilOre);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>, mithrilOre);
	mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, mithrilOre);
	mods.tconstruct.Melting.removeRecipe(<liquid:mithril>, mithrilOre);
}
#Squeezer.removeRecipe(<thermalfoundation:material:72>); # removed in config/intergrateddynamics/_override/squeezer_ores.xml

mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<thermalfoundation:material:72> * 2, 1.0, <thermalfoundation:material:72>, 0.5);
#MechanicalSqueezer.removeRecipe(<thermalfoundation:material:72>);
mods.mekanism.enrichment.removeRecipe(<thermalfoundation:ore:8>);
IECrusher.removeRecipe(<thermalfoundation:material:72>);
IECrusher.addRecipe(<thermalfoundation:material:72>, <thermalfoundation:material:136>, 2000);
mods.astralsorcery.Grindstone.removeRecipe(<thermalfoundation:material:72>);
EUCrusher.remove(<thermalfoundation:material:72>);
EUCrusher.remove(<thermalfoundation:material:72> * 2);
EUCrusher.remove(<thermalfoundation:ore:8>);
#EUCrusher.add(<thermalfoundation:material:72>, <thermalfoundation:material:136>);
LightningCrusher.remove(<thermalfoundation:material:72>);
LightningCrusher.add(<thermalfoundation:material:72>, <thermalfoundation:material:136>);

print("ENDING OreProcessingAdditions.zs");
