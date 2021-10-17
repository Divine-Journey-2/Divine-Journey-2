# Author: Atricos
print("STARTING BiggerCraftingTables.zs");

recipes.remove(<biggercraftingtables:biggercraftingtable>);
recipes.remove(<biggercraftingtables:biggercraftingtable:1>);
recipes.remove(<biggercraftingtables:biggercraftingtable:2>);
recipes.addShaped(<biggercraftingtables:biggercraftingtable:2>, [[<avaritiaddons:extreme_auto_crafter>,<avaritiaddons:extreme_auto_crafter>,<avaritiaddons:extreme_auto_crafter>],[<contenttweaker:techy_singularity>,<thermalfoundation:upgrade:256>,<contenttweaker:techy_singularity>],[<contenttweaker:techy_singularity>,<contenttweaker:techy_singularity>,<contenttweaker:techy_singularity>]]);
recipes.remove(<biggercraftingtables:autobiggercraftingtable>);
recipes.remove(<biggercraftingtables:autobiggercraftingtable:1>);
recipes.remove(<biggercraftingtables:autobiggercraftingtable:2>);


print("ENDING BiggerCraftingTables.zs");