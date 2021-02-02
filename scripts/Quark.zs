# Author: Atricos
print("STARTING Quark.zs");

# Iron Rod
recipes.remove(<quark:iron_rod>);
recipes.addShaped(<quark:iron_rod>, [[<immersiveengineering:material:1>],[<minecraft:end_rod>],[<openblocks:block_breaker>]]);

# Pickarang
recipes.remove(<quark:pickarang>);
recipes.addShapedMirrored(<quark:pickarang>, [[<thermalfoundation:material:26>,<ore:plankTreatedWood>,<quark:diamond_heart>],[null,null,<ore:plankTreatedWood>],[null,null,<thermalfoundation:material:26>]]);

# Rusty Iron Plate recipe conflict
recipes.removeShaped(<quark:iron_plate:1> * 24, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:water_bucket>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);

print("ENDING Quark.zs");