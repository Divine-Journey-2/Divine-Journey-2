# Author: Atricos
print("STARTING StorageDrawers.zs");

# Upgrades
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped(<storagedrawers:upgrade_storage:1>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:iron_ingot>,<storagedrawers:upgrade_storage>,<minecraft:iron_ingot>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped(<storagedrawers:upgrade_storage:2>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:gold_ingot>,<storagedrawers:upgrade_storage:1>,<minecraft:gold_ingot>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:diamond>,<storagedrawers:upgrade_storage:2>,<minecraft:diamond>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:emerald>,<storagedrawers:upgrade_storage:3>,<minecraft:emerald>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);

# Compacting Drawer
recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped(<storagedrawers:compdrawers>, [[<ore:stone>,<ore:stone>,<ore:stone>],[<minecraft:piston>,<ore:drawerBasic>,<minecraft:piston>],[<ore:stone>,<thermalfoundation:material:32>,<ore:stone>]]);

# Drawer Controller
recipes.remove(<storagedrawers:controller>);
recipes.addShaped(<storagedrawers:controller>, [[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],[<draconicevolution:potentiometer>,<ore:drawerBasic>,<draconicevolution:potentiometer>],[<ore:ingotSteel>,<avaritia:resource>,<ore:ingotSteel>]]);

# Controller Slave
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped(<storagedrawers:controllerslave>, [[<ore:stone>,<ore:stone>,<ore:stone>],[<ore:dustDraconium>,<ore:drawerBasic>,<ore:dustDraconium>],[<ore:stone>,<minecraft:diamond>,<ore:stone>]]);

print("ENDING StorageDrawers.zs");