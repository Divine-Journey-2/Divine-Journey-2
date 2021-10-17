# Author: Atricos
print("STARTING BetterBuildersWands.zs");

# Stone Wand
recipes.remove(<betterbuilderswands:wandstone>);
recipes.addShapedMirrored(<betterbuilderswands:wandstone>, [[null,null,<extrautils2:compressedcobblestone>],[null,<ore:stickWood>,null],[<ore:stickWood>,null,null]]);
<betterbuilderswands:wandstone>.maxDamage = 1000;

# Iron Wand
recipes.remove(<betterbuilderswands:wandiron>);
recipes.addShapedMirrored(<betterbuilderswands:wandiron>, [[null,null,<thermalfoundation:material:160>],[null,<betterbuilderswands:wandstone>,null],[<ore:stickWood>,null,null]]);
<betterbuilderswands:wandiron>.maxDamage = 3000;

# Diamond Wand
recipes.remove(<betterbuilderswands:wanddiamond>);
recipes.addShapedMirrored(<betterbuilderswands:wanddiamond>, [[null,null,<quantumflux:craftingpiece:6>],[null,<extrautils2:itembuilderswand>,null],[<ore:stickWood>,null,null]]);
<betterbuilderswands:wanddiamond>.maxDamage = 8000;

# Unbreakable Wand
recipes.remove(<betterbuilderswands:wandunbreakable>);
recipes.addShapedMirrored(<betterbuilderswands:wandunbreakable>, [[null,<enderio:item_alloy_endergy_ingot:1>,<extrautils2:decorativesolid:8>],[null,<betterbuilderswands:wanddiamond>,<enderio:item_alloy_endergy_ingot:1>],[<enderio:item_alloy_endergy_ingot:1>,null,null]]);

print("ENDING BetterBuildersWands.zs");