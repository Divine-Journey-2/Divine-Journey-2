# Author: Atricos

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;
import mods.actuallyadditions.BallOfFur;
import mods.actuallyadditions.MiningLens;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

print("STARTING ActuallyAdditions.zs");

# Crafting Table on a Stick
recipes.remove(<actuallyadditions:item_crafter_on_a_stick>);
recipes.addShapedMirrored(<actuallyadditions:item_crafter_on_a_stick>, [[null,<minecraft:crafting_table>],[<immersiveengineering:material>,null]]);

# Wood Casing
recipes.remove(<actuallyadditions:block_misc:4>);
recipes.addShaped(<actuallyadditions:block_misc:4> * 3, [[<ore:logWood>,<ore:logWood>,<ore:logWood>],[<ore:logWood>,<rftools:machine_frame>,<ore:logWood>],[<ore:logWood>,<ore:logWood>,<ore:logWood>]]);

# Crate (Small)
recipes.remove(<actuallyadditions:block_giant_chest>);
recipes.addShaped(<actuallyadditions:block_giant_chest>, [[<ore:logWood>,<minecraft:chest>,<ore:logWood>],[<minecraft:chest>,<ironchest:iron_chest:2>,<minecraft:chest>],[<ore:logWood>,<minecraft:chest>,<ore:logWood>]]);

# Crate (Medium)
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
recipes.addShaped(<actuallyadditions:block_giant_chest_medium>, [[<roots:runed_obsidian>,<immersiveengineering:wooden_device0>,<roots:runed_obsidian>],[<immersiveengineering:wooden_device0>,<actuallyadditions:block_giant_chest>,<immersiveengineering:wooden_device0>],[<roots:runed_obsidian>,<immersiveengineering:wooden_device0>,<roots:runed_obsidian>]]);

# Crate (Large)
recipes.remove(<actuallyadditions:block_giant_chest_large>);
recipes.addShaped(<actuallyadditions:block_giant_chest_large>, [[<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_misc:4>,<actuallyadditions:block_crystal_empowered:3>],[<actuallyadditions:block_misc:4>,<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_misc:4>],[<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_misc:4>,<actuallyadditions:block_crystal_empowered:3>]]);

# Storage Crate Keeper
recipes.remove(<actuallyadditions:item_crate_keeper>);
recipes.addShaped(<actuallyadditions:item_crate_keeper>, [[<thermalfoundation:material:160>,<actuallyadditions:item_misc:5>,<thermalfoundation:material:160>],[<actuallyadditions:item_misc:5>,<roots:runed_obsidian>,<actuallyadditions:item_misc:5>],[<thermalfoundation:material:160>,<actuallyadditions:item_misc:5>,<thermalfoundation:material:160>]]);

# Iron Casing
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped(<actuallyadditions:block_misc:9>, [[<actuallyadditions:block_misc:2>,<thermalfoundation:material:32>,<actuallyadditions:block_misc:2>],[<thermalfoundation:material:32>,<rftools:machine_frame>,<thermalfoundation:material:32>],[<actuallyadditions:block_misc:2>,<thermalfoundation:material:32>,<actuallyadditions:block_misc:2>]]);

# Ender Casing
recipes.remove(<actuallyadditions:block_misc:8>);
recipes.addShaped(<actuallyadditions:block_misc:8>, [[<thermalfoundation:storage_alloy:7>,<actuallyadditions:item_crystal_empowered:2>,<thermalfoundation:storage_alloy:7>],[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:block_misc:9>,<actuallyadditions:item_crystal_empowered:2>],[<thermalfoundation:storage_alloy:7>,<actuallyadditions:item_crystal_empowered:2>,<thermalfoundation:storage_alloy:7>]]);

# Atomic Reconstructor
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
recipes.addShapedMirrored(<actuallyadditions:block_atomic_reconstructor>, [[<enderio:item_alloy_ingot:6>,<quantumflux:craftingpiece:4>,<enderio:item_alloy_ingot:6>],[<enderio:item_material:73>,<actuallyadditions:block_misc:9>,<integrateddynamics:materializer>],[<enderio:item_alloy_ingot:6>,<quantumflux:craftingpiece:4>,<enderio:item_alloy_ingot:6>]]);

# Basic Coil
recipes.remove(<actuallyadditions:item_misc:7>);
recipes.addShapedMirrored(<actuallyadditions:item_misc:7>, [[null,null,<contenttweaker:crystalline_brown_slime_ingot>],[null,<actuallyadditions:item_crystal:5>,null],[<contenttweaker:crystalline_brown_slime_ingot>,null,null]]);

# Advanced Coil
recipes.remove(<actuallyadditions:item_misc:8>);
recipes.addShaped(<actuallyadditions:item_misc:8>, [[null,<contenttweaker:glod_crystal>,null,],[<contenttweaker:glod_crystal>,<actuallyadditions:item_misc:7>,<contenttweaker:glod_crystal>],[null,<contenttweaker:glod_crystal>,null,]]);

# Single Battery
recipes.removeShaped(<actuallyadditions:item_battery>);
recipes.addShaped(<actuallyadditions:item_battery>, [[null,<actuallyadditions:item_crystal:5>,null],[<actuallyadditions:item_crystal:4>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:4>],[<actuallyadditions:item_crystal:4>,<actuallyadditions:item_crystal:4>,<actuallyadditions:item_crystal:4>]]);

function actuallyBatteryUpgrade(input_battery_tag as IData, out as IItemStack) {
	if(input_battery_tag has "Energy") {
		return out.withTag(input_battery_tag);
	} else {
		return out;
	}
}

# Double Battery
recipes.removeShaped(<actuallyadditions:item_battery_double>);
recipes.addShaped("actually_battery_upgrade1", <actuallyadditions:item_battery_double>, [[null,<actuallyadditions:item_battery>.marked("battery"),null],[<actuallyadditions:item_crystal:4>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:4>],[<actuallyadditions:item_crystal:4>,<actuallyadditions:item_crystal:4>,<actuallyadditions:item_crystal:4>]],
function(out,ins,cInfo) { return actuallyBatteryUpgrade(ins.battery.tag, out); }, null);

# Triple Battery
recipes.removeShaped(<actuallyadditions:item_battery_triple>);
recipes.addShaped("actually_battery_upgrade2", <actuallyadditions:item_battery_triple>, [[null,<actuallyadditions:item_battery_double>.marked("battery"),null],[<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal_empowered:4>],[<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:item_crystal_empowered:4>]],
function(out,ins,cInfo) { return actuallyBatteryUpgrade(ins.battery.tag, out); }, null);

# Quadruple Battery
recipes.removeShaped(<actuallyadditions:item_battery_quadruple>);
recipes.addShaped("actually_battery_upgrade3", <actuallyadditions:item_battery_quadruple>, [[null,<actuallyadditions:item_battery_triple>.marked("battery"),null],[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal_empowered:2>],[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:2>]],
function(out,ins,cInfo) { return actuallyBatteryUpgrade(ins.battery.tag, out); }, null);

# Quintuple Battery
recipes.removeShaped(<actuallyadditions:item_battery_quintuple>);
recipes.addShaped("actually_battery_upgrade4", <actuallyadditions:item_battery_quintuple>, [[null,<actuallyadditions:item_battery_quadruple>.marked("battery"),null],[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal_empowered:2>],[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:2>]],
function(out,ins,cInfo) { return actuallyBatteryUpgrade(ins.battery.tag, out); }, null);

# Display Stand
recipes.remove(<actuallyadditions:block_display_stand>);
recipes.addShaped(<actuallyadditions:block_display_stand>, [[null,<actuallyadditions:item_misc:8>,null],[<actuallyadditions:block_testifi_bucks_green_wall>,<actuallyadditions:block_testifi_bucks_white_wall>,<actuallyadditions:block_testifi_bucks_green_wall>],[<quantumflux:craftingpiece:1>,<actuallyadditions:block_testifi_bucks_green_wall>,<quantumflux:craftingpiece:1>]]);

# Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);
recipes.addShaped(<actuallyadditions:block_empowerer>, [[<actuallyadditions:block_display_stand>,<actuallyadditions:block_display_stand>,<actuallyadditions:block_display_stand>],[<actuallyadditions:item_battery_double>.withTag({Energy: 350000}),<quantumflux:craftingpiece:4>,<actuallyadditions:item_battery_double>.withTag({Energy: 350000})],[<actuallyadditions:block_crystal>,<actuallyadditions:block_misc:9>,<actuallyadditions:block_crystal>]]);

# Lens
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_misc:18>);
recipes.remove(<actuallyadditions:item_misc:18>);
recipes.addShaped(<actuallyadditions:item_misc:18>, [[<quantumflux:craftingpiece:6>,<quantumflux:craftingpiece:2>,<quantumflux:craftingpiece:6>],[<quantumflux:craftingpiece:2>,<actuallyadditions:block_misc:2>,<quantumflux:craftingpiece:2>],[<quantumflux:craftingpiece:6>,<quantumflux:craftingpiece:2>,<quantumflux:craftingpiece:6>]]);

# Lens of Color
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_color_lens>);
recipes.addShapeless(<actuallyadditions:item_color_lens>, [<actuallyadditions:item_misc:18>,<industrialforegoing:dye_mixer>,<actuallyadditions:block_crystal_empowered:4>]);

# Lens of Detonation
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_explosion_lens>);
recipes.addShaped(<actuallyadditions:item_explosion_lens>, [[<actuallyadditions:item_crystal_empowered>,<minecraft:tnt>,<actuallyadditions:item_crystal_empowered>],[<minecraft:tnt>,<actuallyadditions:item_misc:18>,<minecraft:tnt>],[<actuallyadditions:item_crystal_empowered>,<minecraft:tnt>,<actuallyadditions:item_crystal_empowered>]]);

# Lens of Certain Death
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_damage_lens>);
recipes.addShaped(<actuallyadditions:item_damage_lens>, [[<contenttweaker:mobgrindium_ingot>,<actuallyadditions:item_crystal_empowered:4>,<contenttweaker:mobgrindium_ingot>],[<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:item_explosion_lens>,<actuallyadditions:item_crystal_empowered:4>],[<contenttweaker:mobgrindium_ingot>,<actuallyadditions:item_crystal_empowered:4>,<contenttweaker:mobgrindium_ingot>]]);

# Lens of the Killer
recipes.remove(<actuallyadditions:item_more_damage_lens>);
recipes.addShaped(<actuallyadditions:item_more_damage_lens>, [[<contenttweaker:mobgrindium_ingot>,<actuallyadditions:block_crystal_empowered>,<contenttweaker:mobgrindium_ingot>],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 21 as short}]}),<actuallyadditions:item_damage_lens>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 21 as short}]})],[<contenttweaker:mobgrindium_ingot>,<actuallyadditions:block_crystal_empowered>,<contenttweaker:mobgrindium_ingot>]]);

# Lens of the Miner
recipes.remove(<actuallyadditions:item_mining_lens>);
recipes.addShapeless(<actuallyadditions:item_mining_lens>, [<actuallyadditions:item_misc:18>,<industrialforegoing:block_destroyer>,<thermalfoundation:storage:8>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal_empowered:4>]);

# Remove Bewitchment Salt (progression skip) from the Mining Lens
MiningLens.removeStoneOre(<ore:oreSalt>);
MiningLens.removeStoneOre(<ore:oreAluminium>);

# Lens of Disenchanting
recipes.remove(<actuallyadditions:item_disenchanting_lens>);
recipes.addShapeless(<actuallyadditions:item_disenchanting_lens>, [<actuallyadditions:item_misc:18>,<enderio:block_enchanter>,<actuallyadditions:block_crystal_empowered:2>]);

# Empowered Enori Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <thermalfoundation:material:24>, <thermalfoundation:material:288>, <minecraft:snow>, <appliedenergistics2:material:5>, 2000, 100, [0.929, 0.921, 0.913]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);

# Empowered Void Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, <enderio:item_material:73>, <thermalfoundation:material:290>, <minecraft:flint>, <minecraft:coal:1>, 2000, 100, [0.121, 0.105, 0.078]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);

# Empowered Restonia Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal>, <thermalfoundation:material:293>, <enderio:item_alloy_ingot:3>, <minecraft:brick_block>, <roots:infernal_bulb>, 2000, 100, [0.905, 0.129, 0.113]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);

# Empowered Palis Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <thermalfoundation:material:259>, <minecraft:prismarine_shard>, <roots:moonglow_leaf>, <enderio:item_material:39>, 2500, 100, [0.027, 0.211, 0.949]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);

# Empowered Diamatine Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, <thermalfoundation:material:262>, <enderio:item_alloy_endergy_ingot:6>, <roots:cloud_berry>, <minecraft:clay>, 4000, 100, [0.439, 0.913, 0.980]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);

# Empowered Emeradic Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>, <enderio:item_material:13>, <tconstruct:slime_congealed>, <roots:spirit_herb>, <minecraft:cactus>, 4000, 100, [0.074, 0.788, 0.164]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);

# Energizer
recipes.remove(<actuallyadditions:block_energizer>);
recipes.addShaped(<actuallyadditions:block_energizer>, [[<actuallyadditions:item_crystal_empowered>,<thermalfoundation:material:352>,<actuallyadditions:item_crystal_empowered>],[<actuallyadditions:item_misc:8>,<actuallyadditions:block_misc:9>,<actuallyadditions:item_misc:8>],[<actuallyadditions:item_crystal_empowered>,<thermalfoundation:material:352>,<actuallyadditions:item_crystal_empowered>]]);

# Enervator
recipes.remove(<actuallyadditions:block_enervator>);
recipes.addShaped(<actuallyadditions:block_enervator>, [[<thermalfoundation:material:352>,<actuallyadditions:item_crystal_empowered>,<thermalfoundation:material:352>],[<actuallyadditions:item_misc:8>,<actuallyadditions:block_misc:9>,<actuallyadditions:item_misc:8>],[<thermalfoundation:material:352>,<actuallyadditions:item_crystal_empowered>,<thermalfoundation:material:352>]]);

# Item Laser Relay
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_laser_relay_item>);
recipes.addShaped(<actuallyadditions:block_laser_relay_item>, [[null,<actuallyadditions:item_crystal_empowered:4>,null],[<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>]]);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_laser_relay_item>);

# Advanced Item Laser Relay
recipes.remove(<actuallyadditions:block_laser_relay_item_whitelist>);
recipes.addShaped(<actuallyadditions:block_laser_relay_item_whitelist>, [[null,<actuallyadditions:block_misc:2>,null],[<actuallyadditions:item_misc:8>,<actuallyadditions:block_laser_relay_item>,<actuallyadditions:item_misc:8>],[null,<actuallyadditions:block_misc:2>,null]]);

# Fluid Laser Relay
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_laser_relay_fluids>);
recipes.addShaped(<actuallyadditions:block_laser_relay_fluids>, [[null,<actuallyadditions:item_crystal_empowered:1>,null],[<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>]]);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_laser_relay_fluids>);

# Energy Laser Relay
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_laser_relay>);
recipes.remove(<actuallyadditions:block_laser_relay>);
recipes.addShaped(<actuallyadditions:block_laser_relay>, [[null,<actuallyadditions:item_crystal_empowered>,null],[<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>]]);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_laser_relay>);

# Advanced Energy Laser Relay
recipes.remove(<actuallyadditions:block_laser_relay_advanced>);
recipes.addShaped(<actuallyadditions:block_laser_relay_advanced>, [[null,<actuallyadditions:block_misc:2>,null],[<actuallyadditions:item_misc:8>,<actuallyadditions:block_laser_relay>,<actuallyadditions:item_misc:8>],[null,<actuallyadditions:block_misc:2>,null]]);

# Extreme Energy Laser Relay
recipes.remove(<actuallyadditions:block_laser_relay_extreme>);
recipes.addShaped(<actuallyadditions:block_laser_relay_extreme>, [[null,<actuallyadditions:item_crystal_empowered:2>,null],[<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:block_laser_relay_advanced>,<actuallyadditions:item_crystal_empowered:5>],[null,<actuallyadditions:item_crystal_empowered:2>,null]]);

# Item Interface
recipes.remove(<actuallyadditions:block_item_viewer>);
recipes.addShaped(<actuallyadditions:block_item_viewer>, [[<actuallyadditions:item_misc:8>,<actuallyadditions:block_misc:2>,<actuallyadditions:item_misc:8>],[<actuallyadditions:block_laser_relay_item>,<ore:chestWood>,<actuallyadditions:block_laser_relay_item>],[<actuallyadditions:item_misc:8>,<actuallyadditions:block_misc:2>,<actuallyadditions:item_misc:8>]]);

# Player Interface
recipes.remove(<actuallyadditions:block_player_interface>);
recipes.addShaped(<actuallyadditions:block_player_interface>, [[<actuallyadditions:block_misc:8>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_misc:8>],[<actuallyadditions:block_item_viewer>,<actuallyadditions:block_misc:8>,<actuallyadditions:block_item_viewer>],[<actuallyadditions:block_misc:8>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_misc:8>]]);

# Hopping Item Interface
recipes.remove(<actuallyadditions:block_item_viewer_hopping>);
recipes.addShaped(<actuallyadditions:block_item_viewer_hopping>, [[<thermaldynamics:servo:4>,<thermaldynamics:servo:4>,<thermaldynamics:servo:4>],[null,<actuallyadditions:block_item_viewer>,null],[null,<minecraft:hopper>,null]]);

# Laser Wrench
recipes.remove(<actuallyadditions:item_laser_wrench>);
recipes.addShapedMirrored(<actuallyadditions:item_laser_wrench>, [[null,<actuallyadditions:item_crystal_empowered:5>,null],[null,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal_empowered:5>],[<actuallyadditions:item_misc:8>,null,null]]);

# Auto-Placer
recipes.remove(<actuallyadditions:block_placer>);
recipes.addShapedMirrored(<actuallyadditions:block_placer>, [[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>],[<actuallyadditions:item_crystal_empowered>,<industrialforegoing:block_placer>,<minecraft:dropper>],[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>]]);

# Auto-Breaker
recipes.remove(<actuallyadditions:block_breaker>);
recipes.addShapedMirrored(<actuallyadditions:block_breaker>, [[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>],[<actuallyadditions:item_crystal_empowered>,<industrialforegoing:block_destroyer>,<enderio:item_dark_steel_pickaxe>],[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>]]);

# Long-Range Breaker
recipes.remove(<actuallyadditions:block_directional_breaker>);
recipes.addShaped(<actuallyadditions:block_directional_breaker>, [[<actuallyadditions:item_crystal:3>,<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_crystal:3>],[<actuallyadditions:block_breaker>,<actuallyadditions:block_breaker>,<actuallyadditions:block_breaker>],[<actuallyadditions:item_crystal:3>,<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_crystal:3>]]);

# Phantomface
recipes.remove(<actuallyadditions:block_phantomface>);
recipes.addShaped(<actuallyadditions:block_phantomface>, [[<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_misc:8>],[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:block_misc:8>,<actuallyadditions:item_crystal_empowered:2>],[<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_misc:8>]]);

# Phantom Placer
recipes.remove(<actuallyadditions:block_phantom_placer>);
recipes.addShaped(<actuallyadditions:block_phantom_placer>, [[<actuallyadditions:item_crystal:3>,<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_crystal:3>],[<actuallyadditions:block_placer>,<actuallyadditions:block_phantomface>,<actuallyadditions:block_placer>],[<actuallyadditions:item_crystal:3>,<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_crystal:3>]]);

# Phantom Breaker
recipes.remove(<actuallyadditions:block_phantom_breaker>);
recipes.addShaped(<actuallyadditions:block_phantom_breaker>, [[<actuallyadditions:item_crystal:3>,<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_crystal:3>],[<actuallyadditions:block_breaker>,<actuallyadditions:block_phantomface>,<actuallyadditions:block_breaker>],[<actuallyadditions:item_crystal:3>,<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_crystal:3>]]);

# Phantom Liquiface
recipes.remove(<actuallyadditions:block_phantom_liquiface>);
recipes.addShaped(<actuallyadditions:block_phantom_liquiface>, [[null,<actuallyadditions:item_crystal:4>,null],[<actuallyadditions:item_crystal:4>,<actuallyadditions:block_phantomface>,<actuallyadditions:item_crystal:4>],[null,<actuallyadditions:item_crystal:4>,null]]);

# Phantom Energyface
recipes.remove(<actuallyadditions:block_phantom_energyface>);
recipes.addShaped(<actuallyadditions:block_phantom_energyface>, [[<actuallyadditions:item_crystal_empowered>,<actuallyadditions:item_crystal_empowered>,<actuallyadditions:item_crystal_empowered>],[<actuallyadditions:item_crystal_empowered>,<actuallyadditions:block_phantomface>,<actuallyadditions:item_crystal_empowered>],[<actuallyadditions:item_crystal_empowered>,<actuallyadditions:item_crystal_empowered>,<actuallyadditions:item_crystal_empowered>]]);

# Phantom Redstoneface
recipes.remove(<actuallyadditions:block_phantom_redstoneface>);
recipes.addShaped(<actuallyadditions:block_phantom_redstoneface>, [[<enderio:item_alloy_ingot:3>,<actuallyadditions:item_crystal_empowered>,<enderio:item_alloy_ingot:3>],[<actuallyadditions:item_crystal_empowered>,<actuallyadditions:block_phantomface>,<actuallyadditions:item_crystal_empowered>],[<enderio:item_alloy_ingot:3>,<actuallyadditions:item_crystal_empowered>,<enderio:item_alloy_ingot:3>]]);

# Phantom Connector
recipes.removeShaped(<actuallyadditions:item_phantom_connector>);
recipes.addShapedMirrored(<actuallyadditions:item_phantom_connector>, [[<actuallyadditions:item_crystal_empowered:3>,null,null],[null,<actuallyadditions:block_misc:8>,null],[null,null,<actuallyadditions:item_crystal_empowered:3>]]);

# Phantom Booster
recipes.remove(<actuallyadditions:block_phantom_booster>);
recipes.addShaped(<actuallyadditions:block_phantom_booster>, [[null,<actuallyadditions:item_crystal_empowered:2>,null],[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:block_misc:8>,<actuallyadditions:item_crystal_empowered:2>],[<actuallyadditions:item_crystal_empowered:3>,<actuallyadditions:block_phantomface>,<actuallyadditions:item_crystal_empowered:3>]]);

# Laser Relay Modifier: Range
recipes.remove(<actuallyadditions:item_laser_upgrade_range>);
recipes.addShaped(<actuallyadditions:item_laser_upgrade_range>, [[<actuallyadditions:item_crystal:5>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:5>],[<actuallyadditions:item_crystal_empowered>,<enderio:item_extract_speed_upgrade>,<actuallyadditions:item_crystal_empowered>],[<actuallyadditions:item_crystal:5>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:5>]]);

# Laser Relay Modifier: Invisility
recipes.remove(<actuallyadditions:item_laser_upgrade_invisibility>);
recipes.addShaped(<actuallyadditions:item_laser_upgrade_invisibility>*16, [[<actuallyadditions:item_crystal:5>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:5>],[<actuallyadditions:item_crystal_empowered:3>,<extrautils2:ingredients:15>,<actuallyadditions:item_crystal_empowered:3>],[<actuallyadditions:item_crystal:5>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:5>]]);

# Farmer
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShapedMirrored(<actuallyadditions:block_farmer>, [[<actuallyadditions:block_crystal:3>,<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:block_crystal:3>],[<divinerpg:arlemite_hoe>,<actuallyadditions:block_misc:9>,<divinerpg:rupee_hoe>],[<actuallyadditions:block_crystal:3>,<enderio:item_material:42>,<actuallyadditions:block_crystal:3>]]);

# Bioreactor
recipes.remove(<actuallyadditions:block_bio_reactor>);
recipes.addShaped(<actuallyadditions:block_bio_reactor>, [[<contenttweaker:glod_crystal>,<actuallyadditions:block_misc:9>,<contenttweaker:glod_crystal>],[<actuallyadditions:item_crystal_empowered:4>,<ore:treeSapling>,<actuallyadditions:item_crystal_empowered:4>],[<contenttweaker:glod_crystal>,<actuallyadditions:block_misc:9>,<contenttweaker:glod_crystal>]]);

# Drill Core
recipes.remove(<actuallyadditions:item_misc:16>);
recipes.addShaped(<actuallyadditions:item_misc:16>, [[<actuallyadditions:block_crystal:5>,<actuallyadditions:item_misc:8>,<actuallyadditions:block_crystal:5>],[<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal_empowered>,<actuallyadditions:item_misc:8>],[<actuallyadditions:block_crystal:5>,<actuallyadditions:item_misc:8>,<actuallyadditions:block_crystal:5>]]);

# Drill
recipes.removeShaped(<actuallyadditions:item_drill:3>);
recipes.addShapedMirrored(<actuallyadditions:item_drill:3>.withTag({Energy: 0}), [[<actuallyadditions:item_misc:8>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal_empowered:2>],[<contenttweaker:empowered_glod_crystal_block>,<actuallyadditions:item_misc:16>,<actuallyadditions:block_crystal_empowered:2>],[<contenttweaker:empowered_glod_crystal_block>,<contenttweaker:empowered_glod_crystal_block>,<actuallyadditions:item_misc:8>]]);

# Vertical Digger
recipes.remove(<actuallyadditions:block_miner>);
for i in 0 to 16 {
	recipes.addShaped(<actuallyadditions:block_miner>, [[<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_misc:8>,<actuallyadditions:block_crystal_empowered:3>],[<actuallyadditions:block_misc:8>,<actuallyadditions:block_crystal_empowered>,<actuallyadditions:block_misc:8>],[<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:item_drill>.withDamage(i).withTag({Energy: 250000}),<actuallyadditions:block_crystal_empowered:3>]]);
}

# Shock Absorber
recipes.remove(<actuallyadditions:block_shock_suppressor>);
recipes.addShaped(<actuallyadditions:block_shock_suppressor>, [[<actuallyadditions:block_crystal_empowered:3>,<contenttweaker:compressed_obsidian2>,<actuallyadditions:block_crystal_empowered:3>],[<contenttweaker:compressed_obsidian2>,<actuallyadditions:item_misc:8>,<contenttweaker:compressed_obsidian2>],[<actuallyadditions:block_crystal_empowered:3>,<contenttweaker:compressed_obsidian2>,<actuallyadditions:block_crystal_empowered:3>]]);

# Ranged Collector
recipes.remove(<actuallyadditions:block_ranged_collector>);
recipes.addShaped(<actuallyadditions:block_ranged_collector>, [[<contenttweaker:glod_crystal>,<actuallyadditions:item_crystal:3>,<contenttweaker:glod_crystal>],[<actuallyadditions:item_crystal:3>,<openblocks:vacuum_hopper>,<actuallyadditions:item_crystal:3>],[<contenttweaker:glod_crystal>,<actuallyadditions:block_misc:9>,<contenttweaker:glod_crystal>]]);

# Leaf Eating Generator
recipes.remove(<actuallyadditions:block_leaf_generator>);
recipes.addShaped(<actuallyadditions:block_leaf_generator>, [[<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_misc:8>,<contenttweaker:empowered_glod_crystal>],[<actuallyadditions:item_crystal_empowered>,<actuallyadditions:block_misc:9>,<actuallyadditions:item_crystal_empowered>],[<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_misc:8>,<contenttweaker:empowered_glod_crystal>]]);

# All colors of Lamps
for i in 0 to 16 {
	recipes.remove(<actuallyadditions:block_colored_lamp>.withDamage(i));
	recipes.addShaped(<actuallyadditions:block_colored_lamp>.withDamage(i), [[<minecraft:redstone_lamp>,<actuallyadditions:item_crystal:1>,<minecraft:redstone_lamp>],[allDyes[i],<actuallyadditions:block_misc:2>,allDyes[i]],[<minecraft:redstone_lamp>,<actuallyadditions:item_crystal:1>,<minecraft:redstone_lamp>]]);
}

# Lamp Controller
recipes.remove(<actuallyadditions:block_lamp_powerer>);
recipes.addShaped(<actuallyadditions:block_lamp_powerer>, [[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>],[<actuallyadditions:item_crystal_empowered>,<actuallyadditions:block_colored_lamp:*>,<actuallyadditions:item_crystal_empowered>],[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal:3>]]);

# Tiny Torch
recipes.remove(<actuallyadditions:block_tiny_torch>);
recipes.addShaped(<actuallyadditions:block_tiny_torch>, [[<actuallyadditions:item_misc:10>],[<minecraft:stick>]]);
recipes.addShaped(<actuallyadditions:block_tiny_torch>, [[<actuallyadditions:item_misc:11>],[<minecraft:stick>]]);

# Lava Factory Controller
recipes.remove(<actuallyadditions:block_lava_factory_controller>);
recipes.addShaped(<actuallyadditions:block_lava_factory_controller>, [[<actuallyadditions:item_crystal_empowered:3>,<enderio:block_tank:1>,<actuallyadditions:item_crystal_empowered:3>],[<actuallyadditions:item_misc:8>,<actuallyadditions:block_misc:9>,<actuallyadditions:item_misc:8>],[<actuallyadditions:block_crystal:3>,<thermalexpansion:machine:15>,<actuallyadditions:block_crystal:3>]]);

# Casing
recipes.remove(<actuallyadditions:block_misc:7>);
recipes.addShaped(<actuallyadditions:block_misc:7> * 4, [[<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_crystal_empowered:3>,<contenttweaker:empowered_glod_crystal>],[null,<actuallyadditions:block_misc:9>,null],[<contenttweaker:empowered_glod_crystal>,<actuallyadditions:item_crystal_empowered:3>,<contenttweaker:empowered_glod_crystal>]]);

# Canola Press
recipes.removeShaped(<actuallyadditions:block_canola_press>);
recipes.addShaped(<actuallyadditions:block_canola_press>, [[<ore:logWood>,<ore:cobblestone>,<ore:logWood>],[<ore:cobblestone>,<actuallyadditions:block_misc:9>,<ore:cobblestone>],[<ore:logWood>,<actuallyadditions:item_misc:8>,<ore:logWood>]]);

# Coal Generator
recipes.remove(<actuallyadditions:block_coal_generator>);
recipes.addShaped(<actuallyadditions:block_coal_generator>, [[<thermalfoundation:material:160>,<minecraft:coal:*>,<thermalfoundation:material:160>],[<thermalfoundation:material:160>,<actuallyadditions:block_misc:9>,<thermalfoundation:material:160>],[<thermalfoundation:material:160>,<minecraft:coal:*>,<thermalfoundation:material:160>]]);

# Oil Generator
recipes.removeShaped(<actuallyadditions:block_oil_generator>);
recipes.addShaped(<actuallyadditions:block_oil_generator>, [[<thermalfoundation:material:160>,<actuallyadditions:block_misc:9>,<thermalfoundation:material:160>],[<thermalfoundation:material:160>,<actuallyadditions:item_crystal_empowered:3>,<thermalfoundation:material:160>],[<thermalfoundation:material:160>,<actuallyadditions:block_misc:9>,<thermalfoundation:material:160>]]);

# Fermenting Barrel
recipes.removeShaped(<actuallyadditions:block_fermenting_barrel>);
recipes.addShaped(<actuallyadditions:block_fermenting_barrel>, [[<ore:logWood>,<actuallyadditions:item_crystal:5>,<ore:logWood>],[<ore:logWood>,<immersiveengineering:wooden_device0:1>,<ore:logWood>],[<ore:logWood>,<actuallyadditions:block_misc:4>,<ore:logWood>]]);

# Automatic Feeder
recipes.remove(<actuallyadditions:block_feeder>);
recipes.addShaped(<actuallyadditions:block_feeder>, [[<thermalfoundation:material:160>,<actuallyadditions:item_crystal_empowered>,<thermalfoundation:material:160>],[<actuallyadditions:item_misc:8>,<actuallyadditions:block_misc:9>,<actuallyadditions:item_misc:8>],[<thermalfoundation:material:160>,<minecraft:piston>,<thermalfoundation:material:160>]]);

# Crusher
recipes.remove(<actuallyadditions:block_grinder>);
recipes.addShaped(<actuallyadditions:block_grinder>, [[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:3>],[<betternether:cincinnasite_forged>,<actuallyadditions:block_misc:9>,<betternether:cincinnasite_forged>],[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:3>]]);

# Double Crusher
recipes.remove(<actuallyadditions:block_grinder_double>);
recipes.addShaped(<actuallyadditions:block_grinder_double>, [[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:3>],[<actuallyadditions:block_grinder>,<actuallyadditions:block_misc:9>,<actuallyadditions:block_grinder>],[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:3>]]);

# Powered Furnace
recipes.remove(<actuallyadditions:block_furnace_double>);
recipes.addShaped(<actuallyadditions:block_furnace_double>, [[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:3>],[<minecraft:furnace>,<actuallyadditions:block_misc:9>,<minecraft:furnace>],[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:3>]]);

# ESD
recipes.remove(<actuallyadditions:block_inputter>);
recipes.addShaped(<actuallyadditions:block_inputter>, [[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal:3>],[<minecraft:hopper>,<actuallyadditions:block_misc:4>,<minecraft:hopper>],[<actuallyadditions:item_crystal:3>,<actuallyadditions:item_crystal_empowered>,<actuallyadditions:item_crystal:3>]]);

# Advanced ESD
recipes.remove(<actuallyadditions:block_inputter_advanced>);
recipes.addShaped(<actuallyadditions:block_inputter_advanced>, [[<actuallyadditions:block_misc:2>,<actuallyadditions:item_misc:8>,<actuallyadditions:block_misc:2>],[<actuallyadditions:item_crystal_empowered>,<actuallyadditions:block_inputter>,<actuallyadditions:item_crystal_empowered>],[<actuallyadditions:block_misc:2>,<actuallyadditions:item_misc:8>,<actuallyadditions:block_misc:2>]]);

# Fishing Net
recipes.remove(<actuallyadditions:block_fishing_net>);
recipes.addShaped(<actuallyadditions:block_fishing_net>, [[<immersiveengineering:material:4>,<immersiveengineering:material:4>,<immersiveengineering:material:4>],[<immersiveengineering:material:4>,<thermalfoundation:tool.fishing_rod_diamond>,<immersiveengineering:material:4>],[<immersiveengineering:material:4>,<immersiveengineering:material:4>,<immersiveengineering:material:4>]]);

# Solar Panel
recipes.remove(<actuallyadditions:block_furnace_solar>);
recipes.addShaped(<actuallyadditions:block_furnace_solar>, [[<actuallyadditions:item_crystal_empowered:5>,<solarflux:photovoltaic_cell_1>,<actuallyadditions:item_crystal_empowered:5>],[<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:2>,<actuallyadditions:item_misc:8>],[<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:block_misc:9>,<actuallyadditions:item_crystal_empowered:5>]]);

# Heat Collector
recipes.remove(<actuallyadditions:block_heat_collector>);
recipes.addShaped(<actuallyadditions:block_heat_collector>, [[<thermalfoundation:material:160>,<thermalfoundation:material:515>,<thermalfoundation:material:160>],[<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_misc:8>],[<thermalfoundation:material:160>,<actuallyadditions:block_misc:9>,<thermalfoundation:material:160>]]);

# Greenhouse Glass
recipes.remove(<actuallyadditions:block_greenhouse_glass>);
recipes.addShaped(<actuallyadditions:block_greenhouse_glass>, [[<ore:blockGlassColorless>,<enderio:block_dark_iron_bars>,<ore:blockGlassColorless>],[<enderio:block_dark_iron_bars>,<actuallyadditions:item_crystal_empowered:1>,<enderio:block_dark_iron_bars>],[<ore:blockGlassColorless>,<enderio:block_dark_iron_bars>,<ore:blockGlassColorless>]]);

# Automatic Precision Dropper
recipes.remove(<actuallyadditions:block_dropper>);
recipes.addShaped(<actuallyadditions:block_dropper>, [[<thermalfoundation:material:160>,<actuallyadditions:item_crystal:1>,<thermalfoundation:material:160>],[<actuallyadditions:item_misc:8>,<openblocks:item_dropper>,<actuallyadditions:item_misc:8>],[<thermalfoundation:material:160>,<actuallyadditions:item_crystal:1>,<thermalfoundation:material:160>]]);

# Coffee Maker
recipes.remove(<actuallyadditions:block_coffee_machine>);
recipes.addShaped(<actuallyadditions:block_coffee_machine>, [[null,<contenttweaker:empowered_glod_crystal>,null],[<minecraft:brewing_stand>,<actuallyadditions:block_misc:9>,<minecraft:brewing_stand>],[<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal_empowered:3>,<actuallyadditions:item_misc:8>]]);

# Ring
recipes.remove(<actuallyadditions:item_misc:6>);
recipes.addShaped(<actuallyadditions:item_misc:6>, [[<minecraft:gold_ingot>,<minecraft:gold_ingot>,<minecraft:gold_ingot>],[<minecraft:gold_ingot>,<contenttweaker:empowered_glod_crystal>,<minecraft:gold_ingot>],[<minecraft:gold_ingot>,<minecraft:gold_ingot>,<minecraft:gold_ingot>]]);

# Ring of Magnetizing
recipes.removeShaped(<actuallyadditions:item_suction_ring>);
recipes.addShapedMirrored(<actuallyadditions:item_suction_ring>, [[<actuallyadditions:item_crystal>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal:1>],[<enderio:item_magnet>,<actuallyadditions:item_misc:6>,<enderio:item_magnet>],[<actuallyadditions:item_crystal:1>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal>]]);

function addActuallyRingRecipe(output as IItemStack, corner_inputs as IIngredient, side_inputs as IIngredient, top_input as IIngredient, bottom_input as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[corner_inputs,top_input,corner_inputs],[side_inputs,<actuallyadditions:item_misc:6>,side_inputs],[corner_inputs,bottom_input,corner_inputs]]);
}

# Ring of Speed
addActuallyRingRecipe(<actuallyadditions:item_potion_ring>, <minecraft:sugar>, <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <actuallyadditions:block_crystal_empowered:2>, <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3"}));

# Ring of Haste
addActuallyRingRecipe(<actuallyadditions:item_potion_ring:1>, <thermalfoundation:material:2053>, <minecraft:potion>.withTag({Potion: "cofhcore:haste3"}), <contenttweaker:empowered_glod_crystal_block>, <enderio:item_dark_steel_pickaxe>);

# Ring of Strength
addActuallyRingRecipe(<actuallyadditions:item_potion_ring:2>, <minecraft:blaze_powder>, <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <actuallyadditions:block_crystal_empowered>, <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"}));

# Ring of Fire Resistance
addActuallyRingRecipe(<actuallyadditions:item_potion_ring:6>, <minecraft:magma_cream>, <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <actuallyadditions:block_crystal_empowered>, <thermalfoundation:material:1024>);

# Ring of Water Breathing
addActuallyRingRecipe(<actuallyadditions:item_potion_ring:7>, <minecraft:fish:3>, <minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}), <actuallyadditions:block_crystal_empowered:1>, <mekanism:gastank>.withTag({tier: 0, mekData: {stored: {amount: 64000, gasName: "oxygen"}}}));

# Ring of Night Vision
addActuallyRingRecipe(<actuallyadditions:item_potion_ring:9>, <minecraft:golden_carrot>, <minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"}), <actuallyadditions:block_crystal_empowered:1>, <extrautils2:ingredients:5>);

# Ring of Invisility
recipes.remove(<actuallyadditions:item_potion_ring:8>);
recipes.addShaped("actually_ring_of_invisibility", <actuallyadditions:item_potion_ring:8>, [[<minecraft:fermented_spider_eye>,<actuallyadditions:block_crystal_empowered:2>,<minecraft:fermented_spider_eye>],[<minecraft:potion>.withTag({Potion: "minecraft:long_invisibility"}),<actuallyadditions:item_potion_ring:9>.marked("ring"),<minecraft:potion>.withTag({Potion: "minecraft:long_invisibility"})],[<minecraft:fermented_spider_eye>,<thermalfoundation:glass:6>,<minecraft:fermented_spider_eye>]],
function(out,ins,cInfo) {
	if(ins.ring.tag has "Blaze") {
		return out.withTag(ins.ring.tag);
	} else {
		return out;
	}
}, null);

# Ring of Jump Boost
addActuallyRingRecipe(<actuallyadditions:item_potion_ring:3>, <minecraft:rabbit_foot>, <minecraft:potion>.withTag({Potion: "cofhcore:leaping3"}), <actuallyadditions:block_crystal_empowered:2>, <minecraft:piston>);

# Ring of Regeneration
addActuallyRingRecipe(<actuallyadditions:item_potion_ring:4>, <divinerpg:ghast_pumpkin>, <minecraft:potion>.withTag({Potion: "cofhcore:regeneration3"}), <actuallyadditions:block_crystal_empowered>, <botania:manaresource:5>);

# Ring of Resistance
addActuallyRingRecipe(<actuallyadditions:item_potion_ring:5>, <thermalfoundation:material:770>, <minecraft:potion>.withTag({Potion: "cofhcore:resistance3"}), <actuallyadditions:block_crystal_empowered>, <spartanshields:shield_riot_enderio>);

# Ring of Growth
recipes.remove(<actuallyadditions:item_growth_ring>);
recipes.addShaped(<actuallyadditions:item_growth_ring>.withTag({Energy: 0}), [[<industrialforegoing:fertilizer>,<actuallyadditions:block_crystal_empowered:4>,<industrialforegoing:fertilizer>],[<actuallyadditions:item_misc:8>,<actuallyadditions:item_misc:6>,<actuallyadditions:item_misc:8>],[<industrialforegoing:fertilizer>,<actuallyadditions:block_crystal_empowered:4>,<industrialforegoing:fertilizer>]]);

# Ring of Liquid Banning
recipes.remove(<actuallyadditions:item_water_removal_ring>);
recipes.addShaped(<actuallyadditions:item_water_removal_ring>.withTag({Energy: 0}), [[<openblocks:sponge>,<actuallyadditions:block_crystal_empowered:2>,<openblocks:sponge>],[<enderio:block_tank:1>,<actuallyadditions:item_misc:6>,<enderio:block_tank:1>],[<openblocks:sponge>,<enderio:block_tank:1>,<openblocks:sponge>]]);

# Engineer's Goggles
recipes.remove(<actuallyadditions:item_engineer_goggles>);
recipes.addShaped(<actuallyadditions:item_engineer_goggles>, [[<actuallyadditions:item_crystal:3>,null,<actuallyadditions:item_crystal:3>],[<actuallyadditions:item_crystal:3>,null,<actuallyadditions:item_crystal:3>],[<ore:paneGlassOrange>,<actuallyadditions:item_crystal_empowered>,<ore:paneGlassOrange>]]);

# Engineer's Infrared Goggles
recipes.remove(<actuallyadditions:item_engineer_goggles_advanced>);
recipes.addShaped(<actuallyadditions:item_engineer_goggles_advanced>, [[<contenttweaker:mobgrindium_block>,null,<contenttweaker:mobgrindium_block>],[<botania:manaresource:22>,null,<botania:manaresource:22>],[<minecraft:stained_glass_pane:11>,<actuallyadditions:item_engineer_goggles>,<minecraft:stained_glass_pane:11>]]);

# Ender Star
recipes.remove(<actuallyadditions:item_misc:19>);
recipes.addShaped(<actuallyadditions:item_misc:19>, [[<minecraft:dragon_breath>,<divinerpg:eden_chunk>,<minecraft:dragon_breath>],[<divinerpg:eden_chunk>,<minecraft:nether_star>,<divinerpg:eden_chunk>],[<minecraft:dragon_breath>,<divinerpg:eden_chunk>,<minecraft:dragon_breath>]]);

# Handheld Filler
recipes.remove(<actuallyadditions:item_filling_wand>);
recipes.addShaped("actually_handheld_filler", <actuallyadditions:item_filling_wand>, [[<enderio:item_alloy_ingot>,<rftools:shape_card>,<enderio:item_alloy_ingot>],[<actuallyadditions:block_crystal_empowered:3>,<rftools:screen>,<actuallyadditions:block_crystal_empowered:3>],[<enderio:item_alloy_ingot>,<actuallyadditions:item_battery_quintuple>.marked("battery"),<enderio:item_alloy_ingot>]],
function(out,ins,cInfo) {
	if(ins.battery.tag has "Energy") {
		if(ins.battery.tag.Energy < 500000) {
			return out.withTag(ins.battery.tag);
		} else {
			return out.withTag({Energy: 500000});
		}
	} else {
		return out;
	}
}, null);

# Traveler's Sack
recipes.remove(<actuallyadditions:item_bag>);
recipes.addShaped(<actuallyadditions:item_bag>, [[<contenttweaker:industrial_leather>,<contenttweaker:industrial_leather>,<contenttweaker:industrial_leather>],[<danknull:dank_null_panel_0>,<simplybackpacks:uncommonbackpack>,<danknull:dank_null_panel_0>],[null,<ore:stickWood>,null]]);

# Void Sack
recipes.remove(<actuallyadditions:item_void_bag>);
recipes.addShaped("actually_void_sack", <actuallyadditions:item_void_bag>, [[null,<thermalfoundation:material:167>,null],[<actuallyadditions:block_crystal:3>,<actuallyadditions:item_bag>.marked("sack"),<actuallyadditions:block_crystal:3>],[null,<thermalfoundation:material:167>,null]],
function(out,ins,cInfo) {
	if(ins.sack.tag has "Filter") {
		return out.withTag({Filter: ins.sack.tag.Filter, AutoInsert: ins.sack.tag.AutoInsert});
	} else {
		return out;
	}
}, null);

# Player Probe
recipes.remove(<actuallyadditions:item_player_probe>);
<actuallyadditions:item_player_probe>.addTooltip(format.red("Item disabled."));

# Item Filter
recipes.remove(<actuallyadditions:item_filter>);
recipes.addShaped(<actuallyadditions:item_filter>, [[<minecraft:iron_bars>,<actuallyadditions:item_crystal>,<minecraft:iron_bars>],[<actuallyadditions:item_crystal>,<actuallyadditions:block_misc:2>,<actuallyadditions:item_crystal>],[<minecraft:iron_bars>,<actuallyadditions:item_crystal>,<minecraft:iron_bars>]]);

# Spawner Changer
recipes.remove(<actuallyadditions:item_spawner_changer>);
recipes.addShaped(<actuallyadditions:item_spawner_changer>, [[<contenttweaker:mobgrindium_block>,<actuallyadditions:item_misc:20>,<contenttweaker:mobgrindium_block>],[<actuallyadditions:item_misc:20>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:item_misc:20>],[<contenttweaker:mobgrindium_block>,<actuallyadditions:item_misc:20>,<contenttweaker:mobgrindium_block>]]);

# Knife Handle
recipes.remove(<actuallyadditions:item_misc:3>);
recipes.addShapeless(<actuallyadditions:item_misc:3>, [<ore:stickWood>,<contenttweaker:treated_leather>]);

# Teleport Staff
recipes.remove(<actuallyadditions:item_tele_staff>);
recipes.addShaped(<actuallyadditions:item_tele_staff>, [[null,<bewitchment:otherworldly_tears>.noReturn(),<actuallyadditions:block_misc:8>],[<contenttweaker:empowered_glod_crystal_block>,<actuallyadditions:block_misc:8>,<bewitchment:otherworldly_tears>.noReturn()],[<actuallyadditions:block_misc:8>,<contenttweaker:empowered_glod_crystal_block>,null]]);

# Drill Speed Augment I
recipes.remove(<actuallyadditions:item_drill_upgrade_speed>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_speed>, [[<actuallyadditions:item_crystal:5>,<actuallyadditions:item_crystal:5>,<actuallyadditions:item_crystal:5>],[<actuallyadditions:item_crystal:5>,<enderio:item_extract_speed_upgrade>,<actuallyadditions:item_crystal:5>],[<actuallyadditions:item_crystal:5>,<actuallyadditions:item_crystal:5>,<actuallyadditions:item_crystal:5>]]);

# Drill Speed Augment II
recipes.remove(<actuallyadditions:item_drill_upgrade_speed_ii>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_speed_ii>, [[<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:5>],[<actuallyadditions:item_crystal_empowered:5>,<enderio:item_extract_speed_upgrade>,<actuallyadditions:item_crystal_empowered:5>],[<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:5>]]);

# Drill Speed Augment III
recipes.remove(<actuallyadditions:item_drill_upgrade_speed_iii>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_speed_iii>, [[<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:5>],[<actuallyadditions:item_crystal_empowered:2>,<enderio:item_extract_speed_upgrade>,<actuallyadditions:item_crystal_empowered:2>],[<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:5>]]);

# Drill Silk Touch Augment
recipes.remove(<actuallyadditions:item_drill_upgrade_silk_touch>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_silk_touch>, [[<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:item_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:4>],[<tconstruct:materials:16>,<actuallyadditions:block_crystal_empowered:2>,<tconstruct:materials:16>],[<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:item_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:4>]]);

# Drill Fortune Augment I
recipes.remove(<actuallyadditions:item_drill_upgrade_fortune>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_fortune>, [[<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:4>],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 35 as short}]}),<industrialforegoing:fortune_addon>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 35 as short}]})],[<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:4>]]);

# Drill Fortune Augment II
recipes.remove(<actuallyadditions:item_drill_upgrade_fortune_ii>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_fortune_ii>, [[<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:4>],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}),<industrialforegoing:fortune_addon>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]})],[<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:4>]]);

# Drill Mining Augment I
recipes.remove(<actuallyadditions:item_drill_upgrade_three_by_three>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_three_by_three>, [[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:2>],[<actuallyadditions:item_misc:7>,<actuallyadditions:block_directional_breaker>,<actuallyadditions:item_misc:7>],[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:2>]]);

# Drill Mining Augment II
recipes.remove(<actuallyadditions:item_drill_upgrade_five_by_five>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_five_by_five>, [[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:2>],[<actuallyadditions:item_misc:8>,<actuallyadditions:block_directional_breaker>,<actuallyadditions:item_misc:8>],[<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:2>]]);

# Drill Block Placing Augment
recipes.remove(<actuallyadditions:item_drill_upgrade_block_placing>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_block_placing>, [[<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:3>,<actuallyadditions:item_crystal_empowered:5>],[<actuallyadditions:item_misc:8>,<actuallyadditions:block_phantom_placer>,<actuallyadditions:item_misc:8>],[<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:3>,<actuallyadditions:item_crystal_empowered:5>]]);

# Wings Of The Bats
recipes.remove(<actuallyadditions:item_wings_of_the_bats>);
recipes.addShaped(<actuallyadditions:item_wings_of_the_bats>, [[<actuallyadditions:item_misc:15>,<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:item_misc:15>],[<lightningcraft:metal_block:2>,<actuallyadditions:item_misc:19>,<lightningcraft:metal_block:2>],[<actuallyadditions:item_misc:15>,<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:item_misc:15>]]);

# Resonant Rice
recipes.remove(<actuallyadditions:item_resonant_rice>);
recipes.addShapeless(<actuallyadditions:item_resonant_rice>, [<actuallyadditions:item_food:16>,<thermalfoundation:material:167>,<minecraft:tnt>]);

# Removing some items from the Ball of Fur Loot Table
val AABallOfFurToRemove = [<minecraft:experience_bottle>,<minecraft:web>,<minecraft:diamond>,<minecraft:ender_pearl>,<minecraft:fish:3>,<actuallyadditions:item_solidified_experience>,<minecraft:vine>] as IItemStack[];
for i in AABallOfFurToRemove {
	mods.actuallyadditions.BallOfFur.removeReturn(i);
}

# Leaf Blower
recipes.remove(<actuallyadditions:item_leaf_blower>);
recipes.addShapedMirrored(<actuallyadditions:item_leaf_blower>, [[<actuallyadditions:item_crystal_empowered:3>,<contenttweaker:empowered_glod_crystal>,null],[<actuallyadditions:item_crystal_empowered:3>,<actuallyadditions:block_misc:9>,<actuallyadditions:item_misc:8>],[null,<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal_empowered:5>]]);

# Advanced Leaf Blower
recipes.remove(<actuallyadditions:item_leaf_blower_advanced>);
recipes.addShapedMirrored(<actuallyadditions:item_leaf_blower_advanced>, [[<actuallyadditions:item_crystal_empowered:3>,<contenttweaker:empowered_glod_crystal>,null],[<actuallyadditions:item_crystal_empowered:3>,<actuallyadditions:item_leaf_blower>,<actuallyadditions:item_misc:8>],[null,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:2>]]);

# Removing Shards
for i in 0 to 6 {
	recipes.removeShapeless(<actuallyadditions:item_crystal_shard>.withDamage(i) * 9, [<actuallyadditions:item_crystal>.withDamage(i)]);
	recipes.removeShaped(<actuallyadditions:item_crystal>.withDamage(i), [[<actuallyadditions:item_crystal_shard>.withDamage(i),<actuallyadditions:item_crystal_shard>.withDamage(i),<actuallyadditions:item_crystal_shard>.withDamage(i)],[<actuallyadditions:item_crystal_shard>.withDamage(i),<actuallyadditions:item_crystal_shard>.withDamage(i),<actuallyadditions:item_crystal_shard>.withDamage(i)],[<actuallyadditions:item_crystal_shard>.withDamage(i),<actuallyadditions:item_crystal_shard>.withDamage(i),<actuallyadditions:item_crystal_shard>.withDamage(i)]]);
}

print("ENDING ActuallyAdditions.zs");
