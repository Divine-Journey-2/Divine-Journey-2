# Author: Atricos

import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.immersiveengineering.ArcFurnace;

print("STARTING TwilightForest.zs");

# Lamp of Cinders
recipes.addShaped(<twilightforest:lamp_of_cinders>, [[<roots:moonglow_leaf>,null,null],[<minecraft:gold_ingot>,<contenttweaker:twilight_key>,<minecraft:gold_ingot>],[null,<minecraft:gold_block>,null]]);
<twilightforest:lamp_of_cinders>.addTooltip(format.red("Does not get consumed by regular crafting."));
<twilightforest:lamp_of_cinders>.addTooltip(format.red(format.bold("WARNING: ")) + format.gray(format.bold("AE2 consumes the item! Use an external crafter like an RFTools Crafter when using this item in your ME System!")));

# LATEGAME RECIPES
# in case a public server disabled Twilight Forest, but the player still wants to complete TF quests to 100% the quest book
val affected_twilightforest_items = [<twilightforest:torchberries>,<twilightforest:raven_feather>,<twilightforest:naga_scale>,<twilightforest:trophy>,<twilightforest:trophy:1>,<twilightforest:meef_stroganoff>,<twilightforest:alpha_fur>,<twilightforest:trophy:2>,<twilightforest:hydra_chop>,<twilightforest:fiery_blood>,<twilightforest:borer_essence>,<twilightforest:trophy:3>,<twilightforest:trophy:4>,<twilightforest:trophy:5>,<twilightforest:giant_pickaxe>,<twilightforest:giant_sword>] as IItemStack[];

# Torchberries
recipes.addShaped(<twilightforest:torchberries>, [[<natura:edibles:5>,<minecraft:torch>,<natura:edibles:5>],[<minecraft:torch>,<avaritia:cosmic_meatballs>,<minecraft:torch>],[<natura:edibles:5>,<minecraft:torch>,<natura:edibles:5>]]);

# Raven's Feather
recipes.addShapeless(<twilightforest:raven_feather>, [<bewitchment:ravens_feather>,<contenttweaker:essence_of_extension>]);

# Naga Scale
recipes.addShapeless(<twilightforest:naga_scale>, [<quark:enderdragon_scale>,<contenttweaker:essence_of_inversion>]);

function addTwilightForestTrophyRecipe(output as IItemStack, input as IIngredient) {
	recipes.addShaped(output, [[input,<twilightforest:torchberries>,input],[<twilightforest:torchberries>,<contenttweaker:essence_of_foundation>,<twilightforest:torchberries>],[input,<twilightforest:torchberries>,input]]);

}

# Naga Trophy
addTwilightForestTrophyRecipe(<twilightforest:trophy>, <twilightforest:naga_scale>);

# Lich Trophy
addTwilightForestTrophyRecipe(<twilightforest:trophy:1>, <contenttweaker:wizards_reagent>);

# Meef Stroganoff
recipes.addShaped(<twilightforest:meef_stroganoff>, [[<minecraft:bowl>,<avaritia:ultimate_stew>,<minecraft:bowl>],[null,<minecraft:bowl>,null]]);

# Alpha Yeti Fur
recipes.addShapeless(<twilightforest:alpha_fur>, [<contenttweaker:essence_of_death>,<openblocks:trophy:28>.withTag({entity_id: "minecraft:polar_bear"})]);

# Hydra Trophy 
addTwilightForestTrophyRecipe(<twilightforest:trophy:2>, <bewitchment:adders_fork>);

# Hydra Chop
recipes.addShapeless(<twilightforest:hydra_chop>, [<avaritia:cosmic_meatballs>,<bewitchment:adders_fork>]);

# Fiery Blood
recipes.addShapeless(<twilightforest:fiery_blood>, [<forge:bucketfilled>.withTag({FluidName: "evilcraftblood", Amount: 1000}),<avaritia:ultimate_stew>]);

# Borer Essence
recipes.addShapeless(<twilightforest:borer_essence>, [<contenttweaker:essence_of_motion>,<thermalfoundation:material:800>]);

# Ur-Ghast Trophy 
addTwilightForestTrophyRecipe(<twilightforest:trophy:3>, <divinerpg:ghast_pumpkin>);

# Knight Phantom Trophy 
addTwilightForestTrophyRecipe(<twilightforest:trophy:4>, <botania:phantomink>);

# Snow Queen Trophy 
addTwilightForestTrophyRecipe(<twilightforest:trophy:5>, <contenttweaker:effulgent_apalachian_spike_crown>);

# Giant's Pickaxe
recipes.remove(<twilightforest:giant_pickaxe>);
recipes.addShapeless(<twilightforest:giant_pickaxe>, [<minecraft:stone_pickaxe>,<contenttweaker:essence_of_enlargement>]);

# Giant's Sword
recipes.remove(<twilightforest:giant_sword>);
recipes.addShapeless(<twilightforest:giant_sword>, [<minecraft:stone_sword>,<contenttweaker:essence_of_enlargement>]);

# Tooltips
for a in affected_twilightforest_items {
	a.addTooltip(format.gray("Every Twilight Forest item for which there exists a"));
	a.addTooltip(format.gray("quest is craftable with lategame materials, in case the"));
	a.addTooltip(format.gray("public server you're playing on disabled the Twilight"));
	a.addTooltip(format.gray("Forest, but you still want to 100% the quest book."));
}

# Steeleaf
mods.immersiveengineering.ArcFurnace.addRecipe(<twilightforest:steeleaf_ingot>, <thermalfoundation:material:160>, null, 80, 256, [<roots:spirit_herb>], "Alloying");
EIOAlloySmelter.addRecipe(<twilightforest:steeleaf_ingot>, [<thermalfoundation:material:160>, <roots:spirit_herb>], 4000);
IEAlloySmelter.addRecipe(<twilightforest:steeleaf_ingot>, <thermalfoundation:material:160>, <roots:spirit_herb>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<twilightforest:steeleaf_ingot>, <thermalfoundation:material:160>, <roots:spirit_herb>, 4000);

print("ENDING TwilightForest.zs");