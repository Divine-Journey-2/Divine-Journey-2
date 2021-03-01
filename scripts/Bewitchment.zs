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

print("STARTING Bewitchment.zs");

# Hellebore Seeds
vanilla.seeds.removeSeed(<bewitchment:hellebore_seeds>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:hellebore_seeds", "", <bewitchment:hellebore_seeds>, 4, [<aspect:herba> * 200,<aspect:ignis> * 160,<aspect:sensus> * 60], <mysticalagriculture:nether_seeds>, [<thaumcraft:nugget:10>,<thaumcraft:nitor_lime>,<thaumcraft:mind:1>,<thaumcraft:shimmerleaf>,<thaumcraft:nitor_lime>,<contenttweaker:mysterious_leaking_soul>]);

# Mandrake Seeds
vanilla.seeds.removeSeed(<bewitchment:mandrake_seeds>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:mandrake_seeds", "", <bewitchment:mandrake_seeds>, 5, [<aspect:herba> * 200,<aspect:victus> * 120,<aspect:aversio> * 100,<aspect:motus> * 60,<aspect:perditio> * 40,<aspect:sensus> * 20], <mysticalagriculture:creeper_seeds>, [<thaumcraft:nugget:10>,<thaumcraft:nitor_brown>,<thaumcraft:mind:1>,<thaumcraft:cinderpearl>,<thaumcraft:nitor_brown>,<contenttweaker:mysterious_leaking_soul>]);

# Witches' Oven
recipes.remove(<bewitchment:witches_oven>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:witches_oven", "", <bewitchment:witches_oven>, 6, [<aspect:machina> * 250,<aspect:ignis> * 150,<aspect:sensus> * 150,<aspect:alkimia> * 100,<aspect:fabrico> * 30,<aspect:herba> * 30], <thaumcraft:smelter_thaumium>, [<bewitchment:mandrake_root>,<divinerpg:mortum_chunk>,<bewitchment:hellebore>,<thaumcraft:morphic_resonator>,<bewitchment:mandrake_root>,<divinerpg:mortum_chunk>,<bewitchment:hellebore>,<thaumcraft:morphic_resonator>]);

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
mods.thaumcraft.Infusion.registerRecipe("bewitchment:aconitum_seeds", "", <bewitchment:aconitum_seeds>, 5, [<aspect:herba> * 200,<aspect:exanimis> * 160,<aspect:bestia> * 40,<aspect:motus> * 20,<aspect:diabolus> * 10], <mysticalagriculture:lithium_seeds>, [<bewitchment:ebb_of_death>,<thaumcraft:nitor_silver>,<thaumcraft:mind:1>,<bewitchment:ebb_of_death>,<thaumcraft:nitor_silver>,<contenttweaker:mysterious_leaking_soul>]);

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

# Candelabra OreDict
<ore:bewitchmentCandelabra>.addItems([<bewitchment:candelabra_silver>,<bewitchment:candelabra_iron>]);

# Witches' Cauldron
recipes.remove(<bewitchment:witches_cauldron>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:witches_cauldron", "", <bewitchment:witches_cauldron>, 4, [<aspect:alkimia> * 250,<aspect:metallum> * 200,<aspect:machina> * 100,<aspect:fabrico> * 100], <thaumcraft:crucible>, [<bewitchment:liquid_witchcraft>,<divinerpg:mortum_chunk>,<thaumcraft:metal_alchemical>,<bewitchment:droplet_of_wisdom>,<divinerpg:mortum_chunk>,<thaumcraft:metal_alchemical>]);

# Distillery
recipes.remove(<bewitchment:distillery>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:distillery", "", <bewitchment:distillery>, 6, [<aspect:machina> * 250,<aspect:aqua> * 200,<aspect:vacuos> * 150,<aspect:alkimia> * 100,<aspect:ignis> * 100], <bewitchment:witches_oven>, [<bewitchment:block_of_opal>,<thaumcraft:essentia_input>,<enderio:block_enhanced_vat>,<enderio:block_enhanced_vat>,<enderio:block_enhanced_vat>,<thaumcraft:essentia_input>,<bewitchment:block_of_opal>,<bewitchment:block_of_opal>]);

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

# Dragon's Blood Sapling
mods.thaumcraft.Infusion.registerRecipe("bewitchment:dragons_blood_sapling", "", <bewitchment:dragons_blood_sapling>, 7, [<aspect:herba> * 250,<aspect:victus> * 200,<aspect:mortuus> * 200,<aspect:diabolus> * 100,<aspect:perditio> * 50], <natura:nether_sapling2>, [<bewitchment:cleansing_balm>,<bewitchment:dragons_blood_resin>,<bewitchment:ebb_of_death>,<bewitchment:dragons_blood_resin>,<bewitchment:cleansing_balm>,<bewitchment:dragons_blood_resin>,<bewitchment:ebb_of_death>,<bewitchment:dragons_blood_resin>]);

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
mods.thaumcraft.Infusion.registerRecipe("bewitchment:spinning_wheel", "", <bewitchment:spinning_wheel>, 6, [<aspect:machina> * 250,<aspect:aqua> * 200,<aspect:vacuos> * 150,<aspect:alkimia> * 100,<aspect:ignis> * 100], <atum:spinning_wheel>, [<bewitchment:stone_ichor>,<bewitchment:wormwood>,<bewitchment:dragons_blood_wood>,<bewitchment:dragons_blood_wood>,<bewitchment:dragons_blood_wood>,<bewitchment:wormwood>,<bewitchment:stone_ichor>,<immersiveengineering:wooden_device1>]);

# Athame
recipes.remove(<bewitchment:athame>);
recipes.addShapedMirrored(<bewitchment:athame>, [[null,<thermalfoundation:material:130>,<thermalfoundation:material:130>],[<bewitchment:pure_filament>,<contenttweaker:gypsum>,<thermalfoundation:material:130>],[<bloodmagic:dagger_of_sacrifice>,<bewitchment:pure_filament>,null]]);

# Dimensional Sand: Only form the Athame
WitchesOven.removeRecipe(<minecraft:blaze_powder>);
WitchesOven.removeRecipe(<minecraft:chorus_fruit_popped>);
<bewitchment:dimensional_sand>.addTooltip(format.white("Dropped by Enderman and Endermite slain with an Athame."));

# Heart
<bewitchment:heart>.addTooltip(format.white("Dropped by Players, Villagers, Witches, Evokers,"));
<bewitchment:heart>.addTooltip(format.white("Illusioners & Vindicators when slain with a Athame."));

# Hoof
<bewitchment:hoof>.addTooltip(format.white("Dropped by Pigs, Sheep, Cows, Horses, Zombie Pigmen,"));
<bewitchment:hoof>.addTooltip(format.white("Mooshrooms, Llamas, Donkeys & Mules when slain with a Athame."));

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

# Bottled Frostfire
Distillery.removeRecipe(<bewitchment:bottled_frostfire>);
Distillery.addRecipe([<bewitchment:bottled_frostfire>,<bewitchment:empty_jar> * 2], [<bewitchment:heaven_extract>,<bewitchment:fiery_unguent>,<bewitchment:perpetual_ice>,<botania:rune:7>,<contenttweaker:condensed_vis_crystal_gelum>,<contenttweaker:mystical_tablet>]);

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
addBewitchmentPoppetRecipe(<bewitchment:poppet_clumsy>, <botania:rune:12>, <contenttweaker:gypsum>, <bewitchment:oil_of_vitriol>.noReturn());

# Death Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_deathprotection>, <minecraft:potion>.withTag({Potion: "extrautils2:xu2.second.chance"}), <botania:rune:11>, <bewitchment:heaven_extract>.noReturn());

# Earth Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_earthprotection>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]}), <bewitchment:toe_of_frog>, <contenttweaker:travellers_tenacity>);

# Flame Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_flameprotection>, <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <botania:rune:5>, <bewitchment:fiery_unguent>.noReturn());

# Hunger Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_hungerprotection>, <abyssalcraft:mre>, <botania:rune:10>, <bewitchment:cleansing_balm>.noReturn());

# Poppet of Spirit's Bane
addBewitchmentPoppetRecipe(<bewitchment:poppet_spiritbane>, <botania:rune:13>, <extendedcrafting:material:48>, <bewitchment:otherworldly_tears>.noReturn());

# Tool Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_tool>, <enderio:block_alloy_endergy:1>, <botania:rune:11>, <bewitchment:cleansing_balm>.noReturn());

# Vampiric Poppet
recipes.remove(<bewitchment:poppet_vampiric>);
<bewitchment:poppet_vampiric>.addTooltip(format.white("Item removed. Deemed too OP."));

# Woodoo Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_voodoo>, <botania:rune:13>, <thermalexpansion:florb>.withTag({Fluid: "liquid_death"}), <bewitchment:otherworldly_tears>.noReturn());

# Woodoo Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_voodooprotection>, <botania:rune:14>, <spartanshields:shield_tc_thaumium>, <bewitchment:heaven_extract>.noReturn());

# Poppet of Wasting
addBewitchmentPoppetRecipe(<bewitchment:poppet_wasting>, <abyssalcraft:essence>, <botania:rune:10>, <bewitchment:fiery_unguent>.noReturn());

# Water Protection Poppet
addBewitchmentPoppetRecipe(<bewitchment:poppet_waterprotection>, <minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}), <botania:rune:10>, <bewitchment:swirl_of_depths>.noReturn());

# Taglock
recipes.remove(<bewitchment:taglock>);
recipes.addShapeless(<bewitchment:taglock>, [<thaumcraft:phial>,<bewitchment:bone_needle>,<bewitchment:cold_iron_nugget>]);

# Bottled Hellfire
Distillery.removeRecipe(<bewitchment:bottled_hellfire>);
Distillery.addRecipe([<bewitchment:bottled_hellfire>], [<bewitchment:fiery_unguent>,<bewitchment:hellebore>,<bewitchment:dragons_blood_resin_block>,<contenttweaker:gypsum>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "diabolus"}]})]);

# Fiery Chalk
WitchesCauldron.removeRecipe(<bewitchment:fiery_chalk>);
WitchesCauldron.addRecipe([<bewitchment:fiery_chalk>], [<bewitchment:ritual_chalk>,<bewitchment:bottled_hellfire>,<bewitchment:diabolical_vein>,<botania:rune:1>]);

# Demonic Elixir
Distillery.removeRecipe(<bewitchment:demonic_elixir>);
Distillery.addRecipe([<bewitchment:demonic_elixir> * 4], [<bewitchment:fiery_unguent>,<contenttweaker:travellers_tenacity>,<bewitchment:demon_heart>,<botania:rune:15>,<bewitchment:empty_jar>,<bewitchment:empty_jar>]);

# Flying Ointment
recipes.remove(<bewitchment:flying_ointment>);
Distillery.addRecipe([<bewitchment:flying_ointment>], [<contenttweaker:travellers_tenacity>,<bewitchment:belladonna>,<bewitchment:tallow>,<bewitchment:tallow>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]})]);

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
WitchesCauldron.addRecipe([<bewitchment:phasing_chalk>], [<bewitchment:ritual_chalk>,<bewitchment:otherworldly_tears>,<bewitchment:spectral_dust>,<botania:rune:14>]);

# Stew of the Grotesque
WitchesCauldron.removeRecipe(<bewitchment:stew_of_the_grotesque>);
WitchesCauldron.addRecipe([<bewitchment:stew_of_the_grotesque>], [<bewitchment:demonic_elixir>,<contenttweaker:death_core>,<contenttweaker:shard_of_the_grotesque>,<contenttweaker:shard_of_the_grotesque>,<bewitchment:lizard_leg>,<bewitchment:toe_of_frog>,<bewitchment:adders_fork>,<bewitchment:hellebore>,<bewitchment:belladonna>]);


print("ENDING Bewitchment.zs");