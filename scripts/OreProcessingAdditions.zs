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
	IECrusher.addRecipe(dust, ingot, 4000);
	AACrusher.addRecipe(dust, ingot);
	Grinder.addRecipe(dust, ingot, 4);
	mods.thermalexpansion.Pulverizer.addRecipe(dust, ingot, 2000);
	EUCrusher.add(dust, ingot);
	mods.enderio.SagMill.addRecipe([dust], [100], ingot);
	LightningCrusher.add(dust, ingot);
	mods.mekanism.crusher.addRecipe(ingot, dust);
	Mortar.addRecipe(dust, [ingot, null, null, null, null]);
	Mortar.addRecipe(dust * 2, [ingot, ingot, null, null, null]);
	Mortar.addRecipe(dust * 3, [ingot, ingot, ingot, null, null]);
	Mortar.addRecipe(dust * 4, [ingot, ingot, ingot, ingot, null]);
	Mortar.addRecipe(dust * 5, [ingot, ingot, ingot, ingot, ingot]);
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
addGemToDustProcessing(<divinerpg:eden_ore>, <divinerpg:eden_fragments>, null, 3);

# Wildwood Ore -> Wildwood Fragments
addGemToDustProcessing(<divinerpg:wildwood_ore>, <divinerpg:wildwood_fragments>, null, 3);

# Apalachia Ore -> Apalachia Fragments
addGemToDustProcessing(<divinerpg:apalachia_ore>, <divinerpg:apalachia_fragments>, null, 3);

# Skythern Ore -> Skythern Fragments
addGemToDustProcessing(<divinerpg:skythern_ore>, <divinerpg:skythern_fragments>, null, 3);

# Mortum Ore -> Mortum Fragments
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

print("ENDING OreProcessingAdditions.zs");