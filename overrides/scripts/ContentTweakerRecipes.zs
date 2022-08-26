# Author: Atricos

import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantment;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.Transposer;
import mods.appliedenergistics2.Inscriber;
import mods.astralsorcery.StarlightInfusion;
import mods.astralsorcery.Grindstone;
import mods.actuallyadditions.Crusher as AACrusher;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Pulverizer;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.extrautils2.Crusher as EUCrusher;
import mods.bloodmagic.AlchemyTable;
import mods.appliedenergistics2.Grinder;
import mods.enderio.SagMill;
import moretweaker.lightningcraft.LightningCrusher;
import mods.thermalexpansion.InductionSmelter;
import mods.roots.Mortar;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;
import mods.thermalexpansion.Sawmill;
import mods.bloodmagic.BloodAltar;
import mods.roots.Pyre;
import mods.botania.Apothecary;
import mods.botania.PureDaisy;
import crafttweaker.player.IPlayer;
import crafttweaker.recipes.ICraftingInventory;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspectStack;
import moretweaker.bewitchment.WitchesCauldron;
import moretweaker.bewitchment.Distillery;
import moretweaker.bewitchment.WitchesRitual;
import mods.thermalexpansion.Crucible as MagmaCrucible;
import mods.tconstruct.Melting;
import mods.thaumcraft.Crucible as TCCrucible;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBiome;
import crafttweaker.recipes.ICraftingInfo;
import crafttweaker.util.Position3f;
import mods.inworldcrafting.ExplosionCrafting;
import moretweaker.galacticraft.CircuitFabricator;
import mods.alchemistry.Liquifier;
import mods.astralsorcery.Altar;
import mods.roots.Fey;
import mods.inworldcrafting.FluidToItem;
import mods.alchemistry.Combiner;
import mods.enderio.Vat;

print("STARTING ContentTweakerRecipes.zs");

# Early game recipes can be found in MinecraftRecipes.zs
# (Including the Stone Hammer, and other ingredients for a Crafting Table and a Furnace.)

# Iron Hammer
recipes.addShaped(<contenttweaker:iron_hammer>, [[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],[null,<ore:stickWood>,null]]);
recipes.addShapeless(<contenttweaker:rough_iron_mesh>, [<contenttweaker:rough_hammer>.anyDamage().transformDamage(1), <ore:oreIron>, <ore:oreIron>]);

# Compressed Obsidian
recipes.addShaped(<contenttweaker:compressed_obsidian1>, [[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]]);
recipes.addShapeless(<minecraft:obsidian> * 9, [<contenttweaker:compressed_obsidian1>]);
recipes.addShaped(<contenttweaker:compressed_obsidian2>, [[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>]]);
recipes.addShapeless(<contenttweaker:compressed_obsidian1> * 9, [<contenttweaker:compressed_obsidian2>]);
recipes.addShaped(<contenttweaker:compressed_obsidian3>, [[<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>],[<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>],[<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>]]);
recipes.addShapeless(<contenttweaker:compressed_obsidian2> * 9, [<contenttweaker:compressed_obsidian3>]);

# Baykok's Bloodied Stone
recipes.addShaped(<contenttweaker:baykoks_bloodied_stone> * 8, [[<tconstruct:edible:3>,<minecraft:obsidian>,<tconstruct:edible:3>],[<minecraft:obsidian>,<totemic:baykok_bow>.anyDamage().transformDamage(1),<minecraft:obsidian>],[<tconstruct:edible:3>,<minecraft:obsidian>,<tconstruct:edible:3>]]);

# Treated Leather
recipes.addShapeless(<contenttweaker:treated_leather>, [<minecraft:leather>,<liquid:water> * 1000,<ore:dyeLime>,<minecraft:flint>]);
recipes.addHiddenShapeless("treated_leather_tank", <contenttweaker:treated_leather>, [<minecraft:leather>,<liquid:water> * 1000,<ore:dyeLime>,<minecraft:flint>]);

# Buffalo Hide Scrap
recipes.addShaped(<contenttweaker:buffao_hide_scrap> * 8, [[<totemic:buffalo_items>],[<totemic:buffalo_items>]]);

# Imp Leather Scrap
recipes.addShaped(<contenttweaker:imp_leather_scrap> * 8, [[<natura:materials:6>],[<natura:materials:6>]]);

# Industrial Leather
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:industrial_leather>, <contenttweaker:treated_leather>, null, 200, 40, [<contenttweaker:buffao_hide_scrap>, <contenttweaker:imp_leather_scrap>, <roots:stalicripe>, <minecraft:sugar>]);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:raw_industrial_leather>, <gas:sodium> * 200, <contenttweaker:industrial_leather>);

# Raw Industrial Leather
recipes.addShapeless(<contenttweaker:raw_industrial_leather>, [<contenttweaker:treated_leather>,<contenttweaker:buffao_hide_scrap>,<contenttweaker:imp_leather_scrap>,<roots:stalicripe>,<minecraft:sugar>]);

# Twilight Rock
recipes.addShapeless(<contenttweaker:twilight_rock>, [<contenttweaker:baykoks_bloodied_stone>, <immersiveengineering:material:18>, <roots:stalicripe>, <ore:dyeBrown>]);
recipes.addShapeless(<contenttweaker:twilight_rock>, [<twilightforest:block_storage:4>, <twilightforest:cooked_venison>, <twilightforest:root>, <twilightforest:charm_of_keeping_1>]);
<contenttweaker:twilight_rock>.addTooltip(format.red(format.bold("This is the item used to enter the Twilight Forest.")));
<contenttweaker:twilight_rock>.addTooltip("If your portal gets destroyed while you are inside, there is a Twilight Forest recipe so you can escape.");

# Twilight Key
recipes.addShaped(<contenttweaker:twilight_key>, [[<ore:ingotConstantan>,<ore:nuggetConstantan>],[<ore:ingotConstantan>,null],[<contenttweaker:twilight_rock>,null]]);
<contenttweaker:twilight_key>.addTooltip(format.red(format.bold("Only use this item if you wish to skip the Twilight Forest.")));
<contenttweaker:twilight_key>.addTooltip(format.red(format.bold("It can be used to craft the Lamp of Cinders, which is the final item of the Twilight Forest progression.")));

# Artificial Scarab Body
recipes.addShaped(<contenttweaker:artificial_scarab_body>, [[<lightningcraft:rod:5>,<immersiveengineering:material:19>,<lightningcraft:rod:5>],[<contenttweaker:industrial_leather>,<mysticalworld:carapace>,<contenttweaker:industrial_leather>],[null,<minecraft:gold_block>,null]]);

# Flawless Scarab Body
recipes.addShaped(<contenttweaker:flawless_scarab_body>, [[<minecraft:blaze_powder>,<divinerpg:pure_aquatic_pellets>,<minecraft:blaze_powder>],[<minecraft:diamond>,<contenttweaker:artificial_scarab_body>,<minecraft:diamond>],[<minecraft:blaze_powder>,<twilightforest:lamp_of_cinders>.reuse(),<minecraft:blaze_powder>]]);

# Flawless Scarab Wings
recipes.addShaped(<contenttweaker:flawless_scarab_wings>, [[<minecraft:blaze_powder>,<actuallyadditions:item_misc:15>,<minecraft:blaze_powder>],[<contenttweaker:industrial_leather>,<contenttweaker:artificial_scarab_wings>,<contenttweaker:industrial_leather>],[<minecraft:blaze_powder>,<twilightforest:lamp_of_cinders>.reuse(),<minecraft:blaze_powder>]]);

# Industrial Slimeball
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:industrial_slime_ball>, <ore:slimeball>, null, 150, 80, [<minecraft:porkchop>, <minecraft:beef>, <mekanism:salt>, <minecraft:clay_ball>]);

# Energized Osmium Ingot
recipes.addShaped(<contenttweaker:energized_osmium_ingot> * 8, [[<ore:ingotOsmium>,<ore:ingotOsmium>,<ore:ingotOsmium>],[<ore:ingotOsmium>,<liquid:biodiesel> * 1000,<ore:ingotOsmium>],[<ore:ingotOsmium>,<ore:ingotOsmium>,<ore:ingotOsmium>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_osmium_ingot>, <mekanism:ingot:1>, <liquid:biodiesel> * 100, 1000);
recipes.addShapeless(<contenttweaker:energized_osmium_ingot> * 9, [<contenttweaker:energized_osmium_block>]);

# Energized Osmium Block
recipes.addShaped(<contenttweaker:energized_osmium_block>, [[<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>],[<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>],[<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_osmium_block>, <mekanism:basicblock>, <liquid:biodiesel> * 900, 9000);

# Energized Certus Quartz Crystal
recipes.addShaped(<contenttweaker:energized_certus_quartz_crystal> * 8, [[<ore:crystalCertusQuartz>,<ore:crystalCertusQuartz>,<ore:crystalCertusQuartz>],[<ore:crystalCertusQuartz>,<liquid:biodiesel> * 1000,<ore:crystalCertusQuartz>],[<ore:crystalCertusQuartz>,<ore:crystalCertusQuartz>,<ore:crystalCertusQuartz>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_certus_quartz_crystal>, <appliedenergistics2:material>, <liquid:biodiesel> * 100, 1000);
recipes.addShapeless(<contenttweaker:energized_certus_quartz_crystal> * 4, [<contenttweaker:energized_certus_quartz_block>]);

# Energized Certus Quartz Block
recipes.addShaped(<contenttweaker:energized_certus_quartz_block>, [[<contenttweaker:energized_certus_quartz_crystal>,<contenttweaker:energized_certus_quartz_crystal>],[<contenttweaker:energized_certus_quartz_crystal>,<contenttweaker:energized_certus_quartz_crystal>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_certus_quartz_block>, <appliedenergistics2:quartz_block>, <liquid:biodiesel> * 400, 4000);

# The Perfect Squad
recipes.addShapeless(<contenttweaker:the_perfect_squad>, [<contenttweaker:arkas_wittyness>, <contenttweaker:guudes_sanity>, <contenttweaker:nebris_justice>, <contenttweaker:pakratts_endurance>]);

# Arkas' Wittyness
recipes.addShapeless(<contenttweaker:arkas_wittyness>, [<minecraft:skull:3>.withTag({SkullOwner: {Id: "44a6903b-4bef-4b34-bdf0-6f78ae267eb8", Name: "Arkas"}}), <actuallyadditions:block_smiley_cloud>]);

# Guude's Sanity
recipes.addShapeless(<contenttweaker:guudes_sanity>, [<minecraft:skull:3>.withTag({SkullOwner: {Id: "9cc9a90c-7bd6-4b7e-ba0a-76c4a53f4438", Name: "Guude"}}), <thaumcraft:brain>]);

# Nebris' Justice
recipes.addShapeless(<contenttweaker:nebris_justice>, [<minecraft:skull:3>.withTag({SkullOwner: {Id: "5a46759f-7636-48c0-9242-55177b159a5f", Name: "Nebris"}}), <minecraft:iron_sword>]);

# Pakratt's Endurance
recipes.addShapeless(<contenttweaker:pakratts_endurance>, [<minecraft:skull:3>.withTag({SkullOwner: {Id: "424f555b-c9a6-414d-9000-6ccb8bcc4a29", Name: "Pakratt0013"}}), <spartanshields:shield_basic_silver>]);

# Printed Operation Circuit
Inscriber.addRecipe(<contenttweaker:printed_operation_circuit>, <ore:ingotMithril>, true, <contenttweaker:inscriber_operation_press>);

# Printed Estimation Circuit
Inscriber.addRecipe(<contenttweaker:printed_estimation_circuit>, <contenttweaker:coated_clathrate>, true, <contenttweaker:inscriber_estimation_press>);

# Printed Methodology Circuit
Inscriber.addRecipe(<contenttweaker:printed_methodolgy_circuit>, <plustic:osmiridiumingot>, true, <contenttweaker:inscriber_methodology_press>);

# Printed Clearance Circuit
Inscriber.addRecipe(<contenttweaker:printed_clearance_circuit>, <botania:manaresource:7>, true, <contenttweaker:inscriber_clearance_press>);

# Printed Scheduling Circuit
Inscriber.addRecipe(<contenttweaker:printed_scheduling_circuit>, <draconicevolution:draconic_ingot>, true, <contenttweaker:inscriber_scheduling_press>);

# Operation Processor
Inscriber.addRecipe(<contenttweaker:operation_processor>, <minecraft:redstone>, false, <contenttweaker:printed_operation_circuit>, <appliedenergistics2:material:20>);

# Estimation Processor
Inscriber.addRecipe(<contenttweaker:estimation_processor>, <minecraft:redstone>, false, <contenttweaker:printed_estimation_circuit>, <appliedenergistics2:material:20>);

# Methodology Processor
Inscriber.addRecipe(<contenttweaker:methodology_processor>, <minecraft:redstone>, false, <contenttweaker:printed_methodolgy_circuit>, <appliedenergistics2:material:20>);

# Clearance Processor
Inscriber.addRecipe(<contenttweaker:clearance_processor>, <minecraft:redstone>, false, <contenttweaker:printed_clearance_circuit>, <appliedenergistics2:material:20>);

# Scheduling Processor
Inscriber.addRecipe(<contenttweaker:scheduling_processor>, <minecraft:redstone>, false, <contenttweaker:printed_scheduling_circuit>, <appliedenergistics2:material:20>);

# Enriched Gum
recipes.addShapeless(<contenttweaker:enriched_gum>, [<mekanism:enrichedalloy>, <ore:ingotRedAlloy>, <betternether:cincinnasite>, <immersiveengineering:material:18>]);

# Eye of Gaea
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:eye_of_gaea>, <extrautils2:snowglobe:1>, null, 400, 512, [<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <ore:blockOsgloglas>, <appliedenergistics2:fluix_block>]);

# Eye of Gaea (Awakened)
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:eye_of_gaea_awakened>, <contenttweaker:eye_of_gaea>, null, 2400, 4096, [<ore:ingotVividAlloy>, <ore:ingotVividAlloy>, <ore:ingotVividAlloy>, <ore:ingotVividAlloy>]);

# Relic Ingot and Block conversion
recipes.addShaped(relicBlock, [[relicIngot,relicIngot,relicIngot],[relicIngot,relicIngot,relicIngot],[relicIngot,relicIngot,relicIngot]]);
recipes.addShapeless(relicIngot * 9, [relicBlock]);

# Implanted Emerald
recipes.addShaped(<contenttweaker:implanted_emerald>, [[<ore:nuggetEmerald>,<minecraft:emerald>,<ore:nuggetEmerald>],[<minecraft:emerald>,<contenttweaker:compressed_obsidian1>,<minecraft:emerald>],[<ore:nuggetEmerald>,<minecraft:emerald>,<ore:nuggetEmerald>]]);

# Mixed Erebusian Rocks
recipes.addShapeless(<contenttweaker:mixed_erebusian_rocks>, [<erebus:materials:47>,<erebus:materials:47>,<erebus:materials:74>,<erebus:materials:47>,<erebus:materials:74>,<erebus:materials:2>,<erebus:materials:74>,<erebus:materials:2>,<erebus:materials:2>]);

# Mixed Erebusian Stone
recipes.addShaped(<contenttweaker:mixed_erebusian_stone>, [[<contenttweaker:mixed_erebusian_rocks>,<contenttweaker:mixed_erebusian_rocks>],[<contenttweaker:mixed_erebusian_rocks>,<contenttweaker:mixed_erebusian_rocks>]]);

# Mixed Mushroom Compound Block
recipes.addShapeless(<contenttweaker:mixed_mushroom_compound_block>, [<erebus:dark_capped_mushroom_block>,<erebus:sarcastic_czech_mushroom_block>,<erebus:grandmas_shoes_mushroom_block>,<erebus:dutch_cap_mushroom_block>,<erebus:kaizers_fingers_mushroom_block>]);

# Hardened Ember Moosh
recipes.addShaped(<contenttweaker:hardened_amber_moosh>, [[<erebus:amber_glass>,<contenttweaker:mixed_mushroom_compound_block>,<erebus:amber_glass>],[<contenttweaker:mixed_mushroom_compound_block>,<erebus:amber_glass>,<contenttweaker:mixed_mushroom_compound_block>],[<erebus:amber_glass>,<contenttweaker:mixed_mushroom_compound_block>,<erebus:amber_glass>]]);
<contenttweaker:hardened_amber_moosh>.addTooltip(format.italic(format.darkPurple("Surprisingly tough!")));

# Power Egg
recipes.addShapedMirrored(<contenttweaker:power_egg>, [[<erebus:materials:27>,<erebus:materials:9>,<erebus:materials:16>],[<erebus:tarantula_egg>,<erebus:jade_block>,<erebus:antlion_egg>],[<erebus:materials:27>,<erebus:materials:9>,<erebus:materials:16>]]);

# Crown of Skies
recipes.addShaped(<contenttweaker:crown_of_skies>, [[null,<ore:woolWhite>,null],[<contenttweaker:hardened_amber_moosh>,<contenttweaker:power_egg>,<contenttweaker:hardened_amber_moosh>],[<contenttweaker:mixed_erebusian_stone>,<contenttweaker:mixed_erebusian_stone>,<contenttweaker:mixed_erebusian_stone>]]);
recipes.addShaped(<contenttweaker:crown_of_skies>, [[<contenttweaker:hardened_amber_moosh>,<contenttweaker:crown_of_skies>.reuse(),<contenttweaker:hardened_amber_moosh>]]);
<contenttweaker:crown_of_skies>.addTooltip(format.red(format.bold("Right click on an Aether Portal block to gain access to the dimension!")));
<contenttweaker:crown_of_skies>.addTooltip(format.red(format.bold("Warning: This CONSUMES the item.")));
<contenttweaker:crown_of_skies>.addTooltip(format.white(format.bold("Can be duplicated so other team members can also use it!")));
<contenttweaker:crown_of_skies>.addTooltip(format.white("(The duplication recipe doesn't use up the input Crown.)"));

# Aether Power Core
recipes.addShapedMirrored(<contenttweaker:aether_power_core>, [[<ore:ingotEnergeticAlloy>,<ore:blockEnergeticAlloy>,<ore:ingotEnergeticAlloy>],[<contenttweaker:bronze_aether_coin>,<contenttweaker:silver_aether_coin>,<contenttweaker:golden_aether_coin>],[<ore:ingotEnergeticAlloy>,<ore:blockEnergeticAlloy>,<ore:ingotEnergeticAlloy>]]);

# Golder Molder Folder
recipes.addShaped(<contenttweaker:golder_molder_folder>, [[<aether_legacy:ice_ring>,<aether_legacy:ice_ring>,null],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<aether_legacy:ice_pendant>],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,null]]);
<contenttweaker:golder_molder_folder>.addTooltip(format.darkRed(format.italic("An older boulder told 'er: Hold 'er shoulder!")));
<contenttweaker:golder_molder_folder>.addTooltip(format.white(format.italic("Has 16 uses!")));

# Enchanted Golden Berry
recipes.addShaped(<contenttweaker:enchanted_golden_berry> * 4, [[<aether_legacy:enchanted_blueberry>,<aether_legacy:enchanted_gravitite>,<aether_legacy:enchanted_blueberry>],[<aether_legacy:golden_amber>,<contenttweaker:golder_molder_folder>.anyDamage().transformDamage(1),<aether_legacy:golden_amber>],[<aether_legacy:enchanted_blueberry>,<aether_legacy:enchanted_gravitite>,<aether_legacy:enchanted_blueberry>]]);

# Enchanted Golden Berry Stem
recipes.addShaped(<contenttweaker:enchanted_golden_berry_stem>, [[<contenttweaker:enchanted_golden_berry>,<lightningcraft:rod:2>,<contenttweaker:enchanted_golden_berry>],[null,<lightningcraft:rod:2>,null],[<contenttweaker:enchanted_golden_berry>,<lightningcraft:rod:2>,<contenttweaker:enchanted_golden_berry>]]);

# Enchanted Golden Berry Necklace
recipes.addShaped(<contenttweaker:enchanted_golden_berry_necklace>, [[<contenttweaker:enchanted_golden_berry_stem>,null,<contenttweaker:enchanted_golden_berry_stem>],[<contenttweaker:enchanted_golden_berry_stem>,null,<contenttweaker:enchanted_golden_berry_stem>],[<contenttweaker:enchanted_golden_berry_stem>,<lightningcraft:rod:2>,<contenttweaker:enchanted_golden_berry_stem>]]);

# Healing Stone Block
recipes.addShaped(<contenttweaker:healing_stone_block>, [[<aether_legacy:healing_stone>,<aether_legacy:healing_stone>,<aether_legacy:healing_stone>],[<aether_legacy:healing_stone>,<aether_legacy:healing_stone>,<aether_legacy:healing_stone>],[<aether_legacy:healing_stone>,<aether_legacy:healing_stone>,<aether_legacy:healing_stone>]]);
recipes.addShapeless(<aether_legacy:healing_stone> * 9, [<contenttweaker:healing_stone_block>]);

# Aechomedirus & Block
recipes.addShaped(<contenttweaker:aechomedirus> * 3, [[<ore:dyePurple>,<aether_legacy:aerogel>,<ore:dyePurple>],[<aether_legacy:enchanted_gravitite>,<aether_legacy:skyroot_bucket:3>.transformReplace(<aether_legacy:skyroot_bucket>),<aether_legacy:enchanted_gravitite>],[<aether_legacy:aerogel>,<aether_legacy:aechor_petal>,<aether_legacy:aerogel>]]);
recipes.addShaped(<contenttweaker:aechomedirus_block>, [[<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>],[<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>],[<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>]]);
recipes.addShapeless(<contenttweaker:aechomedirus> * 9, [<contenttweaker:aechomedirus_block>]);

# Resonating Orb
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:resonating_orb>, <contenttweaker:healing_stone_block> * 2, null, 240, 800, [<contenttweaker:aechomedirus_block> * 2, <contenttweaker:enchanted_golden_berry_necklace> * 2]);
#EIOAlloySmelter.addRecipe(<contenttweaker:resonating_orb>, [<contenttweaker:healing_stone_block> * 2, <contenttweaker:aechomedirus_block> * 2, <contenttweaker:enchanted_golden_berry_necklace> * 2], 40000);

# Santa Armor Set
recipes.addShapeless(<contenttweaker:santa_armor_set>, [<divinerpg:santa_helmet>,<divinerpg:santa_chestplate>,<divinerpg:santa_leggings>,<divinerpg:santa_boots>]);

# Festive Ball
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:festive_ball>, <contenttweaker:santa_armor_set>, null, 240, 800, [<divinerpg:workshop_lamp> * 16, <divinerpg:ice_shards> * 16]);

# Festive Powder
IECrusher.addRecipe(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>, 4000);
AACrusher.addRecipe(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>);
mods.astralsorcery.Grindstone.addRecipe(<contenttweaker:festive_ball>, <contenttweaker:festive_powder>);
Grinder.addRecipe(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>, 4);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>, 2000);
EUCrusher.add(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>);
mods.enderio.SagMill.addRecipe([<contenttweaker:festive_powder>], [100], <contenttweaker:festive_ball>);
LightningCrusher.add(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>);
mods.mekanism.crusher.addRecipe(<contenttweaker:festive_ball>, <contenttweaker:festive_powder>);

# GP Powder
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:gp_powder>, <contenttweaker:festive_powder>, null, 100, 2000, [<mekanism:otherdust> * 4, <minecraft:glowstone_dust> * 4, <minecraft:redstone> * 4, <actuallyadditions:item_dust:7> * 4]);
recipes.addShapeless(<contenttweaker:gp_powder> * 2, [<contenttweaker:gp_powder>, <mekanism:otherdust> , <minecraft:glowstone_dust>, <minecraft:redstone>, <actuallyadditions:item_dust:7>]);

# Osglolapis & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:osglolapis> * 2, <minecraft:dye:4>, null, 80, 256, [<ore:ingotOsgloglas>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:osglolapis> * 2, [<minecraft:dye:4>, <ore:ingotOsgloglas>], 4000);
IEAlloySmelter.addRecipe(<contenttweaker:osglolapis> * 2, <minecraft:dye:4>, <ore:ingotOsgloglas>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:osglolapis> * 2, <minecraft:dye:4>, <plustic:osgloglasingot>, 4000);
recipes.addShaped(<contenttweaker:osglolapis_block>, [[<contenttweaker:osglolapis>,<contenttweaker:osglolapis>,<contenttweaker:osglolapis>],[<contenttweaker:osglolapis>,<contenttweaker:osglolapis>,<contenttweaker:osglolapis>],[<contenttweaker:osglolapis>,<contenttweaker:osglolapis>,<contenttweaker:osglolapis>]]);
recipes.addShapeless(<contenttweaker:osglolapis> * 9, [<contenttweaker:osglolapis_block>]);

# Demonlord Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:demonlord_ingot>, <extrautils2:ingredients:11>, null, 80, 384, [<extrautils2:ingredients:3>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:demonlord_ingot>, [<extrautils2:ingredients:11>, <extrautils2:ingredients:3>], 6000);
IEAlloySmelter.addRecipe(<contenttweaker:demonlord_ingot>, <extrautils2:ingredients:11>, <extrautils2:ingredients:3>, 240);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:demonlord_ingot>, <extrautils2:ingredients:11>, <extrautils2:ingredients:3>, 6000);
recipes.addShaped(<contenttweaker:demonlord_block>, [[<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>],[<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>],[<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>]]);
recipes.addShapeless(<contenttweaker:demonlord_ingot> * 9, [<contenttweaker:demonlord_block>]);

# Mobgrindium Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:mobgrindium_ingot>, <contenttweaker:demonlord_ingot>, null, 80, 480, [<minecraft:gunpowder>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:mobgrindium_ingot>, [<contenttweaker:demonlord_ingot>, <minecraft:gunpowder>], 8000);
IEAlloySmelter.addRecipe(<contenttweaker:mobgrindium_ingot>, <contenttweaker:demonlord_ingot>, <minecraft:gunpowder>, 300);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:mobgrindium_ingot>, <contenttweaker:demonlord_ingot>, <minecraft:gunpowder>, 8000);
recipes.addShaped(<contenttweaker:mobgrindium_block>, [[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>]]);
recipes.addShapeless(<contenttweaker:mobgrindium_ingot> * 9, [<contenttweaker:mobgrindium_block>]);

# Open Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:open_ingot>, <contenttweaker:demonlord_ingot>, null, 80, 240, [<minecraft:paper>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:open_ingot>, [<contenttweaker:demonlord_ingot>, <minecraft:paper>], 4000);
IEAlloySmelter.addRecipe(<contenttweaker:open_ingot>, <contenttweaker:demonlord_ingot>, <minecraft:paper>, 150);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:open_ingot>, <contenttweaker:demonlord_ingot>, <minecraft:paper>, 4000);
recipes.addShaped(<contenttweaker:open_block>, [[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>]]);
recipes.addShapeless(<contenttweaker:open_ingot> * 9, [<contenttweaker:open_block>]);

# Thermal Conductor Rod
recipes.addShapedMirrored(<contenttweaker:thermal_conductor_rod>, [[null,<extrautils2:suncrystal>,<extrautils2:decorativesolidwood:1>],[<extrautils2:suncrystal>,<extrautils2:ingredients:5>,<extrautils2:suncrystal>],[<extrautils2:decorativesolidwood:1>,<extrautils2:suncrystal>,null]]);
<contenttweaker:thermal_conductor_rod>.addTooltip(format.white("Has 800 uses."));
<contenttweaker:thermal_conductor_rod>.addTooltip(format.red(format.bold("WARNING: ")) + format.gray(format.bold("AE2 consumes the item! Use an external crafter like an RFTools Crafter when using this item in your ME System!")));

# RF Powder
recipes.addShapeless(<contenttweaker:rf_powder> * 2, [<contenttweaker:thermal_conductor_rod>.anyDamage().transformDamage(1),<contenttweaker:gp_powder>,<thermalfoundation:material:99>,<minecraft:experience_bottle>]);

# Coated Clathrate
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:coated_clathrate>, <thermalfoundation:material:895>, <liquid:tree_oil> * 200, 4000);
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:coated_clathrate>, <thermalfoundation:material:895>, null, 80, 240, [<thermalfoundation:material:832>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:coated_clathrate>, [<thermalfoundation:material:895>, <thermalfoundation:material:832>], 4000);
IEAlloySmelter.addRecipe(<contenttweaker:coated_clathrate>, <thermalfoundation:material:895>, <thermalfoundation:material:832>, 150);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:coated_clathrate>, <thermalfoundation:material:895>, <thermalfoundation:material:832>, 4000);

# Dark Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:dark_ingot>, <thermalfoundation:material:892>, null, 120, 240, [<thermalfoundation:material:833>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:dark_ingot>, [<thermalfoundation:material:892>, <thermalfoundation:material:833>], 8000);
IEAlloySmelter.addRecipe(<contenttweaker:dark_ingot>, <thermalfoundation:material:892>, <thermalfoundation:material:833>, 225);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:dark_ingot>, <thermalfoundation:material:892>, <thermalfoundation:material:833>, 8000);
recipes.addShaped(<contenttweaker:dark_block>, [[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>],[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>],[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>]]);
recipes.addShapeless(<contenttweaker:dark_ingot> * 9, [<contenttweaker:dark_block>]);

# Energized Dark Ingot & Block
recipes.addShaped(<contenttweaker:energized_dark_ingot> * 8, [[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>],[<contenttweaker:dark_ingot>,<liquid:refined_fuel> * 1000,<contenttweaker:dark_ingot>],[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>]]);
recipes.addShapeless(<contenttweaker:energized_dark_ingot> * 9, [<contenttweaker:energized_dark_block>]);
recipes.addShaped(<contenttweaker:energized_dark_block>, [[<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>],[<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>],[<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_dark_ingot>, <contenttweaker:dark_ingot>, <liquid:refined_fuel> * 100, 1000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_dark_block>, <contenttweaker:dark_block>, <liquid:refined_fuel> * 900, 9000);

# Titanium Nugget
recipes.addShapeless(<contenttweaker:titanium_nugget> * 9 , [<galacticraftplanets:item_basic_asteroids>]);
recipes.addShaped(<galacticraftplanets:item_basic_asteroids>, [[<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>],[<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>],[<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>]]);

# Energized Dark Dust (Crushing recipes are in OreProcessingAdditions.zs)
recipes.addShaped(<contenttweaker:energized_dark_dust> * 8, [[<contenttweaker:dark_dust>,<contenttweaker:dark_dust>,<contenttweaker:dark_dust>],[<contenttweaker:dark_dust>,<liquid:refined_fuel> * 1000,<contenttweaker:dark_dust>],[<contenttweaker:dark_dust>,<contenttweaker:dark_dust>,<contenttweaker:dark_dust>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_dark_dust>, <contenttweaker:dark_dust>, <liquid:refined_fuel> * 100, 1000);

# Crystalline Brown Slime Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:crystalline_brown_slime_ingot> * 2, <enderio:item_alloy_endergy_ingot:4>, null, 120, 240, [<industrialforegoing:fertilizer>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:crystalline_brown_slime_ingot> * 2, [<enderio:item_alloy_endergy_ingot:4>, <industrialforegoing:fertilizer>], 8000);
IEAlloySmelter.addRecipe(<contenttweaker:crystalline_brown_slime_ingot> * 2, <enderio:item_alloy_endergy_ingot:4>, <industrialforegoing:fertilizer>, 300);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:crystalline_brown_slime_ingot> * 2, <enderio:item_alloy_endergy_ingot:4>, <industrialforegoing:fertilizer>, 8000);
recipes.addShaped(<contenttweaker:crystalline_brown_slime_block>, [[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>],[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>],[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>]]);
recipes.addShapeless(<contenttweaker:crystalline_brown_slime_ingot> * 9, [<contenttweaker:crystalline_brown_slime_block>]);

# Glod Crystal & Block
mods.actuallyadditions.AtomicReconstructor.addRecipe(glod_crystal, <minecraft:gold_ingot>, 80);
mods.actuallyadditions.AtomicReconstructor.addRecipe(glod_crystal_block, <minecraft:gold_block>, 800);
recipes.addShaped(glod_crystal_block, [[glod_crystal,glod_crystal,glod_crystal],[glod_crystal,glod_crystal,glod_crystal],[glod_crystal,glod_crystal,glod_crystal]]);
recipes.addShapeless(glod_crystal * 9, [glod_crystal_block]);
recipes.addShapeless(glod_crystal_block, [<contenttweaker:glod_crystal_block>]);
mods.jei.JEI.addItem(glod_crystal);
mods.jei.JEI.addItem(glod_crystal_block);

# Empowered Glod Crystal & Block
mods.actuallyadditions.Empowerer.addRecipe(empowered_glod_crystal, glod_crystal, <enderio:item_material:12>, <thermalfoundation:material:294>, <roots:wildewheet>, <minecraft:blaze_rod>, 3000, 100, [0.976, 0.972, 0.184]);
recipes.addShaped(empowered_glod_crystal_block, [[empowered_glod_crystal,empowered_glod_crystal,empowered_glod_crystal],[empowered_glod_crystal,empowered_glod_crystal,empowered_glod_crystal],[empowered_glod_crystal,empowered_glod_crystal,empowered_glod_crystal]]);
recipes.addShapeless(empowered_glod_crystal * 9, [empowered_glod_crystal_block]);
recipes.addShapeless(empowered_glod_crystal_block, [<contenttweaker:empowered_glod_crystal_block>]);
mods.jei.JEI.addItem(empowered_glod_crystal);
mods.jei.JEI.addItem(empowered_glod_crystal_block);

# Crystal Bundle
#EIOAlloySmelter.addRecipe(<contenttweaker:crystal_bundle> * 6, [<actuallyadditions:item_crystal_empowered:2>,empowered_glod_crystal * 3,<actuallyadditions:item_crystal_empowered:4>], 6000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:crystal_bundle> * 6, empowered_glod_crystal * 3, null, 120, 100, [<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:4>], "Alloying");

# Empowered Crystal Bundle
mods.actuallyadditions.Empowerer.addRecipe(<contenttweaker:empowered_crystal_bundle>, <contenttweaker:crystal_bundle>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, 8000, 200, [0.596, 0.835, 0.403]);

# Elevatium Ingot & Block
mods.actuallyadditions.AtomicReconstructor.addRecipe(<contenttweaker:ingot_of_elevation>, <contenttweaker:empowered_crystal_bundle>, 100000);
recipes.addShaped(<contenttweaker:block_of_elevation>, [[<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>],[<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>],[<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>]]);
recipes.addShapeless(<contenttweaker:ingot_of_elevation> * 9, [<contenttweaker:block_of_elevation>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:ingot_of_elevation> * 12, 100000, 5000, <actuallyadditions:item_solidified_experience>, [empowered_glod_crystal, empowered_glod_crystal, empowered_glod_crystal, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:4>]);

function addVetheaPlankRecipes(log as IItemStack, plank as IItemStack) {
	recipes.addShaped(plank * 4, [[log]]);
	mods.mekanism.sawmill.addRecipe(log, plank * 6, <thermalfoundation:material:800>, 1);
	mods.enderio.SagMill.addRecipe([<thermalfoundation:material:800>, <thermalfoundation:material:800>, <thermalfoundation:material:800>, <thermalfoundation:material:800>], [100,90,50,10], log, "CHANCE_ONLY", 2400);
	mods.thermalexpansion.Sawmill.addRecipe(plank * 6, log, 1000, <thermalfoundation:material:800>, 100);
}

# Hyrewood Planks
addVetheaPlankRecipes(<divinerpg:hyrewood_log>, <contenttweaker:planks_hyrewood>);

# Mintwood Planks
addVetheaPlankRecipes(<divinerpg:mintwood_log>, <contenttweaker:planks_mintwood>);

# Firewood Planks
addVetheaPlankRecipes(<divinerpg:firewood_log>, <contenttweaker:planks_firewood>);

# Cosmic Alloy
recipes.addShaped(<contenttweaker:cosmic_alloy>, [[<mekanism:atomicalloy>,<contenttweaker:ingot_of_elevation>,<mekanism:atomicalloy>],[<contenttweaker:ingot_of_elevation>,<mekanism:atomicalloy>,<contenttweaker:ingot_of_elevation>],[<mekanism:atomicalloy>,<contenttweaker:ingot_of_elevation>,<mekanism:atomicalloy>]]);

# Fluxed Electrum Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:fluxed_electrum_ingot>, <thermalfoundation:material:161>, null, 120, 512, [<thermalfoundation:material:1024>, <enderio:item_alloy_ingot:3>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:fluxed_electrum_ingot>, [<thermalfoundation:material:161>, <thermalfoundation:material:1024>, <enderio:item_alloy_ingot:3>], 16000);
recipes.addShaped(<contenttweaker:fluxed_electrum_block>, [[<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>],[<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>],[<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>]]);
recipes.addShapeless(<contenttweaker:fluxed_electrum_ingot> * 9, [<contenttweaker:fluxed_electrum_block>]);

# Fluxed Electrum Plate
recipes.addShapeless(<contenttweaker:fluxed_electrum_plate>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>]);
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:fluxed_electrum_plate>, <contenttweaker:fluxed_electrum_ingot>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:fluxed_electrum_plate>, <contenttweaker:fluxed_electrum_ingot>, <immersiveengineering:mold>, 3000);

# Flux Crystal
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:flux_crystal>, <enderio:item_material:14>, <liquid:redstone> * 8000, 6400);

# Steaming Restonia Crystal & Block
mods.mekanism.reaction.addRecipe(<actuallyadditions:item_crystal_empowered>, <liquid:steam> * 1000, <gas:fusionfuel> * 240, <contenttweaker:steaming_restonia_crystal>, <gas:fusionfuel> * 180, 600, 80);
recipes.addShapeless(<contenttweaker:steaming_restonia_crystal> * 9, [<contenttweaker:steaming_restonia_crystal_block>]);
recipes.addShaped(<contenttweaker:steaming_restonia_crystal_block>, [[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>],[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>],[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>]]);

# Redstone Star
recipes.addShapedMirrored(<contenttweaker:redstone_star>, [[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],[<extrautils2:ingredients:4>,<extrautils2:endershard>,<contenttweaker:gp_powder>],[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>]]);

# Unholy Token
recipes.addShaped(<contenttweaker:unholy_token>, [[<contenttweaker:ayeraco_wing>,<contenttweaker:eye_of_the_watcher>,<contenttweaker:ayeraco_wing>],[<contenttweaker:ayeraco_wing>,<contenttweaker:ancient_leg>,<contenttweaker:ayeraco_wing>],[null,<contenttweaker:ancient_leg>,null]]);

# Eden, Wildwood, Apalachia, Skythern, Mortum, Moon & Asteroids Door Key Tooltips
val divinerpg_galacticraft_keys = [<contenttweaker:eden_door_key>,<contenttweaker:wildwood_door_key>,<contenttweaker:apalachia_door_key>,<contenttweaker:skythern_door_key>,<contenttweaker:mortum_door_key>,<contenttweaker:moon_door_key>,<contenttweaker:venus_door_key>,<contenttweaker:asteroids_door_key>] as IItemStack[];
for i in 0 to 8 {
	divinerpg_galacticraft_keys[i].addTooltip(format.red("Right Click to clear any " + divinerpg_galacticraft_dimension_names_upper[i] + " Door Blocks in a 5 block radius."));
	#divinerpg_galacticraft_keys[i].addTooltip(format.red("If none are found, it shows an error message in chat."));
}

# Dread Crystal
mods.abyssalcraft.InfusionRitual.addRitual("dread_crystal", 2, 51, 20000, false, <contenttweaker:dread_crystal>, <abyssalcraft:oc>, [<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:ingotblock:2>,<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:ingotblock:2>,<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:ingotblock:2>,<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:ingotblock:2>]);
game.setLocalization("ac.ritual.dread_crystal", "Power of the Dread");
game.setLocalization("ac.ritual.dread_crystal.desc", "Convert the power of the Dreadlands into a single crystal!");

# Hardened Blood Droplet
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:hardened_blood_droplet>, <tconstruct:edible:3>, 0, 1000, 25, 25);

# Rainbow Slate
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:rainbow_slate>, <bloodmagic:slate:4>, 5, 120000, 300, 250);
<contenttweaker:rainbow_slate>.addTooltip("Infused stone inside of a Blood Altar.");

# Vibrant Slate
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:vibrant_slate>, <contenttweaker:rainbow_slate>, 5, 300000, 400, 250);
<contenttweaker:vibrant_slate>.addTooltip("Infused stone inside of a Blood Altar.");

# Perfect Slate
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:perfect_slate>, <contenttweaker:vibrant_slate>, 5, 1000000, 500, 250);
<contenttweaker:perfect_slate>.addTooltip("Infused stone inside of a Blood Altar.");

# Simple Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:simple_catalyst>, [<minecraft:glass_bottle>,<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:gunpowder>,<minecraft:sugar>,<thermalfoundation:material:99>], 25, 2, 1);

# Aether
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:aether>, [<contenttweaker:simple_catalyst>,<minecraft:ghast_tear>,<minecraft:glowstone_dust>,<aether_legacy:aerogel>,<roots:cloud_berry>,<minecraft:feather>], 100, 10, 1);

# Aquasalus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:aquasalus>, [<contenttweaker:simple_catalyst>,<minecraft:water_bucket>,<minecraft:water_bucket>,<minecraft:dye>,<roots:dewgonia>,<minecraft:waterlily>], 100, 10, 1);

# Incendium
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:incendium>, [<contenttweaker:simple_catalyst>,<minecraft:lava_bucket>,<thermalfoundation:material:1024>,<thermalfoundation:material:1024>,<roots:infernal_bulb>,<minecraft:netherrack>], 100, 10, 1);

# Terrae
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:terrae>, [<contenttweaker:simple_catalyst>,<extrautils2:compresseddirt>,<extrautils2:compressedsand>,<extrautils2:compressedgravel>,<minecraft:obsidian>,<roots:wildroot>], 100, 10, 1);

# Strengthened Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:strengthened_catalyst>, [<contenttweaker:simple_catalyst>,<contenttweaker:simple_catalyst>,<mekanism:clump>,<mekanism:clump:4>,<thermalfoundation:material:2053>,<thermalfoundation:material:2053>], 100, 5, 2);

# Sanctus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:sanctus>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:aether>,glod_crystal,<thermalfoundation:glass_alloy:1>,<minecraft:glowstone>,<aether_legacy:holystone>], 400, 10, 2);

# Crystallos
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:crystallos>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:aquasalus>,<minecraft:packed_ice>,<minecraft:packed_ice>,<minecraft:snow>,<minecraft:snow>], 400, 10, 2);

# Magicales
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:magicales>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:incendium>,<divinerpg:cyclops_eye_shards>,<divinerpg:ender_shards>,<draconicevolution:draconium_ingot>,<roots:pereskia>], 400, 10, 2);

# Orbis Terrae
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:orbis_terrae>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:terrae>,<actuallyadditions:item_crystal:4>,<ore:ingotOsgloglas>,<contenttweaker:arboreal_essence>,<contenttweaker:arboreal_essence>], 400, 10, 2);

# Coralium Decorated Blood Star
recipes.addShaped(<contenttweaker:coralium_decorated_blood_star>, [[<abyssalcraft:cingot>,<evilcraft:dark_power_gem>,<abyssalcraft:cingot>],[<evilcraft:dark_power_gem>,<evilcraft:blood_infusion_core>,<evilcraft:dark_power_gem>],[<abyssalcraft:cingot>,<evilcraft:dark_power_gem>,<abyssalcraft:cingot>]]);

# Concentrated Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:concentrated_catalyst>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:strengthened_catalyst>,<mekanism:shard>,<mekanism:shard:4>,<contenttweaker:rf_powder>,<contenttweaker:rf_powder>], 400, 5, 3);

# Crepitous
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:crepitous>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:terrae>,<contenttweaker:orbis_terrae>,<contenttweaker:mobgrindium_ingot>,<extrautils2:compressedcobblestone:1>,<enderio:item_material:20>], 1600, 10, 3);

# Tempestas
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:tempestas>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:aether>,<contenttweaker:crystallos>,<evilcraft:weather_container>,<minecraft:double_plant>,<extrautils2:ingredients:3>], 1600, 10, 3);

# Offensa
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:offensa>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:incendium>,<contenttweaker:magicales>,<enderio:item_dark_steel_sword>,<divinerpg:eden_arrow>,<minecraft:splash_potion>.withTag({Potion: "minecraft:strong_harming"})], 1600, 10, 3);

# Virtus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:virtus>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:incendium>,<contenttweaker:sanctus>,<enderio:item_alloy_endergy_ingot:4>,<contenttweaker:fluxed_electrum_ingot>,<actuallyadditions:item_crystal_empowered:5>], 1600, 10, 3);

# Intensive Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:intensive_catalyst>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:concentrated_catalyst>,<mekanism:crystal>,<mekanism:crystal:4>,<thermalfoundation:material:1028>,<thermalfoundation:material:1028>], 3000, 5, 4);

# Reductus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:reductus>, [<contenttweaker:intensive_catalyst>,<contenttweaker:orbis_terrae>,<contenttweaker:magicales>,<actuallyadditions:item_crystal_empowered:4>,<alchemistry:ingot:3>,<contenttweaker:livingmatter>], 20000, 10, 4);

# Tenebrae
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:tenebrae>, [<contenttweaker:intensive_catalyst>,<contenttweaker:crepitous>,<contenttweaker:magicales>,<contenttweaker:compressed_obsidian1>,<enderio:block_alloy:6>,<ore:dyeBlack>], 20000, 10, 4);

# Praesidium
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:praesidium>, [<contenttweaker:intensive_catalyst>,<contenttweaker:crepitous>,<contenttweaker:sanctus>,<minecraft:splash_potion>.withTag({Potion: "minecraft:long_strength"}),<abyssalcraft:coraliumstone>,<thermalfoundation:glass_alloy:2>], 20000, 10, 4);

# Potentia
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:potentia>, [<contenttweaker:intensive_catalyst>,<contenttweaker:tempestas>,<contenttweaker:magicales>,<minecraft:lapis_block>,<draconicevolution:potentiometer>,<divinerpg:aqua_ball>], 20000, 10, 4);

# Frozen Blood Core
recipes.addShaped(<contenttweaker:frozen_blood_core>, [[<contenttweaker:icy_core>,<evilcraft:undead_log>,<contenttweaker:icy_core>],[<evilcraft:undead_log>,<evilcraft:promise_acceptor>,<evilcraft:undead_log>],[<contenttweaker:icy_core>,<evilcraft:undead_log>,<contenttweaker:icy_core>]]);

# Blood Infused Leather
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:blood_infused_leather>, <contenttweaker:industrial_leather>, 2, 8000, 50, 50);
mods.evilcraft.BloodInfuser.addRecipe(<contenttweaker:industrial_leather>, <liquid:evilcraftblood> * 8000, 1, <contenttweaker:blood_infused_leather>, 160, 0);

# Dirty Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:dirty_reagent>, [<minecraft:dirt:1>,<roots:elemental_soil_air>,<roots:elemental_soil_water>,<roots:elemental_soil_fire>], 8, 4);

# Wizard's Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:wizards_reagent>, [<mysticalworld:amethyst_gem>,<bewitchment:garnet>,<bewitchment:opal>,<thaumcraft:amber>], 80, 12);

# Neutral Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:neutral_reagent>, [<minecraft:clay>,<minecraft:quartz_block>,<minecraft:concrete:8>,<minecraft:glass>], 300, 36);

# Tempest Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:tempest_reagent>, [<extrautils2:passivegenerator:4>,<totemic:wind_chime>,<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}),<mekanism:speedupgrade>], 300, 36);

# Damage Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:damage_reagent>, [<abyssalcraft:dreadiumsword>,<spartanshields:shield_abyssalcraft_dreadium>,<minecraft:potion>.withTag({Potion: "cofhcore:harming4"}),<minecraft:lava_bucket>], 300, 36);

# Strength Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:strength_reagent>, [<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}),<immersiveengineering:toolupgrade:12>,<contenttweaker:steaming_restonia_crystal>,<quantumflux:craftingpiece:2>], 300, 36);

# Potent Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:potent_reagent>, [<minecraft:potion>.withTag({Potion: "cofhcore:absorption4"}),<actuallyadditions:item_crystal_empowered:1>,<appliedenergistics2:material:12>,<thermalfoundation:material:514>], 500, 72);

# Empty Core
recipes.addShaped(<contenttweaker:empty_core>, [[<thermalfoundation:glass:7>,<contenttweaker:simple_catalyst>,<thermalfoundation:glass:7>],[<contenttweaker:simple_catalyst>,<enderio:item_material:14>,<contenttweaker:simple_catalyst>],[<thermalfoundation:glass:7>,<contenttweaker:simple_catalyst>,<thermalfoundation:glass:7>]]);

# Function to add custom Blood Magic Cores
function addCustomBloodMagicCore(core as IItemStack, essence as IIngredient, reagent as IIngredient, blood_orb as IIngredient) {
	recipes.addShaped(core, [[essence,reagent,essence],[reagent,<contenttweaker:empty_core>,reagent],[essence,blood_orb,essence]]);
}

# Gusty Core
addCustomBloodMagicCore(<contenttweaker:gusty_core>, <contenttweaker:aether>, <bloodmagic:component:2>, blood_orb_at_least_tier_1);

# Aquatic Core
addCustomBloodMagicCore(<contenttweaker:aquatic_core>, <contenttweaker:aquasalus>, <bloodmagic:component>, blood_orb_at_least_tier_1);

# Fire Core
addCustomBloodMagicCore(<contenttweaker:fire_core>, <contenttweaker:incendium>, <bloodmagic:component:1>, blood_orb_at_least_tier_1);

# Earthen Core
addCustomBloodMagicCore(<contenttweaker:earthen_core>, <contenttweaker:terrae>, <contenttweaker:dirty_reagent>, blood_orb_at_least_tier_1);

# Holy Core
addCustomBloodMagicCore(<contenttweaker:holy_core>, <contenttweaker:sanctus>, <bloodmagic:component:13>, blood_orb_at_least_tier_2);

# Magical Core
addCustomBloodMagicCore(<contenttweaker:magical_core>, <contenttweaker:magicales>, <contenttweaker:wizards_reagent>, blood_orb_at_least_tier_2);

# Icy Core
addCustomBloodMagicCore(<contenttweaker:icy_core>, <contenttweaker:crystallos>, <bloodmagic:component:32>, blood_orb_at_least_tier_2);

# Environmental Core
addCustomBloodMagicCore(<contenttweaker:environmental_core>, <contenttweaker:orbis_terrae>, <bloodmagic:component:5>, blood_orb_at_least_tier_2);

# Defensive Core
addCustomBloodMagicCore(<contenttweaker:defensive_core>, <contenttweaker:crepitous>, <contenttweaker:neutral_reagent>, blood_orb_at_least_tier_3);

# Tempest Core
addCustomBloodMagicCore(<contenttweaker:tempest_core>, <contenttweaker:tempestas>, <contenttweaker:tempest_reagent>, blood_orb_at_least_tier_3);

# Offensive Core
addCustomBloodMagicCore(<contenttweaker:offensive_core>, <contenttweaker:offensa>, <contenttweaker:damage_reagent>, blood_orb_at_least_tier_3);

# Power Core
addCustomBloodMagicCore(<contenttweaker:power_core>, <contenttweaker:virtus>, <contenttweaker:strength_reagent>, blood_orb_at_least_tier_3);

# Reduction Core
addCustomBloodMagicCore(<contenttweaker:reduction_core>, <contenttweaker:reductus>, <bloodmagic:component:31>, blood_orb_at_least_tier_4);

# Dark Core
addCustomBloodMagicCore(<contenttweaker:dark_core>, <contenttweaker:tenebrae>, <bloodmagic:component:4>, blood_orb_at_least_tier_4);

# Suppression Core
addCustomBloodMagicCore(<contenttweaker:suppression_core>, <contenttweaker:praesidium>, <bloodmagic:component:9>, blood_orb_at_least_tier_4);

# Potency Core
addCustomBloodMagicCore(<contenttweaker:potency_core>, <contenttweaker:potentia>, <contenttweaker:potent_reagent>, blood_orb_at_least_tier_4);

# Unholy Essence
<contenttweaker:unholy_essence>.addTooltip(format.yellow("Found in Eden Dungeons."));

# Feather of the Wild Woods
<contenttweaker:feather_of_the_wild_woods>.addTooltip(format.blue("Found in Wildwood Dungeons."));

# Bloodied Dust
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:dull_dust>, <liquid:evilcraftblood> * 10000, 2, <contenttweaker:bloodied_dust>, 100, 0);

# Cracked Runic Plate
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:cracked_runic_plate>, [<bloodmagic:slate:2>,<bloodmagic:slate:2>,<contenttweaker:concentrated_catalyst>,<contenttweaker:concentrated_catalyst>,<contenttweaker:defensive_core>,<contenttweaker:offensive_core>], 10000, 20, 3);

# Clean Runic Plate
mods.evilcraft.BloodInfuser.addRecipe(<contenttweaker:cracked_runic_plate>, <liquid:evilcraftblood> * 200000, 3, <contenttweaker:clean_runic_plate>, 400, 0);

# Arboreal Essence
Pyre.addRecipe("arboreal_essence", <contenttweaker:arboreal_essence> * 5, [<natura:overworld_sapling:1>,<natura:overworld_sapling2:2>,<natura:overworld_sapling2>,<natura:overworld_sapling:3>,<contenttweaker:hardened_blood_droplet>]);

# Custom AE2 Press duping and crafting
val custom_ae2_presses = [<contenttweaker:inscriber_estimation_press>,<contenttweaker:inscriber_operation_press>,<contenttweaker:inscriber_methodology_press>,<contenttweaker:inscriber_clearance_press>,<contenttweaker:inscriber_scheduling_press>] as IItemStack[];
val custom_ae2_press_materials = [<contenttweaker:coated_clathrate>,<thermalfoundation:material:136>,<plustic:osmiridiumingot>,<botania:manaresource:7>,<thaumcraft:ingot>] as IItemStack[];
for i in 0 to 5 {
	Inscriber.addRecipe(custom_ae2_presses[i], <thermalfoundation:storage_alloy>, true, custom_ae2_presses[i]);
	recipes.addShaped(custom_ae2_presses[i], [[<mysticalagriculture:certus_quartz_essence>,<mysticalagriculture:certus_quartz_essence>,<mysticalagriculture:certus_quartz_essence>],[<mysticalagriculture:certus_quartz_essence>,custom_ae2_press_materials[i],<mysticalagriculture:certus_quartz_essence>],[<mysticalagriculture:certus_quartz_essence>,<mysticalagriculture:certus_quartz_essence>,<mysticalagriculture:certus_quartz_essence>]]);
}

# Petal of the Daisy
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_daisy>, [<ore:petalWhite>,<ore:petalWhite>,<ore:petalWhite>,<ore:petalYellow>]);

# Hydrating Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:hydrating_petal>, [<ore:petalLightBlue>,<ore:petalLightBlue>,<ore:petalCyan>,<ore:petalBlue>]);

# Petal of the Inner Flame
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_inner_flame>, [<ore:petalBrown>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalYellow>]);

# Livingmatter
val dimensionalDirts = [<divinerpg:frozen_dirt>,<divinerpg:eden_dirt>,<divinerpg:wildwood_dirt>,<divinerpg:apalachia_dirt>,<divinerpg:skythern_dirt>,<divinerpg:mortum_dirt>,<divinerpg:arcanite_dirt>,<divinerpg:dream_dirt>,<abyssalcraft:abyssalsand>,<abyssalcraft:dreadlandsdirt>,<aether_legacy:aether_dirt:*>] as IItemStack[];
for dim_dirt in dimensionalDirts {
	mods.botania.PureDaisy.addRecipe(dim_dirt, <contenttweaker:livingmatter>, 75);
}
<contenttweaker:livingmatter>.addTooltip(format.white(format.italic("It seems only certain Dimensional Dirts")));
<contenttweaker:livingmatter>.addTooltip(format.white(format.italic("have the ability to be transformed")));
<contenttweaker:livingmatter>.addTooltip(format.white(format.italic("into Livingmatter... How peculiar.")));

# Hydrid Abyssalium Ingot & Block
EIOAlloySmelter.addRecipe(<contenttweaker:hybrid_abyssalium_ingot>, [<abyssalcraft:abychunk>, <abyssalcraft:abyingot>, <abyssalcraft:dreadiumingot>], 16000);
EIOAlloySmelter.addRecipe(<contenttweaker:hybrid_abyssalium_ingot>, [<abyssalcraft:dreadchunk>, <abyssalcraft:abyingot>, <abyssalcraft:dreadiumingot>], 16000);
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:hybrid_abyssalium_ingot>, <abyssalcraft:abychunk>, null, 120, 200, [<abyssalcraft:abyingot>, <abyssalcraft:dreadiumingot>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:hybrid_abyssalium_ingot>, <abyssalcraft:dreadchunk>, null, 120, 200, [<abyssalcraft:abyingot>, <abyssalcraft:dreadiumingot>]);
recipes.addShaped(<contenttweaker:hybrid_abyssalium_block>, [[<contenttweaker:hybrid_abyssalium_ingot>,<contenttweaker:hybrid_abyssalium_ingot>,<contenttweaker:hybrid_abyssalium_ingot>],[<contenttweaker:hybrid_abyssalium_ingot>,<contenttweaker:hybrid_abyssalium_ingot>,<contenttweaker:hybrid_abyssalium_ingot>],[<contenttweaker:hybrid_abyssalium_ingot>,<contenttweaker:hybrid_abyssalium_ingot>,<contenttweaker:hybrid_abyssalium_ingot>]]);
recipes.addShapeless(<contenttweaker:hybrid_abyssalium_ingot> * 9, [<contenttweaker:hybrid_abyssalium_block>]);

# Effulgent Spike of Apalachia
<contenttweaker:effulgent_spike_of_apalachia>.addTooltip(format.lightPurple("Found in Apalachia Dungeons."));

# Effulgent Apalachian Spike Crown
recipes.addShaped(<contenttweaker:effulgent_apalachian_spike_crown>, [[null,<contenttweaker:effulgent_spike_of_apalachia>,null],[<contenttweaker:effulgent_spike_of_apalachia>,<contenttweaker:effulgent_spike_of_apalachia>,<contenttweaker:effulgent_spike_of_apalachia>]]);

# Electrotine Ore
<ore:oreElectrotine>.add(<contenttweaker:electrotine_ore>);

# Electrotine
<ore:dustElectrotine>.add(<contenttweaker:electrotine>);
<ore:dustElectrotine>.remove(<projectred-core:resource_item:105>);
recipes.addShaped(<contenttweaker:electrotine> * 16, [[<mysticalagriculture:electrotine_essence>,<mysticalagriculture:electrotine_essence>,<mysticalagriculture:electrotine_essence>],[<mysticalagriculture:electrotine_essence>,<mysticalagriculture:electrotine_essence>,<mysticalagriculture:electrotine_essence>],[<mysticalagriculture:electrotine_essence>,<mysticalagriculture:electrotine_essence>,<mysticalagriculture:electrotine_essence>]]);

<contenttweaker:electrotine_ore>.addTooltip(format.white("Use the Blood Magic ") + format.red("Mark of the Fallen Tower") + format.white(" Ritual"));
<contenttweaker:electrotine_ore>.addTooltip(format.white("to summon a Meteor containing ") + format.aqua("Electrotine Ore") + format.white("."));
<contenttweaker:electrotine_ore>.addTooltip(format.darkGray(format.italic("<Hold Shift for more info>")));
<contenttweaker:electrotine_ore>.addShiftTooltip(format.white("1) Get a Master Ritual Stone and an additional 100 Ritual Stones."));
<contenttweaker:electrotine_ore>.addShiftTooltip(format.white("2) Use a ") + format.gray("Ritual Diviner [Dusk]") + format.white(" to set up the Ritual."));
<contenttweaker:electrotine_ore>.addShiftTooltip(format.white("3) Place an Obsidian Block about 10-11 blocks above the Master"));
<contenttweaker:electrotine_ore>.addShiftTooltip(format.white("   Ritual Stone to catch the falling Meteor, so your Ritual Stones"));
<contenttweaker:electrotine_ore>.addShiftTooltip(format.white("   aren't ruined."));
<contenttweaker:electrotine_ore>.addShiftTooltip(format.white("4) Have at least ") + format.red("1,000,000 LP") + format.white(" in your Life Network."));
<contenttweaker:electrotine_ore>.addShiftTooltip(format.white("5) Activate the Ritual with an ") + format.darkAqua("Awakened Activation Crystal") + format.white("."));
<contenttweaker:electrotine_ore>.addShiftTooltip(format.white("6) Throw a ") + format.blue("Potency Core") + format.white(" on top of the Master Ritual Stone."));
<contenttweaker:electrotine_ore>.addShiftTooltip(format.white("7) Mine up the results. You can automate the process with a Builder."));

# Angelic Silicon/Crystal Mixture
recipes.addShaped(<contenttweaker:angelic_silicon_crystal_mixture>, [[<bloodmagic:item_demon_crystal:2>,<projectred-core:resource_item:341>,<bloodmagic:item_demon_crystal:2>],[<bloodmagic:item_demon_crystal:3>,<projectred-core:resource_item:320>,<bloodmagic:item_demon_crystal:3>],[<bloodmagic:item_demon_crystal:4>,<projectred-core:resource_item:342>,<bloodmagic:item_demon_crystal:4>]]);
recipes.addShapeless(<contenttweaker:angelic_silicon_crystal_mixture> * 9, [<contenttweaker:angelic_silicon_crystal_block>]);

# Angelic Silicon Crystal Block
recipes.addShaped(<contenttweaker:angelic_silicon_crystal_block>, [[<contenttweaker:angelic_silicon_crystal_mixture>,<contenttweaker:angelic_silicon_crystal_mixture>,<contenttweaker:angelic_silicon_crystal_mixture>],[<contenttweaker:angelic_silicon_crystal_mixture>,<contenttweaker:angelic_silicon_crystal_mixture>,<contenttweaker:angelic_silicon_crystal_mixture>],[<contenttweaker:angelic_silicon_crystal_mixture>,<contenttweaker:angelic_silicon_crystal_mixture>,<contenttweaker:angelic_silicon_crystal_mixture>]]);

# Crystallized Mana Cluster
recipes.addShaped(<contenttweaker:crystallized_mana_cluster>, [[<contenttweaker:crystallized_mana>,<contenttweaker:crystallized_mana>,<contenttweaker:crystallized_mana>],[<contenttweaker:crystallized_mana>,<contenttweaker:crystallized_mana>,<contenttweaker:crystallized_mana>],[<contenttweaker:crystallized_mana>,<contenttweaker:crystallized_mana>,<contenttweaker:crystallized_mana>]]);

# Crystallized Mana
recipes.addShaped(<contenttweaker:crystallized_mana>, [[<contenttweaker:crystallized_mana_shard>,<contenttweaker:crystallized_mana_shard>,<contenttweaker:crystallized_mana_shard>],[<contenttweaker:crystallized_mana_shard>,<contenttweaker:crystallized_mana_shard>,<contenttweaker:crystallized_mana_shard>],[<contenttweaker:crystallized_mana_shard>,<contenttweaker:crystallized_mana_shard>,<contenttweaker:crystallized_mana_shard>]]);
recipes.addShapeless(<contenttweaker:crystallized_mana> * 9, [<contenttweaker:crystallized_mana_cluster>]);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<contenttweaker:rune_of_mana>, <contenttweaker:crystallized_mana> * 3, 1.0);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<botania:storage:3>, <contenttweaker:crystallized_mana>, 0.5);

# Crystallized Mana Shard
recipes.addShaped(<contenttweaker:crystallized_mana_shard>, [[<contenttweaker:crystallized_mana_fragment>,<contenttweaker:crystallized_mana_fragment>,<contenttweaker:crystallized_mana_fragment>],[<contenttweaker:crystallized_mana_fragment>,<contenttweaker:crystallized_mana_fragment>,<contenttweaker:crystallized_mana_fragment>],[<contenttweaker:crystallized_mana_fragment>,<contenttweaker:crystallized_mana_fragment>,<contenttweaker:crystallized_mana_fragment>]]);
recipes.addShapeless(<contenttweaker:crystallized_mana_shard> * 9, [<contenttweaker:crystallized_mana>]);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<botania:storage>, <contenttweaker:crystallized_mana_shard> * 3, 0.5);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<botania:manaresource:2>, <contenttweaker:crystallized_mana_shard>, 0.2);

# Crystallized Mana Fragment
recipes.addShapeless(<contenttweaker:crystallized_mana_fragment> * 9, [<contenttweaker:crystallized_mana_shard>]);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<botania:manaresource:1>, <contenttweaker:crystallized_mana_fragment>, 0.1);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<botania:manaresource>, <contenttweaker:crystallized_mana_fragment> * 3, 0.1);

# Crystallized Sodium Cluster
recipes.addShaped(<contenttweaker:crystallized_sodium_cluster>, [[<contenttweaker:crystallized_sodium>,<contenttweaker:crystallized_sodium>,<contenttweaker:crystallized_sodium>],[<contenttweaker:crystallized_sodium>,<contenttweaker:crystallized_sodium>,<contenttweaker:crystallized_sodium>],[<contenttweaker:crystallized_sodium>,<contenttweaker:crystallized_sodium>,<contenttweaker:crystallized_sodium>]]);

# Crystallized Sodium
recipes.addShaped(<contenttweaker:crystallized_sodium>, [[<contenttweaker:crystallized_sodium_shard>,<contenttweaker:crystallized_sodium_shard>,<contenttweaker:crystallized_sodium_shard>],[<contenttweaker:crystallized_sodium_shard>,<contenttweaker:crystallized_sodium_shard>,<contenttweaker:crystallized_sodium_shard>],[<contenttweaker:crystallized_sodium_shard>,<contenttweaker:crystallized_sodium_shard>,<contenttweaker:crystallized_sodium_shard>]]);
recipes.addShapeless(<contenttweaker:crystallized_sodium> * 9, [<contenttweaker:crystallized_sodium_cluster>]);

# Crystallized Sodium Shard
recipes.addShaped(<contenttweaker:crystallized_sodium_shard>, [[<contenttweaker:crystallized_sodium_fragment>,<contenttweaker:crystallized_sodium_fragment>,<contenttweaker:crystallized_sodium_fragment>],[<contenttweaker:crystallized_sodium_fragment>,<contenttweaker:crystallized_sodium_fragment>,<contenttweaker:crystallized_sodium_fragment>],[<contenttweaker:crystallized_sodium_fragment>,<contenttweaker:crystallized_sodium_fragment>,<contenttweaker:crystallized_sodium_fragment>]]);
recipes.addShapeless(<contenttweaker:crystallized_sodium_shard> * 9, [<contenttweaker:crystallized_sodium>]);

# Crystallized Sodium Fragment
recipes.addShapeless(<contenttweaker:crystallized_sodium_fragment> * 9, [<contenttweaker:crystallized_sodium_shard>]);

# Manastar Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:manastar_petal>, [<ore:petalBlue>,<ore:petalBlue>,<ore:petalRed>,<ore:petalWhite>]);

# Thermal Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:thermal_petal>, [<ore:petalOrange>,<ore:petalOrange>,<ore:petalRed>,<ore:petalRed>]);

# Petal of the Arcane Rose
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_arcane_rose>, [<ore:petalPink>,<ore:petalMagenta>,<ore:petalMagenta>,<ore:petalPurple>]);

# Petal of the Gourmaryllis
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_gourmaryllis>, [<ore:petalYellow>,<ore:petalYellow>,<ore:petalYellow>,<ore:petalLightGray>]);

# Petal of the Narslimmus
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_narslimmus>, [<ore:petalLime>,<ore:petalLime>,<ore:petalGreen>,<ore:petalGray>]);

# Jaded Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:jaded_petal>, [<ore:petalRed>,<ore:petalPurple>,<ore:petalLime>,<ore:petalBlack>]);
<contenttweaker:jaded_petal>.addTooltip(format.darkGreen(format.italic("A certain server owner's favorite Petal!")));

# Thorny Belle Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:thorny_belle_petal>, [<ore:petalRed>,<ore:petalRed>,<ore:petalRed>,<ore:petalBlack>]);

# Thorny Dread Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:thorny_dread_petal>, [<ore:petalBlack>,<ore:petalBlack>,<ore:petalBlack>,<ore:petalRed>]);

# Tigerseye Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:tigerseye_petal>, [<ore:petalYellow>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalBlack>]);

# Petal of the Exoflame
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_exoflame>, [<ore:petalOrange>,<ore:petalRed>,<ore:petalBrown>,<ore:petalBlack>]);

# Agricarnatic Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:agricarnatic_petal>, [<ore:petalLime>,<ore:petalLime>,<ore:petalLime>,<ore:petalGreen>]);

# Hopping Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:hopping_petal>, [<ore:petalGray>,<ore:petalGray>,<ore:petalLightGray>,<ore:petalLightGray>]);

# Petal of the Rannuncarpus
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_rannuncarpus>, [<ore:petalYellow>,<ore:petalYellow>,<ore:petalOrange>,<ore:petalPink>]);

# Tangled Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:tangled_petals>, [<ore:petalGreen>,<ore:petalLightBlue>,<ore:petalCyan>,<ore:petalGray>]);

# Petal of the Jiyuulia
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_jiyuulia>, [<ore:petalMagenta>,<ore:petalMagenta>,<ore:petalPurple>,<ore:petalLightGray>]);

# Clay Cone Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:clay_cone_petal>, [<ore:petalLightGray>,<ore:petalLightGray>,<ore:petalLightGray>,<ore:petalGreen>]);

# Daffomill Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:daffomill_petal>, [<ore:petalYellow>,<ore:petalYellow>,<ore:petalOrange>,<ore:petalBrown>]);

# Petal of the Solegnolia
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_solegnolia>, [<ore:petalYellow>,<ore:petalOrange>,<ore:petalRed>,<ore:petalBrown>]);

# Petal of the Bergamute
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_bergamute>, [<ore:petalYellow>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalOrange>]);

# Muching Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:munching_petal>, [<ore:petalGreen>,<ore:petalLime>,<ore:petalLime>,<ore:petalRed>]);

# Petal of the Entropinnyum
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_entropinnyum>, [<ore:petalRed>,<ore:petalRed>,<ore:petalBlack>,<ore:petalGray>]);

# Spectacular Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:spectacular_petal>, [<ore:petalWhite>,<ore:petalBlue>,<ore:petalRed>,<ore:petalGreen>]);

# Petal of the Rafflowsia
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_rafflowsia>, [<ore:petalPurple>,<ore:petalPurple>,<ore:petalYellow>,<ore:petalGreen>]);

# Petal of the Game of Life
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_game_of_life>, [<ore:petalYellow>,<ore:petalLime>,<ore:petalLime>,<ore:petalPink>]);

# Petal of a Slice o' Cake
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_a_slice_o_cake>, [<ore:petalWhite>,<ore:petalOrange>,<ore:petalBrown>,<ore:petalBrown>]);

# Petal Me Not
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_me_not>, [<ore:petalLightGray>,<ore:petalYellow>,<ore:petalMagenta>,<ore:petalPurple>]);

# Dreaming Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:dreaming_petal>, [<ore:petalPurple>,<ore:petalPurple>,<ore:petalPink>,<ore:petalMagenta>]);

# Morphing Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:morphing_petal>, [<ore:petalLightGray>,<ore:petalCyan>,<ore:petalGreen>,<ore:petalRed>]);

# Orechid Petallius
mods.botania.Apothecary.addRecipe(<contenttweaker:orechid_petallius>, [<ore:petalGray>,<ore:petalGray>,<ore:petalBrown>,<ore:petalLightBlue>]);

# Orechid Ignem Petallius
mods.botania.Apothecary.addRecipe(<contenttweaker:orechid_ignem_petallius>, [<ore:petalRed>,<ore:petalLightBlue>,<ore:petalBrown>,<ore:petalRed>]);

# Petal of the Hyacidus
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_hyacidus>, [<ore:petalPurple>,<ore:petalPurple>,<ore:petalPurple>,<ore:petalMagenta>]);

# Pollinating Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:pollinating_petal>, [<ore:petalRed>,<ore:petalRed>,<ore:petalPink>,<ore:petalYellow>]);

# Medomune Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:medumone_petal>, [<ore:petalBrown>,<ore:petalBrown>,<ore:petalBrown>,<ore:petalGray>]);

# Petal of the Fallen Kanade
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_fallen_kanade>, [<ore:petalWhite>,<ore:petalWhite>,<ore:petalWhite>,<ore:petalLime>]);

# Loonium Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:loonium_petal>, [<ore:petalGreen>,<ore:petalGreen>,<ore:petalBrown>,<ore:petalWhite>]);

# Petal of the Vinculotus
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_vinculotus>, [<ore:petalWhite>,<ore:petalLightBlue>,<ore:petalLightBlue>,<ore:petalGreen>]);

# Spectralight Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:spectralight_petal>, [<ore:petalWhite>,<ore:petalWhite>,<ore:petalLightGray>,<ore:petalLime>]);

# Blubbing Petal
mods.botania.Apothecary.addRecipe(<contenttweaker:blubbing_petal>, [<ore:petalLime>,<ore:petalCyan>,<ore:petalLightBlue>,<ore:petalGreen>]);

# Omothol Soul
recipes.addShaped(<contenttweaker:omothol_soul>, [[<abyssalcraft:omotholflesh>,<abyssalcraft:eldritchscale>,<abyssalcraft:omotholflesh>],[<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>],[<abyssalcraft:omotholflesh>,<abyssalcraft:eldritchscale>,<abyssalcraft:omotholflesh>]]);

# Soul Extractor
recipes.addShapedMirrored(<contenttweaker:soul_extractor>, [[<contenttweaker:dark_core>,<contenttweaker:dark_core>,null],[<contenttweaker:dark_core>,<contenttweaker:omothol_soul>,<contenttweaker:magical_core>],[null,<contenttweaker:magical_core>,<contenttweaker:omothol_soul>]]);

# Soul of the Dark Realm

/*

recipes.addShapeless("soul_of_the_dark_realm", <contenttweaker:soul_of_the_dark_realm>, [<contenttweaker:soul_extractor>.anyDamage().transformDamage(1),<abyssalcraft:soulreaper:*>.marked("sword").transform( function(item, player) {
	return item.withTag({souls: item.tag.souls - 1});
})],
function(out, ins, cInfo) {
	if(ins.sword.tag has "souls" && ins.sword.tag.souls > 0) {
		return out;
	} else {
		return null;
	}
}, null);
*/
/*
recipes.addShapeless("soul_of_the_dark_realm", <contenttweaker:soul_of_the_dark_realm>, [ <contenttweaker:soul_extractor>.anyDamage().transformDamage(1), <abyssalcraft:soulreaper:*>.only( function(item) {
	return item.tag has "souls" && item.tag.souls >= 1;
} ).transform( function(item, player) {
	return item.withTag({souls: item.tag.souls - 1});
} ).reuse() ]);


recipes.addShapeless("soul_of_the_dark_realm", <contenttweaker:soul_of_the_dark_realm>, [<contenttweaker:soul_extractor>.anyDamage().transformDamage(1),<abyssalcraft:soulreaper:*>.reuse().marked("sword")],
function(out, ins, cInfo) {
	if(ins.sword.tag has "souls") {
		if(ins.sword.tag.souls > 0) {
			return out;
		} else {
			return null;
		}
	} else {
		return null;
	}
},
function(out, cInfo, player){
	var sword_position = 0 as int;
	for i in 0 to cInfo.inventory.size {
		if(!isNull(cInfo.inventory.getStack(i))) {
			if(cInfo.inventory.getStack(i).name == <abyssalcraft:soulreaper>.name) {
				sword_position = i;
				break;
			}
		}
	}
	val number_of_souls = cInfo.inventory.getStack(sword_position).tag.souls;
	val sword_damage = cInfo.inventory.getStack(sword_position).damage;
	cInfo.inventory.setStack(sword_position, <abyssalcraft:soulreaper>.withDamage(sword_damage).withTag({souls: number_of_souls - 1}));
});
*/

recipes.addShapeless("soul_of_the_dark_realm", <contenttweaker:soul_of_the_dark_realm>, [<contenttweaker:soul_extractor>.anyDamage().transformDamage(1),<abyssalcraft:soulreaper:*>.reuse().marked("sword")],
function(out, ins, cInfo) {
	if(ins.sword.tag has "souls" && ins.sword.tag.souls > 0) {
		return out;
	} else {
		return null;
	}
},
function(out, cInfo, player){
	var sword_position = 0 as int;
	for i in 0 to cInfo.inventory.size {
		if(!isNull(cInfo.inventory.getStack(i))) {
			if(cInfo.inventory.getStack(i).name == <abyssalcraft:soulreaper>.name) {
				sword_position = i;
				break;
			}
		}
	}
	var sword_tag = cInfo.inventory.getStack(sword_position).tag as IData;
	val number_of_souls = cInfo.inventory.getStack(sword_position).tag.souls;
	val sword_damage = cInfo.inventory.getStack(sword_position).damage;
	cInfo.inventory.setStack(sword_position, <abyssalcraft:soulreaper>.withDamage(sword_damage).withTag(sword_tag + {souls: number_of_souls - 1}));
});


recipes.addShapeless(<contenttweaker:soul_of_the_dark_realm> * 9, [<contenttweaker:dark_realm_soul_block>]);
<contenttweaker:soul_of_the_dark_realm>.addTooltip(format.white("Obtained by removing Souls from ") + format.gray("Sacthoth's Soul Reaper Blade") + format.white("."));
<contenttweaker:soul_of_the_dark_realm>.addTooltip(format.white("To obtain Souls, slay monsters with the sword."));

# Dark Realm Soul Block
recipes.addShaped(<contenttweaker:dark_realm_soul_block>, [[<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>],[<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>],[<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>]]);

# Dreammatter
mods.botania.ElvenTrade.addRecipe([<contenttweaker:dreammatter>], [<contenttweaker:livingmatter>]);

# Rune of Deception
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_deception>, [<contenttweaker:rune_of_spring>, <contenttweaker:rune_of_water>, <botania:manaresource:8>, <contenttweaker:dreammatter>, <botania:storage:3>], 20000);
#<ore:runeDeceptionB>.add(<contenttweaker:rune_of_deception>);

# Purified Tablet
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:purified_tablet>, [<bloodmagic:slate:4>,<bloodmagic:blood_shard>,<bloodmagic:blood_shard>,<contenttweaker:clean_runic_plate>,<contenttweaker:clean_runic_plate>,<contenttweaker:rune_of_sloth>], 60000, 20, 5);

# Hyper Diamond Block
recipes.addShaped(<contenttweaker:hyper_diamond_block>, [[<quantumflux:craftingpiece:6>,<quantumflux:craftingpiece:6>,<quantumflux:craftingpiece:6>],[<quantumflux:craftingpiece:6>,<quantumflux:craftingpiece:6>,<quantumflux:craftingpiece:6>],[<quantumflux:craftingpiece:6>,<quantumflux:craftingpiece:6>,<quantumflux:craftingpiece:6>]]);
recipes.addShapeless(<quantumflux:craftingpiece:6> * 9, [<contenttweaker:hyper_diamond_block>]);

# Magical Tablet
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:magical_tablet>, [<contenttweaker:purified_tablet>,<botania:quartztypelavender>,<botania:storage:2>,<ore:stoneBotaniaMetamorphic>], 256, 256);

# Mystical Tablet
mods.botania.ManaInfusion.addAlchemy(<contenttweaker:mystical_tablet>, <contenttweaker:magical_tablet>, 50000);

# Rainbow Tablet
recipes.addShaped(<contenttweaker:rainbow_tablet>, [[null,<contenttweaker:rainbow_slate>,null],[<contenttweaker:mystical_tablet>,blood_orb_at_least_tier_6.reuse(),<contenttweaker:mystical_tablet>],[null,<contenttweaker:rainbow_slate>,null]]);
mods.thaumcraft.Infusion.registerRecipe("contenttweaker:RainbowTablet", "INFUSION", <contenttweaker:rainbow_tablet> * 32, 8, [<aspect:victus> * 99, <aspect:ignis> * 99, <aspect:sol> * 99, <aspect:herba> * 99, <aspect:instrumentum> * 99, <aspect:praecantatio> * 99], <contenttweaker:plasma_core>, [<botania:manaresource:14>, <contenttweaker:rainbow_slate>, <botania:manaresource:14>, <contenttweaker:rainbow_slate>, <botania:manaresource:14>, <contenttweaker:rainbow_slate>, <botania:manaresource:14>, <contenttweaker:rainbow_slate>]);

# Abyssal Wasteland Teleporter
<contenttweaker:abyssal_wasteland_teleporter>.addTooltip(format.white(format.bold(format.underline("For multiplayer purposes:"))));
<contenttweaker:abyssal_wasteland_teleporter>.addTooltip(format.white("If your portal is very far away from (0,0), and"));
<contenttweaker:abyssal_wasteland_teleporter>.addTooltip(format.white("you'd have to fly a long way to find any Abyssal"));
<contenttweaker:abyssal_wasteland_teleporter>.addTooltip(format.white("Wasteland Strongholds, then simply Right Click with"));
<contenttweaker:abyssal_wasteland_teleporter>.addTooltip(format.white("this item to teleport to (0,80,0)."));
<contenttweaker:abyssal_wasteland_teleporter>.addTooltip(format.white(format.bold("Has 3 uses.")));
<contenttweaker:abyssal_wasteland_teleporter>.addTooltip(format.white(format.bold("Warning:")) + format.white(" You definitely want to have a Jetpack"));
<contenttweaker:abyssal_wasteland_teleporter>.addTooltip(format.white("or Hang Glider equipped before you teleport."));

# Omothol Teleporter
<contenttweaker:omothol_teleporter>.addTooltip(format.white(format.bold(format.underline("For multiplayer purposes:"))));
<contenttweaker:omothol_teleporter>.addTooltip(format.white("If your portal is very far away from (0,0), and"));
<contenttweaker:omothol_teleporter>.addTooltip(format.white("you'd have to fly a long way to reach the Omothol "));
<contenttweaker:omothol_teleporter>.addTooltip(format.white("Dungeon, then simply Right Click with this item"));
<contenttweaker:omothol_teleporter>.addTooltip(format.white("to teleport to (0,80,0)."));
<contenttweaker:omothol_teleporter>.addTooltip(format.white(format.bold("One time use.")));
<contenttweaker:omothol_teleporter>.addTooltip(format.white(format.bold("Warning:")) + format.white(" You definitely want to have a Jetpack"));
<contenttweaker:omothol_teleporter>.addTooltip(format.white("or Hang Glider equipped before you teleport."));
/*
<contenttweaker:omothol_teleporter>.addTooltip(format.gray(format.italic("* May or may not cause horrible nightmares from")));
<contenttweaker:omothol_teleporter>.addTooltip(format.gray(format.italic("  this point on in your life. Please consult your")));
<contenttweaker:omothol_teleporter>.addTooltip(format.gray(format.italic("  local psychiatrist for further information.")));
*/

# Infused Magical Core
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:infused_magical_core>, 2000000, 5000, <contenttweaker:magical_core>, [<minecraft:experience_bottle>,<thaumcraft:salis_mundus>,<minecraft:experience_bottle>,<evilcraft:garmonbozia>,<minecraft:experience_bottle>,<thaumcraft:salis_mundus>]);

# Base Focal Sphere
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:base_focal_sphere>, 400000, 5000, <evilcraft:blood_orb>, [<minecraft:experience_bottle>,<thaumcraft:salis_mundus>,<minecraft:experience_bottle>,<thaumcraft:salis_mundus>,<minecraft:experience_bottle>,<evilcraft:garmonbozia>]);

# Magical Leather
mods.thaumcraft.Crucible.registerRecipe("contenttweaker:magical_leather", "", <contenttweaker:magical_leather>, <contenttweaker:blood_infused_leather>, [<aspect:praecantatio> * 10, <aspect:bestia> * 5, <aspect:auram> * 5, <aspect:spiritus> * 5]);

# Knowledge of the Sky
<contenttweaker:knowledge_of_the_sky>.addTooltip(format.white("Found in Skythern Dungeons."));

# Matrix Multiplication Unit
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:matrix_multiplication_unit> * 8, 2500000, 5000, <industrialforegoing:black_hole_unit>, [<contenttweaker:knowledge_of_the_sky>,<contenttweaker:rainbow_tablet>,<contenttweaker:knowledge_of_the_sky>,<contenttweaker:rainbow_tablet>,<contenttweaker:knowledge_of_the_sky>,<contenttweaker:rainbow_tablet>,<contenttweaker:knowledge_of_the_sky>,<contenttweaker:rainbow_tablet>]);

# Condensed Vis Crystals
var aspect_counter = 0 as int;
val allThaumcraftCTAspectStacks = [<aspect:aer>, <aspect:terra>, <aspect:ignis>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>, <aspect:vacuos>, <aspect:lux>, <aspect:motus>, <aspect:gelum>, <aspect:vitreus>, <aspect:metallum>, <aspect:victus>, <aspect:mortuus>, <aspect:potentia>, <aspect:permutatio>, <aspect:praecantatio>, <aspect:auram>, <aspect:alkimia>, <aspect:vitium>, <aspect:tenebrae>, <aspect:alienis>, <aspect:volatus>, <aspect:herba>, <aspect:instrumentum>, <aspect:fabrico>, <aspect:machina>, <aspect:vinculum>, <aspect:spiritus>, <aspect:cognitio>, <aspect:sensus>, <aspect:aversio>, <aspect:praemunio>, <aspect:desiderium>, <aspect:exanimis>, <aspect:bestia>, <aspect:humanus>, <aspect:sol>, <aspect:luna>, <aspect:stellae>, <aspect:diabolus>] as CTAspectStack[];
for aspect in allThaumcraftAspects {
	var cur_vis_crystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: aspect}]});
	mods.thaumcraft.Infusion.registerRecipe("condensed_vis_crystal_" + aspect + "_crafting", "", itemUtils.getItem("contenttweaker:condensed_vis_crystal_" + aspect), 2, [allThaumcraftCTAspectStacks[aspect_counter] * 30], <thaumcraft:salis_mundus>, [cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal,cur_vis_crystal]);
	aspect_counter += 1;
}

# Stabilized End Crystal
mods.thaumcraft.Infusion.registerRecipe("contenttweaker:stabilized_end_crystal", "", <contenttweaker:stabilized_end_crystal>, 4, [<aspect:alienis> * 100,<aspect:auram> * 100,<aspect:sol> * 80,<aspect:lux> * 40,<aspect:fabrico> * 40], <minecraft:end_crystal>, [<thaumcraft:plate:2>,<thaumcraft:vis_resonator>,<thaumcraft:plate:2>,<enderutilities:enderpart:17>]);

# Mysterious Leaking Soul
<contenttweaker:mysterious_leaking_soul>.addTooltip(format.darkGray("Found in Mortum Dungeons."));

# Woodland Mansion Locator Token
mods.actuallyadditions.Empowerer.addRecipe(<contenttweaker:woodland_mansion_locator_token>, <minecraft:map>, <actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal_empowered:4>, empowered_glod_crystal_block, 10000, 100, [0.222, 0.1641, 0.0508]);
<contenttweaker:woodland_mansion_locator_token>.addTooltip(format.white(format.bold("One time use!")));
<minecraft:totem_of_undying>.addTooltip(format.white("No luck finding a Woodland Mansion?"));
<minecraft:totem_of_undying>.addTooltip(format.white("Craft a ") + format.white(format.bold("Woodland Mansion Locator Token")) + format.white("!"));

# Brew of the Void
WitchesCauldron.addRecipe([<contenttweaker:brew_of_the_void>], [<bewitchment:bottle_of_blood>,<bewitchment:belladonna>,<bewitchment:aconitum>,<bewitchment:wormwood>,<thaumcraft:ingot>,<thaumcraft:ingot>,<minecraft:mycelium>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]})]);

# Tough Purified Paste
WitchesRitual.addRecipe("Rite of the Tough and Pure", [<contenttweaker:tough_purified_paste> * 4], [<extrautils2:compresseddirt:2>,<extrautils2:compresseddirt:2>,<extrautils2:compresseddirt:2>,<extrautils2:compresseddirt:2>,<bewitchment:salt>,<bewitchment:salt>,<thaumcraft:bath_salts>,<thaumcraft:bath_salts>,<contenttweaker:purified_tablet>], null, null, 200, WitchesRitual.RITUAL, WitchesRitual.RITUAL, WitchesRitual.NONE);

# Dragon Resin
WitchesCauldron.addRecipe([<contenttweaker:dragon_resin> * 8], [<minecraft:dragon_breath>,<botania:storage:4>,<draconicevolution:draconium_block>,<contenttweaker:tough_purified_paste>,<quark:enderdragon_scale>,<forge:bucketfilled>.withTag({FluidName: "resin", Amount: 1000}),<contenttweaker:condensed_vis_crystal_diabolus>,<contenttweaker:condensed_vis_crystal_bestia>,<bewitchment:fiery_unguent>]);

# Gypsum
Distillery.addRecipe([<contenttweaker:gypsum> * 3], [<bewitchment:wood_ash>,<bewitchment:wood_ash>,<bewitchment:tallow>,<bewitchment:swirl_of_depths>,<ore:slimeball>,<bewitchment:white_sage>]);

# Traveler's Tenacity
Distillery.addRecipe([<contenttweaker:travelers_tenacity>], [<bewitchment:oil_of_vitriol>,<bewitchment:hoof>,<bewitchment:belladonna>,<bewitchment:wormwood>,<contenttweaker:rune_of_lust>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]})]);

# Lively Nature
recipes.addShapeless(<contenttweaker:lively_nature>, [<bewitchment:oak_spirit>.noReturn(),<bewitchment:spruce_heart>.noReturn(),<bewitchment:birch_soul>.noReturn()]);

# Witches' Delicacy
recipes.addShapeless(<contenttweaker:witches_delicacy>, [<bewitchment:liquid_witchcraft>.noReturn(),<bewitchment:droplet_of_wisdom>.noReturn()]);

# Dense Demonic Elixir
recipes.addShaped(<contenttweaker:dense_demonic_elixir>, [[<bewitchment:demonic_elixir>.noReturn(),<bewitchment:demonic_elixir>.noReturn()],[<bewitchment:demonic_elixir>.noReturn(),<bewitchment:demonic_elixir>.noReturn()]]);
recipes.addShapeless(<bewitchment:demonic_elixir> * 4, [<contenttweaker:dense_demonic_elixir>]);

# Stirring Strength
recipes.addShapeless(<contenttweaker:stirring_strength>, [<bewitchment:swirl_of_depths>.noReturn(),<bewitchment:pure_filament>,<bewitchment:pure_filament>]);

# Witches' Stonebrew
recipes.addShapeless(<contenttweaker:witches_stonebrew>, [<bewitchment:stone_ichor>.noReturn(),<bewitchment:stone_ichor>.noReturn()]);
recipes.addShapeless(<bewitchment:stone_ichor> * 2, [<contenttweaker:witches_stonebrew>]);

# Flame Devourer Pendant
recipes.addShapedMirrored(<contenttweaker:flame_devourer_pendant>, [[<bewitchment:bottled_hellfire>,<bewitchment:bottled_hellfire>,<bewitchment:bottled_hellfire>],[<bewitchment:fiery_unguent>.noReturn(),<bewitchment:sigil_purity>,<bewitchment:demonic_elixir>.noReturn()],[<contenttweaker:rune_of_wrath>,<contenttweaker:travelers_tenacity>,<contenttweaker:rune_of_wrath>]]);
<contenttweaker:flame_devourer_pendant>.addTooltip(format.white("When you are inflicted with the ") + format.red("Hell Fire") + format.white(" status"));
<contenttweaker:flame_devourer_pendant>.addTooltip(format.white("effect by the Brazier, Right Clicking this item"));
<contenttweaker:flame_devourer_pendant>.addTooltip(format.white("will yield a piece of ") + format.gold("Ignition") + format.white(", which is used to"));
<contenttweaker:flame_devourer_pendant>.addTooltip(format.white("unlock ") + format.gold("LightningCraft") + format.white("."));
<contenttweaker:flame_devourer_pendant>.addTooltip(format.white("Check Codex Infernalis / Curses / Conflagration,"));
<contenttweaker:flame_devourer_pendant>.addTooltip(format.white("and use it with your own Taglock!"));

# Ignition
<contenttweaker:ignition>.addTooltip(format.white("Obtained by using a Flame Devourer Pendant"));
<contenttweaker:ignition>.addTooltip(format.white("while the Hellfire Curse is on the user."));
<contenttweaker:ignition>.addTooltip(format.white("Check Codex Infernalis / Curses / Conflagration,"));
<contenttweaker:ignition>.addTooltip(format.white("and use it with your own Taglock!"));

# Death Core
recipes.addShaped(<contenttweaker:death_core>, [[<bewitchment:poppet_deathprotection>,<bewitchment:poppet_deathprotection>,<bewitchment:poppet_deathprotection>],[<bewitchment:poppet_deathprotection>,<thermalexpansion:florb>.withTag({Fluid: "liquid_death"}),<bewitchment:poppet_deathprotection>],[<bewitchment:poppet_deathprotection>,<bewitchment:poppet_deathprotection>,<bewitchment:poppet_deathprotection>]]);

# Shard of the Grotesque
<contenttweaker:shard_of_the_grotesque>.addTooltip(format.white("Obtained by slaying Ghosts spawned by"));
<contenttweaker:shard_of_the_grotesque>.addTooltip(format.white("the Spiritual Rift Ritual. Consult your"));
<contenttweaker:shard_of_the_grotesque>.addTooltip(format.white("Book of Shadows for more info."));

# Molten Cold Iron
MagmaCrucible.addRecipe(<liquid:cold_iron> * 144, <bewitchment:cold_iron_ingot>, 4000);
MagmaCrucible.addRecipe(<liquid:cold_iron> * 1296, <bewitchment:block_of_cold_iron>, 36000);
MagmaCrucible.addRecipe(<liquid:cold_iron> * 16, <bewitchment:cold_iron_nugget>, 450);
mods.tconstruct.Melting.addRecipe(<liquid:cold_iron> * 144,<bewitchment:cold_iron_ingot>);
mods.tconstruct.Melting.addRecipe(<liquid:cold_iron> * 1296,<bewitchment:block_of_cold_iron>);
mods.tconstruct.Melting.addRecipe(<liquid:cold_iron> * 16,<bewitchment:cold_iron_nugget>);

# Cold Void Seed
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:cold_void_seed>, <thaumcraft:void_seed>, <liquid:cold_iron> * 576, 16000);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:cold_void_seed>, <thaumcraft:void_seed>, <liquid:cold_iron>, 576, true, 400);

# Cold Void Metal Ingot
TCCrucible.registerRecipe("contenttweaker:cold_void_metal_ingot", "BASEELDRITCH", <contenttweaker:cold_void_metal_ingot>, <contenttweaker:cold_void_seed>, [<aspect:metallum> * 50, <aspect:vitium> * 20, <aspect:tenebrae> * 10]);

# Impetus Crystal
recipes.addShapeless(<contenttweaker:impetus_crystal>, [<thaumcraft:primordial_pearl>.anyDamage().transformDamage(1),<thaumcraft:ingot:1>,<bewitchment:otherworldly_tears>.noReturn(),<contenttweaker:magical_leather>,<bewitchment:witches_stitching>]);
recipes.addShapeless(<contenttweaker:impetus_crystal>, [<contenttweaker:goddess_pearl>.reuse(),<thaumcraft:ingot:1>,<bewitchment:otherworldly_tears>.noReturn(),<contenttweaker:magical_leather>,<bewitchment:witches_stitching>]);

# Printed Thaumium Circuit
Inscriber.addRecipe(<contenttweaker:printed_thaumium_circuit>, <thaumcraft:ingot>, true, <contenttweaker:inscriber_scheduling_press>);

# Thaumium Processor
Inscriber.addRecipe(<contenttweaker:thaumium_processor>, <minecraft:redstone>, false, <contenttweaker:printed_thaumium_circuit>, <appliedenergistics2:material:20>);

# Conducted Impetus
recipes.addShapeless("conducted_impetus", <contenttweaker:conducted_impetus>, [<thaumicaugmentation:augment_caster_rift_energy_storage>.reuse().marked("conductor"),<contenttweaker:impetus_crystal>],
function(out, ins, cInfo) {
	if(ins.conductor.getCapNBT() has "Parent" && ins.conductor.getCapNBT().Parent has "energy" && ins.conductor.getCapNBT().Parent.energy has "energy" && ins.conductor.getCapNBT().Parent.energy.energy == 300) {
		return out;
	} else {
		return null;
	}
}, null);
<contenttweaker:conducted_impetus>.addTooltip(format.white("Requires an ") + format.lightPurple("Impetus Conductor") + format.white(" with"));
<contenttweaker:conducted_impetus>.addTooltip(format.white("Impetus Level: ") + format.darkGreen("Maximum") + format.white("."));

function checkBiomesAtPositions(biomeName as string, player_pos as Position3f, biomeLocations as int[][], cInfo as ICraftingInfo) as int {
	var numOfMatches = 0 as int;
	var check_pos as Position3f;
	var add_x = 0 as int;
	var add_z = 0 as int;
	for coord_pair in biomeLocations {
		add_x = coord_pair[0];
		add_z = coord_pair[1];
		check_pos = crafttweaker.util.Position3f.create(player_pos.x + add_x, player_pos.y, player_pos.z + add_z);
		if(cInfo.player.world.getBiome(check_pos).name == biomeName) {
			numOfMatches += 1;
		}
	}
	return numOfMatches;
}

# Arcanium Base
recipes.addShaped("arcanium_base", <contenttweaker:arcanium_base>, [[<thaumcraft:stone_ancient_glyphed>,<enderio:block_alloy_endergy:1>,<thaumcraft:stone_ancient_glyphed>],[<contenttweaker:condensed_vis_crystal_stellae>,<contenttweaker:conducted_impetus>,<contenttweaker:condensed_vis_crystal_praecantatio>],[<thaumcraft:mechanism_complex>,<enderio:block_alloy_endergy:1>,<thaumcraft:mechanism_complex>]],
	function(out, ins, cInfo) {
		val mortumBiomeLocations = [[3,3],[3,2],[3,1],[3,0],[3,-1],[3,-2],[3,-3],[2,3],[2,-3],[1,3],[1,-3],[0,3],[0,-3],[-1,3],[-1,-3],[-2,3],[-2,-3],[-3,3],[-3,2],[-3,1],[-3,0],[-3,-1],[-3,-2],[-3,-3]] as int[][];
		val hellBiomeLocations = [[2,2],[2,1],[2,0],[2,-1],[2,-2],[1,2],[1,-2],[0,2],[0,-2],[-1,2],[-1,-2],[-2,2],[-2,1],[-2,0],[-2,-1],[-2,-2]] as int[][];
		val magicalForestBiomeLocations = [[1,1],[1,0],[1,-1],[0,1],[0,-1],[-1,1],[-1,0],[-1,-1]] as int[][];
		val oceanBiomeLocations = [[0,0]] as int[][];
		var cur_pos = cInfo.player.position as Position3f;

		var mortumMatches = 0 as int;
		var hellMatches = 0 as int;
		var magicalForestMatches = 0 as int;
		var oceanMatches = 0 as int;

		mortumMatches = checkBiomesAtPositions("Mortum", cur_pos, mortumBiomeLocations, cInfo);
		hellMatches = checkBiomesAtPositions("Hell", cur_pos, hellBiomeLocations, cInfo);
		magicalForestMatches = checkBiomesAtPositions("Magical Forest", cur_pos, magicalForestBiomeLocations, cInfo);
		oceanMatches = checkBiomesAtPositions("Ocean", cur_pos, oceanBiomeLocations, cInfo);

		/*
		cInfo.player.sendChat("Mortum biome matches: " ~ mortumMatches ~ " / 24");
		cInfo.player.sendChat("Hell biome matches: " ~ hellMatches ~ " / 16");
		cInfo.player.sendChat("Magical Forest biome matches: " ~ magicalForestMatches ~ " / 8");
		cInfo.player.sendChat("Ocean biome matches: " ~ oceanMatches ~ " / 1");
		*/

		if(mortumMatches >= 22 && hellMatches >= 15 && magicalForestMatches >= 7 && oceanMatches == 1 && cInfo.player.getDimension() == 0) {
			#cInfo.player.sendChat("OUTPUT");
			return out;
		} else {
			#cInfo.player.sendChat("NULL");
			return null;
		}
	}, null);
<contenttweaker:arcanium_base>.addTooltip(format.white("This item is only craftable if you stand in a 7x7"));
<contenttweaker:arcanium_base>.addTooltip(format.white("concentric square of the following biomes (from"));
<contenttweaker:arcanium_base>.addTooltip(format.white("the outermost layer to the innermost square):"));
<contenttweaker:arcanium_base>.addTooltip(format.darkPurple("Mortum") + format.white(" biome, ") + format.red("Hell (Nether)") + format.white(" biome, ") + format.green("Magical Forest"));
<contenttweaker:arcanium_base>.addTooltip(format.white("biome, and ") + format.aqua("Ocean") + format.white(" biome. To do this, use an Arcane"));
<contenttweaker:arcanium_base>.addTooltip(format.white("Terraformer. Check the quest book -> Chapter 21:"));
<contenttweaker:arcanium_base>.addTooltip(format.white("'Ritual of the Arcane' quest for a better explanation!"));

# Primordial Fragment
recipes.addShapeless(<contenttweaker:primordial_fragment>, [<thaumcraft:primordial_pearl>.anyDamage().transformDamage(1)]);
recipes.addShapeless(<contenttweaker:primordial_fragment>, [<contenttweaker:goddess_pearl>.reuse()]);
<contenttweaker:primordial_fragment>.addTooltip(format.white("Takes 1 durability of a ") + format.gold("Primordial Pearl") + format.white(" to craft."));

# Ritualistic Biome Checker
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("contenttweaker:ritualistic_biome_checker", "", 25, [<aspect:terra> * 5,<aspect:aer> * 3], <contenttweaker:ritualistic_biome_checker>, [[<botania:managlasspane>,<thaumicaugmentation:material:5>,<botania:managlasspane>],[<thaumcraft:plate>,<thaumcraft:morphic_resonator>,<thaumcraft:plate>],[null,<thaumcraft:plate>,null]]);
<contenttweaker:ritualistic_biome_checker>.addTooltip(format.white("Used for the Ritual of the Arcane,"));
<contenttweaker:ritualistic_biome_checker>.addTooltip(format.white("detailed in Chapter 21 of the quest book."));

# Dungeon Token
recipes.addShapeless(<contenttweaker:dungeon_token> * 5, [<divinerpg:dungeon_tokens>]);

# Lightning Charge
recipes.addShapeless(<contenttweaker:lightning_charge> * 4, [<contenttweaker:dungeon_token>,<contenttweaker:ignition>,<divinerpg:clean_pearls>,<thaumicaugmentation:material:5>,<evilcraft:lightning_grenade>]);

# Undermeld
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:undermeld>, <lightningcraft:corrupt_stone>, null, 200, 500, [<lightningcraft:light_block>, <lightningcraft:under_sand>]);
EIOAlloySmelter.addRecipe(<contenttweaker:undermeld>, [<lightningcraft:corrupt_stone>, <lightningcraft:light_block>, <lightningcraft:under_sand>], 36000);

# Mystical Iron Ingot
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:mystical_iron_ingot> * 6, <lightningcraft:material:14>, null, 200, 400, [<extendedcrafting:material>, <bewitchment:cold_iron_ingot>]);
EIOAlloySmelter.addRecipe(<contenttweaker:mystical_iron_ingot> * 6, [<lightningcraft:material:14>, <extendedcrafting:material>, <bewitchment:cold_iron_ingot>], 24000);
recipes.addShapeless(<contenttweaker:mystical_iron_ingot> * 9, [<contenttweaker:mystical_iron_block>]);

# Mystical Iron Block
recipes.addShaped(<contenttweaker:mystical_iron_block>, [[<contenttweaker:mystical_iron_ingot>,<contenttweaker:mystical_iron_ingot>,<contenttweaker:mystical_iron_ingot>],[<contenttweaker:mystical_iron_ingot>,<contenttweaker:mystical_iron_ingot>,<contenttweaker:mystical_iron_ingot>],[<contenttweaker:mystical_iron_ingot>,<contenttweaker:mystical_iron_ingot>,<contenttweaker:mystical_iron_ingot>]]);

# Eye of the Nightmare
recipes.addShapeless(<contenttweaker:eye_of_the_nightmare>, [<minecraft:ender_pearl>,<minecraft:blaze_powder>,<minecraft:speckled_melon>,<divinerpg:shiny_pearls>]);

# Shattered Mystical Iron Crystal
ExplosionCrafting.explodeItemRecipe(<contenttweaker:shattered_mystical_iron_crystal>, <contenttweaker:mystical_iron_ingot>);
ExplosionCrafting.explodeBlockRecipe(<contenttweaker:shattered_mystical_iron_crystal> * 9, <contenttweaker:mystical_iron_block>);

# Growth Infusion Liquid
#mods.enderio.Vat.addRecipe(<liquid:growth_infusion_liquid> * 100, <liquid:cloud_seed_concentrated> * 100, [<bloodmagic:item_demon_crystal:1>], [1], [<bigreactors:dustblutonium>], [1], 30000);
# this crashes, so I'll add it directly to config/enderio/recipes/user/user_recipes.xml

# Sparkling Aquamarine
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:sparkling_aquamarine>, <astralsorcery:itemcraftingcomponent>, <liquid:blutonium> * 72, 6000);

# Ludicrous Ore
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:ludicrous_ore>, <minecraft:stone>, <bigreactors:ingotludicrite> * 3, 8000);

# Star Leather
mods.astralsorcery.StarlightInfusion.addInfusion(<contenttweaker:magical_leather>, <contenttweaker:star_leather>, false, 1.0, 30);

# Enchanter's PhD
recipes.addShapedMirrored(<contenttweaker:enchanters_phd>, [[null,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 70 as short}]}),null],[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 16 as short}]}),<astralsorcery:itemcraftingcomponent:5>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 48 as short}]})],[null,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 2 as short}]}),null]]);

# Astral Core
recipes.addShapedMirrored("contenttweaker_astral_core", <contenttweaker:astral_core>, [[<astralsorcery:itemtunedcelestialcrystal>.marked("c1"),null,<astralsorcery:itemtunedcelestialcrystal>.marked("c2")],[null,<astralsorcery:itemenchantmentamulet>,null],[<astralsorcery:itemtunedcelestialcrystal>.marked("c3"),null,<astralsorcery:itemtunedcelestialcrystal>.marked("c4")]],
function(out, ins, cInfo) {
	if(ins.c1.tag has "astralsorcery" && ins.c2.tag has "astralsorcery" && ins.c3.tag has "astralsorcery" && ins.c4.tag has "astralsorcery") {
		if(ins.c1.tag.astralsorcery has "constellationName" && ins.c2.tag.astralsorcery has "constellationName" && ins.c3.tag.astralsorcery has "constellationName" && ins.c4.tag.astralsorcery has "constellationName") {
			if(ins.c1.tag.astralsorcery has "trait" && ins.c2.tag.astralsorcery has "trait" && ins.c3.tag.astralsorcery has "trait" && ins.c4.tag.astralsorcery has "trait") {

				val traits = [ins.c1.tag.astralsorcery.trait,ins.c2.tag.astralsorcery.trait,ins.c3.tag.astralsorcery.trait,ins.c4.tag.astralsorcery.trait] as string[];
				if(traits has "astralsorcery.constellation.alcara" && traits has "astralsorcery.constellation.gelu" && traits has "astralsorcery.constellation.ulteria" && traits has "astralsorcery.constellation.vorux") {
					return out;
				} else {
					return null;
				}


			} else {
				return null;
			}
		} else {
			return null;
		}
	} else {
		return null;
	}

}, null);
<contenttweaker:astral_core>.addTooltip(format.white("To craft this, you will need 4 ") + format.blue("Attuned Celestial Crystals"));
<contenttweaker:astral_core>.addTooltip(format.white("that each have a ") + format.red("unique trait") + format.white(" of a Dim Constellation:"));
<contenttweaker:astral_core>.addTooltip(format.lightPurple("Alcara") + format.white(", ") + format.gray("Gelu") + format.white(", ") + format.green("Ulteria") + format.white(", and ") + format.gold("Vorux") + format.white(". To add a trait to a Crystal:"));
<contenttweaker:astral_core>.addTooltip(format.white("1. Attune it to any Constellation."));
<contenttweaker:astral_core>.addTooltip(format.white("2. Wait until a Dim Constellation is available at night."));
<contenttweaker:astral_core>.addTooltip(format.white("3. Attune it again to the Dim Constellation (this will add a"));
<contenttweaker:astral_core>.addTooltip(format.white("   ") + format.blue("Trait") + format.white(" modifier to it)."));
<contenttweaker:astral_core>.addTooltip(format.white(format.bold("CANNOT BE AUTOCRAFTED.")));

# Star of Revelation
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:star_of_revelation>,
[[<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,null,<astralsorcery:itemcraftingcomponent:1>,null,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>],
[<astralsorcery:itemusabledust>,<astralsorcery:iteminfusedglass>,<astralsorcery:itemusabledust>,<astralsorcery:blockbore>,<astralsorcery:itemusabledust>,<astralsorcery:iteminfusedglass>,<astralsorcery:itemusabledust>],
[null,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,null],
[<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockcelestialgateway>,<astralsorcery:itemusabledust>,<contenttweaker:astral_core>,<astralsorcery:itemusabledust>,<astralsorcery:blockcelestialgateway>,<astralsorcery:itemcraftingcomponent:1>],
[null,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,null],
[<astralsorcery:itemusabledust>,<astralsorcery:iteminfusedglass>,<astralsorcery:itemusabledust>,<astralsorcery:blockbore>,<astralsorcery:itemusabledust>,<astralsorcery:iteminfusedglass>,<astralsorcery:itemusabledust>],
[<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemusabledust>,null,<astralsorcery:itemcraftingcomponent:1>,null,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:1>]]);
<contenttweaker:star_of_revelation>.addTooltip(format.red("Does not get consumed by regular crafting."));
<contenttweaker:star_of_revelation>.addTooltip(format.red(format.bold("WARNING: ")) + format.gray(format.bold("AE2 consumes the item! Use an external crafter like an RFTools Crafter when using this item in your ME System!")));

# Galactic Ingot
recipes.addShapeless(<contenttweaker:galactic_ingot> * 5, [<contenttweaker:star_of_revelation>.reuse(),<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:4>]);
recipes.addShapeless(<contenttweaker:galactic_ingot> * 9, [<contenttweaker:galactic_block>]);

# Galactic Block
recipes.addShaped(<contenttweaker:galactic_block>, [[<contenttweaker:galactic_ingot>,<contenttweaker:galactic_ingot>,<contenttweaker:galactic_ingot>],[<contenttweaker:galactic_ingot>,<contenttweaker:galactic_ingot>,<contenttweaker:galactic_ingot>],[<contenttweaker:galactic_ingot>,<contenttweaker:galactic_ingot>,<contenttweaker:galactic_ingot>]]);

# Tough Galactic Plating
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:tough_galactic_plating>, <thermalfoundation:material:327> * 4, null, 300, 1000, [<thermalfoundation:material:325> * 4, <thermalfoundation:material:328> * 4]);
#EIOAlloySmelter.addRecipe(<contenttweaker:tough_galactic_plating>, [<thermalfoundation:material:327> * 4, <thermalfoundation:material:325> * 4, <thermalfoundation:material:328> * 4], 60000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml

# Galactic Machine Frame
recipes.addShaped(<contenttweaker:galactic_machine_frame>, [[<contenttweaker:tough_galactic_plating>,<contenttweaker:galactic_ingot>,<contenttweaker:tough_galactic_plating>],[<contenttweaker:galactic_ingot>,<extendedcrafting:frame>,<contenttweaker:galactic_ingot>],[<contenttweaker:tough_galactic_plating>,<contenttweaker:galactic_ingot>,<contenttweaker:tough_galactic_plating>]]);

# Tin Sheetmetal
recipes.addShaped(<contenttweaker:tin_sheetmetal> * 4, [[<thermalfoundation:material:321>,<thermalfoundation:material:129>,<thermalfoundation:material:321>],[<thermalfoundation:material:129>,null,<thermalfoundation:material:129>],[<thermalfoundation:material:321>,<thermalfoundation:material:129>,<thermalfoundation:material:321>]]);

# Cheesy Silicon Compound
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:cheesy_silicon_compound>, <projectred-core:resource_item:301>, null, 160, 240, [<galacticraftcore:cheese_curd> * 12], "Alloying");
#EIOAlloySmelter.addRecipe(<contenttweaker:cheesy_silicon_compound>, [<projectred-core:resource_item:301>, <galacticraftcore:cheese_curd> * 12], 10000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
IEAlloySmelter.addRecipe(<contenttweaker:cheesy_silicon_compound>, <projectred-core:resource_item:301>, <galacticraftcore:cheese_curd> * 12, 400);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:cheesy_silicon_compound>, <projectred-core:resource_item:301>, <galacticraftcore:cheese_curd> * 12, 10000);

# Cheesy Silicon
furnace.addRecipe(<contenttweaker:cheesy_silicon>, <contenttweaker:cheesy_silicon_compound>);

# Cheesy Wafer
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<contenttweaker:cheesy_wafer> * 16, <quantumflux:craftingpiece:4>, <contenttweaker:cheesy_silicon>, <contenttweaker:cheesy_silicon>, <contenttweaker:rainbow_tablet>, <contenttweaker:rune_of_sloth>);

# Sapphire Accelerator
recipes.addShaped(<contenttweaker:sapphire_accelerator>, [[<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>,<contenttweaker:cheesy_wafer>],[<galacticraftcore:item_basic_moon:2>,<galacticraftcore:heavy_plating>,<galacticraftcore:item_basic_moon:2>],[<galacticraftcore:item_basic_moon:2>,<simplyjetpacks:metaitemmods:11>,<galacticraftcore:item_basic_moon:2>]]);

# Spacerock
<contenttweaker:spacerock>.addTooltip(format.white("Found in custom ") + format.gray("Moon") + format.white(" Dungeons."));

# Secret Alien Technology
<contenttweaker:secret_alien_technology>.addTooltip(format.white("Found in custom ") + format.red("Mars") + format.white(" dungeons."));

# Chunk of the Meteor that ended the Era of Dinosaurs
<contenttweaker:chunk_of_the_meteor_that_ended_the_era_of_dinosaurs>.addTooltip(format.white("Found in custom dungeons in the ") + format.gray("Asteroid Belt") + format.white("."));

# Fragment of the Sun
<contenttweaker:fragment_of_the_sun>.addTooltip(format.white("Found in custom ") + format.gold("Venus") + format.white(" dungeons."));

# Titanium Box
recipes.addShaped(<contenttweaker:titanium_box>, [[<contenttweaker:titanium_plate>,<galacticraftplanets:item_basic_asteroids:6>,<contenttweaker:titanium_plate>],[<galacticraftplanets:item_basic_asteroids:6>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:6>],[<contenttweaker:titanium_plate>,<galacticraftplanets:item_basic_asteroids:6>,<contenttweaker:titanium_plate>]]);

# Portion of the Sun
recipes.addShaped(<contenttweaker:portion_of_the_sun> * 5, [[<contenttweaker:solar_ingot>,<contenttweaker:fragment_of_the_sun>,<contenttweaker:solar_ingot>],[<contenttweaker:fragment_of_the_sun>,<contenttweaker:solar_ingot>,<contenttweaker:fragment_of_the_sun>],[<contenttweaker:solar_ingot>,<contenttweaker:fragment_of_the_sun>,<contenttweaker:solar_ingot>]]);

# Hyperglued Meteoric Casing
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:hyperglued_meteoric_casing>,
[[<contenttweaker:titanium_box>,<contenttweaker:titanium_box>,<galacticraftplanets:web_torch:*>,<contenttweaker:titanium_box>,<contenttweaker:titanium_box>],
[<contenttweaker:titanium_box>,<galacticraftplanets:web_torch:*>,<contenttweaker:chunk_of_the_meteor_that_ended_the_era_of_dinosaurs>,<galacticraftplanets:web_torch:*>,<contenttweaker:titanium_box>],
[<galacticraftplanets:web_torch:*>,<contenttweaker:chunk_of_the_meteor_that_ended_the_era_of_dinosaurs>,<contenttweaker:chunk_of_the_meteor_that_ended_the_era_of_dinosaurs>,<contenttweaker:chunk_of_the_meteor_that_ended_the_era_of_dinosaurs>,<galacticraftplanets:web_torch:*>],
[<contenttweaker:titanium_box>,<galacticraftplanets:web_torch:*>,<contenttweaker:chunk_of_the_meteor_that_ended_the_era_of_dinosaurs>,<galacticraftplanets:web_torch:*>,<contenttweaker:titanium_box>],
[<contenttweaker:titanium_box>,<contenttweaker:titanium_box>,<galacticraftplanets:web_torch:*>,<contenttweaker:titanium_box>,<contenttweaker:titanium_box>]]);

# Corrupted Light Ingot
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:corrupted_light_ingot>, <plustic:mirioningot>, null, 240, 720, [<contenttweaker:dark_core>, <contenttweaker:star_leather>]);
EIOAlloySmelter.addRecipe(<contenttweaker:corrupted_light_ingot>, [<plustic:mirioningot>, <contenttweaker:dark_core>, <contenttweaker:star_leather>], 32000);

# Draconic Machine Frame
recipes.addShaped(<contenttweaker:draconic_machine_frame>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconium_ingot>,<galacticraftplanets:item_basic_asteroids:5>],[<draconicevolution:draconic_core>,<contenttweaker:galactic_machine_frame>,<draconicevolution:draconic_core>],[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconium_ingot>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Slice of Dragon Egg
mods.thermalexpansion.Sawmill.addRecipe(<contenttweaker:slice_of_dragon_egg> * 8, <minecraft:dragon_egg>, 8000);
mods.mekanism.sawmill.addRecipe(<minecraft:dragon_egg>, <contenttweaker:slice_of_dragon_egg> * 8);

# Dragon Token
recipes.addShaped(<contenttweaker:dragon_token>, [[<contenttweaker:compressed_obsidian3>,<contenttweaker:slice_of_dragon_egg>,<contenttweaker:compressed_obsidian3>],[<contenttweaker:slice_of_dragon_egg>,<draconicevolution:wyvern_core>,<contenttweaker:slice_of_dragon_egg>],[<contenttweaker:compressed_obsidian3>,<contenttweaker:slice_of_dragon_egg>,<contenttweaker:compressed_obsidian3>]]);

# Awakened Dragon Token
recipes.addShaped(<contenttweaker:awakened_dragon_token>, [[<draconicevolution:draconic_ingot>,<mysticalagriculture:crafting:37>,<draconicevolution:draconic_ingot>],[<mysticalagriculture:crafting:37>,<draconicevolution:awakened_core>,<mysticalagriculture:crafting:37>],[<draconicevolution:draconic_ingot>,<mysticalagriculture:crafting:37>,<draconicevolution:draconic_ingot>]]);

# Crystal Core
recipes.addShaped("crystal_core", <contenttweaker:crystal_core>, [[<contenttweaker:titanium_box>,<contenttweaker:condensed_vis_crystal_vitreus>,<contenttweaker:titanium_box>],[<extendedcrafting:material:24>,<astralsorcery:itemrockcrystalsimple>.marked("rock_crystal"),<extendedcrafting:material:24>],[<contenttweaker:titanium_box>,<contenttweaker:condensed_vis_crystal_vitreus>,<contenttweaker:titanium_box>]],
function(out,ins,cInfo) {
	if(ins.rock_crystal.tag has "astralsorcery") {
		if(ins.rock_crystal.tag.astralsorcery has "crystalProperties") {
			if(ins.rock_crystal.tag.astralsorcery.crystalProperties has "size" && ins.rock_crystal.tag.astralsorcery.crystalProperties has "purity") {
				if(ins.rock_crystal.tag.astralsorcery.crystalProperties.size >= 300 && ins.rock_crystal.tag.astralsorcery.crystalProperties.purity >= 75) {
					return out;
				}
			}
		}
	}
	return null;
}, null);
recipes.addShaped(<contenttweaker:crystal_core>, [[<contenttweaker:titanium_box>,<contenttweaker:condensed_vis_crystal_vitreus>,<contenttweaker:titanium_box>],[<extendedcrafting:material:24>,<rftools:infused_diamond>,<extendedcrafting:material:24>],[<contenttweaker:titanium_box>,<contenttweaker:condensed_vis_crystal_vitreus>,<contenttweaker:titanium_box>]]);
<contenttweaker:crystal_core>.addTooltip(format.white("If using the Rock Crystal recipe,"));
<contenttweaker:crystal_core>.addTooltip(format.white("the input Rock Crystal has to have:"));
<contenttweaker:crystal_core>.addTooltip(format.blue("Size >= 300") + format.white(" and ") + format.blue("Purity >= 75%") + format.white("."));
<contenttweaker:crystal_core>.addTooltip(format.white("Before unlocking the Infused Diamond recipe,"));
<contenttweaker:crystal_core>.addTooltip(format.white("it can only be ") + format.red("manually crafted") + format.white("."));

# Celestial Crystal Core
recipes.addShaped("celestial_crystal_core", <contenttweaker:celestial_crystal_core>, [[<contenttweaker:crystal_core>,<draconicevolution:chaotic_core>,<contenttweaker:crystal_core>],[<mysticalagradditions:storage:1>,<astralsorcery:itemcelestialcrystal>.marked("celestial_crystal"),<mysticalagradditions:storage:1>],[<contenttweaker:crystal_core>,<draconicevolution:chaotic_core>,<contenttweaker:crystal_core>]],
function(out,ins,cInfo) {
	if(ins.celestial_crystal.tag has "astralsorcery") {
		if(ins.celestial_crystal.tag.astralsorcery has "crystalProperties") {
			if(ins.celestial_crystal.tag.astralsorcery.crystalProperties has "size" && ins.celestial_crystal.tag.astralsorcery.crystalProperties has "purity") {
				if(ins.celestial_crystal.tag.astralsorcery.crystalProperties.size >= 700 && ins.celestial_crystal.tag.astralsorcery.crystalProperties.purity >= 75) {
					return out;
				}
			}
		}
	}
	return null;
}, null);
recipes.addShaped(<contenttweaker:celestial_crystal_core>, [[<contenttweaker:crystal_core>,<draconicevolution:chaotic_core>,<contenttweaker:crystal_core>],[<mysticalagradditions:storage:1>,<avaritia:resource:3>,<mysticalagradditions:storage:1>],[<contenttweaker:crystal_core>,<draconicevolution:chaotic_core>,<contenttweaker:crystal_core>]]);
<contenttweaker:celestial_crystal_core>.addTooltip(format.white("If using the Celestial Crystal recipe,"));
<contenttweaker:celestial_crystal_core>.addTooltip(format.white("the input Celestial Crystal has to have:"));
<contenttweaker:celestial_crystal_core>.addTooltip(format.blue("Size >= 700") + format.white(" and ") + format.blue("Purity >= 75%") + format.white("."));
<contenttweaker:celestial_crystal_core>.addTooltip(format.white("Before unlocking the Neutronium Nugget recipe,"));
<contenttweaker:celestial_crystal_core>.addTooltip(format.white("it can only be ") + format.red("manually crafted") + format.white("."));

# Photovoltaic Cell VII
recipes.addShaped(<contenttweaker:photovoltaic_cell_vii> * 3, [[<ore:blockGlassMagenta>,<ore:blockGlassMagenta>,<ore:blockGlassMagenta>],[<draconicevolution:wyvern_energy_core>,<draconicevolution:wyvern_energy_core>,<draconicevolution:wyvern_energy_core>],[<solarflux:photovoltaic_cell_6>,<solarflux:photovoltaic_cell_6>,<solarflux:photovoltaic_cell_6>]]);

# Photovoltaic Cell VIII
recipes.addShaped(<contenttweaker:photovoltaic_cell_viii> * 3, [[<ore:blockGlassRed>,<ore:blockGlassRed>,<ore:blockGlassRed>],[<draconicevolution:draconic_energy_core>,<draconicevolution:draconic_energy_core>,<draconicevolution:draconic_energy_core>],[<contenttweaker:photovoltaic_cell_vii>,<contenttweaker:photovoltaic_cell_vii>,<contenttweaker:photovoltaic_cell_vii>]]);

# Corrupted Core
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:corrupted_core>,
[[<alchemistry:ingot:56>,<alchemistry:compound:21>,<alchemistry:ingot:56>,<alchemistry:compound:21>,<alchemistry:ingot:56>],
[<alchemistry:compound:21>,<alchemistry:compound:8>,<alchemistry:compound:21>,<alchemistry:compound:8>,<alchemistry:compound:21>],
[<alchemistry:ingot:56>,<alchemistry:compound:21>,<draconicevolution:chaotic_core>,<alchemistry:compound:21>,<alchemistry:ingot:56>],
[<alchemistry:compound:21>,<alchemistry:compound:8>,<alchemistry:compound:21>,<alchemistry:compound:8>,<alchemistry:compound:21>],
[<alchemistry:ingot:56>,<alchemistry:compound:21>,<alchemistry:ingot:56>,<alchemistry:compound:21>,<alchemistry:ingot:56>]]);

# Cadmium Arsenic Compound
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:cadmium_arsenic_compound>, <alchemistry:ingot:48> * 4, null, 200, 1024, [<alchemistry:ingot:33> * 4], "Alloying");
#EIOAlloySmelter.addRecipe(<contenttweaker:cadmium_arsenic_compound>, [<alchemistry:ingot:48> * 4, <alchemistry:ingot:33> * 4], 32000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
IEAlloySmelter.addRecipe(<contenttweaker:cadmium_arsenic_compound>, <alchemistry:ingot:48> * 4, <alchemistry:ingot:33> * 4, 320);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:cadmium_arsenic_compound>, <alchemistry:ingot:48> * 4, <alchemistry:ingot:33> * 4, 32000);

# Corrupted Dragon Token
recipes.addShaped(<contenttweaker:corrupted_dragon_token>, [[<projectred-core:resource_item:202>,<contenttweaker:cadmium_arsenic_compound>,<projectred-core:resource_item:202>],[<contenttweaker:cadmium_arsenic_compound>,<contenttweaker:corrupted_core>,<contenttweaker:cadmium_arsenic_compound>],[<projectred-core:resource_item:202>,<contenttweaker:cadmium_arsenic_compound>,<projectred-core:resource_item:202>]]);

# Mercury (other recipes in config/modualrmachinery/recipes/liquicrafter_ ... .json)
mods.alchemistry.Liquifier.addRecipe(<liquid:mercury>, <alchemistry:element:80> * 16);

# Chromium Barium Compound
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:chromium_barium_compound>, <alchemistry:ingot:24> * 4, null, 200, 1024, [<alchemistry:ingot:56> * 4], "Alloying");
#EIOAlloySmelter.addRecipe(<contenttweaker:chromium_barium_compound>, [<alchemistry:ingot:24> * 4, <alchemistry:ingot:56> * 4], 32000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
IEAlloySmelter.addRecipe(<contenttweaker:chromium_barium_compound>, <alchemistry:ingot:24> * 4, <alchemistry:ingot:56> * 4, 320);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:chromium_barium_compound>, <alchemistry:ingot:24> * 4, <alchemistry:ingot:56> * 4, 32000);

# Antimony Strontium Compound
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:antimony_strontium_compound>, <alchemistry:ingot:38> * 4, null, 200, 1024, [<alchemistry:ingot:51> * 4], "Alloying");
#EIOAlloySmelter.addRecipe(<contenttweaker:antimony_strontium_compound>, [<alchemistry:ingot:38> * 4, <alchemistry:ingot:51> * 4], 32000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
IEAlloySmelter.addRecipe(<contenttweaker:antimony_strontium_compound>, <alchemistry:ingot:38> * 4, <alchemistry:ingot:51> * 4, 320);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:antimony_strontium_compound>, <alchemistry:ingot:38> * 4, <alchemistry:ingot:51> * 4, 32000);

# Reinforced Glass Casing
recipes.addShaped(<contenttweaker:reinforced_glass_casing>, [[<modularmachinery:blockcasing:4>,<galacticraftcore:space_glass_strong>,<modularmachinery:blockcasing:4>],[<galacticraftcore:space_glass_strong>,<galacticraftcore:space_glass_strong>,<galacticraftcore:space_glass_strong>],[<modularmachinery:blockcasing:4>,<galacticraftcore:space_glass_strong>,<modularmachinery:blockcasing:4>]]);

# Copper Bismid Carbonate Sheet
recipes.addShaped(<contenttweaker:copper_bismid_carbonate_sheet> * 2, [[<alchemistry:ingot:83>,<alchemistry:compound:1002>,<alchemistry:ingot:83>],[<alchemistry:compound:1002>,<alchemistry:ingot:83>,<alchemistry:compound:1002>],[<alchemistry:ingot:83>,<alchemistry:compound:1002>,<alchemistry:ingot:83>]]);

# Ruby Rubidium
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:ruby_rubidium>, <projectred-core:resource_item:200> * 8, null, 200, 1024, [<alchemistry:ingot:37> * 8], "Alloying");
#EIOAlloySmelter.addRecipe(<contenttweaker:ruby_rubidium>, [<projectred-core:resource_item:200> * 8, <alchemistry:ingot:37> * 8], 32000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml
IEAlloySmelter.addRecipe(<contenttweaker:ruby_rubidium>, <projectred-core:resource_item:200> * 8, <alchemistry:ingot:37> * 8, 320);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:ruby_rubidium>, <projectred-core:resource_item:200> * 8, <alchemistry:ingot:37> * 8, 32000);

# V.M.B. Compund
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:vmb_compound>, <alchemistry:ingot:23> * 8, null, 200, 2048, [<alchemistry:ingot:101> * 2, <alchemistry:ingot:5> * 8], "Alloying");
#EIOAlloySmelter.addRecipe(<contenttweaker:vmb_compound>, [<alchemistry:ingot:23> * 8, <alchemistry:ingot:101> * 2, <alchemistry:ingot:5> * 8], 64000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml

# Fission Coolant Unit
recipes.addShaped(<contenttweaker:fission_coolant> * 16, [[<alchemistry:neon_light>,<contenttweaker:cadmium_arsenic_compound>,<alchemistry:neon_light>],[<contenttweaker:cadmium_arsenic_compound>,<alchemistry:neon_light>,<contenttweaker:cadmium_arsenic_compound>],[<alchemistry:neon_light>,<contenttweaker:cadmium_arsenic_compound>,<alchemistry:neon_light>]]);

# Perfectium Essence
recipes.addShaped(<contenttweaker:perfectium_essence>, [[null,<mysticalagradditions:insanium>,null],[<mysticalagradditions:insanium>,<mysticalagriculture:master_infusion_crystal>.reuse(),<mysticalagradditions:insanium>],[null,<mysticalagradditions:insanium>,null]]);
recipes.addShapeless(<contenttweaker:perfectium_essence> * 5, [<contenttweaker:perfectium_ball>]);
recipes.addShapeless(<mysticalagradditions:insanium> * 4, [<contenttweaker:perfectium_essence>]);

# Perfectium Ball
recipes.addShaped(<contenttweaker:perfectium_ball>, [[null,<contenttweaker:perfectium_essence>,null],[<contenttweaker:perfectium_essence>,<contenttweaker:perfectium_essence>,<contenttweaker:perfectium_essence>],[null,<contenttweaker:perfectium_essence>,null]]);
recipes.addShapeless(<contenttweaker:perfectium_ball> * 9, [<contenttweaker:perfectium_block>]);

# Perfectium Block
recipes.addShaped(<contenttweaker:perfectium_block>, [[<contenttweaker:perfectium_ball>,<contenttweaker:perfectium_ball>,<contenttweaker:perfectium_ball>],[<contenttweaker:perfectium_ball>,<contenttweaker:perfectium_ball>,<contenttweaker:perfectium_ball>],[<contenttweaker:perfectium_ball>,<contenttweaker:perfectium_ball>,<contenttweaker:perfectium_ball>]]);
recipes.addShapeless(<contenttweaker:perfectium_block> * 9, [<contenttweaker:compressed_perfectium_block>]);

# Compressed Perfectium Block
recipes.addShaped(<contenttweaker:compressed_perfectium_block>, [[<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>],[<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>],[<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>,<contenttweaker:perfectium_block>]]);

# Solar Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_contenttweaker_solar_seeds.json
<contenttweaker:solar_seeds>.addTooltip(format.white("Can only be planted on Crop Sticks."));

# Apalachia Door Key from Fragments
recipes.addShaped(<contenttweaker:apalachia_door_key>, [[<contenttweaker:apalachia_key_fragment>,<contenttweaker:apalachia_key_fragment>,<contenttweaker:apalachia_key_fragment>],[<contenttweaker:apalachia_key_fragment>,null,<contenttweaker:apalachia_key_fragment>],[<contenttweaker:apalachia_key_fragment>,<contenttweaker:apalachia_key_fragment>,<contenttweaker:apalachia_key_fragment>]]);
<contenttweaker:apalachia_door_key2>.addTooltip(format.red("Use it the same way as the previous key to ascend further."));

# Skythern Door Key from Fragments
recipes.addShaped(<contenttweaker:skythern_door_key2>, [[null,<contenttweaker:skythern_door_key_fragment>,null],[<contenttweaker:skythern_door_key_fragment>,<contenttweaker:skythern_door_key_fragment>,<contenttweaker:skythern_door_key_fragment>],[null,<contenttweaker:skythern_door_key_fragment>,null]]);
<contenttweaker:skythern_door_key2>.addTooltip(format.red("Use it on the Skythern Boss Door!"));

# Venus Boss Door Key tooltip
<contenttweaker:venus_door_key2>.addTooltip(format.red("Right Click to clear any Venus Boss Door Blocks in a 5 block radius."));

# Moon Door Key from Fragments
recipes.addShaped(<contenttweaker:moon_door_key>, [[<contenttweaker:moon_key_fragment>,<contenttweaker:moon_key_fragment>,<contenttweaker:moon_key_fragment>]]);

# Asteroids Door Key from Fragments
recipes.addShaped(<contenttweaker:asteroids_door_key>, [[<contenttweaker:asteroids_key_fragment>,<contenttweaker:asteroids_key_fragment>],[<contenttweaker:asteroids_key_fragment>,<contenttweaker:asteroids_key_fragment>]]);

# G.E.R.C. Crystal Block <-> Gerbutil Erbid Radiqvatic Curiopolychloriphosphate
recipes.addShaped(<contenttweaker:gerc_crystal>, [[<alchemistry:compound:1010>,<alchemistry:compound:1010>,<alchemistry:compound:1010>],[<alchemistry:compound:1010>,<alchemistry:compound:1010>,<alchemistry:compound:1010>],[<alchemistry:compound:1010>,<alchemistry:compound:1010>,<alchemistry:compound:1010>]]);
recipes.addShapeless(<alchemistry:compound:1010> * 9, [<contenttweaker:gerc_crystal>]);

# Minecraft Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:minecraft_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:100>,<extendedcrafting:singularity>,<extendedcrafting:singularity:1>,<extendedcrafting:singularity:2>,<extendedcrafting:singularity:3>,<extendedcrafting:singularity:5>,<extendedcrafting:singularity:6>,<extendedcrafting:singularity:7>,<extendedcrafting:singularity_custom:101>,<extendedcrafting:singularity:4>]);

# Thermal Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:thermal_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity:16>,<extendedcrafting:singularity:17>,<extendedcrafting:singularity:18>,<extendedcrafting:singularity:22>,<extendedcrafting:singularity:23>,<extendedcrafting:singularity:25>,<extendedcrafting:singularity:35>,<extendedcrafting:singularity:34>]);

# Mixed Thermal Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:mixed_thermal_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity:19>,<extendedcrafting:singularity:27>,<extendedcrafting:singularity:28>,<extendedcrafting:singularity:26>,<extendedcrafting:singularity:24>,<extendedcrafting:singularity:48>,<extendedcrafting:singularity:49>,<extendedcrafting:singularity:50>,<extendedcrafting:singularity:29>]);

# Tinkers Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:tinkers_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:159>,<extendedcrafting:singularity:64>,<extendedcrafting:singularity:65>,<extendedcrafting:singularity:66>]);

# EnderIO Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:enderio_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:119>,<extendedcrafting:singularity_custom:103>,<extendedcrafting:singularity_custom:104>,<extendedcrafting:singularity_custom:105>,<extendedcrafting:singularity_custom:106>,<extendedcrafting:singularity_custom:107>,<extendedcrafting:singularity_custom:108>,<extendedcrafting:singularity_custom:109>,<extendedcrafting:singularity_custom:110>]);

# Endergy Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:endergy_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:111>,<extendedcrafting:singularity_custom:112>,<extendedcrafting:singularity_custom:113>,<extendedcrafting:singularity_custom:114>,<extendedcrafting:singularity_custom:115>,<extendedcrafting:singularity_custom:116>,<extendedcrafting:singularity_custom:117>]);

# ProjectRed Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:projectred_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:120>,<extendedcrafting:singularity_custom:121>,<extendedcrafting:singularity_custom:122>,<extendedcrafting:singularity_custom:123>]);

# Mekanism Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:mekanism_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:124>,<extendedcrafting:singularity_custom:125>,<extendedcrafting:singularity_custom:126>]);

# Abyssal Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:abyssal_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:127>,<extendedcrafting:singularity_custom:128>,<extendedcrafting:singularity_custom:129>,<extendedcrafting:singularity_custom:130>]);

# Divine Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:divine_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:131>,<extendedcrafting:singularity_custom:132>,<extendedcrafting:singularity_custom:133>,<extendedcrafting:singularity_custom:134>,<extendedcrafting:singularity_custom:135>]);

# Dusty Thermal Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:dusty_thermal_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:139>,<extendedcrafting:singularity_custom:140>,<extendedcrafting:singularity_custom:141>,<extendedcrafting:singularity_custom:142>,<extendedcrafting:singularity_custom:138>,<extendedcrafting:singularity_custom:144>,<extendedcrafting:singularity_custom:145>,<avaritia:singularity:12>]);

# Botanic Singualrity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:botanic_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:147>,<extendedcrafting:singularity_custom:148>,<extendedcrafting:singularity_custom:149>]);

# Thaumic Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:thaumic_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:158>,<extendedcrafting:singularity_custom:157>,<extendedcrafting:singularity:21>,<extendedcrafting:singularity_custom:150>,<extendedcrafting:singularity_custom:152>]);

# Alchemical Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:alchemic_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity:20>,<extendedcrafting:singularity_custom:33>,<extendedcrafting:singularity:32>,<extendedcrafting:singularity:30>]);

# Draglactic Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:draglactic_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:102>,<extendedcrafting:singularity:31>,<extendedcrafting:singularity_custom:155>]);

# Extra Tech Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:extra_tech_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:118>,<extendedcrafting:singularity_custom:143>,<extendedcrafting:singularity_custom:136>,<extendedcrafting:singularity_custom:137>,<extendedcrafting:singularity_custom:153>]);

# Extra Magic Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:extra_magic_singularity>, 400000, 10000, <contenttweaker:empty_core>, [<extendedcrafting:singularity_custom:156>,<extendedcrafting:singularity_custom:146>,<extendedcrafting:singularity_custom:154>]);

# Magical Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:magical_singularity>, 400000, 10000, <contenttweaker:plasma_core>, [<contenttweaker:abyssal_singularity>,<contenttweaker:divine_singularity>,<contenttweaker:botanic_singularity>,<contenttweaker:thaumic_singularity>,<contenttweaker:extra_magic_singularity>]);

# Techy Singualrity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:techy_singularity>, 400000, 10000, <contenttweaker:plasma_core>, [<contenttweaker:thermal_singularity>,<contenttweaker:mixed_thermal_singularity>,<contenttweaker:dusty_thermal_singularity>,<contenttweaker:enderio_singularity>,<contenttweaker:endergy_singularity>,<contenttweaker:mekanism_singularity>,<contenttweaker:extra_tech_singularity>]);

# Powerful Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:powerful_singularity>, 400000, 10000, <contenttweaker:plasma_core>, [<contenttweaker:projectred_singularity>,<contenttweaker:alchemic_singularity>,<contenttweaker:draglactic_singularity>]);

# Beginner's Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:beginners_singularity>, 400000, 10000, <contenttweaker:plasma_core>, [<contenttweaker:minecraft_singularity>,<contenttweaker:tinkers_singularity>]);

# Penultimate Machine Frame
recipes.addShapedMirrored(<contenttweaker:penultimate_machine_frame>, [[<contenttweaker:gerc_crystal>,<contenttweaker:dark_realm_soul_block>,<contenttweaker:gerc_crystal>],[<rftools:infused_diamond>,<contenttweaker:stabilized_dimensional_machine_frame>,<rftools:infused_enderpearl>],[<contenttweaker:gerc_crystal>,<contenttweaker:dark_realm_soul_block>,<contenttweaker:gerc_crystal>]]);

# Corrupted Draconium Block & Ingot
mods.projecte.WorldTransmutation.add(<contenttweaker:corrupted_draconium_block>, <draconicevolution:draconic_block>);
recipes.addShaped(<contenttweaker:corrupted_draconium_block>, [[<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>],[<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>],[<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>]]);
recipes.addShapeless(<contenttweaker:corrupted_draconium_ingot> * 9, [<contenttweaker:corrupted_draconium_block>]);

# Fission Catalyst
recipes.addShaped(<contenttweaker:fission_catalyst> * 4, [[<alchemistry:krypton_light>,<alchemistry:ingot:43>,<alchemistry:krypton_light>],[<alchemistry:ingot:43>,<contenttweaker:fission_coolant>,<alchemistry:ingot:43>],[<alchemistry:krypton_light>,<alchemistry:ingot:43>,<alchemistry:krypton_light>]]);

# Anti Proton
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:anti_proton>, <contenttweaker:proton>, <liquid:liquidantimatter> * 200, 8000);

# Anti Electron
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:anti_electron>, <contenttweaker:electron>, <liquid:liquidantimatter> * 200, 8000);

# Antimatter Cluster
mods.avaritia.Compressor.add("anti_hydrogen", <contenttweaker:antimatter_cluster>, 100, <contenttweaker:anti_hydrogen>, true);

# Singularification Catalyst
recipes.addShaped(<contenttweaker:singularification_catalyst>, [[<extendedcrafting:storage>,<appliedenergistics2:quantum_link>,<extendedcrafting:storage>],[<appliedenergistics2:quantum_link>,<draconicevolution:awakened_core>,<appliedenergistics2:quantum_link>],[<extendedcrafting:storage>,<appliedenergistics2:quantum_link>,<extendedcrafting:storage>]]);

# TNT Singularity
mods.avaritia.Compressor.add("tnt_singularity", <contenttweaker:tnt_singularity>, 300, <minecraft:tnt>, true);

# Essence of Atomic Fusion
# recipe in config/brandon3055/CustomFusionRecipes.json

# White Matter
<contenttweaker:white_matter>.addTooltip(format.white("Can only be created from EMC."));
<contenttweaker:white_matter>.addTooltip(format.white("Use the Tome of Knowledge to learn all transmutations."));

# Anti Air
mods.abyssalcraft.InfusionRitual.addRitual("anti_air", 4, 53, 20000, false, <contenttweaker:anti_air>, <contenttweaker:white_matter>, [<extendedcrafting:singularity_custom:141>,<botania:manaresource:15>,<contenttweaker:anti_hydrogen>,<contenttweaker:rune_of_air>,<contenttweaker:condensed_vis_crystal_aer>,<botania:manaresource:15>,<contenttweaker:anti_hydrogen>,<contenttweaker:rune_of_air>], false);
game.setLocalization("ac.ritual.anti_air", "Anti Air");
game.setLocalization("ac.ritual.anti_air.desc", "The environment in the Dark Realm makes it perfect to infuse Anti Hydrogen into Anti Air. Make sure not to breathe it in!");

# Essence of Enlargement
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:essence_of_enlargement>,
[[<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>],
[<alchemistry:ingot:104>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<alchemistry:ingot:104>],
[<alchemistry:ingot:104>,<projecte:item.pe_matter:1>,<thermalfoundation:fertilizer:2>,<thermalfoundation:fertilizer:2>,<botania:overgrowthseed>,<thermalfoundation:fertilizer:2>,<thermalfoundation:fertilizer:2>,<projecte:item.pe_matter:1>,<alchemistry:ingot:104>],
[<alchemistry:ingot:104>,<projecte:item.pe_matter:1>,<thermalfoundation:fertilizer:2>,<actuallyadditions:block_giant_chest_large>,<mysticalagriculture:growth_accelerator>,<actuallyadditions:block_giant_chest_large>,<thermalfoundation:fertilizer:2>,<projecte:item.pe_matter:1>,<alchemistry:ingot:104>],
[<alchemistry:ingot:104>,<projecte:item.pe_matter:1>,<botania:overgrowthseed>,<mysticalagriculture:growth_accelerator>,<draconicadditions:chaos_stabilizer_core>,<mysticalagriculture:growth_accelerator>,<botania:overgrowthseed>,<projecte:item.pe_matter:1>,<alchemistry:ingot:104>],
[<alchemistry:ingot:104>,<projecte:item.pe_matter:1>,<thermalfoundation:fertilizer:2>,<actuallyadditions:block_giant_chest_large>,<mysticalagriculture:growth_accelerator>,<actuallyadditions:block_giant_chest_large>,<thermalfoundation:fertilizer:2>,<projecte:item.pe_matter:1>,<alchemistry:ingot:104>],
[<alchemistry:ingot:104>,<projecte:item.pe_matter:1>,<thermalfoundation:fertilizer:2>,<thermalfoundation:fertilizer:2>,<botania:overgrowthseed>,<thermalfoundation:fertilizer:2>,<thermalfoundation:fertilizer:2>,<projecte:item.pe_matter:1>,<alchemistry:ingot:104>],
[<alchemistry:ingot:104>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<alchemistry:ingot:104>],
[<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>,<alchemistry:ingot:104>]]);

# Taste the Rainbow
recipes.addShaped(<contenttweaker:taste_the_rainbow>, [[<extrautils2:decorativesolid:8>,<contenttweaker:rainbow_slate>,<extrautils2:decorativesolid:8>],[<contenttweaker:rainbow_slate>,<contenttweaker:rainbow_tablet>,<contenttweaker:rainbow_slate>],[<extrautils2:decorativesolid:8>,<contenttweaker:rainbow_slate>,<extrautils2:decorativesolid:8>]]);

# Corruption Core
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:corruption_core>,
[[<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>],
[<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:death_core>,<contenttweaker:death_core>,<contenttweaker:death_core>,<contenttweaker:corrupted_draconium_ingot>],
[<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:death_core>,<contenttweaker:corrupted_core>,<contenttweaker:death_core>,<contenttweaker:corrupted_draconium_ingot>],
[<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:death_core>,<contenttweaker:death_core>,<contenttweaker:death_core>,<contenttweaker:corrupted_draconium_ingot>],
[<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>,<contenttweaker:corrupted_draconium_ingot>]]);

# Essence of Life
mods.avaritia.Compressor.add("essence_of_life", <contenttweaker:essence_of_life>, 100, <contenttweaker:condensed_vis_crystal_victus>, true);

# Essence of Death
mods.avaritia.Compressor.add("essence_of_death", <contenttweaker:essence_of_death>, 100, <contenttweaker:condensed_vis_crystal_mortuus>, true);

# Essence of Cycles
WitchesRitual.addRecipe("cycles", [<contenttweaker:essence_of_cycles>], [<contenttweaker:essence_of_life>,<botania:specialflower>.withTag({type: "dandelifeon"}),<contenttweaker:essence_of_death>,<contenttweaker:death_core>], null, null, 8000, WitchesRitual.FIERY, WitchesRitual.RITUAL, WitchesRitual.PHASING);

# Essence of Enclosement
mods.avaritia.Compressor.add("essence_of_enclosement", <contenttweaker:essence_of_enclosement>, 100, <mekanism:cardboardbox>, true);

# Essence of Space
mods.botania.ElvenTrade.addRecipe([<contenttweaker:essence_of_space>], [<contenttweaker:perfect_vacuum>,<contenttweaker:essence_of_enclosement>, <contenttweaker:essence_of_opening>]);

# Liquid Space
MagmaCrucible.addRecipe(<liquid:space> * 10, <contenttweaker:essence_of_space>, 8000);

# DivineRPG Statues OreDict
<ore:DRPGStatues>.addItems([<divinerpg:ancient_entity_statue>,<divinerpg:ayeraco_statue_blue>,<divinerpg:ayeraco_statue_red>,<divinerpg:ayeraco_statue_yellow>,<divinerpg:ayeraco_statue_green>,<divinerpg:ayeraco_statue_purple>,<divinerpg:densos_statue>,<divinerpg:dramix_statue>,<divinerpg:eternal_archer_statue>,<divinerpg:karot_statue>,<divinerpg:king_of_scorchers_statue>,<divinerpg:parasecta_statue>,<divinerpg:reyvor_statue>,<divinerpg:soul_fiend_statue>,<divinerpg:the_watcher_statue>,<divinerpg:twilight_demon_statue>,<divinerpg:vamacheron_statue>,<divinerpg:termasect_statue>,<divinerpg:sunstorm_statue>,<divinerpg:experienced_cori_statue>]);

# Essence of Foundation
recipes.addShaped(<contenttweaker:essence_of_foundation>, [[null,<bewitchment:stone_leonard_statue>,null],[<ore:DRPGStatues>,<ore:DRPGStatues>,<ore:DRPGStatues>],[<contenttweaker:white_matter>,<wrcbe:material:5>,<contenttweaker:white_matter>]]);

# Essence of Thought
# recipe in config/modularmachinery/recipes/liquicrafter_contenttweaker_essence_of_thought.json

# Steve
recipes.addShapeless(<contenttweaker:steve>.withTag({Age: 0, Friends: 0, Height: 0, display: {Lore: ["§cAge:§f " + (0 as string), "§cNumber of friends:§f " + (0 as string), "§cHeight (in cm):§f " + (0 as string)]}}), [<contenttweaker:essence_of_foundation>,<ore:dyeBrown>]);

# Alex
recipes.addShapeless(<contenttweaker:alex>.withTag({Age: 0, Friends: 0, Height: 0, display: {Lore: ["§cAge:§f " + (0 as string), "§cNumber of friends:§f " + (0 as string), "§cHeight (in cm):§f " + (0 as string)]}}), [<contenttweaker:essence_of_foundation>,<ore:dyeOrange>]);

# Herobine
recipes.addShapeless(<contenttweaker:herobrine>.withTag({Age: 0, Friends: 0, Height: 0, display: {Lore: ["§cAge:§f " + (0 as string), "§cNumber of friends:§f " + (0 as string), "§cHeight (in cm):§f " + (0 as string)]}}), [<contenttweaker:essence_of_foundation>,<ore:dyeWhite>]);

# Essence of Logic ingredients
val logic_puzzle_characters = [<contenttweaker:steve>,<contenttweaker:alex>,<contenttweaker:herobrine>] as IItemStack[];
val logic_puzzle_modifiers = [<contenttweaker:age_modifier>,<contenttweaker:friends_modifier>,<contenttweaker:height_modifier>] as IItemStack[];
val logic_puzzle_adders = [<contenttweaker:modifier_1>,<contenttweaker:modifier_m1>,<contenttweaker:modifier_10>,<contenttweaker:modifier_m10>,<contenttweaker:modifier_100>,<contenttweaker:modifier_m100>,<contenttweaker:modifier_1000>,<contenttweaker:modifier_m1000>] as IItemStack[];
val logic_puzzle_adder_vals = [1, -1, 10, -10, 100, -100, 1000, -1000] as int[];
for c in logic_puzzle_characters {
	for m in 0 to 3 { # modifiers
		for a in 0 to 8 { # adders
			recipes.addShapeless(c.name + (m as string) + (a as string), c, [c.marked("input"),logic_puzzle_modifiers[m],logic_puzzle_adders[a]],
				function(out,ins,cInfo) {

					var age = ins.input.tag.Age as int;
					var friends = ins.input.tag.Friends as int;
					var height = ins.input.tag.Height as int;

					if(m == 0) {
						age += logic_puzzle_adder_vals[a];
						age = max(0,age);
					}
					if(m == 1) {
						friends += logic_puzzle_adder_vals[a];
						friends = max(0,friends);
					}
					if(m == 2) {
						height += logic_puzzle_adder_vals[a];
						height = max(0,height);
					}

					return out.withTag({Age: age, Friends: friends, Height: height, display: {Lore: ["§cAge:§f " + (age as string), "§cNumber of friends:§f " + (friends as string), "§cHeight (in cm):§f " + (height as string)]}});

				}, null);
		}
	}
}

# Book of Logic
val book_of_logic = <minecraft:written_book>.withTag({pages: ["{\"text\":\"What is the §c§lAge§r, §c§lNumber of friends§r \\u0026 §c§lHeight (in cm)§r of §lSteve§r, §lAlex§r and §lHerobine§r?\\n\\nUse the following 9 statements to figure it out:\"}", "{\"text\":\"1) Herobrine\\u0027s only got one friend, Notch.\\n\\n2) Steve is one year older than Alex.\\n\\n3) Steve and Herobrine are the same height.\"}", "{\"text\":\"4) 20 years ago, Herobrine was twice as old as the combined age of Steve and Alex.\\n\\n5) Steve is accumulating 61 friends every year. Impressive!\"}","{\"text\":\"6) The difference between the number of friends of Alex and Steve is exactly Herobrine\\u0027s height.\\n\\n7) Alex was born 66 cm tall. She gained 4 cm of height every year since then.\"}", "{\"text\":\"8) If every year, starting from now, Herobrine were to double his friend count, then in 11 years he would have 331 fewer friends than Steve. (Remember, Steve also gains friends every year!)\"}", "{\"text\":\"9) Alex has 114 more friends than 5 times the combined height of Steve and herself.\\n\\nUse the Modifiers provided in the quest book and simple Shapeless crafting, and if you think you got it right, combine Steve, Alex and Herobrine with an\"}", "{\"text\":\"Essence of Thought in the Crafting Table!\\n\\nGood luck!\"}"], author: "Atricos", title: "§lBook of Logic", resolved: 1 as byte}) as IItemStack;
recipes.addShapeless(book_of_logic, [<contenttweaker:essence_of_foundation>,<minecraft:book>]);
mods.jei.JEI.addItem(book_of_logic);

# Essence of Logic
# If you're here because you're a dirty cheater, feel really-really ashamed of yourself!
recipes.addShapeless("essence_of_logic", <contenttweaker:essence_of_logic>, [<contenttweaker:essence_of_thought>,<contenttweaker:steve>.marked("steve"),<contenttweaker:alex>.marked("alex"),<contenttweaker:herobrine>.marked("herobrine")],
function(out,ins,cInfo) {
	if(ins.steve.tag has "Age" && ins.steve.tag has "Friends" && ins.steve.tag has "Height" && ins.alex.tag has "Age" && ins.alex.tag has "Friends" && ins.alex.tag has "Height" && ins.herobrine.tag has "Age" && ins.herobrine.tag has "Friends" && ins.herobrine.tag has "Height") {
		if(ins.steve.tag.Age == 28 && ins.steve.tag.Friends == 1708 && ins.steve.tag.Height == 181 && ins.alex.tag.Age == 27 && ins.alex.tag.Friends == 1889 && ins.alex.tag.Height == 174 && ins.herobrine.tag.Age == 50 && ins.herobrine.tag.Friends == 1 && ins.herobrine.tag.Height == 181) {
			return out;
		}
	}
	return null;
}, null);
<contenttweaker:essence_of_logic>.addTooltip(format.white("Craft the Book of Logic and solve the puzzle!"));
<contenttweaker:essence_of_logic>.addTooltip(format.white("Use Steve, Alex and Herobrine with the correct"));
<contenttweaker:essence_of_logic>.addTooltip(format.white("Age, Number of friends and Height to craft this item!"));
<contenttweaker:essence_of_logic>.addTooltip(format.white(format.bold("It can only be manually crafted!")));

# Age Modifier
recipes.addShapeless(<contenttweaker:age_modifier>, [<extrautils2:ingredients:9>,<minecraft:bone>]);

# Height Modifier
recipes.addShapeless(<contenttweaker:height_modifier>, [<extrautils2:ingredients:9>,<minecraft:ladder>]);

# Friends Modifier
recipes.addShapeless(<contenttweaker:friends_modifier>, [<extrautils2:ingredients:9>,<minecraft:red_flower>]);

# Modifier +1
recipes.addShapeless(<contenttweaker:modifier_1>, [<extrautils2:ingredients:9>,<ore:stickWood>]);
recipes.addShapeless(<contenttweaker:modifier_1>, [<contenttweaker:modifier_1000>]);
recipes.addShapeless(<contenttweaker:modifier_1>, [<contenttweaker:modifier_m1>,<minecraft:redstone_torch>]);

# Modifier -1
recipes.addShapeless(<contenttweaker:modifier_m1>, [<contenttweaker:modifier_1>,<minecraft:redstone_torch>]);
recipes.addShapeless(<contenttweaker:modifier_m1>, [<contenttweaker:modifier_m1000>]);

# Modifier +10
recipes.addShapeless(<contenttweaker:modifier_10>, [<contenttweaker:modifier_1>]);
recipes.addShapeless(<contenttweaker:modifier_10>, [<contenttweaker:modifier_m10>,<minecraft:redstone_torch>]);

# Modifier -10
recipes.addShapeless(<contenttweaker:modifier_m10>, [<contenttweaker:modifier_10>,<minecraft:redstone_torch>]);
recipes.addShapeless(<contenttweaker:modifier_m10>, [<contenttweaker:modifier_m1>]);

# Modifier +100
recipes.addShapeless(<contenttweaker:modifier_100>, [<contenttweaker:modifier_10>]);
recipes.addShapeless(<contenttweaker:modifier_100>, [<contenttweaker:modifier_m100>,<minecraft:redstone_torch>]);

# Modifier -100
recipes.addShapeless(<contenttweaker:modifier_m100>, [<contenttweaker:modifier_100>,<minecraft:redstone_torch>]);
recipes.addShapeless(<contenttweaker:modifier_m100>, [<contenttweaker:modifier_m10>]);

# Modifier +1000
recipes.addShapeless(<contenttweaker:modifier_1000>, [<contenttweaker:modifier_100>]);
recipes.addShapeless(<contenttweaker:modifier_1000>, [<contenttweaker:modifier_m1000>,<minecraft:redstone_torch>]);

# Modifier -1000
recipes.addShapeless(<contenttweaker:modifier_m1000>, [<contenttweaker:modifier_1000>,<minecraft:redstone_torch>]);
recipes.addShapeless(<contenttweaker:modifier_m1000>, [<contenttweaker:modifier_m100>]);

# Essence of Destruction
mods.thaumcraft.Infusion.registerRecipe("essence_of_destruction", "", <contenttweaker:essence_of_destruction>, 10, [<aspect:perditio> * 240,<aspect:diabolus> * 100,<aspect:motus> * 100,<aspect:tenebrae> * 50,<aspect:praecantatio> * 50,<aspect:luna> * 20], <projecte:item.pe_destruction_catalyst>, [<thaumcraft:primal_crusher>,<contenttweaker:antimatter_cluster>,<contenttweaker:antimatter_cluster>,<contenttweaker:condensed_vis_crystal_perditio>,<contenttweaker:antimatter_cluster>]);

# Essence of Peace
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/altar/essence_of_peace", <contenttweaker:essence_of_peace>, 7500, 100,
[<rftools:peaceful_module>,<contenttweaker:condensed_vis_crystal_sensus>,<rftools:peaceful_module>,
<contenttweaker:taste_the_rainbow>,<rftoolsdim:known_dimlet:11>.withTag({dkey: "Peaceful"}),<contenttweaker:taste_the_rainbow>,
<contenttweaker:condensed_vis_crystal_sensus>,<contenttweaker:taste_the_rainbow>,<contenttweaker:condensed_vis_crystal_sensus>,
null,null,<contenttweaker:condensed_vis_crystal_sensus>,<contenttweaker:condensed_vis_crystal_sensus>,
<contenttweaker:condensed_vis_crystal_ordo>,<contenttweaker:condensed_vis_crystal_ordo>,<contenttweaker:condensed_vis_crystal_ordo>,<contenttweaker:condensed_vis_crystal_ordo>,<contenttweaker:condensed_vis_crystal_ordo>,<contenttweaker:condensed_vis_crystal_ordo>,<contenttweaker:condensed_vis_crystal_ordo>,<contenttweaker:condensed_vis_crystal_ordo>,
<contenttweaker:condensed_vis_crystal_sensus>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>], "astralsorcery.constellation.aevitas");

# Essence of Order
Fey.addRecipe("essence_of_order", <contenttweaker:essence_of_order>, [<contenttweaker:essence_of_peace>,<contenttweaker:perfect_vacuum>,<contenttweaker:condensed_vis_crystal_ordo>,<thaumcraft:vis_resonator>,<bewitchment:token_of_remedies>]);

# Essence of Inversion
# recipe in config/brandon3055/CustomFusionRecipes.json

# Essence of the Contrary
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:essence_of_the_contrary>, [<contenttweaker:essence_of_inversion>,<contenttweaker:essence_of_enlargement>,<bloodmagic:decorative_brick:2>,<bewitchment:hellish_bauble>], 12288, 8192);

# Essence of Breaking
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:essence_of_breaking>,
[[<abyssalcraft:ethaxiumbrick:1>,<abyssalcraft:ethaxiumbrick:1>,<abyssalcraft:ethaxiumpillar>,<abyssalcraft:ethaxiumbrick:1>,<abyssalcraft:ethaxiumbrick:1>],
[null,<contenttweaker:offensive_core>,<abyssalcraft:ethaxiumpillar>,<contenttweaker:offensive_core>,null],
[<contenttweaker:offensive_core>,<astralsorcery:itemcoloredlens:1>,<projecte:item.pe_rm_morning_star>,<astralsorcery:itemcoloredlens:1>,<contenttweaker:offensive_core>],
[null,<contenttweaker:offensive_core>,<abyssalcraft:ethaxiumpillar>,<contenttweaker:offensive_core>,null],
[<abyssalcraft:ethaxiumbrick:1>,<abyssalcraft:ethaxiumbrick:1>,<abyssalcraft:ethaxiumpillar>,<abyssalcraft:ethaxiumbrick:1>,<abyssalcraft:ethaxiumbrick:1>]]);

# Essence of the Unbroken
mods.actuallyadditions.Empowerer.addRecipe(<contenttweaker:essence_of_the_unbroken>, <contenttweaker:essence_of_breaking>, <abyssalcraft:ethaxiumpillar>, <contenttweaker:essence_of_the_contrary>, <abyssalcraft:ethaxiumpillar>, <abyssalcraft:ethaxiumpillar>, 10000, 100, [0.3594, 0.2656, 0.2461]);

# Essence of Ways
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:essence_of_ways>,
[[<galacticraftplanets:walkway>, <contenttweaker:clay>, <bewitchment:waystone>, <astralsorcery:blockcelestialgateway>, <botania:alfheimportal>, <bewitchment:waystone>, <galacticraftplanets:walkway>],
[<galacticraftplanets:walkway>, <contenttweaker:clay>, <projecte:item.pe_matter>, <astralsorcery:blockcelestialgateway>, <botania:alfheimportal>, <projecte:item.pe_matter>, <galacticraftplanets:walkway>],
[<galacticraftplanets:walkway>, <contenttweaker:clay>, <projecte:item.pe_matter>, <astralsorcery:blockcelestialgateway>, <botania:alfheimportal>, <projecte:item.pe_matter>, <galacticraftplanets:walkway>],
[<galacticraftplanets:walkway>, <projecte:item.pe_matter>, <botania:alfheimportal>, <botania:alfheimportal>, <botania:alfheimportal>, <projecte:item.pe_matter>, <galacticraftplanets:walkway>],
[<galacticraftplanets:walkway>, <projecte:item.pe_matter>, <botania:alfheimportal>, <astralsorcery:blockcelestialgateway>, <projecte:item.pe_matter>, <contenttweaker:clay>, <galacticraftplanets:walkway>],
[<galacticraftplanets:walkway>, <projecte:item.pe_matter>, <botania:alfheimportal>, <astralsorcery:blockcelestialgateway>, <projecte:item.pe_matter>, <contenttweaker:clay>, <galacticraftplanets:walkway>],
[<galacticraftplanets:walkway>, <bewitchment:waystone>, <botania:alfheimportal>, <astralsorcery:blockcelestialgateway>, <bewitchment:waystone>, <contenttweaker:clay>, <galacticraftplanets:walkway>]]);
# Essence of Length
mods.avaritia.Compressor.add("essence_of_length", <contenttweaker:essence_of_length>, 200, <enderutilities:ruler>, true);

# Essence of Extension
FluidToItem.transform(<contenttweaker:essence_of_extension>, <liquid:growth_infusion_liquid>, [<contenttweaker:essence_of_length>,<contenttweaker:essence_of_enlargement>,<minecraft:piston> * 64], true);

# Essence of Motion
Distillery.addRecipe([<contenttweaker:essence_of_motion>], [<contenttweaker:condensed_vis_crystal_motus>,<contenttweaker:condensed_vis_crystal_motus>,<projectred-core:resource_item:410>,<contenttweaker:electron>,<contenttweaker:white_matter>,<contenttweaker:white_matter>]);

# Essence of Movement
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("contenttweaker:essence_of_movement", "", 1500, [<aspect:aer> * 64,<aspect:aqua> * 64,<aspect:ordo> * 64,<aspect:perditio> * 64,<aspect:terra> * 64,<aspect:ignis> * 64], <contenttweaker:essence_of_movement>, [<contenttweaker:essence_of_motion>,<contenttweaker:essence_of_cycles>,<contenttweaker:essence_of_ways>]);

# Essence of Additivity
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:essence_of_additivity>,
[[null,null,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,null,null],
[null,null,<alchemistry:ingot:60>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:60>,null,null],
[<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:63>,<appliedenergistics2:material:23>,<alchemistry:ingot:63>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:63>,<appliedenergistics2:material:23>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<extendedcrafting:material:40>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<appliedenergistics2:material:23>,<alchemistry:ingot:63>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:63>,<appliedenergistics2:material:23>,<alchemistry:ingot:63>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>],
[null,null,<alchemistry:ingot:60>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:63>,<alchemistry:ingot:60>,null,null],
[null,null,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,null,null]]);

# Essence of Dimensionality
# recipe in config/modularmachinery/recipes/liquicrafter_contenttweaker_essence_of_dimensionality.json

# Essence of Continuity
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:essence_of_continuity>, <contenttweaker:essence_of_ways>, null, 200, 10000, [<contenttweaker:essence_of_the_unbroken>,<contenttweaker:condensed_vis_crystal_auram> * 2,<bewitchment:nazar>,<astralsorcery:itemcoloredlens:5> * 2]);

# Ultimate Singularity
mods.extendedcrafting.CombinationCrafting.addRecipe(<extendedcrafting:singularity_ultimate>, 1200000, 30000, <contenttweaker:plasma_core>, [<contenttweaker:techy_singularity>,<contenttweaker:magical_singularity>,<contenttweaker:beginners_singularity>,<contenttweaker:powerful_singularity>]);
<extendedcrafting:singularity_ultimate>.maxStackSize = 64;

# Essence of Matter
# recipe in config/modularmachinery/recipes/high_voltage_plasmafier_contenttweaker_essence_of_matter.json

# Essence of Time
# recipe in config/modularmachinery/recipes/high_voltage_plasmafier_contenttweaker_essence_of_time.json

# Essence of Repetition
# recipe in config/modularmachinery/recipes/high_voltage_plasmafier_contenttweaker_essence_of_repetition.json

# Essence of Infinity
mods.botania.RuneAltar.addRecipe(<contenttweaker:essence_of_infinity>, [<contenttweaker:essence_of_matter>,<contenttweaker:essence_of_time>,<contenttweaker:essence_of_repetition>], 50000000);
<contenttweaker:essence_of_infinity>.addTooltip(format.white(format.bold("Requires 50 full Mana Pools to craft.")));

# Photovoltaic Cell IX
recipes.addShaped(<contenttweaker:photovoltaic_cell_ix> * 3, [[<ore:blockGlassBlack>,<ore:blockGlassBlack>,<ore:blockGlassBlack>],[<draconicadditions:chaotic_energy_core>,<draconicadditions:chaotic_energy_core>,<draconicadditions:chaotic_energy_core>],[<contenttweaker:photovoltaic_cell_viii>,<contenttweaker:photovoltaic_cell_viii>,<contenttweaker:photovoltaic_cell_viii>]]);

# Photovoltaic Cell X
recipes.addShaped(<contenttweaker:photovoltaic_cell_x> * 3, [[<ore:blockGlassGray>,<ore:blockGlassGray>,<ore:blockGlassGray>],[<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>],[<contenttweaker:photovoltaic_cell_ix>,<contenttweaker:photovoltaic_cell_ix>,<contenttweaker:photovoltaic_cell_ix>]]);

# Photovoltaic Cell XI
recipes.addShaped(<contenttweaker:photovoltaic_cell_xi> * 3, [[<ore:blockGlassWhite>,<ore:blockGlassWhite>,<ore:blockGlassWhite>],[<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>],[<contenttweaker:photovoltaic_cell_x>,<contenttweaker:photovoltaic_cell_x>,<contenttweaker:photovoltaic_cell_x>]]);

# Chicken Nugget
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:chicken_nugget>, <minecraft:chicken>, null, 80, 256, [<ore:foodFlour>]);
EIOAlloySmelter.addRecipe(<contenttweaker:chicken_nugget>, [<minecraft:chicken>, <ore:foodFlour>], 4000);
IEAlloySmelter.addRecipe(<contenttweaker:chicken_nugget>, <minecraft:chicken>, <ore:foodFlour>, 160);
for entry in <ore:foodFlour>.items {
    mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:chicken_nugget>, <minecraft:chicken>, entry, 4000);
}

# Burger
val cheeses = [<actuallyadditions:item_food>,<galacticraftcore:food:4>,<divinerpg:cheese>,<galacticraftcore:cheese_curd>] as IItemStack[];
for c in cheeses {
	recipes.addShapedMirrored(<contenttweaker:burger>, [[null,<actuallyadditions:item_food:10>,null],[<erebus:erebus_food:15>,<minecraft:cooked_beef>,c],[null,<actuallyadditions:item_food:10>,null]]);
}

# Taco
val doughs = [<actuallyadditions:item_misc:4>,<actuallyadditions:item_misc:9>] as IItemStack[];
for d in doughs {
	recipes.addShapedMirrored(<contenttweaker:taco>, [[<erebus:erebus_food:15>,<minecraft:beetroot>,d],[<minecraft:cooked_porkchop>,<minecraft:cooked_chicken>,d],[d,d,d]]);
}

# Cosmic Neutronium Nugget
recipes.addShaped(<contenttweaker:cosmic_neutronium_nugget>, [[<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>],[<avaritia:resource:3>,<contenttweaker:chicken_nugget>,<avaritia:resource:3>],[<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>]]);

# Cosmic Neutronium Burger
recipes.addShaped(<contenttweaker:cosmic_neutronium_burger>, [[<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>],[<avaritia:resource:3>,<contenttweaker:burger>,<avaritia:resource:3>],[<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>]]);

# Cosmic Neutronium Taco
recipes.addShaped(<contenttweaker:cosmic_neutronium_taco>, [[<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>],[<avaritia:resource:3>,<contenttweaker:taco>,<avaritia:resource:3>],[<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>]]);

# Essence of Opening
mods.avaritia.Compressor.add("essence_of_opening", <contenttweaker:essence_of_opening>, 1024, <minecraft:wooden_door>, true);

# Ultimate Machine Frame
recipes.addShaped(<contenttweaker:ultimate_machine_frame>, [[<rftools:creative_screen>,<avaritia:resource:4>,<rftools:creative_screen>],[<contenttweaker:celestial_crystal_core>,<contenttweaker:penultimate_machine_frame>,<contenttweaker:celestial_crystal_core>],[<rftools:creative_screen>,<avaritia:resource:4>,<rftools:creative_screen>]]);

# Colored Light Adhesive Yielding (C.L.A.Y.)
# recipe in config/modularmachinery/recipes/liquicrafter_contenttweaker_clay.json
<contenttweaker:clay>.addTooltip(format.darkPurple(format.italic("Finally balanced!")));

# Nature's Blessing
mods.botania.RuneAltar.addRecipe(<contenttweaker:natures_blessing>, [<botania:overgrowthseed>,<botania:overgrowthseed>,<botania:overgrowthseed>,<botania:overgrowthseed>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_envy>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_sloth>,<contenttweaker:rune_of_greed>,<contenttweaker:rune_of_gluttony>,<contenttweaker:rune_of_lust>,<contenttweaker:rune_of_mana>,<contenttweaker:rune_of_deception>], 1000000);
<contenttweaker:natures_blessing>.addTooltip(format.white("Requires 1 full Mana Pool to craft."));

# Reinforced Machine Accelerator
recipes.addShaped(<contenttweaker:reinforced_machine_accelerator>, [[<alchemistry:ingot:104>,<bloodmagic:blood_rune:9>,<alchemistry:ingot:104>],[<bloodmagic:blood_rune:9>,<modularmachinery:blockcasing:4>,<bloodmagic:blood_rune:9>],[<alchemistry:ingot:104>,<bloodmagic:blood_rune:9>,<alchemistry:ingot:104>]]);

# Reinforced Machine Electolyzer
recipes.addShaped(<contenttweaker:reinforced_machine_electrolyzer>, [[<extendedcrafting:singularity:27>,<mekanism:electrolyticcore>,<extendedcrafting:singularity:27>],[<mekanism:electrolyticcore>,<modularmachinery:blockcasing:4>,<mekanism:electrolyticcore>],[<extendedcrafting:singularity:27>,<mekanism:electrolyticcore>,<extendedcrafting:singularity:27>]]);

# Reinforced Machine Stabilizer
recipes.addShaped(<contenttweaker:reinforced_machine_stabilizer>, [[<alchemistry:ingot:90>,<draconicevolution:particle_generator:2>,<alchemistry:ingot:90>],[<draconicevolution:particle_generator:2>,<modularmachinery:blockcasing:4>,<draconicevolution:particle_generator:2>],[<alchemistry:ingot:90>,<draconicevolution:particle_generator:2>,<alchemistry:ingot:90>]]);

# Reinforced Starlight Infused Machine Block
mods.astralsorcery.StarlightInfusion.addInfusion(<modularmachinery:blockcasing:4>, <contenttweaker:reinforced_starlight_infused_machine_block>, false, 1.0, 30);

# Neutronium Singularity
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:neutronium_singularity>, <avaritia:block_resource>, 1024, <contenttweaker:singularification_catalyst>, 100000000);

# Infinite Singularity
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:infinite_singularity>, <avaritia:block_resource:1>, 100000000, <contenttweaker:singularification_catalyst>, 100000000);

# Singularity Singularity
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:singularity_singularity>, <extendedcrafting:singularity_ultimate>, 100000000, <contenttweaker:singularification_catalyst>, 100000000);

# Creative Mesh
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:creative_mesh>, <appliedenergistics2:creative_storage_cell>, 2000000, <contenttweaker:singularification_catalyst>, 100000000);

# Creative Singularity
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:creative_singularity>, <contenttweaker:creative_mesh>, 100000000, <contenttweaker:singularification_catalyst>, 100000000);

# Unwarpification Talisman
mods.astralsorcery.Altar.addConstellationAltarRecipe("dj2:shaped/internal/altar/unwarpification_talisman", <contenttweaker:unwarpification_talisman>, 500, 100,
[<botania:bloodpendant>.withTag({brewKey: "thaumcraft:warpward"}),<botania:blackholetalisman>,<botania:bloodpendant>.withTag({brewKey: "thaumcraft:warpward"}),
<botania:blackholetalisman>,<thaumcraft:sanity_checker>,<botania:blackholetalisman>,
<botania:bloodpendant>.withTag({brewKey: "thaumcraft:warpward"}),<botania:blackholetalisman>,<botania:bloodpendant>.withTag({brewKey: "thaumcraft:warpward"}),
<botania:brewflask>.withTag({brewKey: "thaumcraft:warpward"}),<botania:brewflask>.withTag({brewKey: "thaumcraft:warpward"}),<botania:brewflask>.withTag({brewKey: "thaumcraft:warpward"}),<botania:brewflask>.withTag({brewKey: "thaumcraft:warpward"}),
<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>
]);
<contenttweaker:unwarpification_talisman>.addTooltip(format.white("Right Click to set your Thaumcraft Warp level to 0!"));

# Goddess' Pearl
mods.alchemistry.Combiner.addRecipe(<contenttweaker:goddess_pearl>, [<thaumcraft:primordial_pearl>,<alchemistry:ingot:12>,<thaumcraft:primordial_pearl>,<alchemistry:ingot:12>,<alchemistry:ingot:42>,<alchemistry:ingot:12>,<thaumcraft:primordial_pearl>,<alchemistry:ingot:12>,<thaumcraft:primordial_pearl>]);
<contenttweaker:goddess_pearl>.addTooltip(format.red("Does not get consumed by regular crafting."));
<contenttweaker:goddess_pearl>.addTooltip(format.red(format.bold("WARNING: ")) + format.gray(format.bold("AE2 consumes the item! Use an external crafter like an RFTools Crafter when using this item in your ME System!")));

print("ENDING ContentTweakerRecipes.zs");
