# Author: Atricos

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import crafttweaker.item.IItemStack;

print("STARTING LootTweaker.zs");

function remove_entry(tableName as string, poolName as string, entryName as string){
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
remove_entry("aether_legacy:chests/silver_dungeon_reward", "main", "aether_legacy:invisibility_cape");
remove_entry("aether_legacy:chests/silver_dungeon_reward", "main", "aether_legacy:regeneration_stone");
remove_entry("aether_legacy:chests/gold_dungeon_reward", "main", "aether_legacy:iron_bubble");

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
<contenttweaker:eye_of_the_watcher>.addTooltip(format.white("the ") + format.blue("Eye of the Watcher") + format.white(" in the Nether."));

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

val abandoned_mineshaft_pools_to_clear = ["bewitchment_materials_pool", "evilcraft:inject/chests/origins_of_darkness", "evilcraft:inject/chests/condensed_blood",
					"evilcraft:inject/chests/box_of_eternal_closure", "AE2 Crystals", "AE2 DUSTS", "botania_inject_pool"] as string[];
for pool in abandoned_mineshaft_pools_to_clear {
	clear_pool("minecraft:chests/abandoned_mineshaft", pool);
}

val jungle_temple_pools_to_clear = ["bewitchment_materials_pool", "evilcraft:inject/chests/origins_of_darkness", "evilcraft:inject/chests/condensed_blood",
					"botania_inject_pool"] as string[];
for pool in jungle_temple_pools_to_clear {
	clear_pool("minecraft:chests/jungle_temple", pool);
}

clear_pool("minecraft:chests/jungle_temple_dispenser", "ebwizardry_ebwizardry_additional_dispenser_loot");

remove_entry("minecraft:chests/nether_bridge", "main", "rftoolsdim:parcel");
val nether_bridge_pools_to_clear = ["xuLootDropOfEvil", "bewitchment_nether_materials_pool", "bewitchment_materials_pool", "evilcraft:inject/chests/condensed_blood"] as string[];
for pool in nether_bridge_pools_to_clear {
	clear_pool("minecraft:chests/nether_bridge", pool);
}

remove_entry("minecraft:chests/simple_dungeon", "main", "rftoolsdim:parcel");

val simple_dungeon_pools_to_clear = ["bewitchment_materials_pool", "evilcraft:inject/chests/origins_of_darkness", "evilcraft:inject/chests/condensed_blood",
					"evilcraft:inject/chests/box_of_eternal_closure", "botania_inject_pool"] as string[];
for pool in simple_dungeon_pools_to_clear {
	clear_pool("minecraft:chests/simple_dungeon", pool);
}

val spawn_bonus_chest_pools_to_clear = ["evilcraft:inject/chests/origins_of_darkness", "evilcraft:inject/chests/condensed_blood", "botania_inject_pool"] as string[];
for pool in spawn_bonus_chest_pools_to_clear {
	clear_pool("minecraft:chests/spawn_bonus_chest", pool);
}

clear_pool("minecraft:chests/stronghold_crossing", "bewitchment_materials_pool");

remove_entry("minecraft:chests/stronghold_library", "main", "astralsorcery:constellation_paper");
remove_entry("minecraft:chests/stronghold_library", "main", "blueprint_electrode");
clear_pool("minecraft:chests/stronghold_library", "bewitchment_materials_pool");
clear_pool("minecraft:chests/stronghold_library", "evilcraft:inject/chests/box_of_eternal_closure");

remove_entry("minecraft:chests/village_blacksmith", "main", "rftoolsdim:parcel");
remove_entry("minecraft:chests/village_blacksmith", "main", "blueprint_electrode");
val village_blacksmith_pools_to_clear = ["bewitchment_materials_pool", "evilcraft:inject/chests/origins_of_darkness", "evilcraft:inject/chests/condensed_blood",
					"botania_inject_pool"] as string[];
for pool in spawn_bonus_chest_pools_to_clear {
	clear_pool("minecraft:chests/village_blacksmith", pool);
}

clear_pool("minecraft:chests/woodland_mansion", "bewitchment_materials_pool");

val tables_with_general_injected_loot = ["desert_pyramid", "end_city_treasure", "igloo_chest", "stronghold_corridor"] as string[];
val general_pools_to_clear = ["bewitchment_materials_pool", "botania_inject_pool"] as string[];
for table in tables_with_general_injected_loot {
	for pool in general_pools_to_clear {
		clear_pool("minecraft:chests/" + table, pool);
	}
}

# Vanilla mob Loot Tables


print("ENDING LootTweaker.zs");