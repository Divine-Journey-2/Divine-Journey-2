// Author: WaitingIdly

print("STARTING Omniwand.zs");

// Morphing Tool
recipes.remove(<omniwand:wand>);
recipes.addShapedMirrored(<omniwand:wand>, [[null,null,<minecraft:ender_pearl>],[null,<plustic:osgloglasingot>,null],[<plustic:osgloglasingot>,null,null]]);

<omniwand:wand>.addTooltip(game.localize("dj2.omniwand.desc0"));

print("ENDING Omniwand.zs");
