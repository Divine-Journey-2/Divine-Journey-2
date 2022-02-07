# Author: Atricos

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

print("STARTING LootTweaker.zs");

function remove_entry(tableName as string, poolName as string, entryName as string) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.getPool(poolName);
	pool.removeEntry(entryName);
}

function add_entry(tableName as string, newPoolName as string, itemEntry as IItemStack, minRolls as int, maxRolls as int, minBonusRolls as int, maxBonusRolls as int, weight as int) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.addPool(newPoolName, minRolls, maxRolls, minBonusRolls, maxBonusRolls);
	pool.addItemEntry(itemEntry, weight);
}

function clear_pool(tableName as string, poolName as string) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.getPool(poolName);
	pool.clearEntries();
}

# Removing broken Aether loot
remove_entry("aether_legacy:chests/bronze_dungeon_reward", "main", "aether_legacy:sentry_boots");
remove_entry("aether_legacy:chests/bronze_dungeon_reward", "main", "aether_legacy:lightning_knife");
remove_entry("aether_legacy:chests/silver_dungeon_reward", "main", "aether_legacy:invisibility_cape");
remove_entry("aether_legacy:chests/silver_dungeon_reward", "main", "aether_legacy:regeneration_stone");
remove_entry("aether_legacy:chests/silver_dungeon_reward", "main", "aether_legacy:lightning_sword");
remove_entry("aether_legacy:chests/gold_dungeon_reward", "main", "aether_legacy:iron_bubble");
remove_entry("aether_legacy:chests/gold_dungeon_reward", "main", "aether_legacy:life_shard");

# Custom loot in Aether Chests
add_entry("aether_legacy:chests/bronze_dungeon_reward", "custom_bronze_loot", <contenttweaker:bronze_aether_coin>, 1, 1, 0, 0, 100);
add_entry("aether_legacy:chests/silver_dungeon_reward", "custom_silver_loot", <contenttweaker:silver_aether_coin>, 1, 1, 0, 0, 100);
add_entry("aether_legacy:chests/gold_dungeon_reward", "custom_gold_loot", <contenttweaker:golden_aether_coin>, 1, 1, 0, 0, 100);

# Aether Book of Lore is gotten through the Quest Book
remove_entry("aether_legacy:travel/enter_aether", "lore_book", "aether_legacy:lore_book");

# Removing Santa Armor from Iceika Chests
val santaSet = ["divinerpg:santa_helmet", "divinerpg:santa_chestplate", "divinerpg:santa_leggings", "divinerpg:santa_boots"] as string[];
for armorPiece in santaSet {
	remove_entry("divinerpg:chests/iceika/iceika_chest_hut", "divinerpg:iceika_chest_hut", armorPiece);
}

# Removing Drop of Evil from Wither Skeletons
remove_entry("minecraft:entities/wither_skeleton", "xuLootDropOfEvil", "xuLootDropOfEvil");

# King of Scorchers: More Fury Fire
add_entry("divinerpg:entities/boss/king_of_scorchers", "additional_fury_fire", <divinerpg:fury_fire>, 3, 3, 0, 0, 100);
<divinerpg:fury_fire>.addTooltip(format.white("Dropped by the ") + format.darkRed("King of Scorchers") + format.white(", who's summoned by the ") + format.blue("Infernal Flame") + format.white(" in the Nether. It always drops 4 of them."));

# Ancient Entity: Ancient Leg
add_entry("divinerpg:entities/boss/ancient_entity", "ancient_leg", <contenttweaker:ancient_leg>, 2, 4, 0, 0, 100);
<contenttweaker:ancient_leg>.addTooltip(format.white("Dropped by the ") + format.darkRed("Ancient Entity") + format.white(", who's summoned by "));
<contenttweaker:ancient_leg>.addTooltip(format.white("the ") + format.blue("Mysterious Clock") + format.white(" in the Overworld. "));
<contenttweaker:ancient_leg>.addTooltip(format.white("It has a chance to drop 2-4 Legs."));

# The Watcher: Eye of the Watcher
add_entry("divinerpg:entities/boss/the_watcher", "eye_of_the_watcher", <contenttweaker:eye_of_the_watcher>, 1, 1, 0, 0, 100);
<contenttweaker:eye_of_the_watcher>.addTooltip(format.white("Dropped by ") + format.red("The Watcher") + format.white(", who's summoned by "));
<contenttweaker:eye_of_the_watcher>.addTooltip(format.white("the ") + format.blue("Call of the Watcher") + format.white(" in the Nether."));

# Ayeraco Horde: Ayeraco Wing
add_entry("divinerpg:entities/boss/ayeraco_blue", "ayeraco_wing", <contenttweaker:ayeraco_wing>, 1, 2, 0, 0, 100);
add_entry("divinerpg:entities/boss/ayeraco_green", "ayeraco_wing", <contenttweaker:ayeraco_wing>, 1, 2, 0, 0, 100);
add_entry("divinerpg:entities/boss/ayeraco_purple", "ayeraco_wing", <contenttweaker:ayeraco_wing>, 1, 2, 0, 0, 100);
add_entry("divinerpg:entities/boss/ayeraco_red", "ayeraco_wing", <contenttweaker:ayeraco_wing>, 1, 2, 0, 0, 100);
add_entry("divinerpg:entities/boss/ayeraco_yellow", "ayeraco_wing", <contenttweaker:ayeraco_wing>, 1, 2, 0, 0, 100);
<contenttweaker:ayeraco_wing>.addTooltip(format.white("Dropped by the ") + format.blue("Blue") + format.white(", ") + format.green("Green") + format.white(", ") + format.yellow("Yellow") + format.white(", ") + format.red("Red") + format.white(" & ") + format.lightPurple("Purple "));
<contenttweaker:ayeraco_wing>.addTooltip(format.white("Ayeraco. They are summoned by the ") + format.yellow("Horde Horn "));
<contenttweaker:ayeraco_wing>.addTooltip(format.white("in the End. Each Ayeraco has a chance to drop 1 or 2."));

# Vanilla Chest Loot Tables
val tables = ["abandoned_mineshaft", "desert_pyramid", "igloo_chest", "jungle_temple"] as string[];
val loot_to_remove = ["rftoolsdim:parcel", "astralsorcery:constellation_paper"] as string[];

for table in tables {
	for loot in loot_to_remove {
		remove_entry("minecraft:chests/" + table, "main", loot);
	}
}

val abandoned_mineshaft_pools_to_clear = ["bewitchment_materials_pool", "AE2 Crystals", "AE2 DUSTS", "botania_inject_pool"] as string[];
for pool in abandoned_mineshaft_pools_to_clear {
	clear_pool("minecraft:chests/abandoned_mineshaft", pool);
}

val jungle_temple_pools_to_clear = ["bewitchment_materials_pool", "botania_inject_pool"] as string[];
for pool in jungle_temple_pools_to_clear {
	clear_pool("minecraft:chests/jungle_temple", pool);
}

#clear_pool("minecraft:chests/jungle_temple_dispenser", "ebwizardry_ebwizardry_additional_dispenser_loot");

remove_entry("minecraft:chests/nether_bridge", "main", "rftoolsdim:parcel");
val nether_bridge_pools_to_clear = ["xuLootDropOfEvil", "bewitchment_nether_materials_pool", "bewitchment_materials_pool"] as string[];
for pool in nether_bridge_pools_to_clear {
	clear_pool("minecraft:chests/nether_bridge", pool);
}

remove_entry("minecraft:chests/simple_dungeon", "main", "rftoolsdim:parcel");

val simple_dungeon_pools_to_clear = ["bewitchment_materials_pool", "botania_inject_pool"] as string[];
for pool in simple_dungeon_pools_to_clear {
	clear_pool("minecraft:chests/simple_dungeon", pool);
}

clear_pool("minecraft:chests/spawn_bonus_chest", "botania_inject_pool");

clear_pool("minecraft:chests/stronghold_crossing", "bewitchment_materials_pool");

remove_entry("minecraft:chests/stronghold_library", "main", "astralsorcery:constellation_paper");
remove_entry("minecraft:chests/stronghold_library", "main", "blueprint_electrode");
clear_pool("minecraft:chests/stronghold_library", "bewitchment_materials_pool");

remove_entry("minecraft:chests/village_blacksmith", "main", "rftoolsdim:parcel");
remove_entry("minecraft:chests/village_blacksmith", "main", "blueprint_electrode");
val village_blacksmith_pools_to_clear = ["bewitchment_materials_pool", "botania_inject_pool"] as string[];
for pool in village_blacksmith_pools_to_clear {
	clear_pool("minecraft:chests/village_blacksmith", pool);
}

clear_pool("minecraft:chests/woodland_mansion", "bewitchment_materials_pool");
clear_pool("minecraft:chests/igloo_chest", "bewitchment_materials_pool");

clear_pool("minecraft:chests/end_city_treasure", "bewitchment_materials_pool");

val tables_with_general_injected_loot = ["desert_pyramid", "stronghold_corridor"] as string[];
val general_pools_to_clear = ["bewitchment_materials_pool", "botania_inject_pool"] as string[];
for table in tables_with_general_injected_loot {
	for pool in general_pools_to_clear {
		clear_pool("minecraft:chests/" + table, pool);
	}
}

# Vanilla mob Loot Tables

var vanilla_eb_wizardry_injected_tables = ["blaze", "cave_spider", "creeper", "elder_guardian", "enderman", "endermite", 
										"evocation_illager", "ghast", "giant", "guardian", "husk", "magma_cube", "shulker",
										"silverfish", "skeleton", "slime", "spider", "stray", "vindication_illager", 
										"witch", "wither_skeleton", "zombie", "zombie_pigman", "zombie_villager"] as string[];
/*
for table_name in vanilla_eb_wizardry_injected_tables {
	clear_pool("minecraft:entities/" + table_name, "ebwizardry_ebwizardry_additional_mob_drops");
}
*/

# Astral Sorcery Constellation Papers
remove_entry("astralsorcery:chest_shrine", "astralsorcery:chest_shrine", "astralsorcery:itemconstellationpaper");

# Orange Heart from bosses
val bosses = ["minecraft:entities/ender_dragon", "abyssalcraft:entities/asorah", "abyssalcraft:entities/chagaroth", "abyssalcraft:entities/jzahar",
				"abyssalcraft:entities/sacthoth", "bewitchment:entities/leonard", "botania:gaia_guardian", "botania:gaia_guardian_2",
				"divinerpg:entities/boss/ancient_entity", "divinerpg:entities/boss/the_watcher", "divinerpg:entities/boss/king_of_scorchers", 
				"totemic:entities/baykok", "twilightforest:entities/giant_miner", "twilightforest:entities/hydra", "twilightforest:entities/lich",
				"twilightforest:entities/minoshroom", "twilightforest:entities/naga", "twilightforest:entities/snow_queen",
				"twilightforest:entities/yeti_alpha", "twilightforest:structures/darktower_boss/darktower_boss"] as string[];
for boss in bosses {
	add_entry(boss, "heart", <bhc:orange_heart>, 1, 1, 0, 0, 100);
}

/*
# Electroblob's mobs
remove_entry("ebwizardry:entities/mob_additions", "wizardry", "ebwizardry:spell_book");
clear_pool("ebwizardry:subsets/wizard_armour", "armour");
*/

# Desert Crawler
remove_entry("divinerpg:entities/vanilla/desert_crawler", "divinerpg:desert_crawler", "minecraft:sandstone");
add_entry("divinerpg:entities/vanilla/desert_crawler", "custom_sandstone_amount", <minecraft:sandstone>, 0, 2, 0, 0, 100);

# Abyssalcraft Loot
remove_entry("abyssalcraft:chests/mineshaft", "main", "abyssalcraft:abyingot");
remove_entry("abyssalcraft:chests/mineshaft", "main", "abyssalcraft:dreadshard");
remove_entry("abyssalcraft:chests/mineshaft", "main", "abyssalcraft:corpick");
remove_entry("abyssalcraft:chests/mineshaft", "main", "abyssalcraft:transmutationgem");
remove_entry("abyssalcraft:chests/mineshaft", "main", "abyssalcraft:crystal");
remove_entry("abyssalcraft:chests/mineshaft", "pool1", "abyssalcraft:abyingot");
remove_entry("abyssalcraft:chests/mineshaft", "pool1", "abyssalcraft:abychunk");
remove_entry("abyssalcraft:chests/mineshaft", "pool1", "abyssalcraft:dreadchunk");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:transmutationgem");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:abyingot");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:cingot");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:apick");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:aplate");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:ahelmet");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:alegs");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:aboots");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:oc");
remove_entry("abyssalcraft:chests/stronghold_corridor", "main", "abyssalcraft:crystal");
remove_entry("abyssalcraft:chests/stronghold_crossing", "main", "abyssalcraft:abyingot");
remove_entry("abyssalcraft:chests/stronghold_crossing", "main", "abyssalcraft:cingot");
remove_entry("abyssalcraft:chests/stronghold_crossing", "main", "abyssalcraft:cpearl");
remove_entry("abyssalcraft:chests/stronghold_crossing", "main", "abyssalcraft:apick");
remove_entry("abyssalcraft:chests/stronghold_crossing", "main", "abyssalcraft:crystal");
remove_entry("abyssalcraft:chests/omothol/blacksmith", "main", "abyssalcraft:tiningot");
remove_entry("abyssalcraft:chests/omothol/blacksmith", "main", "abyssalcraft:copperingot");
remove_entry("abyssalcraft:chests/omothol/storage_treasure", "main", "abyssalcraft:configurator_shard");
add_entry("abyssalcraft:entities/jzahar", "essence", <abyssalcraft:gatekeeperessence>, 1, 1, 0, 0, 100);

# Rotatick Diamond drop
remove_entry("divinerpg:entities/vanilla/rotatick", "divinerpg:rotatick", "minecraft:diamond");
add_entry("divinerpg:entities/vanilla/rotatick", "terran_shards", <divinerpg:terran_shards>, 1, 2, 0, 0, 100);

# Undead Miner Diamond & Diamond Pickaxe drop
clear_pool("divinerpg:entities/vanilla/miner", "divinerpg:miner");
clear_pool("divinerpg:entities/vanilla/miner", "divinerpg:miner0");
val undead_miner_table = LootTweaker.getTable("divinerpg:entities/vanilla/miner");
val undead_miner_pool = undead_miner_table.addPool("custom_loot", 1, 3, 0, 0);
undead_miner_pool.addItemEntry(<minecraft:rotten_flesh>, 90);
undead_miner_pool.addItemEntry(<minecraft:iron_ingot>, 10);

# Gaia Guardian II no Rune drops
clear_pool("botania:gaia_guardian_2", "runes");

# Extra Gaia Spirits
add_entry("botania:gaia_guardian", "extra_gaia_spirits", <botania:manaresource:5>, 6, 10, 0, 0, 100);
add_entry("botania:gaia_guardian_2", "extra_gaia_spirits", <botania:manaresource:5>, 12, 20, 0, 0, 100);

# Owlet's Wing from MysticalWorld Owls (not just Bewitchment ones)
add_entry("mysticalworld:entity/owl", "bewitchment:owlets_wing", <bewitchment:owlets_wing>, 0, 2, 0, 0, 100);

# Removing Hoof drop from Cleavers
remove_entry("bewitchment:entities/cleaver", "cleaver", "bewitchment:hoof");

# Removing Heart drop from Drudens
remove_entry("bewitchment:entities/druden", "druden", "bewitchment:heart");

# Shard of the Grotesque
add_entry("bewitchment:entities/ghost", "custom_loot", <contenttweaker:shard_of_the_grotesque>, 1, 2, 0, 0, 100);

# Galacticraft Dungeon removals
remove_entry("galacticraftcore:dungeon_tier_1", "dungeon_tier_1", "galacticraftcore:steel_shovel");
remove_entry("galacticraftcore:dungeon_tier_2", "dungeon_tier_2", "galacticraftplanets:desh_boots");
remove_entry("galacticraftcore:dungeon_tier_2", "dungeon_tier_2", "galacticraftplanets:desh_chestplate");
remove_entry("galacticraftcore:dungeon_tier_2", "dungeon_tier_2", "galacticraftplanets:desh_helmet");
remove_entry("galacticraftcore:dungeon_tier_2", "dungeon_tier_2", "galacticraftplanets:desh_leggings");
remove_entry("galacticraftcore:dungeon_tier_3", "dungeon_tier_3", "galacticraftplanets:desh_boots");
remove_entry("galacticraftcore:dungeon_tier_3", "dungeon_tier_3", "galacticraftplanets:desh_chestplate");
remove_entry("galacticraftcore:dungeon_tier_3", "dungeon_tier_3", "galacticraftplanets:desh_helmet");
remove_entry("galacticraftcore:dungeon_tier_3", "dungeon_tier_3", "galacticraftplanets:desh_leggings");

# Vamacheron -> Mortum Key
add_entry("divinerpg:entities/boss/vamacheron", "mortum_key", <contenttweaker:mortum_door_key>, 1, 1, 0, 0, 100);

# Twilight Demon -> Apalachia Boss Key, and other drops
remove_entry("divinerpg:entities/boss/twilight_demon", "divinerpg:twilight_demon", "divinerpg:halite_boots");
remove_entry("divinerpg:entities/boss/twilight_demon", "divinerpg:twilight_demon", "divinerpg:halite_helmet");
add_entry("divinerpg:entities/boss/twilight_demon", "apalachia_boss_key", <contenttweaker:apalachia_door_key2>, 1, 1, 0, 0, 100);
add_entry("divinerpg:entities/boss/twilight_demon", "apalachia_heart", <divinerpg:apalachia_heart>, 1, 1, 0, 0, 100);

# Soul Fiend -> Wildwood Boss, Feather of the Wild Woods
remove_entry("divinerpg:entities/boss/soul_fiend", "divinerpg:mortum_heart_drop", "divinerpg:mortum_heart");
add_entry("divinerpg:entities/boss/soul_fiend", "feather_of_the_wild_woods", <contenttweaker:feather_of_the_wild_woods>, 4, 4, 0, 0, 100);

# Increased Crimson Rite drop rate
val cultist_table = LootTweaker.getTable("thaumcraft:cultist");
val cultist_pool = cultist_table.getPool("special_1");
cultist_pool.addItemEntry(<thaumcraft:curio:6>, 1);

# Roots Wildwood Sapling Inject
remove_entry("roots:chests/inject", "main", "roots:wildwood_sapling");

# EvilCraft Inject
clear_pool("evilcraft:inject/chests/box_of_eternal_closure", "spirit");
clear_pool("evilcraft:inject/chests/condensed_blood", "main");
clear_pool("evilcraft:inject/chests/origins_of_darkness", "main");

# Tomatoes
val basicMCTable = LootTweaker.getTable("minecraft:chests/simple_dungeon");
val basicMCTableMain = basicMCTable.getPool("main");
basicMCTableMain.addItemEntry(<divinerpg:tomato_seeds>, 2);

# MysticalWorld Copper fix
val MystWorldHut = LootTweaker.getTable("mysticalworld:chests/hut");
val MystWorldHutGems = MystWorldHut.getPool("gems");
MystWorldHutGems.removeEntry("mysticalworld:copper_ingot");
MystWorldHutGems.removeEntry("mysticalworld:silver_ingot");
MystWorldHutGems.addItemEntry(<thermalfoundation:material:128>, 16);
MystWorldHutGems.addItemEntry(<thermalfoundation:material:130>, 16);

# Gaia Guardian Runes
clear_pool("botania:gaia_guardian_2", "runes");

# Roots inject clear
clear_pool("roots:chests/inject", "main");

# Toe of Frog from all the Frogs
add_entry("quark:entities/frog", "toe", <bewitchment:toe_of_frog>, 1, 2, 0, 0, 100);
add_entry("mysticalworld:entity/frog", "toe", <bewitchment:toe_of_frog>, 1, 2, 0, 0, 100);

# Aquatic Pellets from other Crabs
add_entry("divinerpg:entities/vanilla/crab", "pellets", <divinerpg:aquatic_pellets>, 0, 1, 0, 0, 100);
add_entry("quark:entities/crab", "pellets", <divinerpg:aquatic_pellets>, 0, 1, 0, 0, 100);

print("ENDING LootTweaker.zs");