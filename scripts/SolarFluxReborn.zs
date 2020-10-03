# Author: Atricos
print("STARTING SolarFluxReborn.zs");

# Mirror
recipes.remove(<solarflux:mirror>);
recipes.addShaped(<solarflux:mirror> * 3, [[<ore:blockGlassColorless>,<ore:blockGlassColorless>,<ore:blockGlassColorless>],[null,<thermalfoundation:material:1028>,null]]);

# Solar Panel I
recipes.remove(<solarflux:solar_panel_1>);
recipes.addShaped(<solarflux:solar_panel_1>, [[<solarflux:mirror>,<solarflux:mirror>,<solarflux:mirror>],[<ore:plankWood>,<minecraft:redstone>,<ore:plankWood>],[<ore:stone>,<enderio:item_alloy_ingot>,<ore:stone>]]);

# Photovoltaic Cell I
recipes.remove(<solarflux:photovoltaic_cell_1>);
recipes.addShaped(<solarflux:photovoltaic_cell_1> * 3, [[<ore:blockGlassLightBlue>,<ore:blockGlassLightBlue>,<ore:blockGlassLightBlue>],[<enderio:item_alloy_ingot:4>,<enderio:item_alloy_ingot:4>,<enderio:item_alloy_ingot:4>],[<solarflux:mirror>,<solarflux:mirror>,<solarflux:mirror>]]);

# Solar Panel III
recipes.remove(<solarflux:solar_panel_3>);
recipes.addShaped(<solarflux:solar_panel_3>, [[<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>],[<solarflux:solar_panel_2>,<thermalfoundation:material:290>,<solarflux:solar_panel_2>],[<solarflux:solar_panel_2>,<thermalfoundation:material:290>,<solarflux:solar_panel_2>]]);

# Photovoltaic Cell II
recipes.remove(<solarflux:photovoltaic_cell_2>);
recipes.addShaped(<solarflux:photovoltaic_cell_2> * 3, [[<ore:blockGlassCyan>,<ore:blockGlassCyan>,<ore:blockGlassCyan>],[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>]]);

# Solar Panel IV
recipes.remove(<solarflux:solar_panel_4>);
recipes.addShaped(<solarflux:solar_panel_4>, [[<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>],[<solarflux:solar_panel_3>,<enderio:item_material:73>,<solarflux:solar_panel_3>],[<solarflux:solar_panel_3>,<enderio:item_material:73>,<solarflux:solar_panel_3>]]);

# Photovoltaic Cell III
recipes.remove(<solarflux:photovoltaic_cell_3>);
recipes.addShaped(<solarflux:photovoltaic_cell_3> * 3, [[<ore:blockGlassBlue>,<ore:blockGlassBlue>,<ore:blockGlassBlue>],[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>],[<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>]]);

# Solar Panel V
recipes.remove(<solarflux:solar_panel_5>);
recipes.addShaped(<solarflux:solar_panel_5>, [[<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>],[<solarflux:solar_panel_4>,<actuallyadditions:item_crystal_empowered:5>,<solarflux:solar_panel_4>],[<solarflux:solar_panel_4>,<actuallyadditions:item_crystal_empowered:5>,<solarflux:solar_panel_4>]]);

# Photovoltaic Cell IV
# Solar Panel VI
# Photovoltaic Cell V
# Solar Panel VII
# Photovoltaic Cell VI
# Solar Panel VIII
# Wyvern Solar Panel
# Draconic Solar Panel
# Neutronium Solar Panel
# Solar Panel of Infinity

# Blank Upgrade
recipes.remove(<solarflux:blank_upgrade>);
recipes.addShaped(<solarflux:blank_upgrade>, [[null,<enderio:item_alloy_ingot:6>,null],[<enderio:item_alloy_ingot:6>,<solarflux:mirror>,<enderio:item_alloy_ingot:6>],[null,<enderio:item_alloy_ingot:6>,null]]);

# Efficiency Upgrade
recipes.remove(<solarflux:efficiency_upgrade>);
recipes.addShaped(<solarflux:efficiency_upgrade>, [[null,<solarflux:photovoltaic_cell_1>,null],[<solarflux:photovoltaic_cell_1>,<solarflux:blank_upgrade>,<solarflux:photovoltaic_cell_1>],[null,<solarflux:photovoltaic_cell_1>,null]]);

# Transfer Rate Upgrade
recipes.remove(<solarflux:transfer_rate_upgrade>);
recipes.addShaped(<solarflux:transfer_rate_upgrade>, [[<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>],[<industrialforegoing:pink_slime_ingot>,<solarflux:blank_upgrade>,<industrialforegoing:pink_slime_ingot>],[<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>]]);

# Capacity Upgrade
recipes.remove(<solarflux:capacity_upgrade>);
recipes.addShaped(<solarflux:capacity_upgrade>, [[null,<enderio:item_alloy_ingot:3>,null],[<enderio:item_alloy_ingot:3>,<solarflux:blank_upgrade>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:3>,<thermalexpansion:cell>.withTag({Level: 0 as byte}),<enderio:item_alloy_ingot:3>]]);

# Machine Traversal Upgrade
recipes.remove(<solarflux:traversal_upgrade>);
recipes.addShaped(<solarflux:traversal_upgrade>, [[<minecraft:piston>,<enderio:item_alloy_ingot:2>,<minecraft:piston>],[<enderio:item_alloy_ingot:2>,<solarflux:blank_upgrade>,<enderio:item_alloy_ingot:2>],[<minecraft:piston>,<enderio:item_alloy_ingot:2>,<minecraft:piston>]]);

# Dispersive Upgrade
recipes.remove(<solarflux:dispersive_upgrade>);
recipes.addShaped(<solarflux:dispersive_upgrade>, [[<enderio:item_alloy_ingot:6>,<minecraft:ender_eye>,<enderio:item_alloy_ingot:6>],[<enderio:item_material:43>,<solarflux:blank_upgrade>,<enderio:item_material:43>],[<enderio:item_alloy_ingot:6>,<minecraft:ender_eye>,<enderio:item_alloy_ingot:6>]]);

# Block Charging Upgrade
recipes.remove(<solarflux:block_charging_upgrade>);
recipes.addShaped(<solarflux:block_charging_upgrade>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:6>],[<enderio:item_material:43>,<solarflux:blank_upgrade>,<enderio:item_material:43>],[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:6>]]);

# Furnace Upgrade
recipes.remove(<solarflux:furnace_upgrade>);
recipes.addShaped(<solarflux:furnace_upgrade>, [[<enderio:item_alloy_ingot:6>,<immersiveengineering:metal_decoration0>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<solarflux:blank_upgrade>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<immersiveengineering:metal_decoration0>,<enderio:item_alloy_ingot:6>]]);

print("ENDING SolarFluxReborn.zs");