#priority 8
# Author: Atricos

import mods.extrautils2.Resonator;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Melting;
import mods.astralsorcery.Altar;
import mods.inworldcrafting.FluidToItem;

print("STARTING ExtraUtilities2.zs");

# Snow Globe
recipes.remove(<extrautils2:snowglobe>);
recipes.addShapedMirrored(<extrautils2:snowglobe>, [[<ore:blockGlassColorless>,<minecraft:nether_star>,<ore:blockGlassColorless>],[<minecraft:prismarine_shard>,<minecraft:snow>,<minecraft:prismarine_crystals>],[<minecraft:ender_pearl>,<minecraft:grass>,<minecraft:ender_pearl>]]);

# Polished Stone
recipes.remove(<extrautils2:decorativesolid:2>);
recipes.addShaped(<extrautils2:decorativesolid:2> * 4, [[<ore:stone>,<ore:stone>,<ore:stone>],[<ore:stone>,<contenttweaker:gp_powder>,<ore:stone>],[<ore:stone>,<ore:stone>,<ore:stone>]]);

# Solar Panel
recipes.remove(<extrautils2:passivegenerator>);
recipes.addShaped(<extrautils2:passivegenerator>, [[<mekanism:controlcircuit:2>,<mekanism:controlcircuit:2>,<mekanism:controlcircuit:2>],[<extrautils2:decorativesolid:2>,<contenttweaker:gp_powder>,<extrautils2:decorativesolid:2>],[<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>]]);

# Lunar Panel
recipes.remove(<extrautils2:passivegenerator:1>);
recipes.addShaped(<extrautils2:passivegenerator:1>, [[<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>],[<extrautils2:decorativesolid:2>,<contenttweaker:gp_powder>,<extrautils2:decorativesolid:2>],[<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>]]);

# Redstone Gear
recipes.remove(<extrautils2:ingredients:1>);
recipes.addShaped(<extrautils2:ingredients:1>, [[null,<minecraft:redstone_torch>,null],[<minecraft:redstone_torch>,<extrautils2:decorativesolid:2>,<minecraft:redstone_torch>],[null,<minecraft:redstone_torch>,null]]);

# Manual Mill
recipes.remove(<extrautils2:passivegenerator:7>);
recipes.addShaped(<extrautils2:passivegenerator:7>, [[null,<extrautils2:ingredients:1>,null],[<extrautils2:decorativesolid:2>,<contenttweaker:gp_powder>,<extrautils2:decorativesolid:2>]]);

# Glass Cutter
recipes.remove(<extrautils2:glasscutter>);
recipes.addShaped(<extrautils2:glasscutter>, [[null,null,<immersiveengineering:material:1>],[null,<lightningcraft:rod:6>,<thermalfoundation:material:32>],[<ore:ingotRefinedObsidian>,null,null]]);

# Resonating Crystal
recipes.remove(<extrautils2:ingredients>);
recipes.addShapeless(<minecraft:redstone> * 64, [<extrautils2:ingredients>]);

# Lava Mill
recipes.remove(<extrautils2:passivegenerator:2>);
recipes.addShaped(<extrautils2:passivegenerator:2>, [[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<contenttweaker:redstone_star>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<contenttweaker:gp_powder>,<extrautils2:decorativesolid:3>]]);

# Water Mill
recipes.remove(<extrautils2:passivegenerator:3>);
recipes.addShaped(<extrautils2:passivegenerator:3>, [[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],[<extrautils2:ingredients:1>,<contenttweaker:redstone_star>,<extrautils2:ingredients:1>],[<extrautils2:decorativesolid:3>,<contenttweaker:gp_powder>,<extrautils2:decorativesolid:3>]]);

# Wind Mill
recipes.remove(<extrautils2:passivegenerator:4>);
recipes.addShaped(<extrautils2:passivegenerator:4>, [[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],[<immersiveengineering:material:11>,<contenttweaker:redstone_star>,<immersiveengineering:material:11>],[<extrautils2:decorativesolid:3>,<contenttweaker:gp_powder>,<extrautils2:decorativesolid:3>]]);

# Fire Mill
recipes.remove(<extrautils2:passivegenerator:5>);
recipes.addShaped(<extrautils2:passivegenerator:5>, [[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],[<minecraft:nether_brick_fence>,<contenttweaker:redstone_star>,<minecraft:nether_brick_fence>],[<extrautils2:decorativesolid:3>,<contenttweaker:gp_powder>,<extrautils2:decorativesolid:3>]]);

# Unstable Ingot & Stable Nugget
recipes.remove(<extrautils2:unstableingots:0>);
recipes.removeShaped(<extrautils2:unstableingots:1>, [[<*>],[<*>],[<minecraft:diamond>]]);
recipes.addShaped(<extrautils2:unstableingots>, [[<minecraft:iron_ingot>],[<contenttweaker:gp_powder>],[<minecraft:diamond>]]);
recipes.addShaped(<extrautils2:unstableingots:1>, [[<minecraft:iron_nugget>],[<contenttweaker:gp_powder>],[<minecraft:diamond>]]);

# Moon Stone
recipes.remove(<extrautils2:ingredients:5>);
recipes.addShaped(<extrautils2:ingredients:5> * 6, [[<extrautils2:ingredients:3>,<extrautils2:ingredients:3>,<extrautils2:ingredients:3>],[<extrautils2:ingredients:3>,<ore:ingotUnstable>,<extrautils2:ingredients:3>],[<extrautils2:ingredients:3>,<extrautils2:ingredients:3>,<extrautils2:ingredients:3>]]);

# Watering Can
recipes.remove(<extrautils2:wateringcan:1000>);
recipes.addShapedMirrored(<extrautils2:wateringcan:1000>, [[<ore:ingotOsgloglas>,null,null],[<ore:ingotOsgloglas>,<contenttweaker:gp_powder>,<ore:ingotOsgloglas>],[null,<ore:ingotOsgloglas>,null]]);

# Magical Wood (only in the Enchanter)
recipes.remove(<extrautils2:decorativesolidwood:1>);

# Magical Apple (only in the Enchanter)
recipes.remove(<extrautils2:magicapple>);

# Resonator
recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator>, [[<contenttweaker:relic_ingot>,<mekanism:controlcircuit:2>,<contenttweaker:relic_ingot>],[<minecraft:redstone_block>,<contenttweaker:resonating_orb>.anyDamage().transformDamage(1),<minecraft:redstone_block>],[<minecraft:redstone_block>,<minecraft:redstone_block>,<minecraft:redstone_block>]]);

# Angel Block
recipes.remove(<extrautils2:angelblock>);
recipes.addShaped(<extrautils2:angelblock>, [[<contenttweaker:relic_ingot>,<contenttweaker:compressed_obsidian1>,<contenttweaker:relic_ingot>],[<contenttweaker:compressed_obsidian1>,<ore:feather>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:relic_ingot>,<contenttweaker:compressed_obsidian1>,<contenttweaker:relic_ingot>]]);

# Redstone Clock
recipes.remove(<extrautils2:redstoneclock>);
recipes.addShaped(<extrautils2:redstoneclock>, [[<projectred-core:resource_item>,<projectred-core:resource_item:1>,<projectred-core:resource_item>],[<projectred-core:resource_item:1>,<projectred-core:resource_item:11>,<projectred-core:resource_item:1>],[<projectred-core:resource_item>,<projectred-core:resource_item:1>,<projectred-core:resource_item>]]);

# Red Coal
mods.extrautils2.Resonator.remove(<extrautils2:ingredients:4>);
mods.extrautils2.Resonator.add(<extrautils2:ingredients:4>, <minecraft:coal_block>, 1600);
mods.extrautils2.Resonator.add(<extrautils2:ingredients:4>, <thermalfoundation:storage_resource:0>, 1600);

# Lunar Reactive Dust
mods.extrautils2.Resonator.remove(<extrautils2:ingredients:3>);
mods.extrautils2.Resonator.add(<extrautils2:ingredients:3>, <contenttweaker:osglolapis>, 1600);

# Upgrade Base
mods.extrautils2.Resonator.remove(<extrautils2:ingredients:9>);
mods.extrautils2.Resonator.add(<extrautils2:ingredients:9>, <mekanism:enrichedalloy>, 800);

# Machine Block
recipes.remove(<extrautils2:machine>);
recipes.addShaped(<extrautils2:machine>, [[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],[<mekanism:atomicalloy>,<mekanism:basicblock:8>,<mekanism:atomicalloy>],[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]]);

# Crusher
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}), [[<extrautils2:decorativesolid:7>,<thermalfoundation:material:32>,<extrautils2:decorativesolid:7>],[<betternether:cincinnasite_forged>,<extrautils2:machine>.withTag(null),<betternether:cincinnasite_forged>],[<extrautils2:decorativesolid:7>,<thermalfoundation:material:32>,<extrautils2:decorativesolid:7>]]);

# Enchanter
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}), [[<extrautils2:decorativesolid:7>,<thermalfoundation:material:32>,<extrautils2:decorativesolid:7>],[<extrautils2:ingredients:5>,<extrautils2:machine>.withTag(null),<extrautils2:ingredients:5>],[<extrautils2:decorativesolid:7>,<thermalfoundation:material:32>,<extrautils2:decorativesolid:7>]]);

# Furnace
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), [[<extrautils2:decorativesolid:7>,<thermalfoundation:material:32>,<extrautils2:decorativesolid:7>],[<minecraft:furnace>,<extrautils2:machine>.withTag(null),<minecraft:furnace>],[<extrautils2:decorativesolid:7>,<thermalfoundation:material:32>,<extrautils2:decorativesolid:7>]]);

# Furnace Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), [[<extrautils2:decorativesolid:7>,allCoalBlocks,<extrautils2:decorativesolid:7>],[<minecraft:furnace>,<extrautils2:machine>.withTag(null),<minecraft:furnace>],[<extrautils2:decorativesolid:7>,allCoalBlocks,<extrautils2:decorativesolid:7>]]);

# Sun Crystal
recipes.remove(<extrautils2:suncrystal:250>);
recipes.addShaped(<extrautils2:suncrystal:250>, [[<extrautils2:ingredients:12>,<minecraft:glowstone>,<extrautils2:ingredients:12>],[<minecraft:glowstone>,<minecraft:diamond>,<minecraft:glowstone>],[<extrautils2:ingredients:12>,<minecraft:glowstone>,<extrautils2:ingredients:12>]]);

# Speed Upgrade
recipes.remove(<extrautils2:ingredients:6>);
recipes.addShapeless(<extrautils2:ingredients:6>, [<extrautils2:ingredients:9>,<mekanism:speedupgrade>,<minecraft:gold_ingot>]);

# Stack Upgrade
recipes.remove(<extrautils2:ingredients:7>);
recipes.addShapeless(<extrautils2:ingredients:7>, [<extrautils2:ingredients:9>,<mekanism:speedupgrade>,<mekanism:controlcircuit:2>]);

# Mining Upgrade
recipes.remove(<extrautils2:ingredients:8>);
recipes.addShapeless(<extrautils2:ingredients:8>, [<extrautils2:ingredients:9>,<mekanism:energyupgrade>,<extrautils2:ingredients:12>]);

# Survival Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), [[<extrautils2:decorativesolid:7>,<extrautils2:ingredients:4>,<extrautils2:decorativesolid:7>],[<minecraft:furnace>,<extrautils2:machine>.withTag(null),<minecraft:furnace>],[<extrautils2:decorativesolid:7>,<extrautils2:ingredients:4>,<extrautils2:decorativesolid:7>]]);

# Cullinary Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [[<ore:blockOsmiridium>,<extrautils2:decorativesolidwood:1>,<ore:blockOsmiridium>],[<contenttweaker:enchanted_golden_berry>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<contenttweaker:enchanted_golden_berry>],[<ore:blockOsmiridium>,<extrautils2:decorativesolidwood:1>,<ore:blockOsmiridium>]]);

# Nether Star Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), [[<extrautils2:decorativesolid:7>,<extrautils2:decorativesolidwood:1>,<extrautils2:decorativesolid:7>],[<minecraft:nether_star>,<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),<minecraft:nether_star>],[<extrautils2:decorativesolid:7>,<extrautils2:decorativesolidwood:1>,<extrautils2:decorativesolid:7>]]);

# Frosty Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), [[<ore:blockOsmiridium>,<extrautils2:decorativesolidwood:1>,<ore:blockOsmiridium>],[<minecraft:packed_ice>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<minecraft:packed_ice>],[<ore:blockOsmiridium>,<extrautils2:decorativesolidwood:1>,<ore:blockOsmiridium>]]);

# Dischentment Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}), [[<ore:blockOsmiridium>,<extrautils2:decorativesolidwood:1>,<ore:blockOsmiridium>],[<minecraft:enchanting_table>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<minecraft:enchanting_table>],[<ore:blockOsmiridium>,<extrautils2:decorativesolidwood:1>,<ore:blockOsmiridium>]]);

# Slimey Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), [[<alchemistry:ingot:3>,<extrautils2:decorativesolidwood:1>,<alchemistry:ingot:3>],[<ore:blockSlime>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<ore:blockSlime>],[<alchemistry:ingot:3>,<extrautils2:decorativesolidwood:1>,<alchemistry:ingot:3>]]);

# Magmatic Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), [[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:demonlord_ingot>,<contenttweaker:steaming_restonia_crystal>],[<minecraft:lava_bucket>.noReturn(),<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<minecraft:lava_bucket>.noReturn()],[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:demonlord_ingot>,<contenttweaker:steaming_restonia_crystal>]]);

# Heated Redstone Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}), [[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:demonlord_ingot>,<contenttweaker:steaming_restonia_crystal>],[<minecraft:redstone_block>,<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),<minecraft:redstone_block>],[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:demonlord_ingot>,<contenttweaker:steaming_restonia_crystal>]]);

# Explosive Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), [[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:demonlord_ingot>,<contenttweaker:steaming_restonia_crystal>],[<minecraft:tnt>,<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),<minecraft:tnt>],[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:demonlord_ingot>,<contenttweaker:steaming_restonia_crystal>]]);

# Halitosis Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}), [[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:demonlord_ingot>,<contenttweaker:steaming_restonia_crystal>],[<minecraft:shulker_shell>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<minecraft:shulker_shell>],[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:demonlord_ingot>,<contenttweaker:steaming_restonia_crystal>]]);

# Death Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}), [[<alchemistry:ingot:3>,<contenttweaker:demonlord_ingot>,<alchemistry:ingot:3>],[<thaumcraft:flesh_block>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<thaumcraft:flesh_block>],[<alchemistry:ingot:3>,<contenttweaker:demonlord_ingot>,<alchemistry:ingot:3>]]);

# Ender Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}), [[<alchemistry:ingot:3>,<extrautils2:suncrystal>,<alchemistry:ingot:3>],[<actuallyadditions:block_misc:6>,<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),<actuallyadditions:block_misc:6>],[<alchemistry:ingot:3>,<extrautils2:suncrystal>,<alchemistry:ingot:3>]]);

# Potion Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), [[<ore:blockOsmiridium>,<extrautils2:suncrystal>,<ore:blockOsmiridium>],[<minecraft:splash_potion>.withTag({Potion: "cofhcore:luck2"}),<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<minecraft:splash_potion>.withTag({Potion: "cofhcore:luck2"})],[<ore:blockOsmiridium>,<extrautils2:suncrystal>,<ore:blockOsmiridium>]]);

# Pink Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), [[<contenttweaker:steaming_restonia_crystal>,<extrautils2:suncrystal>,<contenttweaker:steaming_restonia_crystal>],[<atum:linen_pink>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<atum:linen_pink>],[<contenttweaker:steaming_restonia_crystal>,<extrautils2:suncrystal>,<contenttweaker:steaming_restonia_crystal>]]);

# Overclocked Generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), [[<ore:blockOsmiridium>,<extrautils2:suncrystal>,<ore:blockOsmiridium>],[<extrautils2:ingredients:6>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<extrautils2:ingredients:6>],[<ore:blockOsmiridium>,<extrautils2:suncrystal>,<ore:blockOsmiridium>]]);

# Wooden Spikes
recipes.remove(<extrautils2:spike_wood>);
recipes.addShaped(<extrautils2:spike_wood> * 3, [[null,<minecraft:wooden_sword>,null],[<minecraft:wooden_sword>,<extrautils2:decorativesolidwood:1>,<minecraft:wooden_sword>],[<ore:logWood>,<ore:logWood>,<ore:logWood>]]);

# Stone Spikes
recipes.remove(<extrautils2:spike_stone>);
recipes.addShaped(<extrautils2:spike_stone> * 3, [[null,<minecraft:stone_sword>,null],[<minecraft:stone_sword>,<extrautils2:spike_wood>,<minecraft:stone_sword>],[<extrautils2:spike_wood>,<extrautils2:decorativesolid:3>,<extrautils2:spike_wood>]]);

# Iron Spikes
recipes.remove(<extrautils2:spike_iron>);
recipes.addShaped(<extrautils2:spike_iron> * 3, [[null,<minecraft:iron_sword>,null],[<minecraft:iron_sword>,<extrautils2:spike_stone>,<minecraft:iron_sword>],[<extrautils2:spike_stone>,<minecraft:iron_block>,<extrautils2:spike_stone>]]);

# Golden Spikes
recipes.remove(<extrautils2:spike_gold>);
recipes.addShaped(<extrautils2:spike_gold> * 3, [[null,<minecraft:golden_sword>,null],[<minecraft:golden_sword>,<extrautils2:spike_iron>,<minecraft:golden_sword>],[<extrautils2:spike_iron>,<minecraft:gold_block>,<extrautils2:spike_iron>]]);

# Diamond Spikes
recipes.remove(<extrautils2:spike_diamond>);
recipes.addShaped(<extrautils2:spike_diamond> * 3, [[null,<minecraft:diamond_sword>,null],[<minecraft:diamond_sword>,<extrautils2:spike_gold>,<minecraft:diamond_sword>],[<extrautils2:spike_gold>,<minecraft:diamond_block>,<extrautils2:spike_gold>]]);

# Trowel
recipes.remove(<extrautils2:trowel>);
recipes.addShapedMirrored(<extrautils2:trowel>, [[null,null,<minecraft:iron_ingot>],[null,<minecraft:iron_shovel>,null],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]}),null,null]]);

# Wrench
recipes.remove(<extrautils2:wrench>);
recipes.addShapedMirrored(<extrautils2:wrench>, [[null,<actuallyadditions:item_misc:5>,<contenttweaker:gp_powder>],[null,<projectred-core:resource_item:103>,null],[<projectred-core:resource_item:103>,null,null]]);

# Stone Drum
recipes.removeShaped(<extrautils2:drum>);
recipes.addShaped(<extrautils2:drum>, [[<extrautils2:decorativesolid:3>,<minecraft:stone_slab>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<extrautils2:ingredients:5>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<minecraft:stone_slab>,<extrautils2:decorativesolid:3>]]);

# Iron Drum
recipes.removeShaped(<extrautils2:drum:1>);
recipes.addShaped("extrautils2_drum_upgrade1", <extrautils2:drum:1>, [[<thermalfoundation:material:32>,<minecraft:cauldron>,<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<extrautils2:drum>.marked("tank"),<thermalfoundation:material:32>],[<thermalfoundation:material:32>,<minecraft:cauldron>,<thermalfoundation:material:32>]],
	function(out, ins, cInfo) {
	if(ins.tank.tag has "Fluid") {
		return out.withTag(ins.tank.tag);
	} else {
		return out;
	}}, null);

# Reinforced Large Drum
recipes.removeShaped(<extrautils2:drum:2>);
recipes.addShaped("extrautils2_drum_upgrade2", <extrautils2:drum:2>, [[<contenttweaker:demonlord_ingot>,<thermalfoundation:material:33>,<contenttweaker:demonlord_ingot>],[<contenttweaker:demonlord_block>,<extrautils2:drum:1>.marked("tank"),<contenttweaker:demonlord_block>],[<contenttweaker:demonlord_ingot>,<thermalfoundation:material:33>,<contenttweaker:demonlord_ingot>]],
	function(out, ins, cInfo) {
	if(ins.tank.tag has "Fluid") {
		return out.withTag(ins.tank.tag);
	} else {
		return out;
	}}, null);

# Transfer Pipe
recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe> * 16, [[null,<extrautils2:decorativesolid:3>,null],[<extrautils2:decorativesolid:3>,<projectred-core:resource_item:103>,<extrautils2:decorativesolid:3>],[null,<extrautils2:decorativesolid:3>,null]]);

# Transfer Node
recipes.remove(<extrautils2:grocket>);
recipes.addShaped(<extrautils2:grocket>, [[<ore:ingotRedAlloy>,<extrautils2:pipe>,<ore:ingotRedAlloy>],[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]]);

# Transfer Filter
recipes.remove(<extrautils2:grocket:1>);
recipes.addShaped(<extrautils2:grocket:1>, [[<ore:ingotRedAlloy>,<extrautils2:filter>,<ore:ingotRedAlloy>],[<extrautils2:decorativesolid:3>,<extrautils2:pipe>,<extrautils2:decorativesolid:3>]]);

# Transfer Node (Fluids)
recipes.remove(<extrautils2:grocket:2>);
recipes.addShaped(<extrautils2:grocket:2>, [[<ore:ingotRedAlloy>,<extrautils2:pipe>,<ore:ingotRedAlloy>],[<extrautils2:decorativesolid:3>,<immersiveengineering:material:8>,<extrautils2:decorativesolid:3>]]);

# Transfer Node (Energy)
recipes.remove(<extrautils2:grocket:6>);
recipes.addShaped(<extrautils2:grocket:6>, [[<ore:ingotRedAlloy>,<extrautils2:pipe>,<ore:ingotRedAlloy>],[<extrautils2:decorativesolid:3>,<contenttweaker:osglolapis>,<extrautils2:decorativesolid:3>]]);

# Transfer Pipe Filter
recipes.remove(<extrautils2:grocket:5>);
recipes.addShapeless(<extrautils2:grocket:5>, [<extrautils2:pipe>,<extrautils2:filter>,<minecraft:redstone>]);

# Retrieval Node (Items)
recipes.remove(<extrautils2:grocket:3>);
recipes.addShapeless(<extrautils2:grocket:3>, [<extrautils2:grocket>,<minecraft:ender_pearl>,<contenttweaker:osglolapis>]);

# Retrieval Node (Fluids)
recipes.remove(<extrautils2:grocket:4>);
recipes.addShapeless(<extrautils2:grocket:4>, [<extrautils2:grocket:2>,<minecraft:ender_pearl>,<contenttweaker:osglolapis>]);

# Analog Crafter
recipes.remove(<extrautils2:analogcrafter>);
recipes.addShaped(<extrautils2:analogcrafter>, [[<extrautils2:decorativesolidwood:1>,<extrautils2:decorativesolidwood:1>,<extrautils2:decorativesolidwood:1>],[<extrautils2:decorativesolidwood:1>,<mekanism:machineblock3:5>,<extrautils2:decorativesolidwood:1>],[<extrautils2:decorativesolidwood:1>,<extrautils2:machine>.withTag(null),<extrautils2:decorativesolidwood:1>]]);

# Flat Transfer Node (Items)
recipes.remove(<extrautils2:flattransfernode>);
recipes.addShapeless(<extrautils2:flattransfernode>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<extrautils2:grocket>]);
mods.immersiveengineering.MetalPress.addRecipe(<extrautils2:flattransfernode>, <extrautils2:grocket>, <immersiveengineering:mold>, 2000);
mods.thermalexpansion.Compactor.addPressRecipe(<extrautils2:flattransfernode>, <extrautils2:grocket>, 2000);

# Flat Transfer Node (Fluids)
recipes.remove(<extrautils2:flattransfernode:1>);
recipes.addShapeless(<extrautils2:flattransfernode:1>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<extrautils2:grocket:2>]);
mods.immersiveengineering.MetalPress.addRecipe(<extrautils2:flattransfernode:1>, <extrautils2:grocket:2>, <immersiveengineering:mold>, 2000);
mods.thermalexpansion.Compactor.addPressRecipe(<extrautils2:flattransfernode:1>, <extrautils2:grocket:2>, 2000);

# Screen
recipes.remove(<extrautils2:screen>);
recipes.addShapedMirrored(<extrautils2:screen>, [[null,<extrautils2:endershard>,<extrautils2:decorativesolid:3>],[<contenttweaker:redstone_star>,<ore:itemIlluminatedPanel>,<extrautils2:decorativesolid:3>],[null,<extrautils2:endershard>,<extrautils2:decorativesolid:3>]]);

# Indexer
recipes.remove(<extrautils2:indexer>);
recipes.addShapedMirrored(<extrautils2:indexer>, [[<extrautils2:decorativesolid:3>,<contenttweaker:redstone_star>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<appliedenergistics2:chest>,<extrautils2:screen>],[<extrautils2:decorativesolid:3>,<contenttweaker:redstone_star>,<extrautils2:decorativesolid:3>]]);

# Player Chest
# recipes.remove(<extrautils2:playerchest>);

# Ethereal Glass
recipes.remove(<extrautils2:ineffableglass>);
recipes.addShaped(<extrautils2:ineffableglass> * 4, [[<ore:blockGlassColorless>,<ore:blockGlassColorless>,<ore:blockGlassColorless>],[<ore:blockGlassColorless>,<extrautils2:ingredients:5>,<ore:blockGlassColorless>],[<ore:blockGlassColorless>,<ore:blockGlassColorless>,<ore:blockGlassColorless>]]);

# Ineffable Glass
recipes.remove(<extrautils2:ineffableglass:2>);
recipes.addShaped(<extrautils2:ineffableglass:2> * 4, [[<extrautils2:decorativeglass>,<extrautils2:decorativeglass>,<extrautils2:decorativeglass>],[<extrautils2:decorativeglass>,<extrautils2:ingredients:5>,<extrautils2:decorativeglass>],[<extrautils2:decorativeglass>,<extrautils2:decorativeglass>,<extrautils2:decorativeglass>]]);

# Dark Glass
recipes.remove(<extrautils2:decorativeglass:3>);
recipes.addShapeless(<extrautils2:decorativeglass:3>, [<extrautils2:decorativeglass>,<ore:dyeBlack>]);

# Dark Ineffable Glass
recipes.remove(<extrautils2:ineffableglass:3>);
recipes.addShaped(<extrautils2:ineffableglass:3> * 4, [[<extrautils2:decorativeglass:3>,<extrautils2:decorativeglass:3>,<extrautils2:decorativeglass:3>],[<extrautils2:decorativeglass:3>,<extrautils2:ingredients:5>,<extrautils2:decorativeglass:3>],[<extrautils2:decorativeglass:3>,<extrautils2:decorativeglass:3>,<extrautils2:decorativeglass:3>]]);

# Glowing Glass
recipes.remove(<extrautils2:decorativeglass:4>);
recipes.addShaped(<extrautils2:decorativeglass:4>, [[null,<minecraft:glowstone_dust>,null],[<minecraft:glowstone_dust>,<extrautils2:decorativeglass>,<minecraft:glowstone_dust>],[null,<minecraft:glowstone_dust>,null]]);

# Ender Lily Smeltery Melting
mods.tconstruct.Melting.addRecipe(<liquid:ender> * 1500, <extrautils2:enderlilly>, 800);

# Golden Bag of Holding
recipes.remove(<extrautils2:bagofholding>);
recipes.addShaped(<extrautils2:bagofholding>, [[<minecraft:gold_ingot>,<minecraft:gold_block>,<minecraft:gold_ingot>],[<contenttweaker:treated_leather>,<extrautils2:decorativesolidwood:1>,<contenttweaker:treated_leather>],[<minecraft:gold_ingot>,<minecraft:gold_block>,<minecraft:gold_ingot>]]);

# Redstone Lantern
recipes.remove(<extrautils2:redstonelantern>);
recipes.addShaped(<extrautils2:redstonelantern>, [[<ore:stone>,<projectred-core:resource_item:103>,<ore:stone>],[<projectred-core:resource_item:103>,<minecraft:redstone_lamp>,<projectred-core:resource_item:103>],[<ore:stone>,<minecraft:comparator>,<ore:stone>]]);

# Drop of Evil
recipes.addShaped(<extrautils2:ingredients:10>, [[<contenttweaker:mobgrindium_ingot>,<tconstruct:materials:17>,<contenttweaker:mobgrindium_ingot>],[<tconstruct:materials:17>,<minecraft:skull:1>,<tconstruct:materials:17>],[<contenttweaker:mobgrindium_ingot>,<tconstruct:materials:17>,<contenttweaker:mobgrindium_ingot>]]);
<extrautils2:ingredients:10>.addTooltip(format.red(format.bold("Does not get dropped by Wither Skeletons.")));
<extrautils2:ingredients:10>.addTooltip(format.red(format.bold("Only available through crafting.")));
<extrautils2:ingredients:10>.addTooltip(format.darkRed("Right Click on Grass to transform an area into Cursed Earth."));
<extrautils2:ingredients:10>.addTooltip(format.darkRed("Mobs will constantly spawn on this type of Soil."));
<extrautils2:ingredients:10>.addTooltip(format.darkRed("Watch out, Cursed Earth burns in the daylight!"));

# Deep Dark Portal
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped(<extrautils2:teleporter:1>, [[<enderio:block_alloy:6>,<extrautils2:compressedcobblestone:4>,<enderio:block_alloy:6>],[<extrautils2:compressedcobblestone:4>,<quantumflux:craftingpiece:4>,<extrautils2:compressedcobblestone:4>],[<enderio:block_alloy:6>,<extrautils2:compressedcobblestone:4>,<enderio:block_alloy:6>]]);

# Wireless RF Transmitter
recipes.remove(<extrautils2:powertransmitter>);
recipes.addShaped(<extrautils2:powertransmitter>, [[<enderio:item_alloy_ingot:6>,<contenttweaker:rf_powder>,<enderio:item_alloy_ingot:6>],[<enderio:item_capacitor_melodic>,<quantumflux:craftingpiece>,<enderio:item_capacitor_melodic>],[<enderio:item_alloy_ingot:6>,<contenttweaker:rf_powder>,<enderio:item_alloy_ingot:6>]]);

# Climograph Base Unit
recipes.remove(<extrautils2:terraformer:9>);
recipes.addShaped(<extrautils2:terraformer:9>, [[<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>],[<astralsorcery:itemcraftingcomponent:1>,<extrautils2:machine>,<astralsorcery:itemcraftingcomponent:1>],[<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>]]);

# Terraformer
recipes.remove(<extrautils2:terraformer>);
recipes.addShaped(<extrautils2:terraformer>, [[<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:condensed_vis_crystal_terra>,<enderio:item_alloy_endergy_ingot:3>],[<minecraft:dirt:2>,<extrautils2:terraformer:9>,<minecraft:dirt:2>],[<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:condensed_vis_crystal_terra>,<enderio:item_alloy_endergy_ingot:3>]]);

# Heater
recipes.remove(<extrautils2:terraformer:4>);
recipes.addShaped(<extrautils2:terraformer:4>, [[<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:condensed_vis_crystal_ignis>,<enderio:item_alloy_endergy_ingot:3>],[<contenttweaker:condensed_vis_crystal_ignis>,<extrautils2:terraformer:9>,<contenttweaker:condensed_vis_crystal_ignis>],[<enderio:item_alloy_endergy_ingot:3>,<actuallyadditions:block_heat_collector>,<enderio:item_alloy_endergy_ingot:3>]]);

# Cooler
recipes.remove(<extrautils2:terraformer:5>);
recipes.addShaped(<extrautils2:terraformer:5>, [[<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:condensed_vis_crystal_gelum>,<enderio:item_alloy_endergy_ingot:3>],[<contenttweaker:condensed_vis_crystal_gelum>,<extrautils2:terraformer:9>,<contenttweaker:condensed_vis_crystal_gelum>],[<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:condensed_vis_crystal_gelum>,<enderio:item_alloy_endergy_ingot:3>]]);

# Humidifier
recipes.remove(<extrautils2:terraformer:2>);
recipes.addShaped(<extrautils2:terraformer:2>, [[<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:condensed_vis_crystal_aqua>,<enderio:item_alloy_endergy_ingot:3>],[<contenttweaker:condensed_vis_crystal_aqua>,<extrautils2:terraformer:9>,<contenttweaker:condensed_vis_crystal_aqua>],[<enderio:item_alloy_endergy_ingot:3>,<industrialforegoing:water_condensator>,<enderio:item_alloy_endergy_ingot:3>]]);

# Dehumidifier
recipes.remove(<extrautils2:terraformer:3>);
recipes.addShaped(<extrautils2:terraformer:3>, [[<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:condensed_vis_crystal_vacuos>,<enderio:item_alloy_endergy_ingot:3>],[<contenttweaker:condensed_vis_crystal_vacuos>,<extrautils2:terraformer:9>,<contenttweaker:condensed_vis_crystal_vacuos>],[<enderio:item_alloy_endergy_ingot:3>,<enderio:block_niard>,<enderio:item_alloy_endergy_ingot:3>]]);

# Magic Absorbtion
recipes.remove(<extrautils2:terraformer:7>);
recipes.addShaped(<extrautils2:terraformer:7>, [[<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:condensed_vis_crystal_praecantatio>,<enderio:item_alloy_endergy_ingot:3>],[<contenttweaker:condensed_vis_crystal_praecantatio>,<extrautils2:terraformer:9>,<contenttweaker:condensed_vis_crystal_praecantatio>],[<enderio:item_alloy_endergy_ingot:3>,<industrialforegoing:potion_enervator>,<enderio:item_alloy_endergy_ingot:3>]]);

# Dehostilifier
recipes.remove(<extrautils2:terraformer:6>);
recipes.addShaped(<extrautils2:terraformer:6>, [[<enderio:item_alloy_endergy_ingot:3>,<contenttweaker:condensed_vis_crystal_ordo>,<enderio:item_alloy_endergy_ingot:3>],[<contenttweaker:condensed_vis_crystal_ordo>,<extrautils2:terraformer:9>,<contenttweaker:condensed_vis_crystal_ordo>],[<enderio:item_alloy_endergy_ingot:3>,<enderio:block_soul_binder>,<enderio:item_alloy_endergy_ingot:3>]]);

# Magic Infuser
recipes.remove(<extrautils2:terraformer:8>);
recipes.addShaped(<extrautils2:terraformer:8>, [[<enderio:item_alloy_endergy_ingot:3>,<evilcraft:biome_extract:1>.withTag({biomeKey: "thaumcraft:magical_forest"}),<enderio:item_alloy_endergy_ingot:3>],[<contenttweaker:condensed_vis_crystal_auram>,<extrautils2:terraformer:9>,<contenttweaker:condensed_vis_crystal_auram>],[<enderio:item_alloy_endergy_ingot:3>,<evilcraft:biome_extract:1>.withTag({biomeKey: "thaumcraft:magical_forest"}),<enderio:item_alloy_endergy_ingot:3>]]);

# Antenna
recipes.remove(<extrautils2:terraformer:1>);
recipes.addShaped(<extrautils2:terraformer:1>, [[<enderio:item_alloy_endergy_ingot:3>,null,<enderio:item_alloy_endergy_ingot:3>],[<contenttweaker:hyper_diamond_block>,<extrautils2:terraformer:9>,<contenttweaker:hyper_diamond_block>],[<contenttweaker:hyper_diamond_block>,<enderio:block_enhanced_wireless_charger>,<contenttweaker:hyper_diamond_block>]]);

# Wireless RF Battery
recipes.remove(<extrautils2:powerbattery>);
recipes.addShaped(<extrautils2:powerbattery>, [[<extrautils2:decorativesolid:3>,<ore:ingotOsgloglas>,<extrautils2:decorativesolid:3>],[<extrautils2:powertransmitter>,<contenttweaker:redstone_star>,<extrautils2:powertransmitter>],[<extrautils2:decorativesolid:3>,<ore:ingotOsgloglas>,<extrautils2:decorativesolid:3>]]);

# Mechanical Crafter
recipes.remove(<extrautils2:crafter>);
recipes.addShaped(<extrautils2:crafter>, [[<extrautils2:decorativesolid:8>,<extrautils2:decorativesolid:8>,<extrautils2:decorativesolid:8>],[<extrautils2:decorativesolid:3>,<mekanism:machineblock3:5>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<extrautils2:machine>,<extrautils2:decorativesolid:3>]]);

# Scanner
recipes.remove(<extrautils2:scanner>);
recipes.addShaped(<extrautils2:scanner>, [[<extrautils2:decorativesolid:3>,<extrautils2:ingredients:2>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<extrautils2:machine>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:8>,<extrautils2:decorativesolid:3>]]);

# Mechanical Miner
recipes.remove(<extrautils2:miner>);
recipes.addShaped(<extrautils2:miner>, [[<extrautils2:decorativesolid:8>,<industrialforegoing:block_destroyer>,<extrautils2:decorativesolid:8>],[<extrautils2:decorativesolid:3>,<extrautils2:machine>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]]);

# Mechanical User
recipes.remove(<extrautils2:user>);
recipes.addShaped(<extrautils2:user>, [[<extrautils2:decorativesolid:8>,<industrialforegoing:block_placer>,<extrautils2:decorativesolid:8>],[<extrautils2:decorativesolid:3>,<extrautils2:machine>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]]);

# Quantum Quarry
recipes.remove(<extrautils2:quarry>);
recipes.addShaped(<extrautils2:quarry>, [[<mekanism:basicblock2:3>.withTag({tier: 0}),<actuallyadditions:block_misc:8>,<mekanism:basicblock2:3>.withTag({tier: 0})],[<extrautils2:decorativesolid:8>,<rftools:builder>,<extrautils2:decorativesolid:8>],[<mekanism:basicblock2:3>.withTag({tier: 0}),<actuallyadditions:block_misc:8>,<mekanism:basicblock2:3>.withTag({tier: 0})]]);

# Quantum Quarry Actuator
recipes.remove(<extrautils2:quarryproxy>);
recipes.addShaped(<extrautils2:quarryproxy>, [[<alchemistry:ingot:3>,<extrautils2:decorativesolid:8>,<alchemistry:ingot:3>],[<extrautils2:decorativesolid:8>,<actuallyadditions:block_misc:8>,<extrautils2:decorativesolid:8>],[<alchemistry:ingot:3>,<extrautils2:decorativesolid:8>,<alchemistry:ingot:3>]]);

# Ender Porcupine
recipes.remove(<extrautils2:interactionproxy>);
recipes.addShaped(<extrautils2:interactionproxy>, [[<extrautils2:spike_iron>,<alchemistry:ingot:3>,<extrautils2:spike_iron>],[<alchemistry:ingot:3>,<actuallyadditions:block_misc:8>,<alchemistry:ingot:3>],[<extrautils2:spike_iron>,<alchemistry:ingot:3>,<extrautils2:spike_iron>]]);

# Builders Wand
recipes.remove(<extrautils2:itembuilderswand>);
recipes.addShapedMirrored(<extrautils2:itembuilderswand>, [[null,null,<extrautils2:decorativesolidwood:1>],[null,<extrautils2:decorativesolidwood:1>,null],[<betterbuilderswands:wandiron>,null,null]]);

# Destruction Wand
recipes.remove(<extrautils2:itemdestructionwand>);
recipes.addShapedMirrored(<extrautils2:itemdestructionwand>, [[null,<contenttweaker:mobgrindium_ingot>,<extrautils2:decorativesolidwood:1>],[null,<extrautils2:decorativesolidwood:1>,<contenttweaker:mobgrindium_ingot>],[<betterbuilderswands:wandiron>,null,null]]);

# Klein Bottle
recipes.remove(<extrautils2:klein>);
recipes.addShaped(<extrautils2:klein>, [[null,<mekanism:teleportationcore>,null],[<ore:ingotOsmiridium>,null,<ore:ingotOsmiridium>],[<ore:ingotOsmiridium>,<mekanism:teleportationcore>,<ore:ingotOsmiridium>]]);

# Demonically Gargantuan Drum
recipes.removeShaped(<extrautils2:drum:3>);
recipes.addShaped("extrautils2_drum_upgrade3", <extrautils2:drum:3>, [[<extrautils2:simpledecorative:1>,<extrautils2:klein>,<extrautils2:simpledecorative:1>],[<contenttweaker:steaming_restonia_crystal_block>,<extrautils2:drum:2>.marked("tank"),<contenttweaker:steaming_restonia_crystal_block>],[<extrautils2:simpledecorative:1>,<extrautils2:klein>,<extrautils2:simpledecorative:1>]],
	function(out, ins, cInfo) {
	if(ins.tank.tag has "Fluid") {
		return out.withTag(ins.tank.tag);
	} else {
		return out;
	}}, null);

# Golden Lasso
recipes.remove(<extrautils2:goldenlasso>);
recipes.addShaped(<extrautils2:goldenlasso>, [[<minecraft:gold_block>,<thermalfoundation:material:135>,<minecraft:gold_block>],[<thermalfoundation:material:135>,<enderio:item_soul_vial>,<thermalfoundation:material:135>],[<minecraft:gold_block>,<thermalfoundation:material:135>,<minecraft:gold_block>]]);

# Cursed Lasso
recipes.remove(<extrautils2:goldenlasso:1>);

# Dragon Egg Mill
recipes.remove(<extrautils2:passivegenerator:8>);
recipes.addShaped(<extrautils2:passivegenerator:8>, [[<extrautils2:decorativesolid:8>,<extrautils2:ingredients:2>,<extrautils2:decorativesolid:8>],[<enderio:block_alloy:6>,<minecraft:nether_star>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>]]);

# Eye of Redstone
recipes.remove(<extrautils2:ingredients:2>);
recipes.addShaped(<extrautils2:ingredients:2>, [[<extrautils2:ingredients>,<contenttweaker:redstone_star>,<extrautils2:ingredients>],[<contenttweaker:redstone_star>,<contenttweaker:steaming_restonia_crystal>,<contenttweaker:redstone_star>],[<extrautils2:ingredients>,<contenttweaker:redstone_star>,<extrautils2:ingredients>]]);

# Compressed Cobblestone
recipes.removeShaped(<extrautils2:compressedcobblestone>);
recipes.addShaped(<extrautils2:compressedcobblestone>, [[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]]);

# Compressed Sand
recipes.removeShaped(<extrautils2:compressedsand>);
recipes.addShaped(<extrautils2:compressedsand>, [[<ore:sand>,<ore:sand>,<ore:sand>],[<ore:sand>,<ore:sand>,<ore:sand>],[<ore:sand>,<ore:sand>,<ore:sand>]]);

# Compressed Gravel
recipes.removeShaped(<extrautils2:compressedgravel>);
recipes.addShaped(<extrautils2:compressedgravel>, [[<ore:gravel>,<ore:gravel>,<ore:gravel>],[<ore:gravel>,<ore:gravel>,<ore:gravel>],[<ore:gravel>,<ore:gravel>,<ore:gravel>]]);

# Alternative ways to obtain the Demon Ingot
FluidToItem.transform(<extrautils2:ingredients:11>, <liquid:fire_water>, [<minecraft:gold_ingot>], false);
FluidToItem.transform(<extrautils2:simpledecorative:1>, <liquid:fire_water>, [<minecraft:gold_block>], false);

recipes.addShaped(<extrautils2:ingredients:11> * 4, [[<mysticalagriculture:gold_essence>,<mysticalagriculture:nether_essence>,<mysticalagriculture:gold_essence>],[<mysticalagriculture:nether_essence>,<mysticalagriculture:gold_essence>,<mysticalagriculture:nether_essence>],[<mysticalagriculture:gold_essence>,<mysticalagriculture:nether_essence>,<mysticalagriculture:gold_essence>]]);

# Chicken Wing Ring
recipes.remove(<extrautils2:chickenring>);
recipes.addShaped(<extrautils2:chickenring>, [[<contenttweaker:condensed_vis_crystal_volatus>,<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:chicken"}}),<contenttweaker:condensed_vis_crystal_volatus>],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]}),<thaumcraft:baubles:5>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]})],[null,<thaumcraft:mirrored_glass>,null]]);

# Ring of the Flying Squid
recipes.remove(<extrautils2:chickenring:1>);
recipes.addShaped(<extrautils2:chickenring:1>, [[<mysticalworld:raw_squid>,<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:squid"}}),<mysticalworld:raw_squid>],[<contenttweaker:condensed_vis_crystal_motus>,<extrautils2:chickenring>,<contenttweaker:condensed_vis_crystal_motus>],[<mysticalworld:raw_squid>,<contenttweaker:mystical_tablet>,<mysticalworld:raw_squid>]]);

# Angel Rings
function addExtraUtilsAngelRingRecipe(dam as int, input_item as IIngredient) {
	recipes.removeShaped(<extrautils2:angelring>.withDamage(dam));
	recipes.removeShapeless(<extrautils2:angelring>.withDamage(dam), [<*>,<*>,<*>]);
	mods.astralsorcery.Altar.addConstellationAltarRecipe("dj2:shaped/internal/altar/angelring" + dam, <extrautils2:angelring>.withDamage(dam), 2500, 100,
	[<astralsorcery:itemcraftingcomponent:4>,<contenttweaker:rainbow_tablet>,<astralsorcery:itemcraftingcomponent:4>,
	<contenttweaker:rainbow_tablet>,<extrautils2:chickenring:1>,<contenttweaker:rainbow_tablet>,
	<astralsorcery:itemcraftingcomponent:4>,<botania:flighttiara:*>,<astralsorcery:itemcraftingcomponent:4>,
	input_item,input_item,input_item,input_item,
	<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>]);
	recipes.addShapeless(<extrautils2:angelring>.withDamage(dam), [<extrautils2:angelring:*>,input_item,input_item,input_item,input_item]);
}

addExtraUtilsAngelRingRecipe(0,<ore:blockGlassColorless>);
addExtraUtilsAngelRingRecipe(1,<minecraft:feather>);
addExtraUtilsAngelRingRecipe(2,<contenttweaker:star_leather>);
addExtraUtilsAngelRingRecipe(3,<bloodmagic:item_demon_crystal:3>);
addExtraUtilsAngelRingRecipe(4,<simplyjetpacks:metaitemmods:24>);
addExtraUtilsAngelRingRecipe(5,<lightningcraft:ingot:1>);

for i in 0 to 6 {
	<ore:angelring>.add(<extrautils2:angelring>.withDamage(i));
}

# Chunk Loading Ward
recipes.remove(<extrautils2:chunkloader>);
recipes.addShaped(<extrautils2:chunkloader>, [[<astralsorcery:blockinfusedwood:6>,<extrautils2:ingredients:2>,<astralsorcery:blockinfusedwood:6>],[<astralsorcery:blockinfusedwood:6>,<enderio:item_capacitor_totemic>,<astralsorcery:blockinfusedwood:6>],[null,<lightningcraft:rod:9>,null]]);

# Lux Sabers
val luxSaberGlasses = [<ore:blockGlassBlue>,<ore:blockGlassPink>,<ore:blockGlassRed>,<ore:blockGlassYellow>,<ore:blockGlassGreen>,<ore:blockGlassCyan>,<ore:blockGlassWhite>,<ore:blockGlassBlack>] as IIngredient[];
for i in 0 to 8 {
	recipes.remove(<extrautils2:luxsaber>.withDamage(i));
	mods.avaritia.ExtremeCrafting.addShaped("extrautils2:luxsaber" + i, <extrautils2:luxsaber>.withDamage(i),
	[[null,null,null,null,luxSaberGlasses[i],null,null,null,null],
	[null,null,null,luxSaberGlasses[i],<extrautils2:suncrystal>,luxSaberGlasses[i],null,null,null],
	[null,null,null,luxSaberGlasses[i],<extrautils2:suncrystal>,luxSaberGlasses[i],null,null,null],
	[null,null,null,luxSaberGlasses[i],<extrautils2:suncrystal>,luxSaberGlasses[i],null,null,null],
	[null,null,null,luxSaberGlasses[i],<extrautils2:suncrystal>,luxSaberGlasses[i],null,null,null],
	[null,null,null,luxSaberGlasses[i],<extrautils2:suncrystal>,luxSaberGlasses[i],null,null,null],
	[null,null,<extrautils2:ingredients:17>,<draconicevolution:wyvern_energy_core>,<extrautils2:ingredients:2>,<draconicevolution:wyvern_energy_core>,<extrautils2:ingredients:17>,null,null],
	[null,null,null,<extrautils2:ingredients:17>,<extrautils2:ingredients:2>,<extrautils2:ingredients:17>,null,null,null],
	[null,null,null,null,<extrautils2:ingredients:17>,null,null,null,null]]);
}

# Alternative Sun Crystal filling recipe
FluidToItem.transform(<extrautils2:suncrystal>, <liquid:liquid_sunshine>, [<extrautils2:suncrystal:250>], false);

recipes.addShaped(<extrautils2:suncrystal>, [[<mysticalagriculture:glowstone_essence>,<mysticalagriculture:glowstone_essence>,<mysticalagriculture:glowstone_essence>],[<mysticalagriculture:glowstone_essence>,<extrautils2:suncrystal:250>,<mysticalagriculture:glowstone_essence>],[<mysticalagriculture:glowstone_essence>,<mysticalagriculture:glowstone_essence>,<mysticalagriculture:glowstone_essence>]]);

<extrautils2:suncrystal>.addTooltip(format.white("Filled by throwing onto the ground when exposed to the sun."));
<extrautils2:suncrystal>.addTooltip(format.white("Later, you can use Liquid Sunshine or Glowstone Essence to fill it."));
<extrautils2:suncrystal>.addTooltip(format.red("Must have 0 durability when thrown in Liquid Sunshine."));

# Opinium Core (Pathetic)
recipes.remove(<extrautils2:opinium>);
recipes.addShaped(<extrautils2:opinium>, [[null,<minecraft:iron_ingot>,null],[<projecte:item.pe_matter>,<minecraft:iron_block>,<projecte:item.pe_matter>],[null,<minecraft:iron_ingot>,null]]);

# Opinium Core (Good)
recipes.remove(<extrautils2:opinium:4>);
recipes.addShaped(<extrautils2:opinium:4>, [[null,<extrautils2:opinium:3>,null],[<minecraft:emerald_block>,<projecte:item.pe_matter:1>,<minecraft:emerald_block>],[null,<extrautils2:opinium:3>,null]]);

# Opinium Core (Damn Good)
recipes.remove(<extrautils2:opinium:5>);
recipes.addShaped(<extrautils2:opinium:5>, [[null,<extrautils2:opinium:4>,null],[<projecte:item.pe_matter:1>,<minecraft:dragon_egg>,<projecte:item.pe_matter:1>],[null,<extrautils2:opinium:4>,null]]);

# Opinium Core (Amazing)
recipes.remove(<extrautils2:opinium:6>);
recipes.addShaped(<extrautils2:opinium:6>, [[null,<extrautils2:opinium:5>,null],[<minecraft:dragon_egg>,<rftools:infused_diamond>,<minecraft:dragon_egg>],[null,<extrautils2:opinium:5>,null]]);

# Opinium Core (Inspiring)
recipes.remove(<extrautils2:opinium:7>);
recipes.addShaped(<extrautils2:opinium:7>, [[null,<extrautils2:opinium:6>,null],[<rftools:infused_diamond>,<extendedcrafting:storage:2>,<rftools:infused_diamond>],[null,<extrautils2:opinium:6>,null]]);

# Opinium Core (Perfected)
recipes.remove(<extrautils2:opinium:8>);
recipes.addShaped(<extrautils2:opinium:8>, [[null,<extrautils2:opinium:7>,null],[<extendedcrafting:storage:2>,<contenttweaker:essence_of_atomic_fusion>,<extendedcrafting:storage:2>],[null,<extrautils2:opinium:7>,null]]);

# Kikoku
recipes.remove(<extrautils2:lawsword>);
recipes.addShapedMirrored(<extrautils2:lawsword>, [[null,<extrautils2:opinium:8>,null],[null,<extrautils2:opinium:8>,null],[<projecte:item.pe_rm_katar>,<contenttweaker:white_matter>,<projecte:item.pe_rm_morning_star>]]);

# Creative Mill
recipes.addShaped(<extrautils2:passivegenerator:6> * 4, [[<extrautils2:passivegenerator:8>,<contenttweaker:white_matter>,<extrautils2:passivegenerator:8>],[<contenttweaker:white_matter>,<danknull:dank_null_6>,<contenttweaker:white_matter>],[<extrautils2:passivegenerator:8>,<contenttweaker:white_matter>,<extrautils2:passivegenerator:8>]]);

# Creative Energy Source
mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:creativeenergy>,
[[<extrautils2:powerbattery>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <extrautils2:powerbattery>],
[<alchemistry:ingot:112>, <extrautils2:rainbowgenerator>, <contenttweaker:taste_the_rainbow>, <extrautils2:rainbowgenerator>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <contenttweaker:taste_the_rainbow>, <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}), <contenttweaker:taste_the_rainbow>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <extrautils2:rainbowgenerator>, <contenttweaker:taste_the_rainbow>, <extrautils2:rainbowgenerator>, <alchemistry:ingot:112>],
[<extrautils2:powerbattery>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <extrautils2:powerbattery>]]);
mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:creativeenergy>,
[[<extrautils2:powerbattery>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <extrautils2:powerbattery>],
[<alchemistry:ingot:112>, <extrautils2:rainbowgenerator>, <contenttweaker:taste_the_rainbow>, <extrautils2:rainbowgenerator>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <contenttweaker:taste_the_rainbow>, <mekanism:energycube>.withTag({tier: 4}), <contenttweaker:taste_the_rainbow>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <extrautils2:rainbowgenerator>, <contenttweaker:taste_the_rainbow>, <extrautils2:rainbowgenerator>, <alchemistry:ingot:112>],
[<extrautils2:powerbattery>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <extrautils2:powerbattery>]]);

# Creative Drum
mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:drum:4>,
[[<alchemistry:ingot:112>, <extrautils2:drum:3>, <extrautils2:drum:3>, <extrautils2:drum:3>, <alchemistry:ingot:112>],
[<alchemistry:ingot:57>, <extrautils2:drum:3>, <bigreactors:reactorcreativecoolantport>, <extrautils2:drum:3>, <alchemistry:ingot:57>],
[<alchemistry:ingot:112>, <galacticraftcore:infinite_oxygen>, <draconicevolution:creative_rf_source>, <galacticraftcore:infinite_oxygen>, <alchemistry:ingot:112>],
[<alchemistry:ingot:57>, <extrautils2:drum:3>, <bigreactors:turbinecreativesteamgenerator>, <extrautils2:drum:3>, <alchemistry:ingot:57>],
[<alchemistry:ingot:112>, <extrautils2:drum:3>, <extrautils2:drum:3>, <extrautils2:drum:3>, <alchemistry:ingot:112>]]);

# Creative Chest
mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:creativechest>,
[[<alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <roots:creative_pouch>, <extendedcrafting:storage:4>, <extendedcrafting:storage:4>, <extendedcrafting:storage:4>, <extendedcrafting:storage:4>, <extendedcrafting:storage:4>, <roots:creative_pouch>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <contenttweaker:essence_of_enclosement>, <bibliocraft:bookcasecreative>, <draconicadditions:chaos_stabilizer_core>, <extrautils2:lawsword>, <draconicadditions:chaos_stabilizer_core>, <bibliocraft:bookcasecreative>, <contenttweaker:essence_of_enclosement>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <contenttweaker:essence_of_enclosement>, <bibliocraft:bookcasecreative>, <contenttweaker:neutronium_singularity>, <botania:pool:1>, <contenttweaker:neutronium_singularity>, <bibliocraft:bookcasecreative>, <contenttweaker:essence_of_enclosement>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <contenttweaker:essence_of_enclosement>, <bibliocraft:bookcasecreative>, <contenttweaker:essence_of_order>, <avaritia:resource:6>, <contenttweaker:essence_of_order>, <bibliocraft:bookcasecreative>, <contenttweaker:essence_of_enclosement>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <roots:creative_pouch>, <extendedcrafting:storage:4>, <extendedcrafting:storage:4>, <extendedcrafting:storage:4>, <extendedcrafting:storage:4>, <extendedcrafting:storage:4>, <roots:creative_pouch>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:114>, <alchemistry:ingot:112>],
[<alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>]]);

print("ENDING ExtraUtilities2.zs");
