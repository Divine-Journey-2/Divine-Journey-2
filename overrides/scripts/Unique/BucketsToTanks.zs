# Author: WaitingIdly

print("STARTING BucketsToTanks.zs");

# Wet Mud Block
recipes.remove(<mysticalworld:wet_mud_block>);
recipes.addShaped(<mysticalworld:wet_mud_block> * 8, [[<ore:dirt>,<ore:dirt>,<ore:dirt>],[<ore:dirt>,<liquid:water> * 1000,<ore:dirt>],[<ore:dirt>,<ore:dirt>,<ore:dirt>]]);

# Positive Print
recipes.removeShapeless(<chiselsandbits:positiveprint>, [<minecraft:water_bucket>], true);
recipes.addShapeless(<chiselsandbits:positiveprint>, [<liquid:water> * 1000,<minecraft:paper>,<minecraft:dye:4>]);

# Negative Print
recipes.removeShapeless(<chiselsandbits:negativeprint>, [<minecraft:water_bucket>], true);
recipes.addShapeless(<chiselsandbits:negativeprint>, [<liquid:water> * 1000,<minecraft:paper>,<minecraft:redstone>]);

# Mirror Print
recipes.removeShapeless(<chiselsandbits:mirrorprint>, [<minecraft:water_bucket>], true);
recipes.addShapeless(<chiselsandbits:mirrorprint>, [<liquid:water> * 1000,<minecraft:paper>,<minecraft:glowstone_dust>]);

# Aqualamp
recipes.remove(<divinerpg:aqua_lamp>);
recipes.addShaped(<divinerpg:aqua_lamp>, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<liquid:water> * 1000,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);

# Waterstone
recipes.remove(<chisel:waterstone>);
recipes.addShaped(<chisel:waterstone> * 8, [[<minecraft:stone>,<minecraft:stone>,<minecraft:stone>],[<minecraft:stone>,<liquid:water> * 1000,<minecraft:stone>],[<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]]);

# Rusty Iron Plate
recipes.remove(<quark:iron_plate:1>);
recipes.addShaped(<quark:iron_plate:1> * 8, [[<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>],[<quark:iron_plate>,<liquid:water> * 1000,<quark:iron_plate>],[<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>]]);

# Rice slimeballs
recipes.remove(<actuallyadditions:item_misc:12>);
recipes.addShaped(<actuallyadditions:item_misc:12> * 4, [[null,<actuallyadditions:item_misc:9>,null],[<actuallyadditions:item_misc:9>,<liquid:water> * 1000,<actuallyadditions:item_misc:9>],[null,<actuallyadditions:item_misc:9>,null]]);


# Fire Jet
recipes.remove(<twilightforest:fire_jet:6>);
recipes.addShaped(<twilightforest:fire_jet:6>, [[<twilightforest:tower_wood:1>,<minecraft:redstone>,<twilightforest:tower_wood:1>],[<minecraft:redstone>,<twilightforest:fire_jet:3>,<minecraft:redstone>],[<liquid:lava> * 1000,<liquid:lava> * 1000,<liquid:lava> * 1000]]);

# Lava Lamp
recipes.remove(<divinerpg:lava_lamp>);
recipes.addShaped(<divinerpg:lava_lamp>, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<liquid:lava> * 1000,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);

# Lava Bricks
recipes.remove(<divinerpg:lava_bricks>);
recipes.addShapeless(<divinerpg:lava_bricks> * 4, [<minecraft:stonebrick>,<minecraft:stonebrick>,<minecraft:stonebrick>,<liquid:lava> * 1000]);

# Draken Lamp
recipes.remove(<divinerpg:draken_lamp>);
recipes.addShaped(<divinerpg:draken_lamp>, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],[<minecraft:gold_block>,<liquid:lava> * 1000,<minecraft:gold_block>],[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);

# Lavastone
recipes.remove(<chisel:lavastone>);
recipes.addShaped(<chisel:lavastone> * 8, [[<minecraft:stone>,<minecraft:stone>,<minecraft:stone>],[<minecraft:stone>,<liquid:lava> * 1000,<minecraft:stone>],[<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]]);


# Cake
recipes.remove(<minecraft:cake>);
recipes.addShaped(<minecraft:cake>, [[<liquid:milk> * 1000,<liquid:milk> * 1000,<liquid:milk> * 1000],[<minecraft:sugar>,<minecraft:egg>,<minecraft:sugar>],[<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>]]);
recipes.addShaped(<minecraft:cake>, [[<liquid:milk> * 1000,<liquid:milk> * 1000,<liquid:milk> * 1000],[<minecraft:sugar>,<enderio:item_material:70>,<minecraft:sugar>]]);

# Milk Stone
recipes.remove(<divinerpg:milk_stone>);
recipes.addShapeless(<divinerpg:milk_stone>, [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>,<liquid:milk> * 1000]);

# Milky Lamp
recipes.remove(<divinerpg:milky_lamp>);
recipes.addShaped(<divinerpg:milky_lamp>, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<liquid:milk> * 1000,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);

# Cheese
recipes.remove(<divinerpg:cheese>);
recipes.addShaped(<divinerpg:cheese>, [[<liquid:milk> * 1000,<liquid:milk> * 1000,<liquid:milk> * 1000],[<liquid:milk> * 1000,<liquid:milk> * 1000,<liquid:milk> * 1000],[<liquid:milk> * 1000,<liquid:milk> * 1000,<liquid:milk> * 1000]]);

# Cheese Curd
recipes.remove(<galacticraftcore:cheese>);
recipes.addShaped(<galacticraftcore:cheese>, [[<galacticraftcore:cheese_curd>,<galacticraftcore:cheese_curd>,<galacticraftcore:cheese_curd>],[<galacticraftcore:cheese_curd>,<liquid:milk> * 1000,<galacticraftcore:cheese_curd>],[<galacticraftcore:cheese_curd>,<galacticraftcore:cheese_curd>,<galacticraftcore:cheese_curd>]]);

# Chocolate
recipes.remove(<actuallyadditions:item_food:9>);
recipes.addShaped(<actuallyadditions:item_food:9>, [[<minecraft:dye:3>,null,<minecraft:dye:3>],[<minecraft:dye:3>,<liquid:milk> * 1000,<minecraft:dye:3>],[<minecraft:dye:3>,null,<minecraft:dye:3>]]);

# Chocolate Cake
recipes.remove(<actuallyadditions:item_food:8>);
recipes.addShaped(<actuallyadditions:item_food:8>, [[<liquid:milk> * 1000,<liquid:milk> * 1000,<liquid:milk> * 1000],[<actuallyadditions:item_food:9>,<minecraft:egg>,<actuallyadditions:item_food:9>],[<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>]]);
recipes.addShaped(<actuallyadditions:item_food:8>, [[<liquid:milk> * 1000,<liquid:milk> * 1000,<liquid:milk> * 1000],[<actuallyadditions:item_food:9>,<enderio:item_material:70>,<actuallyadditions:item_food:9>]]);

# MILK (joke alchemistry item)
recipes.remove(<alchemistry:milk>);
recipes.addShaped(<alchemistry:milk>, [[<minecraft:emerald>,<minecraft:diamond>,<minecraft:emerald>],[<minecraft:diamond>,<liquid:milk> * 1000,<minecraft:diamond>],[<minecraft:emerald>,<minecraft:diamond>,<minecraft:emerald>]]);

# AA Cheese
recipes.remove(<actuallyadditions:item_food>);
recipes.addShapeless(<actuallyadditions:item_food>, [<liquid:milk> * 1000, <minecraft:egg>]);

# Tasty Clay
recipes.remove(<openblocks:tasty_clay>);
recipes.addShapeless(<openblocks:tasty_clay> * 2, [<minecraft:clay_ball>, <liquid:milk> * 1000, <minecraft:dye:3>]);

# Burger Bun
recipes.remove(<galacticraftcore:food:5>);
recipes.addShapeless(<galacticraftcore:food:5> * 2, [<minecraft:wheat>, <minecraft:wheat>, <minecraft:egg>, <liquid:milk> * 1000]);

# Enderios'
recipes.remove(<enderio:item_ender_food>);
recipes.addShapeless(<enderio:item_ender_food>, [<minecraft:bowl>, <liquid:milk> * 1000, <minecraft:wheat>, <enderio:item_material:28>]);





print("ENDING BucketsToTanks.zs");
