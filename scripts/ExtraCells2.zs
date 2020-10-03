# Author: Atricos
print("STARTING ExtraCells.zs");

# 256k ME Storage Component
recipes.remove(<extracells:storage.component>);
recipes.addShaped(<extracells:storage.component>, [[<ore:ingotEnergeticAlloy>,<appliedenergistics2:material:38>,<ore:ingotEnergeticAlloy>],[<appliedenergistics2:material:38>,<contenttweaker:operation_processor>,<appliedenergistics2:material:38>],[<ore:ingotEnergeticAlloy>,<appliedenergistics2:material:38>,<ore:ingotEnergeticAlloy>]]);

# 1024k ME Storage Component
recipes.remove(<extracells:storage.component:1>);
recipes.addShaped(<extracells:storage.component:1>, [[<ore:ingotEnergeticAlloy>,<extracells:storage.component>,<ore:ingotEnergeticAlloy>],[<extracells:storage.component>,<contenttweaker:methodology_processor>,<extracells:storage.component>],[<ore:ingotEnergeticAlloy>,<extracells:storage.component>,<ore:ingotEnergeticAlloy>]]);

# 4096k ME Storage Component
recipes.remove(<extracells:storage.component:2>);
recipes.addShaped(<extracells:storage.component:2>, [[<enderio:item_alloy_ingot:2>,<extracells:storage.component:1>,<enderio:item_alloy_ingot:2>],[<extracells:storage.component:1>,<contenttweaker:clearance_processor>,<extracells:storage.component:1>],[<enderio:item_alloy_ingot:2>,<extracells:storage.component:1>,<enderio:item_alloy_ingot:2>]]);

# 16384k ME Storage Component
recipes.remove(<extracells:storage.component:3>);
recipes.addShaped(<extracells:storage.component:3>, [[<enderio:item_alloy_ingot:2>,<extracells:storage.component:2>,<enderio:item_alloy_ingot:2>],[<extracells:storage.component:2>,<contenttweaker:scheduling_processor>,<extracells:storage.component:2>],[<enderio:item_alloy_ingot:2>,<extracells:storage.component:2>,<enderio:item_alloy_ingot:2>]]);

# Advanced Storage Housing
recipes.remove(<extracells:storage.casing>);
recipes.addShaped(<extracells:storage.casing>, [[<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:material:8>,<appliedenergistics2:quartz_vibrant_glass>],[<appliedenergistics2:material:8>,null,<appliedenergistics2:material:8>],[<enderio:item_material:14>,<enderio:item_material:14>,<enderio:item_material:14>]]);

# 256k Storage Cell
recipes.removeShaped(<extracells:storage.physical>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}));
recipes.addShaped(<extracells:storage.physical>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:material:8>,<appliedenergistics2:quartz_vibrant_glass>],[<appliedenergistics2:material:8>,<extracells:storage.component>,<appliedenergistics2:material:8>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# 1024k Storage Cell
recipes.removeShaped(<extracells:storage.physical:1>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}));
recipes.addShaped(<extracells:storage.physical:1>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:material:8>,<appliedenergistics2:quartz_vibrant_glass>],[<appliedenergistics2:material:8>,<extracells:storage.component:1>,<appliedenergistics2:material:8>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# 4096k Storage Cell
recipes.removeShaped(<extracells:storage.physical:2>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}));
recipes.addShaped(<extracells:storage.physical:2>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:material:8>,<appliedenergistics2:quartz_vibrant_glass>],[<appliedenergistics2:material:8>,<extracells:storage.component:2>,<appliedenergistics2:material:8>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# 16384k Storage Cell
recipes.removeShaped(<extracells:storage.physical:3>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}));
recipes.addShaped(<extracells:storage.physical:3>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:material:8>,<appliedenergistics2:quartz_vibrant_glass>],[<appliedenergistics2:material:8>,<extracells:storage.component:3>,<appliedenergistics2:material:8>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# Certus Quartz Tank
recipes.remove(<extracells:certustank>);
recipes.addShaped(<extracells:certustank>, [[<thermalfoundation:material:200>,<thermalfoundation:material:200>,<thermalfoundation:material:200>],[<appliedenergistics2:quartz_glass>,null,<appliedenergistics2:quartz_glass>],[<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>]]);

# Fluid Storage Housing
recipes.remove(<extracells:storage.casing:1>);
recipes.addShaped(<extracells:storage.casing:1>, [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,null,<thermalfoundation:material:1028>],[<extracells:certustank>,<extracells:certustank>,<extracells:certustank>]]);

# 256k ME Fluid Storage Component
recipes.remove(<extracells:storage.component:8>);
recipes.addShaped(<extracells:storage.component:8>, [[<extrautils2:ingredients:3>,<appliedenergistics2:material:57>,<extrautils2:ingredients:3>],[<appliedenergistics2:material:57>,<contenttweaker:methodology_processor>,<appliedenergistics2:material:57>],[<extrautils2:ingredients:3>,<appliedenergistics2:material:57>,<extrautils2:ingredients:3>]]);

# 1024k ME Fluid Storage Component
recipes.remove(<extracells:storage.component:9>);
recipes.addShaped(<extracells:storage.component:9>, [[<contenttweaker:demonlord_ingot>,<extracells:storage.component:8>,<contenttweaker:demonlord_ingot>],[<extracells:storage.component:8>,<contenttweaker:clearance_processor>,<extracells:storage.component:8>],[<contenttweaker:demonlord_ingot>,<extracells:storage.component:8>,<contenttweaker:demonlord_ingot>]]);

# 4096k ME Fluid Storage Component
recipes.remove(<extracells:storage.component:10>);
recipes.addShaped(<extracells:storage.component:10>, [[<thermalfoundation:material:136>,<extracells:storage.component:9>,<thermalfoundation:material:136>],[<extracells:storage.component:9>,<contenttweaker:scheduling_processor>,<extracells:storage.component:9>],[<thermalfoundation:material:136>,<extracells:storage.component:9>,<thermalfoundation:material:136>]]);

# 256k ME Fluid Storage Component
recipes.removeShaped(<extracells:storage.fluid:4>);
recipes.addShaped(<extracells:storage.fluid:4>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<extracells:storage.component:8>,<thermalfoundation:material:1028>],[<extracells:certustank>,<extracells:certustank>,<extracells:certustank>]]);

# 1024k ME Fluid Storage Component
recipes.removeShaped(<extracells:storage.fluid:5>);
recipes.addShaped(<extracells:storage.fluid:5>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<extracells:storage.component:9>,<thermalfoundation:material:1028>],[<extracells:certustank>,<extracells:certustank>,<extracells:certustank>]]);

# 4096k ME Fluid Storage Component
recipes.removeShaped(<extracells:storage.fluid:6>);
recipes.addShaped(<extracells:storage.fluid:6>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<extracells:storage.component:10>,<thermalfoundation:material:1028>],[<extracells:certustank>,<extracells:certustank>,<extracells:certustank>]]);

print("ENDING ExtraCells.zs");