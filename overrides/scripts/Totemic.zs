# Author: Atricos
print("STARTING Totemic.zs");

# Totem Whittling Knife
recipes.remove(<totemic:totem_whittling_knife>);
recipes.addShaped(<totemic:totem_whittling_knife>, [[null,<contenttweaker:compressed_obsidian2>,<ore:blockIron>],[null,<ore:blockCopper>,<ore:logWood>],[<ore:blockCopper>,<ore:logWood>,null]]);

# Totemist Drum
recipes.remove(<totemic:drum>);
recipes.addShaped(<totemic:drum>, [[<contenttweaker:treated_leather>,<contenttweaker:treated_leather>,<contenttweaker:treated_leather>],[<ore:logWood>,<ore:blockCopper>,<ore:logWood>],[null,<ore:logWood>,null]]);

# Totemic Staff
recipes.remove(<totemic:totemic_staff>);
recipes.addShaped(<totemic:totemic_staff>, [[<minecraft:gold_ingot>,<ore:treeLeaves>,<ore:blockBronze>],[null,<ore:ingotTin>,<ore:treeLeaves>],[<ore:blockTin>,null,<minecraft:gold_ingot>]]);

# Iron Bells and Jingle Dress
recipes.remove(<totemic:sub_items:1>);
recipes.addShaped(<totemic:sub_items:1>, [[<minecraft:iron_ingot>,null,<minecraft:iron_ingot>],[<immersiveengineering:material:1>,null,<immersiveengineering:material:1>],[null,<minecraft:iron_ingot>,null]]);
recipes.remove(<totemic:jingle_dress>);
recipes.addShaped(<totemic:jingle_dress>, [[<ore:treeLeaves>,<totemic:sub_items:1>,<ore:treeLeaves>],[<totemic:sub_items:1>,<contenttweaker:treated_leather>,<totemic:sub_items:1>],[<ore:treeLeaves>,null,<ore:treeLeaves>]]);

# Flute
recipes.remove(<totemic:flute>);
recipes.addShaped(<totemic:flute>, [[null,<ore:treeLeaves>,<ore:logWood>],[null,<ore:logWood>,<ore:blockSilver>],[<ore:logWood>,<ore:blockSilver>,null]]);

# Wind Chime
recipes.remove(<totemic:wind_chime>);
recipes.addShaped(<totemic:wind_chime>, [[<immersiveengineering:material:1>,<totemic:cedar_log>,<immersiveengineering:material:1>],[<ore:ingotCopper>,<ore:string>,<ore:ingotCopper>],[<ore:ingotCopper>,null,<ore:ingotCopper>]]);

# Tipi
recipes.remove(<totemic:tipi>);
recipes.addShaped(<totemic:tipi>, [[<ore:stickWood>,<ore:blockWool>,<ore:stickWood>],[<ore:blockWool>,<totemic:buffalo_items>,<ore:blockWool>],[<totemic:buffalo_items>,null,<totemic:buffalo_items>]]);

# Medicine Bag
recipes.remove(<totemic:medicine_bag>);
recipes.addShaped(<totemic:medicine_bag>, [[<totemic:buffalo_items:1>,<ore:string>,<totemic:buffalo_items:1>],[<totemic:buffalo_items>,<minecraft:diamond>,<totemic:buffalo_items>],[<totemic:buffalo_items>,<totemic:cedar_log>,<totemic:buffalo_items>]]);

# Rattle
recipes.remove(<totemic:rattle>);
recipes.addShaped(<totemic:rattle>, [[null,<minecraft:redstone_block>,<minecraft:lapis_block>],[null,<totemic:buffalo_items:1>,<minecraft:emerald_block>],[<totemic:cedar_log>,null,null]]);

# Eagle-Bone Whistle
recipes.remove(<totemic:eagle_bone_whistle>);
recipes.addShaped(<totemic:eagle_bone_whistle>, [[null,<ore:string>,<ore:ingotOsmium>],[<ore:string>,<totemic:eagle_drops>,<totemic:eagle_drops:1>],[<totemic:eagle_drops>,<totemic:eagle_drops:1>,null]]);

# Buffalo Hide from Mystical Agriculture Essences
recipes.addShaped(<totemic:buffalo_items> * 4, [[null,<mysticalagriculture:cow_essence>,null],[<mysticalagriculture:cow_essence>,null,<mysticalagriculture:cow_essence>],[null,<mysticalagriculture:cow_essence>,null]]);

# Baykok's Bow Tooltip
<totemic:baykok_bow>.addTooltip(format.red("Uses up 1 durability point per craft."));

# Totempedia Tooltip
<totemic:totempedia>.addTooltip(format.red(format.bold("WARNING: ")) + format.white("Recipes shown may be incorrect."));
<totemic:totempedia>.addTooltip(format.white("Always refer to JEI when crafting!"));

# Creative Medicine Bag
recipes.addShaped(<totemic:medicine_bag>.withTag({charge: -1}), [[<mysticalagriculture:charm:12>,<totemic:medicine_bag>,<mysticalagriculture:charm:12>],[<totemic:medicine_bag>,<storagedrawers:upgrade_creative>,<totemic:medicine_bag>],[<mysticalagriculture:charm:12>,<totemic:medicine_bag>,<mysticalagriculture:charm:12>]]);

# Creative Ceremony Cheat
recipes.addShapedMirrored(<totemic:ceremony_cheat>, [[<contenttweaker:taste_the_rainbow>,<contenttweaker:taste_the_rainbow>,<totemic:medicine_bag>.withTag({charge: -1})],[null,<totemic:totemic_staff>,<contenttweaker:taste_the_rainbow>],[<alchemistry:ingot:72>,null,<contenttweaker:taste_the_rainbow>]]);

print("ENDING Totemic.zs");