# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.immersiveengineering.ArcFurnace;

print("STARTING SimplyJetpacks.zs");

# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
mods.immersiveengineering.ArcFurnace.addRecipe(<simplyjetpacks:metaitemmods:12>, <enderio:block_alloy:6>, null, 200, 512, [<enderio:item_alloy_ingot:7>, <contenttweaker:ingot_of_elevation>], "Alloying");

# Leadstone Thruster
recipes.remove(<simplyjetpacks:metaitemmods:20>);
recipes.addShaped(<simplyjetpacks:metaitemmods:20>, [[<thermalfoundation:storage:3>,<thermalfoundation:material:513>,<thermalfoundation:storage:3>],[<contenttweaker:ingot_of_elevation>,<thermalexpansion:dynamo:3>,<contenttweaker:ingot_of_elevation>],[<enderio:item_alloy_ingot:3>,<thermalfoundation:material:513>,<enderio:item_alloy_ingot:3>]]);

# Hardened Thruster
recipes.remove(<simplyjetpacks:metaitemmods:21>);
recipes.addShaped(<simplyjetpacks:metaitemmods:21>, [[<thermalfoundation:storage_alloy:2>,<thermalfoundation:material:515>,<thermalfoundation:storage_alloy:2>],[<contenttweaker:ingot_of_elevation>,<thermalexpansion:dynamo:1>,<contenttweaker:ingot_of_elevation>],[<enderio:item_alloy_ingot:3>,<thermalfoundation:material:515>,<enderio:item_alloy_ingot:3>]]);

# Reinforced Thruster
recipes.remove(<simplyjetpacks:metaitemmods:22>);
recipes.addShaped(<simplyjetpacks:metaitemmods:22>, [[<thermalfoundation:storage_alloy:1>,<thermalfoundation:material:514>,<thermalfoundation:storage_alloy:1>],[<contenttweaker:ingot_of_elevation>,<thermalexpansion:dynamo:4>,<contenttweaker:ingot_of_elevation>],[<enderio:item_alloy_ingot:3>,<thermalfoundation:material:514>,<enderio:item_alloy_ingot:3>]]);

# Resonant Thruster
recipes.remove(<simplyjetpacks:metaitemmods:23>);
recipes.addShaped(<simplyjetpacks:metaitemmods:23>, [[<thermalfoundation:storage_alloy:7>,<enderio:item_material:18>,<thermalfoundation:storage_alloy:7>],[<contenttweaker:ingot_of_elevation>,<thermalexpansion:dynamo:5>,<contenttweaker:ingot_of_elevation>],[<enderio:item_alloy_ingot:3>,<enderio:item_material:18>,<enderio:item_alloy_ingot:3>]]);

# Fluxed Thruster
recipes.remove(<simplyjetpacks:metaitemmods:24>);
recipes.addShaped(<simplyjetpacks:metaitemmods:24>, [[<thermalfoundation:storage_alloy:5>,<simplyjetpacks:metaitemmods:30>,<thermalfoundation:storage_alloy:5>],[<simplyjetpacks:metaitemmods:28>,<simplyjetpacks:metaitemmods:30>,<simplyjetpacks:metaitemmods:28>],[<simplyjetpacks:metaitemmods:23>,<enderio:block_alloy:3>,<simplyjetpacks:metaitemmods:23>]]);

# Conductive Iron Thruster
recipes.remove(<simplyjetpacks:metaitemmods:7>);
recipes.addShaped(<simplyjetpacks:metaitemmods:7>, [[<enderio:block_alloy:4>,<enderio:item_basic_capacitor>,<enderio:block_alloy:4>],[<contenttweaker:ingot_of_elevation>,<enderio:item_material>,<contenttweaker:ingot_of_elevation>],[<enderio:item_alloy_ingot:3>,<enderio:item_basic_capacitor>,<enderio:item_alloy_ingot:3>]]);

# Electrical Steel Thruster
recipes.remove(<simplyjetpacks:metaitemmods:8>);
recipes.addShaped(<simplyjetpacks:metaitemmods:8>, [[<enderio:block_alloy>,<enderio:item_basic_capacitor:1>,<enderio:block_alloy>],[<contenttweaker:ingot_of_elevation>,<enderio:item_material:1>,<contenttweaker:ingot_of_elevation>],[<enderio:item_alloy_ingot:3>,<enderio:item_basic_capacitor:1>,<enderio:item_alloy_ingot:3>]]);

# Energetic Thruster
recipes.remove(<simplyjetpacks:metaitemmods:9>);
recipes.addShaped(<simplyjetpacks:metaitemmods:9>, [[<enderio:block_alloy:1>,<enderio:item_basic_capacitor:2>,<enderio:block_alloy:1>],[<contenttweaker:ingot_of_elevation>,<enderio:item_material:53>,<contenttweaker:ingot_of_elevation>],[<enderio:item_alloy_ingot:3>,<enderio:item_basic_capacitor:2>,<enderio:item_alloy_ingot:3>]]);

# Vibrant Thruster
recipes.remove(<simplyjetpacks:metaitemmods:10>);
recipes.addShaped(<simplyjetpacks:metaitemmods:10>, [[<enderio:block_alloy:2>,<enderio:item_capacitor_crystalline>,<enderio:block_alloy:2>],[<contenttweaker:ingot_of_elevation>,<enderio:item_material:66>,<contenttweaker:ingot_of_elevation>],[<enderio:item_alloy_ingot:3>,<enderio:item_capacitor_crystalline>,<enderio:item_alloy_ingot:3>]]);

# Dark Soularium Thruster
recipes.remove(<simplyjetpacks:metaitemmods:11>);
recipes.addShaped(<simplyjetpacks:metaitemmods:11>, [[<simplyjetpacks:metaitemmods:12>,<simplyjetpacks:metaitemmods:15>,<simplyjetpacks:metaitemmods:12>],[<enderio:item_capacitor_melodic>,<enderio:item_material:54>,<enderio:item_capacitor_melodic>],[<simplyjetpacks:metaitemmods:10>,<enderio:block_alloy:3>,<simplyjetpacks:metaitemmods:10>]]);

# Iron Armor Plating
recipes.remove(<simplyjetpacks:metaitemmods:16>);
recipes.addShaped(<simplyjetpacks:metaitemmods:16>, [[<thermalfoundation:material:32>,<contenttweaker:ingot_of_elevation>,<thermalfoundation:material:32>],[<contenttweaker:ingot_of_elevation>,<thermalfoundation:material:32>,<contenttweaker:ingot_of_elevation>],[<thermalfoundation:material:32>,<contenttweaker:ingot_of_elevation>,<thermalfoundation:material:32>]]);

# Silicon Armor Plating
recipes.remove(<simplyjetpacks:metaitemmods:3>);
recipes.addShaped(<simplyjetpacks:metaitemmods:3>, [[<contenttweaker:silicon_plate>,<contenttweaker:ingot_of_elevation>,<contenttweaker:silicon_plate>],[<contenttweaker:ingot_of_elevation>,<contenttweaker:silicon_plate>,<contenttweaker:ingot_of_elevation>],[<contenttweaker:silicon_plate>,<contenttweaker:ingot_of_elevation>,<contenttweaker:silicon_plate>]]);

# Glowstone Elevation Unit (Empty)
recipes.remove(<simplyjetpacks:metaitemmods:27>);
recipes.addShaped(<simplyjetpacks:metaitemmods:27>, [[<thermalfoundation:material:357>,<thermalfoundation:material:294>,<thermalfoundation:material:357>],[<thermalfoundation:material:294>,<contenttweaker:ingot_of_elevation>,<thermalfoundation:material:294>],[<thermalfoundation:material:357>,<thermalfoundation:material:294>,<thermalfoundation:material:357>]]);

# Cryotheum Coolant Unit (Empty)
recipes.remove(<simplyjetpacks:metaitemmods:29>);
recipes.addShaped(<simplyjetpacks:metaitemmods:29>, [[<thermalfoundation:material:357>,<thermalfoundation:material:290>,<thermalfoundation:material:357>],[<thermalfoundation:material:290>,<enderio:item_alloy_endergy_ingot:1>,<thermalfoundation:material:290>],[<thermalfoundation:material:357>,<thermalfoundation:material:290>,<thermalfoundation:material:357>]]);

# Leather Strap
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShaped(<simplyjetpacks:metaitem:4>, [[<contenttweaker:industrial_leather>,<thermalfoundation:material:290>,<contenttweaker:industrial_leather>],[<contenttweaker:industrial_leather>,<thermalfoundation:material:354>,<contenttweaker:industrial_leather>]]);

# Flux Pack upgrade function
function simplyjetpacks_upgrade_fluxpack(input_cell_tag as IData, input_pack_tag as IData, out as IItemStack, energy_value as int) as IItemStack {
	if(input_cell_tag has "Energy") {
		if(input_cell_tag.Energy + input_pack_tag.Energy < energy_value) {
			return out.withTag({Energy: input_cell_tag.Energy + input_pack_tag.Energy});
		} else {
			return out.withTag({Energy: energy_value});
		}
	} else {
		return out.withTag({Energy: 0});
	}
}

# Leadstone Flux Pack
recipes.removeShaped(<simplyjetpacks:itemfluxpack:7>, [[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped("simplyjetpacks_fluxpack_upgrade1", <simplyjetpacks:itemfluxpack:7>.withTag({Energy: 0}), [[<thermalfoundation:material:161>,<thermalfoundation:material:323>,<thermalfoundation:material:161>],[<thermalfoundation:material:323>,<thermalexpansion:cell>.withTag({Recv: 1000, Level: 0 as byte, Send: 1000}).marked("cell"),<thermalfoundation:material:323>],[<thermalfoundation:material:161>,<simplyjetpacks:metaitem:4>,<thermalfoundation:material:161>]],
function(out,ins,cInfo) {
	if(ins.cell.tag has "Energy") {
		if(ins.cell.tag.Energy < 1500000) {
			return out.withTag({Energy: ins.cell.tag.Energy});
		} else {
			return out.withTag({Energy: 1500000});
		}
	} else {
		return out.withTag({Energy: 0});
	}
}, null);

# Hardened Flux Pack
recipes.removeShaped(<simplyjetpacks:itemfluxpack:8>, [[null,<*>,null],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped("simplyjetpacks_fluxpack_upgrade2", <simplyjetpacks:itemfluxpack:8>.withTag({Energy: 0}), [[<thermalfoundation:material:161>,<thermalexpansion:cell>.withTag({Recv: 4000, Level: 1 as byte, Send: 4000}).marked("cell"),<thermalfoundation:material:161>],[<thermalfoundation:material:354>,<simplyjetpacks:itemfluxpack:7>.marked("pack"),<thermalfoundation:material:354>],[<thermalfoundation:material:161>,<thermalfoundation:material:515>,<thermalfoundation:material:161>]],
function(out,ins,cInfo) {
	return simplyjetpacks_upgrade_fluxpack(ins.cell.tag, ins.pack.tag, out, 12000000);
}, null);

# Reinforced Flux Pack
recipes.removeShaped(<simplyjetpacks:itemfluxpack:9>, [[null,<*>,null],[<thermalfoundation:material:161>,<*>,<thermalfoundation:material:161>],[<*>,<*>,<*>]]);
recipes.addShaped("simplyjetpacks_fluxpack_upgrade3", <simplyjetpacks:itemfluxpack:9>.withTag({Energy: 0}), [[<thermalfoundation:material:161>,<thermalexpansion:cell>.withTag({Recv: 9000, Level: 2 as byte, Send: 9000}).marked("cell"),<thermalfoundation:material:161>],[<thermalfoundation:material:353>,<simplyjetpacks:itemfluxpack:8>.marked("pack"),<thermalfoundation:material:353>],[<thermalfoundation:material:161>,<thermalfoundation:material:515>,<thermalfoundation:material:161>]],
function(out,ins,cInfo) {
	return simplyjetpacks_upgrade_fluxpack(ins.cell.tag, ins.pack.tag, out, 40000000);
}, null);

# Resonant Flux Pack
recipes.removeShaped(<simplyjetpacks:itemfluxpack:10>, [[null,<*>,null],[<thermalfoundation:material:167>,<*>,<thermalfoundation:material:167>],[<*>,<*>,<*>]]);
recipes.addShaped("simplyjetpacks_fluxpack_upgrade4", <simplyjetpacks:itemfluxpack:10>.withTag({Energy: 0}), [[<thermalfoundation:material:161>,<thermalexpansion:cell>.withTag({Recv: 25000, Level: 4 as byte, Send: 25000}).marked("cell"),<thermalfoundation:material:161>],[<thermalfoundation:material:359>,<simplyjetpacks:itemfluxpack:9>.marked("pack"),<thermalfoundation:material:359>],[<thermalfoundation:material:161>,<thermalfoundation:material:515>,<thermalfoundation:material:161>]],
function(out,ins,cInfo) {
	return simplyjetpacks_upgrade_fluxpack(ins.cell.tag, ins.pack.tag, out, 80000000);
}, null);

# Flight Control Unit
recipes.remove(<simplyjetpacks:metaitemmods:14>);
recipes.addShaped(<simplyjetpacks:metaitemmods:14>, [[<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_ingot>,<simplyjetpacks:metaitemmods:12>],[<enderio:item_alloy_ingot>,<thermalfoundation:glass_alloy:7>,<enderio:item_alloy_ingot>],[<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_ingot>,<simplyjetpacks:metaitemmods:12>]]);

# Fluxed Armor Plating
recipes.remove(<simplyjetpacks:metaitemmods:26>);
recipes.addShaped(<simplyjetpacks:metaitemmods:26>, [[<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_plate>,<contenttweaker:fluxed_electrum_ingot>],[<contenttweaker:fluxed_electrum_plate>,<contenttweaker:flux_crystal>,<contenttweaker:fluxed_electrum_plate>],[<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_plate>,<contenttweaker:fluxed_electrum_ingot>]]);

# Creative Fluxpack
mods.extendedcrafting.TableCrafting.addShaped(<simplyjetpacks:itemfluxpack>.withTag({Energy: 200000}),
[[<projecte:item.pe_matter:1>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <projecte:item.pe_matter:1>],
[<contenttweaker:white_matter>, <simplyjetpacks:itemfluxpack:14>, <simplyjetpacks:itemfluxpack:14>, <simplyjetpacks:itemfluxpack:14>, <contenttweaker:white_matter>],
[<contenttweaker:white_matter>, <simplyjetpacks:itemfluxpack:14>, <extrautils2:passivegenerator:6>, <simplyjetpacks:itemfluxpack:14>, <contenttweaker:white_matter>],
[<contenttweaker:white_matter>, <simplyjetpacks:itemfluxpack:14>, <simplyjetpacks:itemfluxpack:14>, <simplyjetpacks:itemfluxpack:14>, <contenttweaker:white_matter>],
[<projecte:item.pe_matter:1>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <contenttweaker:white_matter>, <projecte:item.pe_matter:1>]]);

# Creative Jetpack
mods.extendedcrafting.TableCrafting.addShaped(<simplyjetpacks:itemjetpack>.withTag({Energy: 200000, JetpackParticle: 0}),
[[null, <botania:storage:2>, null, <botania:storage:2>, null],
[<botania:storage:2>, <thermalfoundation:storage_alloy:6>, null, <thermalfoundation:storage_alloy:6>, <botania:storage:2>],
[<botania:storage:2>, <tconstruct:metal:2>, <simplyjetpacks:itemfluxpack>, <tconstruct:metal:2>, <botania:storage:2>],
[<botania:storage:2>, <thermalfoundation:storage_alloy:6>, <projecte:item.pe_arcana_ring>.noReturn(), <thermalfoundation:storage_alloy:6>, <botania:storage:2>],
[null, <botania:storage:2>, null, <botania:storage:2>, null]]);

print("ENDING SimplyJetpacks.zs");
