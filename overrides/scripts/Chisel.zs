# Author: Atricos

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

// Industrial Foregoing Converyor
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

// Bibliocraft Typwriter
Carving.addGroup("bibliocrafttypewriter");
for i in 0 to 16 {
    Carving.addVariation("bibliocrafttypewriter", <bibliocraft:typewriter>.withDamage(i));
}

// Bibliocraft Sword Pedestal
Carving.addGroup("bibliocraftswordpedestal");
for i in 0 to 16 {
    Carving.addVariation("bibliocraftswordpedestal", <bibliocraft:swordpedestal>.withDamage(i));
}

// Bibliocraft Iron Lantern
Carving.addGroup("bibliocraftlanterniron");
for i in 0 to 16 {
    Carving.addVariation("bibliocraftlanterniron", <bibliocraft:lanterniron>.withDamage(i));
}

// Bibliocraft Gold Lantern
Carving.addGroup("bibliocraftlanterngold");
for i in 0 to 16 {
    Carving.addVariation("bibliocraftlanterngold", <bibliocraft:lanterngold>.withDamage(i));
}

// Bibliocraft Iron Lamp
Carving.addGroup("bibliocraftlampiron");
for i in 0 to 16 {
    Carving.addVariation("bibliocraftlampiron", <bibliocraft:lampiron>.withDamage(i));
}

// Bibliocraft Gold Lamp
Carving.addGroup("bibliocraftlampgold");
for i in 0 to 16 {
    Carving.addVariation("bibliocraftlampgold", <bibliocraft:lampgold>.withDamage(i));
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






print("ENDING Chisel.zs");
