# Author: Atricos

import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.inworldcrafting.ExplosionCrafting;

print("STARTING QuantumFlux.zs");

# Item Magnet
recipes.remove(<quantumflux:magnet>);
recipes.addShapedMirrored(<quantumflux:magnet>, [[<enderio:block_alloy:3>,null,<enderio:block_alloy_endergy:6>],[<enderio:item_alloy_ingot>,<actuallyadditions:item_suction_ring>,<enderio:item_alloy_ingot>],[<quantumflux:craftingpiece:2>,<enderio:block_alloy>,<quantumflux:craftingpiece:2>]]);
recipes.addShapedMirrored(<quantumflux:magnet>, [[<enderio:block_alloy:3>,null,<enderio:block_alloy_endergy:6>],[<enderio:item_alloy_ingot>,<actuallyadditions:magnet_ring_bauble>,<enderio:item_alloy_ingot>],[<quantumflux:craftingpiece:2>,<enderio:block_alloy>,<quantumflux:craftingpiece:2>]]);

# Ender Crystal
recipes.remove(<quantumflux:craftingpiece:3>);
recipes.addShapedMirrored(<quantumflux:craftingpiece:3>, [[null,<thermalfoundation:material:295>,<thermalfoundation:material:295>],[<thermalfoundation:material:167>,<thermalfoundation:material:295>,null],[<thermalfoundation:material:167>,null,null]]);
mods.tconstruct.Melting.removeRecipe(<liquid:enderium>, <quantumflux:craftingpiece:3>);

# Amplification Crystal
recipes.remove(<quantumflux:craftingpiece:2>);
recipes.addShapedMirrored(<quantumflux:craftingpiece:2>, [[<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:1>,<minecraft:spider_eye>],[null,null,<industrialforegoing:pink_slime_ingot>],[<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:1>,<minecraft:spider_eye>]]);

# Darkstone
recipes.remove(<quantumflux:darkstone>);
recipes.addShaped(<quantumflux:darkstone> * 2, [[<ore:stone>,<enderio:item_alloy_ingot:6>,<ore:stone>],[<enderio:item_alloy_ingot:6>,<ore:stone>,<enderio:item_alloy_ingot:6>],[<ore:stone>,<enderio:item_alloy_ingot:6>,<ore:stone>]]);

# Industrial Grade Graphite Ore
mods.immersiveengineering.ArcFurnace.addRecipe(<quantumflux:graphiteore>, <quantumflux:darkstone>, null, 200, 512, [<bigreactors:ingotgraphite>, <immersiveengineering:material:19>], "Ores");
EIOAlloySmelter.addRecipe(<quantumflux:graphiteore>, [<quantumflux:darkstone>, <bigreactors:ingotgraphite>, <immersiveengineering:material:19>], 24000);
<quantumflux:graphitedust>.addTooltip("Blow it up to create a Hyper Diamond!");

# Graphite Dust & Hyper Diamond JEI description
#mods.jei.JEI.addDescription(<quantumflux:graphitedust>,"Turned into a Hyper Diamond with an explosion.");

# Hyper Diamond
ExplosionCrafting.explodeItemRecipe(<quantumflux:craftingpiece:6>, <contenttweaker:industrial_grade_graphite_dust>);
mods.jei.JEI.addDescription(<quantumflux:craftingpiece:6>, "Explode some Industrial Grade Graphite Dust to create this item!");

# Advanced Circuit
recipes.remove(<quantumflux:craftingpiece:5>);
recipes.addShaped(<quantumflux:craftingpiece:5>, [[<enderio:item_alloy_ingot:2>,<quantumflux:craftingpiece:3>,<enderio:item_alloy_ingot:2>],[<contenttweaker:printed_estimation_circuit>,<quantumflux:craftingpiece:6>,<contenttweaker:printed_estimation_circuit>],[<enderio:item_alloy_ingot:2>,<quantumflux:craftingpiece:3>,<enderio:item_alloy_ingot:2>]]);

# Quibit Crystal
recipes.remove(<quantumflux:craftingpiece>);
recipes.addShaped(<quantumflux:craftingpiece>, [[<minecraft:emerald>,<enderio:item_material:15>,<minecraft:emerald>],[<minecraft:emerald>,<quantumflux:craftingpiece:6>,<minecraft:emerald>],[<enderio:item_alloy_ingot:1>,<enderio:item_alloy_ingot:7>,<enderio:item_alloy_ingot:1>]]);

# Quantum Disk
recipes.remove(<quantumflux:craftingpiece:4>);
recipes.addShaped(<quantumflux:craftingpiece:4>, [[<quantumflux:darkstone>,<contenttweaker:crystalline_brown_slime_ingot>,<quantumflux:darkstone>],[<quantumflux:craftingpiece:5>,<quantumflux:craftingpiece>,<quantumflux:craftingpiece:5>],[<quantumflux:darkstone>,<contenttweaker:crystalline_brown_slime_ingot>,<quantumflux:darkstone>]]);

# Exciter Upgrade
recipes.remove(<quantumflux:exciterupgrade>);
recipes.addShaped(<quantumflux:exciterupgrade> * 4, [[<quantumflux:darkstone>,<enderio:item_alloy_ingot:6>,<quantumflux:darkstone>],[<enderio:item_alloy_ingot:3>,<quantumflux:craftingpiece:5>,<enderio:item_alloy_ingot:3>],[<quantumflux:darkstone>,<enderio:item_alloy_ingot:6>,<quantumflux:darkstone>]]);

# Gold Casing
recipes.remove(<quantumflux:craftingpiece:1>);
recipes.addShaped(<quantumflux:craftingpiece:1> * 4, [[<quantumflux:darkstone>,<industrialforegoing:pink_slime_ingot>,<quantumflux:darkstone>],[<minecraft:gold_block>,<teslacorelib:machine_case>,<minecraft:gold_block>],[<quantumflux:darkstone>,<industrialforegoing:pink_slime_ingot>,<quantumflux:darkstone>]]);

# Void Bucket
recipes.remove(<quantumflux:voidbucket>);
recipes.addShaped(<quantumflux:voidbucket>, [[<thermalfoundation:material:32>,<contenttweaker:crystalline_brown_slime_ingot>,<thermalfoundation:material:32>],[null,<thermalfoundation:material:32>,null]]);

# Matter Transporter
recipes.remove(<quantumflux:mattertransporter>);
recipes.addShapedMirrored(<quantumflux:mattertransporter>, [[null,<enderio:item_material:13>,<openblocks:block_breaker>],[null,<quantumflux:craftingpiece:4>,<enderio:item_material:13>],[<contenttweaker:crystalline_brown_slime_block>,null,null]]);

# Quibit Cell
recipes.remove(<quantumflux:quibitcell>);
recipes.addShaped(<quantumflux:quibitcell>, [[<enderio:item_alloy_ingot:6>,<quantumflux:craftingpiece>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<quantumflux:quibitcluster:3>,<enderio:item_alloy_ingot:6>],[<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece:5>,<quantumflux:craftingpiece:1>]]);

# Ham & Cheese Sandwich
recipes.addShapedMirrored(<quantumflux:hamcheese>, [[<actuallyadditions:item_food:10>,<actuallyadditions:item_food:10>],[<minecraft:cooked_porkchop>,<actuallyadditions:item_food>],[<actuallyadditions:item_food:10>,<actuallyadditions:item_food:10>]]);

# RF Exciter
recipes.remove(<quantumflux:rfexciter>);
recipes.addShaped(<quantumflux:rfexciter>, [[<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece>,<quantumflux:craftingpiece:1>],[<extrautils2:powertransmitter>,<enderio:block_alloy:3>,<extrautils2:powertransmitter>],[<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece>,<quantumflux:craftingpiece:1>]]);

# Glue Trap
recipes.remove(<quantumflux:mobglue>);
recipes.addShaped(<quantumflux:mobglue>, [[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<quantumflux:craftingpiece>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>]]);

# Zero Point Extractor
recipes.remove(<quantumflux:zeropointextractor>);
recipes.addShaped(<quantumflux:zeropointextractor>, [[<quantumflux:darkstone>,<quantumflux:craftingpiece:1>,<quantumflux:darkstone>],[<quantumflux:craftingpiece:1>,<quantumflux:quibitcluster:2>,<quantumflux:craftingpiece:1>],[<quantumflux:darkstone>,<quantumflux:craftingpiece:1>,<quantumflux:darkstone>]]);

# Quantum Entropy Accelerator
recipes.remove(<quantumflux:entropyaccelerator>);

# Quibit Cluster Level 1
recipes.remove(<quantumflux:quibitcluster:1>);
recipes.addShaped(<quantumflux:quibitcluster:1>, [[<quantumflux:darkstone>,<quantumflux:craftingpiece:1>,<quantumflux:darkstone>],[<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece>,<quantumflux:craftingpiece:1>],[<quantumflux:darkstone>,<quantumflux:craftingpiece:1>,<quantumflux:darkstone>]]);

# Quibit Cluster Level 2
recipes.remove(<quantumflux:quibitcluster:2>);
recipes.addShaped(<quantumflux:quibitcluster:2>, [[<quantumflux:darkstone>,<quantumflux:craftingpiece:2>,<quantumflux:darkstone>],[<quantumflux:quibitcluster:1>,<quantumflux:craftingpiece:1>,<quantumflux:quibitcluster:1>],[<quantumflux:darkstone>,<quantumflux:craftingpiece:2>,<quantumflux:darkstone>]]);

# Quibit Cluster Level 3
recipes.remove(<quantumflux:quibitcluster:3>);
recipes.addShaped(<quantumflux:quibitcluster:3>, [[<quantumflux:darkstone>,<quantumflux:craftingpiece:2>,<quantumflux:darkstone>],[<quantumflux:quibitcluster:2>,<quantumflux:craftingpiece:1>,<quantumflux:quibitcluster:2>],[<quantumflux:darkstone>,<quantumflux:craftingpiece:2>,<quantumflux:darkstone>]]);

# Quibit Cluster Level 4
recipes.remove(<quantumflux:quibitcluster:4>);
recipes.addShaped(<quantumflux:quibitcluster:4>, [[<quantumflux:darkstone>,<quantumflux:craftingpiece:2>,<quantumflux:darkstone>],[<quantumflux:quibitcluster:3>,<quantumflux:craftingpiece:1>,<quantumflux:quibitcluster:3>],[<quantumflux:darkstone>,<quantumflux:craftingpiece:2>,<quantumflux:darkstone>]]);

# Quibit Cluster Level 5
recipes.remove(<quantumflux:quibitcluster:5>);
recipes.addShaped(<quantumflux:quibitcluster:5>, [[<quantumflux:darkstone>,<quantumflux:craftingpiece:2>,<quantumflux:darkstone>],[<quantumflux:quibitcluster:4>,<quantumflux:craftingpiece:1>,<quantumflux:quibitcluster:4>],[<quantumflux:darkstone>,<quantumflux:craftingpiece:2>,<quantumflux:darkstone>]]);

# Darkstone Lamp
recipes.remove(<quantumflux:darkstone:1>);
recipes.addShaped(<quantumflux:darkstone:1>, [[null,<quantumflux:darkstone>,null],[<quantumflux:darkstone>,<ore:dyeLightBlue>,<quantumflux:darkstone>],[null,<quantumflux:darkstone>,null]]);

# RF Entangler
recipes.remove(<quantumflux:rfentangler>);
recipes.addShaped(<quantumflux:rfentangler>, [[<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece>,<quantumflux:craftingpiece:1>],[<quantumflux:craftingpiece:5>,<quantumflux:quibitcluster:3>,<quantumflux:craftingpiece:5>],[<quantumflux:craftingpiece:1>,<enderio:block_wireless_charger>,<quantumflux:craftingpiece:1>]]);

# Telepad
recipes.remove(<quantumflux:telepad>);
recipes.addShaped(<quantumflux:telepad>, [[<quantumflux:craftingpiece:5>,<quantumflux:craftingpiece:5>,<quantumflux:craftingpiece:5>],[<enderio:block_tele_pad>,<enderio:block_tele_pad>,<enderio:block_tele_pad>]]);

# Telepad Linking Card
recipes.remove(<quantumflux:linkingcard>);
recipes.addShaped(<quantumflux:linkingcard>, [[<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>,<enderio:item_coord_selector>,<enderio:item_alloy_ingot:6>],[<quantumflux:craftingpiece:5>,<quantumflux:craftingpiece:5>,<quantumflux:craftingpiece:5>]]);

# Imaginary Time Block
recipes.remove(<quantumflux:imaginarytime>);
# recipe in config/brandon3055/CustomFusionRecipes.json

# Creative Quibit Cluster
mods.extendedcrafting.TableCrafting.addShaped(<quantumflux:quibitcluster>,
[[<quantumflux:darkstone>, <quantumflux:darkstone>, <quantumflux:darkstone>, <quantumflux:darkstone>, <quantumflux:darkstone>],
[<quantumflux:darkstone>, <quantumflux:craftingpiece:2>, <quantumflux:craftingpiece:2>, <quantumflux:craftingpiece:2>, <quantumflux:darkstone>],
[<quantumflux:darkstone>, <quantumflux:quibitcluster:5>, <rftools:powercell_creative>, <quantumflux:quibitcluster:5>, <quantumflux:darkstone>],
[<quantumflux:darkstone>, <quantumflux:craftingpiece:2>, <quantumflux:craftingpiece:2>, <quantumflux:craftingpiece:2>, <quantumflux:darkstone>],
[<quantumflux:darkstone>, <quantumflux:darkstone>, <quantumflux:darkstone>, <quantumflux:darkstone>, <quantumflux:darkstone>]]);

print("ENDING QuantumFlux.zs");
