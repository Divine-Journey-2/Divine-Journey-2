# Author: Atricos

import crafttweaker.item.IItemStack;

print("STARTING Tools.zs");

# Vanilla Pickaxes
<minecraft:wooden_pickaxe>.maxDamage = 20;
<minecraft:stone_pickaxe>.maxDamage = 60;
<minecraft:iron_pickaxe>.maxDamage = 180;
<minecraft:golden_pickaxe>.maxDamage = 12;
<minecraft:diamond_pickaxe>.maxDamage = 400;

# Vanilla Axes
<minecraft:wooden_axe>.maxDamage = 20;
<minecraft:stone_axe>.maxDamage = 60;
<minecraft:iron_axe>.maxDamage = 180;
<minecraft:golden_axe>.maxDamage = 12;
<minecraft:diamond_axe>.maxDamage = 400;

# Vanilla Shovels
<minecraft:wooden_shovel>.maxDamage = 20;
<minecraft:stone_shovel>.maxDamage = 60;
<minecraft:iron_shovel>.maxDamage = 180;
<minecraft:golden_shovel>.maxDamage = 12;
<minecraft:diamond_shovel>.maxDamage = 400;

# Vanilla Swords
<minecraft:wooden_sword>.maxDamage = 20;
<minecraft:stone_sword>.maxDamage = 60;
<minecraft:iron_sword>.maxDamage = 180;
<minecraft:golden_sword>.maxDamage = 12;
<minecraft:diamond_sword>.maxDamage = 400;

# Vanilla material Excavators
<thermalfoundation:tool.excavator_iron>.maxDamage = 180;
<thermalfoundation:tool.excavator_gold>.maxDamage = 12;
<thermalfoundation:tool.excavator_diamond>.maxDamage = 400;

# Abyssalcraft Darkstone Tools
<abyssalcraft:dpick>.maxDamage = 60;
<abyssalcraft:daxe>.maxDamage = 60;
<abyssalcraft:dshovel>.maxDamage = 60;
<abyssalcraft:dsword>.maxDamage = 60;

# Actually Additions Emerald Tools
<actuallyadditions:item_pickaxe_emerald>.maxDamage = 550;
<actuallyadditions:item_axe_emerald>.maxDamage = 550;
<actuallyadditions:item_shovel_emerald>.maxDamage = 550;
<actuallyadditions:item_sword_emerald>.maxDamage = 550;

# Actually Additions Black Quartz Tools
<actuallyadditions:item_pickaxe_quartz>.maxDamage = 200;
<actuallyadditions:item_axe_quartz>.maxDamage = 200;
<actuallyadditions:item_shovel_quartz>.maxDamage = 200;
<actuallyadditions:item_sword_quartz>.maxDamage = 200;

# Actually Additions Obsidian Tools
<actuallyadditions:item_pickaxe_obsidian>.maxDamage = 400;
<actuallyadditions:item_axe_obsidian>.maxDamage = 400;
<actuallyadditions:item_shovel_obsidian>.maxDamage = 400;
<actuallyadditions:item_sword_obsidian>.maxDamage = 400;

# Atum Limestone Tools
<atum:limestone_pickaxe>.maxDamage = 60;
<atum:limestone_axe>.maxDamage = 60;
<atum:limestone_shovel>.maxDamage = 60;
<atum:limestone_sword>.maxDamage = 60;

# Applied Energistics 2 Tools
<appliedenergistics2:nether_quartz_pickaxe>.maxDamage = 120;
<appliedenergistics2:nether_quartz_axe>.maxDamage = 120;
<appliedenergistics2:nether_quartz_spade>.maxDamage = 120;
<appliedenergistics2:nether_quartz_sword>.maxDamage = 120;

# Applied Energistics 2 Certus Quartz Tools
<appliedenergistics2:certus_quartz_pickaxe>.maxDamage = 120;
<appliedenergistics2:certus_quartz_axe>.maxDamage = 120;
<appliedenergistics2:nether_quartz_spade>.maxDamage = 120;
<appliedenergistics2:certus_quartz_sword>.maxDamage = 120;

# Bewitchment Silver Tools
recipes.remove(<bewitchment:silver_sword>);
recipes.remove(<bewitchment:silver_pickaxe>);
recipes.remove(<bewitchment:silver_axe>);
recipes.remove(<bewitchment:silver_shovel>);
recipes.remove(<bewitchment:silver_hoe>);

# DivineRPG Arlemite Tools
<divinerpg:arlemite_pickaxe>.maxDamage = 800;
<divinerpg:arlemite_axe>.maxDamage = 800;
<divinerpg:arlemite_shovel>.maxDamage = 800;
<divinerpg:arlemite_stabber>.maxDamage = 800;

# DivineRPG Rupee Tools
<divinerpg:rupee_pickaxe>.maxDamage = 800;
<divinerpg:rupee_axe>.maxDamage = 800;
<divinerpg:rupee_shovel>.maxDamage = 800;
<divinerpg:rupee_rapier>.maxDamage = 800;

# DivineRPG Realmite Tools
<divinerpg:realmite_pickaxe>.maxDamage = 600;
<divinerpg:realmite_axe>.maxDamage = 600;
<divinerpg:realmite_shovel>.maxDamage = 600;
<divinerpg:realmite_sword>.maxDamage = 600;

# Mystical World Amethyst Tools
<mysticalworld:amethyst_pickaxe>.maxDamage = 600;
<mysticalworld:amethyst_axe>.maxDamage = 600;
<mysticalworld:amethyst_shovel>.maxDamage = 600;
<mysticalworld:amethyst_sword>.maxDamage = 600;
<mysticalworld:amethyst_hoe>.maxDamage = 600;
<mysticalworld:amethyst_knife>.maxDamage = 600;

# Thermal Copper Tools
<thermalfoundation:tool.pickaxe_copper>.maxDamage = 180;
<thermalfoundation:tool.axe_copper>.maxDamage = 180;
<thermalfoundation:tool.shovel_copper>.maxDamage = 180;
<thermalfoundation:tool.sword_copper>.maxDamage = 180;
<thermalfoundation:tool.excavator_copper>.maxDamage = 180;

# Thermal Silver Tools
<thermalfoundation:tool.pickaxe_silver>.maxDamage = 180;
<thermalfoundation:tool.axe_silver>.maxDamage = 180;
<thermalfoundation:tool.shovel_silver>.maxDamage = 180;
<thermalfoundation:tool.sword_silver>.maxDamage = 180;
<thermalfoundation:tool.excavator_silver>.maxDamage = 180;

# Thermal Lead Tools
<thermalfoundation:tool.pickaxe_lead>.maxDamage = 180;
<thermalfoundation:tool.axe_lead>.maxDamage = 180;
<thermalfoundation:tool.shovel_lead>.maxDamage = 180;
<thermalfoundation:tool.sword_lead>.maxDamage = 180;
<thermalfoundation:tool.excavator_lead>.maxDamage = 180;

# Thermal Aluminum Tools
<thermalfoundation:tool.pickaxe_aluminum>.maxDamage = 180;
<thermalfoundation:tool.axe_aluminum>.maxDamage = 180;
<thermalfoundation:tool.shovel_aluminum>.maxDamage = 180;
<thermalfoundation:tool.sword_aluminum>.maxDamage = 180;
<thermalfoundation:tool.excavator_aluminum>.maxDamage = 180;

# Thermal Nickel Tools
<thermalfoundation:tool.pickaxe_nickel>.maxDamage = 280;
<thermalfoundation:tool.axe_nickel>.maxDamage = 280;
<thermalfoundation:tool.shovel_nickel>.maxDamage = 280;
<thermalfoundation:tool.sword_nickel>.maxDamage = 280;
<thermalfoundation:tool.excavator_nickel>.maxDamage = 280;

# Thermal Platinum Tools
<thermalfoundation:tool.pickaxe_platinum>.maxDamage = 1000;
<thermalfoundation:tool.axe_platinum>.maxDamage = 1000;
<thermalfoundation:tool.shovel_platinum>.maxDamage = 1000;
<thermalfoundation:tool.sword_platinum>.maxDamage = 1000;
<thermalfoundation:tool.excavator_platinum>.maxDamage = 1000;

# Thermal Electrum Tools
<thermalfoundation:tool.pickaxe_electrum>.maxDamage = 64;
<thermalfoundation:tool.axe_electrum>.maxDamage = 64;
<thermalfoundation:tool.shovel_electrum>.maxDamage = 64;
<thermalfoundation:tool.sword_electrum>.maxDamage = 64;
<thermalfoundation:tool.excavator_electrum>.maxDamage = 64;

# Thermal Invar Tools
<thermalfoundation:tool.pickaxe_invar>.maxDamage = 240;
<thermalfoundation:tool.axe_invar>.maxDamage = 240;
<thermalfoundation:tool.shovel_invar>.maxDamage = 240;
<thermalfoundation:tool.sword_invar>.maxDamage = 240;
<thermalfoundation:tool.excavator_invar>.maxDamage = 240;

# Thermal Bronze Tools
<thermalfoundation:tool.pickaxe_bronze>.maxDamage = 200;
<thermalfoundation:tool.axe_bronze>.maxDamage = 200;
<thermalfoundation:tool.shovel_bronze>.maxDamage = 200;
<thermalfoundation:tool.sword_bronze>.maxDamage = 200;
<thermalfoundation:tool.excavator_bronze>.maxDamage = 200;

# Thermal Constantan Tools
<thermalfoundation:tool.pickaxe_constantan>.maxDamage = 260;
<thermalfoundation:tool.axe_constantan>.maxDamage = 260;
<thermalfoundation:tool.shovel_constantan>.maxDamage = 260;
<thermalfoundation:tool.sword_constantan>.maxDamage = 260;
<thermalfoundation:tool.excavator_constantan>.maxDamage = 260;

# Thermal Steel Tools
<thermalfoundation:tool.excavator_steel>.maxDamage = 320;

# Hoes
val hoes = [<minecraft:wooden_hoe>,<minecraft:stone_hoe>,<minecraft:iron_hoe>,<minecraft:golden_hoe>,<minecraft:diamond_hoe>,<abyssalcraft:dhoe>,<actuallyadditions:item_hoe_emerald>,<actuallyadditions:item_hoe_quartz>,<actuallyadditions:item_hoe_obsidian>,<atum:limestone_hoe>,<appliedenergistics2:nether_quartz_hoe>,<appliedenergistics2:certus_quartz_hoe>,<divinerpg:arlemite_hoe>,<divinerpg:rupee_hoe>,<divinerpg:realmite_hoe>,<thermalfoundation:tool.hoe_copper>,<thermalfoundation:tool.hoe_tin>,<thermalfoundation:tool.hoe_silver>,<thermalfoundation:tool.hoe_lead>,<thermalfoundation:tool.hoe_aluminum>,<thermalfoundation:tool.hoe_nickel>,<thermalfoundation:tool.hoe_platinum>,<thermalfoundation:tool.hoe_electrum>,<thermalfoundation:tool.hoe_invar>,<thermalfoundation:tool.hoe_bronze>,<thermalfoundation:tool.hoe_constantan>,<mysticalworld:amethyst_hoe>] as IItemStack[];
for tool in hoes {
	tool.maxDamage = 10;
	tool.addTooltip(format.red(format.bold("Warning: ")) + format.white("Very low base durability item!"));
	tool.addTooltip(format.white("Use a Tinkers' Construct Mattock instead!"));
}

# Sickles
recipes.remove(<extrautils2:sickle_wood>);
recipes.remove(<extrautils2:sickle_stone>);
recipes.remove(<extrautils2:sickle_iron>);
recipes.remove(<extrautils2:sickle_gold>);
recipes.remove(<extrautils2:sickle_diamond>);
<thermalfoundation:tool.sickle_copper>.maxDamage = 180;
<thermalfoundation:tool.sickle_tin>.maxDamage = 150;
<thermalfoundation:tool.sickle_silver>.maxDamage = 180;
<thermalfoundation:tool.sickle_lead>.maxDamage = 180;
<thermalfoundation:tool.sickle_aluminum>.maxDamage = 180;
<thermalfoundation:tool.sickle_nickel>.maxDamage = 280;
<thermalfoundation:tool.sickle_platinum>.maxDamage = 1000;
<thermalfoundation:tool.sickle_steel>.maxDamage = 641;
<thermalfoundation:tool.sickle_electrum>.maxDamage = 64;
<thermalfoundation:tool.sickle_invar>.maxDamage = 240;
<thermalfoundation:tool.sickle_bronze>.maxDamage = 200;
<thermalfoundation:tool.sickle_constantan>.maxDamage = 260;
<thermalfoundation:tool.sickle_iron>.maxDamage = 180;
<thermalfoundation:tool.sickle_diamond>.maxDamage = 400;
<thermalfoundation:tool.sickle_gold>.maxDamage = 12;

# AIOTS
<actuallyadditions:wooden_paxel>.maxDamage = 20;
<actuallyadditions:stone_paxel>.maxDamage = 60;
<actuallyadditions:iron_paxel>.maxDamage = 180;
<actuallyadditions:gold_paxel>.maxDamage = 12;
<actuallyadditions:diamond_paxel>.maxDamage = 400;
<actuallyadditions:emerald_paxel>.maxDamage = 550;
<actuallyadditions:obsidian_paxel>.maxDamage = 400;
<actuallyadditions:item_paxel_crystal_red>.maxDamage = 300;
<actuallyadditions:item_paxel_crystal_blue>.maxDamage = 300;
<actuallyadditions:item_paxel_crystal_light_blue>.maxDamage = 1600;
<actuallyadditions:item_paxel_crystal_black>.maxDamage = 280;
<actuallyadditions:item_paxel_crystal_green>.maxDamage = 2200;
<actuallyadditions:item_paxel_crystal_white>.maxDamage = 280;

# Shickaxes
recipes.remove(<divinerpg:rupee_shickaxe>);
recipes.remove(<divinerpg:divine_shickaxe>);
recipes.remove(<divinerpg:arlemite_shickaxe>);

print("ENDING Tools.zs");
