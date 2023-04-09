# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;

print("STARTING EnderUtilities.zs");

# Ender Alloy (Basic)
recipes.remove(<enderutilities:enderpart>);
mods.immersiveengineering.ArcFurnace.addRecipe(<enderutilities:enderpart>, <ore:ingotOsmiridium>, null, 80, 512, [<thermalfoundation:material:167>], "Alloying");
EIOAlloySmelter.addRecipe(<enderutilities:enderpart>, [<ore:ingotOsmiridium>, <thermalfoundation:material:167>], 10000);
IEAlloySmelter.addRecipe(<enderutilities:enderpart>, <ore:ingotOsmiridium>, <thermalfoundation:material:167>, 320);
mods.thermalexpansion.InductionSmelter.addRecipe(<enderutilities:enderpart>, <plustic:osmiridiumingot>, <thermalfoundation:material:167>, 10000);

# Ender Alloy (Enhanced)
recipes.remove(<enderutilities:enderpart:1>);
mods.immersiveengineering.ArcFurnace.addRecipe(<enderutilities:enderpart:1>, <enderutilities:enderpart>, null, 100, 512, [<enderutilities:enderpart:21>, <contenttweaker:steaming_restonia_crystal>], "Alloying");
EIOAlloySmelter.addRecipe(<enderutilities:enderpart:1>, [<enderutilities:enderpart>, <enderutilities:enderpart:21>, <contenttweaker:steaming_restonia_crystal>], 12000);

# Ender Alloy (Advanced)
recipes.remove(<enderutilities:enderpart:2>);
mods.immersiveengineering.ArcFurnace.addRecipe(<enderutilities:enderpart:2>, <enderutilities:enderpart:1>, null, 120, 512, [<enderio:item_alloy_endergy_ingot:1>, <industrialforegoing:pink_slime_ingot>], "Alloying");
EIOAlloySmelter.addRecipe(<enderutilities:enderpart:2>, [<enderutilities:enderpart:1>, <enderio:item_alloy_endergy_ingot:1>, <industrialforegoing:pink_slime_ingot>], 14000);

# Ender Rope
recipes.remove(<enderutilities:enderpart:21>);
recipes.addShaped(<enderutilities:enderpart:21>, [[<ore:string>,<contenttweaker:industrial_leather>,<ore:string>],[<enderutilities:enderpart>,<enderio:item_material:15>,<enderutilities:enderpart>],[<ore:string>,<contenttweaker:industrial_leather>,<ore:string>]]);

# Ender Infuser
recipes.remove(<enderutilities:machine_1>);
recipes.addShaped(<enderutilities:machine_1>, [[<enderutilities:enderpart>,<enderio:block_tank:1>,<enderutilities:enderpart>],[<ore:blockOsmiridium>,<actuallyadditions:block_misc:8>,<ore:blockOsmiridium>],[<enderutilities:enderpart>,<thermalexpansion:machine:8>,<enderutilities:enderpart>]]);

# Tool Workstation
recipes.remove(<enderutilities:machine_1:1>);
recipes.addShaped(<enderutilities:machine_1:1>, [[<enderutilities:enderpart>,<thermalfoundation:material:263>,<enderutilities:enderpart>],[<ore:blockOsmiridium>,<actuallyadditions:block_misc:8>,<ore:blockOsmiridium>],[<enderutilities:enderpart>,<appliedenergistics2:molecular_assembler>,<enderutilities:enderpart>]]);

# Ender Furnace
recipes.remove(<enderutilities:machine_0>);
recipes.addShaped(<enderutilities:machine_0>, [[<enderutilities:enderpart>,<enderutilities:enderpart:15>,<enderutilities:enderpart>],[<ore:blockOsmiridium>,<actuallyadditions:block_misc:8>,<ore:blockOsmiridium>],[<enderutilities:enderpart>,<thermalexpansion:machine>,<enderutilities:enderpart>]]);

# Creation Station
recipes.remove(<enderutilities:machine_1:2>);
recipes.addShaped(<enderutilities:machine_1:2>, [[<enderutilities:enderpart:1>,<enderutilities:enderpart:16>,<enderutilities:enderpart:1>],[<enderutilities:machine_0>,<actuallyadditions:block_misc:8>,<enderutilities:machine_0>],[<enderutilities:enderpart:1>,<ore:blockOsmiridium>,<enderutilities:enderpart:1>]]);

# Inactive Ender Core (Basic)
recipes.remove(<enderutilities:enderpart:10>);
recipes.addShaped(<enderutilities:enderpart:10>, [[<wrcbe:material>,<enderutilities:enderpart>,<wrcbe:material>],[<enderutilities:enderpart>,<quantumflux:craftingpiece:3>,<enderutilities:enderpart>],[<wrcbe:material>,<enderutilities:enderpart>,<wrcbe:material>]]);
<enderutilities:enderpart:15>.addTooltip(format.white("Can be automated via a Mechanical User on Entity mode on an End Crystal or Stabilized End Crystal."));
<enderutilities:enderpart:15>.addTooltip(format.white("Can be done in ") + format.italic(format.red("any")) + format.white(" Dimension, not just the End Dimension."));

# Inactive Ender Core (Enhanced)
recipes.remove(<enderutilities:enderpart:11>);
recipes.addShaped(<enderutilities:enderpart:11>, [[<wrcbe:material>,<enderutilities:enderpart:1>,<wrcbe:material>],[<enderutilities:enderpart:1>,<enderutilities:enderpart:10>,<enderutilities:enderpart:1>],[<wrcbe:material>,<enderutilities:enderpart:1>,<wrcbe:material>]]);
<enderutilities:enderpart:16>.addTooltip(format.white("Can be automated via a Mechanical User on Entity mode on an End Crystal or Stabilized End Crystal."));
<enderutilities:enderpart:16>.addTooltip(format.white("Can be done in ") + format.italic(format.red("any")) + format.white(" Dimension, not just the End Dimension."));

# Inactive Ender Core (Advanced)
recipes.remove(<enderutilities:enderpart:12>);
recipes.addShaped(<enderutilities:enderpart:12>, [[<wrcbe:material>,<enderutilities:enderpart:2>,<wrcbe:material>],[<enderutilities:enderpart:2>,<enderutilities:enderpart:11>,<enderutilities:enderpart:2>],[<wrcbe:material>,<enderutilities:enderpart:2>,<wrcbe:material>]]);
<enderutilities:enderpart:17>.addTooltip(format.white("Can be automated via a Mechanical User on Entity mode on an End Crystal or Stabilized End Crystal."));
<enderutilities:enderpart:17>.addTooltip(format.white("Can be done in ") + format.italic(format.red("any")) + format.white(" Dimension, not just the End Dimension."));

# Ender Capacitor (Basic)
recipes.remove(<enderutilities:endercapacitor>);
recipes.addShaped(<enderutilities:endercapacitor>, [[<enderutilities:enderpart>,<enderutilities:enderpart:15>,<enderutilities:enderpart>],[<enderutilities:enderpart>,<enderio:item_capacitor_melodic>,<enderutilities:enderpart>],[<enderutilities:enderpart>,<enderutilities:enderpart>,<enderutilities:enderpart>]]);

# Ender Capacitor (Enhanced)
recipes.remove(<enderutilities:endercapacitor:1>);
recipes.addShaped("enderutilites_capacitor_upgrade1", <enderutilities:endercapacitor:1>, [[<enderutilities:enderpart:1>,<enderutilities:enderpart:16>,<enderutilities:enderpart:1>],[<enderutilities:enderpart:1>,<enderutilities:endercapacitor>.marked("capacitor"),<enderutilities:enderpart:1>],[<enderutilities:enderpart:1>,<enderutilities:enderpart:1>,<enderutilities:enderpart:1>]],
function(out, ins, cInfo) {
	if(ins.capacitor.tag has "EnderChargeAmount") {
		return out.withTag(ins.capacitor.tag);
	} else {
		return out;
	}
}, null);

# Ender Capacitor (Advanced)
recipes.remove(<enderutilities:endercapacitor:2>);
recipes.addShaped("enderutilites_capacitor_upgrade2", <enderutilities:endercapacitor:2>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:17>,<enderutilities:enderpart:2>],[<enderutilities:enderpart:2>,<enderutilities:endercapacitor:1>.marked("capacitor"),<enderutilities:enderpart:2>],[<enderutilities:enderpart:2>,<enderutilities:enderpart:2>,<enderutilities:enderpart:2>]],
function(out, ins, cInfo) {
	if(ins.capacitor.tag has "EnderChargeAmount") {
		return out.withTag(ins.capacitor.tag);
	} else {
		return out;
	}
}, null);

# Ender Infused Stick
recipes.remove(<enderutilities:enderpart:20>);
recipes.addShapedMirrored(<enderutilities:enderpart:20>, [[null,null,<enderutilities:enderpart>],[null,<wrcbe:material>,null],[<enderutilities:enderpart>,null,null]]);

# Ender Bucket
recipes.remove(<enderutilities:enderbucket>);
recipes.addShaped("enderutilites_enderbucket", <enderutilities:enderbucket>, [[null,<enderutilities:enderpart:15>,null],[<enderutilities:enderpart>,<thermalexpansion:reservoir>.marked("reservoir"),<enderutilities:enderpart>],[null,<enderutilities:enderpart>,null]],
function(out,ins,cInfo) {
	if(ins.reservoir.tag has "Fluid") {
		return out.withTag({Fluid: ins.reservoir.tag.Fluid});
	} else {
		return out;
	}
}, null);

# Creative Breaking Module
recipes.remove(<enderutilities:enderpart:30>);
recipes.addShapedMirrored(<enderutilities:enderpart:30>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:2>,<minecraft:nether_star>],[<enderutilities:enderpart:2>,<botania:elementiumpick>,<enderutilities:enderpart:2>],[<minecraft:nether_star>,<enderutilities:enderpart:2>,<enderutilities:enderpart:2>]]);

# Ender Relic
recipes.remove(<enderutilities:enderpart:40>);

# Jailer Module
recipes.remove(<enderutilities:enderpart:45>);
recipes.addShaped(<enderutilities:enderpart:45>, [[<enderutilities:enderpart:1>,<enderio:block_dark_iron_bars>,<enderutilities:enderpart:1>],[<enderio:block_dark_iron_bars>,<enderio:item_soul_vial>,<enderio:block_dark_iron_bars>],[<enderutilities:enderpart:1>,<enderio:block_dark_iron_bars>,<enderutilities:enderpart:1>]]);

# Memory Card (misc)
recipes.remove(<enderutilities:enderpart:50>);
recipes.addShaped(<enderutilities:enderpart:50>, [[<appliedenergistics2:memory_card>,<appliedenergistics2:memory_card>,<appliedenergistics2:memory_card>],[<alchemistry:ingot:3>,<enderutilities:enderpart:1>,<alchemistry:ingot:3>],[<alchemistry:ingot:3>,<enderutilities:enderpart:1>,<alchemistry:ingot:3>]]);

# Memory Card (items) 6 B
recipes.remove(<enderutilities:enderpart:51>);
recipes.addShaped(<enderutilities:enderpart:51>, [[<enderutilities:enderpart:2>,<appliedenergistics2:memory_card>,<enderutilities:enderpart:2>],[<enderio:item_alloy_endergy_ingot:6>,<enderutilities:enderpart:50>,<enderio:item_alloy_endergy_ingot:6>],[<enderutilities:enderpart:2>,<enderio:item_alloy_endergy_ingot:6>,<enderutilities:enderpart:2>]]);

# Memory Card (items) 8 B
recipes.removeShapeless(<enderutilities:enderpart:52> * 4, [<enderutilities:enderpart:53>]);
recipes.addShapeless(<enderutilities:enderpart:52> * 2, [<enderutilities:enderpart:53>]);

# Memory Card (items) 10 B
recipes.remove(<enderutilities:enderpart:53>);
recipes.addShaped(<enderutilities:enderpart:53>, [[<enderutilities:enderpart:52>,<enderutilities:enderpart:52>],[<ore:slimeball>,<ore:slimeball>]]);
recipes.addShapeless(<enderutilities:enderpart:53> * 2, [<enderutilities:enderpart:54>]);

# Memory Card (items) 12 B
recipes.remove(<enderutilities:enderpart:54>);
recipes.addShaped(<enderutilities:enderpart:54>, [[<enderutilities:enderpart:53>,<enderutilities:enderpart:53>],[<ore:slimeball>,<ore:slimeball>]]);

# Ender Lasso
recipes.remove(<enderutilities:enderlasso>);
recipes.addShaped(<enderutilities:enderlasso>, [[<divinerpg:ghast_pumpkin>,<extrautils2:goldenlasso>,<divinerpg:ghast_pumpkin>],[<extrautils2:goldenlasso>,<enderutilities:enderpart:17>,<extrautils2:goldenlasso>],[<divinerpg:ghast_pumpkin>,<extrautils2:goldenlasso>,<divinerpg:ghast_pumpkin>]]);

# Barrel
recipes.remove(<enderutilities:barrel>);
recipes.addShaped(<enderutilities:barrel>, [[<ore:ingotOsmiridium>,<enderutilities:enderpart>,<ore:ingotOsmiridium>],[<ore:ingotOsmiridium>,<ore:drawerBasic>,<ore:ingotOsmiridium>],[<ore:ingotOsmiridium>,<enderutilities:enderpart>,<ore:ingotOsmiridium>]]);

# Barrel Label
recipes.remove(<enderutilities:enderpart:70>);
recipes.addShaped(<enderutilities:enderpart:70>, [[<enderutilities:enderpart:20>,<enderutilities:enderpart:20>,<enderutilities:enderpart:20>],[<enderutilities:enderpart:20>,<ore:ingotOsmiridium>,<enderutilities:enderpart:20>],[<enderutilities:enderpart:20>,<enderutilities:enderpart:20>,<enderutilities:enderpart:20>]]);

# Barrel Structural Upgrade
recipes.remove(<enderutilities:enderpart:71>);
recipes.addShaped(<enderutilities:enderpart:71>, [[<enderutilities:enderpart:20>,<ore:ingotOsmiridium>,<enderutilities:enderpart:20>],[<ore:ingotOsmiridium>,<enderutilities:enderpart:16>,<ore:ingotOsmiridium>],[<enderutilities:enderpart:20>,<ore:ingotOsmiridium>,<enderutilities:enderpart:20>]]);

# Barrel Capacity Upgrade
recipes.remove(<enderutilities:enderpart:72>);
recipes.addShaped(<enderutilities:enderpart:72>, [[null,<ore:ingotOsmiridium>,null],[<enderutilities:enderpart>,<ore:drawerBasic>,<enderutilities:enderpart>],[null,<ore:ingotOsmiridium>,null]]);

# Barrel Void Upgrade
recipes.remove(<enderutilities:enderpart:73>);
recipes.addShaped(<enderutilities:enderpart:73>, [[<enderutilities:enderpart>,<ore:ingotOsmiridium>,<enderutilities:enderpart>],[<ore:ingotOsmiridium>,<extrautils2:trashcan>,<ore:ingotOsmiridium>],[<enderutilities:enderpart>,<ore:ingotOsmiridium>,<enderutilities:enderpart>]]);

# Storage Key
recipes.remove(<enderutilities:enderpart:80>);
recipes.addShapedMirrored(<enderutilities:enderpart:80>, [[<enderutilities:enderpart:1>,<enderutilities:enderpart:20>],[<enderutilities:enderpart:1>,<enderutilities:enderpart:20>],[null,<storagedrawers:drawer_key>]]);

# Link Crystal (Location)
recipes.remove(<enderutilities:linkcrystal>);
recipes.addShaped(<enderutilities:linkcrystal>, [[null,<enderio:item_material:15>,null],[<enderio:item_material:15>,<enderutilities:enderpart:2>,<enderio:item_material:15>],[null,<enderio:item_material:15>,null]]);

# Link Crystal (Block)
recipes.remove(<enderutilities:linkcrystal:1>);
recipes.addShaped(<enderutilities:linkcrystal:1>, [[null,<enderio:item_material:14>,null],[<enderio:item_material:14>,<enderutilities:enderpart:2>,<enderio:item_material:14>],[null,<enderio:item_material:14>,null]]);

# Link Crystal (Portal)
recipes.remove(<enderutilities:linkcrystal:2>);
recipes.addShaped(<enderutilities:linkcrystal:2>, [[null,<enderio:item_material:18>,null],[<enderio:item_material:18>,<enderutilities:enderpart:2>,<enderio:item_material:18>],[null,<enderio:item_material:18>,null]]);

# NBT-clearing recipes for Link Crystals
recipes.addHiddenShapeless("ender_utils_clear_crystal_location", <enderutilities:linkcrystal>, [<enderutilities:linkcrystal>]);
recipes.addHiddenShapeless("ender_utils_clear_crystal_block", <enderutilities:linkcrystal:1>, [<enderutilities:linkcrystal:1>]);
recipes.addHiddenShapeless("ender_utils_clear_crystal_portal", <enderutilities:linkcrystal:2>, [<enderutilities:linkcrystal:2>]);

# Wand of the Lazy Builder (W.o.t.L.B.)
recipes.remove(<enderutilities:builderswand>);
recipes.addShapedMirrored(<enderutilities:builderswand>, [[null,null,<enderutilities:enderpart:17>],[null,<extrautils2:itembuilderswand>,null],[<enderutilities:enderpart:20>,null,null]]);

# Stair Wand
recipes.remove(<enderutilities:chairwand>);
recipes.addShapedMirrored(<enderutilities:chairwand>, [[null,null,<ore:stairWood>],[null,<enderutilities:enderpart:20>,null],[<enderutilities:enderpart:20>,null,null]]);

# Chair Wand
<enderutilities:chairwand>.addTooltip("1. Right Click on the Ground to add location to sit.");
<enderutilities:chairwand>.addTooltip("2. Place a Stair with Shift+Right Click");
<enderutilities:chairwand>.addTooltip("3. Right Click to sit in the Chair!");
<enderutilities:chairwand>.addTooltip("(4. Left Click with the Wand to remove sit location.)");

# Dolly
recipes.remove(<enderutilities:dolly>);
recipes.addShapedMirrored(<enderutilities:dolly>, [[null,null,<enderutilities:enderpart:2>],[null,<enderutilities:enderpart:2>,null],[<contenttweaker:compressed_obsidian2>,<enderutilities:enderpart:2>,null]]);

# Void Pickaxe
recipes.remove(<enderutilities:void_pickaxe>);
recipes.addShaped(<enderutilities:void_pickaxe>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:2>,<enderutilities:enderpart:2>],[<extrautils2:trashcan>,<enderio:item_dark_steel_pickaxe>,<extrautils2:trashcan>],[<extrautils2:trashcan>,<enderutilities:enderpart:20>,<extrautils2:trashcan>]]);

# Ender Bow
recipes.remove(<enderutilities:enderbow>);
recipes.addShapedMirrored(<enderutilities:enderbow>, [[null,<enderutilities:enderpart:1>,<enderutilities:enderpart:21>],[<enderutilities:enderpart:1>,<enderutilities:enderpart:16>,<enderutilities:enderlasso>],[null,<enderutilities:enderpart:1>,<enderutilities:enderpart:21>]]);

# Ender Arrow
recipes.remove(<enderutilities:enderarrow>);
recipes.addShapedMirrored(<enderutilities:enderarrow>, [[null,null,<enderutilities:enderpart>],[null,<roots:living_arrow>,null],[<enderutilities:enderpart:21>,null,null]]);

# Ender Bag
recipes.remove(<enderutilities:enderbag>);
recipes.addShaped(<enderutilities:enderbag>, [[<alchemistry:ingot:3>,<enderutilities:enderpart:17>,<alchemistry:ingot:3>],[<enderutilities:enderpart:2>,<actuallyadditions:block_misc:8>,<enderutilities:enderpart:2>],[<minecraft:ender_chest>,<simplybackpacks:epicbackpack>,<minecraft:ender_chest>]]);

# Ender Pearl (reusable)
recipes.remove(<enderutilities:enderpearlreusable>);
recipes.addShaped(<enderutilities:enderpearlreusable>, [[<thermalfoundation:storage_alloy:7>,<enderutilities:enderpart:17>,<thermalfoundation:storage_alloy:7>],[<enderutilities:enderpart:17>,<enderio:item_travel_staff>,<enderutilities:enderpart:17>],[<thermalfoundation:storage_alloy:7>,<actuallyadditions:block_misc:8>,<thermalfoundation:storage_alloy:7>]]);

# Elite Ender Pearl (reusable)
recipes.remove(<enderutilities:enderpearlreusable:1>);
<enderutilities:enderpearlreusable:1>.addTooltip(format.darkRed("Item disabled, because it's very buggy. Can get you stuck inside blocks."));

# Ender Sword
recipes.remove(<enderutilities:endersword>);
recipes.addShaped(<enderutilities:endersword>, [[<enderutilities:enderpart:2>],[<enderutilities:enderpart:2>],[<enderutilities:enderlasso>]]);

# Ender Pickaxe
recipes.remove(<enderutilities:endertool>);
recipes.addShaped(<enderutilities:endertool>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:2>,<enderutilities:enderpart:2>],[null,<enderutilities:enderpart:20>,null],[null,<enderutilities:enderlasso>,null]]);

# Ender Axe
recipes.remove(<enderutilities:endertool:1>);
recipes.addShapedMirrored(<enderutilities:endertool:1>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:2>],[<enderutilities:enderpart:2>,<enderutilities:enderpart:20>],[null,<enderutilities:enderlasso>]]);

# Ender Shovel
recipes.remove(<enderutilities:endertool:2>);
recipes.addShaped(<enderutilities:endertool:2>, [[<enderutilities:enderpart:2>],[<enderutilities:enderpart:20>],[<enderutilities:enderlasso>]]);

# Ender Hoe
recipes.remove(<enderutilities:endertool:3>);
recipes.addShapedMirrored(<enderutilities:endertool:3>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:2>],[null,<enderutilities:enderpart:20>],[null,<enderutilities:enderlasso>]]);

# Handy Bag
recipes.remove(<enderutilities:handybag>);
recipes.addShaped(<enderutilities:handybag>, [[<contenttweaker:industrial_leather>,<enderstorage:ender_pouch>,<contenttweaker:industrial_leather>],[<enderutilities:enderpart:2>,<actuallyadditions:block_misc:8>,<enderutilities:enderpart:2>],[<contenttweaker:industrial_leather>,<enderstorage:ender_pouch>,<contenttweaker:industrial_leather>]]);

# Handy Bag (Large)
recipes.remove(<enderutilities:handybag:1>);
recipes.addShaped(<enderutilities:handybag:1>, [[<contenttweaker:magical_leather>,<enderstorage:ender_pouch>,<contenttweaker:magical_leather>],[<contenttweaker:infused_magical_core>,<extendedcrafting:frame>,<contenttweaker:infused_magical_core>],[<contenttweaker:magical_leather>,<enderstorage:ender_pouch>,<contenttweaker:magical_leather>]]);

# Inventory Swapper
recipes.remove(<enderutilities:inventoryswapper>);
recipes.addShaped(<enderutilities:inventoryswapper>, [[<enderutilities:enderpart:21>,<enderutilities:enderpart:2>,<enderutilities:enderpart:21>],[<enderio:item_alloy_endergy_ingot:4>,<enderstorage:ender_pouch>,<enderio:item_alloy_endergy_ingot:4>],[<minecraft:sticky_piston>,<enderutilities:enderpart:2>,<minecraft:sticky_piston>]]);

# Living Matter Manipulator
recipes.remove(<enderutilities:livingmanipulator>);
recipes.addShapedMirrored(<enderutilities:livingmanipulator>, [[<enderutilities:enderpart:17>,<enderio:item_soul_vial>,<enderio:item_soul_vial>],[null,<enderutilities:enderpart:2>,<enderutilities:enderpart:2>],[null,null,<enderutilities:enderpart:2>]]);

# Mob Harness
recipes.remove(<enderutilities:mobharness>);
recipes.addShaped(<enderutilities:mobharness>, [[<contenttweaker:industrial_leather>,<enderutilities:enderpart:21>,<contenttweaker:industrial_leather>],[<contenttweaker:industrial_leather>,<enderutilities:enderpart:15>,<contenttweaker:industrial_leather>],[<contenttweaker:industrial_leather>,<enderutilities:enderpart:21>,<contenttweaker:industrial_leather>]]);

# Nullifier
recipes.remove(<enderutilities:nullifier>);
recipes.addShaped(<enderutilities:nullifier>, [[<danknull:dank_null_panel_1>,<extrautils2:trashcan>,<danknull:dank_null_panel_1>],[<enderutilities:enderpart>,<danknull:dank_null_0>,<enderutilities:enderpart>],[<danknull:dank_null_panel_1>,<extrautils2:trashcan>,<danknull:dank_null_panel_1>]]);

# Item Pickup Manager
recipes.remove(<enderutilities:pickupmanager>);
recipes.addShaped(<enderutilities:pickupmanager>, [[<ore:ingotOsmiridium>,<enderutilities:enderpart:2>,<ore:ingotOsmiridium>],[<enderutilities:enderpart:16>,<enderstorage:ender_pouch>,<enderutilities:enderpart:16>],[<ore:ingotOsmiridium>,<enderutilities:enderpart:2>,<ore:ingotOsmiridium>]]);

# Quick Stacker
recipes.remove(<enderutilities:quickstacker>);
recipes.addShaped(<enderutilities:quickstacker>, [[<enderio:item_alloy_ingot:3>,<enderutilities:enderpart:2>,<enderio:item_alloy_ingot:3>],[<enderutilities:enderpart:16>,<enderstorage:ender_pouch>,<enderutilities:enderpart:16>],[<enderio:item_alloy_ingot:3>,<enderutilities:enderpart:2>,<enderio:item_alloy_ingot:3>]]);

# Portal Scaler
recipes.remove(<enderutilities:portalscaler>);
<enderutilities:portalscaler>.addTooltip(format.darkRed("Item disabled. Can be used to quick travel to the world border, or in Multiplayer to mess up others' Nether Portals."));

# Syringe (empty)
recipes.remove(<enderutilities:syringe>);
<enderutilities:syringe>.addTooltip(format.darkRed("Item disabled. Items originally crafted from this are deemed too OP."));

# Paralyzer Syringe
recipes.remove(<enderutilities:syringe:1>);
<enderutilities:syringe:1>.addTooltip(format.darkRed("Item disabled. Makes fighting against various mobs trivial."));

# Stimulant Syringe
recipes.remove(<enderutilities:syringe:2>);
<enderutilities:syringe:2>.addTooltip(format.darkRed("Item disabled, since the Paralyzer Syringe is also disabled."));

# Passifier Syringe
recipes.remove(<enderutilities:syringe:3>);
<enderutilities:syringe:3>.addTooltip(format.darkRed("Item disabled. Makes fighting against various mobs trivial."));

# Adjustable Storage Unit
recipes.remove(<enderutilities:asu>);
recipes.addShaped(<enderutilities:asu>, [[<enderutilities:enderpart:1>,<quantumflux:craftingpiece:5>,<enderutilities:enderpart:1>],[<enderutilities:enderpart:11>,<ironchest:iron_chest:6>,<enderutilities:enderpart:11>],[<enderutilities:enderpart:1>,<quantumflux:craftingpiece:5>,<enderutilities:enderpart:1>]]);

# Drawbridge
recipes.remove(<enderutilities:draw_bridge>);
recipes.addShaped(<enderutilities:draw_bridge>, [[<enderutilities:enderpart:2>,<minecraft:sticky_piston>,<enderutilities:enderpart:2>],[<enderutilities:enderpart:2>,<enderutilities:enderpart:12>,<enderutilities:enderpart:2>],[<enderutilities:enderpart:2>,<minecraft:sticky_piston>,<enderutilities:enderpart:2>]]);

# Advanced Drawbridge
recipes.remove(<enderutilities:draw_bridge:1>);
recipes.addShaped(<enderutilities:draw_bridge:1>, [[<enderutilities:enderpart:2>,<minecraft:sticky_piston>,<enderutilities:enderpart:2>],[<enderutilities:enderpart:2>,<enderutilities:draw_bridge>,<enderutilities:enderpart:2>],[<enderutilities:enderpart:2>,<minecraft:sticky_piston>,<enderutilities:enderpart:2>]]);

# Ender Elevator
recipes.remove(<enderutilities:ender_elevator>);
recipes.addShaped(<enderutilities:ender_elevator>, [[<enderutilities:enderpart:1>,<openblocks:elevator:*>,<enderutilities:enderpart:1>],[<enderutilities:enderpart:11>,<enderutilities:enderlasso>,<enderutilities:enderpart:11>],[<enderutilities:enderpart:1>,<openblocks:elevator:*>,<enderutilities:enderpart:1>]]);

# Inserter
recipes.remove(<enderutilities:inserter>);
recipes.addShaped(<enderutilities:inserter>, [[<enderutilities:enderpart>,<enderutilities:enderpart>,<enderutilities:enderpart>],[<enderio:item_item_conduit>,<enderio:item_item_conduit>,<enderio:item_item_conduit>],[<enderutilities:enderpart>,<enderutilities:enderpart>,<enderutilities:enderpart>]]);

# Inserter (Filtered)
recipes.remove(<enderutilities:inserter:1>);
recipes.addShaped(<enderutilities:inserter:1> * 3, [[<enderutilities:enderpart:1>,<enderutilities:enderpart:1>,<enderutilities:enderpart:1>],[<enderutilities:inserter>,<enderutilities:inserter>,<enderutilities:inserter>],[<enderutilities:enderpart:1>,<enderutilities:enderpart:1>,<enderutilities:enderpart:1>]]);

# Cracked Floor
recipes.remove(<enderutilities:floor:1>);
recipes.addShaped(<enderutilities:floor:1>, [[<enderutilities:floor>,<enderutilities:floor>,<enderutilities:floor>],[<enderutilities:enderpart:20>,<contenttweaker:mobgrindium_ingot>,<enderutilities:enderpart:20>],[<enderutilities:floor>,<enderutilities:floor>,<enderutilities:floor>]]);

# Energy Bridge Resonator
recipes.remove(<enderutilities:energy_bridge>);
recipes.addShaped(<enderutilities:energy_bridge>, [[<enderutilities:enderpart:2>,<enderio:block_cap_bank:1>,<enderutilities:enderpart:2>],[<enderio:block_cap_bank:1>,<enderutilities:enderpart:16>,<enderio:block_cap_bank:1>],[<enderutilities:enderpart:2>,<enderio:block_cap_bank:1>,<enderutilities:enderpart:2>]]);

# Energy Bridge Receiver
recipes.remove(<enderutilities:energy_bridge:1>);
recipes.addShaped(<enderutilities:energy_bridge:1>, [[<enderutilities:enderpart:2>,<appliedenergistics2:material:41>,<enderutilities:enderpart:2>],[<enderio:block_cap_bank:3>,<enderutilities:enderpart:17>,<enderio:block_cap_bank:3>],[<enderutilities:enderpart:2>,<appliedenergistics2:material:41>,<enderutilities:enderpart:2>]]);

# Energy Bridge Transmitter
recipes.remove(<enderutilities:energy_bridge:2>);
recipes.addShaped(<enderutilities:energy_bridge:2>, [[<enderutilities:enderpart:2>,<enderio:item_material:65>,<enderutilities:enderpart:2>],[<enderio:block_cap_bank:3>,<enderutilities:enderpart:17>,<enderio:block_cap_bank:3>],[<enderutilities:enderpart:2>,<enderio:item_material:65>,<enderutilities:enderpart:2>]]);

# Advanced Quick Stacker
recipes.remove(<enderutilities:machine_1:3>);
recipes.addShaped(<enderutilities:machine_1:3>, [[<enderutilities:enderpart:2>,<quantumflux:craftingpiece:5>,<enderutilities:enderpart:2>],[<quantumflux:craftingpiece:5>,<enderutilities:quickstacker>,<quantumflux:craftingpiece:5>],[<enderutilities:enderpart:2>,<actuallyadditions:block_misc:8>,<enderutilities:enderpart:2>]]);

# Molecular Exciter
recipes.remove(<enderutilities:molecular_exciter>);
recipes.addShaped(<enderutilities:molecular_exciter>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:17>,<enderutilities:enderpart:2>],[<actuallyadditions:block_misc:8>,<actuallyadditions:block_atomic_reconstructor>,<actuallyadditions:block_misc:8>],[<enderutilities:enderpart:2>,<enderutilities:enderpart:17>,<enderutilities:enderpart:2>]]);

# Massive Storage Unit
recipes.remove(<enderutilities:msu>);
recipes.addShaped("enderutilities_msu", <enderutilities:msu>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:12>,<enderutilities:enderpart:2>],[<enderutilities:enderpart:12>,<industrialforegoing:black_hole_unit>.marked("black_hole_unit"),<enderutilities:enderpart:12>],[<enderutilities:enderpart:2>,<enderutilities:enderpart:12>,<enderutilities:enderpart:2>]],
function(out,ins,cInfo) {
	if(ins.black_hole_unit.tag has "itemstack") {
		var item_nbt = {} as IData;
		if(ins.black_hole_unit.tag has "stack_nbt") {
			item_nbt = {tag: ins.black_hole_unit.tag.stack_nbt};
		}
		return out.withTag({Items: [{Slot: 0 as byte, id: ins.black_hole_unit.tag.itemstack, Count: ins.black_hole_unit.tag.amount as byte} + item_nbt + {Damage: ins.black_hole_unit.tag.meta as short}]});
	} else {
		return out;
}}, null);

# Phasing Block
recipes.remove(<enderutilities:phasing>);
recipes.addShaped(<enderutilities:phasing>, [[<minecraft:stonebrick>,<extrautils2:ineffableglass>,<minecraft:stonebrick>],[<extrautils2:ineffableglass>,<enderutilities:enderpart:10>,<extrautils2:ineffableglass>],[<minecraft:stonebrick>,<extrautils2:ineffableglass>,<minecraft:stonebrick>]]);
recipes.addShapeless(<enderutilities:phasing>, [<enderutilities:phasing:1>,<minecraft:redstone_torch>]);

# Phasing Block (inverted)
recipes.remove(<enderutilities:phasing:1>);
recipes.addShapeless(<enderutilities:phasing:1>, [<enderutilities:phasing>,<minecraft:redstone_torch>]);

# Small Memory Chest
recipes.remove(<enderutilities:storage_0>);
recipes.addShaped(<enderutilities:storage_0>, [[<enderutilities:enderpart>,<quantumflux:craftingpiece:5>,<enderutilities:enderpart>],[<quantumflux:craftingpiece:5>,<ore:chestWood>,<quantumflux:craftingpiece:5>],[<enderutilities:enderpart>,<quantumflux:craftingpiece:5>,<enderutilities:enderpart>]]);

# Memory Chest
recipes.remove(<enderutilities:storage_0:1>);
recipes.addShaped(<enderutilities:storage_0:1>, [[<enderutilities:enderpart:1>,<quantumflux:craftingpiece:5>,<enderutilities:enderpart:1>],[<quantumflux:craftingpiece:5>,<ironchest:iron_chest>,<quantumflux:craftingpiece:5>],[<enderutilities:enderpart:1>,<quantumflux:craftingpiece:5>,<enderutilities:enderpart:1>]]);

# Large Memory Chest
recipes.remove(<enderutilities:storage_0:2>);
recipes.addShaped(<enderutilities:storage_0:2>, [[<enderutilities:enderpart:2>,<quantumflux:craftingpiece:5>,<enderutilities:enderpart:2>],[<quantumflux:craftingpiece:5>,<ironchest:iron_chest:2>,<quantumflux:craftingpiece:5>],[<enderutilities:enderpart:2>,<quantumflux:craftingpiece:5>,<enderutilities:enderpart:2>]]);

# Handy Chest (Small)
recipes.remove(<enderutilities:storage_0:3>);
recipes.addShaped(<enderutilities:storage_0:3>, [[<enderutilities:enderpart>,<enderutilities:enderpart:10>,<enderutilities:enderpart>],[<enderutilities:enderpart:10>,<ore:chestWood>,<enderutilities:enderpart:10>],[<enderutilities:enderpart>,<enderutilities:enderpart:10>,<enderutilities:enderpart>]]);

# Handy Chest (Normal)
recipes.remove(<enderutilities:storage_0:4>);
recipes.addShaped(<enderutilities:storage_0:4>, [[<enderutilities:enderpart:1>,<enderutilities:enderpart:11>,<enderutilities:enderpart:1>],[<enderutilities:enderpart:11>,<ironchest:iron_chest>,<enderutilities:enderpart:11>],[<enderutilities:enderpart:1>,<enderutilities:enderpart:11>,<enderutilities:enderpart:1>]]);

# Handy Chest (Large)
recipes.remove(<enderutilities:storage_0:5>);
recipes.addShaped(<enderutilities:storage_0:5>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:12>,<enderutilities:enderpart:2>],[<enderutilities:enderpart:12>,<ironchest:iron_chest:2>,<enderutilities:enderpart:12>],[<enderutilities:enderpart:2>,<enderutilities:enderpart:12>,<enderutilities:enderpart:2>]]);

# Handy Chest (Extended)
recipes.remove(<enderutilities:storage_0:6>);
recipes.addShaped(<enderutilities:storage_0:6>, [[<enderutilities:enderpart:2>,<enderutilities:enderpart:17>,<enderutilities:enderpart:2>],[<enderutilities:enderpart:17>,<actuallyadditions:block_giant_chest>,<enderutilities:enderpart:17>],[<enderutilities:enderpart:2>,<enderutilities:enderpart:17>,<enderutilities:enderpart:2>]]);

# Junk Storage Unit
recipes.remove(<enderutilities:storage_0:7>);
recipes.addShaped(<enderutilities:storage_0:7>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>],[<contenttweaker:methodology_processor>,<enderutilities:storage_0:5>,<contenttweaker:methodology_processor>],[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>]]);

# Portal Frame
recipes.remove(<enderutilities:frame>);
recipes.addShaped(<enderutilities:frame> * 3, [[<botania:storage>,<quantumflux:telepad>,<botania:storage>],[<botania:storage>,<contenttweaker:rune_of_deception>,<botania:storage>],[<botania:storage>,<thaumicaugmentation:material:3>,<botania:storage>]]);

# Portal Control Panel
recipes.remove(<enderutilities:portal_panel>);
recipes.addShaped(<enderutilities:portal_panel>, [[<enderutilities:frame>,<enderutilities:enderpart:17>,<enderutilities:frame>],[<enderutilities:frame>,<thaumicaugmentation:material:3>,<enderutilities:frame>],[<enderutilities:frame>,<enderutilities:enderpart:17>,<enderutilities:frame>]]);

print("ENDING EnderUtilities.zs");
