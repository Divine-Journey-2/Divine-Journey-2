# Author: Atricos

import crafttweaker.formatting.IFormattedText;

print("STARTING TwilightForest.zs");

# Lamp of Cinders
recipes.addShaped(<twilightforest:lamp_of_cinders>, [[<roots:moonglow_leaf>,null,null],[<minecraft:gold_ingot>,<contenttweaker:twilight_key>,<minecraft:gold_ingot>],[null,<minecraft:gold_block>,null]]);
<twilightforest:lamp_of_cinders>.addTooltip(format.red("Does not get consumed by regular crafting."));
<twilightforest:lamp_of_cinders>.addTooltip(format.red(format.bold("WARNING: ")) + format.gray(format.bold("AE2 consumes the item! Use an external crafter like an RFTools Crafter when using this item in your ME System!")));

print("ENDING TwilightForest.zs");