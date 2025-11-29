// Author: Atricos

import crafttweaker.item.IItemStack;

print("STARTING Natura.zs");

// Stick recipes
recipes.remove(<natura:sticks:9>);
recipes.addShaped(<natura:sticks:9> * 4, [[<natura:nether_planks:0>,null],[null,<natura:nether_planks:0>]]);
recipes.remove(<natura:sticks:10>);
recipes.addShaped(<natura:sticks:10> * 4, [[<natura:nether_planks:2>,null],[null,<natura:nether_planks:2>]]);
recipes.remove(<natura:sticks:11>);
recipes.addShaped(<natura:sticks:11> * 4, [[<natura:nether_planks:3>,null],[null,<natura:nether_planks:3>]]);
recipes.remove(<natura:sticks:12>);
recipes.addShaped(<natura:sticks:12> * 4, [[<natura:nether_planks:1>,null],[null,<natura:nether_planks:1>]]);

// Quartz Shears
recipes.remove(<natura:netherquartz_shears>);
recipes.addShaped(<natura:netherquartz_shears>, [[null,<minecraft:quartz>,null],[<minecraft:netherbrick>,<minecraft:string>,<minecraft:quartz>],[<immersiveengineering:material:1>,<minecraft:netherbrick>,null]]);

// Disabling the Nether Furnace since it's already added by Better Nether
recipes.remove(<natura:netherrack_furnace>);

// Removing the various Crafting Table recipes
recipes.remove(<natura:overworld_workbenches:*>);
recipes.remove(<natura:nether_workbenches:*>);

// Blaze Hopper
recipes.remove(<natura:blaze_hopper>);
recipes.addShaped(<natura:blaze_hopper>, [[<ore:rodBlaze>,<ore:rodBlaze>,<ore:rodBlaze>],[<ore:plankTreatedWood>,<minecraft:hopper>,<ore:plankTreatedWood>],[null,<ore:plankTreatedWood>,null]]);

// Tooltip informing of sapling creation via Root's Transmutation Ritual
for sapling in [<natura:overworld_sapling:0>, <natura:overworld_sapling:1>, <natura:overworld_sapling:2>, <natura:overworld_sapling:3>, <natura:overworld_sapling2:0>, <natura:overworld_sapling2:1>, <natura:overworld_sapling2:2>, <natura:overworld_sapling2:3>, <natura:redwood_sapling>, <natura:nether_sapling:0>, <natura:nether_sapling:1>, <natura:nether_sapling:2>, <natura:nether_sapling2:0>] as IItemStack[] {
    sapling.addTooltip(game.localize("dj2.transmutation_sapling.desc0"));
}

// Imp Leather from Mystical Agriculture Essences
recipes.addShaped(<natura:materials:6> * 4, [[<mysticalagriculture:cow_essence>,null,<mysticalagriculture:cow_essence>],[<mysticalagriculture:nether_essence>,<mysticalagriculture:nether_essence>,<mysticalagriculture:nether_essence>],[<mysticalagriculture:cow_essence>,null,<mysticalagriculture:cow_essence>]]);

// Respawn Obelisk
recipes.remove(<natura:respawn_obelisk>);
recipes.addShaped(<natura:respawn_obelisk>, [[<natura:nether_glass>,<natura:nether_glass>,<natura:nether_glass>],[<natura:nether_glass>,<betternether:pig_statue_01>,<natura:nether_glass>],[<natura:nether_glass>,<natura:nether_glass>,<natura:nether_glass>]]);


print("ENDING Natura.zs");
