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

print("ENDING ExtendedCrafting.zs");