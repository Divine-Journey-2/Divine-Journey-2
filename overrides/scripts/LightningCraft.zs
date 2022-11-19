# Author: Atricos, WaitingIdly

import mods.immersiveengineering.MetalPress;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import moretweaker.lightningcraft.LightningInfusion;
import mods.thaumcraft.Infusion;
import moretweaker.lightningcraft.LightningCrusher;
import mods.thermalexpansion.Crucible;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

print("STARTING LightningCraft.zs");

# Copper Rod
recipes.remove(<lightningcraft:rod:6>);
recipes.addShaped(<lightningcraft:rod:6>, [[<ore:ingotCopper>],[<ore:ingotCopper>]]);
mods.immersiveengineering.MetalPress.removeRecipe(<lightningcraft:rod:6>);
mods.immersiveengineering.MetalPress.addRecipe(<lightningcraft:rod:6>, <ore:ingotCopper>, <immersiveengineering:mold:2>, 2400);

# Gold Rod
recipes.remove(<lightningcraft:rod:5>);
recipes.addShaped(<lightningcraft:rod:5>, [[<minecraft:gold_ingot>],[<minecraft:gold_ingot>]]);
mods.immersiveengineering.MetalPress.removeRecipe(<lightningcraft:rod:5>);
mods.immersiveengineering.MetalPress.addRecipe(<lightningcraft:rod:5>, <minecraft:gold_ingot>, <immersiveengineering:mold:2>, 2400);

# Electricium Plate
recipes.remove(<lightningcraft:plate:7>);
recipes.addShapeless(<lightningcraft:plate:7>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <lightningcraft:ingot>, <lightningcraft:ingot>]);

# Removing wrong guide book
recipes.remove(<patchouli:guide_book>.withTag({"patchouli:book": "lightningcraft:guide"}),true);

# Lightning Guide
recipes.addShapeless(<lightningcraft:guide>, [<minecraft:book>,<lightningcraft:ingot>]);

# Golden Club
recipes.remove(<lightningcraft:golf_club_gold>);
mods.extendedcrafting.TableCrafting.addShaped(<lightningcraft:golf_club_gold>,
[[null,null,<minecraft:gold_block>,<minecraft:gold_block>,<minecraft:gold_block>,<minecraft:gold_block>,null],
[null,<minecraft:gold_block>,<contenttweaker:lightning_charge>,<contenttweaker:lightning_charge>,<contenttweaker:lightning_charge>,<minecraft:gold_block>,null],
[null,<minecraft:gold_block>,<contenttweaker:lightning_charge>,<contenttweaker:lightning_charge>,<contenttweaker:lightning_charge>,<minecraft:gold_block>,null],
[null,null,<minecraft:gold_block>,<minecraft:gold_block>,<evilcraft:sceptre_of_thunder>,<minecraft:gold_block>,null],
[null,null,null,<minecraft:gold_block>,<bewitchment:cold_iron_ingot>,<minecraft:gold_block>,null],
[null,null,null,<minecraft:gold_block>,<bewitchment:cold_iron_ingot>,<minecraft:gold_block>,null],
[null,null,null,<minecraft:gold_block>,<bewitchment:cold_iron_ingot>,<minecraft:gold_block>,null]]);

# Electricium Ingot
<lightningcraft:ingot>.addTooltip(format.white("Create this for the first time by"));
<lightningcraft:ingot>.addTooltip(format.white("striking a piece of Diamond, Gold"));
<lightningcraft:ingot>.addTooltip(format.white("Ingot and Iron Ingot with lightning!"));

# Lightning Energy Cell
recipes.remove(<lightningcraft:lightning_cell>);
recipes.addShaped(<lightningcraft:lightning_cell>, [[<lightningcraft:ingot>,<contenttweaker:lightning_charge>,<lightningcraft:ingot>],[<contenttweaker:lightning_charge>,<extendedcrafting:frame>,<contenttweaker:lightning_charge>],[<lightningcraft:ingot>,<contenttweaker:lightning_charge>,<lightningcraft:ingot>]]);

function addLightningCraftTerminalRecipe(output as IItemStack, prev_tier as IItemStack, block as IIngredient, rod as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[null,rod,null],[null,prev_tier,null],[block,block,block]]);
}

# Iron Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal>, <contenttweaker:lightning_charge>, <minecraft:iron_block>, <immersiveengineering:material:1>);

# Steel Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal:1>, <lightningcraft:air_terminal>, <thermalfoundation:storage_alloy>, <immersiveengineering:material:2>);

# Lead Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal:2>, <lightningcraft:air_terminal:1>, <thermalfoundation:storage:3>, <lightningcraft:rod:2>);

# Tin Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal:3>, <lightningcraft:air_terminal:2>, <thermalfoundation:storage:1>, <lightningcraft:rod:3>);

# Aluminum Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal:4>, <lightningcraft:air_terminal:3>, <thermalfoundation:storage:4>, <immersiveengineering:material:3>);

# Gold Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal:5>, <lightningcraft:air_terminal:4>, <minecraft:gold_block>, <lightningcraft:rod:5>);

# Copper Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal:6>, <lightningcraft:air_terminal:5>, <thermalfoundation:storage>, <lightningcraft:rod:6>);

# Electricium Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal:7>, <lightningcraft:air_terminal:6>, <lightningcraft:metal_block>, <lightningcraft:rod:7>);

# Skyfather Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal:8>, <lightningcraft:air_terminal:7>, <lightningcraft:metal_block:1>, <lightningcraft:rod:8>);

# Mystic Air Terminal
addLightningCraftTerminalRecipe(<lightningcraft:air_terminal:9>, <lightningcraft:air_terminal:8>, <lightningcraft:metal_block:2>, <lightningcraft:rod:9>);

# Thunderstone
recipes.remove(<lightningcraft:stone_block>);
recipes.addShaped(<lightningcraft:stone_block> * 16, [[<bewitchment:scorned_bricks>,<lightningcraft:ingot>,<bewitchment:scorned_bricks>],[<lightningcraft:ingot>,<bloodmagic:slate:4>,<lightningcraft:ingot>],[<bewitchment:scorned_bricks>,<lightningcraft:ingot>,<bewitchment:scorned_bricks>]]);

# Lightning Infusion Table
recipes.remove(<lightningcraft:lightning_infuser>);
mods.extendedcrafting.TableCrafting.addShaped(<lightningcraft:lightning_infuser>,
[[<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<contenttweaker:lightning_charge>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>],
[<thaumcraft:stone_eldritch_tile>,<contenttweaker:condensed_vis_crystal_potentia>,<lightningcraft:stone_block>,<bewitchment:bottled_hellfire>,<lightningcraft:stone_block>,<contenttweaker:condensed_vis_crystal_potentia>,<thaumcraft:stone_eldritch_tile>],
[<thaumcraft:stone_eldritch_tile>,<lightningcraft:stone_block>,<lightningcraft:stone_block>,<contenttweaker:condensed_vis_crystal_ignis>,<lightningcraft:stone_block>,<lightningcraft:stone_block>,<thaumcraft:stone_eldritch_tile>],
[<contenttweaker:lightning_charge>,<bewitchment:bottled_hellfire>,<contenttweaker:condensed_vis_crystal_ignis>,<extendedcrafting:frame>,<contenttweaker:condensed_vis_crystal_ignis>,<bewitchment:bottled_hellfire>,<contenttweaker:lightning_charge>],
[<thaumcraft:stone_eldritch_tile>,<lightningcraft:stone_block>,<lightningcraft:stone_block>,<contenttweaker:condensed_vis_crystal_ignis>,<lightningcraft:stone_block>,<lightningcraft:stone_block>,<thaumcraft:stone_eldritch_tile>],
[<thaumcraft:stone_eldritch_tile>,<contenttweaker:condensed_vis_crystal_potentia>,<lightningcraft:stone_block>,<bewitchment:bottled_hellfire>,<lightningcraft:stone_block>,<contenttweaker:condensed_vis_crystal_potentia>,<thaumcraft:stone_eldritch_tile>],
[<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<contenttweaker:lightning_charge>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>]]);

# Skyfather Ingot
LightningInfusion.remove(<lightningcraft:ingot:1>);
LightningInfusion.add(<lightningcraft:ingot:1>, <divinerpg:skythern_chunk>, 85, [<lightningcraft:stone_block>,<lightningcraft:stone_block>,<lightningcraft:stone_block>,<lightningcraft:stone_block>]);

RecipeBuilder.newBuilder("skyfather_ingot_recipe", "lightningcraft_infusion_multiblock", 300)
	.addEnergyPerTickInput(3000)
	.addItemInput(<divinerpg:skythern_chunk>)
	.addItemInput(<lightningcraft:stone_block> * 4)
	.addItemOutput(<lightningcraft:ingot:1> * 4)
	.build();


# Electrostatic Generator
recipes.remove(<lightningcraft:static_generator>);
recipes.addShaped(<lightningcraft:static_generator>, [[<contenttweaker:mystical_tablet>,<lightningcraft:ingot:1>,<contenttweaker:mystical_tablet>],[<contenttweaker:lightning_charge>,<extendedcrafting:frame>,<contenttweaker:lightning_charge>],[<contenttweaker:mystical_tablet>,<lightningcraft:ingot:1>,<contenttweaker:mystical_tablet>]]);

# Advanced Lightning Cell
recipes.remove(<lightningcraft:lightning_cell:1>);
recipes.addShaped(<lightningcraft:lightning_cell:1>, [[<lightningcraft:stone_block:3>,<lightningcraft:plate:8>,<lightningcraft:stone_block:3>],[<lightningcraft:plate:8>,<lightningcraft:lightning_cell>,<lightningcraft:plate:8>],[<lightningcraft:stone_block:3>,<lightningcraft:plate:8>,<lightningcraft:stone_block:3>]]);

# Lightning Upgrade
recipes.remove(<lightningcraft:material:4>);
recipes.addShaped(<lightningcraft:material:4>, [[<enderio:block_alloy:3>,<lightningcraft:plate:8>,<enderio:block_alloy:3>],[<lightningcraft:plate:8>,<teslacorelib:energy_tier2>,<lightningcraft:plate:8>],[<enderio:block_alloy:3>,<lightningcraft:plate:8>,<enderio:block_alloy:3>]]);

# LE Transmitter (Tier 1)
recipes.remove(<lightningcraft:wireless_block>);
recipes.addShaped(<lightningcraft:wireless_block>, [[null,<lightningcraft:air_terminal:7>,null],[<lightningcraft:material:4>,<extendedcrafting:frame>,<lightningcraft:material:4>],[<minecraft:iron_block>,<enderutilities:energy_bridge:2>,<minecraft:iron_block>]]);

# LE Receiver (Tier 1)
recipes.remove(<lightningcraft:wireless_block:3>);
recipes.addShaped(<lightningcraft:wireless_block:3>, [[null,<lightningcraft:air_terminal:7>,null],[<lightningcraft:material:4>,<extendedcrafting:frame>,<lightningcraft:material:4>],[<minecraft:gold_block>,<enderutilities:energy_bridge:1>,<minecraft:gold_block>]]);

# Demon Blood
LightningCrusher.remove(<lightningcraft:material:5>);
<lightningcraft:material:5>.addTooltip(format.white("Dropped by Demon Soldiers spawning"));
<lightningcraft:material:5>.addTooltip(format.white("naturally in the Nether."));

# Ichor
<lightningcraft:material:11>.addTooltip(format.white("Initially created by striking Demon Blood,"));
<lightningcraft:material:11>.addTooltip(format.white("Skyfather Ingot and an Emerald"));
<lightningcraft:material:11>.addTooltip(format.white("on the ground with lightning."));

RecipeBuilder.newBuilder("ichor", "lightningcraft_infusion_multiblock", 300)
    .addEnergyPerTickInput(5000)
    .addItemInput(<lightningcraft:material:5>)
    .addItemInput(<lightningcraft:ingot:1>)
    .addItemInput(<minecraft:emerald>)
    .addItemOutput(<lightningcraft:material:11>)
    .build();

# Demonstone
LightningInfusion.remove(<lightningcraft:stone_block:3>);
mods.thaumcraft.Infusion.registerRecipe("lightningcraft:demonstone", "", <lightningcraft:stone_block:3>, 6, [<aspect:diabolus> * 40,<aspect:terra> * 20,<aspect:ignis> * 10,<aspect:vitreus> * 10], <lightningcraft:stone_block>, [<lightningcraft:material:5>,<bewitchment:demonic_elixir>,<lightningcraft:material:5>,<bewitchment:demonic_elixir>,<lightningcraft:material:5>,<bewitchment:demonic_elixir>,<lightningcraft:material:5>,<bewitchment:demonic_elixir>]);

# Underworld Charge
LightningInfusion.remove(<lightningcraft:material:6>);
mods.thaumcraft.Infusion.registerRecipe("lightningcraft:underworld_charge", "", <lightningcraft:material:6>, 8, [<aspect:diabolus> * 240,<aspect:tenebrae> * 240,<aspect:potentia> * 240,<aspect:ignis> * 240,<aspect:perditio> * 240], <evilcraft:inverted_potentia>, [<contenttweaker:condensed_vis_crystal_diabolus>,<contenttweaker:condensed_vis_crystal_potentia>,<lightningcraft:stone_block:3>,<contenttweaker:condensed_vis_crystal_diabolus>,<contenttweaker:condensed_vis_crystal_potentia>,<lightningcraft:stone_block:3>]);

# Underpowder
<lightningcraft:material:12>.addTooltip(format.white("Dropped by Undercreeps in the Underworld."));

# Guard's Bone
<lightningcraft:material:7>.addTooltip(format.white("Dropped by Skeleton Guards in the Underworld."));

# Mystic Ingot
LightningInfusion.remove(<lightningcraft:ingot:2>);
# LightningInfusion.add(<lightningcraft:ingot:2> * 16, <lightningcraft:stone_block:3>, 160, [<lightningcraft:material:11>,<lightningcraft:material:13>,<lightningcraft:material:11>,<lightningcraft:material:13>]);

RecipeBuilder.newBuilder("mystic_ingot_recipe", "lightningcraft_infusion_multiblock", 300)
	.addEnergyPerTickInput(30000)
	.addItemInput(<lightningcraft:stone_block:3>)
	.addItemInput(<lightningcraft:material:11> * 2)
	.addItemInput(<lightningcraft:material:13> * 2)
	.addItemOutput(<lightningcraft:ingot:2> * 8)
	.build();

# Lightning Furnace
recipes.remove(<lightningcraft:lightning_furnace>);
recipes.addShaped(<lightningcraft:lightning_furnace>, [[<contenttweaker:undermeld>,<lightningcraft:plate:7>,<contenttweaker:undermeld>],[<lightningcraft:plate:7>,<enderio:block_simple_furnace>,<lightningcraft:plate:7>],[<contenttweaker:undermeld>,<lightningcraft:plate:7>,<contenttweaker:undermeld>]]);

# Lightning Crusher
recipes.remove(<lightningcraft:lightning_crusher>);
mods.extendedcrafting.TableCrafting.addShaped(<lightningcraft:lightning_crusher>,
[[<lightningcraft:plate:8>,<contenttweaker:undermeld>,<contenttweaker:undermeld>,<contenttweaker:lightning_charge>,<contenttweaker:undermeld>,<contenttweaker:undermeld>,<lightningcraft:plate:8>],
[<contenttweaker:undermeld>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<contenttweaker:condensed_vis_crystal_perditio>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<contenttweaker:undermeld>],
[<contenttweaker:undermeld>,<thaumcraft:plate:2>,<lightningcraft:lightning_furnace>,<lightningcraft:lightning_furnace>,<lightningcraft:lightning_furnace>,<thaumcraft:plate:2>,<contenttweaker:undermeld>],
[<contenttweaker:lightning_charge>,<contenttweaker:condensed_vis_crystal_perditio>,<lightningcraft:lightning_furnace>,<lightningcraft:metal_block:1>,<lightningcraft:lightning_furnace>,<contenttweaker:condensed_vis_crystal_perditio>,<contenttweaker:lightning_charge>],
[<contenttweaker:undermeld>,<thaumcraft:plate:2>,<lightningcraft:lightning_furnace>,<lightningcraft:lightning_furnace>,<lightningcraft:lightning_furnace>,<thaumcraft:plate:2>,<contenttweaker:undermeld>],
[<contenttweaker:undermeld>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<contenttweaker:condensed_vis_crystal_perditio>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<contenttweaker:undermeld>],
[<lightningcraft:plate:8>,<contenttweaker:undermeld>,<contenttweaker:undermeld>,<contenttweaker:lightning_charge>,<contenttweaker:undermeld>,<contenttweaker:undermeld>,<lightningcraft:plate:8>]]);

# Guard's Bonemeal
recipes.remove(<lightningcraft:material:8>);
LightningCrusher.remove(<lightningcraft:material:8>);
LightningCrusher.add(<lightningcraft:material:8> * 3, <lightningcraft:material:7>);

# Empowered Underpowder
LightningInfusion.remove(<lightningcraft:material:13>);
# LightningInfusion.add(<lightningcraft:material:13>, <lightningcraft:material:12>, 50, [<lightningcraft:material:8>,<lightningcraft:dust>,<lightningcraft:material:8>,<lightningcraft:dust>]);

RecipeBuilder.newBuilder("empowered_underpowder_recipe", "lightningcraft_infusion_multiblock", 300)
	.addEnergyPerTickInput(7500)
	.addItemInput(<lightningcraft:material:12>)
	.addItemInput(<lightningcraft:material:8> * 2)
	.addItemInput(<lightningcraft:dust> * 2)
	.addItemOutput(<lightningcraft:material:13>)
	.build();

# Divine Underpowder
LightningInfusion.remove(<lightningcraft:material:14>);
# LightningInfusion.add(<lightningcraft:material:14> * 8, <lightningcraft:material:13>, 100, [<lightningcraft:dust:1>,<lightningcraft:dust:1>,<lightningcraft:dust:1>,<lightningcraft:dust:1>]);

RecipeBuilder.newBuilder("divine_underpowder_recipe", "lightningcraft_infusion_multiblock", 300)
	.addEnergyPerTickInput(15000)
	.addItemInput(<lightningcraft:material:13>)
	.addItemInput(<lightningcraft:dust:1> * 4)
	.addItemOutput(<lightningcraft:material:14> * 4)
	.build();

# Mystic Lightning Cell
recipes.remove(<lightningcraft:lightning_cell:2>);
recipes.addShaped(<lightningcraft:lightning_cell:2>, [[<lightningcraft:plate:9>,<lightningcraft:material:9>,<lightningcraft:plate:9>],[<lightningcraft:material:9>,<lightningcraft:lightning_cell:1>,<lightningcraft:material:9>],[<lightningcraft:plate:9>,<lightningcraft:material:9>,<lightningcraft:plate:9>]]);

# LE Transmitter (Tier 2)
recipes.remove(<lightningcraft:wireless_block:1>);
recipes.addShaped(<lightningcraft:wireless_block:1>, [[null,<lightningcraft:air_terminal:8>,null],[<lightningcraft:material:4>,<lightningcraft:wireless_block>,<lightningcraft:material:4>],[<minecraft:iron_block>,<thaumicaugmentation:impetus_generator>,<minecraft:iron_block>]]);

# LE Receiver (Tier 2)
recipes.remove(<lightningcraft:wireless_block:4>);
recipes.addShaped(<lightningcraft:wireless_block:4>, [[null,<lightningcraft:air_terminal:8>,null],[<lightningcraft:material:4>,<lightningcraft:wireless_block:3>,<lightningcraft:material:4>],[<minecraft:gold_block>,<thaumicaugmentation:impetus_generator>,<minecraft:gold_block>]]);

# LE Transmitter (Tier 3)
recipes.remove(<lightningcraft:wireless_block:2>);
recipes.addShaped(<lightningcraft:wireless_block:2>, [[null,<lightningcraft:air_terminal:9>,null],[<lightningcraft:material:4>,<lightningcraft:wireless_block:1>,<lightningcraft:material:4>],[<minecraft:iron_block>,<contenttweaker:mystical_iron_block>,<minecraft:iron_block>]]);

# LE Receiver (Tier 3)
recipes.remove(<lightningcraft:wireless_block:5>);
recipes.addShaped(<lightningcraft:wireless_block:5>, [[null,<lightningcraft:air_terminal:9>,null],[<lightningcraft:material:4>,<lightningcraft:wireless_block:4>,<lightningcraft:material:4>],[<minecraft:gold_block>,<contenttweaker:mystical_iron_block>,<minecraft:gold_block>]]);

# LE to RF Export Bus
recipes.remove(<lightningcraft:rf_provider>);
recipes.addShaped(<lightningcraft:rf_provider>, [[<lightningcraft:plate:7>,<minecraft:iron_block>,<lightningcraft:plate:7>],[<minecraft:iron_block>,<lightningcraft:lightning_cell:2>,<minecraft:iron_block>],[<lightningcraft:plate:7>,<minecraft:iron_block>,<lightningcraft:plate:7>]]);

# Underworld Electrocannon
recipes.remove(<lightningcraft:lightning_cannon>);

# Lightning Cannon
recipes.remove(<lightningcraft:lightning_cannon:1>);

# Elite Lightning Cannon
recipes.remove(<lightningcraft:lightning_cannon:2>);

# Rampart TNT
recipes.remove(<lightningcraft:under_tnt>);

# Lightning TNT
recipes.remove(<lightningcraft:under_tnt:1>);

# Mystic TNT
recipes.remove(<lightningcraft:under_tnt:2>);

# Tx/Rx Link Tag
recipes.remove(<lightningcraft:wireless_marker>);
recipes.addShaped(<lightningcraft:wireless_marker>, [[<lightningcraft:dust>,<lightningcraft:dust>,<lightningcraft:dust>],[<minecraft:paper>,<lightningcraft:material:4>,<minecraft:paper>],[<lightningcraft:dust>,<lightningcraft:dust>,<lightningcraft:dust>]]);
recipes.addShapeless(<lightningcraft:wireless_marker>, [<lightningcraft:wireless_marker>]);

# Lightning Battery (Tier 1)
recipes.remove(<lightningcraft:battery>);
recipes.addShaped(<lightningcraft:battery>, [[<lightningcraft:ingot:1>,<lightningcraft:material:4>,<lightningcraft:ingot:1>],[<lightningcraft:ingot:1>,<contenttweaker:lightning_charge>,<lightningcraft:ingot:1>],[<lightningcraft:ingot:1>,<actuallyadditions:item_battery>,<lightningcraft:ingot:1>]]);

# Lightning Battery (Tier 2)
recipes.remove(<lightningcraft:battery:1>);
recipes.addShaped(<lightningcraft:battery:1>, [[<lightningcraft:ingot:1>,<lightningcraft:material:4>,<lightningcraft:ingot:1>],[<lightningcraft:ingot:1>,<lightningcraft:battery>,<lightningcraft:ingot:1>],[<lightningcraft:ingot:1>,<actuallyadditions:item_battery_double>,<lightningcraft:ingot:1>]]);

# Lightning Battery (Tier 3)
recipes.remove(<lightningcraft:battery:2>);
recipes.addShaped(<lightningcraft:battery:2>, [[<lightningcraft:ingot:1>,<lightningcraft:material:4>,<lightningcraft:ingot:1>],[<lightningcraft:ingot:1>,<lightningcraft:battery:1>,<lightningcraft:ingot:1>],[<lightningcraft:ingot:1>,<actuallyadditions:item_battery_triple>,<lightningcraft:ingot:1>]]);

# Item Magnet (Tier 1)
recipes.remove(<lightningcraft:item_magnet>);
recipes.addShapedMirrored(<lightningcraft:item_magnet>, [[<contenttweaker:lightning_charge>,<enderio:block_alloy:3>,<enderio:block_alloy:3>],[null,<enderio:item_magnet>,<enderio:block_alloy:3>],[<contenttweaker:lightning_charge>,<enderio:block_alloy:3>,<enderio:block_alloy:3>]]);

# Item Magnet (Tier 2)
recipes.remove(<lightningcraft:item_magnet:1>);
recipes.addShapedMirrored(<lightningcraft:item_magnet:1>, [[<lightningcraft:ingot>,<lightningcraft:ingot:1>,<lightningcraft:ingot:1>],[null,<lightningcraft:item_magnet>,<lightningcraft:ingot:1>],[<lightningcraft:ingot>,<lightningcraft:ingot:1>,<lightningcraft:ingot:1>]]);

# Item Magnet (Tier 3)
recipes.remove(<lightningcraft:item_magnet:2>);
recipes.addShapedMirrored(<lightningcraft:item_magnet:2>, [[<lightningcraft:ingot:1>,<lightningcraft:material:11>,<lightningcraft:material:11>],[null,<lightningcraft:item_magnet:1>,<lightningcraft:material:11>],[<lightningcraft:ingot:1>,<lightningcraft:material:11>,<lightningcraft:material:11>]]);

# Item Magnet (Tier 4)
recipes.remove(<lightningcraft:item_magnet:3>);
recipes.addShapedMirrored(<lightningcraft:item_magnet:3>, [[<lightningcraft:ingot:2>,<lightningcraft:metal_block>,<lightningcraft:metal_block>],[null,<lightningcraft:item_magnet:2>,<lightningcraft:metal_block>],[<lightningcraft:ingot:2>,<lightningcraft:metal_block>,<lightningcraft:metal_block>]]);

# Lightning Block Breaker
recipes.remove(<lightningcraft:lightning_breaker>);
recipes.addShaped(<lightningcraft:lightning_breaker>, [[<minecraft:iron_block>,<contenttweaker:lightning_charge>,<minecraft:iron_block>],[<openblocks:block_breaker>,<extendedcrafting:frame>,<openblocks:block_breaker>],[<minecraft:iron_block>,<contenttweaker:lightning_charge>,<minecraft:iron_block>]]);

# Lightning Miner
recipes.remove(<lightningcraft:lightning_miner>);
recipes.addShaped(<lightningcraft:lightning_miner>, [[<minecraft:gold_block>,<thaumcraft:turret:2>,<minecraft:gold_block>],[<lightningcraft:lightning_breaker>,<extendedcrafting:frame>,<lightningcraft:lightning_breaker>],[<minecraft:gold_block>,<lightningcraft:item_magnet:2>,<minecraft:gold_block>]]);

# Ensorcelled Core
LightningInfusion.remove(<lightningcraft:material:9>);
# LightningInfusion.add(<lightningcraft:material:9>, <lightningcraft:material:4>, 250, [<lightningcraft:metal_block>,<contenttweaker:mystical_iron_ingot>,<lightningcraft:metal_block>,<contenttweaker:mystical_iron_ingot>]);

RecipeBuilder.newBuilder("encorcelled_core_recipe", "lightningcraft_infusion_multiblock", 300)
	.addEnergyPerTickInput(50000)
	.addItemInput(<lightningcraft:material:13>)
	.addItemInput(<contenttweaker:mystical_iron_ingot> * 2)
	.addItemInput(<lightningcraft:metal_block> * 2)
	.addItemOutput(<lightningcraft:material:9>)
	.build();

# Enchantment Reallocator
recipes.remove(<lightningcraft:ench_reallocator>);
recipes.addShaped(<lightningcraft:ench_reallocator>, [[<lightningcraft:plate:9>,<enderio:block_enchanter>,<lightningcraft:plate:9>],[<lightningcraft:stone_block:3>,<lightningcraft:material:9>,<lightningcraft:stone_block:3>],[<lightningcraft:stone_block:3>,<contenttweaker:mystical_iron_block>,<lightningcraft:stone_block:3>]]);

# Lightning Charging Plate
recipes.remove(<lightningcraft:charging_plate>);
recipes.addShaped(<lightningcraft:charging_plate>, [[<lightningcraft:plate:7>,<lightningcraft:plate:7>,<lightningcraft:plate:7>],[<lightningcraft:ingot:1>,<minecraft:heavy_weighted_pressure_plate>,<lightningcraft:ingot:1>]]);

# Electricium Sword
recipes.remove(<lightningcraft:elec_sword>);
recipes.addShaped(<lightningcraft:elec_sword>, [[<lightningcraft:ingot>],[<lightningcraft:ingot>],[<bewitchment:cold_iron_sword>]]);

# Electricium Pickaxe
recipes.remove(<lightningcraft:elec_pick>);
#recipes.addShaped(<lightningcraft:elec_pick>, [[<lightningcraft:ingot>,<lightningcraft:ingot>,<lightningcraft:ingot>],[null,<bewitchment:cold_iron_pickaxe>,null],[null,<lightningcraft:rod:7>,null]]);

# Electricium Shovel
recipes.remove(<lightningcraft:elec_shovel>);
#recipes.addShaped(<lightningcraft:elec_shovel>, [[<lightningcraft:ingot>],[<bewitchment:cold_iron_shovel>],[<lightningcraft:rod:7>]]);

# Electricium Axe
recipes.remove(<lightningcraft:elec_axe>);
#recipes.addShapedMirrored(<lightningcraft:elec_axe>, [[<lightningcraft:ingot>,<lightningcraft:ingot>],[<lightningcraft:ingot>,<bewitchment:cold_iron_axe>],[null,<lightningcraft:rod:7>]]);

# Electricium Hoe
recipes.remove(<lightningcraft:elec_hoe>);
#recipes.addShapedMirrored(<lightningcraft:elec_hoe>, [[<lightningcraft:ingot>,<lightningcraft:ingot>],[null,<bewitchment:cold_iron_hoe>],[null,<lightningcraft:rod:7>]]);

# Electricium Hammer
recipes.remove(<lightningcraft:elec_hammer>);
#recipes.addShaped(<lightningcraft:elec_hammer>, [[<lightningcraft:plate:7>,<lightningcraft:plate:7>,<lightningcraft:plate:7>],[<lightningcraft:plate:7>,<lightningcraft:elec_sword>,<lightningcraft:plate:7>],[null,<lightningcraft:rod:7>,null]]);

# Electricium Helmet
recipes.remove(<lightningcraft:elec_helm>);
recipes.addShaped(<lightningcraft:elec_helm>, [[<lightningcraft:ingot>,<lightningcraft:ingot>,<lightningcraft:ingot>],[<lightningcraft:ingot>,<bewitchment:cold_iron_helmet>,<lightningcraft:ingot>]]);

# Electricium Chestplate
recipes.remove(<lightningcraft:elec_chest>);
recipes.addShaped(<lightningcraft:elec_chest>, [[<lightningcraft:ingot>,<bewitchment:cold_iron_chestplate>,<lightningcraft:ingot>],[<lightningcraft:ingot>,<lightningcraft:ingot>,<lightningcraft:ingot>],[<lightningcraft:ingot>,<lightningcraft:ingot>,<lightningcraft:ingot>]]);

# Electricium Leggings
recipes.remove(<lightningcraft:elec_legs>);
recipes.addShaped(<lightningcraft:elec_legs>, [[<lightningcraft:ingot>,<lightningcraft:ingot>,<lightningcraft:ingot>],[<lightningcraft:ingot>,<bewitchment:cold_iron_leggings>,<lightningcraft:ingot>],[<lightningcraft:ingot>,null,<lightningcraft:ingot>]]);

# Electricium Boots
recipes.remove(<lightningcraft:elec_boots>);
recipes.addShaped(<lightningcraft:elec_boots>, [[<lightningcraft:ingot>,null,<lightningcraft:ingot>],[<lightningcraft:ingot>,<bewitchment:cold_iron_boots>,<lightningcraft:ingot>]]);

function addLightningCraftToolRecipes(new_item_str as string, old_item_str as string, new_material as IIngredient, new_rod as IIngredient, new_plate as IIngredient) {

	# Skyfather & Mystic Sword
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_sword"));
	recipes.addShaped(itemUtils.getItem("lightningcraft:" + new_item_str + "_sword"), [[new_material],[new_material],[itemUtils.getItem("lightningcraft:" + old_item_str + "_sword")]]);

	# Skyfather & Mystic Pickaxe
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_pick"));
	#recipes.addShaped(itemUtils.getItem("lightningcraft:" + new_item_str + "_pick"), [[new_material,new_material,new_material],[null,itemUtils.getItem("lightningcraft:" + old_item_str + "_pick"),null],[null,new_rod,null]]);

	# Skyfather & Mystic Shovel
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_shovel"));
	#recipes.addShaped(itemUtils.getItem("lightningcraft:" + new_item_str + "_shovel"), [[new_material],[itemUtils.getItem("lightningcraft:" + old_item_str + "_shovel")],[new_rod]]);

	# Skyfather & Mystic Axe
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_axe"));
	#recipes.addShapedMirrored(itemUtils.getItem("lightningcraft:" + new_item_str + "_axe"), [[new_material,new_material],[new_material,itemUtils.getItem("lightningcraft:" + old_item_str + "_axe")],[null,new_rod]]);

	# Skyfather & Mystic Hoe
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_hoe"));
	#recipes.addShapedMirrored(itemUtils.getItem("lightningcraft:" + new_item_str + "_hoe"), [[new_material,new_material],[null,itemUtils.getItem("lightningcraft:" + old_item_str + "_hoe")],[null,new_rod]]);

	# Skyfather & Mystic Hammer
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_hammer"));
	#recipes.addShaped(itemUtils.getItem("lightningcraft:" + new_item_str + "_hammer"), [[new_plate,new_plate,new_plate],[new_plate,itemUtils.getItem("lightningcraft:" + new_item_str + "_sword"),new_plate],[null,new_rod,null]]);

}

function addLightningCraftArmorRecipes(new_item_str as string, old_item_str as string, new_material as IIngredient) {

	# Mystic Helmet
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_helm"));
	recipes.addShaped(itemUtils.getItem("lightningcraft:" + new_item_str + "_helm"), [[new_material,new_material,new_material],[new_material,itemUtils.getItem("lightningcraft:" + old_item_str + "_helm"),new_material]]);

	# Mystic Chestplate
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_chest"));
	recipes.addShaped(itemUtils.getItem("lightningcraft:" + new_item_str + "_chest"), [[new_material,itemUtils.getItem("lightningcraft:" + old_item_str + "_chest"),new_material],[new_material,new_material,new_material],[new_material,new_material,new_material]]);

	# Mystic Leggings
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_legs"));
	recipes.addShaped(itemUtils.getItem("lightningcraft:" + new_item_str + "_legs"), [[new_material,new_material,new_material],[new_material,itemUtils.getItem("lightningcraft:" + old_item_str + "_legs"),new_material],[new_material,null,new_material]]);

	# Mystic Boots
	recipes.remove(itemUtils.getItem("lightningcraft:" + new_item_str + "_boots"));
	recipes.addShaped(itemUtils.getItem("lightningcraft:" + new_item_str + "_boots"), [[new_material,null,new_material],[new_material,itemUtils.getItem("lightningcraft:" + old_item_str + "_boots"),new_material]]);

}

# Skyfather Tools & Armor
addLightningCraftToolRecipes("sky", "elec", <lightningcraft:ingot:1>, <lightningcraft:rod:8>, <lightningcraft:plate:8>);
addLightningCraftArmorRecipes("sky", "elec", <lightningcraft:ingot:1>);

# Mystic Armor
LightningInfusion.remove(<lightningcraft:mystic_helm>);
LightningInfusion.remove(<lightningcraft:mystic_chest>);
LightningInfusion.remove(<lightningcraft:mystic_legs>);
LightningInfusion.remove(<lightningcraft:mystic_boots>);
addLightningCraftArmorRecipes("mystic", "sky", <lightningcraft:ingot:2>);

# Removing Mystic Tools (incredibly buggy)
LightningInfusion.remove(<lightningcraft:mystic_hammer>);
LightningInfusion.remove(<lightningcraft:mystic_pick>);
LightningInfusion.remove(<lightningcraft:mystic_shovel>);
LightningInfusion.remove(<lightningcraft:mystic_axe>);
LightningInfusion.remove(<lightningcraft:mystic_hoe>);

# Add Electricium to Modular Machine
RecipeBuilder.newBuilder("electricium_ingot_recipe", "lightningcraft_infusion_multiblock", 300)
	.addEnergyPerTickInput(1000)
	.addItemInput(<minecraft:diamond>)
	.addItemInput(<minecraft:iron_ingot>)
	.addItemInput(<minecraft:gold_ingot>)
	.addItemOutput(<lightningcraft:ingot:0>)
	.build();

RecipeBuilder.newBuilder("electricium_block_recipe", "lightningcraft_infusion_multiblock", 300)
	.addEnergyPerTickInput(1000)
	.addItemInput(<ore:blockDiamond>)
	.addItemInput(<minecraft:iron_block>)
	.addItemInput(<minecraft:gold_block>)
	.addItemOutput(<lightningcraft:metal_block:0>)
	.build();

# Add weapons to Modular Machine
RecipeBuilder.newBuilder("soul_sword", "lightningcraft_infusion_multiblock", 300)
    .addEnergyPerTickInput(5000)
    .addItemInput(<minecraft:stone_sword>)
    .addItemInput(<minecraft:soul_sand> * 4)
    .addItemOutput(<lightningcraft:soul_sword>)
    .build();

RecipeBuilder.newBuilder("zombie_sword", "lightningcraft_infusion_multiblock", 300)
    .addEnergyPerTickInput(5000)
    .addItemInput(<minecraft:stone_sword>)
    .addItemInput(<minecraft:rotten_flesh> * 4)
    .addItemOutput(<lightningcraft:zombie_sword>)
    .build();

RecipeBuilder.newBuilder("feather_sword", "lightningcraft_infusion_multiblock", 300)
    .addEnergyPerTickInput(5000)
    .addItemInput(<minecraft:stone_sword>)
    .addItemInput(<minecraft:feather> * 4)
    .addItemOutput(<lightningcraft:feather_sword>)
    .build();

RecipeBuilder.newBuilder("ender_sword", "lightningcraft_infusion_multiblock", 300)
    .addEnergyPerTickInput(5000)
    .addItemInput(<minecraft:stone_sword>)
    .addItemInput(<minecraft:ender_pearl> * 4)
    .addItemOutput(<lightningcraft:ender_sword>)
    .build();

RecipeBuilder.newBuilder("blaze_sword", "lightningcraft_infusion_multiblock", 300)
    .addEnergyPerTickInput(5000)
    .addItemInput(<minecraft:stone_sword>)
    .addItemInput(<minecraft:blaze_rod> * 4)
    .addItemOutput(<lightningcraft:blaze_sword>)
    .build();

RecipeBuilder.newBuilder("ice_sword", "lightningcraft_infusion_multiblock", 300)
    .addEnergyPerTickInput(5000)
    .addItemInput(<minecraft:stone_sword>)
    .addItemInput(<minecraft:packed_ice> * 4)
    .addItemOutput(<lightningcraft:ice_sword>)
    .build();

RecipeBuilder.newBuilder("mystic_sword", "lightningcraft_infusion_multiblock", 300)
    .addEnergyPerTickInput(5000)
    .addItemInput(<lightningcraft:sky_sword>)
    .addItemInput(<lightningcraft:dust:2> * 4)
    .addItemOutput(<lightningcraft:mystic_sword>)
    .build();

# Removing excess Lightning Infuser recipes
LightningInfusion.remove(<minecraft:deadbush>);
LightningInfusion.remove(<minecraft:clay>);
LightningInfusion.remove(<minecraft:sponge>);
LightningInfusion.remove(<minecraft:packed_ice>);
LightningInfusion.remove(<minecraft:mossy_cobblestone>);
LightningInfusion.remove(<minecraft:bookshelf>);
LightningInfusion.remove(<minecraft:quartz>);
LightningInfusion.remove(<minecraft:diamond>);
LightningInfusion.remove(<minecraft:emerald>);
LightningInfusion.remove(<minecraft:lava_bucket>);
LightningInfusion.remove(<minecraft:netherrack>);
LightningInfusion.remove(<minecraft:nether_brick>);
LightningInfusion.remove(<minecraft:nether_wart>);

# Kinetic Armor and Tools (don't work)
recipes.remove(<lightningcraft:kinetic_helm>);
recipes.remove(<lightningcraft:kinetic_chest>);
recipes.remove(<lightningcraft:kinetic_legs>);
recipes.remove(<lightningcraft:kinetic_boots>);
recipes.remove(<lightningcraft:kinetic_sword>);
recipes.remove(<lightningcraft:kinetic_pick>);
recipes.remove(<lightningcraft:kinetic_axe>);
recipes.remove(<lightningcraft:kinetic_shovel>);

# RF Lightning Generator
recipes.remove(<lightningcraft:rf_receiver>);
mods.extendedcrafting.TableCrafting.addShaped(<lightningcraft:rf_receiver>,
[[<galacticraftcore:basic_item:14>,<galacticraftplanets:basic_item_venus:6>,null,null,null,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:basic_item:14>],
[<galacticraftplanets:basic_item_venus:6>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<galacticraftplanets:basic_item_venus:6>],
[null,<contenttweaker:tough_galactic_plating>,<quantumflux:craftingpiece:4>,<mekanism:basicblock2:5>,<quantumflux:craftingpiece:4>,<contenttweaker:tough_galactic_plating>,null],
[null,<contenttweaker:tough_galactic_plating>,<mekanism:basicblock2:5>,<lightningcraft:static_generator>,<mekanism:basicblock2:5>,<contenttweaker:tough_galactic_plating>,null],
[null,<contenttweaker:tough_galactic_plating>,<quantumflux:craftingpiece:4>,<mekanism:basicblock2:5>,<quantumflux:craftingpiece:4>,<contenttweaker:tough_galactic_plating>,null],
[<galacticraftplanets:basic_item_venus:6>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<contenttweaker:tough_galactic_plating>,<galacticraftplanets:basic_item_venus:6>],
[<galacticraftcore:basic_item:14>,<galacticraftplanets:basic_item_venus:6>,null,null,null,<galacticraftplanets:basic_item_venus:6>,<galacticraftcore:basic_item:14>]]);

# Molten Mystic
mods.thermalexpansion.Crucible.addRecipe(<liquid:mystic> * 1296, <lightningcraft:metal_block:2>, 32000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:mystic> * 144, <lightningcraft:ingot:2>, 8000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:mystic> * 144, <lightningcraft:dust:2>, 8000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:mystic> * 144, <lightningcraft:rod:9>, 8000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:mystic> * 144, <lightningcraft:plate:9>, 8000);

# Creative Lightning Cell
mods.extendedcrafting.TableCrafting.addShaped(0, <lightningcraft:lightning_cell:3>,
[[<bigreactors:blockblutonium>, <bigreactors:blockblutonium>, <lightningcraft:rf_receiver>, <bigreactors:blockblutonium>, <bigreactors:blockblutonium>],
[<bigreactors:blockblutonium>, <astralsorcery:iteminfusedglass>, <lightningcraft:lightning_cell:2>, <astralsorcery:iteminfusedglass>, <bigreactors:blockblutonium>],
[<lightningcraft:rf_receiver>, <lightningcraft:lightning_cell:2>, <integrateddynamics:creative_energy_battery>, <lightningcraft:lightning_cell:2>, <lightningcraft:rf_receiver>],
[<bigreactors:blockblutonium>, <astralsorcery:iteminfusedglass>, <lightningcraft:lightning_cell:2>, <astralsorcery:iteminfusedglass>, <bigreactors:blockblutonium>],
[<bigreactors:blockblutonium>, <bigreactors:blockblutonium>, <lightningcraft:rf_receiver>, <bigreactors:blockblutonium>, <bigreactors:blockblutonium>]]);

print("ENDING LightningCraft.zs");
