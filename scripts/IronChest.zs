# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

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

print("ENDING IronChest.zs");