# Author: Atricos
print("STARTING IntegratedDynamics.zs");

# Menril Sapling
recipes.addShaped(<integrateddynamics:menril_sapling>, [[null,<thermalfoundation:material:136>,null],[<thermalfoundation:material:136>,<ore:treeSapling>,<thermalfoundation:material:136>],[<thermalfoundation:material:136>,<quantumflux:craftingpiece:6>,<thermalfoundation:material:136>]]);

# Squeezer
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>],[<integrateddynamics:crystalized_menril_chunk>,<immersiveengineering:metal_device0:5>,<integrateddynamics:crystalized_menril_chunk>],[<enderio:item_alloy_ingot:6>,<teslacorelib:machine_case>,<enderio:item_alloy_ingot:6>]]);

# Drying Basin
recipes.remove(<integrateddynamics:drying_basin>);
recipes.addShaped(<integrateddynamics:drying_basin>, [[<enderio:item_alloy_ingot:6>,null,<enderio:item_alloy_ingot:6>],[<integrateddynamics:menril_log>,null,<integrateddynamics:menril_log>],[<integrateddynamics:menril_log>,<minecraft:cauldron>,<integrateddynamics:menril_log>]]);

# Logic Cable
recipes.remove(<integrateddynamics:cable>);
recipes.addShaped(<integrateddynamics:cable> * 3, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],[<enderio:item_power_conduit:2>,<enderio:item_power_conduit:2>,<enderio:item_power_conduit:2>],[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);





print("ENDING IntegratedDynamics.zs");