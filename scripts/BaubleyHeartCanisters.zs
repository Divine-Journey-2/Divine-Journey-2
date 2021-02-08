# Author: Atricos
print("STARTING BaubleyHeartCanisters.zs");

# Canister
recipes.remove(<bhc:canister>);
recipes.addShaped(<bhc:canister>, [[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<ore:blockSteel>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>]]);

# Red Heart Canister
recipes.remove(<bhc:red_heart_canister>);
recipes.addShapeless(<bhc:red_heart_canister>, [<bhc:red_heart>,<thermalfoundation:material:1028>,<tconstruct:materials:17>,<bhc:canister>]);

# Relic Apple
recipes.remove(<bhc:relic_apple>);
recipes.addShaped(<bhc:relic_apple>, [[null,<actuallyadditions:block_crystal_empowered:2>,null],[<actuallyadditions:block_crystal_empowered:4>,<minecraft:golden_apple:1>,<actuallyadditions:block_crystal_empowered:4>],[null,<actuallyadditions:block_crystal_empowered:2>,null]]);
recipes.addShaped(<bhc:relic_apple>, [[null,<actuallyadditions:block_crystal_empowered:4>,null],[<actuallyadditions:block_crystal_empowered:2>,<minecraft:golden_apple:1>,<actuallyadditions:block_crystal_empowered:2>],[null,<actuallyadditions:block_crystal_empowered:4>,null]]);

# Orange Heart Canister
recipes.remove(<bhc:orange_heart_canister>);
recipes.addShapeless(<bhc:orange_heart_canister>, [<bhc:red_heart_canister>,<bhc:relic_apple>,<bhc:orange_heart>,<minecraft:totem_of_undying>]);

# Green Heart Canister
recipes.remove(<bhc:green_heart_canister>);
recipes.addShapeless(<bhc:green_heart_canister>, [<bhc:orange_heart_canister>,<bhc:green_heart>,<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}),<botania:storage:1>]);

# Blue Heart Canister
recipes.remove(<bhc:blue_heart_canister>);
recipes.addShapeless(<bhc:blue_heart_canister>, [<bhc:green_heart_canister>,<bhc:blue_heart>,<astralsorcery:itemcraftingcomponent:1>,<galacticraftplanets:asteroids_block:7>]);

# Orange Heart
recipes.addShaped(<bhc:orange_heart>, [[<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>],[<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>],[<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>,<mysticalagradditions:stuff:1>]]);

# Heart Amulet
recipes.remove(<bhc:heart_amulet>);
recipes.addShaped(<bhc:heart_amulet>, [[<ore:string>,<ore:string>,<ore:string>],[<thermalfoundation:material:33>,null,<thermalfoundation:material:33>],[<thermalfoundation:material:33>,<bhc:red_heart>,<thermalfoundation:material:33>]]);

print("ENDING BaubleyHeartCanisters.zs");