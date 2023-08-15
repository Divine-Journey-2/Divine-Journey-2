// Author: WaitingIdly

print("STARTING IntegratedNBT.zs");

// NBT Extractor
recipes.remove(<integratednbt:nbt_extractor>);
recipes.addShaped(<integratednbt:nbt_extractor>, [[<contenttweaker:operation_processor>, <integrateddynamics:crystalized_menril_chunk>, <contenttweaker:operation_processor>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:materializer>, <integrateddynamics:crystalized_menril_chunk>], [<contenttweaker:operation_processor>, <integrateddynamics:crystalized_menril_chunk>, <contenttweaker:operation_processor>]]);

// NBT Extractor Remote
recipes.remove(<integratednbt:nbt_extractor_remote>);
recipes.addShaped(<integratednbt:nbt_extractor_remote>.withTag({integratednbt:{}}), [[<contenttweaker:operation_processor>, <integrateddynamics:crystalized_menril_block>, <contenttweaker:operation_processor>], [<integrateddynamics:crystalized_menril_block>, <extrautils2:screen>, <integrateddynamics:crystalized_menril_block>], [<contenttweaker:operation_processor>, <integrateddynamics:crystalized_menril_block>, <contenttweaker:operation_processor>]]);

print("ENDING IntegratedNBT.zs");
