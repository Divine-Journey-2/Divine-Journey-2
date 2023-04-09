# Author: Atricos

print("STARTING BetterNether.zs");

# Netherrack Furnace
recipes.remove(<betternether:netherrack_furnace>);
recipes.addShaped(<betternether:netherrack_furnace>, [[<extrautils2:compressednetherrack>,<minecraft:netherrack>,<extrautils2:compressednetherrack>],[<immersiveengineering:material:1>,<ore:blockCoal>,<immersiveengineering:material:1>],[<extrautils2:compressednetherrack>,<minecraft:netherrack>,<extrautils2:compressednetherrack>]]);

# Cincinnasite Item & Block
recipes.remove(<betternether:cincinnasite_block>);
recipes.addShaped(<betternether:cincinnasite_block>, [[<betternether:cincinnasite>,<betternether:cincinnasite>,<betternether:cincinnasite>],[<betternether:cincinnasite>,<betternether:cincinnasite>,<betternether:cincinnasite>],[<betternether:cincinnasite>,<betternether:cincinnasite>,<betternether:cincinnasite>]]);
recipes.addShapeless(<betternether:cincinnasite> * 9, [<betternether:cincinnasite_block>]);

# Forged Cincinnasite Block
recipes.remove(<betternether:cincinnasite_forged>);
furnace.remove(<betternether:cincinnasite_forged>);
mods.atum.Kiln.blacklist("betternether:cincinnasite_forged");
recipes.addShaped(<betternether:cincinnasite_forged> * 2, [[null,<thermalfoundation:material:356>,null],[<ore:ingotSteel>,<betternether:cincinnasite_block>,<ore:ingotSteel>],[null,<liquid:lava> * 1000,null]]);

# Cincinnasite Forge
recipes.remove(<betternether:cincinnasite_forge>);
recipes.addShaped(<betternether:cincinnasite_forge>, [[<minecraft:nether_brick>,<betternether:cincinnasite_forged>,<minecraft:nether_brick>],[<betternether:cincinnasite_forged>,<betternether:netherrack_furnace>,<betternether:cincinnasite_forged>],[<minecraft:nether_brick>,<betternether:cincinnasite_forged>,<minecraft:nether_brick>]]);

# Cincinnasite Frame
recipes.addShaped(<betternether:cincinnasite_frame> * 4, [[<betternether:cincinnasite>,<ore:blockGlassColorless>,<betternether:cincinnasite>],[<ore:blockGlassColorless>,<ore:blockGlassColorless>,<ore:blockGlassColorless>],[<betternether:cincinnasite>,<ore:blockGlassColorless>,<betternether:cincinnasite>]]);

# Cincinnasite into Gold Nuggets
recipes.addShapeless(<minecraft:gold_nugget>, [<betternether:cincinnasite>]);

# Large Nether Brick Tile
recipes.remove(<betternether:nether_brick_tile_large>);
recipes.addShaped(<betternether:nether_brick_tile_large> * 4, [[<minecraft:nether_brick>,<minecraft:nether_brick>],[<minecraft:nether_brick>,<minecraft:nether_brick>]]);

# Nether Reeds from Reeds Block, Reeds Button change to avoid conflict
recipes.remove(<betternether:reeds_button>);
recipes.addShapeless(<betternether:nether_reed> * 9, [<betternether:reeds_block>]);
recipes.addShapeless(<betternether:reeds_button>, [<minecraft:wooden_button>,<betternether:nether_reed>]);
recipes.addShapeless(<betternether:reeds_button>, [<quark:spruce_button>,<betternether:nether_reed>]);
recipes.addShapeless(<betternether:reeds_button>, [<quark:birch_button>,<betternether:nether_reed>]);
recipes.addShapeless(<betternether:reeds_button>, [<quark:jungle_button>,<betternether:nether_reed>]);
recipes.addShapeless(<betternether:reeds_button>, [<quark:acacia_button>,<betternether:nether_reed>]);
recipes.addShapeless(<betternether:reeds_button>, [<quark:dark_oak_button>,<betternether:nether_reed>]);

print("ENDING BetterNether.zs");
