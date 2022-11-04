# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.thermalexpansion.Transposer;
import mods.evilcraft.BloodInfuser;
import crafttweaker.data.IData;
import mods.bloodmagic.TartaricForge;
import mods.inworldcrafting.FluidToItem;

print("STARTING EvilCraft.zs");

# Spike
recipes.remove(<evilcraft:dark_spike>);
recipes.addShaped(<evilcraft:dark_spike>, [[null,<evilcraft:dark_gem>,null],[<evilcraft:dark_gem>,<mob_grinding_utils:spikes>,<evilcraft:dark_gem>]]);

# Blood Extractor
recipes.removeShaped(<evilcraft:blood_extractor>);
mods.extendedcrafting.TableCrafting.addShaped(<evilcraft:blood_extractor>.withTag({}),
[[null,null,null,<rftools:syringe>,null],
[null,<evilcraft:dark_block>,<evilcraft:dark_block>,<rftools:syringe>,<rftools:syringe>],
[null,<thermalfoundation:glass_alloy:5>,<contenttweaker:dread_crystal>,<evilcraft:dark_block>,null],
[<evilcraft:dark_block>,<evilcraft:dark_block>,<thermalfoundation:glass_alloy:5>,<evilcraft:dark_block>,null],
[null,<evilcraft:dark_block>,null,null,null]]);

# Darkened Apple
recipes.remove(<evilcraft:darkened_apple>);
mods.immersiveengineering.ArcFurnace.addRecipe(<evilcraft:darkened_apple>, <minecraft:apple>, null, 120, 512, [<evilcraft:dark_block> * 3], "Alloying");
#EIOAlloySmelter.addRecipe(<evilcraft:darkened_apple>, [<minecraft:apple>, <evilcraft:dark_block> * 3], 32000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
IEAlloySmelter.addRecipe(<evilcraft:darkened_apple>, <minecraft:apple>, <evilcraft:dark_block> * 3, 300);
mods.thermalexpansion.InductionSmelter.addRecipe(<evilcraft:darkened_apple>, <minecraft:apple>, <evilcraft:dark_block> * 3, 32000);

# Removing Dark Stick from ore:stickWood
<ore:stickWood>.remove(<evilcraft:dark_stick>);

# Obscured Glass
recipes.remove(<evilcraft:obscured_glass>);
mods.immersiveengineering.ArcFurnace.addRecipe(<evilcraft:obscured_glass>, <extrautils2:decorativeglass:3>, null, 120, 512, [<evilcraft:dark_gem>, <ore:dyeBrown>], "Alloying");
EIOAlloySmelter.addRecipe(<evilcraft:obscured_glass>, [<extrautils2:decorativeglass:3>, <evilcraft:dark_gem>, <ore:dyeBrown>], 32000);

# Dark Tank
recipes.remove(<evilcraft:dark_tank>);
recipes.addShaped(<evilcraft:dark_tank>.withTag({capacity: 16000}), [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>],[<evilcraft:dark_gem>,<ore:blockGlassBlack>,<evilcraft:dark_gem>],[<evilcraft:dark_gem>,<evilcraft:dark_gem>,<evilcraft:dark_gem>]]);
recipes.addShapeless("evilcraft_tank_upgrade", <evilcraft:dark_tank>, [<evilcraft:dark_tank>.marked("tank1"),<evilcraft:dark_tank>.marked("tank2")],
function(out,ins,cInfo) {
	var final_tag = {} as IData;

	if(ins.tank1.tag has "Fluid") {
		final_tag += {Fluid: ins.tank1.tag.Fluid};
		if(ins.tank2.tag has "Fluid") {
			if(ins.tank2.tag.Fluid.FluidName == ins.tank1.tag.Fluid.FluidName) {
				final_tag = {Fluid: {FluidName: ins.tank2.tag.Fluid.FluidName, Amount: ins.tank1.tag.Fluid.Amount + ins.tank2.tag.Fluid.Amount}};
			}
		}
	} else {
		if(ins.tank2.tag has "Fluid") {
			final_tag += {Fluid: ins.tank2.tag.Fluid};
		}
	}
	if(ins.tank1.tag.capacity + ins.tank2.tag.capacity <= 65536000) {
		return out.withTag(final_tag + {capacity: ins.tank1.tag.capacity + ins.tank2.tag.capacity});
	} else {
		return out.withTag(final_tag + {capacity: 65536000});
	}
}, null);

# Blood Infusion Core
recipes.remove(<evilcraft:blood_infusion_core>);
mods.extendedcrafting.TableCrafting.addShaped(<evilcraft:blood_infusion_core>,
[[null,null,<evilcraft:hardened_blood_shard>,null,null],
[null,<evilcraft:hardened_blood_shard>,<contenttweaker:hardened_blood_droplet>,<evilcraft:hardened_blood_shard>,null],
[<evilcraft:hardened_blood_shard>,<contenttweaker:hardened_blood_droplet>,<evilcraft:dark_power_gem>,<contenttweaker:hardened_blood_droplet>,<evilcraft:hardened_blood_shard>],
[null,<evilcraft:hardened_blood_shard>,<contenttweaker:hardened_blood_droplet>,<evilcraft:hardened_blood_shard>,null],
[null,null,<evilcraft:hardened_blood_shard>,null,null]]);

# Blood Infuser
recipes.remove(<evilcraft:blood_infuser>);
mods.extendedcrafting.TableCrafting.addShaped(<evilcraft:blood_infuser>.withTag({}),
[[<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>],
[<betternether:cincinnasite_forge>,<contenttweaker:hardened_blood_droplet>,<enderutilities:machine_1>,<contenttweaker:hardened_blood_droplet>,<betternether:cincinnasite_forge>],
[<betternether:cincinnasite_forge>,<contenttweaker:hardened_blood_droplet>,<evilcraft:blood_infusion_core>,<contenttweaker:hardened_blood_droplet>,<betternether:cincinnasite_forge>],
[<betternether:cincinnasite_forge>,<contenttweaker:hardened_blood_droplet>,<enderutilities:machine_1>,<contenttweaker:hardened_blood_droplet>,<betternether:cincinnasite_forge>],
[<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>]]);

# Dark Power Gem
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:dark_power_gem>);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:dark_gem>, <liquid:evilcraftblood> * 1000, 0, <evilcraft:dark_power_gem>, 100, 1);
mods.thermalexpansion.Transposer.removeFillRecipe(<evilcraft:dark_gem>, <liquid:evilcraftblood>);
<evilcraft:dark_power_gem>.maxStackSize = 64;

# Dark Power Gem Block
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:dark_power_gem_block>);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:dark_block>, <liquid:evilcraftblood> * 9000, 0, <evilcraft:dark_power_gem_block>, 900, 5);
mods.thermalexpansion.Transposer.removeFillRecipe(<evilcraft:dark_block>, <liquid:evilcraftblood>);

# Bowl of Empty Promises
recipes.remove(<evilcraft:bowl_of_promises:1>);
recipes.addShaped(<evilcraft:bowl_of_promises:1>, [[<evilcraft:dark_power_gem>,<contenttweaker:aquasalus>,<evilcraft:dark_power_gem>],[<evilcraft:dark_power_gem>,<evilcraft:dark_power_gem>,<evilcraft:dark_power_gem>]]);
<evilcraft:bowl_of_promises:1>.removeTooltip("Not used up in crafting.");

# Filled Bowl of Empty Promises
recipes.remove(<evilcraft:bowl_of_promises>);
mods.bloodmagic.TartaricForge.addRecipe(<evilcraft:bowl_of_promises>, [<evilcraft:bowl_of_promises:1>,<contenttweaker:magicales>,<evilcraft:dark_gem_crushed>,<evilcraft:dark_spike>], 200, 16);

# Bowl of Promises (Strength 0)
mods.thermalexpansion.Transposer.removeFillRecipe(<evilcraft:bowl_of_promises>, <liquid:evilcraftblood>);

# Iron Promise Acceptor
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:promise_acceptor>);
mods.evilcraft.BloodInfuser.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <liquid:evilcraftblood> * 10000, 0, <evilcraft:promise_acceptor>, 100, 5);
mods.thermalexpansion.Transposer.removeFillRecipe(<actuallyadditions:block_crystal_empowered:5>, <liquid:evilcraftblood>);

# Promise of Tenacity I
recipes.remove(<evilcraft:promise>);
recipes.addShaped(<evilcraft:promise>, [[<actuallyadditions:item_crystal_empowered:5>,<evilcraft:bowl_of_promises:2>.noReturn(),<actuallyadditions:item_crystal_empowered:5>],[<contenttweaker:cosmic_alloy>,<evilcraft:promise_acceptor>,<contenttweaker:cosmic_alloy>],[<actuallyadditions:item_crystal_empowered:5>,<evilcraft:bowl_of_promises:2>.noReturn(),<actuallyadditions:item_crystal_empowered:5>]]);

# Undead Sapling
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:undead_sapling>);
mods.evilcraft.BloodInfuser.addRecipe(<minecraft:deadbush>, <liquid:evilcraftblood> * 25000, 1, <evilcraft:undead_sapling>, 200, 2);

# Undead Log & Plank Oredict removals
<ore:logWood>.remove(<evilcraft:undead_log>);
<ore:plankWood>.remove(<evilcraft:undead_plank>);

# Bloody Cobblestone
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:mossy_cobblestone>, <liquid:evilcraftblood>);

# Blood Chest
recipes.remove(<evilcraft:blood_chest>);
<evilcraft:blood_chest>.addTooltip(format.red("Item disabled. Makes repairing items trivial."));

# Gold Promise Acceptor
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:promise_acceptor:1>);
mods.evilcraft.BloodInfuser.addRecipe(<contenttweaker:empowered_glod_crystal_block>, <liquid:evilcraftblood> * 40000, 1, <evilcraft:promise_acceptor:1>, 200, 8);

# Bowl of Promises (Strength I)
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:bowl_of_promises:3>);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:bowl_of_promises:2>, <liquid:evilcraftblood> * 10000, 1, <evilcraft:bowl_of_promises:3>, 100, 2);

# Promise of Tenacity II
recipes.remove(<evilcraft:promise:1>);
recipes.addShaped(<evilcraft:promise:1>, [[<contenttweaker:empowered_glod_crystal>,<evilcraft:bowl_of_promises:3>.noReturn(),<contenttweaker:empowered_glod_crystal>],[<contenttweaker:holy_core>,<evilcraft:promise_acceptor:1>,<contenttweaker:holy_core>],[<contenttweaker:empowered_glod_crystal>,<evilcraft:bowl_of_promises:3>.noReturn(),<contenttweaker:empowered_glod_crystal>]]);

# Diamond Promise Acceptor
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:promise_acceptor:2>);
mods.evilcraft.BloodInfuser.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <liquid:evilcraftblood> * 160000, 2, <evilcraft:promise_acceptor:2>, 300, 10);

# Bowl of Promises (Strength II)
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:bowl_of_promises:4>);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:bowl_of_promises:3>, <liquid:evilcraftblood> * 15000, 2, <evilcraft:bowl_of_promises:4>, 100, 2);

# Promise of Tenacity III
recipes.remove(<evilcraft:promise:2>);
recipes.addShaped(<evilcraft:promise:2>, [[<actuallyadditions:item_crystal_empowered:2>,<evilcraft:bowl_of_promises:4>.noReturn(),<actuallyadditions:item_crystal_empowered:2>],[<contenttweaker:tempest_core>,<evilcraft:promise_acceptor:2>,<contenttweaker:tempest_core>],[<actuallyadditions:item_crystal_empowered:2>,<evilcraft:bowl_of_promises:4>.noReturn(),<actuallyadditions:item_crystal_empowered:2>]]);

# Bowl of Promises (Strength III)
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:bowl_of_promises:5>);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:bowl_of_promises:4>, <liquid:evilcraftblood> * 20000, 3, <evilcraft:bowl_of_promises:5>, 100, 2);

# Promise of Productivity
recipes.remove(<evilcraft:promise:4>);
recipes.addShaped(<evilcraft:promise:4>, [[<actuallyadditions:item_crystal_empowered:1>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered:1>],[<contenttweaker:defensive_core>,<evilcraft:promise_acceptor:2>,<contenttweaker:defensive_core>],[<actuallyadditions:item_crystal_empowered:1>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered:1>]]);

# Promise of Velocity
recipes.remove(<evilcraft:promise:3>);
recipes.addShaped(<evilcraft:promise:3>, [[<actuallyadditions:item_crystal_empowered>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered>],[<contenttweaker:power_core>,<evilcraft:promise_acceptor:2>,<contenttweaker:power_core>],[<actuallyadditions:item_crystal_empowered>,<evilcraft:bowl_of_promises:5>.noReturn(),<actuallyadditions:item_crystal_empowered>]]);

# Purifier
recipes.remove(<evilcraft:purifier>);
mods.extendedcrafting.TableCrafting.addShaped(<evilcraft:purifier>,
[[<evilcraft:dark_power_gem_block>,null,null,null,<evilcraft:dark_power_gem_block>],
[<evilcraft:dark_block>,null,null,null,<evilcraft:dark_block>],
[<evilcraft:dark_block>,<industrialforegoing:enchantment_extractor>,<evilcraft:blood_infusion_core>,<industrialforegoing:enchantment_aplicator>,<evilcraft:dark_block>],
[<evilcraft:dark_block>,<contenttweaker:aquatic_core>,<contenttweaker:aquatic_core>,<contenttweaker:aquatic_core>,<evilcraft:dark_block>],
[<evilcraft:dark_block>,<evilcraft:dark_block>,<evilcraft:dark_block>,<evilcraft:dark_block>,<evilcraft:dark_block>]]);

# Dull Dust
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<minecraft:redstone>);
recipes.remove(<evilcraft:dull_dust>);
recipes.addShapeless(<evilcraft:dull_dust>, [<contenttweaker:crepitous>,<minecraft:gunpowder>,<minecraft:sugar>,<contenttweaker:neutral_reagent>,<contenttweaker:dirty_reagent>,<contenttweaker:wizards_reagent>]);

# Effortless Ring
recipes.remove(<evilcraft:effortless_ring>);
recipes.addShapedMirrored(<evilcraft:effortless_ring>, [[null,<evilcraft:promise:3>,null],[<contenttweaker:magical_core>,<evilcraft:promise:4>,<contenttweaker:magical_core>],[<actuallyadditions:item_potion_ring_advanced>,<contenttweaker:earthen_core>,<actuallyadditions:item_potion_ring_advanced:3>]]);

# Spiked Plate
recipes.remove(<evilcraft:spiked_plate>);
recipes.addShaped(<evilcraft:spiked_plate>, [[<evilcraft:dark_spike>,<evilcraft:dark_spike>,<evilcraft:dark_spike>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:bloodied_dust>,<contenttweaker:mobgrindium_ingot>],[<evilcraft:dark_block>,<evilcraft:dark_block>,<evilcraft:dark_block>]]);

# Sanguinary Pedestal
recipes.remove(<evilcraft:sanguinary_pedestal>);
recipes.addShaped(<evilcraft:sanguinary_pedestal>, [[<contenttweaker:mobgrindium_ingot>,<contenttweaker:bloodied_dust>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:offensive_core>,<contenttweaker:mobgrindium_ingot>],[<evilcraft:dark_block>,<evilcraft:dark_tank>.withTag({capacity: 128000}),<evilcraft:dark_block>]]);

# Box of Eternal Closure
recipes.remove(<evilcraft:box_of_eternal_closure>);
recipes.addShaped(<evilcraft:box_of_eternal_closure>.withTag({spiritTag: {playerName: "", innerEntity: "", remainingLife: 0, isSwarm: 1 as byte, swarmTier: 4, buildupDuration: 0, frozenDuration: 0, playerId: ""}}), [[<evilcraft:dark_power_gem>,<enderutilities:storage_0:2>,<evilcraft:dark_power_gem>],[<contenttweaker:magical_core>,<evilcraft:promise_acceptor:2>,<contenttweaker:magical_core>],[<evilcraft:dark_power_gem>,<enderutilities:storage_0:2>,<evilcraft:dark_power_gem>]]);

# Vengeance Ring
recipes.remove(<evilcraft:vengeance_ring>);
recipes.addShaped(<evilcraft:vengeance_ring>, [[<contenttweaker:magical_core>,<evilcraft:dark_power_gem_block>,<contenttweaker:magical_core>],[<evilcraft:dark_power_gem_block>,<evilcraft:promise_acceptor:2>,<evilcraft:dark_power_gem_block>],[<contenttweaker:magical_core>,<evilcraft:dark_power_gem_block>,<contenttweaker:magical_core>]]);

# Vengeance Focus
recipes.remove(<evilcraft:vengeance_focus>);
recipes.addShaped(<evilcraft:vengeance_focus>, [[<contenttweaker:magical_core>,<contenttweaker:aether>,<contenttweaker:magical_core>],[<evilcraft:promise:3>,<evilcraft:vengeance_ring>,<evilcraft:promise:3>],[<contenttweaker:magical_core>,<contenttweaker:aether>,<contenttweaker:magical_core>]]);

# Piercing Vengeance Focus
recipes.remove(<evilcraft:piercing_vengeance_focus>);
recipes.addShaped(<evilcraft:piercing_vengeance_focus>, [[<contenttweaker:potency_core>,<minecraft:end_crystal>,<contenttweaker:potency_core>],[<minecraft:end_crystal>,<evilcraft:vengeance_focus>,<minecraft:end_crystal>],[<contenttweaker:potency_core>,<minecraft:end_crystal>,<contenttweaker:potency_core>]]);

# Golden String
recipes.remove(<evilcraft:golden_string>);
recipes.addShaped(<evilcraft:golden_string>, [[<contenttweaker:glod_crystal>,<ore:string>,<contenttweaker:glod_crystal>],[<ore:string>,<ore:string>,<ore:string>],[<contenttweaker:glod_crystal>,<ore:string>,<contenttweaker:glod_crystal>]]);

# Spirit Reanimator
recipes.remove(<evilcraft:spirit_reanimator>);

# Sceptre of Thunder
recipes.remove(<evilcraft:sceptre_of_thunder>);
FluidToItem.transform(<evilcraft:sceptre_of_thunder>, <liquid:cloud_seed_concentrated>, [<abyssalcraft:crystalcluster:1>, <contenttweaker:power_core>], true);

# Kineticator
#recipes.remove(<evilcraft:kineticator>);
#recipes.addShapedMirrored(<evilcraft:kineticator>.withTag({}), [[null,<evilcraft:dark_stick>,<evilcraft:blood_infusion_core>],[<evilcraft:dark_stick>,glod_crystal,<evilcraft:dark_stick>],[glod_crystal,<evilcraft:dark_stick>,null]]);

# Repelling Kineticator
#recipes.remove(<evilcraft:kineticator:1>);
#recipes.addShapedMirrored(<evilcraft:kineticator:1>.withTag({}), [[null,<evilcraft:dark_stick>,glod_crystal],[<evilcraft:dark_stick>,glod_crystal,<evilcraft:dark_stick>],[<evilcraft:blood_infusion_core>,<evilcraft:dark_stick>,null]]);

# Empty Orb
recipes.remove(<evilcraft:blood_orb>);
recipes.addShaped(<evilcraft:blood_orb>, [[<contenttweaker:bloodied_dust>,<contenttweaker:empty_core>,<contenttweaker:bloodied_dust>],[<contenttweaker:empty_core>,<botania:manaresource:5>,<contenttweaker:empty_core>],[<contenttweaker:bloodied_dust>,<contenttweaker:empty_core>,<contenttweaker:bloodied_dust>]]);

# Blood Orb
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:blood_orb:1>);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:blood_orb>, <liquid:evilcraftblood> * 640000, 3, <evilcraft:blood_orb:1>, 600, 2);

# Materialized Vengeance Essence
recipes.remove(<evilcraft:vengeance_essence:1>);
#EIOAlloySmelter.addRecipe(<evilcraft:vengeance_essence:1>, [<evilcraft:vengeance_essence> * 4, <contenttweaker:magicales> * 4, <contenttweaker:praesidium> * 4], 20000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
mods.immersiveengineering.ArcFurnace.addRecipe(<evilcraft:vengeance_essence:1>, <evilcraft:vengeance_essence> * 4, null, 120, 400, [<contenttweaker:magicales> * 4, <contenttweaker:praesidium> * 4]);

# Garmonbozia
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:garmonbozia>);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:vengeance_essence:1>, <liquid:evilcraftblood> * 160000, 3, <evilcraft:garmonbozia>, 150, 1);

# Eternal Water Bucket
recipes.remove(<evilcraft:bucket_eternal_water>);
recipes.addShaped(<evilcraft:bucket_eternal_water>, [[null,<contenttweaker:aquasalus>,null],[<evilcraft:dark_power_gem_block>,<evilcraft:weather_container:2>,<evilcraft:dark_power_gem_block>],[null,<evilcraft:dark_power_gem_block>,null]]);

# Sanguinary Environmental Accumulator
recipes.remove(<evilcraft:sanguinary_environmental_accumulator>);
mods.extendedcrafting.TableCrafting.addShaped(<evilcraft:sanguinary_environmental_accumulator>,
[[<bloodmagic:decorative_brick>,<botania:manaresource:9>,<botania:manaresource:9>,<botania:manaresource:9>,<bloodmagic:decorative_brick>],
[<botania:manaresource:9>,<contenttweaker:coralium_decorated_blood_star>,<contenttweaker:coralium_decorated_blood_star>,<contenttweaker:coralium_decorated_blood_star>,<botania:manaresource:9>],
[<botania:manaresource:9>,<evilcraft:garmonbozia>,<evilcraft:environmental_accumulation_core>,<evilcraft:garmonbozia>,<botania:manaresource:9>],
[<botania:manaresource:9>,<contenttweaker:coralium_decorated_blood_star>,<contenttweaker:coralium_decorated_blood_star>,<contenttweaker:coralium_decorated_blood_star>,<botania:manaresource:9>],
[<bloodmagic:decorative_brick>,<botania:manaresource:9>,<botania:manaresource:9>,<botania:manaresource:9>,<bloodmagic:decorative_brick>]]);

# Eternal Water Block
recipes.remove(<evilcraft:eternal_water_block>);
#recipes.addShaped(<evilcraft:eternal_water_block>, [[<ore:paneGlassBlue>,<contenttweaker:aquasalus>,<ore:paneGlassBlue>],[<ore:paneGlassBlue>,<roots:unending_bowl>,<ore:paneGlassBlue>],[<evilcraft:dark_block>,<evilcraft:weather_container:2>,<evilcraft:dark_block>]]);

# Lightning Bomb
recipes.remove(<evilcraft:lightning_bomb>);

# Potentia Sphere
recipes.remove(<evilcraft:potentia_sphere>);
#EIOAlloySmelter.addRecipe(<evilcraft:potentia_sphere>, [<contenttweaker:potency_core>, <contenttweaker:orbis_terrae> * 4, <minecraft:slime_ball> * 12], 10000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
mods.immersiveengineering.ArcFurnace.addRecipe(<evilcraft:potentia_sphere>, <contenttweaker:potency_core>, null, 120, 200, [<contenttweaker:orbis_terrae> * 4, <minecraft:slime_ball> * 12]);

# Ender Pearl from Potentia Sphere
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<minecraft:ender_pearl>);

# Inverted Potentia
recipes.remove(<evilcraft:inverted_potentia>);
EIOAlloySmelter.addRecipe(<evilcraft:inverted_potentia>, [<evilcraft:potentia_sphere>, <contenttweaker:suppression_core>, <minecraft:redstone_torch>], 10000);
mods.immersiveengineering.ArcFurnace.addRecipe(<evilcraft:inverted_potentia>, <evilcraft:potentia_sphere>, null, 120, 200, [<contenttweaker:suppression_core>, <minecraft:redstone_torch>]);

# Mace of Destruction
recipes.remove(<evilcraft:mace_of_destruction>);

# Sanguinary Pedestal (Efficiency I)
recipes.remove(<evilcraft:sanguinary_pedestal:1>);
recipes.addShaped(<evilcraft:sanguinary_pedestal:1>, [[<evilcraft:dark_power_gem_block>,<evilcraft:dark_power_gem_block>,<evilcraft:dark_power_gem_block>],[null,<evilcraft:sanguinary_pedestal>,null],[<evilcraft:dark_power_gem_block>,<botania:storage:2>,<evilcraft:dark_power_gem_block>]]);

# Invigoration Pendant
recipes.remove(<evilcraft:invigorating_pendant>);
recipes.addShaped(<evilcraft:invigorating_pendant>.withTag({}), [[null,<evilcraft:golden_string>,null],[<evilcraft:golden_string>,<contenttweaker:suppression_core>,<evilcraft:golden_string>],[<botania:manaresource:7>,<evilcraft:blood_infusion_core>,<botania:manaresource:7>]]);

# Blood Pearl of Teleportation
recipes.remove(<evilcraft:blood_pearl_of_teleportation>);
recipes.addShaped(<evilcraft:blood_pearl_of_teleportation>.withTag({}), [[<evilcraft:dark_power_gem_block>,<enderutilities:enderpearlreusable>,<evilcraft:dark_power_gem_block>],[<enderutilities:enderpearlreusable>,<botania:storage:2>,<enderutilities:enderpearlreusable>],[<evilcraft:dark_power_gem_block>,<enderutilities:enderpearlreusable>,<evilcraft:dark_power_gem_block>]]);

# Vengeance Pickaxe
recipes.remove(<evilcraft:vengeance_pickaxe>);
recipes.addShaped(<evilcraft:vengeance_pickaxe>.withTag({ench: [{lvl: 5 as short, id: 35 as short}, {lvl: 3 as short, id: 47 as short}]}), [[<contenttweaker:offensive_core>,<minecraft:diamond_block>,<contenttweaker:offensive_core>],[<minecraft:diamond_block>,<evilcraft:dark_stick>,<minecraft:diamond_block>],[null,<evilcraft:dark_stick>,null]]);

# Burning GemStone
furnace.remove(<evilcraft:burning_gem_stone>);
furnace.addRecipe(<evilcraft:burning_gem_stone>, <evilcraft:dark_power_gem_block>);

# Wooden Exalted Crafter
recipes.remove(<evilcraft:exalted_crafter:1>);
recipes.addShaped(<evilcraft:exalted_crafter:1>, [[<evilcraft:undead_log>,<tconstruct:tooltables>,<evilcraft:undead_log>],[<tconstruct:tooltables>,<enderutilities:enderbag>,<tconstruct:tooltables>],[<evilcraft:undead_log>,<tconstruct:tooltables>,<evilcraft:undead_log>]]);

# Exalted Crafter
recipes.remove(<evilcraft:exalted_crafter>);
recipes.addShaped(<evilcraft:exalted_crafter>, [[<evilcraft:dark_power_gem_block>,<minecraft:ender_chest>,<evilcraft:dark_power_gem_block>],[<minecraft:ender_chest>,<enderutilities:enderbag>,<minecraft:ender_chest>],[<evilcraft:dark_power_gem_block>,<minecraft:ender_chest>,<evilcraft:dark_power_gem_block>]]);

# Spirit Furnace
recipes.remove(<evilcraft:spirit_furnace>);

# Spikey Claws
recipes.remove(<evilcraft:spikey_claws>);
recipes.addShaped(<evilcraft:spikey_claws>, [[<evilcraft:dark_spike>,<evilcraft:dark_spike>,<evilcraft:dark_spike>],[null,<evilcraft:dark_power_gem>,null]]);

# Blood Orb -> Evil Blood Orb
<evilcraft:blood_orb:1>.displayName = "Evil Blood Orb";

# Biome Extract Bottle
recipes.remove(<evilcraft:biome_extract>);
recipes.addShaped(<evilcraft:biome_extract>, [[null,<evilcraft:dark_gem>,null],[<astralsorcery:itemcraftingcomponent:3>,null,<astralsorcery:itemcraftingcomponent:3>],[<astralsorcery:itemcraftingcomponent:3>,<thaumcraft:jar_normal>,<astralsorcery:itemcraftingcomponent:3>]]);

# Bound Blood Drop
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:bound_blood_drop>);

# Creative Blood Droplet
mods.extendedcrafting.TableCrafting.addShaped(<evilcraft:creative_blood_drop>.withTag({}),
[[null, null, null, <bloodmagic:decorative_brick>, null, null, null],
[null, null, <bloodmagic:decorative_brick>, <evilcraft:blood_orb:1>, <bloodmagic:decorative_brick>, null, null],
[null, <bloodmagic:decorative_brick>, <openblocks:tank>.withTag({tank: {FluidName: "evilcraftblood", Amount: 16000}}), <openblocks:tank>.withTag({tank: {FluidName: "evilcraftblood", Amount: 16000}}), <openblocks:tank>.withTag({tank: {FluidName: "evilcraftblood", Amount: 16000}}), <bloodmagic:decorative_brick>, null],
[null, <evilcraft:blood_orb:1>, <openblocks:tank>.withTag({tank: {FluidName: "evilcraftblood", Amount: 16000}}), <thermalexpansion:reservoir:32000>, <openblocks:tank>.withTag({tank: {FluidName: "evilcraftblood", Amount: 16000}}), <evilcraft:blood_orb:1>, null],
[null, <bloodmagic:decorative_brick>, <openblocks:tank>.withTag({tank: {FluidName: "evilcraftblood", Amount: 16000}}), <openblocks:tank>.withTag({tank: {FluidName: "evilcraftblood", Amount: 16000}}), <openblocks:tank>.withTag({tank: {FluidName: "evilcraftblood", Amount: 16000}}), <bloodmagic:decorative_brick>, null],
[null, <bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>, <evilcraft:blood_orb:1>, <bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>, null],
[null, null, <bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>, null, null]]);

print("ENDING EvilCraft.zs");
