# Author: Atricos
print("STARTING ProjectE.zs");

# Disabling Armor sets, because wearing them causes Ticking World errors (infinite crash loops & world corruption)
/*
recipes.remove(<projecte:item.pe_gem_armor_3>);
recipes.remove(<projecte:item.pe_gem_armor_2>);
recipes.remove(<projecte:item.pe_gem_armor_1>);
recipes.remove(<projecte:item.pe_gem_armor_0>);
recipes.remove(<projecte:item.pe_gem_armor_0>);
recipes.remove(<projecte:item.pe_dm_armor_3>);
recipes.remove(<projecte:item.pe_dm_armor_2>);
recipes.remove(<projecte:item.pe_dm_armor_1>);
recipes.remove(<projecte:item.pe_dm_armor_0>);
recipes.remove(<projecte:item.pe_rm_armor_3>);
recipes.remove(<projecte:item.pe_rm_armor_2>);
recipes.remove(<projecte:item.pe_rm_armor_1>);
recipes.remove(<projecte:item.pe_rm_armor_0>);
*/

# Philosopher's Stone
recipes.remove(<projecte:item.pe_philosophers_stone>);
mods.avaritia.ExtremeCrafting.addShaped("pe_philosophers_stone", <projecte:item.pe_philosophers_stone>.withTag({}),
[[null,null,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,null,null],
[null,<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>,null],
[<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<rftoolsdim:material_absorber>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:zysc_baach_sheet>,<rftoolsdim:liquid_absorber>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>],
[<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:death_core>,<contenttweaker:magical_singularity>,<contenttweaker:death_core>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>],
[<contenttweaker:gerc_crystal>,<rftoolsdim:feature_absorber>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:magical_singularity>,<contenttweaker:penultimate_machine_frame>,<contenttweaker:magical_singularity>,<contenttweaker:corrupted_dragon_token>,<rftoolsdim:terrain_absorber>,<contenttweaker:gerc_crystal>],
[<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:death_core>,<contenttweaker:magical_singularity>,<contenttweaker:death_core>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>],
[<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<rftoolsdim:biome_absorber>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:zysc_baach_sheet>,<rftoolsdim:time_absorber>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>],
[null,<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>,null],
[null,null,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,null,null]]);

print("ENDING ProjectE.zs");