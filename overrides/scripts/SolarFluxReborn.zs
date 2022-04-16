# Author: Atricos, WaitingIdly
print("STARTING SolarFluxReborn.zs");

# Mirror
recipes.remove(<solarflux:mirror>);
recipes.addShaped(<solarflux:mirror> * 3, [[<ore:blockGlassColorless>,<ore:blockGlassColorless>,<ore:blockGlassColorless>],[null,<thermalfoundation:material:1028>,null]]);

# Solar Panel I
recipes.remove(<solarflux:solar_panel_1>);
recipes.addShaped(<solarflux:solar_panel_1> * 2, [[<solarflux:mirror>,<solarflux:mirror>,<solarflux:mirror>],[<ore:plankWood>,<minecraft:redstone>,<ore:plankWood>],[<ore:stone>,<enderio:item_alloy_ingot>,<ore:stone>]]);

# Photovoltaic Cell I
recipes.remove(<solarflux:photovoltaic_cell_1>);
recipes.addShaped(<solarflux:photovoltaic_cell_1> * 3, [[<ore:blockGlassLightBlue>,<ore:blockGlassLightBlue>,<ore:blockGlassLightBlue>],[<enderio:item_alloy_ingot:4>,<enderio:item_alloy_ingot:4>,<enderio:item_alloy_ingot:4>],[<solarflux:mirror>,<solarflux:mirror>,<solarflux:mirror>]]);

# Solar Panel II
recipes.remove(<solarflux:solar_panel_2>);
recipes.addShaped(<solarflux:solar_panel_2> * 4, [[<solarflux:solar_panel_1>,<solarflux:solar_panel_1>,<solarflux:solar_panel_1>],[<solarflux:solar_panel_1>,<minecraft:piston>,<solarflux:solar_panel_1>],[<solarflux:solar_panel_1>,<solarflux:solar_panel_1>,<solarflux:solar_panel_1>]]);

# Solar Panel III
recipes.remove(<solarflux:solar_panel_3>);
recipes.addShaped(<solarflux:solar_panel_3> * 2, [[<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>],[<solarflux:solar_panel_2>,<thermalfoundation:material:290>,<solarflux:solar_panel_2>],[<solarflux:solar_panel_2>,<thermalfoundation:material:290>,<solarflux:solar_panel_2>]]);

# Photovoltaic Cell II
recipes.remove(<solarflux:photovoltaic_cell_2>);
recipes.addShaped(<solarflux:photovoltaic_cell_2> * 3, [[<ore:blockGlassCyan>,<ore:blockGlassCyan>,<ore:blockGlassCyan>],[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>]]);

# Solar Panel IV
recipes.remove(<solarflux:solar_panel_4>);
recipes.addShaped(<solarflux:solar_panel_4> * 2, [[<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>],[<solarflux:solar_panel_3>,<enderio:item_material:73>,<solarflux:solar_panel_3>],[<solarflux:solar_panel_3>,<enderio:item_material:73>,<solarflux:solar_panel_3>]]);

# Photovoltaic Cell III
recipes.remove(<solarflux:photovoltaic_cell_3>);
recipes.addShaped(<solarflux:photovoltaic_cell_3> * 3, [[<ore:blockGlassBlue>,<ore:blockGlassBlue>,<ore:blockGlassBlue>],[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],[<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>]]);

# Solar Panel V
recipes.remove(<solarflux:solar_panel_5>);
recipes.addShaped(<solarflux:solar_panel_5> * 2, [[<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>],[<solarflux:solar_panel_4>,<contenttweaker:crystalline_brown_slime_ingot>,<solarflux:solar_panel_4>],[<solarflux:solar_panel_4>,<contenttweaker:crystalline_brown_slime_ingot>,<solarflux:solar_panel_4>]]);

# Photovoltaic Cell IV
recipes.remove(<solarflux:photovoltaic_cell_4>);
recipes.addShaped(<solarflux:photovoltaic_cell_4> * 3, [[<ore:blockGlassBlue>,<ore:blockGlassBlue>,<ore:blockGlassBlue>],[<actuallyadditions:item_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:1>],[<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>]]);

# Solar Panel VI
recipes.remove(<solarflux:solar_panel_6>);
recipes.addShaped(<solarflux:solar_panel_6> * 2, [[<solarflux:photovoltaic_cell_4>,<solarflux:photovoltaic_cell_4>,<solarflux:photovoltaic_cell_4>],[<solarflux:solar_panel_5>,<actuallyadditions:item_crystal_empowered:2>,<solarflux:solar_panel_5>],[<solarflux:solar_panel_5>,<actuallyadditions:item_crystal_empowered:2>,<solarflux:solar_panel_5>]]);

# Photovoltaic Cell V
recipes.remove(<solarflux:photovoltaic_cell_5>);
recipes.addShaped(<solarflux:photovoltaic_cell_5> * 3, [[<ore:blockGlassLime>,<ore:blockGlassLime>,<ore:blockGlassLime>],[<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>],[<solarflux:photovoltaic_cell_4>,<solarflux:photovoltaic_cell_4>,<solarflux:photovoltaic_cell_4>]]);

# Solar Panel VII
recipes.remove(<solarflux:solar_panel_7>);
recipes.addShaped(<solarflux:solar_panel_7> * 2, [[<solarflux:photovoltaic_cell_5>,<solarflux:photovoltaic_cell_5>,<solarflux:photovoltaic_cell_5>],[<solarflux:solar_panel_6>,<actuallyadditions:item_crystal_empowered:4>,<solarflux:solar_panel_6>],[<solarflux:solar_panel_6>,<actuallyadditions:item_crystal_empowered:4>,<solarflux:solar_panel_6>]]);

# Photovoltaic Cell VI
recipes.remove(<solarflux:photovoltaic_cell_6>);
recipes.addShaped(<solarflux:photovoltaic_cell_6> * 3, [[<ore:blockGlassGreen>,<ore:blockGlassGreen>,<ore:blockGlassGreen>],[<enderutilities:enderpart:1>,<enderutilities:enderpart:1>,<enderutilities:enderpart:1>],[<solarflux:photovoltaic_cell_5>,<solarflux:photovoltaic_cell_5>,<solarflux:photovoltaic_cell_5>]]);

# Solar Panel VIII
recipes.remove(<solarflux:solar_panel_8>);
recipes.addShaped(<solarflux:solar_panel_8> * 2, [[<solarflux:photovoltaic_cell_6>,<solarflux:photovoltaic_cell_6>,<solarflux:photovoltaic_cell_6>],[<solarflux:solar_panel_7>,<enderutilities:enderpart:16>,<solarflux:solar_panel_7>],[<solarflux:solar_panel_7>,<enderutilities:enderpart:16>,<solarflux:solar_panel_7>]]);

# Wyvern Solar Panel
recipes.remove(<solarflux:solar_panel_wyvern>);
recipes.addShaped(<solarflux:solar_panel_wyvern> * 2, [[<contenttweaker:photovoltaic_cell_vii>,<contenttweaker:photovoltaic_cell_vii>,<contenttweaker:photovoltaic_cell_vii>],[<solarflux:solar_panel_8>,<draconicevolution:wyvern_core>,<solarflux:solar_panel_8>],[<solarflux:solar_panel_8>,<draconicevolution:wyvern_core>,<solarflux:solar_panel_8>]]);

# Draconic Solar Panel
recipes.remove(<solarflux:solar_panel_draconic>);
recipes.addShaped(<solarflux:solar_panel_draconic> * 2, [[<contenttweaker:photovoltaic_cell_viii>,<contenttweaker:photovoltaic_cell_viii>,<contenttweaker:photovoltaic_cell_viii>],[<solarflux:solar_panel_wyvern>,<draconicevolution:awakened_core>,<solarflux:solar_panel_wyvern>],[<solarflux:solar_panel_wyvern>,<draconicevolution:awakened_core>,<solarflux:solar_panel_wyvern>]]);

# Chaotic Solar Panel
recipes.addShaped(<solarflux:solar_panel_chaotic> * 2, [[<contenttweaker:photovoltaic_cell_ix>,<contenttweaker:photovoltaic_cell_ix>,<contenttweaker:photovoltaic_cell_ix>],[<solarflux:solar_panel_draconic>,<draconicevolution:chaotic_core>,<solarflux:solar_panel_draconic>],[<solarflux:solar_panel_draconic>,<draconicevolution:chaotic_core>,<solarflux:solar_panel_draconic>]]);

# Neutronium Solar Panel
mods.avaritia.ExtremeCrafting.remove(<solarflux:solar_panel_neutronium>);
recipes.addShaped(<solarflux:solar_panel_neutronium> * 2, [[<contenttweaker:photovoltaic_cell_x>,<contenttweaker:photovoltaic_cell_x>,<contenttweaker:photovoltaic_cell_x>],[<solarflux:solar_panel_chaotic>,<contenttweaker:neutronium_singularity>,<solarflux:solar_panel_chaotic>],[<solarflux:solar_panel_chaotic>,<contenttweaker:neutronium_singularity>,<solarflux:solar_panel_chaotic>]]);

# Solar Panel of Infinity
mods.avaritia.ExtremeCrafting.remove(<solarflux:solar_panel_infinity>);
recipes.addShaped(<solarflux:solar_panel_infinity> * 2, [[<contenttweaker:photovoltaic_cell_xi>,<contenttweaker:photovoltaic_cell_xi>,<contenttweaker:photovoltaic_cell_xi>],[<solarflux:solar_panel_neutronium>,<contenttweaker:infinite_singularity>,<solarflux:solar_panel_neutronium>],[<solarflux:solar_panel_neutronium>,<contenttweaker:infinite_singularity>,<solarflux:solar_panel_neutronium>]]);

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
