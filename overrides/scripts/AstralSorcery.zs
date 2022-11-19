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
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import dj2addons.astralsorcery.Crystals;

print("STARTING AstralSorcery.zs");

# Astral Tome
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/journal");
recipes.remove(<astralsorcery:itemjournal>);
recipes.addShaped(<astralsorcery:itemjournal>, [[<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:5>],[<astralsorcery:itemcraftingcomponent:5>,<minecraft:book>,<astralsorcery:itemcraftingcomponent:5>],[<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:5>]]);

# Parchment
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/cc_parchment");
recipes.remove(<astralsorcery:itemcraftingcomponent:5>);
recipes.addShaped(<astralsorcery:itemcraftingcomponent:5> * 8, [[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],[<minecraft:paper>,<bigreactors:ingotblutonium>,<minecraft:paper>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

# Constellation Paper
recipes.addShapedMirrored(<astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {}}), [[null,<contenttweaker:condensed_vis_crystal_stellae>,null],[<contenttweaker:gypsum>,<astralsorcery:itemcraftingcomponent:5>,<lightningcraft:material:14>],[null,<thaumcraft:scribing_tools>,null]]);

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
recipes.addShaped(<astralsorcery:blockmarble:3> * 3, [[null,<ore:stoneMarble>,null],[<ore:stoneMarble>,<contenttweaker:rune_of_spring>,<ore:stoneMarble>]]);

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
recipes.addShaped(<astralsorcery:blockblackmarble:3> * 3, [[null,<astralsorcery:blockblackmarble>,null],[<astralsorcery:blockblackmarble>,<contenttweaker:rune_of_spring>,<astralsorcery:blockblackmarble>]]);

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
mods.astralsorcery.Lightwell.addLiquefaction(<contenttweaker:sparkling_aquamarine>, <liquid:astralsorcery.liquidstarlight>, 0.4, 12.0, 33737);

# No Starlight from regular Aquamarine
mods.astralsorcery.Lightwell.removeLiquefaction(<astralsorcery:itemcraftingcomponent>, null);

# Infused Wood
mods.inworldcrafting.FluidToItem.transform(<astralsorcery:blockinfusedwood>, <liquid:astralsorcery.liquidstarlight>, [<botania:dreamwood:5>], false);
<astralsorcery:blockinfusedwood>.addTooltip(format.white("Only accepts Glimmering Dreamwood"));

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
recipes.addShaped(<astralsorcery:blockinfusedwood:3> * 3, [[null,<astralsorcery:blockinfusedwood>,null],[<astralsorcery:blockinfusedwood>,<contenttweaker:rune_of_spring>,<astralsorcery:blockinfusedwood>]]);

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

# Fix Starmetal ore reverting to Iron ore
Crystals.setStarmetalConversion(<contenttweaker:ludicrous_ore>);

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

# <astralsorcery:blockcollectorcrystal>.withCapNBT({astralsorcery: {cap_item_amulet_holder: {AS_Amulet_HolderLeast: -4822218405563622703, AS_Amulet_HolderMost: 433871007885182809}}})
/*
<astralsorcery:blockcollectorcrystal>.withTag(
	{
		astralsorcery:
		{
			constellationName: "astralsorcery.constellation.discidia",
			crystalProperties:
			{
				collectiveCapability: 50,
				size: 150,
				fract: 0,
				purity: 50,
				sizeOverride: -1
			},
			collectorType: 0
		},
		BlockEntityTag:
		{
			ticksExisted: 0,
			purity: 50,
			sizeOverride: -1,
			doesSeeSky: 1 as byte,
			multiBlockPresent: 0 as byte,
			collectorType: 0,
			size: 150,
			fract: 0,
			playerRefMost: 433871007885182809 as long,
			ForgeCaps:
			{
				"abyssalcraft:itemtransfer":
				{
					isRunning: 0 as byte,
					configurations: []
				}
			},
			constellationName: "astralsorcery.constellation.discidia",
			id: "astralsorcery:tilecollectorcrystal",
			playerRefLeast: -4822218405563622703 as long,
			wasLinkedBefore: 0 as byte,
			collect: 50,
			linked: []
		}
	})
*/

# Collector Crystal (more difficult, one-time recipe)
mods.extendedcrafting.TableCrafting.addShaped(<astralsorcery:blockcollectorcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia", crystalProperties: {collectiveCapability: 50, size: 150, fract: 0, purity: 50, sizeOverride: -1}, collectorType: 0}, BlockEntityTag: {ticksExisted: 0, purity: 50, sizeOverride: -1, doesSeeSky: 1 as byte, multiBlockPresent: 0 as byte, collectorType: 0, size: 150, fract: 0, playerRefMost: 433871007885182809 as long, ForgeCaps: {"abyssalcraft:itemtransfer": {isRunning: 0 as byte, configurations: []}}, constellationName: "astralsorcery.constellation.discidia", id: "astralsorcery:tilecollectorcrystal", playerRefLeast: -4822218405563622703 as long, wasLinkedBefore: 0 as byte, collect: 50,linked: []}}),
[[null,null,null,<astralsorcery:itemcraftingcomponent:3>,null,null,null],
[null,null,<astralsorcery:itemcraftingcomponent:3>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<astralsorcery:itemcraftingcomponent:3>,null,null],
[null,<alchemistry:ingot:11>,<contenttweaker:conducted_impetus>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<contenttweaker:conducted_impetus>,<alchemistry:ingot:11>,null],
[null,<alchemistry:ingot:11>,<contenttweaker:conducted_impetus>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<contenttweaker:conducted_impetus>,<alchemistry:ingot:11>,null],
[null,<alchemistry:ingot:11>,<contenttweaker:conducted_impetus>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<contenttweaker:conducted_impetus>,<alchemistry:ingot:11>,null],
[null,null,<astralsorcery:itemcraftingcomponent:3>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<astralsorcery:itemcraftingcomponent:3>,null,null],
[null,null,null,<astralsorcery:itemcraftingcomponent:3>,null,null,null]]);

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
[null,<alchemistry:ingot:11>,<botania:manaresource:22>,
<astralsorcery:blockmarble:6>,<botania:manaresource:22>,<alchemistry:ingot:11>,
<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,null,
<astralsorcery:itemcraftingcomponent:1>,<alchemistry:ingot:11>,<lightningcraft:rod:9>,<astralsorcery:itemcraftingcomponent:1>]);

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
<alchemistry:ingot:11>,<alchemistry:ingot:11>,<alchemistry:ingot:11>,<alchemistry:ingot:11>]);

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
[<alchemistry:ingot:11>,<alchemistry:ingot:11>,<alchemistry:ingot:11>,
<astralsorcery:blockmarble:6>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<astralsorcery:blockmarble:6>,
<contenttweaker:condensed_vis_crystal_stellae>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<contenttweaker:condensed_vis_crystal_stellae>,
<alchemistry:ingot:11>,<alchemistry:ingot:11>,<astralsorcery:blockblackmarble:3>,<astralsorcery:blockblackmarble:3>,
<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockblackmarble:3>,<astralsorcery:blockblackmarble:3>]);

# Resonating Gem
mods.astralsorcery.StarlightInfusion.removeInfusion(<astralsorcery:itemcraftingcomponent:4>);
mods.astralsorcery.StarlightInfusion.addInfusion(<contenttweaker:sparkling_aquamarine>, <astralsorcery:itemcraftingcomponent:4>, false, 1.0, 30);

# Vibrant Infused Wood
mods.astralsorcery.StarlightInfusion.removeInfusion(<astralsorcery:blockinfusedwood:6>);
mods.astralsorcery.StarlightInfusion.addInfusion(<astralsorcery:blockinfusedwood:5>, <astralsorcery:blockinfusedwood:6>, false, 1.0, 30);

# Colored Lenses
function addAstralSorceryLensRecipe(recipeName as string, output as IItemStack, input_item as IIngredient) {
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/" + recipeName);
	mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/" + recipeName, output, 600, 100,
	[<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,
	<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,
	<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,
	input_item,input_item,input_item,input_item,
	<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>]);
}

# Colored Lens: Ignition
addAstralSorceryLensRecipe("lens_fire", <astralsorcery:itemcoloredlens>, <contenttweaker:rune_of_fire>);

# Colored Lens: Break
addAstralSorceryLensRecipe("lens_break", <astralsorcery:itemcoloredlens:1>, <lightningcraft:lightning_breaker>);

# Colored Lens: Growth
addAstralSorceryLensRecipe("lens_grow", <astralsorcery:itemcoloredlens:2>, <contenttweaker:rune_of_spring>);

# Colored Lens: Damage
addAstralSorceryLensRecipe("lens_damage", <astralsorcery:itemcoloredlens:3>, <contenttweaker:rune_of_wrath>);

# Colored Lens: Regeneration
addAstralSorceryLensRecipe("lens_regen", <astralsorcery:itemcoloredlens:4>, <thaumicaugmentation:vis_regenerator>);

# Colored Lens: Push
addAstralSorceryLensRecipe("lens_push", <astralsorcery:itemcoloredlens:5>, <enderio:block_relocator_obelisk>);

# Colored Lens: Spectral
addAstralSorceryLensRecipe("lens_spectral", <astralsorcery:itemcoloredlens:6>, <contenttweaker:travelers_tenacity>);

# Ritual Anchor
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/rituallink");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/rituallink", <astralsorcery:blockrituallink>, 1000, 100,
[<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:4>,
<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),<thaumcraft:pedestal_eldritch>,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),
<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:4>,
null,null,null,null,
<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,null,null,null,null,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>]);

# PrismLens
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/crystalprism");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/crystalprism", <astralsorcery:blockprism>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}}), 1250, 100,
[<astralsorcery:itemcraftingcomponent:4>,Utils.getCrystalORIngredient(false,false),<astralsorcery:itemcraftingcomponent:4>,
<astralsorcery:itemcraftingcomponent:3>,Utils.getCrystalORIngredient(false,false),<astralsorcery:itemcraftingcomponent:3>,
<astralsorcery:itemcraftingcomponent:3>,<contenttweaker:condensed_vis_crystal_sol>,<astralsorcery:itemcraftingcomponent:3>,
<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockinfusedwood:4>,<astralsorcery:blockinfusedwood:4>,
<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<contenttweaker:condensed_vis_crystal_sol>,<contenttweaker:condensed_vis_crystal_sol>,<astralsorcery:blockinfusedwood:4>,<astralsorcery:blockinfusedwood:4>]);

# Illumination Wand
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_illumination");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/tool_illumination", <astralsorcery:itemilluminationwand>.withTag({astralsorcery: {}}), 1000, 100,
[null,<alchemistry:ingot:11>,<astralsorcery:itemusabledust>,
null,<astralsorcery:itemcraftingcomponent:4>,<alchemistry:ingot:11>,
<lightningcraft:rod:9>,null,null,
null,<astralsorcery:itemusabledust>,<astralsorcery:blockmarble:6>,null,
null,<astralsorcery:itemusabledust>,null,<astralsorcery:itemusabledust>,<astralsorcery:blockmarble:6>,null,<astralsorcery:blockmarble:6>,null]);

# Tree Beacon
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/treebeacon");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/treebeacon", <astralsorcery:blocktreebeacon>, 800, 100,
[<astralsorcery:itemcraftingcomponent:4>,<divinerpg:firewood_log>,<astralsorcery:itemcraftingcomponent:4>,
<astralsorcery:itemcraftingcomponent:4>,<divinerpg:firewood_log>,<astralsorcery:itemcraftingcomponent:4>,
null,<openblocks:tank>.withTag({tank: {FluidName: "astralsorcery.liquidstarlight", Amount: 16000}}),null,
<divinerpg:mintwood_leaves>,<divinerpg:mintwood_leaves>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
<divinerpg:mintwood_leaves>,<divinerpg:mintwood_leaves>,<divinerpg:mintwood_leaves>,<divinerpg:mintwood_leaves>,null,null,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>]);

# Stellar Refraction Table
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/drawingtable");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/drawingtable", <astralsorcery:blockmapdrawingtable>, 2000, 100,
[<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,
<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,
<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
<astralsorcery:blockinfusedwood:2>,<astralsorcery:blockinfusedwood:2>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
null,null,<contenttweaker:condensed_vis_crystal_stellae>,<contenttweaker:condensed_vis_crystal_stellae>,<astralsorcery:blockinfusedwood:2>,<astralsorcery:blockinfusedwood:2>,null,null]);

# Infused Glass
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/infusedglass");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/infusedglass", <astralsorcery:iteminfusedglass>.withTag({astralsorcery: {}}), 500, 100,
[<astralsorcery:itemcraftingcomponent:2>,<solarflux:photovoltaic_cell_4>,<astralsorcery:itemcraftingcomponent:2>,
<solarflux:photovoltaic_cell_4>,<astralsorcery:itemusabledust:1>,<solarflux:photovoltaic_cell_4>,
<astralsorcery:itemcraftingcomponent:2>,<solarflux:photovoltaic_cell_4>,<astralsorcery:itemcraftingcomponent:2>,
<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,
<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>]);

# Iridescent Altar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4", <astralsorcery:blockaltar:3>, 2250, 100,
[<contenttweaker:condensed_vis_crystal_stellae>,<contenttweaker:enchanters_phd>,<contenttweaker:condensed_vis_crystal_stellae>,
<astralsorcery:blockmarble:6>,Utils.getCrystalORIngredient(true,true),<astralsorcery:blockmarble:6>,
<astralsorcery:blockblackmarble:3>,<astralsorcery:blockblackmarble:3>,<astralsorcery:blockblackmarble:3>,
<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockblackmarble:3>,<astralsorcery:blockblackmarble:3>,
<astralsorcery:itemcoloredlens:6>,<astralsorcery:itemcoloredlens:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,null,null,null,null]);

# Containment Chalice
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/chalice");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/altar/chalice", <astralsorcery:blockchalice>, 3000, 100,
[<thaumicaugmentation:starfield_glass:1>,<bewitchment:goblet>,<thaumicaugmentation:starfield_glass:1>,
<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>,
<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>,
null,null,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,
<thaumicaugmentation:starfield_glass:1>,<thaumicaugmentation:starfield_glass:1>,null,null,null,null,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>,
<contenttweaker:condensed_vis_crystal_sol>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockritualpedestal>]);

#<thaumcraft:everfull_urn>,<contenttweaker:condensed_vis_crystal_desiderium>,<lightningcraft:ingot:2>

function addAstralSorceryIrridescentAltarRecipe(name as string, output as IItemStack, starlight as int, i as IIngredient[][], additionals as IIngredient[]) {

var recipe_list = [i[1][1], i[1][2], i[1][3], i[2][1], i[2][2], i[2][3], i[3][1], i[3][2], i[3][3], i[0][0], i[0][4], i[4][0], i[4][4], i[0][1], i[0][3], i[1][0], i[1][4], i[3][0], i[3][4], i[4][1], i[4][3], i[0][2], i[2][0], i[2][4], i[4][2]] as IIngredient[];
for item in additionals {
	recipe_list += item;
}

mods.astralsorcery.Altar.removeAltarRecipe(name);
mods.astralsorcery.Altar.addTraitAltarRecipe(name, output, starlight, 100, recipe_list);

}

function addAstralSorceryIrridescentAltarRecipeWithConstellation(name as string, output as IItemStack, starlight as int, i as IIngredient[][], additionals as IIngredient[], constellation as string) {

var recipe_list = [i[1][1], i[1][2], i[1][3], i[2][1], i[2][2], i[2][3], i[3][1], i[3][2], i[3][3], i[0][0], i[0][4], i[4][0], i[4][4], i[0][1], i[0][3], i[1][0], i[1][4], i[3][0], i[3][4], i[4][1], i[4][3], i[0][2], i[2][0], i[2][4], i[4][2]] as IIngredient[];
for item in additionals {
	recipe_list += item;
}

mods.astralsorcery.Altar.removeAltarRecipe(name);
mods.astralsorcery.Altar.addTraitAltarRecipe(name, output, starlight, 100, recipe_list, constellation);

}

# Mantle of the Stars
addAstralSorceryIrridescentAltarRecipe("astralsorcery:shaped/internal/altar/capebase", <astralsorcery:itemcape>.withTag({astralsorcery: {}}), 3000,
[[null,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>,null],
[<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,<bewitchment:hecates_visage>,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>],
[<astralsorcery:itemcraftingcomponent:1>,Utils.getCrystalORIngredient(true,true),<lightningcraft:mystic_chest>,Utils.getCrystalORIngredient(true,true),<astralsorcery:itemcraftingcomponent:1>],
[null,<astralsorcery:itemcraftingcomponent:1>,<thaumcraft:baubles:6>,<astralsorcery:itemcraftingcomponent:1>,null],
[null,<astralsorcery:itemcraftingcomponent:1>,null,<astralsorcery:itemcraftingcomponent:1>,null]], []);

# Resonating Wand Upgrades
function addAstralSorceryResonatingWandUpgradeRecipe(name as string, output as IItemStack, special_input as IIngredient) {
	addAstralSorceryIrridescentAltarRecipeWithConstellation("astralsorcery:shaped/internal/altar/wand/" + name, output, 3000,
		[[null,null,special_input,special_input,<actuallyadditions:block_crystal_empowered:2>],
		[null,null,special_input,<astralsorcery:itemwand>,null],
		[null,null,<astralsorcery:itemcraftingcomponent:1>,null,null],
		[null,<lightningcraft:ingot:2>,null,null,null],
		[<astralsorcery:blockmarble:5>,null,null,null,null]], [], "astralsorcery.constellation." + name);

}

# Resonating Wand: Aevitas
addAstralSorceryResonatingWandUpgradeRecipe("aevitas", <astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.aevitas"}}), <abyssalcraft:crystalcluster:10>);

# Resonating Wand: Discidia
addAstralSorceryResonatingWandUpgradeRecipe("discidia", <astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.discidia"}}), <abyssalcraft:crystalcluster:14>);

# Resonating Wand: Vicio
addAstralSorceryResonatingWandUpgradeRecipe("vicio", <astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.vicio"}}), <contenttweaker:crystallized_mana_cluster>);

# Resonating Wand: Armara
addAstralSorceryResonatingWandUpgradeRecipe("armara", <astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.armara"}}), <abyssalcraft:crystalcluster2:2>);

# Resonating Wand: Evorsio
addAstralSorceryResonatingWandUpgradeRecipe("evorsio", <astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.evorsio"}}), <abyssalcraft:crystalcluster:8>);

# Evershifting Fountain
addAstralSorceryIrridescentAltarRecipe("astralsorcery:shaped/internal/altar/bore_core", <astralsorcery:blockbore>, 3300,
[[<astralsorcery:blockinfusedwood:5>,<thaumicaugmentation:starfield_glass:2>,<thaumicaugmentation:starfield_glass:2>,<thaumicaugmentation:starfield_glass:2>,<astralsorcery:blockinfusedwood:5>],
[<astralsorcery:blockinfusedwood:5>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockinfusedwood:5>],
[<contenttweaker:condensed_vis_crystal_aer>,<astralsorcery:blockmarble:6>,<industrialforegoing:fluid_pump>,<astralsorcery:blockmarble:6>,<contenttweaker:condensed_vis_crystal_aer>],
[null,<astralsorcery:blockmarble:6>,<astralsorcery:blockchalice>,<astralsorcery:blockmarble:6>,null],
[<astralsorcery:blockinfusedwood:3>,<astralsorcery:blockinfusedwood:3>,<astralsorcery:blockinfusedwood:3>,<astralsorcery:blockinfusedwood:3>,<astralsorcery:blockinfusedwood:3>]], []);

# Ichosic Resonator
addAstralSorceryIrridescentAltarRecipeWithConstellation("astralsorcery:shaped/internal/altar/resonator/liquid", <astralsorcery:itemskyresonator>.withTag({astralsorcery: {enhanced: 1 as byte, selected_upgrade: 1, upgrades: [0, 1]}}), 2600,
[[null,<astralsorcery:itemcoloredlens:2>,<astralsorcery:itemcoloredlens:2>,<astralsorcery:itemcoloredlens:2>,null],
[null,null,null,null,null],
[<astralsorcery:blockinfusedwood:3>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemskyresonator>.withTag({astralsorcery: {}}),<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:blockinfusedwood:3>],
[<astralsorcery:blockinfusedwood:3>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockinfusedwood:3>],
[null,<astralsorcery:blockinfusedwood:3>,<astralsorcery:blockinfusedwood:3>,<astralsorcery:blockinfusedwood:3>,null]], [], "astralsorcery.constellation.octans");

# Sextant
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/sextant");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/sextant", <astralsorcery:itemsextant>.withTag({astralsorcery: {}}), 250, 100,
[null,<astralsorcery:itemcraftingcomponent:3>,null,
<astralsorcery:blockinfusedwood:5>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockinfusedwood:5>,
<contenttweaker:condensed_vis_crystal_desiderium>,<botania:sextant>,<contenttweaker:condensed_vis_crystal_desiderium>]);

# Sextant: Augmented
addAstralSorceryIrridescentAltarRecipeWithConstellation("astralsorcery:shaped/internal/altar/sextant/upgrade", <astralsorcery:itemsextant>.withTag({astralsorcery: {advanced: 1 as byte}}), 3000,
[[null,null,<astralsorcery:itemcoloredlens:6>,null,null],
[null,null,<astralsorcery:itemcoloredlens:6>,null,null],
[<astralsorcery:itemusabledust>,<contenttweaker:condensed_vis_crystal_desiderium>,<astralsorcery:blockinfusedwood:6>,<contenttweaker:condensed_vis_crystal_desiderium>,<astralsorcery:itemusabledust>],
[<contenttweaker:condensed_vis_crystal_desiderium>,<astralsorcery:blockinfusedwood:6>,<astralsorcery:itemsextant>,<astralsorcery:blockinfusedwood:6>,<contenttweaker:condensed_vis_crystal_desiderium>],
[<astralsorcery:blockinfusedwood:6>,null,null,null,<astralsorcery:blockinfusedwood:6>]], [], "astralsorcery.constellation.pelotrio");

# Resplendent Prism
addAstralSorceryIrridescentAltarRecipeWithConstellation("astralsorcery:shaped/internal/altar/enchantment_amulet_craft", <astralsorcery:itemenchantmentamulet>, 3600,
[[null,<contenttweaker:star_leather>,<astralsorcery:blockprism>,<contenttweaker:star_leather>,null],
[<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>,<thaumicaugmentation:material:3>,<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>],
[<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:conducted_impetus>,<contenttweaker:condensed_vis_crystal_desiderium>,<contenttweaker:condensed_vis_crystal_desiderium>],
[null,<contenttweaker:conducted_impetus>,<astralsorcery:iteminfusedglass>,<contenttweaker:conducted_impetus>,null],
[null,<contenttweaker:conducted_impetus>,<astralsorcery:iteminfusedglass>,<contenttweaker:conducted_impetus>,null]], [], "astralsorcery.constellation.bootes");

# Observatory
addAstralSorceryIrridescentAltarRecipeWithConstellation("astralsorcery:shaped/internal/altar/observatory", <astralsorcery:blockobservatory>, 4000,
[[null,null,null,<astralsorcery:blockmarble:6>,<astralsorcery:iteminfusedglass>],
[null,null,<astralsorcery:blockmarble:6>,<astralsorcery:blockmachine>,<astralsorcery:blockmarble:6>],
[null,<astralsorcery:blockmarble:6>,<astralsorcery:blockmachine>,<astralsorcery:blockmarble:6>,null],
[<bibliocraft:seatback5>,<lightningcraft:material:9>,<astralsorcery:blockmarble:6>,null,null],
[<bibliocraft:seat>,<astralsorcery:blockritualpedestal>,<astralsorcery:blockmapdrawingtable>,null,null]], [], "astralsorcery.constellation.lucerna");

function addAstralSorceryIrradiantStarRecipe(name as string, output as IItemStack, special_input as IIngredient) {
	addAstralSorceryIrridescentAltarRecipeWithConstellation("astralsorcery:shaped/internal/altar/shiftingstar/enhanced/" + name, output, 3300,
	[[<astralsorcery:itemusabledust>,null,special_input,null,<astralsorcery:itemusabledust>],
	[null,null,<astralsorcery:itemcraftingcomponent:1>,null,null],
	[special_input,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {}}),<astralsorcery:itemcraftingcomponent:1>,special_input],
	[null,null,<astralsorcery:itemcraftingcomponent:1>,null,null],
	[<astralsorcery:itemusabledust>,null,special_input,null,<astralsorcery:itemusabledust>]], [], "astralsorcery.constellation." + name);

}

# Irradiant Star: Discidia
addAstralSorceryIrradiantStarRecipe("discidia", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}), <lightningcraft:ingot:2>);

# Irradiant Star: Armara
addAstralSorceryIrradiantStarRecipe("armara", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}), <contenttweaker:shattered_mystical_iron_crystal>);

# Irradiant Star: Vicio
addAstralSorceryIrradiantStarRecipe("vicio", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}), <bewitchment:flying_ointment>);

# Irradiant Star: Aevitas
addAstralSorceryIrradiantStarRecipe("aevitas", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}), <contenttweaker:rainbow_tablet>);

# Irradiant Star: Evorsio
addAstralSorceryIrradiantStarRecipe("evorsio", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}), <contenttweaker:conducted_impetus>);

print("ENDING AstralSorcery.zs");
