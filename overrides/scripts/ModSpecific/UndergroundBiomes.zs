#priority 10
// Author: Atricos

import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Transposer;

print("STARTING UndergroundBiomes.zs");

// Stone conversion
for i in 0 to 8 {
    mods.chisel.Carving.addVariation("stonebrick", <undergroundbiomes:igneous_stone>.withDamage(i));
    mods.chisel.Carving.addVariation("stonebrick", <undergroundbiomes:metamorphic_stone>.withDamage(i));
    mods.chisel.Carving.addVariation("stonebrick", <undergroundbiomes:sedimentary_stone>.withDamage(i));
}

// Cobblestone conversion
for i in 0 to 8 {
    mods.chisel.Carving.addVariation("cobblestone", <undergroundbiomes:igneous_cobble>.withDamage(i));
    mods.chisel.Carving.addVariation("cobblestone", <undergroundbiomes:metamorphic_cobble>.withDamage(i));
}

// Sand conversion tooltips
<undergroundbiomes:igneous_sand:*>.addTooltip(game.localize("dj2.undergroundbiomes_sand.desc0"));
<undergroundbiomes:igneous_sand:*>.addTooltip(game.localize("dj2.undergroundbiomes_sand.desc1"));
<undergroundbiomes:metamorphic_sand:*>.addTooltip(game.localize("dj2.undergroundbiomes_sand.desc0"));
<undergroundbiomes:metamorphic_sand:*>.addTooltip(game.localize("dj2.undergroundbiomes_sand.desc1"));
<undergroundbiomes:sedimentary_sand:*>.addTooltip(game.localize("dj2.undergroundbiomes_sand.desc0"));
<undergroundbiomes:sedimentary_sand:*>.addTooltip(game.localize("dj2.undergroundbiomes_sand.desc1"));

// Gravel conversion tooltips
<undergroundbiomes:igneous_gravel:*>.addTooltip(game.localize("dj2.undergroundbiomes_gravel.desc0"));
<undergroundbiomes:igneous_gravel:*>.addTooltip(game.localize("dj2.undergroundbiomes_gravel.desc1"));
<undergroundbiomes:metamorphic_gravel:*>.addTooltip(game.localize("dj2.undergroundbiomes_gravel.desc0"));
<undergroundbiomes:metamorphic_gravel:*>.addTooltip(game.localize("dj2.undergroundbiomes_gravel.desc1"));
<undergroundbiomes:sedimentary_gravel:*>.addTooltip(game.localize("dj2.undergroundbiomes_gravel.desc0"));
<undergroundbiomes:sedimentary_gravel:*>.addTooltip(game.localize("dj2.undergroundbiomes_gravel.desc1"));

// UB Stone to materialStoneTool OreDict
<ore:materialStoneTool>.addAll(<ore:stone>);
<ore:materialStoneTool>.addAll(<ore:stoneIgneous>);
<ore:materialStoneTool>.addAll(<ore:stoneMetamorphic>);
<ore:materialStoneTool>.addAll(<ore:stoneSedimentary>);

// UB Marble <-> Chisel Marble
recipes.addShaped(<chisel:marble2:7> * 9, [[<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>],[<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>],[<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>]]);
recipes.addShaped(<undergroundbiomes:metamorphic_stone:2> * 9, [[<chisel:marble2:7>,<chisel:marble2:7>,<chisel:marble2:7>],[<chisel:marble2:7>,<chisel:marble2:7>,<chisel:marble2:7>],[<chisel:marble2:7>,<chisel:marble2:7>,<chisel:marble2:7>]]);

// UB Limestone <-> Chisel Limestone
recipes.addShaped(<chisel:limestone2:7> * 9, [[<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>],[<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>],[<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>]]);
recipes.addShaped(<undergroundbiomes:sedimentary_stone> * 9, [[<chisel:limestone2:7>,<chisel:limestone2:7>,<chisel:limestone2:7>],[<chisel:limestone2:7>,<chisel:limestone2:7>,<chisel:limestone2:7>],[<chisel:limestone2:7>,<chisel:limestone2:7>,<chisel:limestone2:7>]]);

// UB Mossy Cobble with the Fluid Tranposer method
for i in 0 to 8 {
    mods.thermalexpansion.Transposer.addFillRecipe(<undergroundbiomes:igneous_cobble_mossy>.withDamage(i), <undergroundbiomes:igneous_cobble>.withDamage(i), <liquid:water> * 250, 4000);
    mods.thermalexpansion.Transposer.addFillRecipe(<undergroundbiomes:metamorphic_cobble_mossy>.withDamage(i), <undergroundbiomes:metamorphic_cobble>.withDamage(i), <liquid:water> * 250, 4000);
    mods.thermalexpansion.Transposer.addFillRecipe(<undergroundbiomes:sedimentary_stone_mossy>.withDamage(i), <undergroundbiomes:sedimentary_stone>.withDamage(i), <liquid:water> * 250, 4000);
}

// UB Mossy Cobble with the Metallurgic Infuser method
for i in 0 to 8 {
    mods.mekanism.infuser.addRecipe("BIO", 10, <undergroundbiomes:igneous_cobble>.withDamage(i), <undergroundbiomes:igneous_cobble_mossy>.withDamage(i));
    mods.mekanism.infuser.addRecipe("BIO", 10, <undergroundbiomes:metamorphic_cobble>.withDamage(i), <undergroundbiomes:metamorphic_cobble_mossy>.withDamage(i));
    mods.mekanism.infuser.addRecipe("BIO", 10, <undergroundbiomes:sedimentary_stone>.withDamage(i), <undergroundbiomes:sedimentary_stone_mossy>.withDamage(i));
}

print("ENDING UndergroundBiomes.zs");
