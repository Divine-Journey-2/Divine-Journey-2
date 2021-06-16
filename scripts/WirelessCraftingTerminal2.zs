# Author: Atricos
print("STARTING WirelessCraftingTerminal2.zs");

# Magnet Card
recipes.remove(<wct:magnet_card>);
recipes.addShapedMirrored(<wct:magnet_card>.withTag({MagnetMode: 0}), [[<appliedenergistics2:part:300>,<thermalfoundation:material:160>,null],[<quantumflux:magnet:*>,<appliedenergistics2:material:28>,<thermalfoundation:material:160>],[<appliedenergistics2:part:300>,<thermalfoundation:material:160>,null]]);

print("ENDING WirelessCraftingTerminal2.zs");