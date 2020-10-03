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

print("ENDING Erebus.zs");