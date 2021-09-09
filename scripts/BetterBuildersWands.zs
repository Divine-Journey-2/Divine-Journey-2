# Author: Atricos
print("STARTING BetterBuildersWands.zs");

# Stone Wand
recipes.remove(<betterbuilderswands:wandstone>);
recipes.addShapedMirrored(<betterbuilderswands:wandstone>, [[null,null,<extrautils2:decorativesolid:3>],[null,<ore:stickWood>,null],[<ore:stickWood>,null,null]]);

# Iron Wand
recipes.remove(<betterbuilderswands:wandiron>);
recipes.addShapedMirrored(<betterbuilderswands:wandiron>, [[null,<industrialforegoing:plastic>,<enderio:item_alloy_ingot:6>],[null,<betterbuilderswands:wandstone>,<industrialforegoing:plastic>],[<ore:stickWood>,null,null]]);

# Diamond Wand
recipes.remove(<betterbuilderswands:wanddiamond>);
recipes.addShapedMirrored(<betterbuilderswands:wanddiamond>, [[null,<botania:manaresource:2>,<botania:storage:3>],[null,<extrautils2:itembuilderswand>,<botania:manaresource:2>],[<ore:stickWood>,null,null]]);

# Unbreakable Wand
recipes.remove(<betterbuilderswands:wandunbreakable>);
recipes.addShapedMirrored(<betterbuilderswands:wandunbreakable>, [[null,<enderio:item_alloy_endergy_ingot:3>,<botania:storage:4>],[null,<betterbuilderswands:wanddiamond>,<enderio:item_alloy_endergy_ingot:3>],[<enderio:item_alloy_endergy_ingot:3>,null,null]]);

print("ENDING BetterBuildersWands.zs");