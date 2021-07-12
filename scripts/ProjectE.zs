# Author: Atricos
print("STARTING ProjectE.zs");

# No randomized entities
mods.projecte.EntityRandomizer.clearMobs();

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

# Book of the Alchemist [WIP]
recipes.addShapeless(<projecte:item.pe_manual>, [<minecraft:book>,<alchemistry:compound:1010>,<contenttweaker:soul_of_the_dark_realm>]);

# Philosopher's Stone
recipes.remove(<projecte:item.pe_philosophers_stone>);
mods.extendedcrafting.TableCrafting.addShaped(<projecte:item.pe_philosophers_stone>.withTag({}),
[[null,null,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,null,null],
[null,<contenttweaker:gerc_crystal>,<contenttweaker:celestial_crystal_core>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:celestial_crystal_core>,<contenttweaker:gerc_crystal>,null],
[<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<rftoolsdim:material_absorber>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:zysc_baach_sheet>,<rftoolsdim:liquid_absorber>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>],
[<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:death_core>,<contenttweaker:magical_singularity>,<contenttweaker:death_core>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>],
[<contenttweaker:gerc_crystal>,<rftoolsdim:feature_absorber>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:magical_singularity>,<contenttweaker:penultimate_machine_frame>,<contenttweaker:magical_singularity>,<contenttweaker:corrupted_dragon_token>,<rftoolsdim:terrain_absorber>,<contenttweaker:gerc_crystal>],
[<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:death_core>,<contenttweaker:magical_singularity>,<contenttweaker:death_core>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>],
[<contenttweaker:gerc_crystal>,<contenttweaker:ruby_rubidium>,<rftoolsdim:biome_absorber>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:zysc_baach_sheet>,<rftoolsdim:time_absorber>,<contenttweaker:ruby_rubidium>,<contenttweaker:gerc_crystal>],
[null,<contenttweaker:gerc_crystal>,<contenttweaker:celestial_crystal_core>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:ruby_rubidium>,<contenttweaker:celestial_crystal_core>,<contenttweaker:gerc_crystal>,null],
[null,null,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,null,null]]);
<projecte:item.pe_philosophers_stone>.addShiftTooltip(format.darkPurple(format.italic("It's said that the main ingredient for")));
<projecte:item.pe_philosophers_stone>.addShiftTooltip(format.darkPurple(format.italic("a Philosphers's Stone ... is human soul.")));
<projecte:item.pe_philosophers_stone>.addShiftTooltip(format.darkPurple(format.italic("How odd.")));

# Low Covalence Dust
recipes.remove(<projecte:item.pe_covalence_dust>);
recipes.addShaped(<projecte:item.pe_covalence_dust> * 16, [[<enderio:item_material:35>,<lightningcraft:material:14>,<enderio:item_material:35>],[<contenttweaker:corrupted_draconium_dust>,<contenttweaker:dusty_thermal_singularity>,<contenttweaker:corrupted_draconium_dust>],[<enderio:item_material:35>,<lightningcraft:material:14>,<enderio:item_material:35>]]);

# Medium Covalence Dust
recipes.remove(<projecte:item.pe_covalence_dust:1>);
recipes.addShaped(<projecte:item.pe_covalence_dust:1> * 16, [[<rftools:infused_diamond>,<projecte:item.pe_covalence_dust>,<rftools:infused_diamond>],[<projecte:item.pe_covalence_dust>,<contenttweaker:endergy_singularity>,<projecte:item.pe_covalence_dust>],[<rftools:infused_diamond>,<projecte:item.pe_covalence_dust>,<rftools:infused_diamond>]]);

# Alchemical Chest
recipes.remove(<projecte:alchemical_chest>);
mods.extendedcrafting.TableCrafting.addShaped(<projecte:alchemical_chest>,
[[<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>],
[<contenttweaker:corrupted_draconium_block>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust:1>,<contenttweaker:corrupted_draconium_block>],
[<contenttweaker:corrupted_draconium_block>,<contenttweaker:celestial_crystal_core>,<draconicevolution:reactor_component>,<contenttweaker:techy_singularity>,<draconicevolution:reactor_component>,<contenttweaker:celestial_crystal_core>,<contenttweaker:corrupted_draconium_block>],
[<contenttweaker:corrupted_draconium_block>,<alchemistry:ingot:93>,<contenttweaker:techy_singularity>,<extracells:storage.component:3>,<contenttweaker:techy_singularity>,<alchemistry:ingot:93>,<contenttweaker:corrupted_draconium_block>],
[<contenttweaker:corrupted_draconium_block>,<alchemistry:ingot:93>,<draconicevolution:reactor_component>,<contenttweaker:techy_singularity>,<draconicevolution:reactor_component>,<alchemistry:ingot:93>,<contenttweaker:corrupted_draconium_block>],
[<contenttweaker:corrupted_draconium_block>,<alchemistry:ingot:93>,<alchemistry:ingot:93>,<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:93>,<alchemistry:ingot:93>,<contenttweaker:corrupted_draconium_block>],
[<contenttweaker:corrupted_draconium_block>,<contenttweaker:corrupted_draconium_block>,<contenttweaker:corrupted_draconium_block>,<contenttweaker:corrupted_draconium_block>,<contenttweaker:corrupted_draconium_block>,<contenttweaker:corrupted_draconium_block>,<contenttweaker:corrupted_draconium_block>]]);

# Transmutation Tablet
recipes.remove(<projecte:item.pe_transmutation_tablet>);
mods.extendedcrafting.TableCrafting.addShaped(<projecte:item.pe_transmutation_tablet>,
[[<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<contenttweaker:celestial_crystal_core>],
[<alchemistry:ingot:60>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<alchemistry:ingot:94>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:techy_singularity>,<contenttweaker:gerc_crystal>,<alchemistry:ingot:94>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:gerc_crystal>,<contenttweaker:techy_singularity>,<projecte:item.pe_philosophers_stone>.noReturn(),<contenttweaker:techy_singularity>,<contenttweaker:gerc_crystal>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:94>,<contenttweaker:gerc_crystal>,<contenttweaker:techy_singularity>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:94>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<alchemistry:ingot:60>],
[<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<contenttweaker:celestial_crystal_core>]]);
<projecte:transmutation_table>.addTooltip(format.red(format.bold("Warning: ")) + format.white("Crafting uses up this input Philosppher's Stone."));

# Energy Condenser
recipes.remove(<projecte:condenser_mk1>);
mods.extendedcrafting.TableCrafting.addShaped(<projecte:condenser_mk1>,
[[<projecte:item.pe_covalence_dust:1>,null,<projecte:item.pe_covalence_dust:1>,null,<projecte:item.pe_covalence_dust:1>,null,<projecte:item.pe_covalence_dust:1>],
[<alchemistry:ingot:60>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:66>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:66>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:66>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:66>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:66>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<rftoolsdim:mediocre_efficiency_essence>,<contenttweaker:penultimate_machine_frame>,<rftoolsdim:mediocre_efficiency_essence>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:alchemic_singularity>,<draconicadditions:chaos_stabilizer_core>,<contenttweaker:alchemic_singularity>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<projecte:alchemical_chest>,<contenttweaker:alchemic_singularity>,<projecte:alchemical_chest>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>]]);

# Tome of Knowledge
recipes.addShaped(<projecte:item.pe_tome>, [[<alchemistry:ingot:66>,<contenttweaker:alchemic_singularity>,<alchemistry:ingot:66>],[<contenttweaker:alchemic_singularity>,<projecte:item.pe_manual>,<contenttweaker:alchemic_singularity>],[<alchemistry:ingot:66>,<contenttweaker:alchemic_singularity>,<alchemistry:ingot:66>]]);

# Dark Matter
recipes.removeShaped(<projecte:item.pe_matter>);

# Red Matter
recipes.removeShaped(<projecte:item.pe_matter:1>);

# High Covalence Dust
recipes.remove(<projecte:item.pe_covalence_dust:2>);
recipes.addShaped(<projecte:item.pe_covalence_dust:2> * 16, [[<projecte:item.pe_matter>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_matter>],[<projecte:item.pe_covalence_dust:1>,<contenttweaker:alchemic_singularity>,<projecte:item.pe_covalence_dust:1>],[<projecte:item.pe_matter>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_matter>]]);

# Energy Condenser MK2
recipes.remove(<projecte:condenser_mk2>);
mods.extendedcrafting.TableCrafting.addShaped(<projecte:condenser_mk2>,
[[<projecte:item.pe_covalence_dust:2>,null,<projecte:item.pe_covalence_dust:2>,null,<projecte:item.pe_covalence_dust:2>,null,<projecte:item.pe_covalence_dust:2>],
[<alchemistry:ingot:60>,<projecte:item.pe_covalence_dust:2>,<alchemistry:ingot:72>,<projecte:item.pe_covalence_dust:2>,<alchemistry:ingot:72>,<projecte:item.pe_covalence_dust:2>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:72>,<projecte:item.pe_covalence_dust:2>,<alchemistry:ingot:72>,<projecte:item.pe_covalence_dust:2>,<alchemistry:ingot:72>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<rftoolsdim:efficiency_essence>,<contenttweaker:penultimate_machine_frame>,<rftoolsdim:efficiency_essence>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:alchemic_singularity>,<draconicadditions:chaos_stabilizer_core>,<contenttweaker:alchemic_singularity>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<projecte:condenser_mk1>,<contenttweaker:alchemic_singularity>,<projecte:condenser_mk1>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>]]);

# Transmutation Table
recipes.remove(<projecte:transmutation_table>);
mods.extendedcrafting.TableCrafting.addShaped(<projecte:transmutation_table>,
[[<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:60>,<alchemistry:ingot:72>,<alchemistry:ingot:72>,<alchemistry:ingot:72>,<alchemistry:ingot:60>,<contenttweaker:celestial_crystal_core>],
[<alchemistry:ingot:60>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<alchemistry:ingot:60>],
[<alchemistry:ingot:72>,<alchemistry:ingot:94>,<contenttweaker:gerc_crystal>,<contenttweaker:techy_singularity>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<alchemistry:ingot:72>],
[<alchemistry:ingot:72>,<contenttweaker:techy_singularity>,<projecte:item.pe_transmutation_tablet>,<contenttweaker:penultimate_machine_frame>,<projecte:item.pe_transmutation_tablet>,<contenttweaker:techy_singularity>,<alchemistry:ingot:72>],
[<alchemistry:ingot:72>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<contenttweaker:techy_singularity>,<contenttweaker:gerc_crystal>,<alchemistry:ingot:94>,<alchemistry:ingot:72>],
[<alchemistry:ingot:60>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<contenttweaker:gerc_crystal>,<contenttweaker:gerc_crystal>,<alchemistry:ingot:60>],
[<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:60>,<alchemistry:ingot:72>,<alchemistry:ingot:72>,<alchemistry:ingot:72>,<alchemistry:ingot:60>,<contenttweaker:celestial_crystal_core>]]);


print("ENDING ProjectE.zs");