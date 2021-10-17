# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.thermalexpansion.Crucible;

print("STARTING ExtremeReactors.zs");

# Reactor Casing Core (Legacy)
recipes.remove(<bigreactors:reactorcasingcores>);
recipes.addShaped(<bigreactors:reactorcasingcores>, [[<contenttweaker:mystical_iron_ingot>,<botania:elfglass>,<contenttweaker:mystical_iron_ingot>],[<botania:elfglass>,<extendedcrafting:material:7>,<botania:elfglass>],[<contenttweaker:mystical_iron_ingot>,<botania:elfglass>,<contenttweaker:mystical_iron_ingot>]]);

# Reactor Casing (Legacy)
recipes.remove(<bigreactors:reactorcasing>);
recipes.addShaped(<bigreactors:reactorcasing> * 4, [[<enderio:item_alloy_ingot:6>,<bigreactors:ingotgraphite>,<enderio:item_alloy_ingot:6>],[<bigreactors:ingotgraphite>,<bigreactors:reactorcasingcores>,<bigreactors:ingotgraphite>],[<enderio:item_alloy_ingot:6>,<bigreactors:ingotgraphite>,<enderio:item_alloy_ingot:6>]]);

# Reactor Controller (Legacy)
recipes.remove(<bigreactors:reactorcontroller>);
mods.extendedcrafting.TableCrafting.addShaped(<bigreactors:reactorcontroller>,
[[<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>],
[<bigreactors:reactorcasing>,<bigreactors:blockyellorium>,<bigreactors:blockyellorium>,<bigreactors:blockyellorium>,<bigreactors:blockyellorium>,<bigreactors:blockyellorium>,<bigreactors:reactorcasing>],
[<bigreactors:reactorcasing>,<bigreactors:blockyellorium>,<thaumicaugmentation:material:3>,<contenttweaker:condensed_vis_crystal_potentia>,<thaumicaugmentation:material:3>,<bigreactors:blockyellorium>,<bigreactors:reactorcasing>],
[<bigreactors:reactorcasing>,<bigreactors:blockyellorium>,<contenttweaker:condensed_vis_crystal_potentia>,<evilcraft:inverted_potentia:1>,<contenttweaker:condensed_vis_crystal_potentia>,<bigreactors:blockyellorium>,<bigreactors:reactorcasing>],
[<bigreactors:reactorcasing>,<bigreactors:blockyellorium>,<thaumicaugmentation:material:3>,<contenttweaker:condensed_vis_crystal_potentia>,<thaumicaugmentation:material:3>,<bigreactors:blockyellorium>,<bigreactors:reactorcasing>],
[<bigreactors:reactorcasing>,<bigreactors:blockyellorium>,<bigreactors:blockyellorium>,<bigreactors:blockyellorium>,<bigreactors:blockyellorium>,<bigreactors:blockyellorium>,<bigreactors:reactorcasing>],
[<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>,<bigreactors:reactorcasing>]]);

# Reactor Access Port (Legacy)
recipes.remove(<bigreactors:reactoraccessport>);
recipes.addShaped(<bigreactors:reactoraccessport>, [[<bigreactors:reactorcasing>,<bigreactors:blockyellorium>,<bigreactors:reactorcasing>],[<bigreactors:blockyellorium>,<thaumicaugmentation:warded_chest>,<bigreactors:blockyellorium>],[<bigreactors:reactorcasing>,<bigreactors:blockyellorium>,<bigreactors:reactorcasing>]]);

# Reactor Coolant Port (Legacy)
recipes.remove(<bigreactors:reactorcoolantport>);
recipes.addShaped(<bigreactors:reactorcoolantport>, [[<bigreactors:reactorcasing>,<bigreactors:blockcyanite>,<bigreactors:reactorcasing>],[<bigreactors:blockcyanite>,<simplyjetpacks:metaitemmods:30>,<bigreactors:blockcyanite>],[<bigreactors:reactorcasing>,<bigreactors:blockcyanite>,<bigreactors:reactorcasing>]]);

# Reactor Redstone Flux Power Tap (Legacy)
recipes.remove(<bigreactors:reactorpowertaprf>);
recipes.addShaped(<bigreactors:reactorpowertaprf>, [[<bigreactors:reactorcasing>,<contenttweaker:fluxed_electrum_block>,<bigreactors:reactorcasing>],[<contenttweaker:fluxed_electrum_block>,<thermaldynamics:duct_0:5>,<contenttweaker:fluxed_electrum_block>],[<bigreactors:reactorcasing>,<contenttweaker:fluxed_electrum_block>,<bigreactors:reactorcasing>]]);

# Reactor Fuel Rod (Legacy)
recipes.remove(<bigreactors:reactorfuelrod>);
recipes.addShaped(<bigreactors:reactorfuelrod>, [[<bigreactors:reactorcasing>,<lightningcraft:rod:8>,<bigreactors:reactorcasing>],[<bigreactors:reactorglass>,<lightningcraft:rod:8>,<bigreactors:reactorglass>],[<bigreactors:reactorcasing>,<lightningcraft:rod:8>,<bigreactors:reactorcasing>]]);

# Reactor Redstone Port (Legacy)
recipes.remove(<bigreactors:reactorredstoneport>);
recipes.addShaped(<bigreactors:reactorredstoneport>, [[<bigreactors:reactorcasing>,<enderio:block_alloy:3>,<bigreactors:reactorcasing>],[<enderio:block_alloy:3>,<lightningcraft:ingot:2>,<enderio:block_alloy:3>],[<bigreactors:reactorcasing>,<enderio:block_alloy:3>,<bigreactors:reactorcasing>]]);

# Reactor Control Rod (Legacy)
recipes.remove(<bigreactors:reactorcontrolrod>);
recipes.addShaped(<bigreactors:reactorcontrolrod>, [[<bigreactors:reactorcasing>,<lightningcraft:ingot>,<bigreactors:reactorcasing>],[<integrateddynamics:logic_programmer>,<enderio:block_alloy:3>,<integrateddynamics:logic_programmer>],[<bigreactors:reactorcasing>,<lightningcraft:ingot>,<bigreactors:reactorcasing>]]);

# Extreme Wrench
recipes.remove(<bigreactors:wrench>);
recipes.addShapedMirrored(<bigreactors:wrench>, [[null,<contenttweaker:mystical_iron_ingot>,null],[null,<botania:manaresource:4>,<contenttweaker:mystical_iron_ingot>],[<botania:manaresource:4>,null,null]]);

# Cyanite Ingot
recipes.removeShapeless(<bigreactors:ingotcyanite>, [<ore:sand>,<bigreactors:ingotyellorium>]);

# Blutonium Ingot
recipes.removeShaped(<bigreactors:ingotblutonium>);
mods.immersiveengineering.ArcFurnace.addRecipe(<bigreactors:ingotblutonium>, <bigreactors:ingotcyanite> * 4, null, 80, 256, [<contenttweaker:mystical_iron_ingot>], "Alloying");
#EIOAlloySmelter.addRecipe(<bigreactors:ingotblutonium>, [<bigreactors:ingotcyanite> * 4, <contenttweaker:mystical_iron_ingot>], 4000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
IEAlloySmelter.addRecipe(<bigreactors:ingotblutonium>, <bigreactors:ingotcyanite> * 4, <contenttweaker:mystical_iron_ingot>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<bigreactors:ingotblutonium>, <bigreactors:ingotcyanite> * 4, <contenttweaker:mystical_iron_ingot>, 4000);

# Turbine Housing Core (Legacy)
recipes.remove(<bigreactors:turbinehousingcores>);
recipes.addShaped(<bigreactors:turbinehousingcores>, [[<bigreactors:ingotyellorium>,<contenttweaker:mystical_iron_ingot>,<bigreactors:ingotyellorium>],[<plustic:mirioningot>,<contenttweaker:mystical_iron_ingot>,<plustic:mirioningot>],[<bigreactors:ingotyellorium>,<contenttweaker:mystical_iron_ingot>,<bigreactors:ingotyellorium>]]);

# Turbine Rotor Blade (Legacy)
recipes.remove(<bigreactors:turbinerotorblade>);
recipes.addShapedMirrored(<bigreactors:turbinerotorblade>, [[<bigreactors:ingotcyanite>,<contenttweaker:mystical_iron_ingot>,<contenttweaker:mystical_iron_ingot>]]);

# Turbine Rotor Shaft (Legacy)
recipes.remove(<bigreactors:turbinerotorshaft>);
recipes.addShaped(<bigreactors:turbinerotorshaft>, [[null,<contenttweaker:mystical_iron_ingot>,null],[<contenttweaker:mystical_iron_ingot>,<bigreactors:ingotcyanite>,<contenttweaker:mystical_iron_ingot>],[null,<contenttweaker:mystical_iron_ingot>,null]]);

# Turbine Housing (Legacy)
recipes.remove(<bigreactors:turbinehousing>);
recipes.addShaped(<bigreactors:turbinehousing> * 4, [[<bigreactors:ingotcyanite>,<contenttweaker:mystical_iron_ingot>,<bigreactors:ingotcyanite>],[<contenttweaker:mystical_iron_ingot>,<bigreactors:turbinehousingcores>,<contenttweaker:mystical_iron_ingot>],[<bigreactors:ingotcyanite>,<contenttweaker:mystical_iron_ingot>,<bigreactors:ingotcyanite>]]);

# Turbine Controller (Legacy)
recipes.remove(<bigreactors:turbinecontroller>);
mods.extendedcrafting.TableCrafting.addShaped(<bigreactors:turbinecontroller>,
[[<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>],
[<bigreactors:turbinehousing>,<bigreactors:blockcyanite>,<bigreactors:blockcyanite>,<bigreactors:blockcyanite>,<bigreactors:blockcyanite>,<bigreactors:blockcyanite>,<bigreactors:turbinehousing>],
[<bigreactors:turbinehousing>,<bigreactors:blockcyanite>,<thaumicaugmentation:material:3>,<contenttweaker:condensed_vis_crystal_aer>,<thaumicaugmentation:material:3>,<bigreactors:blockcyanite>,<bigreactors:turbinehousing>],
[<bigreactors:turbinehousing>,<bigreactors:blockcyanite>,<contenttweaker:condensed_vis_crystal_aer>,<evilcraft:inverted_potentia:1>,<contenttweaker:condensed_vis_crystal_aer>,<bigreactors:blockcyanite>,<bigreactors:turbinehousing>],
[<bigreactors:turbinehousing>,<bigreactors:blockcyanite>,<thaumicaugmentation:material:3>,<contenttweaker:condensed_vis_crystal_aer>,<thaumicaugmentation:material:3>,<bigreactors:blockcyanite>,<bigreactors:turbinehousing>],
[<bigreactors:turbinehousing>,<bigreactors:blockcyanite>,<bigreactors:blockcyanite>,<bigreactors:blockcyanite>,<bigreactors:blockcyanite>,<bigreactors:blockcyanite>,<bigreactors:turbinehousing>],
[<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>,<bigreactors:turbinehousing>]]);

# Turbine Rotor Bearing (Legacy)
recipes.remove(<bigreactors:turbinebearing>);
recipes.addShaped(<bigreactors:turbinebearing>, [[<bigreactors:turbinehousing>,<bigreactors:turbinerotorshaft>,<bigreactors:turbinehousing>],[<bigreactors:blockcyanite>,<mekanism:machineblock2>,<bigreactors:blockcyanite>],[<bigreactors:turbinehousing>,<bigreactors:turbinerotorshaft>,<bigreactors:turbinehousing>]]);

# Turbine Fluid Port (Legacy)
recipes.remove(<bigreactors:turbinefluidport>);
recipes.addShaped(<bigreactors:turbinefluidport>, [[<bigreactors:turbinehousing>,<lightningcraft:ingot:2>,<bigreactors:turbinehousing>],[<lightningcraft:ingot:2>,<integratedtunnels:part_importer_world_fluid_item>,<lightningcraft:ingot:2>],[<bigreactors:turbinehousing>,<lightningcraft:ingot:2>,<bigreactors:turbinehousing>]]);

# Turbine Redstone Flux Power Tap (Legacy)
recipes.remove(<bigreactors:turbinepowertaprf>);
recipes.addShaped(<bigreactors:turbinepowertaprf>, [[<bigreactors:turbinehousing>,<contenttweaker:fluxed_electrum_block>,<bigreactors:turbinehousing>],[<contenttweaker:fluxed_electrum_block>,<thermaldynamics:duct_0:5>,<contenttweaker:fluxed_electrum_block>],[<bigreactors:turbinehousing>,<contenttweaker:fluxed_electrum_block>,<bigreactors:turbinehousing>]]);

# Ludicrite Block
recipes.removeShaped(<bigreactors:blockludicrite>);
recipes.addShaped(<bigreactors:blockludicrite>, [[<bigreactors:ingotblutonium>,<botania:manaresource:7>,<bigreactors:ingotblutonium>],[<botania:manaresource:7>,<enderutilities:enderpart:17>,<botania:manaresource:7>],[<bigreactors:ingotblutonium>,<botania:manaresource:7>,<bigreactors:ingotblutonium>]]);

# Molten Blutonium in the Magma Crucible
mods.thermalexpansion.Crucible.addRecipe(<liquid:blutonium> * 144, <bigreactors:ingotblutonium>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:blutonium> * 1296, <bigreactors:blockblutonium>, 32000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:blutonium> * 144, <bigreactors:dustblutonium>, 4000);

# Reactor Creative Coolant Port
recipes.addShaped(<bigreactors:reactorcreativecoolantport>, [[<bigreactors:reactorcasing>,<alchemistry:ingot:118>,<bigreactors:reactorcasing>],[<tconstruct:materials:50>,<bigreactors:reactorcoolantport>,<tconstruct:materials:50>],[<bigreactors:reactorcasing>,<alchemistry:ingot:118>,<bigreactors:reactorcasing>]]);

# Turbine Creative Steam Generator
recipes.addShaped(<bigreactors:turbinecreativesteamgenerator>, [[<bigreactors:turbinehousing>,<alchemistry:ingot:118>,<bigreactors:turbinehousing>],[<tconstruct:materials:50>,<bigreactors:turbinefluidport>,<tconstruct:materials:50>],[<bigreactors:turbinehousing>,<alchemistry:ingot:118>,<bigreactors:turbinehousing>]]);

print("ENDING ExtremeReactors.zs");