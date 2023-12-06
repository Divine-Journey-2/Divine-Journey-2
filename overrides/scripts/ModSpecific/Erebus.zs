// Author: Atricos

import crafttweaker.item.IItemStack;
import moretweaker.erebus.OfferingAltar;

print("STARTING Erebus.zs");

// Petrified Wood related recipes
recipes.addShaped(<minecraft:stick>, [[<ore:plankPetrified>],[<ore:plankPetrified>]]);
recipes.remove(<erebus:petrified_crafting_table>);
recipes.addShapedMirrored(<erebus:petrified_crafting_table>, [[<minecraft:stone_pickaxe>,<minecraft:stone_axe>],[<ore:plankPetrified>,<ore:plankPetrified>]]);

// Offering Altar
recipes.remove(<erebus:altar_offering>);
recipes.addShaped(<erebus:altar_offering>, [[<ore:slabStoneBricks>,<minecraft:gold_block>,<ore:slabStoneBricks>],[<ore:bricksStone>,<contenttweaker:compressed_obsidian1>,<ore:bricksStone>],[<ore:bricksStone>,<ore:bricksStone>,<ore:bricksStone>]]);

// Gaean Gem
OfferingAltar.removeRecipe(<erebus:materials:38>);
OfferingAltar.addRecipe(<erebus:materials:38>, <contenttweaker:implanted_emerald>, <minecraft:diamond_block>, <contenttweaker:compressed_obsidian1>);

// Staff of Gaea
recipes.remove(<erebus:portal_activator>);
recipes.addShapedMirrored(<erebus:portal_activator>, [[null,<minecraft:vine>,<erebus:materials:38>],[<minecraft:vine>,<lightningcraft:rod:6>,<minecraft:vine>],[<tconstruct:materials:16>,<minecraft:vine>,null]]);

// Gaean Keystone
recipes.remove(<erebus:gaean_keystone>);
recipes.addShaped(<erebus:gaean_keystone>, [[<minecraft:vine>,<contenttweaker:eye_of_gaea_awakened>,<minecraft:vine>],[<contenttweaker:industrial_leather>,<contenttweaker:compressed_obsidian1>,<contenttweaker:industrial_leather>],[<ore:blockOsgloglas>,<ore:bricksStone>,<ore:blockOsgloglas>]]);

// ErebusCo. Smoothie-matic 2000
recipes.remove(<erebus:smoothie_maker>);
recipes.addShaped(<erebus:smoothie_maker>, [[<erebus:materials:59>,<minecraft:bucket>,<erebus:materials:59>],[<erebus:umberstone>,<erebus:planks:8>,<erebus:umberstone>],[<erebus:umberstone>,<erebus:planks:8>,<erebus:umberstone>]]);

// Disabling the Gliders and Beetle Riding Kit (can corrupt your game when taking them off)
val gliders =  [<erebus:glider_chestplate>, <erebus:glider_chestplate_powered>] as IItemStack[];

for g in gliders {
    recipes.remove(g);
    g.addTooltip(game.localize("dj2.erebus_glider.desc0"));
    g.addTooltip(game.localize("dj2.erebus_glider.desc1"));
}

recipes.remove(<erebus:materials:49>);
<erebus:materials:49>.addTooltip(game.localize("dj2.riding_beetles.desc0"));
<erebus:materials:49>.addTooltip(game.localize("dj2.riding_beetles.desc1"));

// Wand of Animation
recipes.remove(<erebus:wand_of_animation>);

// Jump Boots
recipes.remove(<erebus:jump_boots>);
recipes.addShaped(<erebus:jump_boots>, [[<erebus:materials:16>,null,<erebus:materials:16>],[<erebus:materials:9>,<erebus:rein_exoskeleton_boots>,<erebus:materials:9>],[<erebus:materials:9>,<tconstruct:slime_boots:*>,<erebus:materials:9>]]);

// Umber Furnace
recipes.remove(<erebus:umber_furnace>);
recipes.addShaped(<erebus:umber_furnace>, [[<erebus:umberstone:1>,<minecraft:bucket>,<erebus:umberstone:1>],[<immersiveengineering:material:1>,allCoalBlocks,<immersiveengineering:material:1>],[<erebus:umberstone:1>,<minecraft:bucket>,<erebus:umberstone:1>]]);

// Gneiss Tooltip
<erebus:gneiss>.addTooltip(game.localize("dj2.gneiss.desc0"));
<erebus:gneiss>.addTooltip(game.localize("dj2.gneiss.desc1"));
<erebus:gneiss>.addTooltip(game.localize("dj2.gneiss.desc2"));

// Bio-Velocity Tooltip
<erebus:materials:8>.addTooltip(game.localize("dj2.erebus_drops.desc0"));
<erebus:materials:8>.addTooltip(game.localize("dj2.bio_velocity.desc0"));
<erebus:materials:8>.addTooltip(game.localize("dj2.bio_velocity.desc1"));

// Supernatural Velocity Tooltip
<erebus:materials:13>.addTooltip(game.localize("dj2.erebus_drops.desc0"));
<erebus:materials:13>.addTooltip(game.localize("dj2.supernatural_velocity.desc0"));
<erebus:materials:13>.addTooltip(game.localize("dj2.supernatural_velocity.desc1"));

// Exoskeleton Plate Tooltip
<erebus:materials>.addTooltip(game.localize("dj2.erebus_drops.desc0"));
<erebus:materials>.addTooltip(game.localize("dj2.exoskeleton_plate.desc0"));
<erebus:materials>.addTooltip(game.localize("dj2.exoskeleton_plate.desc1"));
<erebus:materials>.addTooltip(game.localize("dj2.exoskeleton_plate.desc2"));

// Magma Crawler Eye Tooltip
<erebus:materials:60>.addTooltip(game.localize("dj2.erebus_drops.desc0"));
<erebus:materials:60>.addTooltip(game.localize("dj2.magma_crawler_eye.desc0"));

// Tarantula Leg Tooltip
<erebus:erebus_food:4>.addTooltip(game.localize("dj2.erebus_drops.desc0"));
<erebus:erebus_food:4>.addTooltip(game.localize("dj2.tarantula_leg.desc0"));

// Fly Wing Tooltip
<erebus:materials:6>.addTooltip(game.localize("dj2.erebus_drops.desc0"));
<erebus:materials:6>.addTooltip(game.localize("dj2.fly_wing.desc0"));
<erebus:materials:6>.addTooltip(game.localize("dj2.fly_wing.desc1"));

// Dragonfly Wing Tooltip
<erebus:materials:24>.addTooltip(game.localize("dj2.erebus_drops.desc0"));
<erebus:materials:24>.addTooltip(game.localize("dj2.dragonfly_wing.desc0"));
<erebus:materials:24>.addTooltip(game.localize("dj2.dragonfly_wing.desc1"));

// Elastic Fibre Tooltip
<erebus:materials:9>.addTooltip(game.localize("dj2.erebus_drops.desc0"));
<erebus:materials:9>.addTooltip(game.localize("dj2.elastic_fibre.desc0"));
<erebus:materials:9>.addTooltip(game.localize("dj2.elastic_fibre.desc1"));

// Cabbage Seeds Tooltip
<erebus:cabbage_seeds>.addTooltip(game.localize("dj2.cabbage_seeds.desc0"));
<erebus:cabbage_seeds>.addTooltip(game.localize("dj2.cabbage_seeds.desc1"));

// Whetstone with Sand OreDict
recipes.remove(<erebus:whetstone>);
recipes.addShaped(<erebus:whetstone>, [[<ore:sand>,<ore:sand>,<ore:sand>],[<erebus:materials:7>,<erebus:materials:7>,<erebus:materials:7>],[<erebus:umberstone>,<erebus:umberstone>,<erebus:umberstone>]]);

// Mushroom uncrafting recipes
recipes.addShapeless(<erebus:dark_capped_mushroom> * 9, [<erebus:dark_capped_mushroom_block>]);
recipes.addShapeless(<erebus:sarcastic_czech_mushroom> * 9, [<erebus:sarcastic_czech_mushroom_block>]);
recipes.addShapeless(<erebus:grandmas_shoes_mushroom> * 9, [<erebus:grandmas_shoes_mushroom_block>]);
recipes.addShapeless(<erebus:dutch_cap_mushroom> * 9, [<erebus:dutch_cap_mushroom_block>]);
recipes.addShapeless(<erebus:kaizers_fingers_mushroom> * 9, [<erebus:kaizers_fingers_mushroom_block>]);

// Wand of Animation
mods.extendedcrafting.TableCrafting.addShaped(<erebus:wand_of_animation>,
[[null, null, null, null, null, null, null, null, <extrautils2:itemdestructionwand>],
[null, null, null, null, null, null, <astralsorcery:itemilluminationwand>, <extrautils2:itembuilderswand>, null],
[null, null, null, null, <betterbuilderswands:wandstone>, <betterbuilderswands:wandiron>, <chisel:offsettool>, <enderutilities:icemelter>, null],
[null, null, null, <contenttweaker:singularity_singularity>, <contenttweaker:singularity_singularity>, <contenttweaker:singularity_singularity>, <betterbuilderswands:wanddiamond>, null, null],
[null, null, <astralsorcery:itemwand>, <contenttweaker:singularity_singularity>, <thermalfoundation:upgrade:256>, <contenttweaker:singularity_singularity>, <betterbuilderswands:wandunbreakable:12>, null, null],
[null, null, <astralsorcery:itemwand>, <contenttweaker:singularity_singularity>, <contenttweaker:singularity_singularity>, <contenttweaker:singularity_singularity>, null, null, null],
[null, <astralsorcery:itemarchitectwand>, <astralsorcery:itemwand>, <astralsorcery:itemwand>, <astralsorcery:itemwand>, null, null, null, null],
[<enderutilities:builderswand>, <astralsorcery:itemexchangewand>, <astralsorcery:itemgrapplewand>, null, null, null, null, null, null],
[<bewitchment:leonards_wand>, <botania:twigwand>, null, null, null, null, null, null, null]]);

print("ENDING Erebus.zs");
