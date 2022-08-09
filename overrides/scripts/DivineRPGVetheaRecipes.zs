#priority -10
# Author: Atricos

import crafttweaker.item.IItemStack;

print("STARTING DivineRPGVetheaRecipes.zs");

# Dream Stone OreDict
<ore:cobblestone>.add(<divinerpg:dream_stone>);

# Log OreDicts
<ore:logWood>.addItems([<divinerpg:firewood_log>,<divinerpg:hyrewood_log>,<divinerpg:mintwood_log>]);

# Moonlight Furnace
recipes.addShaped(<divinerpg:moonlight_furnace>, [[<divinerpg:dream_stone>,<divinerpg:dream_stone>,<divinerpg:dream_stone>],[<divinerpg:dream_stone>,null,<divinerpg:dream_stone>],[<divinerpg:dream_stone>,<divinerpg:dream_stone>,<divinerpg:dream_stone>]]);

# Coal Ore
recipes.addShaped(<minecraft:coal_ore>, [[<divinerpg:dream_stone>,null,<divinerpg:dream_dirt>]]);

# Iron Ore
recipes.addShaped(<minecraft:iron_ore>, [[null,<divinerpg:dream_stone>,null],[<divinerpg:dream_stone>,<divinerpg:dream_dirt>,<divinerpg:dream_stone>],[null,<divinerpg:dream_stone>,null]]);

# Copper Ore
recipes.addShaped(<thermalfoundation:ore>, [[null,<divinerpg:dream_dirt>,null],[<divinerpg:dream_stone>,<divinerpg:dream_stone>,<divinerpg:dream_stone>]]);

# Tin Ore
recipes.addShaped(<thermalfoundation:ore:1>, [[<divinerpg:dream_stone>,<divinerpg:dream_stone>,<divinerpg:dream_stone>],[null,<divinerpg:dream_dirt>,null]]);

# Gold Ore
recipes.addShaped(<minecraft:gold_ore>, [[<divinerpg:dream_dirt>,null,<divinerpg:dream_dirt>],[null,<divinerpg:dream_stone>,null],[<divinerpg:dream_dirt>,null,<divinerpg:dream_dirt>]]);

# Diamond Ore
recipes.addShaped(<minecraft:diamond_ore>, [[<divinerpg:dream_stone>,<minecraft:gold_ore>,<divinerpg:dream_stone>],[<thermalfoundation:ore:1>,<divinerpg:dream_stone>,<thermalfoundation:ore:1>],[<divinerpg:dream_stone>,<minecraft:gold_ore>,<divinerpg:dream_stone>]]);

# Lapis Ore
recipes.addShaped(<minecraft:lapis_ore>, [[null,<divinerpg:dream_dirt>,null],[<divinerpg:dream_dirt>,<thermalfoundation:ore:1>,<divinerpg:dream_dirt>],[null,<divinerpg:dream_dirt>,null]]);

# Redstone Ore
recipes.addShaped(<minecraft:redstone_ore>, [[<divinerpg:dream_stone>,<divinerpg:dream_dirt>,<divinerpg:dream_stone>],[<divinerpg:dream_stone>,<divinerpg:dream_dirt>,<divinerpg:dream_stone>]]);

# Aluminum Ore
recipes.addShaped(<thermalfoundation:ore:4>, [[null,<divinerpg:dream_dirt>,null],[<divinerpg:dream_stone>,null,<divinerpg:dream_stone>],[null,<divinerpg:dream_dirt>,null]]);

# Silver Ore
recipes.addShaped(<thermalfoundation:ore:2>, [[<divinerpg:dream_stone>,<divinerpg:dream_dirt>,<divinerpg:dream_stone>],[<divinerpg:dream_stone>,<divinerpg:dream_stone>,<divinerpg:dream_stone>],[<divinerpg:dream_stone>,<divinerpg:dream_dirt>,<divinerpg:dream_stone>]]);

# Lead Ore
recipes.addShaped(<thermalfoundation:ore:3>, [[<divinerpg:dream_stone>,<divinerpg:dream_stone>,<divinerpg:dream_stone>],[<divinerpg:dream_dirt>,<divinerpg:dream_stone>,<divinerpg:dream_dirt>],[<divinerpg:dream_stone>,<divinerpg:dream_stone>,<divinerpg:dream_stone>]]);

# Nickel Ore
recipes.addShaped(<thermalfoundation:ore:5>, [[null,<thermalfoundation:ore:4>,null],[<divinerpg:dream_stone>,<divinerpg:dream_stone>,<divinerpg:dream_stone>],[null,<thermalfoundation:ore:4>,null]]);

# Quartz Ore
recipes.addShaped(<thaumcraft:ore_quartz>, [[<divinerpg:dream_stone>,null,<divinerpg:dream_stone>],[null,<divinerpg:dream_dirt>,null],[<divinerpg:dream_stone>,null,<divinerpg:dream_stone>]]);

# Emerald Ore
recipes.addShaped(<minecraft:emerald_ore>, [[null,<divinerpg:dream_dirt>,null],[<divinerpg:dream_dirt>,<minecraft:diamond_ore>,<divinerpg:dream_dirt>],[null,<divinerpg:dream_dirt>,null]]);

# Salt Ore
recipes.addShaped(<mekanism:saltblock>, [[<divinerpg:dream_dirt>,null,<divinerpg:dream_dirt>],[null,null,null],[<divinerpg:dream_stone>,null,<divinerpg:dream_stone>]]);

# Realmite Ore
recipes.addShaped(<divinerpg:realmite_ore>, [[<divinerpg:dream_stone>,<thermalfoundation:ore>,<divinerpg:dream_stone>]]);

# Arlemite Ore
recipes.addShaped(<divinerpg:arlemite_ore>, [[<divinerpg:dream_stone>,null,<divinerpg:dream_dirt>],[null,<divinerpg:realmite_ore>,null],[<divinerpg:dream_dirt>,null,<divinerpg:dream_stone>]]);

# Rupee Ore
recipes.addShaped(<divinerpg:rupee_ore>, [[<divinerpg:dream_dirt>,null,<divinerpg:dream_stone>],[null,<divinerpg:realmite_ore>,null],[<divinerpg:dream_stone>,null,<divinerpg:dream_dirt>]]);

# Osmium Ore
recipes.addShaped(<mekanism:oreblock>, [[null,<divinerpg:dream_stone>,null],[<divinerpg:dream_dirt>,<minecraft:iron_ore>,<divinerpg:dream_dirt>],[null,<divinerpg:dream_stone>,null]]);

# Sand
recipes.addShaped(<minecraft:sand> * 2, [[null,<divinerpg:dream_dirt>,null],[<divinerpg:dream_dirt>,<divinerpg:dream_dirt>,<divinerpg:dream_dirt>],[null,<divinerpg:dream_dirt>,null]]);

# Gravel
recipes.addShaped(<minecraft:gravel> * 2, [[<divinerpg:dream_dirt>,<divinerpg:dream_stone>,<divinerpg:dream_dirt>],[<divinerpg:dream_stone>,null,<divinerpg:dream_stone>],[<divinerpg:dream_dirt>,<divinerpg:dream_stone>,<divinerpg:dream_dirt>]]);

# Clay
recipes.addShaped(<minecraft:clay_ball> * 8, [[null,<divinerpg:dream_dirt>,null],[<divinerpg:dream_dirt>,<liquid:water> * 1000,<divinerpg:dream_dirt>],[null,<divinerpg:dream_dirt>,null]]);

# Water Bucket
recipes.addShaped(<minecraft:water_bucket>, [[null,<divinerpg:firelight>,null],[<divinerpg:firelight>,<minecraft:bucket>,<divinerpg:firelight>],[null,<divinerpg:firelight>,null]]);

# Lava Bucket
recipes.addShaped(<minecraft:lava_bucket>, [[null,<divinerpg:fire_crystal>,null],[<divinerpg:fire_crystal>,<minecraft:bucket>,<divinerpg:fire_crystal>],[null,<divinerpg:fire_crystal>,null]]);

# Glowstone
recipes.addShaped(<minecraft:glowstone> * 2, [[<divinerpg:fire_crystal>,<divinerpg:dream_stone>,<divinerpg:fire_crystal>],[<divinerpg:dream_stone>,<divinerpg:fire_crystal>,<divinerpg:dream_stone>],[<divinerpg:fire_crystal>,<divinerpg:dream_stone>,<divinerpg:fire_crystal>]]);

# Brown Mushroom
recipes.addShaped(<minecraft:brown_mushroom> * 4, [[null,<contenttweaker:planks_mintwood>,null],[<divinerpg:dream_dirt>,<liquid:water> * 1000,<divinerpg:dream_dirt>],[null,<contenttweaker:planks_mintwood>,null]]);

# Red Mushroom
recipes.addShaped(<minecraft:red_mushroom> * 4, [[null,<contenttweaker:planks_firewood>,null],[<divinerpg:dream_dirt>,<liquid:water> * 1000,<divinerpg:dream_dirt>],[null,<contenttweaker:planks_firewood>,null]]);

# Biodiesel Bucket
recipes.addShaped(<forge:bucketfilled>.withTag({FluidName: "biodiesel", Amount: 1000}), [[null,<divinerpg:crypt_wall>,null],[<divinerpg:clean_pearls>,<minecraft:water_bucket>.noReturn(),<divinerpg:clean_pearls>],[null,<divinerpg:crypt_wall>,null]]);

# Blast Brick
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 2, [[<thermalfoundation:material:162>,<minecraft:brick>,<thermalfoundation:material:162>],[<minecraft:brick>,<divinerpg:polished_pearls>,<minecraft:brick>],[<thermalfoundation:material:162>,<minecraft:brick>,<thermalfoundation:material:162>]]);

# Coke Brick
recipes.addShaped(<immersiveengineering:stone_decoration> * 2, [[<mekanism:ingot:1>,<minecraft:brick>,<mekanism:ingot:1>],[<minecraft:brick>,<divinerpg:polished_pearls>,<minecraft:brick>],[<mekanism:ingot:1>,<minecraft:brick>,<mekanism:ingot:1>]]);

# Blaze Rod
recipes.addShaped(<minecraft:blaze_rod> * 8, [[null,<divinerpg:clean_pearls>,null],[<divinerpg:clean_pearls>,<liquid:lava> * 1000,<divinerpg:clean_pearls>],[null,<divinerpg:clean_pearls>,null]]);

# Ender Pearl
recipes.addShapeless(<minecraft:ender_pearl>, [<divinerpg:dirty_pearls>,<divinerpg:acid>,<minecraft:emerald>]);

# Melon
recipes.addShapeless(<minecraft:melon>, [<divinerpg:dream_melon>]);

# Eye of the Nightmare recipe is in ContentTweakerRecipes.zs

# Warp Ward Vial
recipes.addShapeless(<botania:brewvial>.withTag({brewKey: "thaumcraft:warpward"}), [<divinerpg:firelight>, <divinerpg:fire_crystal>, <mekanism:salt>, <minecraft:glass_bottle>]);

# Ender Chest (EnderStorage)
recipes.addShaped(<enderstorage:ender_storage>, [[<botania:blazeblock>,<divinerpg:heliosis_lump>,<botania:blazeblock>],[<contenttweaker:eye_of_the_nightmare>,<mekanism:basicblock:8>,<contenttweaker:eye_of_the_nightmare>],[<botania:blazeblock>,<divinerpg:heliosis_lump>,<botania:blazeblock>]]);

# Soul Sand
recipes.addShaped(<minecraft:soul_sand> * 3, [[<minecraft:sand>,<divinerpg:polished_pearls>,<minecraft:sand>],[<minecraft:sand>,<liquid:lava> * 1000,<minecraft:sand>],[<minecraft:sand>,<divinerpg:polished_pearls>,<minecraft:sand>]]);

# Soul Vial
var all_pearls = [<divinerpg:dirty_pearls>,<divinerpg:clean_pearls>,<divinerpg:polished_pearls>,<divinerpg:shiny_pearls>] as IItemStack[];
for p in all_pearls {
	recipes.addShaped(<enderio:item_soul_vial>, [[<minecraft:soul_sand>,<minecraft:soul_sand>,<minecraft:soul_sand>],[<minecraft:glass>,p,<minecraft:glass>],[<minecraft:glass>,<minecraft:glass>,<minecraft:glass>]]);
}

# Red Pigment
recipes.addShapeless(<thermalfoundation:dye:1>, [<divinerpg:polished_pearls>,<divinerpg:acid>]);
recipes.addShapeless(<thermalfoundation:dye:1>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<divinerpg:acid>]);

# Yellow Pigment
recipes.addShapeless(<thermalfoundation:dye:11>, [<divinerpg:clean_pearls>,<divinerpg:acid>]);
recipes.addShapeless(<thermalfoundation:dye:11>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),<divinerpg:acid>]);

# Black Pigment
recipes.addShapeless(<thermalfoundation:dye:0>, [<minecraft:obsidian>,<divinerpg:acid>]);
recipes.addShapeless(<thermalfoundation:dye:0>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}),<divinerpg:acid>]);

# White Pigment
recipes.addShapeless(<thermalfoundation:dye:15>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}),<divinerpg:acid>]);

# Brown Pigment
recipes.addShapeless(<thermalfoundation:dye:3>, [<minecraft:soul_sand>,<divinerpg:acid>]);

# Green Pigment
recipes.addShapeless(<thermalfoundation:dye:2>, [<divinerpg:dirty_pearls>,<divinerpg:acid>]);

# Purple Pigment
recipes.addShapeless(<thermalfoundation:dye:5>, [<divinerpg:shiny_pearls>,<divinerpg:acid>]);

# Light Blue Pigment
recipes.addShapeless(<thermalfoundation:dye:12>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}),<divinerpg:acid>]);

# Lime Pigment
recipes.addShapeless(<thermalfoundation:dye:10>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}),<divinerpg:acid>]);

# Blue Pigment
recipes.addShapeless(<thermalfoundation:dye:4>, [<divinerpg:luna_bricks>,<divinerpg:acid>]);

# Engineer's Hammer
recipes.addShapedMirrored(<immersiveengineering:tool>, [[null,<divinerpg:luna_bricks>,<thermalfoundation:material:32>],[null,<lightningcraft:rod:6>,<divinerpg:luna_bricks>],[<lightningcraft:rod:6>,null,null]]);

# Crypt Wall
<divinerpg:crypt_wall>.addTooltip(format.white("Found on all layers on Vethea. Simply"));
<divinerpg:crypt_wall>.addTooltip(format.white("mine up the walls of these brown dungeons."));

# Heliosis Lump
<divinerpg:heliosis_lump>.addTooltip(format.white("Found on the top layer on Vethea,"));
<divinerpg:heliosis_lump>.addTooltip(format.white("in special (brown) dungeons."));

# Dream Melon
<divinerpg:dream_melon>.addTooltip(format.white("Found inside Chests in small Crypts"));
<divinerpg:dream_melon>.addTooltip(format.white("on the bottom layer of Vethea."));

# Luna Brick
<divinerpg:luna_bricks>.addTooltip(format.white("Found on the top layer of Vethea,"));
<divinerpg:luna_bricks>.addTooltip(format.white("in small rectangular arenas."));

# Moon Clock
recipes.addShaped(<divinerpg:moon_clock>, [[<divinerpg:shiny_pearls>,<minecraft:clock>,<divinerpg:shiny_pearls>],[<minecraft:clock>,<contenttweaker:eye_of_the_nightmare>,<minecraft:clock>],[<divinerpg:shiny_pearls>,<minecraft:clock>,<divinerpg:shiny_pearls>]]);
<divinerpg:moon_clock>.addTooltip(format.white("It is NOT advised to use this to fight Lady Luna,"));
<divinerpg:moon_clock>.addTooltip(format.white("unless you're REALLY up for a challenge..."));

print("ENDING DivineRPGVetheaRecipes.zs");
