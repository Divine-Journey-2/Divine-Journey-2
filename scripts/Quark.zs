# Author: Atricos
print("STARTING Quark.zs");

# Iron Rod
recipes.remove(<quark:iron_rod>);
recipes.addShaped(<quark:iron_rod>, [[<immersiveengineering:material:1>],[<minecraft:end_rod>],[<openblocks:block_breaker>]]);

# Pickarang
recipes.remove(<quark:pickarang>);
recipes.addShapedMirrored(<quark:pickarang>, [[<thermalfoundation:material:26>,<ore:plankTreatedWood>,<quark:diamond_heart>],[null,null,<ore:plankTreatedWood>],[null,null,<thermalfoundation:material:26>]]);

print("ENDING Quark.zs");