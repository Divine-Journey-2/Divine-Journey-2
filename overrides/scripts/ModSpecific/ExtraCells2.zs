# Author: Atricos

import crafttweaker.item.IItemStack;

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
recipes.removeShaped(<extracells:storage.physical>);
recipes.addShaped(<extracells:storage.physical>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:material:8>,<appliedenergistics2:quartz_vibrant_glass>],[<appliedenergistics2:material:8>,<extracells:storage.component>,<appliedenergistics2:material:8>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# 1024k Storage Cell
recipes.removeShaped(<extracells:storage.physical:1>);
recipes.addShaped(<extracells:storage.physical:1>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:material:8>,<appliedenergistics2:quartz_vibrant_glass>],[<appliedenergistics2:material:8>,<extracells:storage.component:1>,<appliedenergistics2:material:8>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# 4096k Storage Cell
recipes.removeShaped(<extracells:storage.physical:2>);
recipes.addShaped(<extracells:storage.physical:2>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), [[<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:material:8>,<appliedenergistics2:quartz_vibrant_glass>],[<appliedenergistics2:material:8>,<extracells:storage.component:2>,<appliedenergistics2:material:8>],[<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>,<ore:itemPulsatingCrystal>]]);

# 16384k Storage Cell
recipes.removeShaped(<extracells:storage.physical:3>);
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

# 1k ME Gas Storage Component
recipes.remove(<extracells:storage.component:11>);
recipes.addShaped(<extracells:storage.component:11>, [[<mekanism:enrichedalloy>,allCertus,<mekanism:enrichedalloy>],[allCertus,<contenttweaker:methodology_processor>,allCertus],[<mekanism:enrichedalloy>,allCertus,<mekanism:enrichedalloy>]]);

# 4k ME Gas Storage Component
recipes.remove(<extracells:storage.component:12>);
recipes.addShaped(<extracells:storage.component:12>, [[<mekanism:enrichedalloy>,<extracells:storage.component:11>,<mekanism:enrichedalloy>],[<extracells:storage.component:11>,<contenttweaker:methodology_processor>,<extracells:storage.component:11>],[<mekanism:enrichedalloy>,<extracells:storage.component:11>,<mekanism:enrichedalloy>]]);

# 16k ME Gas Storage Component
recipes.remove(<extracells:storage.component:13>);
recipes.addShaped(<extracells:storage.component:13>, [[<mekanism:reinforcedalloy>,<extracells:storage.component:12>,<mekanism:reinforcedalloy>],[<extracells:storage.component:12>,<contenttweaker:methodology_processor>,<extracells:storage.component:12>],[<mekanism:reinforcedalloy>,<extracells:storage.component:12>,<mekanism:reinforcedalloy>]]);

# 64k ME Gas Storage Component
recipes.remove(<extracells:storage.component:14>);
recipes.addShaped(<extracells:storage.component:14>, [[<mekanism:reinforcedalloy>,<extracells:storage.component:13>,<mekanism:reinforcedalloy>],[<extracells:storage.component:13>,<contenttweaker:clearance_processor>,<extracells:storage.component:13>],[<mekanism:reinforcedalloy>,<extracells:storage.component:13>,<mekanism:reinforcedalloy>]]);

# 256k ME Gas Storage Component
recipes.remove(<extracells:storage.component:15>);
recipes.addShaped(<extracells:storage.component:15>, [[<mekanism:atomicalloy>,<extracells:storage.component:14>,<mekanism:atomicalloy>],[<extracells:storage.component:14>,<contenttweaker:clearance_processor>,<extracells:storage.component:14>],[<mekanism:atomicalloy>,<extracells:storage.component:14>,<mekanism:atomicalloy>]]);

# 1024k ME Gas Storage Component
recipes.remove(<extracells:storage.component:16>);
recipes.addShaped(<extracells:storage.component:16>, [[<mekanism:atomicalloy>,<extracells:storage.component:15>,<mekanism:atomicalloy>],[<extracells:storage.component:15>,<contenttweaker:clearance_processor>,<extracells:storage.component:15>],[<mekanism:atomicalloy>,<extracells:storage.component:15>,<mekanism:atomicalloy>]]);

# 4096k ME Gas Storage Component
recipes.remove(<extracells:storage.component:17>);
recipes.addShaped(<extracells:storage.component:17>, [[<contenttweaker:cosmic_alloy>,<extracells:storage.component:16>,<contenttweaker:cosmic_alloy>],[<extracells:storage.component:16>,<contenttweaker:scheduling_processor>,<extracells:storage.component:16>],[<contenttweaker:cosmic_alloy>,<extracells:storage.component:16>,<contenttweaker:cosmic_alloy>]]);

function addExtraCellsGasDisableString(item as IItemStack) {
	item.addTooltip(format.red(format.italic("Disabled due to a duplication bug. Use a Gas Tank")));
	item.addTooltip(format.red(format.italic("as external storage with an ME Gas Storage Bus")));
	item.addTooltip(format.red(format.italic("if you'd like to store gases in your ME System.")));
}

# Gas Storage Housing
recipes.remove(<extracells:storage.casing:2>);
recipes.addShaped(<extracells:storage.casing:2>, [[<contenttweaker:empowered_glod_crystal>,<thermalfoundation:material:72>,<contenttweaker:empowered_glod_crystal>],[<thermalfoundation:material:72>,null,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 1k Gas Storage Cell
recipes.remove(<extracells:storage.gas>);
recipes.addShapeless(<extracells:storage.gas>.withTag({fuzzyMode: "IGNORE_ALL"}), [<extracells:storage.casing:2>, <extracells:storage.component:11>]);
recipes.addShaped(<extracells:storage.gas>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<contenttweaker:empowered_glod_crystal>,<thermalfoundation:material:72>,<contenttweaker:empowered_glod_crystal>],[<thermalfoundation:material:72>,<extracells:storage.component:11>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 4k Gas Storage Cell
recipes.remove(<extracells:storage.gas:1>);
recipes.addShapeless(<extracells:storage.gas:1>.withTag({fuzzyMode: "IGNORE_ALL"}), [<extracells:storage.casing:2>, <extracells:storage.component:12>]);
recipes.addShaped(<extracells:storage.gas:1>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<contenttweaker:empowered_glod_crystal>,<thermalfoundation:material:72>,<contenttweaker:empowered_glod_crystal>],[<thermalfoundation:material:72>,<extracells:storage.component:12>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 16k Gas Storage Cell
recipes.remove(<extracells:storage.gas:2>);
recipes.addShapeless(<extracells:storage.gas:2>.withTag({fuzzyMode: "IGNORE_ALL"}), [<extracells:storage.casing:2>, <extracells:storage.component:13>]);
recipes.addShaped(<extracells:storage.gas:2>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<contenttweaker:empowered_glod_crystal>,<thermalfoundation:material:72>,<contenttweaker:empowered_glod_crystal>],[<thermalfoundation:material:72>,<extracells:storage.component:13>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 64k Gas Storage Cell
recipes.remove(<extracells:storage.gas:3>);
recipes.addShapeless(<extracells:storage.gas:3>.withTag({fuzzyMode: "IGNORE_ALL"}), [<extracells:storage.casing:2>, <extracells:storage.component:14>]);
recipes.addShaped(<extracells:storage.gas:3>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<contenttweaker:empowered_glod_crystal>,<thermalfoundation:material:72>,<contenttweaker:empowered_glod_crystal>],[<thermalfoundation:material:72>,<extracells:storage.component:14>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 256k Gas Storage Cell
recipes.remove(<extracells:storage.gas:4>);
recipes.addShapeless(<extracells:storage.gas:4>.withTag({fuzzyMode: "IGNORE_ALL"}), [<extracells:storage.casing:2>, <extracells:storage.component:15>]);
recipes.addShaped(<extracells:storage.gas:4>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<contenttweaker:empowered_glod_crystal>,<thermalfoundation:material:72>,<contenttweaker:empowered_glod_crystal>],[<thermalfoundation:material:72>,<extracells:storage.component:15>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 1024k Gas Storage Cell
recipes.remove(<extracells:storage.gas:5>);
recipes.addShapeless(<extracells:storage.gas:5>.withTag({fuzzyMode: "IGNORE_ALL"}), [<extracells:storage.casing:2>, <extracells:storage.component:16>]);
recipes.addShaped(<extracells:storage.gas:5>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<contenttweaker:empowered_glod_crystal>,<thermalfoundation:material:72>,<contenttweaker:empowered_glod_crystal>],[<thermalfoundation:material:72>,<extracells:storage.component:16>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME 4096k Gas Storage Cell
recipes.remove(<extracells:storage.gas:6>);
recipes.addShapeless(<extracells:storage.gas:6>.withTag({fuzzyMode: "IGNORE_ALL"}), [<extracells:storage.casing:2>, <extracells:storage.component:17>]);
recipes.addShaped(<extracells:storage.gas:6>.withTag({fuzzyMode: "IGNORE_ALL"}), [[<contenttweaker:empowered_glod_crystal>,<thermalfoundation:material:72>,<contenttweaker:empowered_glod_crystal>],[<thermalfoundation:material:72>,<extracells:storage.component:17>,<thermalfoundation:material:72>],[<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 0})]]);

# ME Gas Level Emitter
recipes.remove(<extracells:part.base:17>);
recipes.addShaped(<extracells:part.base:17>, [[<projectred-core:resource_item:11>],[<ore:stickWood>],[<contenttweaker:methodology_processor>]]);
#<extracells:part.base:17>.addTooltip(format.red(format.italic("Disabled due to a bug where it completely")));
#<extracells:part.base:17>.addTooltip(format.red(format.italic("behaves as a Fluid Level Emitter.")));

# ME Gas Storage Bus
recipes.remove(<extracells:part.base:16>);
recipes.addShapedMirrored(<extracells:part.base:16>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<extracells:part.base:14>,<mekanism:atomicalloy>,<extracells:part.base:13>]]);

# ME Gas Import Bus
recipes.remove(<extracells:part.base:13>);
recipes.addShaped(<extracells:part.base:13>, [[<appliedenergistics2:material:44>,<contenttweaker:methodology_processor>,<appliedenergistics2:material:44>],[<thermalfoundation:material:352>,<minecraft:sticky_piston>,<thermalfoundation:material:352>]]);

# ME Gas Export Bus
recipes.remove(<extracells:part.base:14>);
recipes.addShaped(<extracells:part.base:14>, [[<appliedenergistics2:material:43>,<contenttweaker:methodology_processor>,<appliedenergistics2:material:43>],[<thermalfoundation:material:352>,<minecraft:piston>,<thermalfoundation:material:352>]]);

# ME Fluid Storage Monitor
recipes.remove(<extracells:part.base:10>);
recipes.addShaped(<extracells:part.base:10>, [[null,<appliedenergistics2:part:281>,null],[<appliedenergistics2:material:8>,<ore:itemIlluminatedPanel>,<appliedenergistics2:material:8>],[null,<extracells:certustank>,null]]);

# ME Gas Storage Monitor
recipes.remove(<extracells:part.base:18>);
recipes.addShaped(<extracells:part.base:18>, [[null,<mekanism:transmitter:2>.withTag({tier: 0}),null],[<appliedenergistics2:material:8>,<ore:itemIlluminatedPanel>,<appliedenergistics2:material:8>],[null,<mekanism:gastank>.withTag({tier: 0}),null]]);

# ME Fluid Conversion Monitor
recipes.remove(<extracells:part.base:11>);
recipes.addShapedMirrored(<extracells:part.base:11>, [[null,<appliedenergistics2:part:281>,null],[<appliedenergistics2:material:43>,<extracells:part.base:10>,<appliedenergistics2:material:44>],[null,<contenttweaker:operation_processor>,null]]);

# ME Gas Conversion Monitor
recipes.remove(<extracells:part.base:19>);
recipes.addShapedMirrored(<extracells:part.base:19>, [[null,<mekanism:transmitter:2>.withTag({tier: 0}),null],[<appliedenergistics2:material:43>,<extracells:part.base:18>,<appliedenergistics2:material:44>],[null,<contenttweaker:methodology_processor>,null]]);

# ME Gas Terminal
recipes.remove(<extracells:part.base:15>);
recipes.addShaped(<extracells:part.base:15>, [[null,<contenttweaker:methodology_processor>,null],[<appliedenergistics2:material:22>,<appliedenergistics2:part:380>,<appliedenergistics2:material:22>],[null,<contenttweaker:methodology_processor>,null]]);
recipes.addShaped(<extracells:part.base:15>, [[null,<appliedenergistics2:material:22>,null],[<contenttweaker:methodology_processor>,<appliedenergistics2:part:380>,<contenttweaker:methodology_processor>],[null,<appliedenergistics2:material:22>,null]]);

print("ENDING ExtraCells.zs");
