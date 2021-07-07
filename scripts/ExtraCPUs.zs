# Author: Atricos
print("STARTING ExtraCPUs.zs");

# 256k Crafting Storage
recipes.remove(<extracpus:crafting_storage_256k>);
recipes.addShaped(<extracpus:crafting_storage_256k>, [[<enderio:item_alloy_ingot>,<contenttweaker:rune_of_mana>,<enderio:item_alloy_ingot>],[<contenttweaker:rune_of_mana>,<appliedenergistics2:crafting_storage_64k>.noReturn(),<contenttweaker:rune_of_mana>],[<enderio:item_alloy_ingot>,<extracells:storage.component>,<enderio:item_alloy_ingot>]]);

# 1024k Crafting Storage
recipes.remove(<extracpus:crafting_storage_1024k>);
recipes.addShaped(<extracpus:crafting_storage_1024k>, [[<enderio:item_alloy_ingot>,<contenttweaker:condensed_vis_crystal_machina>,<enderio:item_alloy_ingot>],[<contenttweaker:condensed_vis_crystal_machina>,<extracpus:crafting_storage_256k>.noReturn(),<contenttweaker:condensed_vis_crystal_machina>],[<enderio:item_alloy_ingot>,<extracells:storage.component:1>,<enderio:item_alloy_ingot>]]);

# 4096k Crafting Storage
recipes.remove(<extracpus:crafting_storage_4096k>);
recipes.addShaped(<extracpus:crafting_storage_4096k>, [[<enderio:item_alloy_ingot>,<lightningcraft:plate:9>,<enderio:item_alloy_ingot>],[<lightningcraft:plate:9>,<extracpus:crafting_storage_1024k>.noReturn(),<lightningcraft:plate:9>],[<enderio:item_alloy_ingot>,<extracells:storage.component:2>,<enderio:item_alloy_ingot>]]);

# 16384k Crafting Storage
recipes.remove(<extracpus:crafting_storage_16384k>);
recipes.addShaped(<extracpus:crafting_storage_16384k>, [[<enderio:item_alloy_ingot>,<draconicevolution:awakened_core>,<enderio:item_alloy_ingot>],[<draconicevolution:awakened_core>,<extracpus:crafting_storage_4096k>.noReturn(),<draconicevolution:awakened_core>],[<enderio:item_alloy_ingot>,<extracells:storage.component:3>,<enderio:item_alloy_ingot>]]);


print("ENDING ExtraCPUs.zs");