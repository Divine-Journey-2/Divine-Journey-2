# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.thermalexpansion.Transposer;
import mods.evilcraft.BloodInfuser;
import crafttweaker.data.IData;

print("STARTING EvilCraft.zs");

# Spike
recipes.remove(<evilcraft:dark_spike>);
recipes.addShaped(<evilcraft:dark_spike>, [[null,<evilcraft:dark_gem>,null],[<evilcraft:dark_gem>,<mob_grinding_utils:spikes>,<evilcraft:dark_gem>]]);

# Blood Extractor
recipes.remove(<evilcraft:blood_extractor>);
mods.extendedcrafting.TableCrafting.addShaped(<evilcraft:blood_extractor>.withTag({}),
[[null,null,null,<rftools:syringe>,null],
[null,<evilcraft:dark_block>,<evilcraft:dark_block>,<rftools:syringe>,<rftools:syringe>],
[null,<thermalfoundation:glass_alloy:5>,<contenttweaker:dread_crystal>,<evilcraft:dark_block>,null],
[<evilcraft:dark_block>,<evilcraft:dark_block>,<thermalfoundation:glass_alloy:5>,<evilcraft:dark_block>,null],
[null,<evilcraft:dark_block>,null,null,null]]);

# Darkened Apple
recipes.remove(<evilcraft:darkened_apple>);
mods.immersiveengineering.ArcFurnace.addRecipe(<evilcraft:darkened_apple>, <minecraft:apple>, null, 120, 512, [<evilcraft:dark_block> * 3], "Alloying");
EIOAlloySmelter.addRecipe(<evilcraft:darkened_apple>, [<minecraft:apple>, <evilcraft:dark_block> * 3], 32000);
IEAlloySmelter.addRecipe(<evilcraft:darkened_apple>, <minecraft:apple>, <evilcraft:dark_block> * 3, 300);
mods.thermalexpansion.InductionSmelter.addRecipe(<evilcraft:darkened_apple>, <minecraft:apple>, <evilcraft:dark_block> * 3, 32000);

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
	}
	if(ins.tank2.tag has "Fluid") {
		if(ins.tank2.tag.Fluid.FluidName == ins.tank1.tag.Fluid.FluidName) {
			final_tag = {Fluid: {FluidName: ins.tank2.tag.Fluid.FluidName, Amount: ins.tank1.tag.Fluid.Amount + ins.tank2.tag.Fluid.Amount}};
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

# Dark Power Gem Block
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:dark_power_gem_block>);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:dark_block>, <liquid:evilcraftblood> * 9000, 0, <evilcraft:dark_power_gem_block>, 900, 5);
mods.thermalexpansion.Transposer.removeFillRecipe(<evilcraft:dark_block>, <liquid:evilcraftblood>);

# Bowl of Empty Promises
recipes.remove(<evilcraft:bowl_of_promises:1>);
recipes.addShaped(<evilcraft:bowl_of_promises:1>, [[<evilcraft:dark_power_gem>,<contenttweaker:aquasalus>,<evilcraft:dark_power_gem>],[<evilcraft:dark_power_gem>,<evilcraft:dark_power_gem>,<evilcraft:dark_power_gem>]]);

# Filled Bowl of Empty Promises
recipes.remove(<evilcraft:bowl_of_promises>);
recipes.addShaped(<evilcraft:bowl_of_promises>, [[null,<evilcraft:dark_gem_crushed>,null],[<evilcraft:dark_gem_crushed>,<contenttweaker:magicales>,<evilcraft:dark_gem_crushed>],[null,<evilcraft:bowl_of_promises:1>,null]]);

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

# Bloody Cobblestone
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:mossy_cobblestone>, <liquid:evilcraftblood>);

# Blood Chest
recipes.remove(<evilcraft:blood_chest>);
<evilcraft:blood_chest>.addTooltip(format.red("Item disabled. Makes repairing items trivial."));

# Gold Promise Acceptor
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:promise_acceptor:1>);
mods.evilcraft.BloodInfuser.addRecipe(empowered_glod_crystal_block, <liquid:evilcraftblood> * 40000, 1, <evilcraft:promise_acceptor:1>, 200, 8);

# Bowl of Promises (Strength I)
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:bowl_of_promises:3>);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:bowl_of_promises:2>, <liquid:evilcraftblood> * 10000, 1, <evilcraft:bowl_of_promises:3>, 100, 2);

# Promise of Tenacity II
recipes.remove(<evilcraft:promise:1>);
recipes.addShaped(<evilcraft:promise:1>, [[empowered_glod_crystal,<evilcraft:bowl_of_promises:3>.noReturn(),empowered_glod_crystal],[<contenttweaker:holy_core>,<evilcraft:promise_acceptor:1>,<contenttweaker:holy_core>],[empowered_glod_crystal,<evilcraft:bowl_of_promises:3>.noReturn(),empowered_glod_crystal]]);

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
recipes.addShaped(<evilcraft:golden_string>, [[glod_crystal,<ore:string>,glod_crystal],[<ore:string>,<ore:string>,<ore:string>],[glod_crystal,<ore:string>,glod_crystal]]);

# Spirit Reanimator
recipes.remove(<evilcraft:spirit_reanimator>);

# Sceptre of Thunder
recipes.remove(<evilcraft:sceptre_of_thunder>);
recipes.addShapedMirrored(<evilcraft:sceptre_of_thunder>, [[null,<contenttweaker:tempestas>,<contenttweaker:power_core>],[null,<botania:rune:6>,<contenttweaker:tempestas>],[<abyssalcraft:crystalcluster:1>,null,null]]);

print("ENDING EvilCraft.zs");