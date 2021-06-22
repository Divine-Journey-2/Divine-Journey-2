# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.thermalexpansion.Transposer;
import mods.thaumcraft.Crucible;

print("STARTING ExtendedCrafting.zs");

# Handheld Crafting Table
recipes.remove(<extendedcrafting:handheld_table>);

# Black Iron Ingot
recipes.removeShapeless(<extendedcrafting:material>, [<minecraft:iron_ingot>,<*>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<extendedcrafting:material> * 4, <ore:ingot_dark_soularium>, null, 1200, 512, [<quantumflux:darkstone> * 3], "Alloying");
EIOAlloySmelter.addRecipe(<extendedcrafting:material> * 4, [<ore:ingot_dark_soularium>, <quantumflux:darkstone> * 3], 120000);
IEAlloySmelter.addRecipe(<extendedcrafting:material> * 4, <ore:ingot_dark_soularium>, <quantumflux:darkstone> * 3, 6000);
mods.thermalexpansion.InductionSmelter.addRecipe(<extendedcrafting:material> * 4, <simplyjetpacks:metaitemmods:12>, <quantumflux:darkstone> * 3, 120000);

# Black Iron Slate is in UnifyingPlates.zs

# Black Iron Frame
recipes.remove(<extendedcrafting:frame>);
recipes.addShaped(<extendedcrafting:frame>, [[<extendedcrafting:material>,<thermalfoundation:glass:8>,<extendedcrafting:material>],[<thermalfoundation:glass:8>,<actuallyadditions:block_misc:8>,<thermalfoundation:glass:8>],[<extendedcrafting:material>,<thermalfoundation:glass:8>,<extendedcrafting:material>]]);

# Basic Crafting Table
recipes.remove(<extendedcrafting:table_basic>);
recipes.addShaped(<extendedcrafting:table_basic>, [[<avaritia:double_compressed_crafting_table>,<avaritia:double_compressed_crafting_table>,<avaritia:double_compressed_crafting_table>],[null,<extendedcrafting:frame>,null],[<extendedcrafting:material:2>,<extendedcrafting:material:2>,<extendedcrafting:material:2>]]);

# Luminessence
recipes.removeShapeless(<extendedcrafting:material:7>, [<minecraft:glowstone_dust>,<*>,<*>,<*>]);
mods.thermalexpansion.Transposer.addFillRecipe(<extendedcrafting:material:7>, <contenttweaker:ingot_of_elevation>, <fluid:glowstone> * 4000, 48000);

# Advanced Crafting Table
recipes.remove(<extendedcrafting:table_advanced>);
recipes.addShaped(<extendedcrafting:table_advanced>, [[<extendedcrafting:table_basic>,<extendedcrafting:storage:1>,<extendedcrafting:table_basic>],[null,<extendedcrafting:table_basic>,null],[<extendedcrafting:material:2>,<extendedcrafting:material:2>,<extendedcrafting:material:2>]]);

# Block of Ender
recipes.addShaped(<extendedcrafting:storage:5>, [[<contenttweaker:orbis_terrae>,<alchemistry:ingot:3>,<contenttweaker:orbis_terrae>],[<alchemistry:ingot:3>,<evilcraft:box_of_eternal_closure>.withTag({spiritTag: {playerName:"", innerEntity: "net.minecraft.entity.monster.EntityEnderman"}}),<alchemistry:ingot:3>],[<contenttweaker:orbis_terrae>,<alchemistry:ingot:3>,<contenttweaker:orbis_terrae>]]);
<extendedcrafting:storage:5>.addTooltip(format.white("Recipe requires a Box with an Enderman Spirit."));

# Ender Ingot
recipes.removeShapeless(<extendedcrafting:material:36>, [<minecraft:iron_ingot>,<minecraft:ender_pearl>]);

# Ender Crafter
recipes.remove(<extendedcrafting:ender_crafter>);
recipes.addShaped(<extendedcrafting:ender_crafter>, [[<enderutilities:enderpart:1>,<enderutilities:enderpart:1>,<enderutilities:enderpart:1>],[<extendedcrafting:material:36>,<extendedcrafting:table_basic>,<extendedcrafting:material:36>],[<extendedcrafting:material:36>,<extendedcrafting:material:36>,<extendedcrafting:material:36>]]);

# Ender Alternator
recipes.remove(<extendedcrafting:ender_alternator>);
recipes.addShaped(<extendedcrafting:ender_alternator>, [[<enderutilities:enderpart:1>,<contenttweaker:power_core>,<enderutilities:enderpart:1>],[null,<extendedcrafting:material:36>,null],[<extendedcrafting:material:36>,<extendedcrafting:material:36>,<extendedcrafting:material:36>]]);

# Enhanced Ender Alloy
mods.extendedcrafting.EnderCrafting.remove(<extendedcrafting:material:48>);
mods.thaumcraft.Crucible.registerRecipe("extendedcrafting:enhanced_ender_ingot", "", <extendedcrafting:material:48>, <extendedcrafting:material:36>, [<aspect:spiritus> * 20, <aspect:metallum> * 15, <aspect:alienis> * 15, <aspect:sol> * 5]);

# Pedestal
recipes.remove(<extendedcrafting:pedestal>);
mods.extendedcrafting.EnderCrafting.addShaped(<extendedcrafting:pedestal>, [[null,<contenttweaker:clean_runic_plate>,null],[null,<extendedcrafting:material>,null],[<extendedcrafting:material>,<extendedcrafting:material:48>,<extendedcrafting:material>]]);

# Crafting Core
recipes.remove(<extendedcrafting:crafting_core>);
mods.extendedcrafting.EnderCrafting.addShaped(<extendedcrafting:crafting_core>, [[<extendedcrafting:material:48>,<extendedcrafting:material:48>,<extendedcrafting:material:48>],[<contenttweaker:clean_runic_plate>,<extendedcrafting:frame>,<contenttweaker:clean_runic_plate>],[<contenttweaker:clean_runic_plate>,<extendedcrafting:pedestal>,<contenttweaker:clean_runic_plate>]]);

# Elite Crafting Table
recipes.remove(<extendedcrafting:table_elite>);
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:table_elite>,
[[<contenttweaker:condensed_vis_crystal_vitreus>,<contenttweaker:crystallized_mana_cluster>,<contenttweaker:crystallized_mana_cluster>,<contenttweaker:crystallized_mana_cluster>,<contenttweaker:condensed_vis_crystal_vitreus>],
[<contenttweaker:crystallized_mana_cluster>,<extendedcrafting:table_advanced>,<extendedcrafting:table_advanced>,<extendedcrafting:table_advanced>,<contenttweaker:crystallized_mana_cluster>],
[<contenttweaker:crystallized_mana_cluster>,<extendedcrafting:table_advanced>,<thaumicaugmentation:material:5>,<extendedcrafting:table_advanced>,<contenttweaker:crystallized_mana_cluster>],
[<contenttweaker:crystallized_mana_cluster>,<extendedcrafting:table_advanced>,<extendedcrafting:table_advanced>,<extendedcrafting:table_advanced>,<contenttweaker:crystallized_mana_cluster>],
[<contenttweaker:condensed_vis_crystal_vitreus>,<contenttweaker:crystallized_mana_cluster>,<contenttweaker:crystallized_mana_cluster>,<contenttweaker:crystallized_mana_cluster>,<contenttweaker:condensed_vis_crystal_vitreus>]]);

# Ultimate Crafting Table
recipes.remove(<extendedcrafting:table_ultimate>);
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:table_ultimate>,
[[<appliedenergistics2:crafting_storage_16k>.noReturn(),<appliedenergistics2:crafting_storage_16k>.noReturn(),<galacticraftplanets:item_basic_asteroids:8>,<galacticraftplanets:item_basic_asteroids:8>,<galacticraftplanets:item_basic_asteroids:8>,<appliedenergistics2:crafting_storage_16k>.noReturn(),<appliedenergistics2:crafting_storage_16k>.noReturn()],
[<appliedenergistics2:crafting_storage_16k>.noReturn(),<appliedenergistics2:crafting_storage_16k>.noReturn(),<extendedcrafting:table_elite>,<extendedcrafting:table_elite>,<extendedcrafting:table_elite>,<appliedenergistics2:crafting_storage_16k>.noReturn(),<appliedenergistics2:crafting_storage_16k>.noReturn()],
[null,<appliedenergistics2:crafting_storage_16k>.noReturn(),<appliedenergistics2:crafting_storage_16k>.noReturn(),<appliedenergistics2:crafting_storage_16k>.noReturn(),<appliedenergistics2:crafting_storage_16k>.noReturn(),<appliedenergistics2:crafting_storage_16k>.noReturn(),null],
[null,null,<enderutilities:machine_1:2>,<contenttweaker:plasma_core>,<enderutilities:machine_1:2>,null,null],
[null,null,<enderutilities:machine_1:2>,<enderutilities:machine_1:2>,<enderutilities:machine_1:2>,null,null],
[null,null,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,null,null],
[<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>]]);

# Crystaltine Ingot
mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:material:24>);
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:material:24>,
[[<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>],
[<enderio:item_alloy_endergy_ingot:1>,<contenttweaker:star_leather>,<contenttweaker:star_leather>,<contenttweaker:plasma_core>,<contenttweaker:star_leather>,<contenttweaker:star_leather>,<enderio:item_alloy_endergy_ingot:1>],
[<enderio:item_alloy_endergy_ingot:1>,<contenttweaker:star_leather>,<contenttweaker:star_leather>,<contenttweaker:plasma_core>,<contenttweaker:star_leather>,<contenttweaker:star_leather>,<enderio:item_alloy_endergy_ingot:1>],
[<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:item_alloy_endergy_ingot:1>]]);

# Automation Interface
recipes.remove(<extendedcrafting:interface>);
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:interface>,
[[<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>],
[<extendedcrafting:storage>,<appliedenergistics2:crafting_storage_64k>.noReturn(),<appliedenergistics2:crafting_storage_64k>.noReturn(),<actuallyadditions:block_dropper>,<actuallyadditions:block_dropper>,<actuallyadditions:block_dropper>,<appliedenergistics2:crafting_storage_64k>.noReturn(),<appliedenergistics2:crafting_storage_64k>.noReturn(),<extendedcrafting:storage>],
[<extendedcrafting:storage>,<appliedenergistics2:crafting_storage_64k>.noReturn(),<appliedenergistics2:crafting_storage_64k>.noReturn(),<actuallyadditions:block_dropper>,<actuallyadditions:block_dropper>,<actuallyadditions:block_dropper>,<appliedenergistics2:crafting_storage_64k>.noReturn(),<appliedenergistics2:crafting_storage_64k>.noReturn(),<extendedcrafting:storage>],
[<extendedcrafting:storage>,<integratedtunnels:part_interface_item_item>,<galacticraftcore:basic_item:20>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftcore:basic_item:20>,<integratedtunnels:part_interface_item_item>,<extendedcrafting:storage>],
[<extendedcrafting:storage>,<actuallyadditions:block_placer>,<extendedcrafting:material:24>,<extendedcrafting:storage:3>,<extendedcrafting:frame>,<extendedcrafting:storage:3>,<extendedcrafting:material:24>,<actuallyadditions:block_placer>,<extendedcrafting:storage>],
[<extendedcrafting:storage>,<integratedtunnels:part_interface_item_item>,<galacticraftcore:basic_item:20>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftcore:basic_item:20>,<integratedtunnels:part_interface_item_item>,<extendedcrafting:storage>],
[<extendedcrafting:storage>,<appliedenergistics2:crafting_storage_64k>.noReturn(),<appliedenergistics2:crafting_storage_64k>.noReturn(),<galacticraftcore:basic_item:20>,<galacticraftcore:basic_item:20>,<galacticraftcore:basic_item:20>,<appliedenergistics2:crafting_storage_64k>.noReturn(),<appliedenergistics2:crafting_storage_64k>.noReturn(),<extendedcrafting:storage>],
[<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>,<extendedcrafting:storage>],
[<extendedcrafting:storage>,null,null,null,null,null,null,null,<extendedcrafting:storage>]]);

print("ENDING ExtendedCrafting.zs");