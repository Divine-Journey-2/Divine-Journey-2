# Author: Atricos
print("STARTING PlanetProgression.zs");

# Satellite Builder
recipes.remove(<planetprogression:satellite_builder>);
mods.extendedcrafting.TableCrafting.addShaped(<planetprogression:satellite_builder>, 
[[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:6>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>,<mekanism:basicblock2:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:5>,<simplyjetpacks:metaitemmods:11>,<enderutilities:molecular_exciter>,<simplyjetpacks:metaitemmods:11>,<mekanism:basicblock2:5>,<galacticraftcore:heavy_plating>],
[<quantumflux:craftingpiece:4>,<simplyjetpacks:metaitemmods:11>,<rftools:builder>,<contenttweaker:galactic_machine_frame>,<rftools:builder>,<simplyjetpacks:metaitemmods:11>,<quantumflux:craftingpiece:4>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:5>,<simplyjetpacks:metaitemmods:11>,<enderutilities:molecular_exciter>,<simplyjetpacks:metaitemmods:11>,<mekanism:basicblock2:5>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<mekanism:basicblock2:6>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>,<mekanism:basicblock2:6>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Basic Satellitle Module
recipes.remove(<planetprogression:satellite_module_basic>);
recipes.addShaped(<planetprogression:satellite_module_basic>, [[<quantumflux:craftingpiece:5>,<galacticraftcore:basic_item:10>,<quantumflux:craftingpiece:5>],[<galacticraftcore:basic_item:14>,<contenttweaker:reduction_core>,<galacticraftcore:basic_item:14>],[<quantumflux:craftingpiece:5>,<galacticraftcore:basic_item:10>,<quantumflux:craftingpiece:5>]]);

# Satellite Controller
recipes.remove(<planetprogression:satellite_controller>);
mods.extendedcrafting.TableCrafting.addShaped(<planetprogression:satellite_controller>,
[[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<appliedenergistics2:controller>,<galacticraftcore:basic_item:14>,<galacticraftcore:dishbase>,<galacticraftcore:basic_item:14>,<appliedenergistics2:controller>,<galacticraftcore:heavy_plating>],
[<quantumflux:craftingpiece:4>,<appliedenergistics2:controller>,<planetprogression:satellite_basic>,<contenttweaker:galactic_machine_frame>,<planetprogression:satellite_basic>,<appliedenergistics2:controller>,<quantumflux:craftingpiece:4>],
[<galacticraftcore:heavy_plating>,<appliedenergistics2:controller>,<galacticraftcore:basic_item:14>,<galacticraftcore:dishbase>,<galacticraftcore:basic_item:14>,<appliedenergistics2:controller>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<appliedenergistics2:controller>,<galacticraftcore:heavy_plating>],
[<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<quantumflux:craftingpiece:4>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>,<galacticraftcore:heavy_plating>]]);

# Communication Dish Keycard
recipes.remove(<planetprogression:dish_keycard>);
recipes.addShaped(<planetprogression:dish_keycard>, [[<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>],[<wct:magnet_card>,<rftools:shape_card>,<wct:magnet_card>],[<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>]]);

# Telescope
recipes.remove(<planetprogression:telescope>);
recipes.addShapedMirrored(<planetprogression:telescope>, [[null,<galacticraftcore:basic_item:9>,<galacticraftcore:basic_item:9>],[<galacticraftcore:basic_item:9>,<astralsorcery:blockobservatory>,<galacticraftcore:basic_item:8>],[<lightningcraft:rod:9>,null,<lightningcraft:rod:9>]]);

# Satellite Rocket Launch Pad
recipes.remove(<planetprogression:advanced_launch_pad>);
recipes.addShaped(<planetprogression:advanced_launch_pad> * 5, [[<galacticraftcore:basic_item>,<galacticraftcore:basic_item>,<galacticraftcore:basic_item>],[<galacticraftcore:landing_pad>,<galacticraftcore:landing_pad>,<galacticraftcore:landing_pad>]]);

# Satellite Rocket Launch Module
recipes.remove(<planetprogression:satellite_launcher>);
mods.extendedcrafting.TableCrafting.addShaped(<planetprogression:satellite_launcher>,
[[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<contenttweaker:cheesy_wafer>,<galacticraftcore:basic_item:19>,<galacticraftcore:basic_item:19>,<galacticraftcore:basic_item:19>,<contenttweaker:cheesy_wafer>,<galacticraftplanets:item_basic_mars:3>],
[<quantumflux:craftingpiece:4>,<contenttweaker:cheesy_wafer>,<galacticraftcore:basic_item:13>,<galacticraftplanets:mars_machine:8>,<galacticraftcore:basic_item:13>,<contenttweaker:cheesy_wafer>,<quantumflux:craftingpiece:4>],
[<galacticraftplanets:item_basic_mars:3>,<contenttweaker:cheesy_wafer>,<planetprogression:advanced_launch_pad>,<planetprogression:advanced_launch_pad>,<planetprogression:advanced_launch_pad>,<contenttweaker:cheesy_wafer>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:basic_item:14>,<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>,<galacticraftcore:basic_item:14>,<galacticraftplanets:item_basic_mars:3>],
[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<quantumflux:craftingpiece:4>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

print("ENDING PlanetProgression.zs");