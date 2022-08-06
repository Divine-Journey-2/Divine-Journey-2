# Author: Atricos
# Ritual names can be found in bewitchment-1.12.2-0.0.22.62.jar/com/bewitchment/registry/ModRecipes.class

import mods.thaumcraft.Infusion;
import moretweaker.bewitchment.WitchesOven;
import mods.thaumcraft.Crucible;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import moretweaker.bewitchment.WitchesCauldron;
import moretweaker.bewitchment.Distillery;
import moretweaker.bewitchment.WitchesRitual;
import moretweaker.bewitchment.FrostFire;
import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;

print("STARTING Bewitchment.zs");

# Hellebore Seeds
vanilla.seeds.removeSeed(<bewitchment:hellebore_seeds>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:hellebore_seeds", "", <bewitchment:hellebore_seeds>, 4, [<aspect:herba> * 200,<aspect:ignis> * 160,<aspect:sensus> * 60], <mysticalagriculture:nether_seeds>, [<thaumcraft:nugget:10>,<thaumcraft:nitor_lime>,<thaumcraft:mind:1>,<thaumcraft:shimmerleaf>,<thaumcraft:nitor_lime>,<contenttweaker:mysterious_leaking_soul>]);

# Mandrake Seeds
vanilla.seeds.removeSeed(<bewitchment:mandrake_seeds>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:mandrake_seeds", "", <bewitchment:mandrake_seeds>, 5, [<aspect:herba> * 200,<aspect:victus> * 120,<aspect:aversio> * 100,<aspect:motus> * 60,<aspect:perditio> * 40,<aspect:sensus> * 20], <mysticalagriculture:creeper_seeds>, [<thaumcraft:nugget:10>,<thaumcraft:nitor_brown>,<thaumcraft:mind:1>,<thaumcraft:cinderpearl>,<thaumcraft:nitor_brown>,<contenttweaker:mysterious_leaking_soul>]);

# Witches' Oven
recipes.remove(<bewitchment:witches_oven>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:witches_oven", "", <bewitchment:witches_oven>, 6, [<aspect:machina> * 240,<aspect:ignis> * 150,<aspect:sensus> * 150,<aspect:alkimia> * 100,<aspect:fabrico> * 30,<aspect:herba> * 30], <thaumcraft:smelter_thaumium>, [<bewitchment:mandrake_root>,<divinerpg:mortum_chunk>,<bewitchment:hellebore>,<thaumcraft:morphic_resonator>,<bewitchment:mandrake_root>,<divinerpg:mortum_chunk>,<bewitchment:hellebore>,<thaumcraft:morphic_resonator>]);

# Wood Ash (only in Witches' Oven)
furnace.remove(<bewitchment:wood_ash>);

# Unfired Jar
recipes.remove(<bewitchment:unfired_jar>);
mods.thaumcraft.Crucible.registerRecipe("bewitchment:unfired_jar", "", <bewitchment:unfired_jar>, <thaumcraft:phial>, [<aspect:terra> * 10, <aspect:aqua> * 10,<aspect:permutatio> * 8, <aspect:luna> * 4]);

# Cloudy Oil: Only from Jungle Saplings
WitchesOven.removeRecipe(<minecraft:dye:2>);
WitchesOven.removeRecipe(<minecraft:cooked_fish>);
WitchesOven.removeRecipe(<minecraft:cooked_fish:1>);
WitchesOven.removeRecipe(<minecraft:bread>);
WitchesOven.removeRecipe(<bewitchment:garlic_grilled>);
WitchesOven.removeRecipe(<quark:cooked_frog_leg>);
WitchesOven.removeRecipe(<quark:cooked_crab_leg>);

# Ectoplasm
WitchesOven.removeRecipe(<minecraft:leather>);
WitchesOven.removeRecipe(<minecraft:dye:15>);
WitchesOven.addRecipe(<thaumcraft:alumentum>, <abyssalcraft:crystalshard:22> * 5, <bewitchment:ectoplasm>, 0.1, false);

function addBewitchmentWitchesAltarRecipe(output as IItemStack, input_material as IIngredient) {
	recipes.remove(output);
	mods.thaumcraft.Infusion.registerRecipe(output.name, "", output, 5, [<aspect:machina> * 50,<aspect:terra> * 30,<aspect:auram> * 30,<aspect:herba> * 25,<aspect:praecantatio> * 15,<aspect:ordo> * 15], <bloodmagic:incense_altar>, [<bewitchment:spruce_heart>,input_material,<bewitchment:elder_wood>,<bewitchment:elder_wood>,<bewitchment:elder_wood>,input_material,<bewitchment:oak_spirit>,<bewitchment:birch_soul>]);
}

# Stone Witches' Altar
addBewitchmentWitchesAltarRecipe(<bewitchment:stone_witches_altar>,<ore:stone>);

# Nether Brick Witches' Altar
addBewitchmentWitchesAltarRecipe(<bewitchment:nether_brick_witches_altar>,<minecraft:nether_brick>);

# Obsidian Witches' Altar
addBewitchmentWitchesAltarRecipe(<bewitchment:obsidian_witches_altar>,<ore:obsidian>);

# Coquina Witches' Altar
addBewitchmentWitchesAltarRecipe(<bewitchment:coquina_witches_altar>,<ore:coquina>);

# Embittered Bricks Witches' Altar
addBewitchmentWitchesAltarRecipe(<bewitchment:embittered_brick_witches_altar>,<bewitchment:embittered_bricks>);

# Scorned Brick Witches' Altar
addBewitchmentWitchesAltarRecipe(<bewitchment:scorned_brick_witches_altar>,<bewitchment:scorned_bricks>);

# Witches Altar OreDict
<ore:witchesAltar>.addItems([<bewitchment:stone_witches_altar>,<bewitchment:nether_brick_witches_altar>,<bewitchment:obsidian_witches_altar>,<bewitchment:coquina_witches_altar>,<bewitchment:embittered_brick_witches_altar>,<bewitchment:scorned_brick_witches_altar>]);

# Aconitum Seeds
vanilla.seeds.removeSeed(<bewitchment:aconitum_seeds>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:aconitum_seeds", "", <bewitchment:aconitum_seeds>, 5, [<aspect:herba> * 200,<aspect:exanimis> * 160,<aspect:bestia> * 40,<aspect:motus> * 20,<aspect:diabolus> * 10], <mysticalagriculture:nether_quartz_seeds>, [<bewitchment:ebb_of_death>,<thaumcraft:nitor_silver>,<thaumcraft:mind:1>,<bewitchment:ebb_of_death>,<thaumcraft:nitor_silver>,<contenttweaker:mysterious_leaking_soul>]);

# Belladonna Seeds
vanilla.seeds.removeSeed(<bewitchment:belladonna_seeds>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:belladonna_seeds", "", <bewitchment:belladonna_seeds>, 5, [<aspect:herba> * 200,<aspect:vinculum> * 160,<aspect:sensus> * 40,<aspect:humanus> * 20,<aspect:diabolus> * 10], <mysticalagriculture:guardian_seeds>, [<bewitchment:essence_of_vitality>,<thaumcraft:nitor_green>,<thaumcraft:mind:1>,<bewitchment:essence_of_vitality>,<thaumcraft:nitor_green>,<contenttweaker:mysterious_leaking_soul>]);

# Wormwood Seeds
vanilla.seeds.removeSeed(<bewitchment:wormwood_seeds>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:wormwood_seeds", "", <bewitchment:wormwood_seeds>, 5, [<aspect:herba> * 200,<aspect:tenebrae> * 120,<aspect:aversio> * 40,<aspect:vitium> * 20,<aspect:diabolus> * 10], <mysticalagriculture:rubber_seeds>, [<bewitchment:acacia_resin>,<thaumcraft:nitor_black>,<thaumcraft:mind:1>,<bewitchment:acacia_resin>,<thaumcraft:nitor_black>,<contenttweaker:mysterious_leaking_soul>]);

# Silver Candelabra
recipes.remove(<bewitchment:candelabra_silver>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:candelabra_silver", "", <bewitchment:candelabra_silver>, 4, [<aspect:lux> * 100,<aspect:auram> * 50,<aspect:stellae> * 10], <thermalfoundation:storage:2>, [<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>]);

# Iron Candelabra
recipes.remove(<bewitchment:candelabra_iron>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:candelabra_iron", "", <bewitchment:candelabra_iron>, 4, [<aspect:lux> * 100,<aspect:auram> * 50,<aspect:stellae> * 10], <minecraft:iron_block>, [<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>]);

# Gold Candelabra
recipes.remove(<bewitchment:candelabra_gold>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:candelabra_gold", "", <bewitchment:candelabra_gold>, 4, [<aspect:lux> * 100,<aspect:auram> * 50,<aspect:stellae> * 10], <minecraft:gold_block>, [<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>]);

# Candelabra OreDict
<ore:bewitchmentCandelabra>.addItems([<bewitchment:candelabra_silver>,<bewitchment:candelabra_iron>,<bewitchment:candelabra_gold>]);

# Witches' Cauldron
recipes.remove(<bewitchment:witches_cauldron>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:witches_cauldron", "", <bewitchment:witches_cauldron>, 4, [<aspect:alkimia> * 240,<aspect:metallum> * 200,<aspect:machina> * 100,<aspect:fabrico> * 100], <thaumcraft:crucible>, [<bewitchment:liquid_witchcraft>,<divinerpg:mortum_chunk>,<thaumcraft:metal_alchemical>,<bewitchment:droplet_of_wisdom>,<divinerpg:mortum_chunk>,<thaumcraft:metal_alchemical>]);

# Distillery
recipes.remove(<bewitchment:distillery>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:distillery", "", <bewitchment:distillery>, 6, [<aspect:machina> * 240,<aspect:aqua> * 200,<aspect:vacuos> * 150,<aspect:alkimia> * 100,<aspect:ignis> * 100], <bewitchment:witches_oven>, [<bewitchment:block_of_opal>,<thaumcraft:essentia_input>,<enderio:block_enhanced_vat>,<enderio:block_enhanced_vat>,<enderio:block_enhanced_vat>,<thaumcraft:essentia_input>,<bewitchment:block_of_opal>,<bewitchment:block_of_opal>]);

# White Sage Seeds
<bewitchment:white_sage_seeds>.addTooltip(format.white("Sometimes dropped by a Dead Bush."));

# Garlic Seeds
<bewitchment:garlic_seeds>.addTooltip(format.white("Sometimes dropped by an Allium."));

# Ritualistic Salt
<bewitchment:salt>.displayName = "Ritualistic Salt";
WitchesCauldron.addRecipe([<bewitchment:salt> * 3], [<mekanism:salt>,<mekanism:salt>,<mekanism:salt>,<bloodmagic:ritual_stone>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]})]);

# Cleansing Balm
Distillery.removeRecipe(<bewitchment:cleansing_balm>);
Distillery.addRecipe([<bewitchment:cleansing_balm>], [<bewitchment:acacia_resin>,<bewitchment:white_sage>,<bewitchment:salt>,<bewitchment:garlic>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sensus"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "spiritus"}]})]);

# Tallow
WitchesOven.removeRecipe(<minecraft:cooked_beef>);
WitchesOven.removeRecipe(<minecraft:cooked_porkchop>);
WitchesOven.removeRecipe(<minecraft:cooked_mutton>);
WitchesOven.removeRecipe(<minecraft:cooked_chicken>);
WitchesOven.removeRecipe(<minecraft:cooked_rabbit>);
WitchesCauldron.removeRecipe(<bewitchment:tallow>);
WitchesCauldron.addRecipe([<bewitchment:tallow> * 3], [<thaumcraft:tallow>,<thaumcraft:tallow>,<thaumcraft:tallow>,<contenttweaker:crystallos>,<contenttweaker:praesidium>]);

# Fiery Unguent
Distillery.removeRecipe(<bewitchment:fiery_unguent>);
Distillery.addRecipe([<bewitchment:fiery_unguent>], [<bewitchment:cloudy_oil>,<contenttweaker:incendium>,<bewitchment:tallow>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]})]);

# Swirl of the Depths
Distillery.removeRecipe(<bewitchment:swirl_of_depths>);
Distillery.addRecipe([<bewitchment:swirl_of_depths>], [<bewitchment:ebb_of_death>,<contenttweaker:omothol_soul>,<bewitchment:coquina>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "permutatio"}]})]);

# Dragon's Blood Resin
mods.inworldcrafting.FluidToItem.transform(<bewitchment:dragons_blood_resin>, <liquid:evilcraftblood>, [<contenttweaker:dragon_resin>], true);
<bewitchment:dragons_blood_resin>.addTooltip(format.white("After initially crafting this, obtain it by"));
<bewitchment:dragons_blood_resin>.addTooltip(format.white("Right Clicking on a Dragon's Blood Tree with"));
<bewitchment:dragons_blood_resin>.addTooltip(format.white("a Boline, and waiting for it to bleed!"));
<ore:dye>.remove(<bewitchment:dragons_blood_resin>);
<ore:dyeRed>.remove(<bewitchment:dragons_blood_resin>);

# Dragon's Blood Sapling
mods.thaumcraft.Infusion.registerRecipe("bewitchment:dragons_blood_sapling", "", <bewitchment:dragons_blood_sapling>, 7, [<aspect:herba> * 240,<aspect:victus> * 200,<aspect:mortuus> * 200,<aspect:diabolus> * 100,<aspect:perditio> * 50], <natura:nether_sapling2>, [<bewitchment:cleansing_balm>,<bewitchment:dragons_blood_resin>,<bewitchment:ebb_of_death>,<bewitchment:dragons_blood_resin>,<bewitchment:cleansing_balm>,<bewitchment:dragons_blood_resin>,<bewitchment:ebb_of_death>,<bewitchment:dragons_blood_resin>]);

# Dragon's Blood Chest
recipes.remove(<bewitchment:dragons_blood_chest>);
recipes.addShaped(<bewitchment:dragons_blood_chest>, [[<bewitchment:dragons_blood_wood>,<bewitchment:dragons_blood_planks>,<bewitchment:dragons_blood_wood>],[<bewitchment:dragons_blood_planks>,<bewitchment:dragons_blood_resin>,<bewitchment:dragons_blood_planks>],[<bewitchment:dragons_blood_wood>,<bewitchment:dragons_blood_planks>,<bewitchment:dragons_blood_wood>]]);

# Ritual Chalk
recipes.remove(<bewitchment:ritual_chalk>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:ritual_chalk", "", <bewitchment:ritual_chalk>, 1, [<aspect:terra> * 20,<aspect:cognitio> * 10,<aspect:praecantatio> * 10], <undergroundbiomes:sedimentary_stone:1>, [<contenttweaker:gypsum>,<bewitchment:salt>,<contenttweaker:gypsum>,<bewitchment:salt>,<contenttweaker:gypsum>,<bewitchment:salt>]);

# Focal Chalk
WitchesCauldron.removeRecipe(<bewitchment:focal_chalk>);
WitchesCauldron.addRecipe([<bewitchment:focal_chalk>], [<bewitchment:ritual_chalk>,<thaumcraft:focus_2>,<bewitchment:swirl_of_depths>,<evilcraft:promise_acceptor:1>]);

# Boline
recipes.remove(<bewitchment:boline>);
recipes.addShaped(<bewitchment:boline>, [[<thermalfoundation:storage:2>,<bewitchment:dragons_blood_wood>,<thermalfoundation:storage:2>],[null,<thaumcraft:resonator>,<bewitchment:dragons_blood_wood>],[<thaumcraft:ingot>,null,<thermalfoundation:storage:2>]]);

# Oil of Vitriol
Distillery.removeRecipe(<bewitchment:oil_of_vitriol>);
Distillery.addRecipe([<bewitchment:oil_of_vitriol>], [<bewitchment:cloudy_oil>,<thermalexpansion:florb>.withTag({Fluid: "empoweredoil"}),<bewitchment:dragons_blood_resin>,<bewitchment:aconitum>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "gelum"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]})]);

# Stone Ichor
Distillery.removeRecipe(<bewitchment:stone_ichor>);
Distillery.addRecipe([<bewitchment:stone_ichor>], [<bewitchment:oil_of_vitriol>,<extrautils2:compressedcobblestone:2>,<bewitchment:ectoplasm>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})]);

# Spinning Wheel
recipes.remove(<bewitchment:spinning_wheel>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:spinning_wheel", "", <bewitchment:spinning_wheel>, 6, [<aspect:machina> * 240,<aspect:aqua> * 200,<aspect:vacuos> * 150,<aspect:alkimia> * 100,<aspect:ignis> * 100], <atum:spinning_wheel>, [<bewitchment:stone_ichor>,<bewitchment:wormwood>,<bewitchment:dragons_blood_wood>,<bewitchment:dragons_blood_wood>,<bewitchment:dragons_blood_wood>,<bewitchment:wormwood>,<bewitchment:stone_ichor>,<immersiveengineering:wooden_device1>]);

# Athame
recipes.remove(<bewitchment:athame>);
recipes.addShapedMirrored(<bewitchment:athame>, [[null,<thermalfoundation:material:130>,<thermalfoundation:material:130>],[<bewitchment:pure_filament>,<contenttweaker:gypsum>,<thermalfoundation:material:130>],[<bloodmagic:dagger_of_sacrifice>,<bewitchment:pure_filament>,null]]);
recipes.addShapedMirrored(<bewitchment:athame>, [[null,<thermalfoundation:material:130>,<thermalfoundation:material:130>],[<lightningcraft:nugget:1>,<contenttweaker:gypsum>,<thermalfoundation:material:130>],[<bloodmagic:dagger_of_sacrifice>,<lightningcraft:nugget:1>,null]]);

# Dimensional Sand: Only form the Athame
WitchesOven.removeRecipe(<minecraft:blaze_powder>);
WitchesOven.removeRecipe(<minecraft:chorus_fruit_popped>);
<bewitchment:dimensional_sand>.addTooltip(format.white("Dropped by Enderman and Endermite slain with an Athame."));

# Heart
<bewitchment:heart>.addTooltip(format.white("Dropped by Players, Villagers, Witches, Evokers,"));
<bewitchment:heart>.addTooltip(format.white("Illusioners & Vindicators when slain with an Athame."));

# Hoof
<bewitchment:hoof>.addTooltip(format.white("Can be obtained from Pigs, Sheep, Cows, Horses, Zombie Pigmen,"));
<bewitchment:hoof>.addTooltip(format.white("Mooshrooms, Llamas, Donkeys & Mules when slain with an Athame,"));
<bewitchment:hoof>.addTooltip(format.white("Or simply from a Cursed Earth mob farm."));

# Spectral Dust
<bewitchment:spectral_dust>.addTooltip(format.white("Dropped by all Undead mobs when slain with an Athame."));

# Heaven Extract
Distillery.removeRecipe(<bewitchment:heaven_extract>);
Distillery.addRecipe([<bewitchment:heaven_extract>,<bewitchment:empty_jar>], [<bewitchment:cleansing_balm>,<bewitchment:essence_of_vitality>,<bewitchment:heart>,<bewitchment:owlets_wing>,<contenttweaker:holy_core>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]})]);

# Otherworldly Tears
Distillery.removeRecipe(<bewitchment:otherworldly_tears>);
Distillery.addRecipe([<bewitchment:otherworldly_tears>,<bewitchment:empty_jar>], [<bewitchment:swirl_of_depths>,<bewitchment:liquid_witchcraft>,<bewitchment:dimensional_sand>,<enderutilities:enderpart:17>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]})]);

# Bone Needle
recipes.remove(<bewitchment:bone_needle>);
recipes.addShapedMirrored(<bewitchment:bone_needle>, [[null,null,<minecraft:bone>],[null,<minecraft:bone>,null],[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "humanus"}]}),null,null]]);

# Poppet
recipes.remove(<bewitchment:poppet>);
recipes.addShapedMirrored(<bewitchment:poppet>, [[<contenttweaker:magical_leather>,<thaumcraft:mind>,<contenttweaker:magical_leather>],[<bewitchment:bone_needle>,<contenttweaker:gypsum>,<bewitchment:spirit_string>],[<contenttweaker:magical_leather>,<contenttweaker:gypsum>,<contenttweaker:magical_leather>]]);
recipes.addShapedMirrored(<bewitchment:poppet>, [[<contenttweaker:magical_leather>,<contenttweaker:knowledge_of_the_sky>,<contenttweaker:magical_leather>],[<bewitchment:bone_needle>,<contenttweaker:gypsum>,<alchemistry:compound:24>],[<contenttweaker:magical_leather>,<contenttweaker:gypsum>,<contenttweaker:magical_leather>]]);


# Bottled Frostfire
Distillery.removeRecipe(<bewitchment:bottled_frostfire>);
Distillery.addRecipe([<bewitchment:bottled_frostfire>,<bewitchment:empty_jar> * 2], [<bewitchment:heaven_extract>,<bewitchment:fiery_unguent>,<bewitchment:perpetual_ice>,<contenttweaker:rune_of_winter>,<contenttweaker:condensed_vis_crystal_gelum>,<contenttweaker:mystical_tablet>]);

# Cold Iron Ingot
FrostFire.removeAll();
FrostFire.addRecipe(<bewitchment:cold_iron_ingot>, <thaumcraft:ingot>);

# Perpetual Ice
<bewitchment:perpetual_ice>.addTooltip(format.white("Created by throwing an Iceworld Potion on Stone,"));
<bewitchment:perpetual_ice>.addTooltip(format.white("Granite or Diorite. To create the Potion, place a"));
<bewitchment:perpetual_ice>.addTooltip(format.white("Witches' Cauldron near a Witches' Altar, fill it"));
<bewitchment:perpetual_ice>.addTooltip(format.white("with Water, and throw a Mandrake Root, Ice OR Snow,"));
<bewitchment:perpetual_ice>.addTooltip(format.white("Glowstone Dust, then Gunpowder in, and Right Click"));
<bewitchment:perpetual_ice>.addTooltip(format.white("with an empty Bottle three times!"));

# Pentacle
recipes.remove(<bewitchment:pentacle>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:pentacle", "", <bewitchment:pentacle>, 5, [<aspect:instrumentum> * 200,<aspect:diabolus> * 200], <contenttweaker:coralium_decorated_blood_star>, [<bewitchment:block_of_cold_iron_pentacle>,<bewitchment:diabolical_vein>,<bewitchment:stone_ichor>,<bewitchment:block_of_cold_iron_pentacle>,<bewitchment:diabolical_vein>,<bewitchment:stone_ichor>]);

# Goblet
recipes.remove(<bewitchment:goblet>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:goblet", "", <bewitchment:goblet>, 5, [<aspect:metallum> * 150,<aspect:aqua> * 150,<aspect:diabolus> * 100], <thaumcraft:jar_normal>, [<bewitchment:cold_iron_plate>,<bewitchment:cold_iron_plate>,<bewitchment:pure_filament>,<bewitchment:cold_iron_plate>,<bewitchment:pure_filament>,<bewitchment:cold_iron_plate>,<bewitchment:cold_iron_plate>,<bewitchment:swirl_of_depths>]);

# Codex Infernalis
recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "bewitchment:codex_infernalis"}), [<minecraft:book>,<bewitchment:heart>,<bewitchment:spectral_dust>]);

# Iron Gall Ink
WitchesCauldron.removeRecipe(<bewitchment:iron_gall_ink>);
WitchesCauldron.addRecipe([<bewitchment:iron_gall_ink>], [<bewitchment:cold_iron_ingot>,<bewitchment:oak_apple_gall>,<bewitchment:oak_apple_gall>,<minecraft:dye>]);

function addBewitchmentPoppetRecipe(output as IItemStack, sides as IIngredient, bottom_sides as IIngredient, bottom as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[<contenttweaker:magical_leather>,<abyssalcraft:lifecrystal>,<contenttweaker:magical_leather>],[sides,<bewitchment:poppet>,sides],[bottom_sides,bottom,bottom_sides]]);
}

# Poppet of Binding
addBewitchmentPoppetRecipe(<bewitchment:poppet_binding>, <contenttweaker:binding_reagent>, <bewitchment:iron_gall_ink>, <bewitchment:stone_ichor>.noReturn());

# Poppet of Clumsiness
addBewitchmentPoppetRecipe(<bewitchment:poppet_clumsy>, <contenttweaker:rune_of_sloth>, <contenttweaker:gypsum>, <bewitchment:oil_of_vitriol>.noReturn());

# Death Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_deathprotection>, <minecraft:potion>.withTag({Potion: "extrautils2:xu2.second.chance"}), <contenttweaker:rune_of_greed>, <bewitchment:heaven_extract>.noReturn());

# Earth Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_earthprotection>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]}), <bewitchment:toe_of_frog>, <contenttweaker:travelers_tenacity>);

# Flame Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_flameprotection>, <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <contenttweaker:rune_of_summer>, <bewitchment:fiery_unguent>.noReturn());

# Hunger Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_hungerprotection>, <abyssalcraft:mre>, <contenttweaker:rune_of_gluttony>, <bewitchment:cleansing_balm>.noReturn());

# Poppet of Spirit's Bane
addBewitchmentPoppetRecipe(<bewitchment:poppet_spiritbane>, <contenttweaker:rune_of_wrath>, <extendedcrafting:material:48>, <bewitchment:otherworldly_tears>.noReturn());

# Tool Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_tool>, <enderio:block_alloy_endergy:1>, <contenttweaker:rune_of_greed>, <bewitchment:cleansing_balm>.noReturn());

# Vampiric Poppet
recipes.remove(<bewitchment:poppet_vampiric>);
<bewitchment:poppet_vampiric>.addTooltip(format.white("Item removed. Deemed too OP."));

# Woodoo Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_voodoo>, <contenttweaker:rune_of_wrath>, <thermalexpansion:florb>.withTag({Fluid: "liquid_death"}), <bewitchment:otherworldly_tears>.noReturn());

# Woodoo Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_voodooprotection>, <contenttweaker:rune_of_envy>, <spartanshields:shield_tc_thaumium>, <bewitchment:heaven_extract>.noReturn());

# Poppet of Wasting
addBewitchmentPoppetRecipe(<bewitchment:poppet_wasting>, <abyssalcraft:essence>, <contenttweaker:rune_of_gluttony>, <bewitchment:fiery_unguent>.noReturn());

# Water Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_waterprotection>, <minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}), <contenttweaker:rune_of_gluttony>, <bewitchment:swirl_of_depths>.noReturn());

# Taglock
recipes.remove(<bewitchment:taglock>);
recipes.addShapeless(<bewitchment:taglock>, [<thaumcraft:phial>,<bewitchment:bone_needle>,<bewitchment:cold_iron_nugget>]);

# Bottled Hellfire
Distillery.removeRecipe(<bewitchment:bottled_hellfire>);
Distillery.addRecipe([<bewitchment:bottled_hellfire>], [<bewitchment:fiery_unguent>,<bewitchment:hellebore>,<bewitchment:dragons_blood_resin_block>,<contenttweaker:gypsum>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "diabolus"}]})]);

# Fiery Chalk
WitchesCauldron.removeRecipe(<bewitchment:fiery_chalk>);
WitchesCauldron.addRecipe([<bewitchment:fiery_chalk>], [<bewitchment:ritual_chalk>,<bewitchment:bottled_hellfire>,<bewitchment:diabolical_vein>,<contenttweaker:rune_of_fire>]);

# Demonic Elixir
Distillery.removeRecipe(<bewitchment:demonic_elixir>);
Distillery.addRecipe([<bewitchment:demonic_elixir> * 4], [<bewitchment:fiery_unguent>,<contenttweaker:travelers_tenacity>,<bewitchment:demon_heart>,<contenttweaker:rune_of_pride>,<bewitchment:empty_jar>,<bewitchment:empty_jar>]);

# Flying Ointment
recipes.remove(<bewitchment:flying_ointment>);
Distillery.addRecipe([<bewitchment:flying_ointment>], [<contenttweaker:travelers_tenacity>,<bewitchment:belladonna>,<bewitchment:tallow>,<bewitchment:tallow>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]})]);

# Caduceus
<bewitchment:caduceus>.addTooltip(format.white("Dropped by Baphomet. Consult your"));
<bewitchment:caduceus>.addTooltip(format.white("Codex Infernalis on how to summon him."));

# Leonard's Wand
<bewitchment:leonards_wand>.addTooltip(format.white("Dropped by Leonard. Consult your"));
<bewitchment:leonards_wand>.addTooltip(format.white("Codex Infernalis on how to summon him."));

# Brazier
recipes.remove(<bewitchment:brazier>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:brazier", "", <bewitchment:brazier>, 7, [<aspect:machina> * 200,<aspect:ignis> * 200,<aspect:diabolus> * 150], <bewitchment:witches_oven>, [<bewitchment:demonic_elixir>,<bewitchment:caduceus>,<bewitchment:otherworldly_tears>,<bewitchment:bottled_hellfire>]);

# Sigil Table
recipes.remove(<bewitchment:sigil_table>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:sigil_table", "", <bewitchment:sigil_table>, 7, [<aspect:machina> * 200,<aspect:vinculum> * 150,<aspect:diabolus> * 100,<aspect:cognitio> * 50,<aspect:fabrico> * 50], <bewitchment:witches_oven>, [<bloodmagic:sigil_suppression>,<bewitchment:block_of_cold_iron>,<bloodmagic:sigil_phantom_bridge>,<extendedcrafting:table_advanced>]);

# Phasing Chalk
WitchesCauldron.removeRecipe(<bewitchment:phasing_chalk>);
WitchesCauldron.addRecipe([<bewitchment:phasing_chalk>], [<bewitchment:ritual_chalk>,<bewitchment:otherworldly_tears>,<bewitchment:spectral_dust>,<contenttweaker:rune_of_envy>]);

# Stew of the Grotesque
WitchesCauldron.removeRecipe(<bewitchment:stew_of_the_grotesque>);
WitchesCauldron.addRecipe([<bewitchment:stew_of_the_grotesque>], [<bewitchment:demonic_elixir>,<contenttweaker:death_core>,<contenttweaker:shard_of_the_grotesque>,<contenttweaker:shard_of_the_grotesque>,<bewitchment:lizard_leg>,<bewitchment:toe_of_frog>,<bewitchment:adders_fork>,<bewitchment:hellebore>,<bewitchment:belladonna>]);

# Demon Heart
<bewitchment:demon_heart>.addTooltip(format.white("Dropped by Lesser and Higher Demons. Check"));
<bewitchment:demon_heart>.addTooltip(format.white("your Codex Infernalis on how to summon them."));
mods.immersiveengineering.ArcFurnace.addRecipe(<bewitchment:demon_heart> * 20, <bewitchment:demon_heart> * 10, null, 200, 1000, [<bewitchment:heart> * 10, <bloodmagic:item_demon_crystal> * 10]);
#EIOAlloySmelter.addRecipe(<bewitchment:demon_heart> * 20, [<bewitchment:demon_heart> * 10, <bewitchment:heart> * 10, <bloodmagic:item_demon_crystal> * 10], 80000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml

# Broom
recipes.remove(<bewitchment:broom>);
recipes.addShapedMirrored(<bewitchment:broom>, [[null,null,<ore:stickWood>],[<thaumcraft:ingot:2>,<bewitchment:liquid_witchcraft>.noReturn(),null],[<thaumcraft:ingot:2>,<thaumcraft:ingot:2>,null]]);

# Silver Helmet
recipes.remove(<bewitchment:silver_helmet>);
recipes.addShaped(<bewitchment:silver_helmet>, [[<thermalfoundation:storage:2>,<thermalfoundation:storage:2>,<thermalfoundation:storage:2>],[<thermalfoundation:storage:2>,<thaumcraft:fortress_helm>,<thermalfoundation:storage:2>]]);

# Silver Chestplate
recipes.remove(<bewitchment:silver_chestplate>);
recipes.addShaped(<bewitchment:silver_chestplate>, [[<thermalfoundation:storage:2>,<thaumcraft:fortress_chest>,<thermalfoundation:storage:2>],[<thermalfoundation:storage:2>,<thermalfoundation:storage:2>,<thermalfoundation:storage:2>],[<thermalfoundation:storage:2>,<thermalfoundation:storage:2>,<thermalfoundation:storage:2>]]);

# Silver Leggings
recipes.remove(<bewitchment:silver_leggings>);
recipes.addShaped(<bewitchment:silver_leggings>, [[<thermalfoundation:storage:2>,<thermalfoundation:storage:2>,<thermalfoundation:storage:2>],[<thermalfoundation:storage:2>,<thaumcraft:fortress_legs>,<thermalfoundation:storage:2>],[<thermalfoundation:storage:2>,null,<thermalfoundation:storage:2>]]);

# Silver Boots
recipes.remove(<bewitchment:silver_boots>);
recipes.addShaped(<bewitchment:silver_boots>, [[<thermalfoundation:storage:2>,null,<thermalfoundation:storage:2>],[<thermalfoundation:storage:2>,<thaumcraft:thaumium_boots>,<thermalfoundation:storage:2>]]);

# Cold Iron Helmet
recipes.remove(<bewitchment:cold_iron_helmet>);
recipes.addShaped(<bewitchment:cold_iron_helmet>, [[<bewitchment:block_of_cold_iron>,<bewitchment:block_of_cold_iron>,<bewitchment:block_of_cold_iron>],[<bewitchment:block_of_cold_iron>,<bewitchment:silver_helmet>,<bewitchment:block_of_cold_iron>]]);

# Cold Iron Chestplate
recipes.remove(<bewitchment:cold_iron_chestplate>);
recipes.addShaped(<bewitchment:cold_iron_chestplate>, [[<bewitchment:block_of_cold_iron>,<bewitchment:silver_chestplate>,<bewitchment:block_of_cold_iron>],[<bewitchment:block_of_cold_iron>,<bewitchment:block_of_cold_iron>,<bewitchment:block_of_cold_iron>],[<bewitchment:block_of_cold_iron>,<bewitchment:block_of_cold_iron>,<bewitchment:block_of_cold_iron>]]);

# Cold Iron Leggings
recipes.remove(<bewitchment:cold_iron_leggings>);
recipes.addShaped(<bewitchment:cold_iron_leggings>, [[<bewitchment:block_of_cold_iron>,<bewitchment:block_of_cold_iron>,<bewitchment:block_of_cold_iron>],[<bewitchment:block_of_cold_iron>,<bewitchment:silver_leggings>,<bewitchment:block_of_cold_iron>],[<bewitchment:block_of_cold_iron>,null,<bewitchment:block_of_cold_iron>]]);

# Cold Iron Boots
recipes.remove(<bewitchment:cold_iron_boots>);
recipes.addShaped(<bewitchment:cold_iron_boots>, [[<bewitchment:block_of_cold_iron>,null,<bewitchment:block_of_cold_iron>],[<bewitchment:block_of_cold_iron>,<bewitchment:silver_boots>,<bewitchment:block_of_cold_iron>]]);

# Witches' Cowl
recipes.remove(<bewitchment:witches_cowl>);
recipes.addShaped(<bewitchment:witches_cowl>, [[<contenttweaker:magical_leather>,<quark:witch_hat>,<contenttweaker:magical_leather>],[<bewitchment:diabolical_vein>,<botania:manaweavehelm>,<bewitchment:diabolical_vein>],[<bewitchment:diabolical_vein>,null,<bewitchment:diabolical_vein>]]);

# Witches' Hat
recipes.remove(<bewitchment:witches_hat>);
recipes.addShaped(<bewitchment:witches_hat>, [[<bewitchment:diabolical_vein>,<quark:witch_hat>,<bewitchment:diabolical_vein>],[<bewitchment:diabolical_vein>,<botania:manaweavehelm>,<bewitchment:diabolical_vein>],[<contenttweaker:magical_leather>,null,<contenttweaker:magical_leather>]]);

# Witches' Robes
recipes.remove(<bewitchment:witches_robes>);
recipes.addShaped(<bewitchment:witches_robes>, [[<bewitchment:diabolical_vein>,null,<bewitchment:diabolical_vein>],[<contenttweaker:magical_leather>,<thaumcraft:cloth_chest>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]]);

# Witches' Pants
recipes.remove(<bewitchment:witches_pants>);
recipes.addShaped(<bewitchment:witches_pants>, [[null,<contenttweaker:magical_leather>,null],[<contenttweaker:magical_leather>,<thaumcraft:cloth_legs>,<contenttweaker:magical_leather>],[<bewitchment:diabolical_vein>,null,<bewitchment:diabolical_vein>]]);

# Filled Goblet
WitchesCauldron.removeRecipe(<bewitchment:filled_goblet>);
WitchesCauldron.addRecipe([<bewitchment:filled_goblet>,<bewitchment:empty_jar>], [<bewitchment:goblet>,<bewitchment:demonic_elixir>,<thermalexpansion:florb>.withTag({Fluid: "moltendreadium"}),<bewitchment:dragons_blood_resin_block>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "diabolus"}]})]);

# Nazar
recipes.remove(<bewitchment:nazar>);
recipes.addShapedMirrored(<bewitchment:nazar>, [[<bewitchment:pure_filament>,<bewitchment:pure_filament>,<bewitchment:pure_filament>],[<bewitchment:pure_filament>,null,<contenttweaker:travelers_tenacity>],[<bewitchment:pure_filament>.noReturn(),<bewitchment:heaven_extract>,null]]);

# Token of Remedies
recipes.remove(<bewitchment:token_of_remedies>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:token_of_remedies", "", <bewitchment:token_of_remedies>, 5, [<aspect:instrumentum> * 150,<aspect:luna> * 100,<aspect:ordo> * 100,<aspect:desiderium> * 50], <evilcraft:invigorating_pendant>, [<bewitchment:block_of_cold_iron>,<mysticalworld:amethyst_block>,<bewitchment:block_of_cold_iron>,<mysticalworld:amethyst_block>,<bewitchment:block_of_cold_iron>,<mysticalworld:amethyst_block>,<bewitchment:block_of_cold_iron>,<mysticalworld:amethyst_block>]);

# Triskelion Amulet
mods.thaumcraft.Infusion.registerRecipe("bewitchment:triskelion", "", <bewitchment:triskelion>, 5, [<aspect:instrumentum> * 150,<aspect:desiderium> * 100,<aspect:aversio> * 100,<aspect:diabolus> * 50], <evilcraft:promise_acceptor:1>, [<bewitchment:stone_ichor>,<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}),<contenttweaker:travelers_tenacity>,<contenttweaker:condensed_vis_crystal_desiderium>]);

# Girdle of the Dryads
recipes.remove(<bewitchment:girdle_of_the_dryads>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:girdle_of_the_dryads", "", <bewitchment:girdle_of_the_dryads>, 5, [<aspect:praemunio> * 150,<aspect:instrumentum> * 100,<aspect:herba> * 100,<aspect:luna> * 50], <bewitchment:block_of_garnet>, [<bewitchment:stone_ichor>,<bewitchment:oak_spirit>,<contenttweaker:magical_leather>,<contenttweaker:condensed_vis_crystal_herba>,<contenttweaker:magical_leather>,<bewitchment:stone_ichor>,<bewitchment:oak_spirit>,<bewitchment:pure_filament>]);

# Horseshoe
recipes.remove(<bewitchment:horseshoe>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:horseshoe", "", <bewitchment:horseshoe>, 5, [<aspect:motus> * 100,<aspect:metallum> * 50,<aspect:praemunio> * 50], <bewitchment:hoof>, [<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>,<contenttweaker:travelers_tenacity>,<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>,<bewitchment:pure_filament>]);

# Hecate's Visage
mods.thaumcraft.Infusion.registerRecipe("bewitchment:hecates_visage", "", <bewitchment:hecates_visage>, 5, [<aspect:ordo> * 100,<aspect:ignis> * 50,<aspect:desiderium> * 50,<aspect:cognitio> * 50], <bewitchment:bottled_hellfire>, [<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>,<bewitchment:pure_filament>,<bewitchment:oil_of_vitriol>,<bewitchment:pure_filament>,<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>,<bewitchment:ritual_chalk>]);

# Nethersteel
recipes.removeShapeless(<bewitchment:nethersteel> * 4, [<minecraft:iron_ingot>,<*>,<*>,<*>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<bewitchment:nethersteel> * 4, <simplyjetpacks:metaitemmods:12>, null, 240, 1000, [<minecraft:nether_brick>,<bewitchment:cold_iron_ingot>]);
EIOAlloySmelter.addRecipe(<bewitchment:nethersteel> * 4, [<simplyjetpacks:metaitemmods:12>, <minecraft:nether_brick>,<bewitchment:cold_iron_ingot>], 60000);

# Demonic Horn
<bewitchment:hellhound_horn>.addTooltip(format.white("Dropped by various Bewitchment Demons."));

# Hellish Bauble
recipes.remove(<bewitchment:hellish_bauble>);
recipes.addShaped(<bewitchment:hellish_bauble>, [[<bewitchment:hellhound_horn>,<bewitchment:diabolical_vein>,<bewitchment:hellhound_horn>],[<bewitchment:nethersteel>,<contenttweaker:rune_of_pride>,<bewitchment:nethersteel>],[<bewitchment:nethersteel>,<bewitchment:demonic_elixir>.noReturn(),<bewitchment:nethersteel>]]);

# Waystone
recipes.remove(<bewitchment:waystone>);
recipes.addShaped(<bewitchment:waystone>, [[<bewitchment:cold_iron_ingot>,<bewitchment:pentacle>,<bewitchment:cold_iron_ingot>],[<bewitchment:cold_iron_ingot>,<bewitchment:otherworldly_tears>.noReturn(),<bewitchment:cold_iron_ingot>],[null,<bewitchment:cold_iron_ingot>,null]]);

# Spanish Moss
<bewitchment:spanish_moss>.addTooltip(format.white("Found in Swamp Biomes. Use Shears to harvest."));

# Cold Iron Sword
recipes.remove(<bewitchment:cold_iron_sword>);
recipes.addShaped(<bewitchment:cold_iron_sword>, [[<bewitchment:cold_iron_ingot>],[<bewitchment:cold_iron_ingot>],[<thaumcraft:elemental_sword>]]);

# Cold Iron Pickaxe
recipes.remove(<bewitchment:cold_iron_pickaxe>);
recipes.addShaped(<bewitchment:cold_iron_pickaxe>, [[<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>],[null,<thaumcraft:elemental_pick>,null],[null,<bewitchment:pure_filament>,null]]);

# Cold Iron Shovel
recipes.remove(<bewitchment:cold_iron_shovel>);
recipes.addShaped(<bewitchment:cold_iron_shovel>, [[<bewitchment:cold_iron_ingot>],[<thaumcraft:elemental_shovel>],[<bewitchment:pure_filament>]]);

# Cold Iron Axe
recipes.remove(<bewitchment:cold_iron_axe>);
recipes.addShapedMirrored(<bewitchment:cold_iron_axe>, [[<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>],[<bewitchment:cold_iron_ingot>,<thaumcraft:elemental_axe>],[null,<bewitchment:pure_filament>]]);

# Cold Iron Hoe
recipes.remove(<bewitchment:cold_iron_hoe>);
recipes.addShapedMirrored(<bewitchment:cold_iron_hoe>, [[<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>],[null,<thaumcraft:elemental_hoe>],[null,<bewitchment:pure_filament>]]);

# Scorned Bricks
recipes.removeShapeless(<bewitchment:scorned_bricks>, [<ore:obsidian>,<ore:obsidian>,<ore:netherrack>,<ore:netherrack>]);
recipes.addShaped(<bewitchment:scorned_bricks>, [[<extrautils2:compressednetherrack>,<contenttweaker:compressed_obsidian1>,<extrautils2:compressednetherrack>],[<contenttweaker:compressed_obsidian1>,<extrautils2:compressednetherrack>,<contenttweaker:compressed_obsidian1>],[<extrautils2:compressednetherrack>,<contenttweaker:compressed_obsidian1>,<extrautils2:compressednetherrack>]]);

# Removing the Biome Shifting Ritual
#WitchesRitual.removeByInput(<bewitchment:boline>);
# Nevermind, this crashes the Bewitchment guide book...

# Blessed Stone
mods.extendedcrafting.TableCrafting.addShaped(<bewitchment:blessed_stone>,
[[<bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>],
[<thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],
[<thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <bewitchment:cold_iron_ingot>, <bewitchment:cold_iron_ingot>, <bewitchment:cold_iron_ingot>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>],
[<thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>, <bewitchment:heaven_extract>.noReturn(), <bewitchment:heaven_extract>.noReturn(), <bewitchment:heaven_extract>.noReturn(), <thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>],
[<thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>, <bewitchment:heaven_extract>.noReturn(), <bloodmagic:sacrificial_dagger:1>, <bewitchment:heaven_extract>.noReturn(), <thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>],
[<thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>, <bewitchment:heaven_extract>.noReturn(), <bewitchment:heaven_extract>.noReturn(), <bewitchment:heaven_extract>.noReturn(), <thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>],
[<thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <bewitchment:cold_iron_ingot>, <bewitchment:cold_iron_ingot>, <bewitchment:cold_iron_ingot>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>],
[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <bewitchment:cold_iron_ingot>, <thaumcraft:stone_arcane>],
[<bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>, <bewitchment:stone_witches_altar>]]);


print("ENDING Bewitchment.zs");
