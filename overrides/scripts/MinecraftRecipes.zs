# Author: Atricos

import mods.thermalexpansion.InductionSmelter;
import mods.enderio.AlloySmelter;
import moretweaker.lightningcraft.LightningCrusher;
import mods.actuallyadditions.Crusher as AACrusher;
import mods.thermalexpansion.Pulverizer;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.extrautils2.Crusher as EUCrusher;
import mods.enderio.SagMill;
import crafttweaker.item.WeightedItemStack;
import moretweaker.bewitchment.Distillery;

print("STARTING MinecraftRecipes.zs");

# Crafting Table and related recipes
recipes.remove(<minecraft:crafting_table>);
recipes.addShapeless(<minecraft:crafting_table> * 9, [<avaritia:compressed_crafting_table>]);
recipes.addShapedMirrored(<minecraft:crafting_table>, [[<minecraft:stone_pickaxe>,<minecraft:stone_axe>],[<contenttweaker:crafting_base>,<contenttweaker:crafting_base>]]);
recipes.addShaped(<minecraft:stone_pickaxe>, [[null,<contenttweaker:stone_pickaxe_head>],[<contenttweaker:tool_rod>,null]]);
recipes.addShaped(<minecraft:stone_axe>, [[null,<contenttweaker:stone_axe_head>],[<contenttweaker:tool_rod>,null]]);
recipes.addShaped(<minecraft:wooden_pickaxe>, [[null,<contenttweaker:wooden_pickaxe_head>],[<contenttweaker:tool_rod>,null]]);
recipes.addShaped(<minecraft:wooden_axe>, [[null,<contenttweaker:wooden_axe_head>],[<contenttweaker:tool_rod>,null]]);
recipes.addShaped(<contenttweaker:stone_pickaxe_head>, [[<ore:cobblestone>,<ore:cobblestone>],[null,<ore:cobblestone>]]);
recipes.addShaped(<contenttweaker:stone_pickaxe_head>, [[<ore:stone>,<ore:stone>],[null,<ore:stone>]]);
recipes.addShaped(<contenttweaker:stone_axe_head>, [[<ore:cobblestone>,<ore:cobblestone>],[<ore:cobblestone>,null]]);
recipes.addShaped(<contenttweaker:stone_axe_head>, [[<ore:stone>,<ore:stone>],[<ore:stone>,null]]);
recipes.addShaped(<contenttweaker:wooden_pickaxe_head>, [[<ore:plankWood>,<ore:plankWood>],[null,<ore:plankWood>]]);
recipes.addShaped(<contenttweaker:wooden_axe_head>, [[<ore:plankWood>,<ore:plankWood>],[<ore:plankWood>,null]]);
recipes.addShaped(<contenttweaker:tool_rod>, [[<ore:stickWood>],[<ore:stickWood>]]);
recipes.addShaped(<contenttweaker:crafting_base>, [[<ore:plankWood>,<ore:plankWood>],[<ore:logWood>,<ore:logWood>]]);

# Furnace and related recipes
recipes.addShapeless(<contenttweaker:rough_iron_mesh>, [<contenttweaker:rough_hammer>.anyDamage().transformDamage(1), <ore:oreIron>, <ore:oreIron>]);
recipes.addShapeless(<contenttweaker:burning_essence>, [<ore:dyeYellow>, <minecraft:coal>.anyDamage()]);
recipes.addShaped(<contenttweaker:rough_hammer>, [[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],[null,<ore:stickWood>,null]]);
recipes.remove(<minecraft:furnace>);
<ore:slabCobblestone>.addItems([<undergroundbiomes:igneous_cobble_halfslab:*>,<undergroundbiomes:metamorphic_cobble_halfslab:*>,<undergroundbiomes:sedimentary_stone_halfslab:*>]);
recipes.addShaped(<minecraft:furnace>, [[<ore:compressed1xCobblestone>,<ore:slabCobblestone>,<ore:compressed1xCobblestone>],[<immersiveengineering:material:1>,<ore:blockCoal>,<immersiveengineering:material:1>],[<ore:compressed1xCobblestone>,<ore:slabCobblestone>,<ore:compressed1xCobblestone>]]);

# Stone Slab
recipes.remove(<minecraft:stone_slab>);
recipes.addShaped(<minecraft:stone_slab> * 6, [[<ore:stone>,<ore:stone>,<ore:stone>]]);

# Chests (check other Chests too)
recipes.remove(<minecraft:chest>); # Add Mini Chest -> Chest conversion
recipes.addShaped(<minecraft:chest>, [[<ore:logWood>,<ore:plankWood>,<ore:logWood>],[<ore:plankWood>,<ore:nuggetIron>,<ore:plankWood>],[<ore:logWood>,<ore:plankWood>,<ore:logWood>]]);
recipes.addShaped(<minecraft:chest>, [[<extrautils2:minichest>,<extrautils2:minichest>,<extrautils2:minichest>],[<extrautils2:minichest>,<extrautils2:minichest>,<extrautils2:minichest>],[<extrautils2:minichest>,<extrautils2:minichest>,<extrautils2:minichest>]]);

# Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [[<thermalfoundation:material:32>,null,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<ore:chestWood>,<thermalfoundation:material:32>],[null,<thermalfoundation:material:32>,null]]);

# Flint and STEEL
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:ingotSteel>,<minecraft:flint>]);

# Eye of Ender
recipes.remove(<minecraft:ender_eye>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:ender_eye>, <minecraft:ender_pearl>, <minecraft:blaze_powder>, 6000);
mods.enderio.AlloySmelter.addRecipe(<minecraft:ender_eye>, [<minecraft:ender_pearl>, <minecraft:blaze_powder>], 6000);
LightningCrusher.remove(<minecraft:ender_eye>);

# Beds
recipes.remove(<minecraft:bed:*>);
recipes.addShaped(<minecraft:bed:0>, [[<totemic:buffalo_items:0>,<ore:woolWhite>,<ore:woolWhite>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:1>, [[<totemic:buffalo_items:0>,<ore:woolOrange>,<ore:woolOrange>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:2>, [[<totemic:buffalo_items:0>,<ore:woolMagenta>,<ore:woolMagenta>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:3>, [[<totemic:buffalo_items:0>,<ore:woolLightBlue>,<ore:woolLightBlue>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:4>, [[<totemic:buffalo_items:0>,<ore:woolYellow>,<ore:woolYellow>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:5>, [[<totemic:buffalo_items:0>,<ore:woolLime>,<ore:woolLime>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:6>, [[<totemic:buffalo_items:0>,<ore:woolPink>,<ore:woolPink>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:7>, [[<totemic:buffalo_items:0>,<ore:woolGray>,<ore:woolGray>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:8>, [[<totemic:buffalo_items:0>,<ore:woolLightGray>,<ore:woolLightGray>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:9>, [[<totemic:buffalo_items:0>,<ore:woolCyan>,<ore:woolCyan>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:10>, [[<totemic:buffalo_items:0>,<ore:woolPurple>,<ore:woolPurple>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:11>, [[<totemic:buffalo_items:0>,<ore:woolBlue>,<ore:woolBlue>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:12>, [[<totemic:buffalo_items:0>,<ore:woolBrown>,<ore:woolBrown>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:13>, [[<totemic:buffalo_items:0>,<ore:woolGreen>,<ore:woolGreen>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:14>, [[<totemic:buffalo_items:0>,<ore:woolRed>,<ore:woolRed>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped(<minecraft:bed:15>, [[<totemic:buffalo_items:0>,<ore:woolBlack>,<ore:woolBlack>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);

# Piston
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],[<minecraft:redstone>,<immersiveengineering:material:1>,<minecraft:redstone>],[<ore:stone>,<thermalfoundation:material:32>,<ore:stone>]]);

# Dropper, Dispenser
recipes.remove(<minecraft:dropper>);
recipes.addShaped(<minecraft:dropper>, [[<ore:stone>,<ore:stone>,<ore:stone>],[<ore:stone>,<thermalfoundation:material:24>,<ore:stone>],[<ore:stone>,<minecraft:redstone>,<ore:stone>]]);
recipes.remove(<minecraft:dispenser>);
recipes.addShapeless(<minecraft:dispenser>, [<minecraft:dropper>,<minecraft:bow:0>]);
recipes.addShaped(<minecraft:dispenser>, [[null,<ore:stickWood>,<ore:string>],[<ore:stickWood>,<minecraft:dropper>,<ore:string>],[null,<ore:stickWood>,<ore:string>]]);

# Observer
recipes.remove(<minecraft:observer>);
recipes.addShaped(<minecraft:observer>, [[<ore:stone>,<ore:stone>,<ore:stone>],[<minecraft:quartz>,<ore:blockRedstone>,<thermalfoundation:material:32>],[<ore:stone>,<ore:stone>,<ore:stone>]]);

# Bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[<thermalfoundation:material:32>,null,<thermalfoundation:material:32>],[null,<thermalfoundation:material:32>,null]]);

# Saddle
recipes.remove(<minecraft:saddle>);
recipes.addShaped(<minecraft:saddle>, [[<minecraft:leather>,<minecraft:leather>,<minecraft:leather>],[<minecraft:leather>,<minecraft:lead>,<minecraft:leather>],[<minecraft:iron_ingot>,null,<minecraft:iron_ingot>]]);

# Boats
recipes.remove(<minecraft:boat>);
recipes.addShaped(<minecraft:boat>, [[<minecraft:planks:0>,null,<minecraft:planks:0>],[<minecraft:planks:0>,<minecraft:wooden_shovel:0>,<minecraft:planks:0>],[<minecraft:planks:0>,<minecraft:planks:0>,<minecraft:planks:0>]]);
recipes.remove(<minecraft:spruce_boat>);
recipes.addShaped(<minecraft:spruce_boat>, [[<minecraft:planks:1>,null,<minecraft:planks:1>],[<minecraft:planks:1>,<minecraft:wooden_shovel:0>,<minecraft:planks:1>],[<minecraft:planks:1>,<minecraft:planks:1>,<minecraft:planks:1>]]);
recipes.remove(<minecraft:birch_boat>);
recipes.addShaped(<minecraft:birch_boat>, [[<minecraft:planks:2>,null,<minecraft:planks:2>],[<minecraft:planks:2>,<minecraft:wooden_shovel:0>,<minecraft:planks:2>],[<minecraft:planks:2>,<minecraft:planks:2>,<minecraft:planks:2>]]);
recipes.remove(<minecraft:jungle_boat>);
recipes.addShaped(<minecraft:jungle_boat>, [[<minecraft:planks:3>,null,<minecraft:planks:3>],[<minecraft:planks:3>,<minecraft:wooden_shovel:0>,<minecraft:planks:3>],[<minecraft:planks:3>,<minecraft:planks:3>,<minecraft:planks:3>]]);
recipes.remove(<minecraft:acacia_boat>);
recipes.addShaped(<minecraft:acacia_boat>, [[<minecraft:planks:4>,null,<minecraft:planks:4>],[<minecraft:planks:4>,<minecraft:wooden_shovel:0>,<minecraft:planks:4>],[<minecraft:planks:4>,<minecraft:planks:4>,<minecraft:planks:4>]]);
recipes.remove(<minecraft:dark_oak_boat>);
recipes.addShaped(<minecraft:dark_oak_boat>, [[<minecraft:planks:5>,null,<minecraft:planks:5>],[<minecraft:planks:5>,<minecraft:wooden_shovel:0>,<minecraft:planks:5>],[<minecraft:planks:5>,<minecraft:planks:5>,<minecraft:planks:5>]]);
recipes.addShaped(<minecraft:boat>, [[<ore:plankWood>,null,<ore:plankWood>],[<ore:plankWood>,<minecraft:wooden_shovel:0>,<ore:plankWood>],[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
<minecraft:spruce_boat>.maxStackSize = 16;
<minecraft:birch_boat>.maxStackSize = 16;
<minecraft:jungle_boat>.maxStackSize = 16;
<minecraft:acacia_boat>.maxStackSize = 16;
<minecraft:dark_oak_boat>.maxStackSize = 16;

# Cauldron
recipes.remove(<minecraft:cauldron>);
recipes.addShaped(<minecraft:cauldron>, [[<thermalfoundation:material:32>,null,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,null,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>]]);

# End Crystal
recipes.remove(<minecraft:end_crystal>);
recipes.addShaped(<minecraft:end_crystal>, [[<ore:paneGlassColorless>,<divinerpg:ghast_pumpkin>,<ore:paneGlassColorless>],[<ore:paneGlassColorless>,<minecraft:nether_star>,<ore:paneGlassColorless>],[<ore:paneGlassColorless>,<draconicevolution:draconium_block>,<ore:paneGlassColorless>]]);

# Enchantment Table
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped(<minecraft:enchanting_table>, [[null,<minecraft:book>,null],[<avaritia:resource:0>,<contenttweaker:compressed_obsidian1>,<avaritia:resource:0>],[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>]]);

# TNT
recipes.remove(<minecraft:tnt>);
recipes.addShaped(<minecraft:tnt>, [[null,<minecraft:fire_charge>,null],[<minecraft:redstone>,<immersiveengineering:wooden_device0:4>,<minecraft:redstone>],[null,<minecraft:redstone>,null]]);

# Beacon
recipes.remove(<minecraft:beacon>);
recipes.addShaped(<minecraft:beacon>, [[<ore:blockGlassColorless>,<minecraft:nether_star>,<ore:blockGlassColorless>],[<ore:blockGlassColorless>,<botania:storage:3>,<ore:blockGlassColorless>],[<contenttweaker:compressed_obsidian1>,<atum:radiant_beacon>,<contenttweaker:compressed_obsidian1>]]);
recipes.addShaped(<minecraft:beacon>, [[<ore:blockGlassColorless>,<minecraft:nether_star>,<ore:blockGlassColorless>],[<ore:blockGlassColorless>,<botania:storage:3>,<ore:blockGlassColorless>],[<contenttweaker:compressed_obsidian1>,<enderio:block_alloy_endergy:3>,<contenttweaker:compressed_obsidian1>]]);

# Enchanted Golden Apple
recipes.remove(<minecraft:golden_apple:1>);
recipes.addShaped(<minecraft:golden_apple:1>, [[<ore:blockGold>,<ore:blockGold>,<ore:blockGold>],[<ore:blockGold>,<extrautils2:magicapple>,<ore:blockGold>],[<ore:blockGold>,<ore:blockGold>,<ore:blockGold>]]);

# Paper
recipes.remove(<minecraft:paper>);
recipes.addShaped(<minecraft:paper>, [[<ore:sugarcane>,<ore:sugarcane>,<ore:sugarcane>]]);
recipes.addShaped(<minecraft:paper>, [[<roots:wildroot>,<roots:wildroot>,<roots:wildroot>]]);
recipes.addShaped(<minecraft:paper>, [[<betternether:nether_reed>,<betternether:nether_reed>,<betternether:nether_reed>]]);

#Shears
recipes.remove(<minecraft:shears>);
recipes.addShaped(<minecraft:shears>, [[null,<minecraft:iron_ingot>,null],[<ore:plankWood>,<minecraft:string>,<minecraft:iron_ingot>],[<immersiveengineering:material:1>,<ore:plankWood>,null]]);

# Lead
recipes.remove(<minecraft:lead>);
recipes.addShaped(<minecraft:lead>, [[<ore:string>,<ore:string>,null],[<ore:string>,<ore:slimeball>,null],[null,null,<ore:string>]]);
recipes.addShaped(<minecraft:lead>, [[<ore:string>,<ore:string>,null],[<ore:string>,<thermalfoundation:material:832>,null],[null,null,<ore:string>]]);
recipes.addShaped(<minecraft:lead>, [[<ore:string>,<ore:string>,null],[<ore:string>,<thermalfoundation:material:833>,null],[null,null,<ore:string>]]);

# Brewing Stand
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped(<minecraft:brewing_stand>, [[null,<immersiveengineering:material:2>,null],[<immersiveengineering:material:2>,<botania:blazeblock>,<immersiveengineering:material:2>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# Ender Chest
recipes.remove(<minecraft:ender_chest>);
recipes.addShaped(<minecraft:ender_chest>, [[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:compressed_obsidian1>,<minecraft:ender_eye>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>]]);

# Removing Gunpowder recipes added by Mekanism
recipes.remove(<minecraft:gunpowder>);
recipes.addShaped(<minecraft:gunpowder> * 6, [[<mysticalagriculture:creeper_essence>,<mysticalagriculture:creeper_essence>,<mysticalagriculture:creeper_essence>]]);
mods.mekanism.enrichment.removeRecipe(<mekanism:otherdust:3>);
mods.mekanism.enrichment.removeRecipe(<natura:materials:4>);
mods.mekanism.enrichment.removeRecipe(<abyssalcraft:nitre>);
mods.mekanism.enrichment.removeRecipe(<abyssalcraft:sulfur>);
mods.mekanism.enrichment.removeRecipe(<thermalfoundation:material:771>);
mods.mekanism.enrichment.removeRecipe(<thermalfoundation:material:772>);
mods.mekanism.enrichment.removeRecipe(<immersiveengineering:material:24>);
mods.mekanism.enrichment.removeRecipe(<immersiveengineering:material:25>);
mods.mekanism.crusher.removeRecipe(<minecraft:gunpowder>);

# Dragon's Breath
<minecraft:dragon_breath>.addTooltip(format.white("If you're having trouble collecting this item because of Botania's"));
<minecraft:dragon_breath>.addTooltip(format.gray("Ender Air Bottles") + format.white(", try the following: Do ") + format.red("NOT") + format.white(" Right Click on blocks,"));
<minecraft:dragon_breath>.addTooltip(format.white("instead, angle your clicks so you only reach the purple ") + format.lightPurple("Dragon's"));
<minecraft:dragon_breath>.addTooltip(format.lightPurple("Breath particles") + format.white(", and ") + format.red("NOT") + format.white(" the blocks below."));
recipes.addShaped(<minecraft:dragon_breath>, [[<mysticalagradditions:dragon_egg_essence>,<mysticalagradditions:dragon_egg_essence>,<mysticalagradditions:dragon_egg_essence>],[<mysticalagradditions:dragon_egg_essence>,<minecraft:glass_bottle>,<mysticalagradditions:dragon_egg_essence>],[<mysticalagradditions:dragon_egg_essence>,<mysticalagradditions:dragon_egg_essence>,<mysticalagradditions:dragon_egg_essence>]]);

# Additional Wither Skeleton Skull recipe
recipes.addShaped(<minecraft:skull:1>, [[<quark:black_ash>,<quark:black_ash>,<quark:black_ash>],[<quark:black_ash>,<minecraft:skull>,<quark:black_ash>],[<quark:black_ash>,<quark:black_ash>,<quark:black_ash>]]);
recipes.removeShapeless(<minecraft:skull:1> * 3, [<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>]);

# Hay Bale needs to be Pulverized to be converted back into Wheat
recipes.removeShaped(<minecraft:wheat> * 9, [[<minecraft:hay_block>]]);
# Crushing recipes in OreProcessingAdditions.zs

# Snowball, Enderpearl, Egg max stack size
<minecraft:snowball>.maxStackSize = 64;
<minecraft:ender_pearl>.maxStackSize = 64;
<minecraft:egg>.maxStackSize = 64;

# Iron Horse Armor
AACrusher.removeRecipe(<thermalfoundation:material>);
AACrusher.addRecipe(<thermalfoundation:material>, <minecraft:iron_ingot>);
AACrusher.addRecipe(<thermalfoundation:material> * 4, <bno:ore_netheriron>);
for iron_ore in <ore:oreIron>.items {
	AACrusher.addRecipe(<thermalfoundation:material> * 2, iron_ore, <thermalfoundation:material:1>, 20);
}
AACrusher.addRecipe(<thermalfoundation:material> * 4, <minecraft:iron_horse_armor>);
IECrusher.addRecipe(<thermalfoundation:material> * 4, <minecraft:iron_horse_armor>, 6000);
EUCrusher.add(<thermalfoundation:material> * 4, <minecraft:iron_horse_armor>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material> * 4], [100], <minecraft:iron_horse_armor>, "NONE", 6000);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material> * 4, <minecraft:iron_horse_armor>, 6000);

# Gold Horse Armor
AACrusher.removeRecipe(<thermalfoundation:material:1>);
AACrusher.addRecipe(<thermalfoundation:material:1>, <minecraft:gold_ingot>);
AACrusher.addRecipe(<thermalfoundation:material:1> * 4, <bno:ore_nethergold>);
for gold_ore in <ore:oreGold>.items {
	AACrusher.addRecipe(<thermalfoundation:material:1> * 2, gold_ore);
}
AACrusher.addRecipe(<thermalfoundation:material:1> * 4, <minecraft:golden_horse_armor>);
IECrusher.addRecipe(<thermalfoundation:material:1> * 4, <minecraft:golden_horse_armor>, 6000);
EUCrusher.add(<thermalfoundation:material:1> * 4, <minecraft:golden_horse_armor>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:1> * 4], [100], <minecraft:golden_horse_armor>, "NONE", 6000);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:1> * 4, <minecraft:golden_horse_armor>, 6000);

# Lilipad
<minecraft:waterlily>.addTooltip(format.white(format.italic("A Resources Fisher can occasionally fish this up.")));

# Beetroot as Seed drop
vanilla.seeds.addSeed(<minecraft:beetroot_seeds> % 1);

# Spawn Villager
Distillery.addRecipe([<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:villager"}})], [<minecraft:egg>,<bewitchment:heaven_extract>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "humanus"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "cognitio"}]})]);

# Firework Star (basic)
recipes.addShapeless(<minecraft:firework_charge>, [<minecraft:fire_charge>,<minecraft:gunpowder>]);

# Firework (basic)
recipes.addShapeless(<minecraft:fireworks>, [<minecraft:firework_charge>,<minecraft:paper>,<immersiveengineering:material:4>]);

# OreDict cleanup
<ore:paper>.remove(<atum:scroll>);
<ore:sugarcane>.remove(<betternether:nether_reed>);
<ore:string>.removeItems([<atum:linen_thread>,<mysticalworld:silk_thread>]);
<ore:chestWood>.removeItems([<atum:palm_crate>,<atum:deadwood_crate>]);
<ore:rodBlaze>.remove(<atum:efreet_heart>);

# Stone Tools with Stone, not just Cobblestone
recipes.addShaped(<minecraft:stone_sword>, [[<ore:stone>],[<ore:stone>],[<ore:stickWood>]]);
recipes.addShaped(<minecraft:stone_pickaxe>, [[<ore:stone>,<ore:stone>,<ore:stone>],[null,<ore:stickWood>,null],[null,<ore:stickWood>,null]]);
recipes.addShaped(<minecraft:stone_shovel>, [[<ore:stone>],[<ore:stickWood>],[<ore:stickWood>]]);
recipes.addShapedMirrored(<minecraft:stone_axe>, [[<ore:stone>,<ore:stone>],[<ore:stone>,<ore:stickWood>],[null,<ore:stickWood>]]);
recipes.addShapedMirrored(<minecraft:stone_hoe>, [[<ore:stone>,<ore:stone>],[null,<ore:stickWood>],[null,<ore:stickWood>]]);

# Book
recipes.remove(<minecraft:book>);
recipes.addShapeless(<minecraft:book>, [<minecraft:paper>,<minecraft:paper>,<minecraft:paper>,<minecraft:leather>]);
recipes.addShapeless(<minecraft:book>, [<minecraft:paper>,<minecraft:paper>,<minecraft:paper>,<minecraft:string>,<tconstruct:pattern>,<tconstruct:pattern>]);

# Seeds from Wheat
recipes.addShapeless(<minecraft:wheat_seeds>, [<minecraft:wheat>]);

# Quark Bookshelves -> vanilla Bookshelf
recipes.addShapeless(<minecraft:bookshelf>, [<quark:custom_bookshelf:*>]);

print("ENDING MinecraftRecipes.zs");
