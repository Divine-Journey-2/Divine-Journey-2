# Author: Atricos

import crafttweaker.item.IItemStack;

print("STARTING DankNull.zs");

function removeDankNullEasyRecipe(output as IItemStack, input_panel as IItemStack) {
	recipes.removeShaped(output, [[null,input_panel,null],[input_panel,input_panel,input_panel],[null,input_panel,null]]);
}

# /dank/null/MK I
recipes.remove(<danknull:dank_null_0>);
recipes.addShaped(<danknull:dank_null_0>.withTag({ench: [{lvl: 10 as short, id: 67 as short}]}), [[null, <danknull:dank_null_panel_0>, null], [<danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>], [null, <danknull:dank_null_panel_0>, null]]);

# /dank/null/MK II
removeDankNullEasyRecipe(<danknull:dank_null_1>, <danknull:dank_null_panel_1>);

# /dank/null/MK III
removeDankNullEasyRecipe(<danknull:dank_null_2>, <danknull:dank_null_panel_2>);

# /dank/null/MK IV
removeDankNullEasyRecipe(<danknull:dank_null_3>, <danknull:dank_null_panel_3>);

# /dank/null/MK V
removeDankNullEasyRecipe(<danknull:dank_null_4>, <danknull:dank_null_panel_4>);

# /dank/null/MK VI
removeDankNullEasyRecipe(<danknull:dank_null_5>, <danknull:dank_null_panel_5>);

# RedStone /dank/null Panel
recipes.remove(<danknull:dank_null_panel_0>);
recipes.addShaped(<danknull:dank_null_panel_0>, [[<minecraft:redstone>,<minecraft:obsidian>,<minecraft:redstone>],[<minecraft:obsidian>,<ore:paneGlassRed>,<minecraft:obsidian>],[<minecraft:redstone>,<minecraft:obsidian>,<minecraft:redstone>]]);

# Lapis /dank/null Panel
recipes.remove(<danknull:dank_null_panel_1>);
recipes.addShaped(<danknull:dank_null_panel_1>, [[<minecraft:dye:4>,<minecraft:obsidian>,<minecraft:dye:4>],[<minecraft:obsidian>,<ore:paneGlassBlue>,<minecraft:obsidian>],[<minecraft:dye:4>,<minecraft:obsidian>,<minecraft:dye:4>]]);

# Iron /dank/null Panel
recipes.remove(<danknull:dank_null_panel_2>);
recipes.addShaped(<danknull:dank_null_panel_2>, [[<thermalfoundation:material:160>,<contenttweaker:compressed_obsidian1>,<thermalfoundation:material:160>],[<contenttweaker:compressed_obsidian1>,<ore:paneGlassWhite>,<contenttweaker:compressed_obsidian1>],[<thermalfoundation:material:160>,<contenttweaker:compressed_obsidian1>,<thermalfoundation:material:160>]]);

# Gold /dank/null Panel
recipes.remove(<danknull:dank_null_panel_3>);
recipes.addShaped(<danknull:dank_null_panel_3>, [[<contenttweaker:enchanted_golden_berry>,<contenttweaker:compressed_obsidian1>,<contenttweaker:enchanted_golden_berry>],[<contenttweaker:compressed_obsidian1>,<ore:paneGlassYellow>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:enchanted_golden_berry>,<contenttweaker:compressed_obsidian1>,<contenttweaker:enchanted_golden_berry>]]);

# Diamond /dank/null Panel
recipes.remove(<danknull:dank_null_panel_4>);
recipes.addShaped(<danknull:dank_null_panel_4>, [[<thermalfoundation:material:134>,<contenttweaker:compressed_obsidian2>,<thermalfoundation:material:134>],[<contenttweaker:compressed_obsidian2>,<ore:paneGlassCyan>,<contenttweaker:compressed_obsidian2>],[<thermalfoundation:material:134>,<contenttweaker:compressed_obsidian2>,<thermalfoundation:material:134>]]);

# Emerald /dank/null Panel
recipes.remove(<danknull:dank_null_panel_5>);
recipes.addShaped(<danknull:dank_null_panel_5>, [[<extendedcrafting:singularity:7>,<industrialforegoing:black_hole_unit>,<extendedcrafting:singularity:7>],[<industrialforegoing:black_hole_unit>,<industrialforegoing:black_hole_unit>,<industrialforegoing:black_hole_unit>],[<extendedcrafting:singularity:7>,<industrialforegoing:black_hole_unit>,<extendedcrafting:singularity:7>]]);

# /dank/null Docking Station
recipes.remove(<danknull:danknull_dock>);
recipes.addShaped(<danknull:danknull_dock>, [[<actuallyadditions:item_crystal_empowered:4>,<contenttweaker:cosmic_alloy>,<actuallyadditions:item_crystal_empowered:4>],[<contenttweaker:cosmic_alloy>,<divinerpg:wildwood_chunk>,<contenttweaker:cosmic_alloy>],[<actuallyadditions:item_crystal_empowered:4>,<contenttweaker:cosmic_alloy>,<actuallyadditions:item_crystal_empowered:4>]]);

# /dank/null/Creative
recipes.addShaped(<danknull:dank_null_6>, [[<danknull:dank_null_5>,<bibliocraft:bookcasecreative>,<danknull:dank_null_5>],[<storagedrawers:upgrade_creative>,<contenttweaker:essence_of_enlargement>,<storagedrawers:upgrade_creative>],[<danknull:dank_null_5>,<bibliocraft:bookcasecreative>,<danknull:dank_null_5>]]);

print("ENDING DankNull.zs");
