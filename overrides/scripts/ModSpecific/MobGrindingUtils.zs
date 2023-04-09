# Author: Atricos
print("STARTING MobGrindingUtils.zs");

# Iron Spikes
recipes.remove(<mob_grinding_utils:spikes>);
recipes.addShaped(<mob_grinding_utils:spikes>, [[null,<extrautils2:spike_iron>,null],[<immersiveengineering:material:1>,<contenttweaker:mobgrindium_ingot>,<immersiveengineering:material:1>]]);

# Absorption Hopper
recipes.remove(<mob_grinding_utils:absorption_hopper>);
recipes.addShaped(<mob_grinding_utils:absorption_hopper>, [[<contenttweaker:mobgrindium_ingot>,<minecraft:ender_pearl>,<contenttweaker:mobgrindium_ingot>],[<minecraft:ender_pearl>,<openblocks:vacuum_hopper>,<minecraft:ender_pearl>],[<contenttweaker:mobgrindium_ingot>,<minecraft:ender_pearl>,<contenttweaker:mobgrindium_ingot>]]);

# Absorption Radius Upgrade
recipes.remove(<mob_grinding_utils:absorption_upgrade>);
recipes.addShaped(<mob_grinding_utils:absorption_upgrade>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<actuallyadditions:block_misc:6>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Fan Height Upgrade
recipes.remove(<mob_grinding_utils:fan_upgrade:1>);
recipes.addShaped(<mob_grinding_utils:fan_upgrade:1>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<immersiveengineering:material:11>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Fan Width Upgrade
recipes.remove(<mob_grinding_utils:fan_upgrade>);
recipes.addShaped(<mob_grinding_utils:fan_upgrade>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<immersiveengineering:material:5>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Fan Distance Upgrade
recipes.remove(<mob_grinding_utils:fan_upgrade:2>);
recipes.addShaped(<mob_grinding_utils:fan_upgrade:2>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<aether_legacy:aerogel>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Masher Sharpness Upgrade
recipes.remove(<mob_grinding_utils:saw_upgrade>);
recipes.addShaped(<mob_grinding_utils:saw_upgrade>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<actuallyadditions:item_sword_emerald>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Masher Looting Upgrade
recipes.remove(<mob_grinding_utils:saw_upgrade:1>);
recipes.addShaped(<mob_grinding_utils:saw_upgrade:1>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:aechomedirus>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Masher Fire Aspect Upgrade
recipes.remove(<mob_grinding_utils:saw_upgrade:2>);
recipes.addShaped(<mob_grinding_utils:saw_upgrade:2>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<minecraft:fire_charge>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Masher Smite Upgrade
recipes.remove(<mob_grinding_utils:saw_upgrade:3>);
recipes.addShaped(<mob_grinding_utils:saw_upgrade:3>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<thaumcraft:flesh_block>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Masher Bane of Arthropods Upgrade
recipes.remove(<mob_grinding_utils:saw_upgrade:4>);
recipes.addShaped(<mob_grinding_utils:saw_upgrade:4>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<minecraft:fermented_spider_eye>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Masher Beheading Upgrade
recipes.remove(<mob_grinding_utils:saw_upgrade:5>);
recipes.addShaped(<mob_grinding_utils:saw_upgrade:5>, [[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>],[<contenttweaker:mobgrindium_ingot>,<ore:itemSkull>,<contenttweaker:mobgrindium_ingot>],[<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>]]);

# Mob Masher
recipes.remove(<mob_grinding_utils:saw>);
recipes.addShaped(<mob_grinding_utils:saw>, [[<extrautils2:spike_diamond>,<thermalfoundation:material:26>,<extrautils2:spike_diamond>],[<thermalfoundation:material:26>,<extrautils2:spike_diamond>,<thermalfoundation:material:26>],[<contenttweaker:mobgrindium_block>,<extrautils2:suncrystal>,<contenttweaker:mobgrindium_block>]]);

# Mob Fan
recipes.remove(<mob_grinding_utils:fan>);
recipes.addShaped(<mob_grinding_utils:fan>, [[<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<openblocks:fan>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>]]);

# Entity Conveyor
recipes.remove(<mob_grinding_utils:entity_conveyor>);
recipes.addShaped(<mob_grinding_utils:entity_conveyor> * 5, [[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})],[<contenttweaker:mobgrindium_ingot>,<ore:ingotRedAlloy>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>]]);

# Ender Inhibitor
recipes.remove(<mob_grinding_utils:ender_inhibitor_on>);
recipes.addShaped(<mob_grinding_utils:ender_inhibitor_on>, [[<ore:ingotRedAlloy>,<ore:ingotRedAlloy>,<ore:ingotRedAlloy>],[<enderutilities:enderpart>,<minecraft:ender_eye>,<enderutilities:enderpart>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>]]);

# Ender Dragon Death Muffler
recipes.remove(<mob_grinding_utils:dragon_muffler>);
recipes.addShaped(<mob_grinding_utils:dragon_muffler>, [[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>],[<supersoundmuffler:sound_muffler>,<minecraft:dragon_egg>,<supersoundmuffler:sound_muffler>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>]]);

# Wither Boss Death Muffler
recipes.remove(<mob_grinding_utils:wither_muffler>);
recipes.addShaped(<mob_grinding_utils:wither_muffler>, [[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>],[<supersoundmuffler:sound_muffler>,<minecraft:nether_star>,<supersoundmuffler:sound_muffler>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>]]);

# Mob Swab
recipes.remove(<mob_grinding_utils:mob_swab>);

print("ENDING MobGrindingUtils.zs");