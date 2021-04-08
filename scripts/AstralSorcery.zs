# Author: Atricos
# Look at the recipes in JEI with the F3 screen open to get their internal names.
# Altar starlight capacity at level L = 1000 * 2^(L-1), with L = 1, 2, 3, 4.

import mods.astralsorcery.Altar;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.Utils;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.StarlightInfusion;

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
for m in <ore:stoneMarble>.items {
	mods.thermalexpansion.Transposer.addFillRecipe(<astralsorcery:blockblackmarble>, m, <liquid:skyfather> * 18, 2000);
}

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
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/skyresonator");
mods.extendedcrafting.TableCrafting.addShaped(<astralsorcery:itemskyresonator>.withTag({astralsorcery: {}}),
[[null,null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,null,null],
[null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,null,null],
[null,null,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,null,null,null],
[null,null,null,null,null,null,null],
[null,<astralsorcery:blockmarble:4>,<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}).noReturn(),<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}).noReturn(),<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}).noReturn(),<astralsorcery:blockmarble:4>,null],
[null,<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>,<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}).noReturn(),<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>,null],
[null,null,<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>,null,null]]);

# Glass Lens
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/glasslens", <astralsorcery:itemcraftingcomponent:3>, 300, 100,
[<ore:paneGlassWhite>,<mekanism:polyethene:2>,<ore:paneGlassWhite>,
<mekanism:polyethene:2>,<contenttweaker:sparkling_aquamarine>,<mekanism:polyethene:2>,
<ore:paneGlassWhite>,<mekanism:polyethene:2>,<ore:paneGlassWhite>]);
mods.astralsorcery.StarlightInfusion.removeInfusion(<astralsorcery:itemcraftingcomponent:3>);

# Looking Glass
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope", <astralsorcery:itemhandtelescope>, 350, 100,
[<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockinfusedwood:4>,null,
<astralsorcery:blockinfusedwood:4>,<thaumcraft:goggles>,<astralsorcery:blockinfusedwood:4>,
null,<astralsorcery:blockinfusedwood:4>,<contenttweaker:condensed_vis_crystal_desiderium>]);

# Infused Wood Arch
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/infused_wood_arch");
recipes.remove(<astralsorcery:blockinfusedwood:3>);
recipes.addShaped(<astralsorcery:blockinfusedwood:3> * 3, [[null,<astralsorcery:blockinfusedwood>,null],[<astralsorcery:blockinfusedwood>,<botania:rune:4>,<astralsorcery:blockinfusedwood>]]);

# Engraved Infused Wood
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/infused_wood_engraved");
recipes.remove(<astralsorcery:blockinfusedwood:4>);
recipes.addShaped(<astralsorcery:blockinfusedwood:4> * 4, [[null,<astralsorcery:blockinfusedwood>,null],[<astralsorcery:blockinfusedwood>,<ore:engravedAbyssalCoin>,<astralsorcery:blockinfusedwood>],[null,<astralsorcery:blockinfusedwood>,null]]);

# Enriched Infused Wood
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/enriched_wood");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/enriched_wood", <astralsorcery:blockinfusedwood:5>, 100, 100,
[<contenttweaker:enriched_gum>,<astralsorcery:blockinfusedwood>,<contenttweaker:enriched_gum>,
<astralsorcery:blockinfusedwood>,<contenttweaker:sparkling_aquamarine>,<astralsorcery:blockinfusedwood>,
<contenttweaker:enriched_gum>,<astralsorcery:blockinfusedwood>,<contenttweaker:enriched_gum>]);

# Infused Wood Column
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/infused_wood_column");
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
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay", <astralsorcery:blockattunementrelay>, 250, 100,
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

# Starlight Crafting Altar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 850, 100,
[<astralsorcery:blockmarble:2>,null,<astralsorcery:blockmarble:2>,
<astralsorcery:blockmarble:6>,<contenttweaker:mystical_iron_block>,<astralsorcery:blockmarble:6>,
<astralsorcery:blockmarble:2>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<astralsorcery:blockmarble:2>]);

# Telescope
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/telescope");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/telescope", <astralsorcery:blockmachine>, 850, 100,
[<contenttweaker:condensed_vis_crystal_sol>,<astralsorcery:blockinfusedwood:5>,<lightningcraft:rod:9>,
<astralsorcery:blockinfusedwood:5>,<contenttweaker:condensed_vis_crystal_fabrico>,<astralsorcery:blockinfusedwood:5>,
<lightningcraft:rod:9>,<astralsorcery:blockinfusedwood:5>,<astralsorcery:itemusabledust>,
<astralsorcery:itemhandtelescope>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>]);

# Linking Tool
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_linking");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_linking", <astralsorcery:itemlinkingtool>, 950, 100,
[<astralsorcery:blockinfusedwood:3>,null,<contenttweaker:sparkling_aquamarine>,
<astralsorcery:blockinfusedwood:3>,Utils.getCrystalORIngredient(false, false),null,
<lightningcraft:rod:9>,<astralsorcery:blockinfusedwood:3>,<astralsorcery:blockinfusedwood:3>,
null,<contenttweaker:sparkling_aquamarine>,<astralsorcery:blockinfusedwood:4>,null]);

# Lens
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/crystallens");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/crystallens", <astralsorcery:blocklens>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}}), 400, 100,
[<astralsorcery:blockinfusedwood:4>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockinfusedwood:4>,
<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,
<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
null,null,<astralsorcery:blockinfusedwood:4>,<astralsorcery:blockinfusedwood:4>]);

# Starmetal Ore
mods.astralsorcery.LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, false);
mods.astralsorcery.LightTransmutation.addTransmutation(<contenttweaker:ludicrous_ore>, <astralsorcery:blockcustomore:1>, 20);

# Scroll of Written Expertise
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/knowledgeshare");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/knowledgeshare", <astralsorcery:itemknowledgeshare>.withTag({astralsorcery: {}}), 400, 100,
[<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:2>,
<astralsorcery:itemcraftingcomponent:5>,<contenttweaker:condensed_vis_crystal_volatus>,<astralsorcery:itemcraftingcomponent:5>,
<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:2>,
<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>]);

# Conversion Wand
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_exchange");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_exchange", <astralsorcery:itemexchangewand>, 1000, 100,
[null,<alchemistry:ingot:30>,<botania:manaresource:22>,
<astralsorcery:blockmarble:6>,<botania:manaresource:22>,<alchemistry:ingot:30>,
<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,null,
<astralsorcery:itemcraftingcomponent:1>,<alchemistry:ingot:30>,<lightningcraft:rod:9>,<astralsorcery:itemcraftingcomponent:1>]);

# Formation Wand
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_architect");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_architect", <astralsorcery:itemarchitectwand>, 1000, 100,
[<contenttweaker:conducted_impetus>,<contenttweaker:condensed_vis_crystal_praecantatio>,<astralsorcery:itemusabledust:1>,
<astralsorcery:blockmarble:6>,<contenttweaker:conducted_impetus>,<contenttweaker:condensed_vis_crystal_praecantatio>,
<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<contenttweaker:conducted_impetus>,
<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust:1>,<lightningcraft:rod:9>,<astralsorcery:itemcraftingcomponent:1>]);

# Impulsion Wand
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_grapple");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_grapple", <astralsorcery:itemgrapplewand>, 1000, 100,
[null,<astralsorcery:itemcraftingcomponent:1>,<contenttweaker:condensed_vis_crystal_motus>,
<astralsorcery:blockmarble:6>,<thaumicaugmentation:material:5>,<astralsorcery:itemcraftingcomponent:1>,
<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,null,
<astralsorcery:itemcraftingcomponent:1>,<contenttweaker:condensed_vis_crystal_motus>,<lightningcraft:rod:9>,<astralsorcery:itemcraftingcomponent:1>]);

# Celestial Gateway
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/gateway");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/gateway", <astralsorcery:blockcelestialgateway>, 1250, 100,
[<enderio:block_tele_pad>,<astralsorcery:itemcraftingcomponent:1>,<enderio:block_tele_pad>,
<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemusabledust:1>,<astralsorcery:itemcraftingcomponent:3>,
<enderio:block_tele_pad>,<astralsorcery:itemcraftingcomponent:1>,<enderio:block_tele_pad>,
<enderio:block_tele_pad>,<enderio:block_tele_pad>,<enderio:block_tele_pad>,<enderio:block_tele_pad>]);

# Celestial Altar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3", <astralsorcery:blockaltar:2>, 1500, 100,
[<astralsorcery:blockmarble:6>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockmarble:6>,
<astralsorcery:itemcraftingcomponent:1>,<contenttweaker:condensed_vis_crystal_stellae>,<astralsorcery:itemcraftingcomponent:1>,
<astralsorcery:blockmarble:6>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockmarble:6>,
<alchemistry:ingot:30>,<alchemistry:ingot:30>,<alchemistry:ingot:30>,<alchemistry:ingot:30>]);

# Attunement Altar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/attunementaltar");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/attunementaltar", <astralsorcery:blockattunementaltar>, 1650, 100,
[<astralsorcery:blockmarble:6>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockmarble:6>,
<astralsorcery:itemcraftingcomponent:1>,<bigreactors:blockludicrite>,<astralsorcery:itemcraftingcomponent:1>,
<astralsorcery:blockmarble:6>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockmarble:6>,
<contenttweaker:conducted_impetus>,<contenttweaker:conducted_impetus>,<contenttweaker:conducted_impetus>,<contenttweaker:conducted_impetus>,
<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>]);

# Shifting Star
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_shiftstar");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_shiftstar", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {}}), 450, 100,
[<astralsorcery:itemcraftingcomponent:2>,<contenttweaker:condensed_vis_crystal_luna>,<astralsorcery:itemcraftingcomponent:2>,
<astralsorcery:itemusabledust>,<minecraft:nether_star>,<astralsorcery:itemusabledust>,
<astralsorcery:itemcraftingcomponent:2>,<contenttweaker:condensed_vis_crystal_luna>,<astralsorcery:itemcraftingcomponent:2>,
<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>,<contenttweaker:sparkling_aquamarine>]);

# Ritual Pedestal
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/ritualpedestal");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/ritualpedestal", <astralsorcery:blockritualpedestal>, 1000, 100,
[Utils.getCrystalORIngredient(false, false),<astralsorcery:blockmarble:4>,Utils.getCrystalORIngredient(false, false),
<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<thaumcraft:pedestal_eldritch>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),
Utils.getCrystalORIngredient(false, false),<astralsorcery:blockmarble:4>,Utils.getCrystalORIngredient(false, false),
<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,
<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>]);

# Starlight Infuser
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/starlightinfuser");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/starlightinfuser", <astralsorcery:blockstarlightinfuser>, 1200, 100,
[<alchemistry:ingot:30>,<alchemistry:ingot:30>,<alchemistry:ingot:30>,
<astralsorcery:blockmarble:6>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<astralsorcery:blockmarble:6>,
<contenttweaker:condensed_vis_crystal_stellae>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<contenttweaker:condensed_vis_crystal_stellae>,
<alchemistry:ingot:30>,<alchemistry:ingot:30>,<astralsorcery:blockblackmarble:3>,<astralsorcery:blockblackmarble:3>,
<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockblackmarble:3>,<astralsorcery:blockblackmarble:3>]);

# Resonating Gem
mods.astralsorcery.StarlightInfusion.removeInfusion(<astralsorcery:itemcraftingcomponent:4>);
mods.astralsorcery.StarlightInfusion.addInfusion(<contenttweaker:sparkling_aquamarine>, <astralsorcery:itemcraftingcomponent:4>, false, 1.0, 30);

# Vibrant Infused Wood
mods.astralsorcery.StarlightInfusion.removeInfusion(<astralsorcery:blockinfusedwood:6>);
mods.astralsorcery.StarlightInfusion.addInfusion(<astralsorcery:blockinfusedwood:5>, <astralsorcery:blockinfusedwood:6>, false, 1.0, 30);


print("ENDING AstralSorcery.zs");