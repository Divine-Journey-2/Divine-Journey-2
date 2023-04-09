# Author: Atricos
print("STARTING TeslaCoreLib.zs");

# Machine Case
recipes.remove(<teslacorelib:machine_case>);
recipes.addShaped(<teslacorelib:machine_case>, [[<chisel:stonebrick2:9>,<enderio:item_material:68>,<chisel:stonebrick2:9>],[<enderio:item_material:68>,<thermalfoundation:storage_alloy>,<enderio:item_material:68>],[<chisel:stonebrick2:9>,<enderio:item_material:68>,<chisel:stonebrick2:9>]]);

# Base Addon
recipes.remove(<teslacorelib:base_addon>);
recipes.addShaped(<teslacorelib:base_addon>, [[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],[<enderio:item_alloy_ingot:6>,<thermalfoundation:material:200>,<enderio:item_alloy_ingot:6>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

# Energy Upgrade I
recipes.remove(<teslacorelib:energy_tier1>);
recipes.addShaped(<teslacorelib:energy_tier1>, [[null,<thermalfoundation:material:25>,null],[<ore:ingotOsgloglas>,<teslacorelib:base_addon>,<ore:ingotOsgloglas>],[null,<thermalfoundation:material:25>,null]]);

# Energy Upgrade II
recipes.remove(<teslacorelib:energy_tier2>);
recipes.addShaped(<teslacorelib:energy_tier2>, [[null,<thermalfoundation:material:26>,null],[<ore:ingotOsgloglas>,<teslacorelib:energy_tier1>,<ore:ingotOsgloglas>],[null,<thermalfoundation:material:26>,null]]);

# Speed Upgrade I
recipes.remove(<teslacorelib:speed_tier1>);
recipes.addShaped(<teslacorelib:speed_tier1>, [[null,<teslacorelib:base_addon>,null],[<enderio:item_alloy_ingot:3>,<thermalfoundation:material:25>,<enderio:item_alloy_ingot:3>],[null,<extrautils2:ingredients:6>,null]]);

# Speed Upgrade II
recipes.remove(<teslacorelib:speed_tier2>);
recipes.addShaped(<teslacorelib:speed_tier2>, [[null,<thermalfoundation:material:26>,null],[<enderio:item_alloy_ingot:3>,<teslacorelib:speed_tier1>,<enderio:item_alloy_ingot:3>],[null,<thermalfoundation:material:26>,null]]);

# Tesla Wrench
recipes.remove(<teslacorelib:wrench>);
recipes.addShapedMirrored(<teslacorelib:wrench>, [[<thermalfoundation:material:26>,null,<thermalfoundation:material:26>],[null,<thermalfoundation:material:136>,null],[<thermalfoundation:material:136>,null,null]]);

print("ENDING TeslaCoreLib.zs");