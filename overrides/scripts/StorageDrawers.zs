# Author: Atricos
print("STARTING StorageDrawers.zs");

# Framing Table
<storagedrawers:framingtable>.addTooltip(format.gold("Consider using the Hand Framing Tool instead!"));

# Upgrade Template from Framed Drawers
recipes.addShaped(<storagedrawers:upgrade_template> * 2, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<ore:stickWood>,<storagedrawers:customdrawers:*>,<ore:stickWood>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);

# Upgrades
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped(<storagedrawers:upgrade_storage:1>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:iron_ingot>,<storagedrawers:upgrade_storage>,<minecraft:iron_ingot>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped(<storagedrawers:upgrade_storage:2>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:gold_ingot>,<storagedrawers:upgrade_storage:1>,<minecraft:gold_ingot>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:diamond>,<storagedrawers:upgrade_storage:2>,<minecraft:diamond>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:emerald>,<storagedrawers:upgrade_storage:3>,<minecraft:emerald>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_conversion>);

# Compacting Drawer
recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped(<storagedrawers:compdrawers>, [[<ore:stone>,<ore:stone>,<ore:stone>],[<minecraft:piston>,<ore:drawerBasic>,<minecraft:piston>],[<ore:stone>,<thermalfoundation:material:32>,<ore:stone>]]);

# Drawer Controller
recipes.remove(<storagedrawers:controller>);
recipes.addShaped(<storagedrawers:controller>, [[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],[<draconicevolution:potentiometer>,<ore:drawerBasic>,<draconicevolution:potentiometer>],[<ore:ingotSteel>,<avaritia:resource>,<ore:ingotSteel>]]);

# Controller Slave
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped(<storagedrawers:controllerslave>, [[<ore:stone>,<ore:stone>,<ore:stone>],[<ore:dustDraconium>,<ore:drawerBasic>,<ore:dustDraconium>],[<ore:stone>,<minecraft:diamond>,<ore:stone>]]);

# Ore Dictionaries
<ore:drawerBasic>.add(<storagedrawersextra:extra_drawers:*>);
<ore:drawerTrim>.add(<storagedrawersextra:extra_trim_0:*>);

# Creative Storage Upgrade
recipes.addShaped(<storagedrawers:upgrade_creative>, [[<contenttweaker:white_matter>,<storagedrawers:upgrade_storage:4>,<contenttweaker:white_matter>],[<tconstruct:materials:50>,<projecte:condenser_mk2>,<tconstruct:materials:50>],[<contenttweaker:white_matter>,<storagedrawers:upgrade_storage:4>,<contenttweaker:white_matter>]]);

# Creative Vending Upgrade
mods.extendedcrafting.TableCrafting.addShaped(<storagedrawers:upgrade_creative:1>,
[[<storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <alchemistry:ingot:71>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <alchemistry:ingot:71>],
[<storagedrawers:upgrade_creative>, <thaumicenergistics:essentia_cell_creative>, <thaumicenergistics:essentia_cell_creative>, <thaumicenergistics:essentia_cell_creative>, <thaumicenergistics:essentia_cell_creative>, <alchemistry:ingot:71>, <alchemistry:ingot:71>, <alchemistry:ingot:71>, <alchemistry:ingot:71>],
[<storagedrawers:upgrade_creative>, <enderio:block_cap_bank>, <enderio:block_cap_bank>, <enderio:block_cap_bank>, <contenttweaker:singularity_singularity>, <alchemistry:ingot:71>, <alchemistry:ingot:71>, <alchemistry:ingot:71>, <alchemistry:ingot:71>],
[<storagedrawers:upgrade_creative>, <bigreactors:turbinecreativesteamgenerator>, <bigreactors:turbinecreativesteamgenerator>, <contenttweaker:singularity_singularity>, <mysticalagradditions:stuff:69>, <alchemistry:ingot:71>, <bigreactors:turbinecreativesteamgenerator>, <bigreactors:turbinecreativesteamgenerator>, <alchemistry:ingot:71>],
[<storagedrawers:upgrade_creative>, <rftools:powercell_creative>, <contenttweaker:singularity_singularity>, <mysticalagradditions:stuff:69>, <extrautils2:creativechest>, <mysticalagradditions:stuff:69>, <contenttweaker:singularity_singularity>, <rftools:powercell_creative>, <storagedrawers:upgrade_creative>],
[<storagedrawers:upgrade_creative>, <bigreactors:reactorcreativecoolantport>, <bigreactors:reactorcreativecoolantport>, <contenttweaker:singularity_singularity>, <mysticalagradditions:stuff:69>, <contenttweaker:singularity_singularity>, <bigreactors:reactorcreativecoolantport>, <bigreactors:reactorcreativecoolantport>, <storagedrawers:upgrade_creative>],
[<storagedrawers:upgrade_creative>, <bibliocraft:bookcasecreative>, <bibliocraft:bookcasecreative>, <bibliocraft:bookcasecreative>, <contenttweaker:singularity_singularity>, <bibliocraft:bookcasecreative>, <bibliocraft:bookcasecreative>, <bibliocraft:bookcasecreative>, <storagedrawers:upgrade_creative>],
[<storagedrawers:upgrade_creative>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <storagedrawers:upgrade_creative>],
[<storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>]]);

# Remove recipes for all Storage Drawers Extras
recipes.removeByMod("storagedrawersextra");

print("ENDING StorageDrawers.zs");
