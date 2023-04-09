# Author: Atricos, WaitingIdly

print("STARTING Quark.zs");

# Iron Rod
recipes.remove(<quark:iron_rod>);
recipes.addShaped(<quark:iron_rod>, [[<immersiveengineering:material:1>],[<minecraft:end_rod>],[<openblocks:block_breaker>]]);

# Pickarang
recipes.remove(<quark:pickarang>);
recipes.addShapedMirrored(<quark:pickarang>, [[<thermalfoundation:material:26>,<ore:plankTreatedWood>,<quark:diamond_heart>],[null,null,<ore:plankTreatedWood>],[null,null,<thermalfoundation:material:26>]]);

# Rusty Iron Plate recipe conflict
recipes.removeShaped(<quark:iron_plate:1> * 24, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:water_bucket>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);

# Tallow: Only the Bewitchment one should be used.
<ore:tallow>.remove(<quark:tallow>);

# Witch Hat
<quark:witch_hat>.addTooltip(format.white("Dropped rarely by Witches."));

# Dragon Scale tooltip & recipe from Mystical Agriculture Essences
<quark:enderdragon_scale>.addTooltip(format.white("Obtained after defeating the Ender Dragon for the second or more time."));
recipes.addShapeless(<quark:enderdragon_scale>, [<divinerpg:kraken_scale>,<mysticalagradditions:stuff:2>]);

# Sandy Bricks with Sand OreDict
recipes.remove(<quark:sandy_bricks>);
recipes.addShapeless(<quark:sandy_bricks>, [<minecraft:brick_block>,<ore:sand>]);

# Quark Wither Ash
recipes.addShapeless(<quark:black_ash> * 8, [<mysticalagradditions:stuff:1>]);

print("ENDING Quark.zs");
