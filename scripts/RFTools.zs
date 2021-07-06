# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.thaumcraft.Infusion;

print("STARTING RFTools.zs");

# Machine Frame
recipes.remove(<rftools:machine_frame>);
recipes.addShaped(<rftools:machine_frame>, [[<enderio:item_material:73>,<contenttweaker:crystalline_brown_slime_ingot>,<enderio:item_material:73>],[<contenttweaker:crystalline_brown_slime_ingot>,<teslacorelib:machine_case>,<contenttweaker:crystalline_brown_slime_ingot>],[<enderio:item_material:73>,<contenttweaker:crystalline_brown_slime_ingot>,<enderio:item_material:73>]]);

# Smart Wrench
recipes.remove(<rftools:smartwrench>);
recipes.addShapedMirrored(<rftools:smartwrench>, [[null,<industrialforegoing:plastic>,null],[null,<thermalfoundation:material:264>,<industrialforegoing:plastic>],[<thermalfoundation:material:136>,null,null]]);

# Charged Porter
recipes.remove(<rftools:charged_porter>);
recipes.addShaped(<rftools:charged_porter>, [[null,<thermalfoundation:storage_alloy:7>,null],[<thermalfoundation:storage_alloy:7>,<enderio:block_alloy:3>,<thermalfoundation:storage_alloy:7>],[<enderio:block_alloy:6>,<thermalfoundation:storage_alloy:7>,<enderio:block_alloy:6>]]);

# Machine Base
recipes.remove(<rftools:machine_base>);
recipes.addShaped(<rftools:machine_base> * 3, [[<enderio:item_material:73>,<teslacorelib:machine_case>,<enderio:item_material:73>],[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>]]);

# Coal Generator
recipes.remove(<rftools:coalgenerator>);
recipes.addShaped(<rftools:coalgenerator>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<minecraft:furnace>,<rftools:machine_frame>,<minecraft:furnace>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Crafter Tier 1
recipes.remove(<rftools:crafter1>);
recipes.addShaped(<rftools:crafter1>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<mekanism:machineblock3:5>,<rftools:machine_frame>,<mekanism:machineblock3:5>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Crafter Tier 2
recipes.remove(<rftools:crafter2>);
recipes.addShaped(<rftools:crafter2>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<enderio:item_alloy_ingot:6>,<rftools:machine_frame>,<enderio:item_alloy_ingot:6>],[<thermalfoundation:material:352>,<rftools:crafter1>,<thermalfoundation:material:352>]]);

# Crafter Tier 3
recipes.remove(<rftools:crafter3>);
recipes.addShaped(<rftools:crafter3>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<enderio:item_material:73>,<rftools:machine_frame>,<enderio:item_material:73>],[<thermalfoundation:material:352>,<rftools:crafter2>,<thermalfoundation:material:352>]]);

# Modular Storage
recipes.remove(<rftools:modular_storage>);
recipes.addShaped(<rftools:modular_storage>, [[<immersiveengineering:metal_decoration0:7>,<appliedenergistics2:material:24>,<immersiveengineering:metal_decoration0:7>],[<appliedenergistics2:material:24>,<rftools:machine_frame>,<appliedenergistics2:material:24>],[<immersiveengineering:metal_decoration0:7>,<appliedenergistics2:material:24>,<immersiveengineering:metal_decoration0:7>]]);

# Storage Tablet
recipes.removeShaped(<rftools:storage_module_tablet>, [[<*>,<minecraft:emerald>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<rftools:storage_module_tablet>, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>,<rftools:machine_base>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:5>]]);

# Tier 1 Storage Module
recipes.removeShaped(<rftools:storage_module>, [[null,<*>,null],[<*>,<minecraft:iron_ingot>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<rftools:storage_module>, [[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:5>],[<enderio:item_alloy_ingot:3>,<ironchest:iron_chest:2>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:5>]]);

# Tier 2 Storage Module
recipes.removeShaped(<rftools:storage_module:1>, [[null,<*>,null],[<*>,<rftools:storage_module>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<rftools:storage_module:1>, [[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:5>],[<enderio:item_alloy_ingot:3>,<rftools:storage_module>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:5>,<ironchest:iron_chest:2>,<enderio:item_alloy_ingot:5>]]);

# Tier 3 Storage Module
recipes.removeShaped(<rftools:storage_module:2>, [[null,<*>,null],[<*>,<rftools:storage_module:1>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<rftools:storage_module:2>, [[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:5>],[<enderio:item_alloy_ingot:3>,<rftools:storage_module:1>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:5>,<ironchest:iron_chest:2>,<enderio:item_alloy_ingot:5>]]);

# Remote Storage Module
recipes.remove(<rftools:storage_module:6>);
recipes.addShaped(<rftools:storage_module:6>, [[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot:5>],[<enderio:item_alloy_ingot>,<quantumflux:craftingpiece:4>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot:5>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot:5>]]);

# Remote Storage
recipes.remove(<rftools:remote_storage>);
recipes.addShaped(<rftools:remote_storage>, [[<thermalfoundation:material:352>,<quantumflux:craftingpiece:4>,<thermalfoundation:material:352>],[<thermalfoundation:material:295>,<rftools:machine_frame>,<thermalfoundation:material:295>],[<thermalfoundation:material:352>,<quantumflux:craftingpiece:4>,<thermalfoundation:material:352>]]);

# Screen Controller
recipes.remove(<rftools:screen_controller>);
recipes.addShaped(<rftools:screen_controller>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<minecraft:ender_eye>,<rftools:machine_frame>,<minecraft:ender_eye>],[<thermalfoundation:material:352>,<rftools:screen>,<thermalfoundation:material:352>]]);

# Screen
recipes.remove(<rftools:screen>);
recipes.addShaped(<rftools:screen>, [[<enderio:item_alloy_ingot:6>,<ore:dyeBlack>,<enderio:item_alloy_ingot:6>],[<ore:dyeBlack>,<rftools:machine_base>,<ore:dyeBlack>],[<enderio:item_alloy_ingot:6>,<ore:dyeBlack>,<enderio:item_alloy_ingot:6>]]);

# Timer
recipes.remove(<rftools:timer_block>);
recipes.addShaped(<rftools:timer_block>, [[<minecraft:redstone>,<minecraft:clock>,<minecraft:redstone>],[<minecraft:clock>,<rftools:machine_base>,<minecraft:clock>],[<minecraft:redstone>,<minecraft:clock>,<minecraft:redstone>]]);

# Sequencer
recipes.remove(<rftools:sequencer_block>);
recipes.addShaped(<rftools:sequencer_block>, [[<minecraft:redstone>,<minecraft:clock>,<minecraft:redstone>],[<enderio:item_alloy_ingot:3>,<rftools:machine_base>,<enderio:item_alloy_ingot:3>],[<minecraft:redstone>,<minecraft:clock>,<minecraft:redstone>]]);

# Counter
recipes.remove(<rftools:counter_block>);
recipes.addShaped(<rftools:counter_block>, [[<minecraft:redstone>,<minecraft:clock>,<minecraft:redstone>],[<enderio:item_alloy_ingot:4>,<rftools:machine_base>,<enderio:item_alloy_ingot:4>],[<minecraft:redstone>,<minecraft:clock>,<minecraft:redstone>]]);

# Space Chamber Corner Block
recipes.remove(<rftools:space_chamber>);
recipes.addShaped(<rftools:space_chamber>, [[<thermalfoundation:material:136>,<ore:blockGlassLightBlue>,<thermalfoundation:material:136>],[<ore:blockGlassLightBlue>,<rftools:machine_frame>,<ore:blockGlassLightBlue>],[<thermalfoundation:material:136>,<ore:blockGlassLightBlue>,<thermalfoundation:material:136>]]);

# Space Chamber Controller Block
recipes.remove(<rftools:space_chamber_controller>);
recipes.addShaped(<rftools:space_chamber_controller>, [[<thermalfoundation:material:264>,<rftools:space_chamber>,<thermalfoundation:material:264>],[<rftools:space_chamber>,<rftools:machine_frame>,<rftools:space_chamber>],[<thermalfoundation:material:264>,<rftools:space_chamber>,<thermalfoundation:material:264>]]);

# Space Chamber Card
recipes.remove(<rftools:space_chamber_card>);
recipes.addShaped(<rftools:space_chamber_card>, [[<enderio:item_alloy_ingot:6>,<thermalfoundation:material:264>,<enderio:item_alloy_ingot:6>],[<thermalfoundation:material:264>,<rftools:shape_card>,<thermalfoundation:material:264>],[<enderio:item_alloy_ingot:6>,<thermalfoundation:material:264>,<enderio:item_alloy_ingot:6>]]);

# Builder
recipes.remove(<rftools:builder>);
recipes.addShaped(<rftools:builder>, [[<industrialforegoing:block_destroyer>,<appliedenergistics2:drive>,<industrialforegoing:block_destroyer>],[<thermalfoundation:storage:8>,<rftools:machine_frame>,<thermalfoundation:storage:8>],[<industrialforegoing:block_placer>,<appliedenergistics2:drive>,<industrialforegoing:block_placer>]]);

# Composer
recipes.remove(<rftools:composer>);
recipes.addShaped(<rftools:composer>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<thermalfoundation:material:264>,<rftools:machine_frame>,<thermalfoundation:material:264>],[<thermalfoundation:material:352>,<rftools:shape_card>,<thermalfoundation:material:352>]]);

# Shape Card
recipes.remove(<rftools:shape_card>);
recipes.addShaped(<rftools:shape_card>, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<enderio:block_alloy>,<contenttweaker:crystalline_brown_slime_block>,<enderio:block_alloy>],[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>]]);

# Shapce Card (Void)
recipes.remove(<rftools:shape_card:1>);
recipes.addShaped(<rftools:shape_card:1>, [[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:compressed_obsidian1>,<rftools:shape_card>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>]]);

# Shape Card (Quarry)
recipes.remove(<rftools:shape_card:2>);
recipes.addShaped(<rftools:shape_card:2>, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<industrialforegoing:block_destroyer>,<rftools:shape_card>,<industrialforegoing:block_destroyer>],[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>]]);
recipes.addShaped(<rftools:shape_card:2>, [[<ore:dirt>,<ore:dirt>,<ore:dirt>],[<ore:dirt>,<rftools:shape_card:5>,<ore:dirt>],[<ore:dirt>,<ore:dirt>,<ore:dirt>]]);

# Shape Card (Silk Quarry)
recipes.remove(<rftools:shape_card:3>);
recipes.addShaped(<rftools:shape_card:3>, [[<enderio:item_alloy_ingot>,<minecraft:nether_star>,<enderio:item_alloy_ingot>],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]}),<rftools:shape_card:2>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]})],[<enderio:item_alloy_ingot>,<minecraft:nether_star>,<enderio:item_alloy_ingot>]]);
recipes.addShaped(<rftools:shape_card:3>, [[<ore:dirt>,<ore:dirt>,<ore:dirt>],[<ore:dirt>,<rftools:shape_card:6>,<ore:dirt>],[<ore:dirt>,<ore:dirt>,<ore:dirt>]]);

# Shape Card (Fortune Quarry)
recipes.remove(<rftools:shape_card:4>);
recipes.addShaped(<rftools:shape_card:4>, [[<enderio:item_alloy_ingot>,<minecraft:nether_star>,<enderio:item_alloy_ingot>],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}),<rftools:shape_card:2>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]})],[<enderio:item_alloy_ingot>,<minecraft:nether_star>,<enderio:item_alloy_ingot>]]);
recipes.addShaped(<rftools:shape_card:4>, [[<ore:dirt>,<ore:dirt>,<ore:dirt>],[<ore:dirt>,<rftools:shape_card:7>,<ore:dirt>],[<ore:dirt>,<ore:dirt>,<ore:dirt>]]);

# Shape Card (Clearing Quarry)
recipes.remove(<rftools:shape_card:5>);
recipes.addShaped(<rftools:shape_card:5>, [[<ore:fusedQuartz>,<ore:fusedQuartz>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<rftools:shape_card:2>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<ore:fusedQuartz>,<ore:fusedQuartz>]]);

# Shape Card (Clearing Silk Quarry)
recipes.remove(<rftools:shape_card:6>);
recipes.addShaped(<rftools:shape_card:6>, [[<enderio:item_alloy_ingot>,<minecraft:nether_star>,<enderio:item_alloy_ingot>],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]}),<rftools:shape_card:5>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]})],[<enderio:item_alloy_ingot>,<minecraft:nether_star>,<enderio:item_alloy_ingot>]]);
recipes.addShaped(<rftools:shape_card:6>, [[<enderio:block_fused_quartz>,<enderio:block_fused_quartz>,<enderio:block_fused_quartz>],[<enderio:block_fused_quartz>,<rftools:shape_card:3>,<enderio:block_fused_quartz>],[<enderio:block_fused_quartz>,<enderio:block_fused_quartz>,<enderio:block_fused_quartz>]]);

# Shape Card (Clearing Fortune Quarry)
recipes.remove(<rftools:shape_card:7>);
recipes.addShaped(<rftools:shape_card:7>, [[<enderio:item_alloy_ingot>,<minecraft:nether_star>,<enderio:item_alloy_ingot>],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}),<rftools:shape_card:5>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]})],[<enderio:item_alloy_ingot>,<minecraft:nether_star>,<enderio:item_alloy_ingot>]]);
recipes.addShaped(<rftools:shape_card:7>, [[<enderio:block_fused_quartz>,<enderio:block_fused_quartz>,<enderio:block_fused_quartz>],[<enderio:block_fused_quartz>,<rftools:shape_card:4>,<enderio:block_fused_quartz>],[<enderio:block_fused_quartz>,<enderio:block_fused_quartz>,<enderio:block_fused_quartz>]]);

# Shape Card (Pump)
recipes.remove(<rftools:shape_card:8>);
recipes.addShaped(<rftools:shape_card:8>, [[<enderio:item_alloy_ingot>,<enderio:block_tank:1>,<enderio:item_alloy_ingot>],[<mekanism:machineblock:12>,<rftools:shape_card>,<mekanism:machineblock:12>],[<enderio:item_alloy_ingot>,<enderio:block_tank:1>,<enderio:item_alloy_ingot>]]);

# Shape Card (Clearing Pump)
recipes.remove(<rftools:shape_card:9>);
recipes.addShaped(<rftools:shape_card:9>, [[<ore:fusedQuartz>,<ore:fusedQuartz>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<rftools:shape_card:8>,<ore:fusedQuartz>],[<ore:fusedQuartz>,<ore:fusedQuartz>,<ore:fusedQuartz>]]);

# Shape Card (Placing Liquids)
recipes.remove(<rftools:shape_card:10>);
recipes.addShaped(<rftools:shape_card:10>, [[<enderio:item_alloy_ingot>,<enderio:block_tank:1>,<enderio:item_alloy_ingot>],[<enderio:block_niard>,<rftools:shape_card>,<enderio:block_niard>],[<enderio:item_alloy_ingot>,<enderio:block_tank:1>,<enderio:item_alloy_ingot>]]);

# Simple Powercell
recipes.remove(<rftools:powercell_simple>);
recipes.addShaped(<rftools:powercell_simple>, [[<enderio:item_alloy_ingot:6>,<ore:fusedQuartz>,<enderio:item_alloy_ingot:6>],[<ore:fusedQuartz>,<rftools:machine_frame>,<ore:fusedQuartz>],[<enderio:item_alloy_ingot:6>,<ore:fusedQuartz>,<enderio:item_alloy_ingot:6>]]);

function rftoolsPowercellUpgrade(out as IItemStack, input_powercell_tag as IData) {
	if(!isNull(input_powercell_tag)) {
		return out.withTag(input_powercell_tag);
	} else {
		return out;
	}
}

# Powercell
recipes.remove(<rftools:powercell>);
recipes.addShaped("rftools_powercell_upgrade1", <rftools:powercell>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:3>,<rftools:powercell_simple>.marked("powercell"),<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:6>]],
function(out, ins, cInfo) { return rftoolsPowercellUpgrade(out,ins.powercell.tag); }, null);

# Advanced Powercell
recipes.remove(<rftools:powercell_advanced>);
recipes.addShaped("rftools_powercell_upgrade2", <rftools:powercell_advanced>, [[<enderio:item_alloy_ingot:6>,<thermalfoundation:material:136>,<enderio:item_alloy_ingot:6>],[<thermalfoundation:material:136>,<rftools:powercell>.marked("powercell"),<thermalfoundation:material:136>],[<enderio:item_alloy_ingot:6>,<thermalfoundation:material:136>,<enderio:item_alloy_ingot:6>]],
function(out, ins, cInfo) { return rftoolsPowercellUpgrade(out,ins.powercell.tag); }, null);

# Power Relay
recipes.remove(<rftools:relay>);
recipes.addShaped(<rftools:relay>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<thermalexpansion:augment:515>,<rftools:machine_frame>,<thermalexpansion:augment:515>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# RF Monitor
recipes.remove(<rftools:rf_monitor>);
recipes.addShaped(<rftools:rf_monitor>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<enderio:item_power_conduit:2>,<rftools:machine_frame>,<enderio:item_power_conduit:2>],[<thermalfoundation:material:352>,<immersiveengineering:connector:11>,<thermalfoundation:material:352>]]);

# Liquid Monitor
recipes.remove(<rftools:liquid_monitor>);
recipes.addShaped(<rftools:liquid_monitor>, [[<thermalfoundation:material:352>,<thermalfoundation:material:264>,<thermalfoundation:material:352>],[<enderio:block_tank:1>,<rftools:machine_frame>,<enderio:block_tank:1>],[<thermalfoundation:material:352>,<thermalfoundation:material:264>,<thermalfoundation:material:352>]]);

# Environmental Controller
recipes.remove(<rftools:environmental_controller>);
recipes.addShaped(<rftools:environmental_controller>, [[<botania:manaresource:14>,<rftools:booster>,<botania:manaresource:14>],[<contenttweaker:environmental_core>,<rftools:machine_frame>,<contenttweaker:environmental_core>],[<extendedcrafting:storage>,<rftools:booster>,<extendedcrafting:storage>]]);

# Spawner
recipes.remove(<rftools:spawner>);
recipes.addShaped(<rftools:spawner>, [[<enderio:block_alloy:6>,<quantumflux:craftingpiece:5>,<enderio:block_alloy:6>],[<mob_grinding_utils:saw>,<rftools:machine_frame>,<mob_grinding_utils:saw>],[<enderio:block_alloy:6>,<quantumflux:craftingpiece:5>,<enderio:block_alloy:6>]]);

# Matter Beamer
recipes.remove(<rftools:matter_beamer>);
recipes.addShaped(<rftools:matter_beamer>, [[<enderio:item_material:73>,<ore:glowstone>,<enderio:item_material:73>],[<ore:glowstone>,<rftools:machine_frame>,<ore:glowstone>],[<enderio:item_material:73>,<ore:glowstone>,<enderio:item_material:73>]]);

# Syringe
recipes.remove(<rftools:syringe>);
recipes.addShapedMirrored(<rftools:syringe>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,null],[<enderio:item_alloy_ingot:6>,<enderio:item_soul_vial>,<contenttweaker:crystalline_brown_slime_ingot>],[null,<contenttweaker:crystalline_brown_slime_ingot>,<enderio:item_alloy_ingot:6>]]);

# Item Filter
recipes.remove(<rftools:item_filter>);
recipes.addShaped(<rftools:item_filter>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:6>],[<ironchest:iron_chest>,<rftools:machine_frame>,<ironchest:iron_chest>],[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:6>]]);

# Security Manager
recipes.remove(<rftools:security_manager>);
recipes.addShaped(<rftools:security_manager>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<rftools:security_card>,<rftools:machine_frame>,<rftools:security_card>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Security Card
recipes.remove(<rftools:security_card>);
recipes.addShaped(<rftools:security_card>, [[null,<enderio:item_alloy_ingot>,null],[<enderio:item_alloy_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<enderio:item_alloy_ingot>],[null,<enderio:item_alloy_ingot>,null]]);

# Orphaning Card
recipes.remove(<rftools:orphaning_card>);
recipes.addShaped(<rftools:orphaning_card>, [[null,<enderio:item_alloy_ingot>,null],[<enderio:item_alloy_ingot>,<thermalfoundation:security>,<enderio:item_alloy_ingot>],[null,<enderio:item_alloy_ingot>,null]]);

# Powercell Card
recipes.remove(<rftools:powercell_card>);
recipes.addShaped(<rftools:powercell_card>, [[<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:1>],[<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:3>]]);

# Endergenic Generator
recipes.remove(<rftools:endergenic>);
recipes.addShaped(<rftools:endergenic>, [[<actuallyadditions:block_misc:6>,<thermalfoundation:material:295>,<actuallyadditions:block_misc:6>],[<thermalfoundation:material:295>,<rftools:machine_frame>,<thermalfoundation:material:295>],[<actuallyadditions:block_misc:6>,<thermalfoundation:material:295>,<actuallyadditions:block_misc:6>]]);

# Pearl Injector
recipes.remove(<rftools:pearl_injector>);
recipes.addShaped(<rftools:pearl_injector>, [[<actuallyadditions:block_misc:6>,<minecraft:ender_chest>,<actuallyadditions:block_misc:6>],[<thermalfoundation:material:295>,<rftools:machine_frame>,<thermalfoundation:material:295>],[<actuallyadditions:block_misc:6>,<minecraft:hopper>,<actuallyadditions:block_misc:6>]]);

# Ender Monitor
recipes.remove(<rftools:ender_monitor>);
recipes.addShaped(<rftools:ender_monitor>, [[<enderio:item_alloy_ingot:3>,<thermalfoundation:material:295>,<enderio:item_alloy_ingot:3>],[<thermalfoundation:material:295>,<rftools:machine_base>,<thermalfoundation:material:295>],[<enderio:item_alloy_ingot:3>,<thermalfoundation:material:295>,<enderio:item_alloy_ingot:3>]]);

# Storage Scanner
recipes.remove(<rftools:storage_scanner>);
recipes.addShaped(<rftools:storage_scanner>, [[<thermalfoundation:material:352>,<appliedenergistics2:wireless_access_point>,<thermalfoundation:material:352>],[<thermalfoundation:material:295>,<rftools:machine_frame>,<thermalfoundation:material:295>],[<thermalfoundation:material:352>,<thermalfoundation:material:295>,<thermalfoundation:material:352>]]);

# Elevator
recipes.remove(<rftools:elevator>);
recipes.addShaped(<rftools:elevator>, [[<enderio:item_alloy_ingot:6>,<openblocks:elevator>,<enderio:item_alloy_ingot:6>],[<enderio:item_material:73>,<rftools:machine_frame>,<enderio:item_material:73>],[<enderio:item_alloy_ingot:6>,<openblocks:elevator>,<enderio:item_alloy_ingot:6>]]);

# Storage Terminal
recipes.remove(<rftools:storage_terminal>);
recipes.addShaped(<rftools:storage_terminal>, [[<enderio:item_alloy_ingot:6>,<thermalfoundation:material:295>,<enderio:item_alloy_ingot:6>],[<ironchest:iron_chest>,<rftools:machine_base>,<ironchest:iron_chest>],[<enderio:item_alloy_ingot:6>,<thermalfoundation:material:295>,<enderio:item_alloy_ingot:6>]]);

# Level Emitter
recipes.remove(<rftools:level_emitter>);
recipes.addShaped(<rftools:level_emitter>, [[<enderio:item_alloy_ingot:6>,<appliedenergistics2:part:280>,<enderio:item_alloy_ingot:6>],[<ironchest:iron_chest>,<rftools:machine_base>,<ironchest:iron_chest>],[<enderio:item_alloy_ingot:6>,<appliedenergistics2:part:280>,<enderio:item_alloy_ingot:6>]]);

# Matter Transmitter
recipes.remove(<rftools:matter_transmitter>);
recipes.addShaped(<rftools:matter_transmitter>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:energy_crystal:8>,<galacticraftplanets:item_basic_asteroids:5>],[<enderutilities:energy_bridge:2>,<contenttweaker:stabilized_dimensional_machine_frame>,<enderutilities:energy_bridge:2>],[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:energy_crystal:8>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Matter Receiver
recipes.remove(<rftools:matter_receiver>);
recipes.addShaped(<rftools:matter_receiver>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:energy_crystal:8>,<galacticraftplanets:item_basic_asteroids:5>],[<enderutilities:energy_bridge:1>,<contenttweaker:stabilized_dimensional_machine_frame>,<enderutilities:energy_bridge:1>],[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:energy_crystal:8>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Dialing Device
recipes.remove(<rftools:dialing_device>);
recipes.addShaped(<rftools:dialing_device>, [[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:basic_item:19>,<galacticraftplanets:item_basic_asteroids:5>],[<enderio:block_dialing_device>,<contenttweaker:stabilized_dimensional_machine_frame>,<enderio:block_dialing_device>],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:basic_item:19>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Simple Dialer
recipes.remove(<rftools:simple_dialer>);
recipes.addShaped(<rftools:simple_dialer>, [[<projectred-core:resource_item:103>,<rftools:dialing_device>,<projectred-core:resource_item:103>]]);

# Destination Analyzer
recipes.remove(<rftools:destination_analyzer>);
recipes.addShaped(<rftools:destination_analyzer>, [[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:basic_item:19>,<galacticraftplanets:item_basic_asteroids:5>],[<agricraft:peripheral>,<contenttweaker:stabilized_dimensional_machine_frame>,<agricraft:peripheral>],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:basic_item:19>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Booster
recipes.remove(<rftools:booster>);
recipes.addShaped(<rftools:booster>, [[<enderio:item_alloy_ingot:6>,<contenttweaker:magical_core>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<rftools:machine_frame>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<minecraft:beacon>,<enderio:item_alloy_ingot:6>]]);

# Matter Booster
recipes.remove(<rftools:matter_booster>);
recipes.addShaped(<rftools:matter_booster>, [[<galacticraftplanets:item_basic_asteroids:5>,<rftools:booster>,<galacticraftplanets:item_basic_asteroids:5>],[<galacticraftcore:engine:1>,<rftools:destination_analyzer>,<galacticraftcore:engine:1>],[<galacticraftplanets:item_basic_asteroids:5>,<rftools:booster>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Infused Diamond
recipes.remove(<rftools:infused_diamond>);
mods.thaumcraft.Infusion.registerRecipe("infused_diamond", "", <rftools:infused_diamond>, 9, [<aspect:vitreus> * 100,<aspect:auram> * 100,<aspect:desiderium> * 50,<aspect:sol> * 20,<aspect:praecantatio> * 20], <botania:manaresource:2>, [<rftools:dimensional_shard>,<avaritia:resource:1>,<rftools:dimensional_shard>,<avaritia:resource:1>,<extendedcrafting:material:24>,<rftools:dimensional_shard>,<avaritia:resource:1>,<rftools:dimensional_shard>,<avaritia:resource:1>,<extendedcrafting:material:24>]);

# Infused Ender Pearl
recipes.remove(<rftools:infused_diamond>);
mods.thaumcraft.Infusion.registerRecipe("infused_enderpearl", "", <rftools:infused_enderpearl>, 9, [<aspect:vitreus> * 100,<aspect:auram> * 100,<aspect:alienis> * 50,<aspect:sol> * 20,<aspect:praecantatio> * 20], <botania:manaresource:1>, [<rftools:dimensional_shard>,<avaritia:resource:1>,<rftools:dimensional_shard>,<avaritia:resource:1>,<extendedcrafting:material:24>,<rftools:dimensional_shard>,<avaritia:resource:1>,<rftools:dimensional_shard>,<avaritia:resource:1>,<extendedcrafting:material:24>]);
<rftools:infused_enderpearl>.maxStackSize = "64";

# Advanced Charged Porter
recipes.remove(<rftools:advanced_charged_porter>);
recipes.addShaped(<rftools:advanced_charged_porter>, [[<alchemistry:ingot:44>,<rftools:infused_diamond>,<alchemistry:ingot:44>],[<rftools:infused_diamond>,<rftools:charged_porter>,<rftools:infused_diamond>],[<alchemistry:ingot:44>,<rftools:infused_diamond>,<alchemistry:ingot:44>]]);

print("ENDING RFTools.zs");