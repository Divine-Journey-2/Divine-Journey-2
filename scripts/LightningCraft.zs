# Author: Atricos

import mods.immersiveengineering.MetalPress;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import moretweaker.lightningcraft.LightningInfusion;
import mods.thaumcraft.Infusion;

print("STARTING LightningCraft.zs");

# Copper Rod
recipes.remove(<lightningcraft:rod:6>);
recipes.addShaped(<lightningcraft:rod:6>, [[<ore:ingotCopper>],[<ore:ingotCopper>]]);
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
<lightningcraft:ingot>.addTooltip(format.white("strinking a piece of Diamond, Gold"));
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
recipes.addShaped(<lightningcraft:stone_block> * 4, [[<bewitchment:scorned_bricks>,<lightningcraft:ingot>,<bewitchment:scorned_bricks>],[<lightningcraft:ingot>,<bloodmagic:slate:4>,<lightningcraft:ingot>],[<bewitchment:scorned_bricks>,<lightningcraft:ingot>,<bewitchment:scorned_bricks>]]);

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
<lightningcraft:material:5>.addTooltip(format.white("Dropped by Demon Soliders spawning"));
<lightningcraft:material:5>.addTooltip(format.white("naturally in the Nether."));

# Ichor
<lightningcraft:material:11>.addTooltip(format.white("Created by striking Demon Blood,"));
<lightningcraft:material:11>.addTooltip(format.white("Skyfather Ingot and an Emerald"));
<lightningcraft:material:11>.addTooltip(format.white("on the ground with lightning."));

# Demonstone
LightningInfusion.remove(<lightningcraft:stone_block:3>);
mods.thaumcraft.Infusion.registerRecipe("lightningcraft:demonstone", "", <lightningcraft:stone_block:3>, 6, [<aspect:diabolus> * 40,<aspect:terra> * 20,<aspect:ignis> * 10,<aspect:vitreus> * 10], <lightningcraft:stone_block>, [<lightningcraft:material:5>,<bewitchment:demonic_elixir>,<lightningcraft:material:5>,<bewitchment:demonic_elixir>,<lightningcraft:material:5>,<bewitchment:demonic_elixir>,<lightningcraft:material:5>,<bewitchment:demonic_elixir>]);

# Underworld Charge
LightningInfusion.remove(<lightningcraft:material:6>);
mods.thaumcraft.Infusion.registerRecipe("lightningcraft:underworld_charge", "", <lightningcraft:material:6>, 8, [<aspect:diabolus> * 250,<aspect:tenebrae> * 250,<aspect:potentia> * 250,<aspect:ignis> * 250,<aspect:perditio> * 250], <evilcraft:inverted_potentia>, [<contenttweaker:condensed_vis_crystal_diabolus>,<contenttweaker:condensed_vis_crystal_potentia>,<lightningcraft:stone_block:3>,<contenttweaker:condensed_vis_crystal_diabolus>,<contenttweaker:condensed_vis_crystal_potentia>,<lightningcraft:stone_block:3>]);

# Underpowder
<lightningcraft:material:12>.addTooltip(format.white("Dropped by Undercreeps in the Underworld."));

# Guard's Bone
<lightningcraft:material:7>.addTooltip(format.white("Dropped by Skeleton Guards in the Underworld."));

# Mystic Ingot
LightningInfusion.remove(<lightningcraft:material:6>);
LightningInfusion.add(<lightningcraft:ingot:6>, <lightningcraft:stone_block:3>, 160, [<lightningcraft:material:11>,<lightningcraft:material:13>,<lightningcraft:material:11>,<lightningcraft:material:13>]);

print("ENDING LightningCraft.zs");