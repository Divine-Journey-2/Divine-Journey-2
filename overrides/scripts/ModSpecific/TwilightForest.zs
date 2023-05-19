// Author: Atricos

import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.immersiveengineering.ArcFurnace;

print("STARTING TwilightForest.zs");

// Lamp of Cinders
recipes.addShaped(<twilightforest:lamp_of_cinders>, [[<roots:moonglow_leaf>,null,null],[<minecraft:gold_ingot>,<contenttweaker:twilight_key>,<minecraft:gold_ingot>],[null,<minecraft:gold_block>,null]]);
<twilightforest:lamp_of_cinders>.addTooltip(game.localize("dj2.lamp_of_cinders.desc0"));
<twilightforest:lamp_of_cinders>.addTooltip(game.localize("dj2.lamp_of_cinders.desc1"));

// Steeleaf
mods.immersiveengineering.ArcFurnace.addRecipe(<twilightforest:steeleaf_ingot>, <thermalfoundation:material:160>, null, 80, 256, [<roots:spirit_herb>], "Alloying");
EIOAlloySmelter.addRecipe(<twilightforest:steeleaf_ingot>, [<thermalfoundation:material:160>, <roots:spirit_herb>], 4000);
IEAlloySmelter.addRecipe(<twilightforest:steeleaf_ingot>, <thermalfoundation:material:160>, <roots:spirit_herb>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<twilightforest:steeleaf_ingot>, <thermalfoundation:material:160>, <roots:spirit_herb>, 4000);

print("ENDING TwilightForest.zs");
