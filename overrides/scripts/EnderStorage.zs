# Author: Atricos
print("STARTING EnderStorage.zs");

# Ender Chest
recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage>, [[<botania:blazeblock>,<enderutilities:enderpart:17>,<botania:blazeblock>],[<minecraft:ender_chest>,<enderio:block_transceiver>,<minecraft:ender_chest>],[<botania:blazeblock>,<contenttweaker:compressed_obsidian2>,<botania:blazeblock>]]);

# Ender Tank
recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [[<enderio:block_alloy:6>,<enderutilities:enderpart:17>,<enderio:block_alloy:6>],[<botania:blazeblock>,<enderio:block_transceiver>,<botania:blazeblock>],[<contenttweaker:compressed_obsidian2>,<thermalexpansion:tank>.withTag({Fluid: {FluidName: "pyrotheum", Amount: 20000}, Level: 0 as byte}),<contenttweaker:compressed_obsidian2>]]);
<enderstorage:ender_storage:1>.addTooltip(format.darkRed("Crafting this takes a Portable Tank (Basic) full of ") + format.gold("Blazing Pyrotheum") + format.darkRed("!"));

# Ender Pouch
recipes.remove(<enderstorage:ender_pouch>);
recipes.addShaped(<enderstorage:ender_pouch>, [[<botania:blazeblock>,<contenttweaker:industrial_leather>,<botania:blazeblock>],[<contenttweaker:industrial_leather>,<enderstorage:ender_storage>,<contenttweaker:industrial_leather>],[<botania:blazeblock>,<enderutilities:enderpart:17>,<botania:blazeblock>]]);

print("ENDING EnderStorage.zs");