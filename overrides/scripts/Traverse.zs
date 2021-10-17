# Author: Atricos
print("STARTING Traverse.zs");

# Red Rock Cobblestone fix
recipes.remove(<traverse:red_rock_cobblestone>);
recipes.addShaped(<traverse:red_rock_cobblestone> * 8, [[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],[<ore:cobblestone>,<minecraft:redstone>,<ore:cobblestone>],[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]]);

print("ENDING Traverse.zs");