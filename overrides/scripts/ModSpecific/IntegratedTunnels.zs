# Author: Atricos
print("STARTING IntegratedTunnels.zs");

# Item Interface
recipes.remove(<integratedtunnels:part_interface_item_item>);
recipes.addShaped(<integratedtunnels:part_interface_item_item>, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],[<integrateddynamics:variable_transformer>,<appliedenergistics2:interface>,<integrateddynamics:variable_transformer:1>],[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);

# Fluid Interface
recipes.remove(<integratedtunnels:part_interface_fluid_item>);
recipes.addShaped(<integratedtunnels:part_interface_fluid_item>, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],[<integrateddynamics:variable_transformer>,<appliedenergistics2:fluid_interface>,<integrateddynamics:variable_transformer:1>],[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);

# Energy Interface
recipes.remove(<integratedtunnels:part_interface_energy_item>);
recipes.addShaped(<integratedtunnels:part_interface_energy_item>, [[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],[<integrateddynamics:variable_transformer>,<thermaldynamics:duct_0:5>,<integrateddynamics:variable_transformer:1>],[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);

# World Block Importer
recipes.remove(<integratedtunnels:part_importer_world_block_item>);
recipes.addShapeless(<integratedtunnels:part_importer_world_block_item>, [<integratedtunnels:part_importer_item_item>,<appliedenergistics2:part:300>,<openblocks:block_breaker>]);

# World Block Exporter
recipes.remove(<integratedtunnels:part_exporter_world_block_item>);
recipes.addShapeless(<integratedtunnels:part_exporter_world_block_item>, [<integratedtunnels:part_exporter_item_item>,<appliedenergistics2:part:320>,<openblocks:block_placer>]);

# World Fluid Importer
recipes.remove(<integratedtunnels:part_importer_world_fluid_item>);
recipes.addShapeless(<integratedtunnels:part_importer_world_fluid_item>, [<integratedtunnels:part_importer_fluid_item>,<appliedenergistics2:part:302>,<industrialforegoing:fluid_pump>]);

# World Fluid Exporter
recipes.remove(<integratedtunnels:part_exporter_world_fluid_item>);
recipes.addShapeless(<integratedtunnels:part_exporter_world_fluid_item>, [<integratedtunnels:part_exporter_fluid_item>,<appliedenergistics2:part:321>,<enderio:block_niard>]);

# Player Simulator
recipes.remove(<integratedtunnels:part_player_simulator_item>);
recipes.addShapedMirrored(<integratedtunnels:part_player_simulator_item>, [[<alchemistry:ingot:3>,<integratedtunnels:part_importer_world_block_item>,<alchemistry:ingot:3>],[<integratedtunnels:part_importer_world_item_item>,<extrautils2:user>,<integratedtunnels:part_exporter_world_item_item>],[<alchemistry:ingot:3>,<integratedtunnels:part_exporter_world_block_item>,<alchemistry:ingot:3>]]);

# NBT clearing recipes
recipes.addHiddenShapeless("id_energy_interface_nbt_clear", <integratedtunnels:part_interface_energy_item>, [<integratedtunnels:part_interface_energy_item>]);
recipes.addHiddenShapeless("id_energy_importer_nbt_clear", <integratedtunnels:part_importer_energy_item>, [<integratedtunnels:part_importer_energy_item>]);
recipes.addHiddenShapeless("id_energy_exporter_nbt_clear", <integratedtunnels:part_exporter_energy_item>, [<integratedtunnels:part_exporter_energy_item>]);
recipes.addHiddenShapeless("id_world_energy_importer_nbt_clear", <integratedtunnels:part_importer_world_energy_item>, [<integratedtunnels:part_importer_world_energy_item>]);
recipes.addHiddenShapeless("id_world_energy_exporter_nbt_clear", <integratedtunnels:part_exporter_world_energy_item>, [<integratedtunnels:part_exporter_world_energy_item>]);
recipes.addHiddenShapeless("id_item_interface_nbt_clear", <integratedtunnels:part_interface_item_item>, [<integratedtunnels:part_interface_item_item>]);
recipes.addHiddenShapeless("id_item_importer_nbt_clear", <integratedtunnels:part_importer_item_item>, [<integratedtunnels:part_importer_item_item>]);
recipes.addHiddenShapeless("id_item_exporter_nbt_clear", <integratedtunnels:part_exporter_item_item>, [<integratedtunnels:part_exporter_item_item>]);
recipes.addHiddenShapeless("id_world_item_importer_nbt_clear", <integratedtunnels:part_importer_world_item_item>, [<integratedtunnels:part_importer_world_item_item>]);
recipes.addHiddenShapeless("id_world_item_exporter_nbt_clear", <integratedtunnels:part_exporter_world_item_item>, [<integratedtunnels:part_exporter_world_item_item>]);
recipes.addHiddenShapeless("id_fluid_interface_nbt_clear", <integratedtunnels:part_interface_fluid_item>, [<integratedtunnels:part_interface_fluid_item>]);
recipes.addHiddenShapeless("id_fluid_importer_nbt_clear", <integratedtunnels:part_importer_fluid_item>, [<integratedtunnels:part_importer_fluid_item>]);
recipes.addHiddenShapeless("id_fluid_exporter_nbt_clear", <integratedtunnels:part_exporter_fluid_item>, [<integratedtunnels:part_exporter_fluid_item>]);
recipes.addHiddenShapeless("id_world_fluid_importer_nbt_clear", <integratedtunnels:part_importer_world_fluid_item>, [<integratedtunnels:part_importer_world_fluid_item>]);
recipes.addHiddenShapeless("id_world_fluid_exporter_nbt_clear", <integratedtunnels:part_exporter_world_fluid_item>, [<integratedtunnels:part_exporter_world_fluid_item>]);
recipes.addHiddenShapeless("id_world_block_importer_nbt_clear", <integratedtunnels:part_importer_world_block_item>, [<integratedtunnels:part_importer_world_block_item>]);
recipes.addHiddenShapeless("id_world_block_exporter_nbt_clear", <integratedtunnels:part_exporter_world_block_item>, [<integratedtunnels:part_exporter_world_block_item>]);
recipes.addHiddenShapeless("id_player_simulator_nbt_clear", <integratedtunnels:part_player_simulator_item>, [<integratedtunnels:part_player_simulator_item>]);

print("ENDING IntegratedTunnels.zs");