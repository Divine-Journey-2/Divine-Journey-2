// Author: Atricos, WaitingIdly, KleinGrrmpf

import mods.chisel.Carving;

print("STARTING Chisel.zs");

// Removing the ability to transform Roots Elemental Soils into each other
Carving.removeGroup("rootsRunicSoilTypes");

// Remove some Stone types from the "stonebrick" group, because there is no space
for i in 0 to 4 {
    Carving.removeVariation("stonebrick", <minecraft:stonebrick>.withDamage(i));
}
Carving.removeVariation("stonebrick", <lightningcraft:corrupt_stone>);
Carving.removeVariation("stonebrick", <chisel:stonebrick2:8>);
Carving.removeVariation("stonebrick", <chisel:stonebrick2:9>);
furnace.addRecipe(<chisel:stonebrick2:9>, <chisel:stonebrick2:8>);

// Fixing Chiseled Double Stone Slab conflict
recipes.removeShapeless(<minecraft:stone>, [<minecraft:stone_slab>, <minecraft:stone_slab>]);
recipes.addShaped(<chisel:stonebrick2:8>, [[<minecraft:stone_slab>],[<minecraft:stone_slab>]]);
<ore:stone>.remove(<chisel:stonebrick2:9>);
<ore:bricksStone>.remove(<chisel:stonebrick2:9>);
<ore:brickStone>.remove(<chisel:stonebrick2:9>);

// Auto Chisel
recipes.remove(<chisel:auto_chisel>);
recipes.addShaped(<chisel:auto_chisel>, [[<enderio:block_fused_quartz>,<enderio:block_fused_quartz>,<enderio:block_fused_quartz>],[<chisel:chisel_iron>,<thermalexpansion:frame>,<chisel:chisel_iron>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

// Removing Chisel Charcoal recipe.  Conflicts with Thermal recipe.
recipes.remove(<chisel:block_charcoal:*>);
recipes.remove(<chisel:block_charcoal1:*>);
recipes.remove(<chisel:block_charcoal2:*>);

// Add a number of colored items as chisel groups
val colors as string[] = ["white", "orange", "magenta", "lightblue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];

function silverWrapper(color as string) {
    return color == "light_gray" ? "silver" : color;
}

function lightBlueWrapper(color as string) {
    return color == "lightblue" ? "light_blue" : color;
}

// Vanilla Beds
Carving.addGroup("vanillabed");
for i in 0 to 16 {
    Carving.addVariation("vanillabed", <minecraft:bed>.withDamage(i));
}

// Vanilla Banners
Carving.addGroup("vanillabanner");
for i in 0 to 16 {
    Carving.addVariation("vanillabanner", <minecraft:banner>.withDamage(i));
}

// Industrial Foregoing Laser Lens
Carving.addGroup("iflaserlens");
for i in 0 to 16 {
    Carving.addVariation("iflaserlens", <industrialforegoing:laser_lens>.withDamage(i));
}

// Industrial Foregoing Conveyor
Carving.addGroup("ifconveyor");
for i in 0 to 16 {
    Carving.addVariation("ifconveyor", <industrialforegoing:conveyor>.withDamage(i));
}

// Thaumcraft Banner
Carving.addGroup("thaumcraftbanner");
for i in 0 to 16 {
    Carving.addVariation("thaumcraftbanner", itemUtils.getItem("thaumcraft:banner_"~silverWrapper(colors[i])));
}

// Thaumcraft Candle
Carving.addGroup("thaumcraftcandle");
for i in 0 to 16 {
    Carving.addVariation("thaumcraftcandle", itemUtils.getItem("thaumcraft:candle_"~silverWrapper(colors[i])));
}

// Thaumcraft Nitor
Carving.addGroup("thaumcraftnitor");
for i in 0 to 16 {
    Carving.addVariation("thaumcraftnitor", itemUtils.getItem("thaumcraft:nitor_"~silverWrapper(colors[i])));
}

// Quark Flowerpot
Carving.addGroup("quarkflowerpot");
Carving.addVariation("quarkflowerpot", <minecraft:flower_pot>);
for i in 0 to 16 {
    Carving.addVariation("quarkflowerpot", itemUtils.getItem("quark:colored_flowerpot_"~silverWrapper(lightBlueWrapper(colors[i]))));
}

// Quark Stained Planks
Carving.addGroup("quarkstainedplanks");
for i in 0 to 16 {
    Carving.addVariation("quarkstainedplanks", <quark:stained_planks>.withDamage(i));
}

// Quark Candle
Carving.addGroup("quarkcandle");
for i in 0 to 16 {
    Carving.addVariation("quarkcandle", <quark:candle>.withDamage(i));
}

// Quark Item Frames
Carving.addGroup("quarkitemframe");
Carving.addVariation("quarkitemframe", <minecraft:item_frame>);
for i in 0 to 16 {
    Carving.addVariation("quarkitemframe", <quark:colored_item_frame>.withDamage(i));
}

// Bewitchment Candle
Carving.addGroup("bewitchmentcandle");
for i in 0 to 16 {
    Carving.addVariation("bewitchmentcandle", itemUtils.getItem("bewitchment:"~lightBlueWrapper(colors[i])~"_candle"));
}

// Bibliocraft Typewriter
Carving.addGroup("bibliocrafttypewriter");
for i in 0 to 16 {
    Carving.addVariation("bibliocrafttypewriter", <bibliocraft:typewriter>.withDamage(i));
}

// Bibliocraft Sword Pedestal
Carving.addGroup("bibliocraftswordpedestal");
for i in 0 to 16 {
    Carving.addVariation("bibliocraftswordpedestal", <bibliocraft:swordpedestal>.withDamage(i));
}

// AE2 Paint Ball
Carving.addGroup("ae2paintball");
for i in 0 to 16 {
    Carving.addVariation("ae2paintball", <appliedenergistics2:paint_ball>.withDamage(i));
}

// AE2 Paint Ball Lumen
Carving.addGroup("ae2paintballlumen");
for i in 20 to 36 {
    Carving.addVariation("ae2paintballlumen", <appliedenergistics2:paint_ball>.withDamage(i));
}

// AE2 Cable
Carving.addGroup("ae2glasscable");
for i in 0 to 17 {
    Carving.addVariation("ae2glasscable", <appliedenergistics2:part>.withDamage(i));
}

// AE2 Covered Cable
Carving.addGroup("ae2coveredcable");
for i in 20 to 37 {
    Carving.addVariation("ae2coveredcable", <appliedenergistics2:part>.withDamage(i));
}

// AE2 Smart Cable
Carving.addGroup("ae2smartcable");
for i in 40 to 57 {
    Carving.addVariation("ae2smartcable", <appliedenergistics2:part>.withDamage(i));
}

// AE2 Dense Smart Cable
Carving.addGroup("ae2densesmartcable");
for i in 60 to 77 {
    Carving.addVariation("ae2densesmartcable", <appliedenergistics2:part>.withDamage(i));
}

// AE2 Dense Cable
Carving.addGroup("ae2densecable");
for i in 500 to 517 {
    Carving.addVariation("ae2densecable", <appliedenergistics2:part>.withDamage(i));
}

// ProjectRed Illumar
Carving.addGroup("projectredillumar");
for i in 500 to 516 {
    Carving.addVariation("projectredillumar", <projectred-core:resource_item>.withDamage(i));
}

// ProjectRed Wire
Carving.addGroup("projectredwire");
for i in 1 to 17 {
    Carving.addVariation("projectredwire", <projectred-transmission:wire>.withDamage(i));
}

// ProjectRed Bundled Cable
Carving.addGroup("projectredcable");
for i in 17 to 34 {
    Carving.addVariation("projectredcable", <projectred-transmission:wire>.withDamage(i));
}

// ProjectRed Framed Wire
Carving.addGroup("projectredframedwire");
for i in 1 to 17 {
    Carving.addVariation("projectredframedwire", <projectred-transmission:framed_wire>.withDamage(i));
}

// Mekanism Plastic Block
Carving.addGroup("mekanismplasticblock");
for i in 0 to 16 {
    Carving.addVariation("mekanismplasticblock", <mekanism:plasticblock>.withDamage(i));
}

// Mekanism Slick Plastic Block
Carving.addGroup("mekanismslickplasticblock");
for i in 0 to 16 {
    Carving.addVariation("mekanismslickplasticblock", <mekanism:slickplasticblock>.withDamage(i));
}

// Mekanism Glow Plastic Block
Carving.addGroup("mekanismglowplasticblock");
for i in 0 to 16 {
    Carving.addVariation("mekanismglowplasticblock", <mekanism:glowplasticblock>.withDamage(i));
}

// Mekanism Reinforced Plastic Block
Carving.addGroup("mekanismreinfocedplasticblock");
for i in 0 to 16 {
    Carving.addVariation("mekanismreinfocedplasticblock", <mekanism:reinforcedplasticblock>.withDamage(i));
}

// Mekanism Road Plastic Block
Carving.addGroup("mekanismroadplasticblock");
for i in 0 to 16 {
    Carving.addVariation("mekanismroadplasticblock", <mekanism:roadplasticblock>.withDamage(i));
}

// Mekanism Plastic Fence
Carving.addGroup("mekanismplasticfence");
for i in 0 to 16 {
    Carving.addVariation("mekanismplasticfence", <mekanism:plasticfence>.withDamage(i));
}

// Mekanism Balloon
Carving.addGroup("mekanismballoon");
for i in 0 to 16 {
    Carving.addVariation("mekanismballoon", <mekanism:balloon>.withDamage(i));
}

// Mekanism Glow Panel
Carving.addGroup("mekanismglowpanel");
for i in 0 to 16 {
    Carving.addVariation("mekanismglowpanel", <mekanism:glowpanel>.withDamage(i));
}

// Underground Biomes Sand
Carving.addGroup("sand");
Carving.addVariation("sand", <minecraft:sand>);
Carving.addVariation("sand", <minecraft:sand:1>);
for i in 0 to 8 {
    Carving.addVariation("sand",<undergroundbiomes:igneous_sand>.withDamage(i));
    Carving.addVariation("sand",<undergroundbiomes:metamorphic_sand>.withDamage(i));
    Carving.addVariation("sand",<undergroundbiomes:sedimentary_sand>.withDamage(i));
}

// Underground Biomes Coal Ore
Carving.addGroup("ub_coal_ore");
Carving.addVariation("ub_coal_ore", <minecraft:coal_ore>);
Carving.addVariation("ub_coal_ore", <atum:coal_ore>);
Carving.addVariation("ub_coal_ore", <erebus:ore_coal>);
for i in 0 to 8 {
    Carving.addVariation("ub_coal_ore", <undergroundbiomes:igneous_stone_coal_ore>.withDamage(i));
    Carving.addVariation("ub_coal_ore", <undergroundbiomes:metamorphic_stone_coal_ore>.withDamage(i));
    Carving.addVariation("ub_coal_ore", <undergroundbiomes:sedimentary_stone_coal_ore>.withDamage(i));
}

// Underground Biomes Iron Ore
Carving.addGroup("ub_iron_ore");
Carving.addVariation("ub_iron_ore", <minecraft:iron_ore>);
Carving.addVariation("ub_iron_ore", <abyssalcraft:abyiroore>);
Carving.addVariation("ub_iron_ore", <atum:iron_ore>);
Carving.addVariation("ub_iron_ore", <erebus:ore_iron>);
Carving.addVariation("ub_iron_ore", <galacticraftplanets:mars:3>);
Carving.addVariation("ub_iron_ore", <galacticraftplanets:asteroids_block:5>);
Carving.addVariation("ub_iron_ore", <lightningcraft:ore_block>);
for i in 0 to 8 {
    Carving.addVariation("ub_iron_ore", <undergroundbiomes:igneous_stone_iron_ore>.withDamage(i));
    Carving.addVariation("ub_iron_ore", <undergroundbiomes:metamorphic_stone_iron_ore>.withDamage(i));
    Carving.addVariation("ub_iron_ore", <undergroundbiomes:sedimentary_stone_iron_ore>.withDamage(i));
}

// Underground Biomes Lapis Ore
Carving.addGroup("ub_lapis_ore");
Carving.addVariation("ub_lapis_ore", <minecraft:lapis_ore>);
Carving.addVariation("ub_lapis_ore", <atum:lapis_ore>);
Carving.addVariation("ub_lapis_ore", <erebus:ore_lapis>);
for i in 0 to 8 {
    Carving.addVariation("ub_lapis_ore", <undergroundbiomes:igneous_stone_lapis_ore>.withDamage(i));
    Carving.addVariation("ub_lapis_ore", <undergroundbiomes:metamorphic_stone_lapis_ore>.withDamage(i));
    Carving.addVariation("ub_lapis_ore", <undergroundbiomes:sedimentary_stone_lapis_ore>.withDamage(i));
}

// Underground Biomes Gold Ore
Carving.addGroup("ub_gold_ore");
Carving.addVariation("ub_gold_ore", <minecraft:gold_ore>);
Carving.addVariation("ub_gold_ore", <abyssalcraft:abygolore>);
Carving.addVariation("ub_gold_ore", <atum:gold_ore>);
Carving.addVariation("ub_gold_ore", <erebus:ore_gold>);
Carving.addVariation("ub_gold_ore", <lightningcraft:ore_block:1>);
for i in 0 to 8 {
    Carving.addVariation("ub_gold_ore", <undergroundbiomes:igneous_stone_gold_ore>.withDamage(i));
    Carving.addVariation("ub_gold_ore", <undergroundbiomes:metamorphic_stone_gold_ore>.withDamage(i));
    Carving.addVariation("ub_gold_ore", <undergroundbiomes:sedimentary_stone_gold_ore>.withDamage(i));
}

// Underground Biomes Diamond Ore
Carving.addGroup("ub_diamond_ore");
Carving.addVariation("ub_diamond_ore", <minecraft:diamond_ore>);
Carving.addVariation("ub_diamond_ore", <abyssalcraft:abydiaore>);
Carving.addVariation("ub_diamond_ore", <atum:diamond_ore>);
Carving.addVariation("ub_diamond_ore", <erebus:ore_diamond>);
Carving.addVariation("ub_diamond_ore", <erebus:ore_encrusted_diamond>);
Carving.addVariation("ub_diamond_ore", <lightningcraft:ore_block:2>);
for i in 0 to 8 {
    Carving.addVariation("ub_diamond_ore", <undergroundbiomes:igneous_stone_diamond_ore>.withDamage(i));
    Carving.addVariation("ub_diamond_ore", <undergroundbiomes:metamorphic_stone_diamond_ore>.withDamage(i));
    Carving.addVariation("ub_diamond_ore", <undergroundbiomes:sedimentary_stone_diamond_ore>.withDamage(i));
}

// Underground Biomes Emerald Ore
Carving.addGroup("ub_emerald_ore");
Carving.addVariation("ub_emerald_ore", <minecraft:emerald_ore>);
Carving.addVariation("ub_emerald_ore", <atum:emerald_ore>);
Carving.addVariation("ub_emerald_ore", <erebus:ore_emerald>);
Carving.addVariation("ub_emerald_ore", <lightningcraft:ore_block:3>);
for i in 0 to 8 {
    Carving.addVariation("ub_emerald_ore", <undergroundbiomes:igneous_stone_emerald_ore>.withDamage(i));
    Carving.addVariation("ub_emerald_ore", <undergroundbiomes:metamorphic_stone_emerald_ore>.withDamage(i));
    Carving.addVariation("ub_emerald_ore", <undergroundbiomes:sedimentary_stone_emerald_ore>.withDamage(i));
}

// Underground Biomes Redstone Ore
Carving.addGroup("ub_redstone_ore");
Carving.addVariation("ub_redstone_ore", <minecraft:redstone_ore>);
Carving.addVariation("ub_redstone_ore", <atum:redstone_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_redstone_ore", <undergroundbiomes:igneous_stone_redstone_ore>.withDamage(i));
    Carving.addVariation("ub_redstone_ore", <undergroundbiomes:metamorphic_stone_redstone_ore>.withDamage(i));
    Carving.addVariation("ub_redstone_ore", <undergroundbiomes:sedimentary_stone_redstone_ore>.withDamage(i));
}

// Underground Biomes Certus Quartz Ore
Carving.addGroup("ub_certus_quartz_ore");
Carving.addVariation("ub_certus_quartz_ore", <appliedenergistics2:quartz_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_certus_quartz_ore", <undergroundbiomes:igneous_stone_appliedenergistics2_quartz_ore>.withDamage(i));
    Carving.addVariation("ub_certus_quartz_ore", <undergroundbiomes:metamorphic_stone_appliedenergistics2_quartz_ore>.withDamage(i));
    Carving.addVariation("ub_certus_quartz_ore", <undergroundbiomes:sedimentary_stone_appliedenergistics2_quartz_ore>.withDamage(i));
}

// Underground Biomes Charged Certus Quartz Ore
Carving.addGroup("ub_charged_certus_quartz_ore");
Carving.addVariation("ub_charged_certus_quartz_ore", <appliedenergistics2:charged_quartz_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_charged_certus_quartz_ore", <undergroundbiomes:igneous_stone_appliedenergistics2_charged_quartz_ore>.withDamage(i));
    Carving.addVariation("ub_charged_certus_quartz_ore", <undergroundbiomes:metamorphic_stone_appliedenergistics2_charged_quartz_ore>.withDamage(i));
    Carving.addVariation("ub_charged_certus_quartz_ore", <undergroundbiomes:sedimentary_stone_appliedenergistics2_charged_quartz_ore>.withDamage(i));
}

// Underground Biomes Black Quartz Ore
Carving.addGroup("ub_black_quartz_ore");
Carving.addVariation("ub_black_quartz_ore", <actuallyadditions:block_misc:3>);
for i in 0 to 8 {
    Carving.addVariation("ub_black_quartz_ore", <undergroundbiomes:igneous_stone_actuallyadditions_block_misc_3>.withDamage(i));
    Carving.addVariation("ub_black_quartz_ore", <undergroundbiomes:metamorphic_stone_actuallyadditions_block_misc_3>.withDamage(i));
    Carving.addVariation("ub_black_quartz_ore", <undergroundbiomes:sedimentary_stone_actuallyadditions_block_misc_3>.withDamage(i));
}

// Underground Biomes Thaumcraft Quartz Ore
Carving.addGroup("ub_overworld_quartz_ore");
Carving.addVariation("ub_overworld_quartz_ore", <thaumcraft:ore_quartz>);
for i in 0 to 8 {
    Carving.addVariation("ub_overworld_quartz_ore", <undergroundbiomes:igneous_stone_thaumcraft_ore_quartz>.withDamage(i));
    Carving.addVariation("ub_overworld_quartz_ore", <undergroundbiomes:metamorphic_stone_thaumcraft_ore_quartz>.withDamage(i));
    Carving.addVariation("ub_overworld_quartz_ore", <undergroundbiomes:sedimentary_stone_thaumcraft_ore_quartz>.withDamage(i));
}

// Underground Biomes Dark Ore
Carving.addGroup("ub_dark_ore");
Carving.addVariation("ub_dark_ore", <evilcraft:dark_ore:0>);
for i in 0 to 8 {
    Carving.addVariation("ub_dark_ore", <undergroundbiomes:igneous_stone_evilcraft_dark_ore>.withDamage(i));
    Carving.addVariation("ub_dark_ore", <undergroundbiomes:metamorphic_stone_evilcraft_dark_ore>.withDamage(i));
    Carving.addVariation("ub_dark_ore", <undergroundbiomes:sedimentary_stone_evilcraft_dark_ore>.withDamage(i));
}

// Underground Biomes Aquamarine Shale
Carving.addGroup("ub_aquamarine_shale");
Carving.addVariation("ub_aquamarine_shale", <astralsorcery:blockcustomsandore:0>);
for i in 0 to 8 {
    Carving.addVariation("ub_aquamarine_shale", <undergroundbiomes:igneous_stone_astralsorcery_blockcustomsandore_1>.withDamage(i));
    Carving.addVariation("ub_aquamarine_shale", <undergroundbiomes:metamorphic_stone_astralsorcery_blockcustomsandore_1>.withDamage(i));
    Carving.addVariation("ub_aquamarine_shale", <undergroundbiomes:sedimentary_stone_astralsorcery_blockcustomsandore_1>.withDamage(i));
}

// Underground Biomes Cinnabar Ore
Carving.addGroup("ub_cinnabar_ore");
Carving.addVariation("ub_cinnabar_ore", <thaumcraft:ore_cinnabar>);
for i in 0 to 8 {
    Carving.addVariation("ub_cinnabar_ore", <undergroundbiomes:igneous_stone_thaumcraft_ore_cinnabar>.withDamage(i));
    Carving.addVariation("ub_cinnabar_ore", <undergroundbiomes:metamorphic_stone_thaumcraft_ore_cinnabar>.withDamage(i));
    Carving.addVariation("ub_cinnabar_ore", <undergroundbiomes:sedimentary_stone_thaumcraft_ore_cinnabar>.withDamage(i));
}

// Underground Biomes Amber Bearing Stone
Carving.addGroup("ub_amber_bearing_stone");
Carving.addVariation("ub_amber_bearing_stone", <thaumcraft:ore_amber>);
for i in 0 to 8 {
    Carving.addVariation("ub_amber_bearing_stone", <undergroundbiomes:igneous_stone_thaumcraft_ore_amber>.withDamage(i));
    Carving.addVariation("ub_amber_bearing_stone", <undergroundbiomes:metamorphic_stone_thaumcraft_ore_amber>.withDamage(i));
    Carving.addVariation("ub_amber_bearing_stone", <undergroundbiomes:sedimentary_stone_thaumcraft_ore_amber>.withDamage(i));
}

// Underground Biomes Garnet Ore
Carving.addGroup("ub_garnet_ore");
Carving.addVariation("ub_garnet_ore", <bewitchment:garnet_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_garnet_ore", <undergroundbiomes:igneous_stone_bewitchment_garnet_ore>.withDamage(i));
    Carving.addVariation("ub_garnet_ore", <undergroundbiomes:metamorphic_stone_bewitchment_garnet_ore>.withDamage(i));
    Carving.addVariation("ub_garnet_ore", <undergroundbiomes:sedimentary_stone_bewitchment_garnet_ore>.withDamage(i));
}

// Underground Biomes Opal Ore
Carving.addGroup("ub_opal_ore");
Carving.addVariation("ub_opal_ore", <bewitchment:opal_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_opal_ore", <undergroundbiomes:igneous_stone_bewitchment_opal_ore>.withDamage(i));
    Carving.addVariation("ub_opal_ore", <undergroundbiomes:metamorphic_stone_bewitchment_opal_ore>.withDamage(i));
    Carving.addVariation("ub_opal_ore", <undergroundbiomes:sedimentary_stone_bewitchment_opal_ore>.withDamage(i));
}

// Underground Biomes Amethyst Ore
Carving.addGroup("ub_amethyst_ore");
Carving.addVariation("ub_amethyst_ore", <mysticalworld:amethyst_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_amethyst_ore", <undergroundbiomes:igneous_stone_mysticalworld_amethyst_ore>.withDamage(i));
    Carving.addVariation("ub_amethyst_ore", <undergroundbiomes:metamorphic_stone_mysticalworld_amethyst_ore>.withDamage(i));
    Carving.addVariation("ub_amethyst_ore", <undergroundbiomes:sedimentary_stone_mysticalworld_amethyst_ore>.withDamage(i));
}

// Underground Biomes Coralium Ore
Carving.addGroup("ub_coralium_ore");
Carving.addVariation("ub_coralium_ore", <abyssalcraft:coraliumore>);
for i in 0 to 8 {
    Carving.addVariation("ub_coralium_ore", <undergroundbiomes:igneous_stone_abyssalcraft_coraliumore>.withDamage(i));
    Carving.addVariation("ub_coralium_ore", <undergroundbiomes:metamorphic_stone_abyssalcraft_coraliumore>.withDamage(i));
    Carving.addVariation("ub_coralium_ore", <undergroundbiomes:sedimentary_stone_abyssalcraft_coraliumore>.withDamage(i));
}

// Underground Biomes Inferium Ore
Carving.addGroup("ub_inferium_ore");
Carving.addVariation("ub_inferium_ore", <mysticalagriculture:inferium_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_inferium_ore", <undergroundbiomes:igneous_stone_mysticalagriculture_inferium_ore>.withDamage(i));
    Carving.addVariation("ub_inferium_ore", <undergroundbiomes:metamorphic_stone_mysticalagriculture_inferium_ore>.withDamage(i));
    Carving.addVariation("ub_inferium_ore", <undergroundbiomes:sedimentary_stone_mysticalagriculture_inferium_ore>.withDamage(i));
}

// Underground Biomes Prosperity Ore
Carving.addGroup("ub_prosperity_ore");
Carving.addVariation("ub_prosperity_ore", <mysticalagriculture:prosperity_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_prosperity_ore", <undergroundbiomes:igneous_stone_mysticalagriculture_prosperity_ore>.withDamage(i));
    Carving.addVariation("ub_prosperity_ore", <undergroundbiomes:metamorphic_stone_mysticalagriculture_prosperity_ore>.withDamage(i));
    Carving.addVariation("ub_prosperity_ore", <undergroundbiomes:sedimentary_stone_mysticalagriculture_prosperity_ore>.withDamage(i));
}

// Underground Biomes Dimensional Shard Ore
Carving.addGroup("ub_dimensional_shard_ore");
for i in 0 to 3 {
    Carving.addVariation("ub_dimensional_shard_ore", <rftools:dimensional_shard_ore>.withDamage(i));
}
for i in 0 to 8 {
    Carving.addVariation("ub_dimensional_shard_ore", <undergroundbiomes:igneous_stone_rftools_dimensional_shard_ore>.withDamage(i));
    Carving.addVariation("ub_dimensional_shard_ore", <undergroundbiomes:metamorphic_stone_rftools_dimensional_shard_ore>.withDamage(i));
    Carving.addVariation("ub_dimensional_shard_ore", <undergroundbiomes:sedimentary_stone_rftools_dimensional_shard_ore>.withDamage(i));
}

// Underground Biomes Realmite Ore
Carving.addGroup("ub_realmite_ore");
Carving.addVariation("ub_realmite_ore", <divinerpg:realmite_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_realmite_ore", <undergroundbiomes:igneous_stone_divinerpg_realmite_ore>.withDamage(i));
    Carving.addVariation("ub_realmite_ore", <undergroundbiomes:metamorphic_stone_divinerpg_realmite_ore>.withDamage(i));
    Carving.addVariation("ub_realmite_ore", <undergroundbiomes:sedimentary_stone_divinerpg_realmite_ore>.withDamage(i));
}

// Underground Biomes Rupee Ore
Carving.addGroup("ub_rupee_ore");
Carving.addVariation("ub_rupee_ore", <divinerpg:rupee_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_rupee_ore", <undergroundbiomes:igneous_stone_divinerpg_rupee_ore>.withDamage(i));
    Carving.addVariation("ub_rupee_ore", <undergroundbiomes:metamorphic_stone_divinerpg_rupee_ore>.withDamage(i));
    Carving.addVariation("ub_rupee_ore", <undergroundbiomes:sedimentary_stone_divinerpg_rupee_ore>.withDamage(i));
}

// Underground Biomes Arlemite Ore
Carving.addGroup("ub_arlemite_ore");
Carving.addVariation("ub_arlemite_ore", <divinerpg:arlemite_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_arlemite_ore", <undergroundbiomes:igneous_stone_divinerpg_arlemite_ore>.withDamage(i));
    Carving.addVariation("ub_arlemite_ore", <undergroundbiomes:metamorphic_stone_divinerpg_arlemite_ore>.withDamage(i));
    Carving.addVariation("ub_arlemite_ore", <undergroundbiomes:sedimentary_stone_divinerpg_arlemite_ore>.withDamage(i));
}

// Underground Biomes Yellorite Ore
Carving.addGroup("ub_yellorite_ore");
Carving.addVariation("ub_yellorite_ore", <bigreactors:oreyellorite>);
for i in 0 to 8 {
    Carving.addVariation("ub_yellorite_ore", <undergroundbiomes:igneous_stone_bigreactors_oreyellorite>.withDamage(i));
    Carving.addVariation("ub_yellorite_ore", <undergroundbiomes:metamorphic_stone_bigreactors_oreyellorite>.withDamage(i));
    Carving.addVariation("ub_yellorite_ore", <undergroundbiomes:sedimentary_stone_bigreactors_oreyellorite>.withDamage(i));
}

// Underground Biomes Osmium Ore
Carving.addGroup("ub_osmium_ore");
Carving.addVariation("ub_osmium_ore", <mekanism:oreblock:0>);
for i in 0 to 8 {
    Carving.addVariation("ub_osmium_ore", <undergroundbiomes:igneous_stone_mekanism_oreblock>.withDamage(i));
    Carving.addVariation("ub_osmium_ore", <undergroundbiomes:metamorphic_stone_mekanism_oreblock>.withDamage(i));
    Carving.addVariation("ub_osmium_ore", <undergroundbiomes:sedimentary_stone_mekanism_oreblock>.withDamage(i));
}

// Underground Biomes Draconium Ore
Carving.addGroup("ub_draconium_ore");
Carving.addVariation("ub_draconium_ore", <draconicevolution:draconium_ore>);
for i in 0 to 8 {
    Carving.addVariation("ub_draconium_ore", <undergroundbiomes:igneous_stone_draconicevolution_draconium_ore>.withDamage(i));
    Carving.addVariation("ub_draconium_ore", <undergroundbiomes:metamorphic_stone_draconicevolution_draconium_ore>.withDamage(i));
    Carving.addVariation("ub_draconium_ore", <undergroundbiomes:sedimentary_stone_draconicevolution_draconium_ore>.withDamage(i));
}

// Underground Biomes Oil Sand
Carving.addGroup("ub_oil_sand");
Carving.addVariation("ub_oil_sand", <thermalfoundation:ore_fluid:0>);
Carving.addVariation("ub_oil_sand", <thermalfoundation:ore_fluid:5>);
for i in 0 to 8 {
    Carving.addVariation("ub_oil_sand", <undergroundbiomes:igneous_stone_thermalfoundation_ore_fluid>.withDamage(i));
    Carving.addVariation("ub_oil_sand", <undergroundbiomes:metamorphic_stone_thermalfoundation_ore_fluid>.withDamage(i));
    Carving.addVariation("ub_oil_sand", <undergroundbiomes:sedimentary_stone_thermalfoundation_ore_fluid>.withDamage(i));
    Carving.addVariation("ub_oil_sand", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.crude_oil_red_sand.name>.withDamage(i));
    Carving.addVariation("ub_oil_sand", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.crude_oil_red_sand.name>.withDamage(i));
    Carving.addVariation("ub_oil_sand", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.crude_oil_red_sand.name>.withDamage(i));
}

// Underground Biomes Oil Shale
Carving.addGroup("ub_oil_shale");
Carving.addVariation("ub_oil_shale", <thermalfoundation:ore_fluid:1>);
for i in 0 to 8 {
    Carving.addVariation("ub_oil_shale", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.crude_oil_gravel.name>.withDamage(i));
    Carving.addVariation("ub_oil_shale", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.crude_oil_gravel.name>.withDamage(i));
    Carving.addVariation("ub_oil_shale", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.crude_oil_gravel.name>.withDamage(i));
}

// Underground Biomes Destabilized Redstone Ore
Carving.addGroup("ub_destabilized_redstone_ore");
Carving.addVariation("ub_destabilized_redstone_ore", <thermalfoundation:ore_fluid:2>);
for i in 0 to 8 {
    Carving.addVariation("ub_destabilized_redstone_ore", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.redstone.name>.withDamage(i));
    Carving.addVariation("ub_destabilized_redstone_ore", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.redstone.name>.withDamage(i));
    Carving.addVariation("ub_destabilized_redstone_ore", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.redstone.name>.withDamage(i));
}

// Underground Biomes Copper Ore
Carving.addGroup("ub_copper_ore");
Carving.addVariation("ub_copper_ore", <thermalfoundation:ore:0>);
Carving.addVariation("ub_copper_ore", <abyssalcraft:abycopore>);
Carving.addVariation("ub_copper_ore", <erebus:ore_copper>);
Carving.addVariation("ub_copper_ore", <galacticraftcore:basic_block_moon:0>);
Carving.addVariation("ub_copper_ore", <galacticraftplanets:mars:0>);
Carving.addVariation("ub_copper_ore", <galacticraftplanets:venus:7>);
for i in 0 to 8 {
    Carving.addVariation("ub_copper_ore", <undergroundbiomes:igneous_stone_thermalfoundation_ore>.withDamage(i));
    Carving.addVariation("ub_copper_ore", <undergroundbiomes:metamorphic_stone_thermalfoundation_ore>.withDamage(i));
    Carving.addVariation("ub_copper_ore", <undergroundbiomes:sedimentary_stone_thermalfoundation_ore>.withDamage(i));
}

// Underground Biomes Tin Ore
Carving.addGroup("ub_tin_ore");
Carving.addVariation("ub_tin_ore", <thermalfoundation:ore:1>);
Carving.addVariation("ub_tin_ore", <abyssalcraft:abytinore>);
Carving.addVariation("ub_tin_ore", <erebus:ore_tin>);
Carving.addVariation("ub_tin_ore", <galacticraftcore:basic_block_moon:1>);
Carving.addVariation("ub_tin_ore", <galacticraftplanets:mars:1>);
Carving.addVariation("ub_tin_ore", <galacticraftplanets:venus:11>);
for i in 0 to 8 {
    Carving.addVariation("ub_tin_ore", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.tin.name>.withDamage(i));
    Carving.addVariation("ub_tin_ore", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.tin.name>.withDamage(i));
    Carving.addVariation("ub_tin_ore", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.tin.name>.withDamage(i));
}

// Underground Biomes Silver Ore
Carving.addGroup("ub_silver_ore");
Carving.addVariation("ub_silver_ore", <thermalfoundation:ore:2>);
Carving.addVariation("ub_silver_ore", <erebus:ore_silver>);
for i in 0 to 8 {
    Carving.addVariation("ub_silver_ore", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.silver.name>.withDamage(i));
    Carving.addVariation("ub_silver_ore", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.silver.name>.withDamage(i));
    Carving.addVariation("ub_silver_ore", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.silver.name>.withDamage(i));
}

// Underground Biomes Lead Ore
Carving.addGroup("ub_lead_ore");
Carving.addVariation("ub_lead_ore", <thermalfoundation:ore:3>);
Carving.addVariation("ub_lead_ore", <erebus:ore_lead>);
Carving.addVariation("ub_lead_ore", <galacticraftplanets:venus:8>);
for i in 0 to 8 {
    Carving.addVariation("ub_lead_ore", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.lead.name>.withDamage(i));
    Carving.addVariation("ub_lead_ore", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.lead.name>.withDamage(i));
    Carving.addVariation("ub_lead_ore", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.lead.name>.withDamage(i));
}

// Underground Biomes Aluminum Ore
Carving.addGroup("ub_aluminum_ore");
Carving.addVariation("ub_aluminum_ore", <thermalfoundation:ore:4>);
Carving.addVariation("ub_aluminum_ore", <erebus:ore_aluminium>);
Carving.addVariation("ub_aluminum_ore", <galacticraftplanets:asteroids_block:3>);
Carving.addVariation("ub_aluminum_ore", <galacticraftplanets:venus:6>);
for i in 0 to 8 {
    Carving.addVariation("ub_aluminum_ore", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.aluminum.name>.withDamage(i));
    Carving.addVariation("ub_aluminum_ore", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.aluminum.name>.withDamage(i));
    Carving.addVariation("ub_aluminum_ore", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.aluminum.name>.withDamage(i));
}

// Underground Biomes Nickel Ore
Carving.addGroup("ub_nickel_ore");
Carving.addVariation("ub_nickel_ore", <thermalfoundation:ore:5>);
for i in 0 to 8 {
    Carving.addVariation("ub_nickel_ore", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.nickel.name>.withDamage(i));
    Carving.addVariation("ub_nickel_ore", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.nickel.name>.withDamage(i));
    Carving.addVariation("ub_nickel_ore", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.nickel.name>.withDamage(i));
}



print("ENDING Chisel.zs");
