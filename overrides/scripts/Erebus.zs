# Author: Atricos

import crafttweaker.item.IItemStack;
import moretweaker.erebus.OfferingAltar;

print("STARTING Erebus.zs");

# Petrified Wood related recipes
recipes.addShaped(<minecraft:stick>, [[<ore:plankPetrified>],[<ore:plankPetrified>]]);
recipes.remove(<erebus:petrified_crafting_table>);
recipes.addShapedMirrored(<erebus:petrified_crafting_table>, [[<minecraft:stone_pickaxe>,<minecraft:stone_axe>],[<ore:plankPetrified>,<ore:plankPetrified>]]);

# Offering Altar
recipes.remove(<erebus:altar_offering>);
recipes.addShaped(<erebus:altar_offering>, [[<ore:slabStoneBricks>,<minecraft:gold_block>,<ore:slabStoneBricks>],[<ore:bricksStone>,<contenttweaker:compressed_obsidian1>,<ore:bricksStone>],[<ore:bricksStone>,<ore:bricksStone>,<ore:bricksStone>]]);

# Gaean Gem
OfferingAltar.removeRecipe(<erebus:materials:38>);
OfferingAltar.addRecipe(<erebus:materials:38>, <contenttweaker:implanted_emerald>, <minecraft:diamond_block>, <contenttweaker:compressed_obsidian1>);

# Staff of Gaea
recipes.remove(<erebus:portal_activator>);
recipes.addShapedMirrored(<erebus:portal_activator>, [[null,<minecraft:vine>,<erebus:materials:38>],[<minecraft:vine>,<lightningcraft:rod:6>,<minecraft:vine>],[<tconstruct:materials:16>,<minecraft:vine>,null]]);

# Gaean Keystone
recipes.remove(<erebus:gaean_keystone>);
recipes.addShaped(<erebus:gaean_keystone>, [[<minecraft:vine>,<contenttweaker:eye_of_gaea_awakened>,<minecraft:vine>],[<contenttweaker:industrial_leather>,<contenttweaker:compressed_obsidian1>,<contenttweaker:industrial_leather>],[<ore:blockOsgloglas>,<ore:bricksStone>,<ore:blockOsgloglas>]]);

# ErebusCo. Smoothie-matic 2000
recipes.remove(<erebus:smoothie_maker>);
recipes.addShaped(<erebus:smoothie_maker>, [[<erebus:materials:59>,<minecraft:bucket>,<erebus:materials:59>],[<erebus:umberstone>,<erebus:planks:8>,<erebus:umberstone>],[<erebus:umberstone>,<erebus:planks:8>,<erebus:umberstone>]]);

# Disabling the Gliders and Beetle Riding Kit (can corrupt your game when taking them off)
val gliders =  [<erebus:glider_chestplate>, <erebus:glider_chestplate_powered>] as IItemStack[];

for g in gliders {
	recipes.remove(g);
	g.addTooltip(format.bold(format.red("WARNING: Can corrupt your world when taking it off. Item disabled.")));
	g.addTooltip(format.italic(format.darkRed("How did you even find me?!")));
}

recipes.remove(<erebus:materials:49>);
<erebus:materials:49>.addTooltip(format.bold(format.red("WARNING: Riding Beetles can crash the game and corrupt your world.")));
<erebus:materials:49>.addTooltip(format.italic(format.darkRed("How did you even find me?!")));

# Wand of Animation
recipes.remove(<erebus:wand_of_animation>);

# Jump Boots
recipes.remove(<erebus:jump_boots>);
recipes.addShaped(<erebus:jump_boots>, [[<erebus:materials:16>,null,<erebus:materials:16>],[<erebus:materials:9>,<erebus:rein_exoskeleton_boots>,<erebus:materials:9>],[<erebus:materials:9>,<tconstruct:slime_boots:*>,<erebus:materials:9>]]);

# Umber Furnace
recipes.remove(<erebus:umber_furnace>);
recipes.addShaped(<erebus:umber_furnace>, [[<erebus:umberstone:1>,<minecraft:bucket>,<erebus:umberstone:1>],[<immersiveengineering:material:1>,allCoalBlocks,<immersiveengineering:material:1>],[<erebus:umberstone:1>,<minecraft:bucket>,<erebus:umberstone:1>]]);

# Gneiss Tooltip
<erebus:gneiss>.addTooltip(format.white("Mining this transforms the block into Lava."));
<erebus:gneiss>.addTooltip(format.white("To obtain, mine it with flowing Water all around,"));
<erebus:gneiss>.addTooltip(format.white("to minimize the chance for the drop to burn."));

# Bio-Velocity Tooltip
<erebus:materials:8>.addTooltip(format.red(format.underline("Dropped by the following mobs:")));
<erebus:materials:8>.addTooltip(format.white("- Solifuges (in the Ulterior Outback biome)"));
<erebus:materials:8>.addTooltip(format.white("- Centipedes (in most biomes)"));

# Supernatural Velocity Tooltip
<erebus:materials:13>.addTooltip(format.red(format.underline("Dropped by the following mobs:")));
<erebus:materials:13>.addTooltip(format.white("- Solifuges (in the Ulterior Outback biome)"));
<erebus:materials:13>.addTooltip(format.white("- Centipedes (in most biomes)"));

# Exoskeleton Plate Tooltip
<erebus:materials>.addTooltip(format.red(format.underline("Dropped by the following mobs:")));
<erebus:materials>.addTooltip(format.white("- Beetles (in Underground Jungles,"));
<erebus:materials>.addTooltip(format.white("           Subterranean Savannahs and Elysian Fields)"));
<erebus:materials>.addTooltip(format.white("- Antlions (in Volcanic Deserts and in Antlion Overlord Pyramids)"));

# Magma Crawler Eye Tooltip
<erebus:materials:60>.addTooltip(format.red(format.underline("Dropped by the following mobs:")));
<erebus:materials:60>.addTooltip(format.white("- Magma Crawlers (in Antlion Overlord Pyramids)"));

# Tarantula Leg Tooltip
<erebus:erebus_food:4>.addTooltip(format.red(format.underline("Dropped by the following mobs:")));
<erebus:erebus_food:4>.addTooltip(format.white("- Tarantulas (in most biomes)"));

# Fly Wing Tooltip
<erebus:materials:6>.addTooltip(format.red(format.underline("Dropped by the following mobs:")));
<erebus:materials:6>.addTooltip(format.white("- Flies (in all biomes)"));
<erebus:materials:6>.addTooltip(format.white("- Botflies (in most biomes)"));

# Dragonfly Wing Tooltip
<erebus:materials:24>.addTooltip(format.red(format.underline("Dropped by the following mobs:")));
<erebus:materials:24>.addTooltip(format.white("- Dragonflies (on Dragonfly Lilypads in"));
<erebus:materials:24>.addTooltip(format.white("large water bodies within Submerged Swamps)"));

# Elastic Fibre Tooltip
<erebus:materials:9>.addTooltip(format.red(format.underline("Dropped by the following mobs:")));
<erebus:materials:9>.addTooltip(format.white("- Locusts (in Elysian Fields and Subterranean Savannahs)"));
<erebus:materials:9>.addTooltip(format.white("- Punchrooms (in Fungal Forests as an uncommon drop)"));

# Cabbage Seeds Tooltip
<erebus:cabbage_seeds>.addTooltip(format.white("Break any tallgrass in Erebus to obtain."));
<erebus:cabbage_seeds>.addTooltip(format.white("Swamp Plants always drop these."));

# Whetstone with Sand OreDict
recipes.remove(<erebus:whetstone>);
recipes.addShaped(<erebus:whetstone>, [[<ore:sand>,<ore:sand>,<ore:sand>],[<erebus:materials:7>,<erebus:materials:7>,<erebus:materials:7>],[<erebus:umberstone>,<erebus:umberstone>,<erebus:umberstone>]]);

# Mushroom uncrafting recipes
recipes.addShapeless(<erebus:dark_capped_mushroom> * 9, [<erebus:dark_capped_mushroom_block>]);
recipes.addShapeless(<erebus:sarcastic_czech_mushroom> * 9, [<erebus:sarcastic_czech_mushroom_block>]);
recipes.addShapeless(<erebus:grandmas_shoes_mushroom> * 9, [<erebus:grandmas_shoes_mushroom_block>]);
recipes.addShapeless(<erebus:dutch_cap_mushroom> * 9, [<erebus:dutch_cap_mushroom_block>]);
recipes.addShapeless(<erebus:kaizers_fingers_mushroom> * 9, [<erebus:kaizers_fingers_mushroom_block>]);

# Wand of Animation
mods.extendedcrafting.TableCrafting.addShaped(<erebus:wand_of_animation>,
[[null, null, null, null, null, null, null, null, <extrautils2:itemdestructionwand>], 
[null, null, null, null, null, null, <astralsorcery:itemilluminationwand>, <extrautils2:itembuilderswand>, null], 
[null, null, null, null, <betterbuilderswands:wandstone>, <betterbuilderswands:wandiron>, <chisel:offsettool>, <enderutilities:icemelter>, null], 
[null, null, null, <contenttweaker:singularity_singularity>, <contenttweaker:singularity_singularity>, <contenttweaker:singularity_singularity>, <betterbuilderswands:wanddiamond>, null, null], 
[null, null, <astralsorcery:itemwand>, <contenttweaker:singularity_singularity>, <thermalfoundation:upgrade:256>, <contenttweaker:singularity_singularity>, <betterbuilderswands:wandunbreakable>, null, null], 
[null, null, <astralsorcery:itemwand>, <contenttweaker:singularity_singularity>, <contenttweaker:singularity_singularity>, <contenttweaker:singularity_singularity>, null, null, null], 
[null, <astralsorcery:itemarchitectwand>, <astralsorcery:itemwand>, <astralsorcery:itemwand>, <astralsorcery:itemwand>, null, null, null, null], 
[<enderutilities:builderswand>, <astralsorcery:itemexchangewand>, <astralsorcery:itemgrapplewand>, null, null, null, null, null, null], 
[<bewitchment:leonards_wand>, <botania:twigwand>, null, null, null, null, null, null, null]]);

print("ENDING Erebus.zs");