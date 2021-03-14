# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;

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

# Extreme Wrench
recipes.remove(<bigreactors:wrench>);
recipes.addShapedMirrored(<bigreactors:wrench>, [[null,<contenttweaker:mystical_iron_ingot>,null],[null,<botania:manaresource:4>,<contenttweaker:mystical_iron_ingot>],[<botania:manaresource:4>,null,null]]);

# Cyanite Ingot
recipes.removeShapeless(<bigreactors:ingotcyanite>, [<ore:sand>,<bigreactors:ingotyellorium>]);

# Blutonium Ingot
recipes.removeShaped(<bigreactors:ingotblutonium>);
mods.immersiveengineering.ArcFurnace.addRecipe(<bigreactors:ingotblutonium>, <bigreactors:ingotcyanite> * 8, null, 80, 256, [<contenttweaker:mystical_iron_ingot>], "Alloying");
EIOAlloySmelter.addRecipe(<bigreactors:ingotblutonium>, [<bigreactors:ingotcyanite> * 8, <contenttweaker:mystical_iron_ingot>], 4000);
IEAlloySmelter.addRecipe(<bigreactors:ingotblutonium>, <bigreactors:ingotcyanite> * 8, <contenttweaker:mystical_iron_ingot>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<bigreactors:ingotblutonium>, <bigreactors:ingotcyanite> * 8, <contenttweaker:mystical_iron_ingot>, 4000);

print("ENDING ExtremeReactors.zs");