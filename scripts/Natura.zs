# Author: Atricos
print("STARTING Natura.zs");

# Disabling the Nether Furnace since it's already added by Better Nether
recipes.remove(<natura:netherrack_furnace>);

# Removing the various Crafting Table recipes
recipes.remove(<natura:overworld_workbenches:*>);
recipes.remove(<natura:nether_workbenches:*>);

# Blaze Hopper
recipes.remove(<natura:blaze_hopper>);
recipes.addShaped(<natura:blaze_hopper>, [[<ore:rodBlaze>,<ore:rodBlaze>,<ore:rodBlaze>],[<ore:plankTreatedWood>,<minecraft:hopper>,<ore:plankTreatedWood>],[null,<ore:plankTreatedWood>,null]]);

print("ENDING Natura.zs");