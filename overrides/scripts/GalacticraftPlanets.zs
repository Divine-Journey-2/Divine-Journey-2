# Author: Atricos

import moretweaker.galacticraft.CircuitFabricator;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("STARTING GalacticraftPlanets.zs");

# Fragmented Carbon
recipes.remove(<galacticraftplanets:carbon_fragments>);
recipes.addShapeless(<galacticraftplanets:carbon_fragments> * 8, [<minecraft:coal:1>,<minecraft:gunpowder>]);

# Solar Array Wafer
CircuitFabricator.remove(<galacticraftplanets:basic_item_venus:6> * 3);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftplanets:basic_item_venus:6> * 16, <quantumflux:craftingpiece:4>, <projectred-core:resource_item:341>, <projectred-core:resource_item:341>, <contenttweaker:rainbow_tablet>, <contenttweaker:rune_of_greed>);

# NASA Workbench Schematic (Automatic Cargo Rocket)
recipes.addShapeless(<galacticraftplanets:schematic:1>, [<galacticraftplanets:schematic>]);
<galacticraftplanets:schematic:1>.addTooltip(format.white("Can be found in underground ") + format.red("Mars") + format.white(" Dungeons."));
<galacticraftplanets:schematic:1>.addTooltip(format.white("Can also be converted from the ") + format.blue("Tier 3 Rocket Schematic") + format.white("."));

# NASA Workbench Schematic (Tier 3 Rocket)
recipes.addShapeless(<galacticraftplanets:schematic>, [<galacticraftplanets:schematic:1>]);
<galacticraftplanets:schematic>.addTooltip(format.white("Can be found in underground ") + format.red("Mars") + format.white(" Dungeons."));
<galacticraftplanets:schematic>.addTooltip(format.white("Can also be converted from the ") + format.blue("Automatic Cargo Rocket Schematic") + format.white("."));

# NASA Workbench Schematic (Astro Miner)
<galacticraftplanets:schematic:2>.addTooltip(format.white("Can be found in underground ") + format.gold("Venus") + format.white(" Dungeons."));

# Geothermal Generator
recipes.remove(<galacticraftplanets:geothermal_generator>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftplanets:geothermal_generator>,
[[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:atmospheric_valve>,<bloodmagic:component:1>,<contenttweaker:cheesy_wafer>,<bloodmagic:component:1>,<galacticraftplanets:atmospheric_valve>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<bloodmagic:component:1>,<contenttweaker:cheesy_wafer>,<immersiveengineering:metal_device1:3>,<contenttweaker:cheesy_wafer>,<bloodmagic:component:1>,<galacticraftcore:heavy_plating>],
[<quantumflux:craftingpiece:4>,<contenttweaker:cheesy_wafer>,<immersiveengineering:metal_device1:3>,<galacticraftcore:machine>,<immersiveengineering:metal_device1:3>,<contenttweaker:cheesy_wafer>,<quantumflux:craftingpiece:4>],
[<galacticraftcore:heavy_plating>,<bloodmagic:component:1>,<contenttweaker:cheesy_wafer>,<immersiveengineering:metal_device1:3>,<contenttweaker:cheesy_wafer>,<bloodmagic:component:1>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftplanets:atmospheric_valve>,<bloodmagic:component:1>,<contenttweaker:cheesy_wafer>,<bloodmagic:component:1>,<galacticraftplanets:atmospheric_valve>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Tier 2 Dungeon Key
<galacticraftplanets:key>.addTooltip(format.white("Dropped by the ") + format.green("Evolved Creeper Boss"));
<galacticraftplanets:key>.addTooltip(format.white("in the underground ") + format.red("Mars Dungeon") + format.white("."));

# Tier 3 Dungeon Key
<galacticraftplanets:key_t3>.addTooltip(format.white("Dropped by the ") + format.red("Spider Queen Boss"));
<galacticraftplanets:key_t3>.addTooltip(format.white("in the underground ") + format.gold("Venus Dungeon") + format.white("."));

# Compressed Desh
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftplanets:item_basic_mars:5>);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftplanets:item_basic_mars:5>, <galacticraftplanets:item_basic_mars:2>,<galacticraftplanets:item_basic_mars:2>,<galacticraftplanets:item_basic_mars:2>,<contenttweaker:tough_galactic_plating>,<contenttweaker:galactic_ingot>,<contenttweaker:tough_galactic_plating>,<galacticraftplanets:item_basic_mars:2>,<galacticraftplanets:item_basic_mars:2>,<galacticraftplanets:item_basic_mars:2>);

# Fluid Manipulator
recipes.remove(<galacticraftplanets:item_basic_mars:6>);
recipes.addShaped(<galacticraftplanets:item_basic_mars:6>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftcore:item_basic_moon:2>,<galacticraftcore:oxygen_concentrator>,<galacticraftcore:item_basic_moon:2>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>]]);

# Water Electrolyzer
recipes.remove(<galacticraftplanets:mars_machine_t2:8>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftplanets:mars_machine_t2:8>,
[[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<mekanism:electrolyticcore>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:oxygen_tank_heavy_full:*>,<mekanism:electrolyticcore>,<mekanism:machineblock2:4>,<mekanism:electrolyticcore>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:item_basic_mars:3>],
[<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:6>,<mekanism:machineblock2:4>,<contenttweaker:galactic_machine_frame>,<mekanism:machineblock2:4>,<galacticraftplanets:item_basic_mars:6>,<quantumflux:craftingpiece:4>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:oxygen_tank_heavy_full:*>,<mekanism:electrolyticcore>,<mekanism:machineblock2:4>,<mekanism:electrolyticcore>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<mekanism:electrolyticcore>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Methane Synthetizer
recipes.remove(<galacticraftplanets:mars_machine_t2:4>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftplanets:mars_machine_t2:4>,
[[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:item_basic_mars:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:machine_tiered:4>,<mekanism:machineblock2:2>,<galacticraftcore:machine_tiered:4>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:item_basic_mars:3>],
[<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:6>,<mekanism:machineblock2:2>,<galacticraftcore:oxygen_compressor>,<mekanism:machineblock2:2>,<galacticraftplanets:item_basic_mars:6>,<quantumflux:craftingpiece:4>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:machine_tiered:4>,<mekanism:machineblock2:2>,<galacticraftcore:machine_tiered:4>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:item_basic_mars:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Gas Liquifier
recipes.remove(<galacticraftplanets:mars_machine_t2>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftplanets:mars_machine_t2>,
[[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:6>,<galacticraftcore:air_vent>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:air_vent>,<galacticraftcore:machine_tiered:4>,<mekanism:machineblock2>,<galacticraftcore:machine_tiered:4>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>],
[<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:6>,<mekanism:machineblock2>,<galacticraftcore:oxygen_compressor:4>,<mekanism:machineblock2>,<galacticraftplanets:item_basic_mars:6>,<quantumflux:craftingpiece:4>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:air_vent>,<galacticraftcore:machine_tiered:4>,<mekanism:machineblock2>,<galacticraftcore:machine_tiered:4>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:6>,<galacticraftcore:air_vent>,<galacticraftcore:oxygen_tank_heavy_full:*>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Atmospheric Valve
recipes.remove(<galacticraftplanets:atmospheric_valve>);
recipes.addShaped(<galacticraftplanets:atmospheric_valve>, [[<galacticraftcore:basic_item:12>,<galacticraftplanets:item_basic_mars:2>,<galacticraftcore:basic_item:12>],[<galacticraftplanets:item_basic_mars:2>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:2>],[null,<galacticraftplanets:item_basic_mars:2>,null]]);

# Beam Core
recipes.remove(<galacticraftplanets:item_basic_asteroids:8>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<galacticraftplanets:item_basic_asteroids:8>, 2000000, 100000, <enderutilities:enderpart:17>, [<contenttweaker:reduction_core>,<contenttweaker:condensed_vis_crystal_permutatio>,<contenttweaker:offensive_core>,<contenttweaker:condensed_vis_crystal_mortuus>]);

# Short Range Telepad
recipes.remove(<galacticraftplanets:telepad_short>);
recipes.addShaped(<galacticraftplanets:telepad_short>, [[<galacticraftplanets:item_basic_asteroids:6>,<galacticraftplanets:item_basic_asteroids:6>,<galacticraftplanets:item_basic_asteroids:6>],[null,<galacticraftplanets:item_basic_asteroids:8>,null],[<enderio:block_tele_pad>,<contenttweaker:galactic_machine_frame>,<enderio:block_tele_pad>]]);

# Launch Controller
recipes.remove(<galacticraftplanets:mars_machine:8>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftplanets:mars_machine:8>,
[[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<appliedenergistics2:controller>,<galacticraftcore:basic_item:19>,<galacticraftcore:basic_item:19>,<galacticraftcore:basic_item:19>,<appliedenergistics2:controller>,<galacticraftplanets:item_basic_mars:3>],
[<quantumflux:craftingpiece:4>,<appliedenergistics2:controller>,<galacticraftcore:basic_item:13>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:basic_item:13>,<appliedenergistics2:controller>,<quantumflux:craftingpiece:4>],
[<galacticraftplanets:item_basic_mars:3>,<appliedenergistics2:controller>,<galacticraftcore:landing_pad>,<galacticraftcore:landing_pad>,<galacticraftcore:landing_pad>,<appliedenergistics2:controller>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Astro Miner Base
recipes.remove(<galacticraftplanets:miner_base>);
recipes.addShaped(<galacticraftplanets:miner_base> * 4, [[<galacticraftplanets:item_basic_mars:3>,<actuallyadditions:block_giant_chest_large>,<galacticraftplanets:item_basic_mars:3>],[<galacticraftplanets:item_basic_asteroids:8>,<contenttweaker:galactic_machine_frame>,<galacticraftplanets:item_basic_asteroids:8>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:machine_tiered>,<galacticraftplanets:item_basic_mars:3>]]);

# Orion Drive
recipes.remove(<galacticraftplanets:orion_drive>);
recipes.addShaped(<galacticraftplanets:orion_drive>, [[<galacticraftplanets:item_basic_asteroids:6>,<galacticraftcore:solar:4>,<galacticraftplanets:item_basic_asteroids:6>],[<galacticraftplanets:item_basic_asteroids:8>,<contenttweaker:galactic_machine_frame>,<galacticraftplanets:item_basic_asteroids:8>],[<galacticraftplanets:item_basic_asteroids:6>,<galacticraftcore:machine_tiered>,<galacticraftplanets:item_basic_asteroids:6>]]);

# Thermal Cloth
recipes.remove(<galacticraftplanets:item_basic_asteroids:7>);
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:7>, [[<abyssalcraft:dreadcloth>,null,<abyssalcraft:dreadcloth>],[<galacticraftcore:basic_item:10>,<thaumcraft:fabric>,<galacticraftcore:basic_item:10>],[<abyssalcraft:dreadcloth>,null,<abyssalcraft:dreadcloth>]]);

function addGalacticraftPlanetsArmorRecipes(old_helmet as IItemStack, old_chestplate as IItemStack, old_leggings as IItemStack, old_booots as IItemStack, new_helmet as IItemStack, new_chestplate as IItemStack, new_leggings as IItemStack, new_booots as IItemStack,  new_material as IIngredient) {

	# Helmet
	recipes.remove(new_helmet);
	recipes.addShaped(new_helmet, [[new_material,new_material,new_material],[new_material,old_helmet,new_material]]);

	# Chestplate
	recipes.remove(new_chestplate);
	recipes.addShaped(new_chestplate, [[new_material,old_chestplate,new_material],[new_material,new_material,new_material],[new_material,new_material,new_material]]);

	# Leggings
	recipes.remove(new_leggings);
	recipes.addShaped(new_leggings, [[new_material,new_material,new_material],[new_material,old_leggings,new_material],[new_material,null,new_material]]);

	# Boots
	recipes.remove(new_booots);
	recipes.addShaped(new_booots, [[new_material,null,new_material],[new_material,old_booots,new_material]]);

}

# Thermal Padding Armor
addGalacticraftPlanetsArmorRecipes(<divinerpg:netherite_helmet>,<divinerpg:netherite_chestplate>,<divinerpg:netherite_leggings>,<divinerpg:netherite_boots>,<galacticraftplanets:thermal_padding>,<galacticraftplanets:thermal_padding:1>,<galacticraftplanets:thermal_padding:2>,<galacticraftplanets:thermal_padding:3>,<galacticraftplanets:item_basic_asteroids:7>);

# Desh Armor
addGalacticraftPlanetsArmorRecipes(<galacticraftcore:steel_helmet>,<galacticraftcore:steel_chestplate>,<galacticraftcore:steel_leggings>,<galacticraftcore:steel_boots>,<galacticraftplanets:desh_helmet>,<galacticraftplanets:desh_chestplate>,<galacticraftplanets:desh_leggings>,<galacticraftplanets:desh_boots>,<galacticraftplanets:item_basic_mars:5>);

# Isothermal Fabric
recipes.remove(<galacticraftplanets:basic_item_venus:3>);
recipes.addShaped(<galacticraftplanets:basic_item_venus:3> * 4, [[null,<galacticraftplanets:item_basic_asteroids:7>,null],[<galacticraftplanets:item_basic_asteroids:7>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:7>],[null,<galacticraftplanets:item_basic_asteroids:7>,null]]);

# Isothermal Armor
addGalacticraftPlanetsArmorRecipes(<galacticraftplanets:thermal_padding>,<galacticraftplanets:thermal_padding:1>,<galacticraftplanets:thermal_padding:2>,<galacticraftplanets:thermal_padding:3>,<galacticraftplanets:thermal_padding_t2>,<galacticraftplanets:thermal_padding_t2:1>,<galacticraftplanets:thermal_padding_t2:2>,<galacticraftplanets:thermal_padding_t2:3>,<galacticraftplanets:basic_item_venus:3>);

# Compressed Titanium
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftplanets:item_basic_asteroids:6>);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftplanets:item_basic_asteroids:6>, <galacticraftplanets:item_basic_asteroids>,<galacticraftplanets:item_basic_asteroids>,<galacticraftplanets:item_basic_asteroids>,<contenttweaker:tough_galactic_plating>,<contenttweaker:galactic_ingot>,<contenttweaker:tough_galactic_plating>,<galacticraftplanets:item_basic_asteroids>,<galacticraftplanets:item_basic_asteroids>,<galacticraftplanets:item_basic_asteroids>);

# Titanium Armor
addGalacticraftPlanetsArmorRecipes(<galacticraftplanets:desh_helmet>,<galacticraftplanets:desh_chestplate>,<galacticraftplanets:desh_leggings>,<galacticraftplanets:desh_boots>,<galacticraftplanets:titanium_helmet>,<galacticraftplanets:titanium_chestplate>,<galacticraftplanets:titanium_leggings>,<galacticraftplanets:titanium_boots>,<galacticraftplanets:item_basic_asteroids:6>);

function addGalacticraftPlanetsToolRecipes(old_sword as IItemStack, old_pickaxe as IItemStack, old_shovel as IItemStack, old_axe as IItemStack, old_hoe as IItemStack, new_sword as IItemStack, new_pickaxe as IItemStack, new_shovel as IItemStack, new_axe as IItemStack, new_hoe as IItemStack, new_material as IIngredient, new_stick as IIngredient) {

	# Sword
	recipes.remove(new_sword);
	recipes.addShaped(new_sword, [[new_material],[new_material],[old_sword]]);

	# Pickaxe
	recipes.remove(new_pickaxe);
	recipes.addShaped(new_pickaxe, [[new_material,new_material,new_material],[null,old_pickaxe,null],[null,new_stick,null]]);

	# Shovel
	recipes.remove(new_shovel);
	recipes.addShaped(new_shovel, [[new_material],[old_shovel],[new_stick]]);

	# Axe
	recipes.remove(new_axe);
	recipes.addShapedMirrored(new_axe, [[new_material,new_material],[new_material,old_axe],[null,new_stick]]);

	# Hoe
	recipes.remove(new_hoe);
	recipes.addShapedMirrored(new_hoe, [[new_material,new_material],[null,old_hoe],[null,new_stick]]);

}

# Desh Tools
addGalacticraftPlanetsToolRecipes(<galacticraftcore:steel_sword>,<galacticraftcore:steel_pickaxe>,<galacticraftcore:steel_shovel>,<galacticraftcore:steel_axe>,<galacticraftcore:steel_hoe>,<galacticraftplanets:desh_sword>,<galacticraftplanets:desh_pick>,<galacticraftplanets:desh_spade>,<galacticraftplanets:desh_axe>,<galacticraftplanets:desh_hoe>,<galacticraftplanets:item_basic_mars:5>,<galacticraftplanets:item_basic_mars:1>);

# Titanium Tools
addGalacticraftPlanetsToolRecipes(<galacticraftplanets:desh_sword>,<galacticraftplanets:desh_pick>,<galacticraftplanets:desh_spade>,<galacticraftplanets:desh_axe>,<galacticraftplanets:desh_hoe>,<galacticraftplanets:titanium_sword>,<galacticraftplanets:titanium_pickaxe>,<galacticraftplanets:titanium_shovel>,<galacticraftplanets:titanium_axe>,<galacticraftplanets:titanium_hoe>,<galacticraftplanets:item_basic_asteroids:6>,<galacticraftcore:steel_pole>);

# Heavy-Duty Plate (Tier 3)
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftplanets:item_basic_asteroids:5>);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftplanets:item_basic_asteroids:5> * 3, <galacticraftplanets:item_basic_mars:5>,<galacticraftplanets:item_basic_mars:5>,<galacticraftplanets:item_basic_mars:5>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:5>,<galacticraftplanets:item_basic_mars:5>,<galacticraftplanets:item_basic_mars:5>);

# Heavy Nose Cone
recipes.remove(<galacticraftplanets:heavy_nose_cone>);
recipes.addShaped(<galacticraftplanets:heavy_nose_cone>, [[null,<galacticraftcore:nose_cone>,null],[null,<galacticraftplanets:item_basic_asteroids:5>,null],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:oxygen_concentrator>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Heavy Rocket Fins
recipes.remove(<galacticraftplanets:item_basic_asteroids:2>);
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:2>, [[null,<galacticraftcore:rocket_fins>,null],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:rocket_fins>,<galacticraftplanets:item_basic_asteroids:5>],[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:empowered_thermal_controller>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Heavy Rocket Engine
recipes.remove(<galacticraftplanets:item_basic_asteroids:1>);
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:1>, [[null,<contenttweaker:empowered_thermal_controller>,null],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:8>,<galacticraftplanets:item_basic_asteroids:5>],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:engine>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Solar Array Panel
recipes.remove(<galacticraftplanets:basic_item_venus:5>);
recipes.addShaped(<galacticraftplanets:basic_item_venus:5>, [[<enderio:block_solar_panel:1>,<enderio:block_solar_panel:1>,<enderio:block_solar_panel:1>],[<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>],[<galacticraftcore:basic_item:7>,<galacticraftcore:basic_item:7>,<galacticraftcore:basic_item:7>]]);

# Solar Array Module
recipes.remove(<galacticraftplanets:solar_array_module>);
recipes.addShaped(<galacticraftplanets:solar_array_module>, [[<galacticraftplanets:basic_item_venus:5>,<galacticraftplanets:basic_item_venus:5>,<galacticraftplanets:basic_item_venus:5>],[<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:14>,<galacticraftcore:basic_item:9>]]);

# Solar Array Controller
recipes.remove(<galacticraftplanets:solar_array_controller>);
recipes.addShaped(<galacticraftplanets:solar_array_controller>, [[<galacticraftcore:basic_item:9>,<galacticraftplanets:solar_array_module>,<galacticraftcore:basic_item:9>],[<galacticraftcore:heavy_plating>,<contenttweaker:galactic_machine_frame>,<galacticraftcore:heavy_plating>]]);

# Slimeling Inventory Bag
recipes.remove(<galacticraftplanets:item_basic_mars:4>);
recipes.addShaped(<galacticraftplanets:item_basic_mars:4>, [[<contenttweaker:star_leather>,null,<contenttweaker:star_leather>],[<galacticraftcore:item_basic_moon:1>,<actuallyadditions:block_giant_chest_large>,<galacticraftcore:item_basic_moon:1>]]);

# Terraformer
recipes.remove(<galacticraftplanets:mars_machine>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftplanets:mars_machine>,
[[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>,<galacticraftcore:canister>,<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<contenttweaker:cheesy_wafer>,<galacticraftcore:canister>,<thaumicaugmentation:arcane_terraformer>,<galacticraftcore:canister>,<contenttweaker:cheesy_wafer>,<galacticraftplanets:item_basic_mars:3>],
[<quantumflux:craftingpiece:4>,<galacticraftcore:canister>,<thaumicaugmentation:arcane_terraformer>,<contenttweaker:galactic_machine_frame>,<thaumicaugmentation:arcane_terraformer>,<galacticraftcore:canister>,<quantumflux:craftingpiece:4>],
[<galacticraftplanets:item_basic_mars:3>,<contenttweaker:cheesy_wafer>,<galacticraftcore:canister>,<thaumicaugmentation:arcane_terraformer>,<galacticraftcore:canister>,<contenttweaker:cheesy_wafer>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>,<galacticraftcore:canister>,<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Cryogenic Chamber
recipes.remove(<galacticraftplanets:mars_machine:4>);
mods.extendedcrafting.TableCrafting.addShaped(<galacticraftplanets:mars_machine:4>,
[[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:12>,<contenttweaker:condensed_vis_crystal_gelum>,<contenttweaker:condensed_vis_crystal_gelum>,<contenttweaker:condensed_vis_crystal_gelum>,<galacticraftcore:basic_item:12>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<contenttweaker:condensed_vis_crystal_gelum>,<bigreactors:reactorcoolantport>,<bigreactors:reactorcoolantport>,<bigreactors:reactorcoolantport>,<contenttweaker:condensed_vis_crystal_gelum>,<galacticraftplanets:item_basic_mars:3>],
[<quantumflux:craftingpiece:4>,<contenttweaker:condensed_vis_crystal_gelum>,<bigreactors:reactorcoolantport>,<contenttweaker:galactic_machine_frame>,<bigreactors:reactorcoolantport>,<contenttweaker:condensed_vis_crystal_gelum>,<quantumflux:craftingpiece:4>],
[<galacticraftplanets:item_basic_mars:3>,<contenttweaker:condensed_vis_crystal_gelum>,<bigreactors:reactorcoolantport>,<bigreactors:reactorcoolantport>,<bigreactors:reactorcoolantport>,<contenttweaker:condensed_vis_crystal_gelum>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:12>,<contenttweaker:condensed_vis_crystal_gelum>,<contenttweaker:condensed_vis_crystal_gelum>,<contenttweaker:condensed_vis_crystal_gelum>,<galacticraftcore:basic_item:12>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Energy Beam Reflector
recipes.remove(<galacticraftplanets:beam_reflector>);
recipes.addShaped(<galacticraftplanets:beam_reflector>, [[null,<galacticraftplanets:item_basic_asteroids:8>,null],[null,<thaumcraft:hand_mirror>,null],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Energy Beam Receiver
recipes.remove(<galacticraftplanets:beam_receiver>);
recipes.addShapedMirrored(<galacticraftplanets:beam_receiver>, [[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,null],[<enderutilities:energy_bridge:1>,<lightningcraft:material:9>,<galacticraftplanets:item_basic_asteroids:8>],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,null]]);

# Grapple
recipes.remove(<galacticraftplanets:grapple>);
recipes.addShapedMirrored(<galacticraftplanets:grapple>, [[<immersiveengineering:skyhook>,null,null],[null,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_mars:1>],[null,<galacticraftplanets:item_basic_mars:1>,<galacticraftcore:basic_item:13>]]);

# Web Strings
<galacticraftplanets:web_torch>.addTooltip(format.white("Can be found in underground ") + format.gold("Venus") + format.white(" Dungeons."));
<galacticraftplanets:web_torch:1>.addTooltip(format.white("Can be found in underground ") + format.gold("Venus") + format.white(" Dungeons."));

# Shield Controller
<galacticraftplanets:basic_item_venus>.addTooltip(format.white("Can be found in underground ") + format.gold("Venus") + format.white(" Dungeons."));

# Dense Ice
<galacticraftplanets:dense_ice>.addTooltip(format.white("Found in the ") + format.blue("Asteroids") + format.white(" dimension."));

# Solar Essence -> Solar Dust, Venus Volcanic Rock
recipes.addShaped(<galacticraftplanets:basic_item_venus:4> * 3, [[<contenttweaker:solar_essence>,<contenttweaker:solar_essence>,<contenttweaker:solar_essence>],[<contenttweaker:solar_essence>,null,<contenttweaker:solar_essence>],[<contenttweaker:solar_essence>,<contenttweaker:solar_essence>,<contenttweaker:solar_essence>]]);
recipes.addShaped(<galacticraftplanets:venus:2> * 3, [[<ore:netherrack>,<contenttweaker:solar_essence>,<ore:netherrack>],[<contenttweaker:solar_essence>,<liquid:lava> * 1000,<contenttweaker:solar_essence>],[<ore:netherrack>,<contenttweaker:solar_essence>,<ore:netherrack>]]);

print("ENDING GalacticraftPlanets.zs");
