# Author: Atricos
# Look at the recipes in JEI with the F3 screen open to get their internal names.
# Altar starlight capacity at level L = 1000 * 2^(L-1), with L = 1, 2, 3, 4.

import mods.astralsorcery.Altar;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.Utils;

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
for i in 1 to 7 {
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
mods.thermalexpansion.Transposer.addFillRecipe(<astralsorcery:blockblackmarble>, <ore:stoneMarble>.firstItem, <liquid:skyfather> * 18, 2000);

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
mods.extendedcrafting.TableCrafting.addShaped(<astralsorcery:itemwand>.withTag({astralsorcery: {}}),
[[null,null,null,null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>],
[null,null,null,null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>],
[null,null,null,null,<bigreactors:ingotblutonium>,null,null],
[null,null,null,<astralsorcery:blockmarble:5>,null,null,null],
[null,null,<lightningcraft:ingot:2>,null,null,null,null],
[null,<lightningcraft:ingot:2>,null,null,null,null,null],
[<astralsorcery:blockmarble:5>,null,null,null,null,null,null]]);

# Lightwell
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/lightwell", <astralsorcery:blockwell>, 200, 100,
[<astralsorcery:blockmarble:6>,null,<astralsorcery:blockmarble:6>,
<contenttweaker:sparkling_aquamarine>,Utils.getCrystalORIngredient(false, false),<contenttweaker:sparkling_aquamarine>,
<astralsorcery:blockmarble:3>,<bewitchment:witches_cauldron>,<astralsorcery:blockmarble:3>]);

# Starlight from Sparkling Aquamarine
mods.astralsorcery.Lightwell.addLiquefaction(<contenttweaker:sparkling_aquamarine>, <liquid:astralsorcery.liquidstarlight>, 0.4, 1.0, 33737);

# Fosic Resonator
#mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:itemskyresonator>.withTag({astralsorcery: {}}), 0);
mods.extendedcrafting.TableCrafting.addShaped(<astralsorcery:itemskyresonator>.withTag({astralsorcery: {}}),
[[null,null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,null,null],
[null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,null,null],
[null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,null,null,null],
[null,null,null,null,null,null,null],
[null,<astralsorcery:blockmarble:4>,<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}),<astralsorcery:blockmarble:4>,null],
[null,<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>,<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}),<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>,null],
[null,null,<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>,null,null]]);

# Glass Lens
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/glasslens", <astralsorcery:itemcraftingcomponent:3>, 300, 100,
[<ore:paneGlassWhite>,<mekanism:polyethene:2>,<ore:paneGlassWhite>,
<mekanism:polyethene:2>,<contenttweaker:sparkling_aquamarine>,<mekanism:polyethene:2>,
<ore:paneGlassWhite>,<mekanism:polyethene:2>,<ore:paneGlassWhite>]);

# Looking Glass
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope", <astralsorcery:itemcraftingcomponent:3>, 350, 100,
[<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockinfusedwood:4>,null,
<astralsorcery:blockinfusedwood:4>,<thaumcraft:goggles>,<astralsorcery:blockinfusedwood:4>,
null,<astralsorcery:blockinfusedwood:4>,<contenttweaker:condensed_vis_crystal_desiderium>]);

# Infused Wood Arch
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/infused_wood_arch");
recipes.remove(<astralsorcery:blockinfusedwood:3>);
recipes.addShaped(<astralsorcery:blockinfusedwood:3> * 3, [[null,<astralsorcery:blockinfusedwood>,null],[<astralsorcery:blockinfusedwood>,<botania:rune:4>,<astralsorcery:blockinfusedwood>]]);

# Engraved Infused Wood
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/infused_wood_engraved");
recipes.remove(<astralsorcery:blockinfusedwood:4>);
recipes.addShaped(<astralsorcery:blockinfusedwood:4> * 4, [[null,<astralsorcery:blockinfusedwood>,null],[<astralsorcery:blockinfusedwood>,<ore:engravedAbyssalCoin>,<astralsorcery:blockinfusedwood>],[null,<astralsorcery:blockinfusedwood>,null]]);

# Enriched Infused Wood
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/enriched_wood");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/enriched_wood", <astralsorcery:blockinfusedwood:5>, 100, 100,
[<contenttweaker:enriched_gum>,<astralsorcery:blockinfusedwood>,<contenttweaker:enriched_gum>,
<astralsorcery:blockinfusedwood>,<contenttweaker:sparkling_aquamarine>,<astralsorcery:blockinfusedwood>,
<contenttweaker:enriched_gum>,<astralsorcery:blockinfusedwood>,<contenttweaker:enriched_gum>]);

# Infused Wood Column
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/infused_wood_column");
recipes.remove(<astralsorcery:blockinfusedwood:2>);
recipes.addShaped(<astralsorcery:blockinfusedwood:2> * 2, [[<astralsorcery:blockinfusedwood>],[<thaumicaugmentation:stone:8>],[<astralsorcery:blockinfusedwood>]]);

# Grindstone
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/grindstone");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/grindstone", <astralsorcery:blockmachine:1>, 500, 100,
[<astralsorcery:blockinfusedwood:5>,<astralsorcery:blockmarble:5>,<astralsorcery:blockinfusedwood:5>,
<lightningcraft:rod:9>,<astralsorcery:blockmarble:5>,<lightningcraft:rod:9>,
<astralsorcery:blockinfusedwood:5>,<lightningcraft:lightning_crusher>,<astralsorcery:blockinfusedwood:5>]);

# Spectral Relay
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay", <astralsorcery:blockmachine:1>, 250, 100,
[null,<astralsorcery:itemcraftingcomponent:3>,null,
<bewitchment:spectral_dust>,<actuallyadditions:block_laser_relay_extreme>,<bewitchment:spectral_dust>,
<astralsorcery:blockinfusedwood>,<astralsorcery:blockinfusedwood>,<astralsorcery:blockinfusedwood>]);

# Illumination Powder
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder", <astralsorcery:itemusabledust> * 16, 150, 100,
[<projectred-core:resource_item:504>,<botania:manaresource:23>,<projectred-core:resource_item:504>,
<botania:manaresource:23>,<lightningcraft:material:14>,<botania:manaresource:23>,
<projectred-core:resource_item:504>,<botania:manaresource:23>,<projectred-core:resource_item:504>]);

# Nocturnal Powder
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/nocturnalpowder");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/nocturnalpowder", <astralsorcery:itemusabledust:1>, 850, 100,
[<thermalfoundation:material:1027>,<contenttweaker:tenebrae>,<thermalfoundation:material:1027>,
<contenttweaker:tenebrae>,<astralsorcery:itemusabledust>,<contenttweaker:tenebrae>,
<thermalfoundation:material:1027>,<contenttweaker:tenebrae>,<thermalfoundation:material:1027>]);

# Cave Illuminator
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/illuminator", <astralsorcery:blockworldilluminator>, 500, 100,
[<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,
<astralsorcery:itemusabledust>,<torchmaster:feral_flare_lantern>,<astralsorcery:itemusabledust>,
<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>]);

print("ENDING AstralSorcery.zs");