# Author: Atricos
print("STARTING AE2WirelessTerminal.zs");

# Infinity Booster Card
recipes.remove(<ae2wtlib:infinity_booster_card>);
mods.extendedcrafting.TableCrafting.addShaped(<ae2wtlib:infinity_booster_card>,
[[null, <appliedenergistics2:material:42>, <appliedenergistics2:material:42>, <appliedenergistics2:material:42>, <appliedenergistics2:material:42>, <appliedenergistics2:material:42>, null], 
[null, <appliedenergistics2:material:42>, <contenttweaker:thaumium_processor>, <enderio:item_material:11>, <contenttweaker:thaumium_processor>, <appliedenergistics2:material:42>, null], 
[<thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <enderio:item_material:11>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>], 
[<thaumcraft:ingot:1>, <contenttweaker:conducted_impetus>, <contenttweaker:condensed_vis_crystal_cognitio>, <thaumcraft:ingot:1>, <contenttweaker:condensed_vis_crystal_cognitio>, <contenttweaker:conducted_impetus>, <thaumcraft:ingot:1>], 
[<thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <enderio:item_material:11>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>], 
[null, <appliedenergistics2:material:42>, <contenttweaker:thaumium_processor>, <enderio:item_material:11>, <contenttweaker:thaumium_processor>, <appliedenergistics2:material:42>, null], 
[null, <appliedenergistics2:material:42>, <appliedenergistics2:material:42>, <appliedenergistics2:material:42>, <appliedenergistics2:material:42>, <appliedenergistics2:material:42>, null]]);
<ae2wtlib:infinity_booster_card>.addTooltip(format.white("Can only be crafted, is not consumed by operation."));

print("ENDING AE2WirelessTerminal.zs");