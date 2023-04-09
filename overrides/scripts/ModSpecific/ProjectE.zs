# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("STARTING ProjectE.zs");

# No randomized entities
mods.projecte.EntityRandomizer.clearMobs();

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
<projecte:item.pe_philosophers_stone>.addShiftTooltip(format.darkPurple(format.italic("a Philosopher's Stone ... is human life.")));
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
# Commented out due to Extended Crafting not supporting noReturn()
# <projecte:item.pe_transmutation_tablet>.addTooltip(format.red(format.bold("Warning: ")) + format.white("Crafting uses up the input Philosopher's Stone."));

# Energy Condenser
recipes.remove(<projecte:condenser_mk1>);
mods.extendedcrafting.TableCrafting.addShaped(<projecte:condenser_mk1>,
[[<projecte:item.pe_covalence_dust:1>,null,<projecte:item.pe_covalence_dust:1>,null,<projecte:item.pe_covalence_dust:1>,null,<projecte:item.pe_covalence_dust:1>],
[<alchemistry:ingot:60>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:66>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:66>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:66>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:66>,<projecte:item.pe_covalence_dust:1>,<alchemistry:ingot:66>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<rftoolsdim:mediocre_efficiency_essence>,<contenttweaker:penultimate_machine_frame>,<rftoolsdim:mediocre_efficiency_essence>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:alchemic_singularity>,<draconicadditions:chaos_stabilizer_core>,<contenttweaker:alchemic_singularity>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:alchemic_singularity>,<projecte:alchemical_chest>,<contenttweaker:alchemic_singularity>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>]]);

# Tome of Knowledge
recipes.addShaped(<projecte:item.pe_tome>, [[<alchemistry:ingot:66>,<contenttweaker:alchemic_singularity>,<alchemistry:ingot:66>],[<contenttweaker:alchemic_singularity>,<projecte:item.pe_manual>,<contenttweaker:alchemic_singularity>],[<alchemistry:ingot:66>,<contenttweaker:alchemic_singularity>,<alchemistry:ingot:66>]]);

# Dark Matter
recipes.removeShaped(<projecte:item.pe_matter>);
<projecte:item.pe_matter>.addTooltip(format.white("Can only be created from EMC."));
<projecte:item.pe_matter>.addTooltip(format.white("Use the Tome of Knowledge to learn all transmutations."));

# Red Matter
recipes.removeShaped(<projecte:item.pe_matter:1>);
<projecte:item.pe_matter:1>.addTooltip(format.white("Can only be created from EMC."));
<projecte:item.pe_matter:1>.addTooltip(format.white("Use the Tome of Knowledge to learn all transmutations."));

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
[<alchemistry:ingot:60>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:alchemic_singularity>,<projecte:condenser_mk1>,<contenttweaker:alchemic_singularity>,<contenttweaker:corrupted_draconium_ingot>,<alchemistry:ingot:60>],
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

# Dark Matter Furnace
recipes.remove(<projecte:dm_furnace>);
recipes.addShaped(<projecte:dm_furnace>, [[<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>],[<projecte:matter_block>,<galacticraftcore:machine_tiered:4>,<projecte:matter_block>],[<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>]]);

# Red Matter Furnace
recipes.remove(<projecte:rm_furnace>);
recipes.addShaped(<projecte:rm_furnace>, [[<projecte:matter_block:1>,<projecte:matter_block:1>,<projecte:matter_block:1>],[<projecte:matter_block:1>,<projecte:dm_furnace>,<projecte:matter_block:1>],[<projecte:matter_block:1>,<projecte:matter_block:1>,<projecte:matter_block:1>]]);

# Energy Collector MK1
recipes.remove(<projecte:collector_mk1>);
recipes.addShaped(<projecte:collector_mk1>, [[<extendedcrafting:singularity:4>,<contenttweaker:perfectium_block>,<extendedcrafting:singularity:4>],[<extendedcrafting:singularity_custom:126>,<contenttweaker:penultimate_machine_frame>,<extendedcrafting:singularity_custom:126>],[<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>]]);

# Energy Collector MK2
recipes.remove(<projecte:collector_mk2>);
recipes.addShaped(<projecte:collector_mk2>, [[<extendedcrafting:singularity:4>,<projecte:item.pe_matter>,<extendedcrafting:singularity:4>],[<extendedcrafting:singularity_custom:126>,<projecte:collector_mk1>,<extendedcrafting:singularity_custom:126>],[<alchemistry:ingot:66>,<alchemistry:ingot:66>,<alchemistry:ingot:66>]]);

# Energy Collector MK3
recipes.remove(<projecte:collector_mk3>);
recipes.addShaped(<projecte:collector_mk3>, [[<extendedcrafting:singularity:4>,<projecte:item.pe_matter:1>,<extendedcrafting:singularity:4>],[<extendedcrafting:singularity_custom:126>,<projecte:collector_mk2>,<extendedcrafting:singularity_custom:126>],[<alchemistry:ingot:72>,<alchemistry:ingot:72>,<alchemistry:ingot:72>]]);

# Anti-Matter Relay MK1
recipes.remove(<projecte:relay_mk1>);
recipes.addShaped(<projecte:relay_mk1>, [[<contenttweaker:antimatter_cluster>,<contenttweaker:perfectium_block>,<contenttweaker:antimatter_cluster>],[<contenttweaker:antimatter_cluster>,<contenttweaker:penultimate_machine_frame>,<contenttweaker:antimatter_cluster>],[<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>]]);

# Anti-Matter Relay MK2
recipes.remove(<projecte:relay_mk2>);
recipes.addShaped(<projecte:relay_mk2>, [[<contenttweaker:antimatter_cluster>,<projecte:item.pe_matter>,<contenttweaker:antimatter_cluster>],[<contenttweaker:antimatter_cluster>,<projecte:relay_mk1>,<contenttweaker:antimatter_cluster>],[<alchemistry:ingot:66>,<alchemistry:ingot:66>,<alchemistry:ingot:66>]]);

# Anti-Matter Relay MK3
recipes.remove(<projecte:relay_mk3>);
recipes.addShaped(<projecte:relay_mk3>, [[<contenttweaker:antimatter_cluster>,<projecte:item.pe_matter:1>,<contenttweaker:antimatter_cluster>],[<contenttweaker:antimatter_cluster>,<projecte:relay_mk2>,<contenttweaker:antimatter_cluster>],[<alchemistry:ingot:72>,<alchemistry:ingot:72>,<alchemistry:ingot:72>]]);

# Nova Catalyst
recipes.remove(<projecte:nova_catalyst>);

# Nova Cataclysm
recipes.remove(<projecte:nova_cataclysm>);

# Interdiction Torch
recipes.remove(<projecte:interdiction_torch>);
recipes.addShaped(<projecte:interdiction_torch>, [[<torchmaster:mega_torch>],[<alchemistry:ingot:43>],[<mob_grinding_utils:fan>]]);

# Repair Talisman
recipes.remove(<projecte:item.pe_repair_talisman>);
recipes.addShapedMirrored(<projecte:item.pe_repair_talisman>, [[<contenttweaker:magical_singularity>,<projecte:item.pe_matter:1>,<projecte:item.pe_covalence_dust:1>],[<projecte:item.pe_matter:1>,<draconicadditions:chaos_stabilizer_core>,<projecte:item.pe_matter:1>],[<projecte:item.pe_covalence_dust>,<projecte:item.pe_matter:1>,<projecte:item.pe_covalence_dust:2>]]);

# Dark Matter Sword
recipes.remove(<projecte:item.pe_dm_sword>);
recipes.addShaped(<projecte:item.pe_dm_sword>.withTag({}), [[<projecte:item.pe_matter>],[<draconicevolution:draconic_sword>],[<extendedcrafting:singularity:6>]]);

# Dark Matter Hammer
recipes.remove(<projecte:item.pe_dm_hammer>);
recipes.addShaped(<projecte:item.pe_dm_hammer>.withTag({}), [[<projecte:item.pe_matter>,<draconicevolution:draconic_pick>,<projecte:item.pe_matter>],[null,<extendedcrafting:singularity:6>,null],[null,<extendedcrafting:singularity:6>,null]]);

# Dark Matter Pickaxe
recipes.remove(<projecte:item.pe_dm_pick>);
recipes.addShaped(<projecte:item.pe_dm_pick>.withTag({}), [[<projecte:item.pe_matter>,<projecte:item.pe_matter>,<projecte:item.pe_matter>],[null,<draconicevolution:draconic_pick>,null],[null,<extendedcrafting:singularity:6>,null]]);

# Dark Matter Hoe
recipes.remove(<projecte:item.pe_dm_hoe>);
recipes.addShapedMirrored(<projecte:item.pe_dm_hoe>.withTag({}), [[<projecte:item.pe_matter>,<projecte:item.pe_matter>],[null,<draconicevolution:draconic_hoe>],[null,<extendedcrafting:singularity:6>]]);

# Dark Matter Shovel
recipes.remove(<projecte:item.pe_dm_shovel>);
recipes.addShaped(<projecte:item.pe_dm_shovel>.withTag({}), [[<projecte:item.pe_matter>],[<draconicevolution:draconic_shovel>],[<extendedcrafting:singularity:6>]]);

# Dark Matter Axe
recipes.remove(<projecte:item.pe_dm_axe>);
recipes.addShapedMirrored(<projecte:item.pe_dm_axe>.withTag({}), [[<projecte:item.pe_matter>,<projecte:item.pe_matter>],[<projecte:item.pe_matter>,<draconicevolution:draconic_axe>],[null,<extendedcrafting:singularity:6>]]);

# Dark Matter Shears
recipes.remove(<projecte:item.pe_dm_shears>);
recipes.addShaped(<projecte:item.pe_dm_shears>.withTag({}), [[null,<projecte:item.pe_matter:0>,null],[<ore:plankWood>,<extendedcrafting:singularity:6>,<projecte:item.pe_matter:0>],[<immersiveengineering:material:1>,<ore:plankWood>,null]]);

# Red Matter Shears
recipes.remove(<projecte:item.pe_rm_shears>);
recipes.addShaped(<projecte:item.pe_rm_shears>.withTag({}), [[null,<projecte:item.pe_matter:1>,null],[<ore:plankWood>,<projecte:item.pe_dm_shears>.withTag({}),<projecte:item.pe_matter:1>],[<immersiveengineering:material:1>,<ore:plankWood>,null]]);

# Dark Matter Armor
recipes.remove(<projecte:item.pe_dm_armor_3>);
recipes.remove(<projecte:item.pe_dm_armor_2>);
recipes.remove(<projecte:item.pe_dm_armor_1>);
recipes.remove(<projecte:item.pe_dm_armor_0>);

# Red Matter Armor
recipes.remove(<projecte:item.pe_rm_armor_3>);
recipes.remove(<projecte:item.pe_rm_armor_2>);
recipes.remove(<projecte:item.pe_rm_armor_1>);
recipes.remove(<projecte:item.pe_rm_armor_0>);

# Gem Armor
recipes.remove(<projecte:item.pe_gem_armor_3>);
recipes.remove(<projecte:item.pe_gem_armor_2>);
recipes.remove(<projecte:item.pe_gem_armor_1>);
recipes.remove(<projecte:item.pe_gem_armor_0>);

# Iron Band
recipes.remove(<projecte:item.pe_ring_iron_band>);
# recipe in config/brandon3055/CustomFusionRecipes.json

function addProjectERingRecipe(output as IItemStack, top_bottom_material as IIngredient, corner_material as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output.withTag({}), [[corner_material,top_bottom_material,corner_material],[<projecte:item.pe_matter>,<projecte:item.pe_ring_iron_band>,<projecte:item.pe_matter>],[corner_material,top_bottom_material,corner_material]]);
}

# Black Hole Band
addProjectERingRecipe(<projecte:item.pe_black_hole>, <draconicevolution:magnet:1>, <botania:blackholetalisman>);

# Archangel's Smite
addProjectERingRecipe(<projecte:item.pe_archangel_smite>, <contenttweaker:angelic_silicon_crystal_mixture>, <mysticalagriculture:supremium_arrow>);

# Harvest Goddess Band
addProjectERingRecipe(<projecte:item.pe_harvest_god>, <botania:goddesscharm>, <roots:spell_dust>.withTag({spell_storage: {s: "roots:spell_harvest"}}));

# Ignition Ring
addProjectERingRecipe(<projecte:item.pe_ignition>, <astralsorcery:itemcoloredlens>, <bloodmagic:lava_crystal>);

# Zero Ring
addProjectERingRecipe(<projecte:item.pe_zero_ring>, <bewitchment:bottled_frostfire>, <contenttweaker:rune_of_winter>);

# Swiftwolf's Rending Gale
recipes.remove(<projecte:item.pe_swrg>);
addProjectERingRecipe(<projecte:item.pe_swrg>.withTag({Mode: 0, UnprocessedEMC: 0.5999992489814758, StoredEMC: 31 as long}), <extrautils2:angelring:*>, <draconicevolution:tool_upgrade:5>);

# Gem of Eternal Density
recipes.remove(<projecte:item.pe_gem_density>);
recipes.addShaped(<projecte:item.pe_gem_density>.withTag({}), [[<extendedcrafting:singularity_custom:146>,<abyssalcraft:transmutationgem>.noReturn(),<extendedcrafting:singularity_custom:146>],[<projecte:item.pe_matter>,<projecte:item.pe_ring_iron_band>,<projecte:item.pe_matter>],[<extendedcrafting:singularity_custom:146>,<abyssalcraft:transmutationgem>.noReturn(),<extendedcrafting:singularity_custom:146>]]);

# Mercurial Eye
recipes.remove(<projecte:item.pe_mercurial_eye>);
recipes.addShaped(<projecte:item.pe_mercurial_eye>.withTag({}), [[null,<rftools:builder>,null],[<projecte:item.pe_matter:1>,<projecte:item.pe_ring_iron_band>,<projecte:item.pe_matter:1>],[<projecte:item.pe_matter:1>,<forge:bucketfilled>.withTag({FluidName: "mercury", Amount: 1000}),<projecte:item.pe_matter:1>]]);

# Body Stone
recipes.remove(<projecte:item.pe_body_stone>);
recipes.addShapedMirrored(<projecte:item.pe_body_stone>.withTag({}), [[<bewitchment:poppet_hungerprotection>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>],[<projecte:item.pe_matter:1>,<projecte:item.pe_ring_iron_band>,<projecte:item.pe_matter:1>],[<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<bewitchment:poppet_hungerprotection>]]);

# Soul Stone
recipes.remove(<projecte:item.pe_soul_stone>);
recipes.addShapedMirrored(<projecte:item.pe_soul_stone>.withTag({}), [[<bewitchment:poppet_voodooprotection>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>],[<projecte:item.pe_matter:1>,<projecte:item.pe_ring_iron_band>,<projecte:item.pe_matter:1>],[<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<bewitchment:poppet_voodooprotection>]]);

# Mind Stone
recipes.remove(<projecte:item.pe_mind_stone>);
recipes.addShapedMirrored(<projecte:item.pe_mind_stone>.withTag({}), [[<enderio:block_experience_obelisk>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>],[<projecte:item.pe_matter:1>,<projecte:item.pe_ring_iron_band>,<projecte:item.pe_matter:1>],[<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<enderio:block_experience_obelisk>]]);

# Volcanite Amulet
recipes.remove(<projecte:item.pe_volcanite_amulet>);
recipes.addShapedMirrored(<projecte:item.pe_volcanite_amulet>, [[<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>],[<projecte:item.pe_matter:1>,<projecte:item.pe_ring_iron_band>,<projecte:item.pe_matter:1>],[<bloodmagic:sigil_lava>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>]]);

# Evertide Amulet
recipes.remove(<projecte:item.pe_evertide_amulet>);
recipes.addShapedMirrored(<projecte:item.pe_evertide_amulet>, [[<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>],[<projecte:item.pe_matter:1>,<projecte:item.pe_ring_iron_band>,<projecte:item.pe_matter:1>],[<bloodmagic:sigil_water>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>]]);

# Hyperkinetic Lens
recipes.remove(<projecte:item.pe_hyperkinetic_lens>);

# Catalytic Lens
recipes.remove(<projecte:item.pe_catalitic_lens>);

# Destruction Catalyst
recipes.remove(<projecte:item.pe_destruction_catalyst>);
recipes.addShaped(<projecte:item.pe_destruction_catalyst>.withTag({}), [[<bloodmagic:item_demon_crystal:2>,<contenttweaker:essence_of_atomic_fusion>,<bloodmagic:item_demon_crystal:2>],[<bloodmagic:item_demon_crystal:2>,<projecte:item.pe_ring_iron_band>,<bloodmagic:item_demon_crystal:2>],[<bloodmagic:item_demon_crystal:2>,<contenttweaker:essence_of_atomic_fusion>,<bloodmagic:item_demon_crystal:2>]]);

# Watch of Flowing Time
recipes.remove(<projecte:item.pe_time_watch>);
mods.extendedcrafting.TableCrafting.addShaped(<projecte:item.pe_time_watch>.withTag({}),
[[<projecte:matter_block>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<projecte:matter_block>],
[<alchemistry:ingot:60>,<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:72>,<alchemistry:ingot:72>,<alchemistry:ingot:72>,<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:72>,<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),<rftoolsdim:time_absorber>,<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),<alchemistry:ingot:72>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:72>,<rftoolsdim:time_absorber>,<draconicevolution:celestial_manipulator>,<rftoolsdim:time_absorber>,<alchemistry:ingot:72>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:72>,<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),<rftoolsdim:time_absorber>,<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),<alchemistry:ingot:72>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:72>,<alchemistry:ingot:72>,<alchemistry:ingot:72>,<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:60>],
[<projecte:matter_block>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<projecte:matter_block>]]);

# Dark Matter Pedestal
recipes.remove(<projecte:dm_pedestal>);
recipes.addShaped(<projecte:dm_pedestal>, [[null,<projecte:matter_block>,null],[<contenttweaker:white_matter>,<projecte:matter_block>,<contenttweaker:white_matter>],[<projecte:matter_block>,<draconicevolution:dislocator_pedestal>,<projecte:matter_block>]]);

print("ENDING ProjectE.zs");
