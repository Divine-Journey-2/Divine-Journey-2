# Author: Atricos

import mods.thaumcraft.Infusion;
import moretweaker.bewitchment.WitchesOven;
import mods.thaumcraft.Crucible;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

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
mods.thaumcraft.Infusion.registerRecipe("bewitchment:aconitum_seeds", "", <bewitchment:aconitum_seeds>, 6, [<aspect:herba> * 200,<aspect:exanimis> * 160,<aspect:bestia> * 40,<aspect:motus> * 20,<aspect:diabolus> * 10], <mysticalagriculture:lithium_seeds>, [<bewitchment:ebb_of_death>,<thaumcraft:nitor_silver>,<thaumcraft:mind:1>,<bewitchment:ebb_of_death>,<thaumcraft:nitor_silver>,<contenttweaker:mysterious_leaking_soul>]);

# Belladonna Seeds
vanilla.seeds.removeSeed(<bewitchment:belladonna_seeds>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:belladonna_seeds", "", <bewitchment:belladonna_seeds>, 6, [<aspect:herba> * 200,<aspect:vinculum> * 160,<aspect:sensus> * 40,<aspect:humanus> * 20,<aspect:diabolus> * 10], <mysticalagriculture:guardian_seeds>, [<bewitchment:essence_of_vitality>,<thaumcraft:nitor_green>,<thaumcraft:mind:1>,<bewitchment:essence_of_vitality>,<thaumcraft:nitor_green>,<contenttweaker:mysterious_leaking_soul>]);

# Wormwood Seeds
vanilla.seeds.removeSeed(<bewitchment:wormwood_seeds>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:wormwood_seeds", "", <bewitchment:wormwood_seeds>, 6, [<aspect:herba> * 200,<aspect:tenebrae> * 120,<aspect:aversio> * 40,<aspect:vitium> * 20,<aspect:diabolus> * 10], <mysticalagriculture:rubber_seeds>, [<bewitchment:acacia_resin>,<thaumcraft:nitor_black>,<thaumcraft:mind:1>,<bewitchment:acacia_resin>,<thaumcraft:nitor_black>,<contenttweaker:mysterious_leaking_soul>]);

# Silver Candelabra
recipes.remove(<bewitchment:candelabra_silver>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:candelabra_silver", "", <bewitchment:candelabra_silver>, 4, [<aspect:lux> * 100,<aspect:auram> * 50,<aspect:stellae> * 10], <thermalfoundation:storage:2>, [<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>]);

# Iron Candelabra
recipes.remove(<bewitchment:candelabra_iron>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:candelabra_iron", "", <bewitchment:candelabra_iron>, 4, [<aspect:lux> * 100,<aspect:auram> * 50,<aspect:stellae> * 10], <minecraft:iron_block>, [<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>,<bewitchment:cloudy_oil>,<thaumcraft:candle_white>]);

# Distillery
recipes.remove(<bewitchment:distillery>);
mods.thaumcraft.Infusion.registerRecipe("bewitchment:distillery", "", <bewitchment:distillery>, 6, [<aspect:machina> * 250,<aspect:aqua> * 200,<aspect:vacuos> * 150,<aspect:alkimia> * 100,<aspect:ignis> * 100], <bewitchment:witches_oven>, [<bewitchment:block_of_opal>,<thaumcraft:metal_alchemical>,<enderio:block_enhanced_vat>,<enderio:block_enhanced_vat>,<enderio:block_enhanced_vat>,<thaumcraft:metal_alchemical>,<bewitchment:block_of_opal>,<bewitchment:block_of_opal>]);

# Witches' Cauldron


print("ENDING Bewitchment.zs");