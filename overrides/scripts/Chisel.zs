# Author: Atricos, KleinGrrmpf

import mods.chisel.Carving;

print("STARTING Chisel.zs");

# Removing the ability to transform Roots Elemental Soils into each other
Carving.removeGroup("rootsRunicSoilTypes");

# Remove some Stone types from the "stonebrick" group, because there is no space
for i in 0 to 4 {
    Carving.removeVariation("stonebrick", <minecraft:stonebrick>.withDamage(i));
}
Carving.removeVariation("stonebrick", <lightningcraft:corrupt_stone>);
Carving.removeVariation("stonebrick", <chisel:stonebrick2:8>);
Carving.removeVariation("stonebrick", <chisel:stonebrick2:9>);
furnace.addRecipe(<chisel:stonebrick2:9>, <chisel:stonebrick2:8>);

# Fixing Chiseled Double Stone Slab conflict
recipes.removeShapeless(<minecraft:stone>, [<minecraft:stone_slab>, <minecraft:stone_slab>]);
recipes.addShaped(<chisel:stonebrick2:8>, [[<minecraft:stone_slab>],[<minecraft:stone_slab>]]);
<ore:stone>.remove(<chisel:stonebrick2:9>);
<ore:bricksStone>.remove(<chisel:stonebrick2:9>);
<ore:brickStone>.remove(<chisel:stonebrick2:9>);

# Auto Chisel
recipes.remove(<chisel:auto_chisel>);
recipes.addShaped(<chisel:auto_chisel>, [[<enderio:block_fused_quartz>,<enderio:block_fused_quartz>,<enderio:block_fused_quartz>],[<chisel:chisel_iron>,<thermalexpansion:frame>,<chisel:chisel_iron>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Removing Chisel Charcoal recipe.  Conflicts with Thermal recipe.
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

// Underground Biomes Coal Ore
Carving.addGroup("UBCoalOre");
Carving.addVariation("UBCoalOre", <minecraft:coal_ore>);
Carving.addVariation("UBCoalOre", <atum:coal_ore>);
Carving.addVariation("UBCoalOre", <erebus:ore_coal>);
for i in 0 to 8 {
    Carving.addVariation("UBCoalOre", <undergroundbiomes:igneous_stone_coal_ore>.withDamage(i)); 
    Carving.addVariation("UBCoalOre", <undergroundbiomes:metamorphic_stone_coal_ore>.withDamage(i));
    Carving.addVariation("UBCoalOre", <undergroundbiomes:sedimentary_stone_coal_ore>.withDamage(i));
}

// Underground Biomes Lapis Ore
Carving.addGroup("UBLapisOre");
Carving.addVariation("UBLapisOre", <minecraft:lapis_ore>);
Carving.addVariation("UBLapisOre", <atum:lapis_ore>);
Carving.addVariation("UBLapisOre", <erebus:ore_lapis>);
for i in 0 to 8 {
    Carving.addVariation("UBLapisOre", <undergroundbiomes:igneous_stone_lapis_ore>.withDamage(i)); 
    Carving.addVariation("UBLapisOre", <undergroundbiomes:metamorphic_stone_lapis_ore>.withDamage(i));
    Carving.addVariation("UBLapisOre", <undergroundbiomes:sedimentary_stone_lapis_ore>.withDamage(i));
}

// Underground Biomes Gold Ore
Carving.addGroup("UBGoldOre");
Carving.addVariation("UBGoldOre", <minecraft:gold_ore>);
Carving.addVariation("UBGoldOre", <abyssalcraft:abygolore>);
Carving.addVariation("UBGoldOre", <atum:gold_ore>);
Carving.addVariation("UBGoldOre", <erebus:ore_gold>);
Carving.addVariation("UBGoldOre", <lightningcraft:ore_block>.withDamage(1));
for i in 0 to 8 {
    Carving.addVariation("UBGoldOre", <undergroundbiomes:igneous_stone_gold_ore>.withDamage(i)); 
    Carving.addVariation("UBGoldOre", <undergroundbiomes:metamorphic_stone_gold_ore>.withDamage(i));
    Carving.addVariation("UBGoldOre", <undergroundbiomes:sedimentary_stone_gold_ore>.withDamage(i));
}

// Underground Biomes Diamond Ore
Carving.addGroup("UBDiamondOre");
Carving.addVariation("UBDiamondOre", <minecraft:diamond_ore>);
Carving.addVariation("UBDiamondOre", <abyssalcraft:abydiaore>);
Carving.addVariation("UBDiamondOre", <atum:diamond_ore>);
Carving.addVariation("UBDiamondOre", <erebus:ore_diamond>);
Carving.addVariation("UBDiamondOre", <erebus:ore_encrusted_diamond>);
Carving.addVariation("UBDiamondOre", <lightningcraft:ore_block>.withDamage(2));
for i in 0 to 8 {
    Carving.addVariation("UBDiamondOre", <undergroundbiomes:igneous_stone_diamond_ore>.withDamage(i)); 
    Carving.addVariation("UBDiamondOre", <undergroundbiomes:metamorphic_stone_diamond_ore>.withDamage(i));
    Carving.addVariation("UBDiamondOre", <undergroundbiomes:sedimentary_stone_diamond_ore>.withDamage(i));
}

// Underground Biomes Emerald Ore
Carving.addGroup("UBEmeraldOre");
Carving.addVariation("UBEmeraldOre", <minecraft:emerald_ore>);
Carving.addVariation("UBEmeraldOre", <atum:emerald_ore>);
Carving.addVariation("UBEmeraldOre", <erebus:ore_emerald>);
Carving.addVariation("UBEmeraldOre", <lightningcraft:ore_block>.withDamage(3));
for i in 0 to 8 {
    Carving.addVariation("UBEmeraldOre", <undergroundbiomes:igneous_stone_emerald_ore>.withDamage(i)); 
    Carving.addVariation("UBEmeraldOre", <undergroundbiomes:metamorphic_stone_emerald_ore>.withDamage(i));
    Carving.addVariation("UBEmeraldOre", <undergroundbiomes:sedimentary_stone_emerald_ore>.withDamage(i));
}

// Underground Biomes Redstone Ore
Carving.addGroup("UBRedstoneOre");
Carving.addVariation("UBRedstoneOre", <minecraft:redstone_ore>);
Carving.addVariation("UBRedstoneOre", <atum:redstone_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBRedstoneOre", <undergroundbiomes:igneous_stone_redstone_ore>.withDamage(i)); 
    Carving.addVariation("UBRedstoneOre", <undergroundbiomes:metamorphic_stone_redstone_ore>.withDamage(i));
    Carving.addVariation("UBRedstoneOre", <undergroundbiomes:sedimentary_stone_redstone_ore>.withDamage(i));
}

// Underground Biomes Certus Quartz Ore
Carving.addGroup("UBCertusQuartzOre");
Carving.addVariation("UBCertusQuartzOre", <appliedenergistics2:quartz_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBCertusQuartzOre", <undergroundbiomes:igneous_stone_appliedenergistics2_quartz_ore>.withDamage(i)); 
    Carving.addVariation("UBCertusQuartzOre", <undergroundbiomes:metamorphic_stone_appliedenergistics2_quartz_ore>.withDamage(i));
    Carving.addVariation("UBCertusQuartzOre", <undergroundbiomes:sedimentary_stone_appliedenergistics2_quartz_ore>.withDamage(i));
}

// Underground Biomes Charged Certus Quartz Ore
Carving.addGroup("UBChargedCertusQuartzOre");
Carving.addVariation("UBChargedCertusQuartzOre", <appliedenergistics2:charged_quartz_ore>);
for i in 0 to 8 {
Carving.addVariation("UBChargedCertusQuartzOre", <undergroundbiomes:igneous_stone_appliedenergistics2_charged_quartz_ore>.withDamage(i)); 
Carving.addVariation("UBChargedCertusQuartzOre", <undergroundbiomes:metamorphic_stone_appliedenergistics2_charged_quartz_ore>.withDamage(i));
Carving.addVariation("UBChargedCertusQuartzOre", <undergroundbiomes:sedimentary_stone_appliedenergistics2_charged_quartz_ore>.withDamage(i));
}

// Underground Biomes Black Quartz Ore
Carving.addGroup("UBBlackQuartzOre");
Carving.addVariation("UBBlackQuartzOre", <actuallyadditions:block_misc>.withDamage(3));
for i in 0 to 8 {
    Carving.addVariation("UBBlackQuartzOre", <undergroundbiomes:igneous_stone_actuallyadditions_block_misc_3>.withDamage(i)); 
    Carving.addVariation("UBBlackQuartzOre", <undergroundbiomes:metamorphic_stone_actuallyadditions_block_misc_3>.withDamage(i));
    Carving.addVariation("UBBlackQuartzOre", <undergroundbiomes:sedimentary_stone_actuallyadditions_block_misc_3>.withDamage(i));
}

// Underground Biomes Thaumcraft Quartz Ore
Carving.addGroup("UBTCQuartzOre");
Carving.addVariation("UBTCQuartzOre", <thaumcraft:ore_quartz>);
for i in 0 to 8 {
    Carving.addVariation("UBTCQuartzOre", <undergroundbiomes:igneous_stone_thaumcraft_ore_quartz>.withDamage(i)); 
    Carving.addVariation("UBTCQuartzOre", <undergroundbiomes:metamorphic_stone_thaumcraft_ore_quartz>.withDamage(i));
    Carving.addVariation("UBTCQuartzOre", <undergroundbiomes:sedimentary_stone_thaumcraft_ore_quartz>.withDamage(i));
}

// Underground Biomes Dark Ore
Carving.addGroup("UBDarkOre");
Carving.addVariation("UBDarkOre", <evilcraft:dark_ore>.withDamage(0));
for i in 0 to 8 {
    Carving.addVariation("UBDarkOre", <undergroundbiomes:igneous_stone_evilcraft_dark_ore>.withDamage(i)); 
    Carving.addVariation("UBDarkOre", <undergroundbiomes:metamorphic_stone_evilcraft_dark_ore>.withDamage(i));
    Carving.addVariation("UBDarkOre", <undergroundbiomes:sedimentary_stone_evilcraft_dark_ore>.withDamage(i));
}

// Underground Biomes Aquamarine Shale
Carving.addGroup("UBAquamarineShale");
Carving.addVariation("UBAquamarineShale", <astralsorcery:blockcustomsandore>.withDamage(0));
for i in 0 to 8 {
    Carving.addVariation("UBAquamarineShale", <undergroundbiomes:igneous_stone_astralsorcery_blockcustomsandore_1>.withDamage(i)); 
    Carving.addVariation("UBAquamarineShale", <undergroundbiomes:metamorphic_stone_astralsorcery_blockcustomsandore_1>.withDamage(i));
    Carving.addVariation("UBAquamarineShale", <undergroundbiomes:sedimentary_stone_astralsorcery_blockcustomsandore_1>.withDamage(i));
}

// Underground Biomes Cinnabar Ore
Carving.addGroup("UBCinnabarOre");
Carving.addVariation("UBCinnabarOre", <thaumcraft:ore_cinnabar>);
for i in 0 to 8 {
    Carving.addVariation("UBCinnabarOre", <undergroundbiomes:igneous_stone_thaumcraft_ore_cinnabar>.withDamage(i)); 
    Carving.addVariation("UBCinnabarOre", <undergroundbiomes:metamorphic_stone_thaumcraft_ore_cinnabar>.withDamage(i));
    Carving.addVariation("UBCinnabarOre", <undergroundbiomes:sedimentary_stone_thaumcraft_ore_cinnabar>.withDamage(i));
}

// Underground Biomes Amber Bearing Stone
Carving.addGroup("UBAmberBearingStone");
Carving.addVariation("UBAmberBearingStone", <thaumcraft:ore_amber>);
for i in 0 to 8 {
    Carving.addVariation("UBAmberBearingStone", <undergroundbiomes:igneous_stone_thaumcraft_ore_amber>.withDamage(i)); 
    Carving.addVariation("UBAmberBearingStone", <undergroundbiomes:metamorphic_stone_thaumcraft_ore_amber>.withDamage(i));
    Carving.addVariation("UBAmberBearingStone", <undergroundbiomes:sedimentary_stone_thaumcraft_ore_amber>.withDamage(i));
}

// Underground Biomes Garnet Ore
Carving.addGroup("UBGarnetOre");
Carving.addVariation("UBGarnetOre", <bewitchment:garnet_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBGarnetOre", <undergroundbiomes:igneous_stone_bewitchment_garnet_ore>.withDamage(i)); 
    Carving.addVariation("UBGarnetOre", <undergroundbiomes:metamorphic_stone_bewitchment_garnet_ore>.withDamage(i));
    Carving.addVariation("UBGarnetOre", <undergroundbiomes:sedimentary_stone_bewitchment_garnet_ore>.withDamage(i));
}

// Underground Biomes Opal Ore
Carving.addGroup("UBOpalOre");
Carving.addVariation("UBOpalOre", <bewitchment:opal_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBOpalOre", <undergroundbiomes:igneous_stone_bewitchment_opal_ore>.withDamage(i)); 
    Carving.addVariation("UBOpalOre", <undergroundbiomes:metamorphic_stone_bewitchment_opal_ore>.withDamage(i));
    Carving.addVariation("UBOpalOre", <undergroundbiomes:sedimentary_stone_bewitchment_opal_ore>.withDamage(i));
}

// Underground Biomes Amethyst Ore
Carving.addGroup("UBAmethystOre");
Carving.addVariation("UBAmethystOre", <mysticalworld:amethyst_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBAmethystOre", <undergroundbiomes:igneous_stone_mysticalworld_amethyst_ore>.withDamage(i)); 
    Carving.addVariation("UBAmethystOre", <undergroundbiomes:metamorphic_stone_mysticalworld_amethyst_ore>.withDamage(i));
    Carving.addVariation("UBAmethystOre", <undergroundbiomes:sedimentary_stone_mysticalworld_amethyst_ore>.withDamage(i));
}

// Underground Biomes Coralium Ore
Carving.addGroup("UBCoraliumOre");
Carving.addVariation("UBCoraliumOre", <abyssalcraft:coraliumore>);
for i in 0 to 8 {
    Carving.addVariation("UBCoraliumOre", <undergroundbiomes:igneous_stone_abyssalcraft_coraliumore>.withDamage(i)); 
    Carving.addVariation("UBCoraliumOre", <undergroundbiomes:metamorphic_stone_abyssalcraft_coraliumore>.withDamage(i));
    Carving.addVariation("UBCoraliumOre", <undergroundbiomes:sedimentary_stone_abyssalcraft_coraliumore>.withDamage(i));
}

// Underground Biomes Inferium Ore
Carving.addGroup("UBInferiumOre");
Carving.addVariation("UBInferiumOre", <mysticalagriculture:inferium_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBInferiumOre", <undergroundbiomes:igneous_stone_mysticalagriculture_inferium_ore>.withDamage(i)); 
    Carving.addVariation("UBInferiumOre", <undergroundbiomes:metamorphic_stone_mysticalagriculture_inferium_ore>.withDamage(i));
    Carving.addVariation("UBInferiumOre", <undergroundbiomes:sedimentary_stone_mysticalagriculture_inferium_ore>.withDamage(i));
}

// Underground Biomes Prosperity Ore
Carving.addGroup("UBProsperityOre");
Carving.addVariation("UBProsperityOre", <mysticalagriculture:prosperity_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBProsperityOre", <undergroundbiomes:igneous_stone_mysticalagriculture_prosperity_ore>.withDamage(i)); 
    Carving.addVariation("UBProsperityOre", <undergroundbiomes:metamorphic_stone_mysticalagriculture_prosperity_ore>.withDamage(i));
    Carving.addVariation("UBProsperityOre", <undergroundbiomes:sedimentary_stone_mysticalagriculture_prosperity_ore>.withDamage(i));
}

// Underground Biomes Dimensional Shard Ore
Carving.addGroup("UBDimensionalShardOre");
for i in 0 to 3 {
    Carving.addVariation("UBDimensionalShardOre", <rftools:dimensional_shard_ore>.withDamage(i));
}
for i in 0 to 8 {
    Carving.addVariation("UBDimensionalShardOre", <undergroundbiomes:igneous_stone_rftools_dimensional_shard_ore>.withDamage(i)); 
    Carving.addVariation("UBDimensionalShardOre", <undergroundbiomes:metamorphic_stone_rftools_dimensional_shard_ore>.withDamage(i));
    Carving.addVariation("UBDimensionalShardOre", <undergroundbiomes:sedimentary_stone_rftools_dimensional_shard_ore>.withDamage(i));
}

// Underground Biomes Realmite Ore
Carving.addGroup("UBRealmiteOre");
Carving.addVariation("UBRealmiteOre", <divinerpg:realmite_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBRealmiteOre", <undergroundbiomes:igneous_stone_divinerpg_realmite_ore>.withDamage(i)); 
    Carving.addVariation("UBRealmiteOre", <undergroundbiomes:metamorphic_stone_divinerpg_realmite_ore>.withDamage(i));
    Carving.addVariation("UBRealmiteOre", <undergroundbiomes:sedimentary_stone_divinerpg_realmite_ore>.withDamage(i));
}

// Underground Biomes Rupee Ore
Carving.addGroup("UBRupeeOre");
Carving.addVariation("UBRupeeOre", <divinerpg:rupee_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBRupeeOre", <undergroundbiomes:igneous_stone_divinerpg_rupee_ore>.withDamage(i)); 
    Carving.addVariation("UBRupeeOre", <undergroundbiomes:metamorphic_stone_divinerpg_rupee_ore>.withDamage(i));
    Carving.addVariation("UBRupeeOre", <undergroundbiomes:sedimentary_stone_divinerpg_rupee_ore>.withDamage(i));
}

// Underground Biomes Arlemite Ore
Carving.addGroup("UBArlemiteOre");
Carving.addVariation("UBArlemiteOre", <divinerpg:arlemite_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBArlemiteOre", <undergroundbiomes:igneous_stone_divinerpg_arlemite_ore>.withDamage(i)); 
    Carving.addVariation("UBArlemiteOre", <undergroundbiomes:metamorphic_stone_divinerpg_arlemite_ore>.withDamage(i));
    Carving.addVariation("UBArlemiteOre", <undergroundbiomes:sedimentary_stone_divinerpg_arlemite_ore>.withDamage(i));
}

// Underground Biomes Yellorite Ore
Carving.addGroup("UBYelloriteOre");
Carving.addVariation("UBYelloriteOre", <bigreactors:oreyellorite>);
for i in 0 to 8 {
    Carving.addVariation("UBYelloriteOre", <undergroundbiomes:igneous_stone_bigreactors_oreyellorite>.withDamage(i)); 
    Carving.addVariation("UBYelloriteOre", <undergroundbiomes:metamorphic_stone_bigreactors_oreyellorite>.withDamage(i));
    Carving.addVariation("UBYelloriteOre", <undergroundbiomes:sedimentary_stone_bigreactors_oreyellorite>.withDamage(i));
}

// Underground Biomes Osmium Ore
Carving.addGroup("UBOsmiumOre");
Carving.addVariation("UBOsmiumOre", <mekanism:oreblock>.withDamage(0));
for i in 0 to 8 {
    Carving.addVariation("UBOsmiumOre", <undergroundbiomes:igneous_stone_mekanism_oreblock>.withDamage(i)); 
    Carving.addVariation("UBOsmiumOre", <undergroundbiomes:metamorphic_stone_mekanism_oreblock>.withDamage(i));
    Carving.addVariation("UBOsmiumOre", <undergroundbiomes:sedimentary_stone_mekanism_oreblock>.withDamage(i));
}

// Underground Biomes Draconium Ore
Carving.addGroup("UBDraconiumOre");
Carving.addVariation("UBDraconiumOre", <draconicevolution:draconium_ore>);
for i in 0 to 8 {
    Carving.addVariation("UBDraconiumOre", <undergroundbiomes:igneous_stone_draconicevolution_draconium_ore>.withDamage(i)); 
    Carving.addVariation("UBDraconiumOre", <undergroundbiomes:metamorphic_stone_draconicevolution_draconium_ore>.withDamage(i));
    Carving.addVariation("UBDraconiumOre", <undergroundbiomes:sedimentary_stone_draconicevolution_draconium_ore>.withDamage(i));
}

// Underground Biomes Oil Sand
Carving.addGroup("UBOilSand");
Carving.addVariation("UBOilSand", <thermalfoundation:ore_fluid>.withDamage(0));
Carving.addVariation("UBOilSand", <thermalfoundation:ore_fluid>.withDamage(1));
Carving.addVariation("UBOilSand", <thermalfoundation:ore_fluid>.withDamage(5));
for i in 0 to 8 {
    Carving.addVariation("UBOilSand", <undergroundbiomes:igneous_stone_thermalfoundation_ore_fluid>.withDamage(i)); 
    Carving.addVariation("UBOilSand", <undergroundbiomes:metamorphic_stone_thermalfoundation_ore_fluid>.withDamage(i));
    Carving.addVariation("UBOilSand", <undergroundbiomes:sedimentary_stone_thermalfoundation_ore_fluid>.withDamage(i));
}

// Underground Biomes Destabilized Redstone Ore
Carving.addGroup("UBDestabilizedRedstoneOre");
Carving.addVariation("UBDestabilizedRedstoneOre", <thermalfoundation:ore_fluid>.withDamage(2));
for i in 0 to 8 {
    Carving.addVariation("UBDestabilizedRedstoneOre", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.redstone.name>.withDamage(i)); 
    Carving.addVariation("UBDestabilizedRedstoneOre", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.redstone.name>.withDamage(i));
    Carving.addVariation("UBDestabilizedRedstoneOre", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.redstone.name>.withDamage(i));
}

// Underground Biomes Copper Ore
Carving.addGroup("UBCopperOre");
Carving.addVariation("UBCopperOre", <thermalfoundation:ore>.withDamage(0));
Carving.addVariation("UBCopperOre", <abyssalcraft:abycopore>);
Carving.addVariation("UBCopperOre", <erebus:ore_copper>);
Carving.addVariation("UBCopperOre", <galacticraftcore:basic_block_moon>.withDamage(0));
Carving.addVariation("UBCopperOre", <galacticraftplanets:mars>.withDamage(0));
Carving.addVariation("UBCopperOre", <galacticraftplanets:venus>.withDamage(7));
for i in 0 to 8 {
    Carving.addVariation("UBCopperOre", <undergroundbiomes:igneous_stone_thermalfoundation_ore>.withDamage(i)); 
    Carving.addVariation("UBCopperOre", <undergroundbiomes:metamorphic_stone_thermalfoundation_ore>.withDamage(i));
    Carving.addVariation("UBCopperOre", <undergroundbiomes:sedimentary_stone_thermalfoundation_ore>.withDamage(i));
}

// Underground Biomes Tin Ore
Carving.addGroup("UBTinOre");
Carving.addVariation("UBTinOre", <thermalfoundation:ore>.withDamage(1));
Carving.addVariation("UBTinOre", <abyssalcraft:abytinore>);
Carving.addVariation("UBTinOre", <erebus:ore_tin>);
Carving.addVariation("UBTinOre", <galacticraftcore:basic_block_moon>.withDamage(1));
Carving.addVariation("UBTinOre", <galacticraftplanets:mars>.withDamage(1));
Carving.addVariation("UBTinOre", <galacticraftplanets:venus>.withDamage(11));
for i in 0 to 8 {
    Carving.addVariation("UBTinOre", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.tin.name>.withDamage(i)); 
    Carving.addVariation("UBTinOre", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.tin.name>.withDamage(i));
    Carving.addVariation("UBTinOre", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.tin.name>.withDamage(i));
}

// Underground Biomes Silver Ore
Carving.addGroup("UBSilverOre");
Carving.addVariation("UBSilverOre", <thermalfoundation:ore>.withDamage(2));
Carving.addVariation("UBSilverOre", <erebus:ore_silver>);
for i in 0 to 8 {
    Carving.addVariation("UBSilverOre", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.silver.name>.withDamage(i)); 
    Carving.addVariation("UBSilverOre", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.silver.name>.withDamage(i));
    Carving.addVariation("UBSilverOre", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.silver.name>.withDamage(i));
}

// Underground Biomes Lead Ore
Carving.addGroup("UBLeadOre");
Carving.addVariation("UBLeadOre", <thermalfoundation:ore>.withDamage(3));
Carving.addVariation("UBLeadOre", <erebus:ore_lead>);
Carving.addVariation("UBLeadOre", <galacticraftplanets:venus>.withDamage(8));
for i in 0 to 8 {
    Carving.addVariation("UBLeadOre", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.lead.name>.withDamage(i)); 
    Carving.addVariation("UBLeadOre", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.lead.name>.withDamage(i));
    Carving.addVariation("UBLeadOre", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.lead.name>.withDamage(i));
}

// Underground Biomes Aluminum Ore
Carving.addGroup("UBAluminumOre");
Carving.addVariation("UBAluminumOre", <thermalfoundation:ore>.withDamage(4));
Carving.addVariation("UBAluminumOre", <erebus:ore_aluminium>);
Carving.addVariation("UBAluminumOre", <galacticraftplanets:asteroids_block>.withDamage(3));
Carving.addVariation("UBAluminumOre", <galacticraftplanets:venus>.withDamage(6));
for i in 0 to 8 {
    Carving.addVariation("UBAluminumOre", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.aluminum.name>.withDamage(i)); 
    Carving.addVariation("UBAluminumOre", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.aluminum.name>.withDamage(i));
    Carving.addVariation("UBAluminumOre", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.aluminum.name>.withDamage(i));
}

// Underground Biomes Nickel Ore
Carving.addGroup("UBNickelOre");
Carving.addVariation("UBNickelOre", <thermalfoundation:ore>.withDamage(5));
for i in 0 to 8 {
    Carving.addVariation("UBNickelOre", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.nickel.name>.withDamage(i)); 
    Carving.addVariation("UBNickelOre", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.nickel.name>.withDamage(i));
    Carving.addVariation("UBNickelOre", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.nickel.name>.withDamage(i));
}

// Underground Biomes Iridium Ore
Carving.addGroup("UBIridiumOre");
Carving.addVariation("UBIridiumOre", <thermalfoundation:ore>.withDamage(7));
for i in 0 to 8 {
    Carving.addVariation("UBIridiumOre", <undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.iridium.name>.withDamage(i)); 
    Carving.addVariation("UBIridiumOre", <undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.iridium.name>.withDamage(i));
    Carving.addVariation("UBIridiumOre", <undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.iridium.name>.withDamage(i));
}





print("ENDING Chisel.zs");
