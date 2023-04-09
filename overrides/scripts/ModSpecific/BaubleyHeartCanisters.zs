# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;
import mods.astralsorcery.Altar;

print("STARTING BaubleyHeartCanisters.zs");

# Canister
recipes.remove(<bhc:canister>);
recipes.addShaped(<bhc:canister>, [[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<ore:blockSteel>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>]]);

# Red Heart
<bhc:red_heart>.addTooltip(format.white("Drops rarely from all non-boss mobs."));

# Red Heart Canister
recipes.remove(<bhc:red_heart_canister>);
recipes.addShapeless(<bhc:red_heart_canister>, [<bhc:red_heart>,<thermalfoundation:material:1028>,<tconstruct:materials:17>,<bhc:canister>]);
recipes.addHiddenShapeless("bhc_clear1", <bhc:red_heart_canister>, [<bhc:red_heart_canister>]);

# Relic Apple
recipes.remove(<bhc:relic_apple>);
recipes.addShaped(<bhc:relic_apple>, [[null,<actuallyadditions:block_crystal_empowered:2>,null],[<actuallyadditions:block_crystal_empowered:4>,<minecraft:golden_apple:1>,<actuallyadditions:block_crystal_empowered:4>],[null,<actuallyadditions:block_crystal_empowered:2>,null]]);
recipes.addShaped(<bhc:relic_apple>, [[null,<actuallyadditions:block_crystal_empowered:4>,null],[<actuallyadditions:block_crystal_empowered:2>,<minecraft:golden_apple:1>,<actuallyadditions:block_crystal_empowered:2>],[null,<actuallyadditions:block_crystal_empowered:4>,null]]);

# Orange Heart
<bhc:orange_heart>.addTooltip(format.white("Drops rarely from most boss mobs,"));
<bhc:orange_heart>.addTooltip(format.white("and can be crafted from Withering Souls."));
recipes.addShaped(<bhc:orange_heart>, [[<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>],[<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>],[<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>]]);

# Orange Heart Canister
recipes.remove(<bhc:orange_heart_canister>);
recipes.addShapeless(<bhc:orange_heart_canister>, [<bhc:red_heart_canister>,<bhc:relic_apple>,<bhc:orange_heart>,<minecraft:totem_of_undying>]);
recipes.addHiddenShapeless("bhc_clear2", <bhc:orange_heart_canister>, [<bhc:orange_heart_canister>]);

# Green Heart
mods.botania.RuneAltar.addRecipe(<bhc:green_heart>, [<bhc:red_heart>,<bhc:red_heart>,<bhc:orange_heart>,<contenttweaker:environmental_core>,<contenttweaker:environmental_core>,<contenttweaker:environmental_core>,<contenttweaker:environmental_core>,<contenttweaker:defensive_core>,<contenttweaker:defensive_core>,<bloodmagic:blood_shard:1>,<contenttweaker:angelic_silicon_crystal_mixture>], 100000);
<bhc:green_heart>.addTooltip("Does not drop. Can only be crafted.");

# Green Heart Canister
recipes.remove(<bhc:green_heart_canister>);
recipes.addShapeless(<bhc:green_heart_canister>, [<bhc:orange_heart_canister>,<bhc:green_heart>,<liquid:lifeessence> * 1000,<botania:storage:1>]);
recipes.addHiddenShapeless("bhc_clear3", <bhc:green_heart_canister>, [<bhc:green_heart_canister>]);

function addAstralSorceryIrridescentAltarRecipeWithConstellation(name as string, output as IItemStack, starlight as int, i as IIngredient[][], additionals as IIngredient[], constellation as string) {

var recipe_list = [i[1][1], i[1][2], i[1][3], i[2][1], i[2][2], i[2][3], i[3][1], i[3][2], i[3][3], i[0][0], i[0][4], i[4][0], i[4][4], i[0][1], i[0][3], i[1][0], i[1][4], i[3][0], i[3][4], i[4][1], i[4][3], i[0][2], i[2][0], i[2][4], i[4][2]] as IIngredient[];
for item in additionals {
	recipe_list += item;
}
mods.astralsorcery.Altar.addTraitAltarRecipe(name, output, starlight, 100, recipe_list, constellation);

}

# Blue Heart
addAstralSorceryIrridescentAltarRecipeWithConstellation("bhc:blue_heart", <bhc:blue_heart>, 5000,
[[<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}),<contenttweaker:galactic_block>,<bhc:red_heart>,<bhc:orange_heart>,<bhc:green_heart>],
[<contenttweaker:galactic_block>,<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}),<contenttweaker:galactic_block>,<bhc:red_heart>,<bhc:orange_heart>],
[<bhc:red_heart>,<contenttweaker:galactic_block>,<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}),<contenttweaker:galactic_block>,<bhc:red_heart>],
[<bhc:orange_heart>,<bhc:red_heart>,<contenttweaker:galactic_block>,<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}),<contenttweaker:galactic_block>],
[<bhc:green_heart>,<bhc:orange_heart>,<bhc:red_heart>,<contenttweaker:galactic_block>,<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}})]], [], "astralsorcery.constellation.horologium");
<bhc:blue_heart>.addTooltip("Does not drop. Can only be crafted.");

# Blue Heart Canister
recipes.remove(<bhc:blue_heart_canister>);
recipes.addShapeless(<bhc:blue_heart_canister>, [<bhc:green_heart_canister>,<bhc:blue_heart>,<galacticraftplanets:asteroids_block:7>,<contenttweaker:galactic_block>,<contenttweaker:galactic_block>,<draconicevolution:draconic_core>,<draconicevolution:draconic_core>]);
recipes.addHiddenShapeless("bhc_clear4", <bhc:blue_heart_canister>, [<bhc:blue_heart_canister>]);

# Heart Amulet
recipes.remove(<bhc:heart_amulet>);
recipes.addShaped(<bhc:heart_amulet>, [[<ore:string>,<ore:string>,<ore:string>],[<thermalfoundation:material:33>,null,<thermalfoundation:material:33>],[<thermalfoundation:material:33>,<bhc:red_heart>,<thermalfoundation:material:33>]]);

print("ENDING BaubleyHeartCanisters.zs");
