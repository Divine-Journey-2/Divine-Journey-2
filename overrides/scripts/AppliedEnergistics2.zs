# Author: Atricos

import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Inscriber;

print("STARTING AppliedEnergistics2.zs");

# Sky Stone Chest
recipes.remove(<appliedenergistics2:sky_stone_chest>);
recipes.addShaped(<appliedenergistics2:sky_stone_chest>, [[<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>],[<appliedenergistics2:sky_stone_block>,<minecraft:iron_nugget>,<appliedenergistics2:sky_stone_block>],[<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>]]);

# Sky Stone Block Chest
recipes.remove(<appliedenergistics2:smooth_sky_stone_chest>);
recipes.addShaped(<appliedenergistics2:smooth_sky_stone_chest>, [[<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:smooth_sky_stone_block>,<minecraft:iron_nugget>,<appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>]]);

# Quartz Grindstone
recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped(<appliedenergistics2:grindstone>, [[<ore:stone>,<ore:gearWood>,<ore:stone>],[<ore:cobblestone>,<contenttweaker:energized_certus_quartz_crystal>,<ore:cobblestone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# Charger
recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>, [[<thermalfoundation:material:160>,<contenttweaker:energized_certus_quartz_crystal>,<thermalfoundation:material:160>],[<thermalfoundation:material:160>,null,null],[<thermalfoundation:material:160>,<contenttweaker:energized_certus_quartz_crystal>,<thermalfoundation:material:160>]]);

# Inscriber
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShapedMirrored(<appliedenergistics2:inscriber>, [[<thermalfoundation:material:352>,<minecraft:sticky_piston>,<thermalfoundation:material:352>],[<ore:crystalFluix>,null,<contenttweaker:energized_certus_quartz_crystal>],[<thermalfoundation:material:352>,<minecraft:sticky_piston>,<thermalfoundation:material:352>]]);

# Meteorite Compass
recipes.remove(<appliedenergistics2:sky_compass>);
recipes.addShaped(<appliedenergistics2:sky_compass>, [[null,<thermalfoundation:material:160>,null],[<thermalfoundation:material:160>,<contenttweaker:energized_certus_quartz_crystal>,<thermalfoundation:material:160>],[null,<thermalfoundation:material:160>,null]]);
<appliedenergistics2:sky_compass>.addTooltip(format.white(format.bold("Meteorites can ONLY be found in Atum.")));

# Tiny TNT
recipes.remove(<appliedenergistics2:tiny_tnt>);
recipes.addShapeless(<appliedenergistics2:tiny_tnt> * 4, [<minecraft:tnt>]);
recipes.addShaped(<minecraft:tnt>, [[<appliedenergistics2:tiny_tnt>,<appliedenergistics2:tiny_tnt>],[<appliedenergistics2:tiny_tnt>,<appliedenergistics2:tiny_tnt>]]);

# Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
recipes.addShaped(<appliedenergistics2:part:140> * 2, [[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],[oreAE2Dust,oreAE2Dust,oreAE2Dust],[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>]]);

# ME Glass Cable - Fluix
recipes.removeShapeless(<appliedenergistics2:part:16>, [<appliedenergistics2:part:140>], true);
recipes.addShaped(<appliedenergistics2:part:16> * 6, [[allFluix,allFluix,allFluix],[<appliedenergistics2:part:140>,<appliedenergistics2:part:140>,<appliedenergistics2:part:140>],[allFluix,allFluix,allFluix]]);

# Quartz Glass
recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.addShaped(<appliedenergistics2:quartz_glass> * 2, [[oreAE2Dust,<ore:blockGlass>,oreAE2Dust],[<ore:blockGlass>,oreAE2Dust,<ore:blockGlass>],[oreAE2Dust,<ore:blockGlass>,oreAE2Dust]]);

# Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [[<thermalfoundation:material:352>,<appliedenergistics2:part:16>,<thermalfoundation:material:352>],[<appliedenergistics2:part:16>,<contenttweaker:energized_certus_quartz_block>,<appliedenergistics2:part:16>],[<thermalfoundation:material:352>,<appliedenergistics2:part:16>,<thermalfoundation:material:352>]]);

# ME Controller
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [[<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:material:24>,<appliedenergistics2:smooth_sky_stone_block>],[allFluix,<contenttweaker:energized_certus_quartz_crystal>,allFluix],[<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:material:24>,<appliedenergistics2:smooth_sky_stone_block>]]);
recipes.addShaped(<appliedenergistics2:controller>, [[<appliedenergistics2:smooth_sky_stone_block>,allFluix,<appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:material:24>,<contenttweaker:energized_certus_quartz_crystal>,<appliedenergistics2:material:24>],[<appliedenergistics2:smooth_sky_stone_block>,allFluix,<appliedenergistics2:smooth_sky_stone_block>]]);

# Vibration Chamber
recipes.remove(<appliedenergistics2:vibration_chamber>);
recipes.addShaped(<appliedenergistics2:vibration_chamber>, [[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>],[<thermalfoundation:material:160>,<minecraft:furnace>,<thermalfoundation:material:160>],[<thermalfoundation:material:160>,<appliedenergistics2:energy_acceptor>,<thermalfoundation:material:160>]]);

# ME Drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [[<immersiveengineering:metal_decoration0:7>,<appliedenergistics2:material:24>,<immersiveengineering:metal_decoration0:7>],[<appliedenergistics2:material:24>,<appliedenergistics2:energy_acceptor>,<appliedenergistics2:material:24>],[<immersiveengineering:metal_decoration0:7>,<appliedenergistics2:material:24>,<immersiveengineering:metal_decoration0:7>]]);

# ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [[<appliedenergistics2:quartz_glass>,<appliedenergistics2:part:380>,<appliedenergistics2:quartz_glass>],[allFluix,<appliedenergistics2:material:24>,allFluix],[<thermalfoundation:material:352>,<ironchest:iron_chest>,<thermalfoundation:material:352>]]);

# Illuminated Panel
recipes.removeShaped(<appliedenergistics2:part:180>);
recipes.addShapedMirrored(<appliedenergistics2:part:180>, [[null,<minecraft:glowstone_dust>,<appliedenergistics2:quartz_glass>],[<thermalfoundation:material:160>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[null,<minecraft:glowstone_dust>,<appliedenergistics2:quartz_glass>]]);

# Formation Core
recipes.remove(<appliedenergistics2:material:43>);
recipes.addShaped(<appliedenergistics2:material:43>, [[null,<minecraft:redstone>,null],[allCertus,<appliedenergistics2:material:22>,allCertus],[null,<appliedenergistics2:material:8>,null]]);

# Annihilation Core
recipes.remove(<appliedenergistics2:material:44>);
recipes.addShaped(<appliedenergistics2:material:44>, [[null,<minecraft:redstone>,null],[<actuallyadditions:item_misc:5>,<appliedenergistics2:material:22>,<actuallyadditions:item_misc:5>],[null,<appliedenergistics2:material:8>,null]]);

# ME Terminal
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShapedMirrored(<appliedenergistics2:part:380>, [[null,<appliedenergistics2:material:22>,null],[<appliedenergistics2:material:43>,<ore:itemIlluminatedPanel>,<appliedenergistics2:material:44>],[null,<appliedenergistics2:material:22>,null]]);

# 1k ME Storage Component
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [[<ore:ingotConductiveIron>,allCertus,<ore:ingotConductiveIron>],[allCertus,<appliedenergistics2:material:22>,allCertus],[<ore:ingotConductiveIron>,allCertus,<ore:ingotConductiveIron>]]);

# 4k ME Storage Component
recipes.remove(<appliedenergistics2:material:36>);
recipes.addShaped(<appliedenergistics2:material:36>, [[<ore:ingotConductiveIron>,<appliedenergistics2:material:35>,<ore:ingotConductiveIron>],[<appliedenergistics2:material:35>,<appliedenergistics2:material:23>,<appliedenergistics2:material:35>],[<ore:ingotConductiveIron>,<appliedenergistics2:material:35>,<ore:ingotConductiveIron>]]);

# 16k ME Storage Component
recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [[<ore:ingotLumium>,<appliedenergistics2:material:36>,<ore:ingotLumium>],[<appliedenergistics2:material:36>,<appliedenergistics2:material:23>,<appliedenergistics2:material:36>],[<ore:ingotLumium>,<appliedenergistics2:material:36>,<ore:ingotLumium>]]);

# 64k ME Storage Component
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [[<ore:ingotLumium>,<appliedenergistics2:material:37>,<ore:ingotLumium>],[<appliedenergistics2:material:37>,<appliedenergistics2:material:24>,<appliedenergistics2:material:37>],[<ore:ingotLumium>,<appliedenergistics2:material:37>,<ore:ingotLumium>]]);

# ME Storage Housing
recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped(<appliedenergistics2:material:39>, [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,null,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# 1k ME Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_1k>);
recipes.addShaped(<appliedenergistics2:storage_cell_1k>.withTag({}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<appliedenergistics2:material:35>,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# 4k ME Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_4k>);
recipes.addShaped(<appliedenergistics2:storage_cell_4k>.withTag({}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<appliedenergistics2:material:36>,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# 16k ME Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_16k>);
recipes.addShaped(<appliedenergistics2:storage_cell_16k>.withTag({}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<appliedenergistics2:material:37>,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# 64k ME Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_64k>);
recipes.addShaped(<appliedenergistics2:storage_cell_64k>.withTag({}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<appliedenergistics2:material:38>,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# ME Level Emitter
recipes.remove(<appliedenergistics2:part:280>);
recipes.addShaped(<appliedenergistics2:part:280>, [[<projectred-core:resource_item:11>],[<ore:stickWood>],[<appliedenergistics2:material:23>]]);

# ME Storage Monitor
recipes.remove(<appliedenergistics2:part:400>);
recipes.addShaped(<appliedenergistics2:part:400>, [[null,<appliedenergistics2:part:280>,null],[<appliedenergistics2:material:8>,<ore:itemIlluminatedPanel>,<appliedenergistics2:material:8>],[null,<ironchest:iron_chest>,null]]);

# ME Conversion Monitor
recipes.remove(<appliedenergistics2:part:420>);
recipes.addShapedMirrored(<appliedenergistics2:part:420>, [[null,<appliedenergistics2:part:280>,null],[<appliedenergistics2:material:43>,<appliedenergistics2:part:400>,<appliedenergistics2:material:44>],[null,<appliedenergistics2:material:22>,null]]);

# ME Security Terminal
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>, [[<ore:ingotEnergeticAlloy>,<appliedenergistics2:chest>,<ore:ingotEnergeticAlloy>],[<thermalfoundation:material:352>,<appliedenergistics2:material:37>,<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<appliedenergistics2:material:24>,<thermalfoundation:material:352>]]);

# Crystal Growth Accelerator
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [[<immersiveengineering:material:19>,<appliedenergistics2:quartz_vibrant_glass>,<immersiveengineering:material:19>],[<appliedenergistics2:part:16>,<contenttweaker:energized_certus_quartz_block>,<appliedenergistics2:part:16>],[<immersiveengineering:material:19>,<appliedenergistics2:fluix_block>,<immersiveengineering:material:19>]]);

# Basic Card
recipes.remove(<appliedenergistics2:material:25>);
recipes.addShapedMirrored(<appliedenergistics2:material:25>, [[<ore:ingotSignalum>,<thermalfoundation:material:160>,null],[<ore:itemEnrichedAlloy>,<appliedenergistics2:material:23>,<thermalfoundation:material:160>],[<ore:ingotSignalum>,<thermalfoundation:material:160>,null]]);

# Advanced Card
recipes.remove(<appliedenergistics2:material:28>);
recipes.addShapedMirrored(<appliedenergistics2:material:28>, [[<ore:ingotSignalum>,<thermalfoundation:material:160>,null],[<ore:alloyElite>,<appliedenergistics2:material:25>,<thermalfoundation:material:160>],[<ore:ingotSignalum>,<thermalfoundation:material:160>,null]]);

# Redstone Card
recipes.remove(<appliedenergistics2:material:26>);
recipes.addShapedMirrored(<appliedenergistics2:material:26>, [[<ore:ingotRedAlloy>,<thermalfoundation:material:160>,null],[<ore:ingotRedAlloy>,<appliedenergistics2:material:25>,<thermalfoundation:material:160>],[<ore:ingotRedAlloy>,<thermalfoundation:material:160>,null]]);

# Capacity Card
recipes.remove(<appliedenergistics2:material:27>);
recipes.addShapedMirrored(<appliedenergistics2:material:27>, [[allCertus,<thermalfoundation:material:160>,null],[<ore:chestWood>,<appliedenergistics2:material:25>,<thermalfoundation:material:160>],[allCertus,<thermalfoundation:material:160>,null]]);

# Fuzzy Card
recipes.remove(<appliedenergistics2:material:29>);
recipes.addShapedMirrored(<appliedenergistics2:material:29>, [[<ore:blockWool>,<thermalfoundation:material:160>,null],[<ore:blockWool>,<appliedenergistics2:material:28>,<thermalfoundation:material:160>],[<ore:blockWool>,<thermalfoundation:material:160>,null]]);

# Inverter Card
recipes.remove(<appliedenergistics2:material:31>);
recipes.addShapedMirrored(<appliedenergistics2:material:31>, [[allCertus,<thermalfoundation:material:160>,null],[<projectred-core:resource_item:11>,<appliedenergistics2:material:28>,<thermalfoundation:material:160>],[allCertus,<thermalfoundation:material:160>,null]]);

# Acceleration Card
recipes.remove(<appliedenergistics2:material:30>);
recipes.addShapedMirrored(<appliedenergistics2:material:30>, [[allFluix,<thermalfoundation:material:160>,null],[<ore:ingotRefinedGlowstone>,<appliedenergistics2:material:28>,<thermalfoundation:material:160>],[allFluix,<thermalfoundation:material:160>,null]]);

# ME Export Bus
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260>, [[<thermalfoundation:material:352>,<appliedenergistics2:material:43>,<thermalfoundation:material:352>],[<immersiveengineering:material:1>,<minecraft:piston>,<immersiveengineering:material:1>]]);

# ME Import Bus
recipes.remove(<appliedenergistics2:part:240>);
recipes.addShaped(<appliedenergistics2:part:240>, [[<immersiveengineering:material:1>,<appliedenergistics2:material:44>,<immersiveengineering:material:1>],[<thermalfoundation:material:352>,<minecraft:sticky_piston>,<thermalfoundation:material:352>]]);

# ME Storage Bus
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShapedMirrored(<appliedenergistics2:part:220>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<appliedenergistics2:part:260>,<ore:alloyUltimate>,<appliedenergistics2:part:240>]]);

# ME IO Port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:io_port>, [[<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],[<appliedenergistics2:part:16>,<appliedenergistics2:material:22>,<appliedenergistics2:part:16>],[<appliedenergistics2:drive>,<thermalfoundation:material:352>,<appliedenergistics2:drive>]]);

# Cell Workbench
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.addShaped(<appliedenergistics2:cell_workbench>, [[<ore:blockRefinedObsidian>,<appliedenergistics2:material:23>,<ore:blockRefinedObsidian>],[<thermalfoundation:material:352>,<appliedenergistics2:energy_cell>,<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<appliedenergistics2:part:16>,<thermalfoundation:material:352>]]);

# Energy Cell
recipes.remove(<appliedenergistics2:energy_cell>);
recipes.addShaped(<appliedenergistics2:energy_cell>.withTag({}), [[<thermalfoundation:material:352>,<appliedenergistics2:material:8>,<thermalfoundation:material:352>],[<appliedenergistics2:material:8>,<contenttweaker:energized_certus_quartz_block>,<appliedenergistics2:material:8>],[<thermalfoundation:material:352>,<appliedenergistics2:material:8>,<thermalfoundation:material:352>]]);

# View Cell
recipes.removeShaped(<appliedenergistics2:view_cell>);
recipes.addShaped(<appliedenergistics2:view_cell>, [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,allCertus,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# Biometric Card
recipes.remove(<appliedenergistics2:biometric_card>);
recipes.addShapedMirrored(<appliedenergistics2:biometric_card>.withTag({}), [[<appliedenergistics2:material:24>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<appliedenergistics2:material:22>,<ore:itemCompressedCarbon>,<appliedenergistics2:material:22>]]);

# Memory Card
recipes.remove(<appliedenergistics2:memory_card>);
recipes.addShapedMirrored(<appliedenergistics2:memory_card>.withTag({}), [[<appliedenergistics2:material:23>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<appliedenergistics2:material:22>,<ore:itemCompressedCarbon>,<appliedenergistics2:material:22>]]);

# Network Tool
recipes.remove(<appliedenergistics2:network_tool>);
recipes.addShapedMirrored(<appliedenergistics2:network_tool>, [[<ore:itemQuartzWrench>,<immersiveengineering:material:2>,null],[<immersiveengineering:material:2>,<ironchest:iron_chest>,null],[null,null,<appliedenergistics2:part:380>]]);

# ME Annihilation Plane
recipes.remove(<appliedenergistics2:part:300>);
recipes.addShapedMirrored(<appliedenergistics2:part:300>, [[<thermalfoundation:material:160>,allFluix,<ore:itemCompressedObsidian>],[<appliedenergistics2:material:44>,allFluix,<ore:itemCompressedObsidian>],[<thermalfoundation:material:160>,allFluix,<ore:itemCompressedObsidian>]]);

# ME Formation Plane
recipes.remove(<appliedenergistics2:part:320>);
recipes.addShapedMirrored(<appliedenergistics2:part:320>, [[<thermalfoundation:material:160>,allFluix,<ore:itemCompressedDiamond>],[<appliedenergistics2:material:43>,allFluix,<ore:itemCompressedDiamond>],[<thermalfoundation:material:160>,allFluix,<ore:itemCompressedDiamond>]]);

# ME Identity Annihilation Plane
recipes.remove(<appliedenergistics2:part:301>);
recipes.addShapeless(<appliedenergistics2:part:301>, [<appliedenergistics2:part:300>,<appliedenergistics2:material:9>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]})]);

# P2P Tunnel - ME
recipes.remove(<appliedenergistics2:part:460>);
recipes.addShapedMirrored(<appliedenergistics2:part:460>, [[null,<thermalfoundation:material:160>,allFluix],[<thermalfoundation:material:160>,<appliedenergistics2:material:24>,allFluix],[null,<thermalfoundation:material:160>,allFluix]]);

# ME Crafting Terminal
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShapedMirrored(<appliedenergistics2:part:360>, [[<appliedenergistics2:material:23>,<contenttweaker:estimation_processor>,null],[<ore:ingotRedAlloy>,<mekanism:machineblock3:5>,<appliedenergistics2:part:380>],[<appliedenergistics2:material:23>,<contenttweaker:estimation_processor>,null]]);

# 1k ME Fluid Storage Component
recipes.remove(<appliedenergistics2:material:54>);
recipes.addShaped(<appliedenergistics2:material:54>, [[<minecraft:dye:4>,allCertus,<minecraft:dye:4>],[allCertus,<contenttweaker:operation_processor>,allCertus],[<minecraft:dye:4>,allCertus,<minecraft:dye:4>]]);

# 4k ME Fluid Storage Component
recipes.remove(<appliedenergistics2:material:55>);
recipes.addShaped(<appliedenergistics2:material:55>, [[<minecraft:dye:4>,<appliedenergistics2:material:54>,<minecraft:dye:4>],[<appliedenergistics2:material:54>,<contenttweaker:operation_processor>,<appliedenergistics2:material:54>],[<minecraft:dye:4>,<appliedenergistics2:material:54>,<minecraft:dye:4>]]);

# 16k ME Fluid Storage Component
recipes.remove(<appliedenergistics2:material:56>);
recipes.addShaped(<appliedenergistics2:material:56>, [[<contenttweaker:osglolapis>,<appliedenergistics2:material:55>,<contenttweaker:osglolapis>],[<appliedenergistics2:material:55>,<contenttweaker:operation_processor>,<appliedenergistics2:material:55>],[<contenttweaker:osglolapis>,<appliedenergistics2:material:55>,<contenttweaker:osglolapis>]]);

# 64k ME Fluid Storage Component
recipes.remove(<appliedenergistics2:material:57>);
recipes.addShaped(<appliedenergistics2:material:57>, [[<contenttweaker:osglolapis>,<appliedenergistics2:material:56>,<contenttweaker:osglolapis>],[<appliedenergistics2:material:56>,<contenttweaker:operation_processor>,<appliedenergistics2:material:56>],[<contenttweaker:osglolapis>,<appliedenergistics2:material:56>,<contenttweaker:osglolapis>]]);

# 1k ME Fluid Storage Cell
recipes.remove(<appliedenergistics2:fluid_storage_cell_1k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<appliedenergistics2:material:54>,<thermalfoundation:material:1028>],[<extracells:certustank>,<extracells:certustank>,<extracells:certustank>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_1k>.withTag({}), [<extracells:storage.casing:1>,<appliedenergistics2:material:54>]);

# 4k ME Fluid Storage Cell
recipes.remove(<appliedenergistics2:fluid_storage_cell_4k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<appliedenergistics2:material:55>,<thermalfoundation:material:1028>],[<extracells:certustank>,<extracells:certustank>,<extracells:certustank>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_4k>.withTag({}), [<extracells:storage.casing:1>,<appliedenergistics2:material:55>]);

# 16k ME Fluid Storage Cell
recipes.remove(<appliedenergistics2:fluid_storage_cell_16k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<appliedenergistics2:material:56>,<thermalfoundation:material:1028>],[<extracells:certustank>,<extracells:certustank>,<extracells:certustank>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_16k>.withTag({}), [<extracells:storage.casing:1>,<appliedenergistics2:material:56>]);

# 64k ME Fluid Storage Cell
recipes.remove(<appliedenergistics2:fluid_storage_cell_64k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>.withTag({}), [[<appliedenergistics2:quartz_vibrant_glass>,<thermalfoundation:material:1028>,<appliedenergistics2:quartz_vibrant_glass>],[<thermalfoundation:material:1028>,<appliedenergistics2:material:57>,<thermalfoundation:material:1028>],[<extracells:certustank>,<extracells:certustank>,<extracells:certustank>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_64k>.withTag({}), [<extracells:storage.casing:1>,<appliedenergistics2:material:57>]);

# ME Fluid Storage Bus
recipes.remove(<appliedenergistics2:part:221>);
recipes.addShapedMirrored(<appliedenergistics2:part:221>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<appliedenergistics2:part:261>,<mekanism:atomicalloy>,<appliedenergistics2:part:241>]]);

# ME Fluid Import Bus
recipes.remove(<appliedenergistics2:part:241>);
recipes.addShaped(<appliedenergistics2:part:241>, [[<appliedenergistics2:material:44>,<contenttweaker:operation_processor>,<appliedenergistics2:material:44>],[<thermalfoundation:material:352>,<minecraft:sticky_piston>,<thermalfoundation:material:352>]]);

# ME Fluid Export Bus
recipes.remove(<appliedenergistics2:part:261>);
recipes.addShaped(<appliedenergistics2:part:261>, [[<appliedenergistics2:material:43>,<contenttweaker:operation_processor>,<appliedenergistics2:material:43>],[<thermalfoundation:material:352>,<minecraft:piston>,<thermalfoundation:material:352>]]);

# ME Fluid Terminal
recipes.remove(<appliedenergistics2:part:520>);
recipes.addShaped(<appliedenergistics2:part:520>, [[null,<contenttweaker:operation_processor>,null],[<appliedenergistics2:material:22>,<appliedenergistics2:part:380>,<appliedenergistics2:material:22>],[null,<contenttweaker:operation_processor>,null]]);
recipes.addShaped(<appliedenergistics2:part:520>, [[null,<appliedenergistics2:material:22>,null],[<contenttweaker:operation_processor>,<appliedenergistics2:part:380>,<contenttweaker:operation_processor>],[null,<appliedenergistics2:material:22>,null]]);

# ME Interface
recipes.removeShaped(<appliedenergistics2:interface>);
recipes.addShapedMirrored(<appliedenergistics2:interface>, [[<enderio:item_alloy_ingot>,<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot>],[<appliedenergistics2:material:44>,<enderio:item_material:1>,<appliedenergistics2:material:43>],[<enderio:item_alloy_ingot>,<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot>]]);

# ME Fluid Interface
recipes.remove(<appliedenergistics2:fluid_interface>);
recipes.addShaped(<appliedenergistics2:fluid_interface>, [[<enderio:item_alloy_endergy_ingot:1>,<contenttweaker:methodology_processor>,<enderio:item_alloy_endergy_ingot:1>],[<appliedenergistics2:material:44>,<enderio:item_material:1>,<appliedenergistics2:material:43>],[<enderio:item_alloy_endergy_ingot:1>,<contenttweaker:methodology_processor>,<enderio:item_alloy_endergy_ingot:1>]]);

# Molecular Assembler
recipes.removeShaped(<appliedenergistics2:molecular_assembler>);
recipes.addShapedMirrored(<appliedenergistics2:molecular_assembler>, [[<enderio:item_alloy_ingot>,<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot>],[<appliedenergistics2:material:44>,<mekanism:machineblock3:5>,<appliedenergistics2:material:43>],[<enderio:item_alloy_ingot>,<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot>]]);

# Crafting Unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [[<enderio:item_alloy_ingot>,<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot>],[<appliedenergistics2:part:16>,<contenttweaker:cosmic_alloy>,<appliedenergistics2:part:16>],[<enderio:item_alloy_ingot>,<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot>]]);

# Crafting Co-Processing Unit
recipes.remove(<appliedenergistics2:crafting_accelerator>);
recipes.addShaped(<appliedenergistics2:crafting_accelerator>, [[<enderio:item_alloy_endergy_ingot:4>,<appliedenergistics2:material:24>,<enderio:item_alloy_endergy_ingot:4>],[<appliedenergistics2:material:24>,<appliedenergistics2:crafting_unit>.noReturn(),<appliedenergistics2:material:24>],[<enderio:item_alloy_endergy_ingot:4>,<appliedenergistics2:material:24>,<enderio:item_alloy_endergy_ingot:4>]]);

# 1k Crafting Storage
recipes.remove(<appliedenergistics2:crafting_storage_1k>);
recipes.addShaped(<appliedenergistics2:crafting_storage_1k>, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot:1>,<appliedenergistics2:crafting_unit>.noReturn(),<enderio:item_alloy_ingot:1>],[<enderio:item_alloy_ingot>,<appliedenergistics2:material:35>,<enderio:item_alloy_ingot>]]);

# 4k Crafting Storage
recipes.remove(<appliedenergistics2:crafting_storage_4k>);
recipes.addShaped(<appliedenergistics2:crafting_storage_4k>, [[<enderio:item_alloy_ingot>,glod_crystal,<enderio:item_alloy_ingot>],[glod_crystal,<appliedenergistics2:crafting_storage_1k>.noReturn(),glod_crystal],[<enderio:item_alloy_ingot>,<appliedenergistics2:material:36>,<enderio:item_alloy_ingot>]]);

# 16k Crafting Storage
recipes.remove(<appliedenergistics2:crafting_storage_16k>);
recipes.addShaped(<appliedenergistics2:crafting_storage_16k>, [[<enderio:item_alloy_ingot>,<alchemistry:ingot:3>,<enderio:item_alloy_ingot>],[<alchemistry:ingot:3>,<appliedenergistics2:crafting_storage_4k>.noReturn(),<alchemistry:ingot:3>],[<enderio:item_alloy_ingot>,<appliedenergistics2:material:37>,<enderio:item_alloy_ingot>]]);

# 64k Crafting Storage
recipes.remove(<appliedenergistics2:crafting_storage_64k>);
recipes.addShaped(<appliedenergistics2:crafting_storage_64k>, [[<enderio:item_alloy_ingot>,<ore:ingotOsmiridium>,<enderio:item_alloy_ingot>],[<ore:ingotOsmiridium>,<appliedenergistics2:crafting_storage_16k>.noReturn(),<ore:ingotOsmiridium>],[<enderio:item_alloy_ingot>,<appliedenergistics2:material:38>,<enderio:item_alloy_ingot>]]);

# Crafting Card
recipes.remove(<appliedenergistics2:material:53>);
recipes.addShapedMirrored(<appliedenergistics2:material:53>, [[<thermalfoundation:material:160>,<contenttweaker:methodology_processor>,null],[<appliedenergistics2:crafting_unit>,<appliedenergistics2:material:25>,<thermalfoundation:material:160>],[<thermalfoundation:material:160>,<contenttweaker:methodology_processor>,null]]);
<appliedenergistics2:material:53>.addTooltip(format.white("Use it sparingly! If you use it a lot, it could"));
<appliedenergistics2:material:53>.addTooltip(format.white("cause your ME Network to completely lag out!"));

# Fluix Pearl
recipes.remove(<appliedenergistics2:material:9>);
recipes.addShaped(<appliedenergistics2:material:9>, [[<plustic:osmiridiumingot>,allFluix,<plustic:osmiridiumingot>],[allFluix,<minecraft:ender_pearl>,allFluix],[<plustic:osmiridiumingot>,allFluix,<plustic:osmiridiumingot>]]);

# Wireless Receiver
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [[null,<appliedenergistics2:material:9>,null],[<enderio:item_alloy_ingot:6>,<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot:6>],[null,<enderio:item_alloy_ingot:6>,null]]);

# Wireless Booster
recipes.remove(<appliedenergistics2:material:42>);
recipes.addShaped(<appliedenergistics2:material:42>, [[<contenttweaker:steaming_restonia_crystal>,<ore:ingotOsmiridium>,<contenttweaker:steaming_restonia_crystal>],[<ore:ingotOsmiridium>,<appliedenergistics2:material:41>,<ore:ingotOsmiridium>],[<contenttweaker:steaming_restonia_crystal>,<ore:ingotOsmiridium>,<contenttweaker:steaming_restonia_crystal>]]);

# Wireless Access Point
recipes.remove(<appliedenergistics2:wireless_access_point>);
recipes.addShaped(<appliedenergistics2:wireless_access_point>, [[<enderio:item_alloy_ingot:6>,<appliedenergistics2:material:41>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<enderio:item_material:73>,<enderio:item_alloy_ingot:6>],[null,<actuallyadditions:block_misc:8>,null]]);

# ME Quantum Ring
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShapedMirrored(<appliedenergistics2:quantum_ring>, [[<enderio:item_alloy_ingot:6>,<appliedenergistics2:material:9>,<enderio:item_alloy_ingot:6>],[<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot:6>,<appliedenergistics2:part:76>],[<enderio:item_alloy_ingot:6>,<appliedenergistics2:material:9>,<enderio:item_alloy_ingot:6>]]);

# ME Quantum Link Chamber
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped(<appliedenergistics2:quantum_link>, [[<appliedenergistics2:quantum_ring>,<appliedenergistics2:material:9>,<appliedenergistics2:quantum_ring>],[<appliedenergistics2:material:9>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:9>],[<appliedenergistics2:quantum_ring>,<appliedenergistics2:material:9>,<appliedenergistics2:quantum_ring>]]);

# 2^3 Spatial Component
recipes.remove(<appliedenergistics2:material:32>);
recipes.addShaped(<appliedenergistics2:material:32>, [[<alchemistry:ingot:3>,<appliedenergistics2:material:9>,<alchemistry:ingot:3>],[<appliedenergistics2:material:9>,<contenttweaker:methodology_processor>,<appliedenergistics2:material:9>],[<alchemistry:ingot:3>,<appliedenergistics2:material:9>,<alchemistry:ingot:3>]]);

# 16^3 Spatial Component
recipes.remove(<appliedenergistics2:material:33>);
recipes.addShaped(<appliedenergistics2:material:33>, [[<alchemistry:ingot:3>,<appliedenergistics2:material:32>,<alchemistry:ingot:3>],[<appliedenergistics2:material:32>,<contenttweaker:methodology_processor>,<appliedenergistics2:material:32>],[<alchemistry:ingot:3>,<appliedenergistics2:material:32>,<alchemistry:ingot:3>]]);

# 128^3 Spatial Component
recipes.remove(<appliedenergistics2:material:34>);
recipes.addShaped(<appliedenergistics2:material:34>, [[<alchemistry:ingot:3>,<appliedenergistics2:material:33>,<alchemistry:ingot:3>],[<appliedenergistics2:material:33>,<contenttweaker:methodology_processor>,<appliedenergistics2:material:33>],[<alchemistry:ingot:3>,<appliedenergistics2:material:33>,<alchemistry:ingot:3>]]);

# Spatial IO Port
recipes.remove(<appliedenergistics2:spatial_io_port>);
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [[<enderio:item_alloy_ingot>,<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot>],[<appliedenergistics2:part:16>,<appliedenergistics2:io_port>,<appliedenergistics2:part:16>],[<enderio:item_alloy_ingot:6>,<contenttweaker:methodology_processor>,<enderio:item_alloy_ingot:6>]]);

# Spatial Pylon
recipes.remove(<appliedenergistics2:spatial_pylon>);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [[<appliedenergistics2:quartz_glass>,<contenttweaker:methodology_processor>,<appliedenergistics2:quartz_glass>],[<contenttweaker:methodology_processor>,<appliedenergistics2:material:9>,<contenttweaker:methodology_processor>],[<appliedenergistics2:quartz_glass>,<contenttweaker:methodology_processor>,<appliedenergistics2:quartz_glass>]]);

# Blank Pattern
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52>, [[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>],[<appliedenergistics2:quartz_vibrant_glass>,<contenttweaker:methodology_processor>,<appliedenergistics2:quartz_vibrant_glass>],[<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>]]);

# Pattern Terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShaped(<appliedenergistics2:part:340>, [[null,<contenttweaker:methodology_processor>,null],[<appliedenergistics2:material:52>,<appliedenergistics2:part:360>,<appliedenergistics2:material:52>],[null,<contenttweaker:methodology_processor>,null]]);

# Interface Terminal
recipes.remove(<appliedenergistics2:part:480>);
recipes.addShapeless(<appliedenergistics2:part:480>, [<appliedenergistics2:part:521>]);
recipes.addShaped(<appliedenergistics2:part:480>, [[null,<contenttweaker:methodology_processor>,null],[<appliedenergistics2:interface>,<appliedenergistics2:part:360>,<appliedenergistics2:interface>],[null,<contenttweaker:methodology_processor>,null]]);

# ME Fluid Level Emitter
recipes.remove(<appliedenergistics2:part:281>);
recipes.addShaped(<appliedenergistics2:part:281>, [[<projectred-core:resource_item:11>],[<ore:stickWood>],[<contenttweaker:operation_processor>]]);

# Press Duplication recipes
val ae2_presses = [<appliedenergistics2:material:13>,<appliedenergistics2:material:14>,<appliedenergistics2:material:15>,<appliedenergistics2:material:19>] as IItemStack[];
for i in 0 to 4 {
	Inscriber.removeRecipe(ae2_presses[i]);
	Inscriber.addRecipe(ae2_presses[i], <thermalfoundation:storage_alloy>, true, ae2_presses[i]);
}

# Entropy Manipulator
recipes.remove(<appliedenergistics2:entropy_manipulator>);
recipes.addShapedMirrored(<appliedenergistics2:entropy_manipulator>.withTag({}), [[null,<appliedenergistics2:energy_cell>,<appliedenergistics2:fluix_block>],[null,<enderio:item_alloy_ingot:6>,<contenttweaker:operation_processor>],[<enderio:item_alloy_ingot:6>,null,null]]);

# Matter Condenser
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped(<appliedenergistics2:condenser>, [[<enderio:item_alloy_endergy_ingot:1>,<appliedenergistics2:fluix_block>,<enderio:item_alloy_endergy_ingot:1>],[<appliedenergistics2:fluix_block>,<appliedenergistics2:dense_energy_cell>,<appliedenergistics2:fluix_block>],[<enderio:item_alloy_endergy_ingot:1>,<appliedenergistics2:fluix_block>,<enderio:item_alloy_endergy_ingot:1>]]);

# Dense Smart Cables
recipes.removeShapeless(<appliedenergistics2:part:76>, [<appliedenergistics2:part:516>,<minecraft:redstone>,<minecraft:glowstone_dust>]);
recipes.addShapeless(<appliedenergistics2:part:76>, [<appliedenergistics2:part:516>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>]);
recipes.addShapeless(<appliedenergistics2:part:76>, [<appliedenergistics2:part:516>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:glowstone>]);

# Covered, Smart, Dense Cable conversion recipes
recipes.addShapeless(<appliedenergistics2:part:36> * 4, [<appliedenergistics2:part:516>]);
recipes.addShapeless(<appliedenergistics2:part:56> * 4, [<appliedenergistics2:part:76>]);
recipes.addShaped(<appliedenergistics2:part:76>, [[<appliedenergistics2:part:56>,<appliedenergistics2:part:56>],[<appliedenergistics2:part:56>,<appliedenergistics2:part:56>]]);

# Creative Energy Cell
mods.extendedcrafting.TableCrafting.addShaped(<appliedenergistics2:creative_energy_cell>,
[[<extendedcrafting:storage>, <extendedcrafting:storage>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <extendedcrafting:storage>, <extendedcrafting:storage>],
[<extendedcrafting:storage>, <extendedcrafting:storage>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <extendedcrafting:storage>, <extendedcrafting:storage>],
[<contenttweaker:white_matter>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <solarflux:solar_panel_chaotic>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <contenttweaker:white_matter>],
[<contenttweaker:white_matter>, <appliedenergistics2:dense_energy_cell>, <draconicevolution:draconium_capacitor:2>, <projecte:item.pe_klein_star:5>, <thermalexpansion:capacitor:32000>.withTag({Energy: 25000000}), <appliedenergistics2:dense_energy_cell>, <contenttweaker:white_matter>],
[<contenttweaker:white_matter>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <enderio:block_cap_bank>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <contenttweaker:white_matter>],
[<extendedcrafting:storage>, <extendedcrafting:storage>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <extendedcrafting:storage>, <extendedcrafting:storage>],
[<extendedcrafting:storage>, <extendedcrafting:storage>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <extendedcrafting:storage>, <extendedcrafting:storage>]]);

# Creative ME Storage Cell
mods.extendedcrafting.TableCrafting.addShaped(<appliedenergistics2:creative_storage_cell>.withTag({}),
[[<alchemistry:ingot:69>, <alchemistry:ingot:69>, <alchemistry:ingot:69>, <alchemistry:ingot:58>, <alchemistry:ingot:58>, <alchemistry:ingot:58>, <alchemistry:ingot:69>, <alchemistry:ingot:69>, <alchemistry:ingot:69>],
[<alchemistry:ingot:69>, <botania:pool:1>, <contenttweaker:essence_of_space>, <appliedenergistics2:creative_energy_cell>, <extracells:storage.component:10>, <appliedenergistics2:creative_energy_cell>, <contenttweaker:essence_of_space>, <botania:pool:1>, <alchemistry:ingot:69>],
[<alchemistry:ingot:69>, <contenttweaker:essence_of_space>, <extracells:storage.component:3>, <extracells:storage.component:3>, <extracells:storage.component:17>, <extracells:storage.component:3>, <extracells:storage.component:3>, <contenttweaker:essence_of_space>, <alchemistry:ingot:69>],
[<alchemistry:ingot:58>, <appliedenergistics2:creative_energy_cell>, <extracells:storage.component:3>, <thaumicenergistics:essentia_component_64k>, <thaumicenergistics:essentia_component_64k>, <thaumicenergistics:essentia_component_64k>, <extracells:storage.component:3>, <appliedenergistics2:creative_energy_cell>, <alchemistry:ingot:58>],
[<alchemistry:ingot:58>, <extracells:storage.component:10>, <extracells:storage.component:17>, <thaumicenergistics:essentia_component_64k>, <erebus:wand_of_animation>, <thaumicenergistics:essentia_component_64k>, <extracells:storage.component:17>, <extracells:storage.component:10>, <alchemistry:ingot:58>],
[<alchemistry:ingot:58>, <appliedenergistics2:creative_energy_cell>, <extracells:storage.component:3>, <thaumicenergistics:essentia_component_64k>, <thaumicenergistics:essentia_component_64k>, <thaumicenergistics:essentia_component_64k>, <extracells:storage.component:3>, <appliedenergistics2:creative_energy_cell>, <alchemistry:ingot:58>],
[<alchemistry:ingot:69>, <contenttweaker:essence_of_space>, <extracells:storage.component:3>, <extracells:storage.component:3>, <extracells:storage.component:17>, <extracells:storage.component:3>, <extracells:storage.component:3>, <contenttweaker:essence_of_space>, <alchemistry:ingot:69>],
[<alchemistry:ingot:69>, <botania:pool:1>, <contenttweaker:essence_of_space>, <appliedenergistics2:creative_energy_cell>, <extracells:storage.component:10>, <appliedenergistics2:creative_energy_cell>, <contenttweaker:essence_of_space>, <botania:pool:1>, <alchemistry:ingot:69>],
[<alchemistry:ingot:69>, <alchemistry:ingot:69>, <alchemistry:ingot:69>, <alchemistry:ingot:58>, <alchemistry:ingot:58>, <alchemistry:ingot:58>, <alchemistry:ingot:69>, <alchemistry:ingot:69>, <alchemistry:ingot:69>]]);

# Pattern Expansion Card
recipes.remove(<appliedenergistics2:material:58>);
recipes.addShapedMirrored(<appliedenergistics2:material:58>, [[<appliedenergistics2:material:52>,<thermalfoundation:material:160>,null],[<appliedenergistics2:interface>,<appliedenergistics2:material:28>,<thermalfoundation:material:160>],[<appliedenergistics2:material:52>,<thermalfoundation:material:160>,null]]);

# ME Extended Processing Pattern Terminal
recipes.remove(<appliedenergistics2:part:341>);
recipes.addShapedMirrored(<appliedenergistics2:part:341>, [[<contenttweaker:estimation_processor>,null,<contenttweaker:estimation_processor>],[<appliedenergistics2:part:340>,<appliedenergistics2:material:24>,<appliedenergistics2:part:340>],[<contenttweaker:estimation_processor>,null,<contenttweaker:estimation_processor>]]);

# ME OreDict Storage Bus
recipes.remove(<appliedenergistics2:part:222>);
recipes.addShaped(<appliedenergistics2:part:222>, [[null,<contenttweaker:estimation_processor>,null],[<mekanism:dictionary>,<appliedenergistics2:part:220>,<mekanism:dictionary>],[null,<contenttweaker:estimation_processor>,null]]);


print("ENDING AppliedEnergistics2.zs");
