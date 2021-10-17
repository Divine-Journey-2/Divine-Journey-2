# Author: Atricos

import crafttweaker.item.IItemStack;

print("STARTING OpenBlocks.zs");

# Glider Wings
recipes.remove(<openblocks:generic>);
recipes.addShapedMirrored(<openblocks:generic>, [[null,<immersiveengineering:material>,<contenttweaker:industrial_leather>],[<immersiveengineering:material>,<contenttweaker:industrial_leather>,<contenttweaker:industrial_leather>],[<contenttweaker:industrial_leather>,<contenttweaker:industrial_leather>,<contenttweaker:industrial_leather>]]);

# Hang Glider
recipes.remove(<openblocks:hang_glider>);
recipes.addShaped(<openblocks:hang_glider>, [[<openblocks:generic>,<immersiveengineering:material>,<openblocks:generic>]]);

# Sleeping Bag
recipes.remove(<openblocks:sleeping_bag>);
recipes.addShaped(<openblocks:sleeping_bag>, [[<minecraft:carpet:*>,<minecraft:carpet:*>,<minecraft:carpet:*>],[<ore:blockWool>,<ore:blockWool>,<ore:blockWool>],[<totemic:buffalo_items>,<totemic:buffalo_items>,<totemic:buffalo_items>]]);

# Vacuum Hopper
recipes.remove(<openblocks:vacuum_hopper>);
recipes.addShaped(<openblocks:vacuum_hopper>, [[<minecraft:obsidian>,<minecraft:ender_pearl>,<minecraft:obsidian>],[<contenttweaker:open_ingot>,<minecraft:hopper>,<contenttweaker:open_ingot>],[<minecraft:obsidian>,<minecraft:ender_pearl>,<minecraft:obsidian>]]);
recipes.addShaped(<openblocks:vacuum_hopper>, [[<minecraft:obsidian>,<contenttweaker:open_ingot>,<minecraft:obsidian>],[<minecraft:ender_pearl>,<minecraft:hopper>,<minecraft:ender_pearl>],[<minecraft:obsidian>,<contenttweaker:open_ingot>,<minecraft:obsidian>]]);

# Fan
recipes.remove(<openblocks:fan>);
recipes.addShaped(<openblocks:fan>, [[null,<contenttweaker:open_ingot>,null],[<contenttweaker:open_ingot>,<thermalfoundation:material:24>,<contenttweaker:open_ingot>],[<minecraft:stone_slab>,<minecraft:stone_slab>,<minecraft:stone_slab>]]);

# Auto Enchantment Table
recipes.remove(<openblocks:auto_enchantment_table>);
recipes.addShaped(<openblocks:auto_enchantment_table>, [[<contenttweaker:open_block>,<minecraft:lapis_block>,<contenttweaker:open_block>],[<extrautils2:decorativesolidwood:1>,<minecraft:enchanting_table>,<extrautils2:decorativesolidwood:1>],[<extrautils2:decorativesolid:7>,<extrautils2:decorativesolid:7>,<extrautils2:decorativesolid:7>]]);

# Auto Anvil
recipes.remove(<openblocks:auto_anvil>);
recipes.addShaped(<openblocks:auto_anvil>, [[<contenttweaker:open_block>,<contenttweaker:open_block>,<contenttweaker:open_block>],[<extrautils2:decorativesolidwood:1>,<minecraft:anvil>,<extrautils2:decorativesolidwood:1>],[<minecraft:iron_block>,<minecraft:iron_block>,<minecraft:iron_block>]]);

# Item Dropper
recipes.remove(<openblocks:item_dropper>);
recipes.addShaped(<openblocks:item_dropper>, [[<extrautils2:decorativesolid:3>,<contenttweaker:open_ingot>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<minecraft:dropper>,<extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>,<minecraft:hopper>,<extrautils2:decorativesolid:3>]]);

# Village Highlighter
recipes.remove(<openblocks:village_highlighter>);
recipes.addShaped(<openblocks:village_highlighter>, [[<ore:logWood>,<minecraft:emerald>,<ore:logWood>],[<minecraft:emerald>,<contenttweaker:open_ingot>,<minecraft:emerald>],[<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]]);

# XP Bottler
recipes.remove(<openblocks:xp_bottler>);
recipes.addShaped(<openblocks:xp_bottler>, [[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<extrautils2:suncrystal>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>]]);

# Slimalizer
recipes.remove(<openblocks:slimalyzer>);
recipes.addShaped(<openblocks:slimalyzer>, [[null,<contenttweaker:open_ingot>,null],[<contenttweaker:open_ingot>,<ore:slimeball>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<ore:ingotRedAlloy>,<contenttweaker:open_ingot>]]);

# Assistant's base
recipes.remove(<openblocks:generic:9>);
recipes.addShaped(<openblocks:generic:9>, [[<contenttweaker:open_ingot>,<minecraft:ender_pearl>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<ore:ingotRedAlloy>,<contenttweaker:open_ingot>]]);

# Height Map Projector
recipes.remove(<openblocks:projector>);
recipes.addShaped(<openblocks:projector>, [[<ore:ingotRedAlloy>,<extrautils2:screen>,<ore:ingotRedAlloy>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<minecraft:stone_slab>,<minecraft:stone_slab>,<minecraft:stone_slab>]]);

# Sponge
recipes.remove(<openblocks:sponge>);
recipes.addShapeless(<openblocks:sponge>, [<minecraft:sponge>,<contenttweaker:open_ingot>,<ore:slimeball>]);

# Building Guide
recipes.remove(<openblocks:guide>);
recipes.addShaped(<openblocks:guide>, [[<contenttweaker:open_ingot>,<ore:blockGlassColorless>,<contenttweaker:open_ingot>],[<ore:blockGlassColorless>,<minecraft:glowstone>,<ore:blockGlassColorless>],[<contenttweaker:open_ingot>,<ore:blockGlassColorless>,<contenttweaker:open_ingot>]]);

# Enhanced Building Guide
recipes.remove(<openblocks:builder_guide>);
recipes.addShaped(<openblocks:builder_guide>, [[<contenttweaker:open_block>,<ore:blockGlassColorless>,<contenttweaker:open_block>],[<ore:blockGlassColorless>,<openblocks:guide>,<ore:blockGlassColorless>],[<contenttweaker:open_block>,<ore:blockGlassColorless>,<contenttweaker:open_block>]]);

# Big Stone Button
recipes.remove(<openblocks:big_button>);
recipes.addShaped(<openblocks:big_button>, [[<minecraft:stone_button>,<minecraft:stone_button>],[<minecraft:stone_button>,<minecraft:stone_button>]]);

# Big Wooden Button
recipes.remove(<openblocks:big_button_wood>);
recipes.addShaped(<openblocks:big_button_wood>, [[<ore:buttonWood>,<ore:buttonWood>],[<ore:buttonWood>,<ore:buttonWood>]]);

# Bear Trap
recipes.remove(<openblocks:beartrap>);
recipes.addShaped(<openblocks:beartrap>, [[<mob_grinding_utils:spikes>,<ore:blockSlime>,<mob_grinding_utils:spikes>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>]]);

# Sprinkler
recipes.remove(<openblocks:sprinkler>);
recipes.addShaped(<openblocks:sprinkler>, [[<minecraft:gold_ingot>,<contenttweaker:open_ingot>,<minecraft:gold_ingot>],[<minecraft:iron_bars>,<minecraft:potion>.withTag({Potion: "minecraft:water"}),<minecraft:iron_bars>],[<minecraft:gold_ingot>,<contenttweaker:open_ingot>,<minecraft:gold_ingot>]]);

# Item Cannon
recipes.remove(<openblocks:cannon>);
recipes.addShaped(<openblocks:cannon>, [[<contenttweaker:open_block>,<contenttweaker:open_block>,<openblocks:item_dropper>],[<contenttweaker:open_block>,<actuallyadditions:block_misc:6>,null],[<immersiveengineering:treated_wood>,<immersiveengineering:treated_wood>,<immersiveengineering:treated_wood>]]);

# Golden Egg
recipes.remove(<openblocks:golden_egg>);
recipes.addShaped(<openblocks:golden_egg>, [[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<minecraft:gold_block>,<minecraft:egg>,<minecraft:gold_block>],[<minecraft:gold_block>,<minecraft:gold_block>,<minecraft:gold_block>]]);

# Beam
recipes.remove(<openblocks:generic:1>);
recipes.addShapedMirrored(<openblocks:generic:1>, [[null,<contenttweaker:open_ingot>,<extrautils2:decorativesolid:7>],[<contenttweaker:open_ingot>,<minecraft:gold_ingot>,<contenttweaker:open_ingot>],[<extrautils2:decorativesolid:7>,<contenttweaker:open_ingot>,null]]);

# Crane Engine
recipes.remove(<openblocks:generic:2>);
recipes.addShaped(<openblocks:generic:2>, [[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<ore:ingotRedAlloy>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<extrautils2:machine>.withTag(null),<contenttweaker:open_ingot>]]);

# Crane Magnet
recipes.remove(<openblocks:generic:3>);
recipes.addShaped(<openblocks:generic:3>, [[null,<erebus:materials:13>,null],[<erebus:materials:13>,<erebus:materials:13>,<erebus:materials:13>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>]]);

# Line
recipes.remove(<openblocks:generic:5>);
recipes.addShaped(<openblocks:generic:5>, [[<contenttweaker:open_ingot>,<ore:slimeball>,<contenttweaker:open_ingot>],[<immersiveengineering:material:5>,<immersiveengineering:material:5>,<immersiveengineering:material:5>],[<contenttweaker:open_ingot>,<ore:slimeball>,<contenttweaker:open_ingot>]]);

# Crane Control
recipes.remove(<openblocks:crane_control>);
recipes.addShaped(<openblocks:crane_control>, [[<openblocks:generic:1>,<contenttweaker:open_ingot>,<openblocks:generic:1>],[<openblocks:generic:1>,<extrautils2:machine>.withTag(null),<openblocks:generic:1>],[<openblocks:generic:1>,<contenttweaker:open_ingot>,<openblocks:generic:1>]]);

# Crane Backpack
recipes.remove(<openblocks:crane_backpack>);
recipes.addShaped(<openblocks:crane_backpack>, [[<openblocks:generic:3>,<openblocks:generic:2>,<openblocks:generic:3>],[<contenttweaker:industrial_leather>,<openblocks:generic:5>,<contenttweaker:industrial_leather>],[<openblocks:generic:5>,null,<openblocks:generic:5>]]);

# Squeegee
recipes.remove(<openblocks:squeegee>);
recipes.addShaped(<openblocks:squeegee>, [[<minecraft:sponge>,<minecraft:sponge>,<minecraft:sponge>],[null,<minecraft:emerald>,null],[null,<minecraft:emerald>,null]]);

# Golden Eye
recipes.remove(<openblocks:golden_eye:100>);
# Ender Pearl repair?
recipes.addShaped(<openblocks:golden_eye:100>.withTag({}), [[<minecraft:gold_block>,<minecraft:gold_block>,<minecraft:gold_block>],[<minecraft:gold_block>,<minecraft:ender_eye>,<minecraft:gold_block>],[<minecraft:gold_block>,<minecraft:gold_block>,<minecraft:gold_block>]]);

# Pointer
recipes.remove(<openblocks:generic_unstackable>);
recipes.addShaped(<openblocks:generic_unstackable>, [[<contenttweaker:open_ingot>,null],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,null]]);

# Cursor
recipes.remove(<openblocks:cursor>);
recipes.addShaped(<openblocks:cursor>, [[<contenttweaker:open_ingot>,null,null],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>]]);

# Sponge on a Stick
recipes.remove(<openblocks:sponge_on_a_stick>);
recipes.addShapedMirrored(<openblocks:sponge_on_a_stick>, [[null,<openblocks:sponge>,<openblocks:sponge>],[null,<openblocks:sponge>,<openblocks:sponge>],[<ore:stickWood>,null,null]]);

# Epic Eraser
recipes.remove(<openblocks:epic_eraser>);
recipes.addShapedMirrored(<openblocks:epic_eraser>, [[null,<ore:slimeball>,<minecraft:lapis_block>],[<ore:woolPink>,<contenttweaker:open_ingot>,<ore:slimeball>],[<contenttweaker:open_ingot>,<ore:woolPink>,null]]);

# Block Breaker
recipes.remove(<openblocks:block_breaker>);
recipes.addShaped(<openblocks:block_breaker>, [[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<enderutilities:enderpart>,<industrialforegoing:block_destroyer>,<enderio:item_dark_steel_pickaxe>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>]]);

# Block Placer
recipes.remove(<openblocks:block_placer>);
recipes.addShaped(<openblocks:block_placer>, [[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<enderutilities:enderpart>,<industrialforegoing:block_placer>,<minecraft:dropper>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>]]);

# Elevators
for i in 0 to 16 {
	recipes.remove(<openblocks:elevator:5>.withDamage(i));
	recipes.addShaped(<openblocks:elevator:5>.withDamage(i), [[<contenttweaker:open_ingot>,<minecraft:wool>.withDamage(i),<contenttweaker:open_ingot>],[<minecraft:wool>.withDamage(i),<actuallyadditions:block_misc:6>,<minecraft:wool>.withDamage(i)],[<contenttweaker:open_ingot>,<minecraft:wool>.withDamage(i),<contenttweaker:open_ingot>]]);
	recipes.remove(<openblocks:elevator_rotating>.withDamage(i));
	recipes.addShapeless(<openblocks:elevator_rotating>.withDamage(i), [<openblocks:elevator:5>.withDamage(i), <minecraft:piston>]);
}

# /dev/null
recipes.remove(<openblocks:dev_null>);
recipes.addShaped(<openblocks:dev_null>.withTag({}), [[null,<minecraft:paper>,null],[<minecraft:paper>,<danknull:dank_null_panel_0>,<minecraft:paper>],[null,<minecraft:paper>,null]]);

print("ENDING OpenBlocks.zs");