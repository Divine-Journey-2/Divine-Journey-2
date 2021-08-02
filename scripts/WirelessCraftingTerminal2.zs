# Author: Atricos
print("STARTING WirelessCraftingTerminal2.zs");

# Magnet Card
recipes.remove(<wct:magnet_card>);
recipes.addShapedMirrored(<wct:magnet_card>.withTag({MagnetMode: 0}), [[<appliedenergistics2:part:300>,<thermalfoundation:material:160>,null],[<quantumflux:magnet:*>,<appliedenergistics2:material:28>,<thermalfoundation:material:160>],[<appliedenergistics2:part:300>,<thermalfoundation:material:160>,null]]);

# Creative Wireless Crafting Terminal
recipes.addShapedMirrored(<wct:wct_creative>.withTag({IsInRange: 0 as byte}), [[<alchemistry:ingot:104>,null,null],[<contenttweaker:essence_of_enclosement>,<wct:wct>,<contenttweaker:essence_of_opening>],[<alchemistry:ingot:104>,<appliedenergistics2:part:360>,<alchemistry:ingot:104>]]);

# Creative Wireless Fluid Terminal
recipes.addShapedMirrored(<wft:wft_creative>.withTag({IsInRange: 0 as byte}), [[<alchemistry:ingot:72>,null,null],[<contenttweaker:essence_of_enclosement>,<wft:wft>,<contenttweaker:essence_of_opening>],[<alchemistry:ingot:72>,<appliedenergistics2:part:520>,<alchemistry:ingot:72>]]);

# Creative Wireless Ultimate Terminal
recipes.addShapeless(<ae2wtlib:wut_creative>.withTag({StoredTerminals: [{ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wft:wft_creative", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wct:wct_creative", Count: 1 as byte, Damage: 0 as short}], IsInRange: 0 as byte, SelectedTerminal: 0, internalCurrentPower: 1600000.0}), [<wct:wct_creative>,<wft:wft_creative>]);

# Wireless Crafting Terminal
recipes.remove(<wct:wct>);
recipes.addShapedMirrored(<wct:wct>.withTag({}), [[null,<contenttweaker:estimation_processor>,null],[<appliedenergistics2:wireless_terminal>,<botania:corporeaspark:1>,<appliedenergistics2:part:380>],[null,<contenttweaker:estimation_processor>,null]]);

# Wireless Fluid Terminal
recipes.remove(<wft:wft>);
recipes.addShapedMirrored(<wft:wft>.withTag({}), [[null,<contenttweaker:operation_processor>,null],[<appliedenergistics2:wireless_terminal>,<botania:corporeaspark:1>,<appliedenergistics2:part:380>],[null,<contenttweaker:operation_processor>,null]]);

print("ENDING WirelessCraftingTerminal2.zs");