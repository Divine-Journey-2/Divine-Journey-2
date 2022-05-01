# Author: Atricos

import crafttweaker.item.IItemStack;

print("STARTING Natura.zs");

# Disabling the Nether Furnace since it's already added by Better Nether
recipes.remove(<natura:netherrack_furnace>);

# Removing the various Crafting Table recipes
recipes.remove(<natura:overworld_workbenches:*>);
recipes.remove(<natura:nether_workbenches:*>);

# Blaze Hopper
recipes.remove(<natura:blaze_hopper>);
recipes.addShaped(<natura:blaze_hopper>, [[<ore:rodBlaze>,<ore:rodBlaze>,<ore:rodBlaze>],[<ore:plankTreatedWood>,<minecraft:hopper>,<ore:plankTreatedWood>],[null,<ore:plankTreatedWood>,null]]);

function addNaturaSaplingAbyCreationTooltip(sapling as IItemStack) {
	sapling.addTooltip(format.white("Can be created using an AbyssalCraft Ritual."));
	sapling.addTooltip(format.white("Go to Rituals -> Normal in your Necronomicon."));
}
function addNaturaSaplingAbyCreationTooltip2(sapling as IItemStack) {
	sapling.addTooltip(format.white("Can be created using an AbyssalCraft Ritual."));
	sapling.addTooltip(format.white("Go to Rituals -> Dreadlands in your Necronomicon."));
}

# Sapling creation using AbyssalCraft

# Maple
mods.abyssalcraft.CreationRitual.addRitual("maple_sapling_creation", 0, -1, 1000, false, <natura:overworld_sapling:0>, [<totemic:cedar_sapling>,<contenttweaker:steaming_restonia_crystal>,<minecraft:pumpkin>,<roots:stalicripe>,<totemic:cedar_sapling>,<contenttweaker:steaming_restonia_crystal>,<minecraft:pumpkin>,<roots:stalicripe>]);
game.setLocalization("ac.ritual.maple_sapling_creation", "Maple Sapling Creation");
game.setLocalization("ac.ritual.maple_sapling_creation.desc", "Having trouble finding Maple Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip(<natura:overworld_sapling:0>);

# Silverbell
mods.abyssalcraft.CreationRitual.addRitual("silverbell_sapling_creation", 0, -1, 1000, false, <natura:overworld_sapling:1>, [<roots:wildwood_sapling>,<enderio:block_alloy_endergy:5>,<natura:bluebells_flower>,<roots:cloud_berry>,<roots:wildwood_sapling>,<enderio:block_alloy_endergy:5>,<natura:bluebells_flower>,<roots:cloud_berry>]);
game.setLocalization("ac.ritual.silverbell_sapling_creation", "Silverbell Sapling Creation");
game.setLocalization("ac.ritual.silverbell_sapling_creation.desc", "Having trouble finding Silverbell Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip(<natura:overworld_sapling:1>);

# Amaramth
mods.abyssalcraft.CreationRitual.addRitual("amaramth_sapling_creation", 0, -1, 1000, false, <natura:overworld_sapling:2>, [<roots:wildwood_sapling>,<mysticalworld:amethyst_block>,<minecraft:chorus_fruit_popped>,<roots:pereskia>,<roots:wildwood_sapling>,<mysticalworld:amethyst_block>,<minecraft:chorus_fruit_popped>,<roots:pereskia>]);
game.setLocalization("ac.ritual.amaramth_sapling_creation", "Amaramth Sapling Creation");
game.setLocalization("ac.ritual.amaramth_sapling_creation.desc", "Having trouble finding Amaramth Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip(<natura:overworld_sapling:2>);

# Tigerwood
mods.abyssalcraft.CreationRitual.addRitual("tigerwood_sapling_creation", 0, -1, 1000, false, <natura:overworld_sapling:3>, [<totemic:cedar_sapling>,<contenttweaker:incendium>,<atum:efreet_heart>,<roots:wildewheet>,<totemic:cedar_sapling>,<contenttweaker:incendium>,<atum:efreet_heart>,<roots:wildewheet>]);
game.setLocalization("ac.ritual.tigerwood_sapling_creation", "Tigerwood Sapling Creation");
game.setLocalization("ac.ritual.tigerwood_sapling_creation.desc", "Having trouble finding Tigerwood Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip(<natura:overworld_sapling:3>);

# Willow
mods.abyssalcraft.CreationRitual.addRitual("willow_sapling_creation", 0, -1, 1000, false, <natura:overworld_sapling2:0>, [<roots:wildwood_sapling>,<actuallyadditions:item_crystal_empowered:3>,<thermalfoundation:material:1027>,<roots:spirit_herb>,<roots:wildwood_sapling>,<actuallyadditions:item_crystal_empowered:3>,<thermalfoundation:material:1027>,<roots:spirit_herb>]);
game.setLocalization("ac.ritual.willow_sapling_creation", "Willow Sapling Creation");
game.setLocalization("ac.ritual.willow_sapling_creation.desc", "Having trouble finding Willow Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip(<natura:overworld_sapling2:0>);

# Eucaliptus
mods.abyssalcraft.CreationRitual.addRitual("eucaliptus_sapling_creation", 0, -1, 1000, false, <natura:overworld_sapling2:1>, [<roots:wildwood_sapling>,<actuallyadditions:item_crystal_empowered:5>,<thermalfoundation:material:1026>,<roots:moonglow_leaf>,<roots:wildwood_sapling>,<actuallyadditions:item_crystal_empowered:5>,<thermalfoundation:material:1026>,<roots:moonglow_leaf>]);
game.setLocalization("ac.ritual.eucaliptus_sapling_creation", "Eucaliptus Sapling Creation");
game.setLocalization("ac.ritual.eucaliptus_sapling_creation.desc", "Having trouble finding Eucaliptus Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip(<natura:overworld_sapling2:1>);

# Hopseed
mods.abyssalcraft.CreationRitual.addRitual("hopseed_sapling_creation", 0, -1, 1000, false, <natura:overworld_sapling2:2>, [<roots:wildwood_sapling>,<actuallyadditions:item_crystal_empowered:4>,<immersiveengineering:material:19>,<roots:dewgonia>,<roots:wildwood_sapling>,<actuallyadditions:item_crystal_empowered:4>,<immersiveengineering:material:19>,<roots:dewgonia>]);
game.setLocalization("ac.ritual.hopseed_sapling_creation", "Hopseed Sapling Creation");
game.setLocalization("ac.ritual.hopseed_sapling_creation.desc", "Having trouble finding Hopseed Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip(<natura:overworld_sapling2:2>);

# Sakura
mods.abyssalcraft.CreationRitual.addRitual("sakura_sapling_creation", 0, -1, 1000, false, <natura:overworld_sapling2:3>, [<totemic:cedar_sapling>,<actuallyadditions:item_crystal_empowered>,<divinerpg:bloodgem_block>,<roots:pereskia>,<totemic:cedar_sapling>,<actuallyadditions:item_crystal_empowered>,<divinerpg:bloodgem_block>,<roots:pereskia>]);
game.setLocalization("ac.ritual.sakura_sapling_creation", "Sakura Sapling Creation");
game.setLocalization("ac.ritual.sakura_sapling_creation.desc", "Having trouble finding Sakura Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip(<natura:overworld_sapling2:3>);

# Redwood
mods.abyssalcraft.CreationRitual.addRitual("redwood_sapling_creation", 0, -1, 1000, false, <natura:redwood_sapling>, [<totemic:cedar_sapling>,<contenttweaker:steaming_restonia_crystal>,<contenttweaker:terrae>,<roots:bark_wildwood>,<totemic:cedar_sapling>,<contenttweaker:steaming_restonia_crystal>,<contenttweaker:terrae>,<roots:bark_wildwood>]);
game.setLocalization("ac.ritual.redwood_sapling_creation", "Redwood Sapling Creation");
game.setLocalization("ac.ritual.redwood_sapling_creation.desc", "Having trouble finding Redwood Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip(<natura:redwood_sapling>);

# Ghostwood
mods.abyssalcraft.CreationRitual.addRitual("ghostwood_sapling_creation", 2, 51, 5000, false, <natura:nether_sapling:0>, [<abyssalcraft:dreadsapling>,<divinerpg:ghast_pumpkin>,<contenttweaker:aether>,<roots:runic_dust>,<abyssalcraft:dreadsapling>,<divinerpg:ghast_pumpkin>,<contenttweaker:aether>,<roots:runic_dust>]);
game.setLocalization("ac.ritual.ghostwood_sapling_creation", "Ghostwood Sapling Creation");
game.setLocalization("ac.ritual.ghostwood_sapling_creation.desc", "Having trouble finding Ghostwood Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip2(<natura:nether_sapling:0>);

# Fusewood
mods.abyssalcraft.CreationRitual.addRitual("fusewood_sapling_creation", 2, 51, 5000, false, <natura:nether_sapling:1>, [<abyssalcraft:dreadsapling>,<mekanism:obsidiantnt>,<contenttweaker:incendium>,<roots:baffle_cap_mushroom>,<abyssalcraft:dreadsapling>,<mekanism:obsidiantnt>,<contenttweaker:incendium>,<roots:baffle_cap_mushroom>]);
game.setLocalization("ac.ritual.fusewood_sapling_creation", "Fusewood Sapling Creation");
game.setLocalization("ac.ritual.fusewood_sapling_creation.desc", "Having trouble finding Fusewood Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip2(<natura:nether_sapling:1>);

# Darkwood
mods.abyssalcraft.CreationRitual.addRitual("darkwood_sapling_creation", 2, 51, 5000, false, <natura:nether_sapling:2>, [<abyssalcraft:dreadsapling>,<contenttweaker:tempest_reagent>,<actuallyadditions:item_crystal_empowered:3>,<roots:baffle_cap_mushroom>,<abyssalcraft:dreadsapling>,<contenttweaker:tempest_reagent>,<actuallyadditions:item_crystal_empowered:3>,<roots:baffle_cap_mushroom>]);
game.setLocalization("ac.ritual.darkwood_sapling_creation", "Darkwood Sapling Creation");
game.setLocalization("ac.ritual.darkwood_sapling_creation.desc", "Having trouble finding Darkwood Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip2(<natura:nether_sapling:2>);

# Bloodwood
mods.abyssalcraft.CreationRitual.addRitual("bloodwood_sapling_creation", 2, 51, 5000, false, <natura:nether_sapling2:0>, [<abyssalcraft:dreadsapling>,<contenttweaker:hardened_blood_droplet>,<contenttweaker:incendium>,<roots:infernal_bulb>,<abyssalcraft:dreadsapling>,<contenttweaker:hardened_blood_droplet>,<contenttweaker:incendium>,<roots:infernal_bulb>]);
game.setLocalization("ac.ritual.bloodwood_sapling_creation", "Bloodwood Sapling Creation");
game.setLocalization("ac.ritual.bloodwood_sapling_creation.desc", "Having trouble finding Bloodwood Saplings? Try dark magic!");
addNaturaSaplingAbyCreationTooltip2(<natura:nether_sapling2:0>);

# Imp Leather from Mystical Agriculture Essences
recipes.addShaped(<natura:materials:6> * 4, [[<mysticalagriculture:cow_essence>,null,<mysticalagriculture:cow_essence>],[<mysticalagriculture:nether_essence>,<mysticalagriculture:nether_essence>,<mysticalagriculture:nether_essence>],[<mysticalagriculture:cow_essence>,null,<mysticalagriculture:cow_essence>]]);

print("ENDING Natura.zs");