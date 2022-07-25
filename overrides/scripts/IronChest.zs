# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

print("STARTING IronChest.zs");

function addIronChestRecipe(output as IItemStack, center_input as IIngredient, sourrounding_input as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[sourrounding_input,sourrounding_input,sourrounding_input],[sourrounding_input,center_input,sourrounding_input],[sourrounding_input,sourrounding_input,sourrounding_input]]);
}

# Iron Chest
addIronChestRecipe(<ironchest:iron_chest>, <ore:chestWood>, <thermalfoundation:material:32>);
addIronChestRecipe(<ironchest:iron_chest>, <ironchest:iron_chest:3>, <thermalfoundation:material:32>);

# Gold Chest
addIronChestRecipe(<ironchest:iron_chest:1>, <ironchest:iron_chest>, <thermalfoundation:material:33>);
addIronChestRecipe(<ironchest:iron_chest:1>, <ironchest:iron_chest:4>, <thermalfoundation:material:33>);

# Diamond Chest
addIronChestRecipe(<ironchest:iron_chest:2>, <ironchest:iron_chest:1>, <minecraft:diamond>);

# Copper Chest
addIronChestRecipe(<ironchest:iron_chest:3>, <minecraft:chest>, <thermalfoundation:material:320>);

# Silver Chest
addIronChestRecipe(<ironchest:iron_chest:4>, <ironchest:iron_chest:3>, <thermalfoundation:material:322>);
addIronChestRecipe(<ironchest:iron_chest:4>, <ironchest:iron_chest>, <thermalfoundation:material:322>);

# Wood to Iron Chest Upgrade
addIronChestRecipe(<ironchest:wood_iron_chest_upgrade>, <ore:plankWood>, <thermalfoundation:material:32>);

# Wood to Copper Chest Upgrade
addIronChestRecipe(<ironchest:wood_copper_chest_upgrade>, <ore:plankWood>, <thermalfoundation:material:320>);

# Copper to Silver Chest Upgrade
addIronChestRecipe(<ironchest:copper_silver_chest_upgrade>, <thermalfoundation:material:128>, <thermalfoundation:material:322>);

# Copper to Iron Chest Upgrade
addIronChestRecipe(<ironchest:copper_iron_chest_upgrade>, <thermalfoundation:material:128>, <thermalfoundation:material:32>);

# Iron to Gold Chest Upgrade
addIronChestRecipe(<ironchest:iron_gold_chest_upgrade>, <minecraft:iron_ingot>, <thermalfoundation:material:33>);

# Silver to Gold Chest Upgrade
addIronChestRecipe(<ironchest:silver_gold_chest_upgrade>, <thermalfoundation:material:130>, <thermalfoundation:material:33>);

# Gold to Diamond Chest Upgrade
addIronChestRecipe(<ironchest:gold_diamond_chest_upgrade>, <minecraft:gold_ingot>, <minecraft:diamond>);

# Diamond to Crystal Chest Upgrade
addIronChestRecipe(<ironchest:diamond_crystal_chest_upgrade>, <minecraft:diamond>, <ore:blockGlass>);

# Diamond to Obsidian Chest Upgrade
addIronChestRecipe(<ironchest:diamond_obsidian_chest_upgrade>, <minecraft:diamond>, <minecraft:obsidian>);

# Shulker Box upgrade function
function ironchest_shulkerbox_recipe_tag(input_tag as IData, out as IItemStack, size as int) as IItemStack {
	if(input_tag has "BlockEntityTag") {
		if(input_tag.BlockEntityTag has "Items") {
			return out.withTag({BlockEntityTag: {Items: input_tag.BlockEntityTag.Items, ShulkerBoxSize: size}});
		} else {
			return out;
		}
	} else {
		return out;
	}
}

val shulker_box_names = [<minecraft:white_shulker_box>,<minecraft:orange_shulker_box>,<minecraft:magenta_shulker_box>,<minecraft:light_blue_shulker_box>,<minecraft:yellow_shulker_box>,<minecraft:lime_shulker_box>,<minecraft:pink_shulker_box>,<minecraft:gray_shulker_box>,<minecraft:silver_shulker_box>,<minecraft:cyan_shulker_box>,<minecraft:purple_shulker_box>,<minecraft:blue_shulker_box>,<minecraft:brown_shulker_box>,<minecraft:green_shulker_box>,<minecraft:red_shulker_box>,<minecraft:black_shulker_box>] as IItemStack[];
val iron_shulker_box_names = [<ironchest:iron_shulker_box_white>,<ironchest:iron_shulker_box_orange>,<ironchest:iron_shulker_box_magenta>,<ironchest:iron_shulker_box_light_blue>,<ironchest:iron_shulker_box_yellow>,<ironchest:iron_shulker_box_lime>,<ironchest:iron_shulker_box_pink>,<ironchest:iron_shulker_box_gray>,<ironchest:iron_shulker_box_silver>,<ironchest:iron_shulker_box_cyan>,<ironchest:iron_shulker_box_purple>,<ironchest:iron_shulker_box_blue>,<ironchest:iron_shulker_box_brown>,<ironchest:iron_shulker_box_green>,<ironchest:iron_shulker_box_red>,<ironchest:iron_shulker_box_black>] as IItemStack[];
val num_strings = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"] as string[];

for i in 0 to 16 {

	# Iron Shulker Box
	recipes.remove(iron_shulker_box_names[i]);
	recipes.addShaped("ironchest_iron_shulker_box_" + num_strings[i], iron_shulker_box_names[i], [[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,shulker_box_names[i].marked("box"),<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 54);
	}, null);
	recipes.addShaped("ironchest_iron_shulker_box_from_copper_" + num_strings[i], iron_shulker_box_names[i], [[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,iron_shulker_box_names[i].withDamage(3).marked("box"),<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 54);
	}, null);

	# Gold Shulker Box
	recipes.remove(iron_shulker_box_names[i].withDamage(1));
	recipes.addShaped("ironchest_gold_shulker_box_" + num_strings[i], iron_shulker_box_names[i].withDamage(1), [[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<thermalfoundation:material:33>],[<thermalfoundation:material:33>,iron_shulker_box_names[i].marked("box"),<thermalfoundation:material:33>],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<thermalfoundation:material:33>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 81);
	}, null);
	recipes.addShaped("ironchest_gold_shulker_box_from_silver_" + num_strings[i], iron_shulker_box_names[i].withDamage(1), [[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<thermalfoundation:material:33>],[<thermalfoundation:material:33>,iron_shulker_box_names[i].withDamage(4).marked("box"),<thermalfoundation:material:33>],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<thermalfoundation:material:33>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 81);
	}, null);

	# Diamond Shulker Box
	recipes.remove(iron_shulker_box_names[i].withDamage(2));
	recipes.addShaped("ironchest_diamond_shulker_box_" + num_strings[i], iron_shulker_box_names[i].withDamage(2), [[<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>],[<minecraft:diamond>,iron_shulker_box_names[i].withDamage(1).marked("box"),<minecraft:diamond>],[<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 108);
	}, null);

	# Copper Shulker Box
	recipes.remove(iron_shulker_box_names[i].withDamage(3));
	recipes.addShaped("ironchest_copper_shulker_box_" + num_strings[i], iron_shulker_box_names[i].withDamage(3), [[<thermalfoundation:material:320>,<thermalfoundation:material:320>,<thermalfoundation:material:320>],[<thermalfoundation:material:320>,shulker_box_names[i].marked("box"),<thermalfoundation:material:320>],[<thermalfoundation:material:320>,<thermalfoundation:material:320>,<thermalfoundation:material:320>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 45);
	}, null);

	# Silver Shulker Box
	recipes.remove(iron_shulker_box_names[i].withDamage(4));
	recipes.addShaped("ironchest_silver_shulker_box_" + num_strings[i], iron_shulker_box_names[i].withDamage(4), [[<thermalfoundation:material:322>,<thermalfoundation:material:322>,<thermalfoundation:material:322>],[<thermalfoundation:material:322>,iron_shulker_box_names[i].marked("box"),<thermalfoundation:material:322>],[<thermalfoundation:material:322>,<thermalfoundation:material:322>,<thermalfoundation:material:322>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 72);
	}, null);
	recipes.addShaped("ironchest_silver_shulker_box_from_copper_" + num_strings[i], iron_shulker_box_names[i].withDamage(4), [[<thermalfoundation:material:322>,<thermalfoundation:material:322>,<thermalfoundation:material:322>],[<thermalfoundation:material:322>,iron_shulker_box_names[i].withDamage(3).marked("box"),<thermalfoundation:material:322>],[<thermalfoundation:material:322>,<thermalfoundation:material:322>,<thermalfoundation:material:322>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 72);
	}, null);

	# Obsidian Shulker Box
	recipes.remove(iron_shulker_box_names[i].withDamage(6));
	recipes.addShaped("ironchest_obsidian_shulker_box_" + num_strings[i], iron_shulker_box_names[i].withDamage(6), [[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],[<minecraft:obsidian>,iron_shulker_box_names[i].withDamage(2).marked("box"),<minecraft:obsidian>],[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 108);
	}, null);

	# Crystal Shulker Box
	recipes.remove(iron_shulker_box_names[i].withDamage(5));
	recipes.addShaped("ironchest_crystal_shulker_box_" + num_strings[i], iron_shulker_box_names[i].withDamage(5), [[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],[<ore:blockGlass>,iron_shulker_box_names[i].withDamage(2).marked("box"),<ore:blockGlass>],[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 108);
	}, null);

}

# Vanilla to Iron Shulker Box Upgrade
recipes.remove(<ironchest:vanilla_iron_shulker_upgrade>);
recipes.addShaped(<ironchest:vanilla_iron_shulker_upgrade>, [[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<minecraft:shulker_shell>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>]]);

# Vanilla to Copper Shulker Box Upgrade
recipes.remove(<ironchest:vanilla_copper_shulker_upgrade>);
recipes.addShaped(<ironchest:vanilla_copper_shulker_upgrade>, [[<thermalfoundation:material:320>,<thermalfoundation:material:320>,<thermalfoundation:material:320>],[<thermalfoundation:material:320>,<minecraft:shulker_shell>,<thermalfoundation:material:320>],[<thermalfoundation:material:320>,<thermalfoundation:material:320>,<thermalfoundation:material:320>]]);

# Copper to Silver Shulker Box Upgrade
recipes.remove(<ironchest:copper_silver_shulker_upgrade>);
recipes.addShaped(<ironchest:copper_silver_shulker_upgrade>, [[<thermalfoundation:material:322>,<thermalfoundation:material:128>,<thermalfoundation:material:322>],[<thermalfoundation:material:322>,<thermalfoundation:material:322>,<thermalfoundation:material:322>],[<thermalfoundation:material:322>,<thermalfoundation:material:322>,<thermalfoundation:material:322>]]);

# Copper to Iron Shulker Box Upgrade
recipes.remove(<ironchest:copper_iron_shulker_upgrade>);
recipes.addShaped(<ironchest:copper_iron_shulker_upgrade>, [[<thermalfoundation:material:32>,<thermalfoundation:material:128>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>]]);

# Iron to Gold Shulker Box Upgrade
recipes.remove(<ironchest:iron_gold_shulker_upgrade>);
recipes.addShaped(<ironchest:iron_gold_shulker_upgrade>, [[<thermalfoundation:material:33>,<minecraft:iron_ingot>,<thermalfoundation:material:33>],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<thermalfoundation:material:33>],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<thermalfoundation:material:33>]]);

# Silver to Gold Shulker Box Upgrade
recipes.remove(<ironchest:silver_gold_shulker_upgrade>);
recipes.addShaped(<ironchest:silver_gold_shulker_upgrade>, [[<thermalfoundation:material:33>,<thermalfoundation:material:130>,<thermalfoundation:material:33>],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<thermalfoundation:material:33>],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<thermalfoundation:material:33>]]);

# Gold to Diamond Shulker Box Upgrade
recipes.remove(<ironchest:gold_diamond_shulker_upgrade>);
recipes.addShaped(<ironchest:gold_diamond_shulker_upgrade>, [[<minecraft:diamond>,<minecraft:gold_ingot>,<minecraft:diamond>],[<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>],[<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>]]);

# Diamond to Obsidian Shulker Box Upgrade
recipes.remove(<ironchest:diamond_obsidian_shulker_upgrade>);
recipes.addShaped(<ironchest:diamond_obsidian_shulker_upgrade>, [[<minecraft:obsidian>,<minecraft:diamond>,<minecraft:obsidian>],[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]]);

# Diamond to Crystal Shulker Box Upgrade
recipes.remove(<ironchest:diamond_crystal_shulker_upgrade>);
recipes.addShaped(<ironchest:diamond_crystal_shulker_upgrade>, [[<ore:blockGlass>,<minecraft:diamond>,<ore:blockGlass>],[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>]]);

print("ENDING IronChest.zs");
