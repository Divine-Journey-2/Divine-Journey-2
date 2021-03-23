# Author: Atricos
# Look at the recipes in JEI with the F3 screen open to get their internal names.

import mods.astralsorcery.Altar;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;

print("STARTING AstralSorcery.zs");

# Astral Tome
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/journal");
recipes.remove(<astralsorcery:itemjournal>);
recipes.addShaped(<astralsorcery:itemjournal>, [[<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:5>],[<astralsorcery:itemcraftingcomponent:5>,<minecraft:book>,<astralsorcery:itemcraftingcomponent:5>],[<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:5>]]);

# Parchment
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/cc_parchment");
recipes.remove(<astralsorcery:itemcraftingcomponent:5>);
recipes.addShaped(<astralsorcery:itemcraftingcomponent:5> * 8, [[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],[<minecraft:paper>,<bigreactors:ingotblutonium>,<minecraft:paper>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

# Rock Crystal Ore
mods.thermalexpansion.InductionSmelter.addRecipe(<astralsorcery:blockcustomore>, <minecraft:stone>, <contenttweaker:shattered_mystical_iron_crystal>, 8000);

# Marbles in general
for i in 0 to 7 {
	<ore:blockMarble>.remove(<astralsorcery:blockmarble>.withDamage(i));
	<ore:stoneMarble>.remove(<astralsorcery:blockmarble>.withDamage(i));
	mods.chisel.Carving.removeVariation("marble", <astralsorcery:blockmarble>.withDamage(i));
}

# Marble Bricks
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_bricks");
recipes.remove(<astralsorcery:blockmarble:1>);
recipes.addShaped(<astralsorcery:blockmarble:1> * 4, [[null,<ore:stoneMarble>,null],[<ore:stoneMarble>,<lightningcraft:stone_block:1>,<ore:stoneMarble>],[null,<ore:stoneMarble>,null]]);

# Marble Pillar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_pillar");
recipes.remove(<astralsorcery:blockmarble:2>);
recipes.addShaped(<astralsorcery:blockmarble:2> * 2, [[<ore:stoneMarble>],[<thaumicaugmentation:stone:8>],[<ore:stoneMarble>]]);

# Marble Arch
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_arch");
recipes.remove(<astralsorcery:blockmarble:3>);
recipes.addShaped(<astralsorcery:blockmarble:3> * 3, [[null,<ore:stoneMarble>,null],[<ore:stoneMarble>,<botania:rune:4>,<ore:stoneMarble>]]);

# Chiseled Marble
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_chiseled");
recipes.remove(<astralsorcery:blockmarble:4>);
recipes.addShaped(<astralsorcery:blockmarble:4> * 4, [[<ore:stoneMarble>,null,<ore:stoneMarble>],[null,<contenttweaker:shattered_mystical_iron_crystal>,null],[<ore:stoneMarble>,null,<ore:stoneMarble>]]);

# Engraved Marble
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_engraved");
recipes.remove(<astralsorcery:blockmarble:5>);
recipes.addShaped(<astralsorcery:blockmarble:5> * 4, [[null,<ore:stoneMarble>,null],[<ore:stoneMarble>,<ore:engravedAbyssalCoin>,<ore:stoneMarble>],[null,<ore:stoneMarble>,null]]);

# Runed Marble
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_runed");
recipes.remove(<astralsorcery:blockmarble:6>);
recipes.addShaped(<astralsorcery:blockmarble:6> * 4, [[null,<ore:stoneMarble>,null],[<ore:stoneMarble>,<bloodmagic:blood_rune:8>,<ore:stoneMarble>],[null,<ore:stoneMarble>,null]]);

# Sooty Marble
mods.chisel.Carving.removeGroup("sooty_marble");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_black_raw");
recipes.remove(<astralsorcery:blockblackmarble>);
mods.thermalexpansion.Transposer.addFillRecipe(<ore:stoneMarble>.firstItem, <astralsorcery:blockmarble>, <liquid:skyfather> * 18, 2000);

# Sooty Marble Bricks
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_bricks");
recipes.remove(<astralsorcery:blockblackmarble:1>);
recipes.addShaped(<astralsorcery:blockblackmarble:1> * 4, [[null,<astralsorcery:blockblackmarble>,null],[<astralsorcery:blockblackmarble>,<lightningcraft:stone_block:1>,<astralsorcery:blockblackmarble>],[null,<astralsorcery:blockblackmarble>,null]]);

# Sooty Marble Pillar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_pillar");
recipes.remove(<astralsorcery:blockblackmarble:2>);
recipes.addShaped(<astralsorcery:blockblackmarble:2> * 2, [[<astralsorcery:blockblackmarble>],[<thaumicaugmentation:stone:8>],[<astralsorcery:blockblackmarble>]]);

# Sooty Marble Arch
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_arch");
recipes.remove(<astralsorcery:blockblackmarble:3>);
recipes.addShaped(<astralsorcery:blockblackmarble:3> * 3, [[null,<astralsorcery:blockblackmarble>,null],[<astralsorcery:blockblackmarble>,<botania:rune:4>,<astralsorcery:blockblackmarble>]]);

# Chiseled Sooty Marble
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_chiseled");
recipes.remove(<astralsorcery:blockblackmarble:4>);
recipes.addShaped(<astralsorcery:blockblackmarble:4> * 4, [[<astralsorcery:blockblackmarble>,null,<astralsorcery:blockblackmarble>],[null,<contenttweaker:shattered_mystical_iron_crystal>,null],[<astralsorcery:blockblackmarble>,null,<astralsorcery:blockblackmarble>]]);

# Engraved Sooty Marble
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_engraved");
recipes.remove(<astralsorcery:blockblackmarble:5>);
recipes.addShaped(<astralsorcery:blockblackmarble:5> * 4, [[null,<astralsorcery:blockblackmarble>,null],[<astralsorcery:blockblackmarble>,<ore:engravedAbyssalCoin>,<astralsorcery:blockblackmarble>],[null,<astralsorcery:blockblackmarble>,null]]);

# Runed Sooty Marble
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/black_marble_runed");
recipes.remove(<astralsorcery:blockblackmarble:6>);
recipes.addShaped(<astralsorcery:blockblackmarble:6> * 4, [[null,<astralsorcery:blockblackmarble>,null],[<astralsorcery:blockblackmarble>,<bloodmagic:blood_rune:8>,<astralsorcery:blockblackmarble>],[null,<astralsorcery:blockblackmarble>,null]]);

# Luminous Crafting Table
recipes.remove(<astralsorcery:blockaltar>);
mods.extendedcrafting.TableCrafting.addShaped(<astralsorcery:blockaltar>,
[[<astralsorcery:blockmarble:6>,<extendedcrafting:table_basic>,<extendedcrafting:table_basic>,<extendedcrafting:table_basic>,<extendedcrafting:table_basic>,<extendedcrafting:table_basic>,<astralsorcery:blockmarble:6>],
[<astralsorcery:blockmarble:6>,<bigreactors:ingotblutonium>,<extendedcrafting:table_basic>,<extendedcrafting:table_basic>,<extendedcrafting:table_basic>,<bigreactors:ingotblutonium>,<astralsorcery:blockmarble:6>],
[null,<astralsorcery:blockmarble:6>,<bigreactors:ingotblutonium>,<contenttweaker:condensed_vis_crystal_stellae>,<bigreactors:ingotblutonium>,<astralsorcery:blockmarble:6>,null],
[null,null,<bigreactors:ingotblutonium>,<contenttweaker:condensed_vis_crystal_stellae>,<bigreactors:ingotblutonium>,null,null],
[null,null,<bigreactors:ingotblutonium>,<contenttweaker:condensed_vis_crystal_stellae>,<bigreactors:ingotblutonium>,null,null],
[null,null,<bigreactors:ingotblutonium>,<contenttweaker:condensed_vis_crystal_stellae>,<bigreactors:ingotblutonium>,null,null],
[<lightningcraft:ingot:2>,<lightningcraft:ingot:2>,<lightningcraft:ingot:2>,<lightningcraft:ingot:2>,<lightningcraft:ingot:2>,<lightningcraft:ingot:2>,<lightningcraft:ingot:2>]]);

# Resonating Wand
recipes.remove(<astralsorcery:itemwand>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
mods.extendedcrafting.TableCrafting.addShaped(<astralsorcery:blockaltar>,
[[null,null,null,null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>],
[null,null,null,null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>],
[null,null,null,null,<bigreactors:ingotblutonium>,null,null],
[null,null,null,<astralsorcery:blockmarble:5>,null,null,null],
[null,null,<lightningcraft:ingot:2>,null,null,null,null],
[null,<lightningcraft:ingot:2>,null,null,null,null,null],
[<astralsorcery:blockmarble:5>,null,null,null,null,null,null]]);

print("ENDING AstralSorcery.zs");