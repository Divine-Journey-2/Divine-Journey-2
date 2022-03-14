#priority 10

import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Transposer;

# Author: Atricos
print("STARTING UndergroundBiomes.zs");

# Stone conversion
for i in 0 to 8 {
	mods.chisel.Carving.addVariation("stonebrick", <undergroundbiomes:igneous_stone>.withDamage(i));
	mods.chisel.Carving.addVariation("stonebrick", <undergroundbiomes:metamorphic_stone>.withDamage(i));
	mods.chisel.Carving.addVariation("stonebrick", <undergroundbiomes:sedimentary_stone>.withDamage(i));
}

# Cobblestone conversion
for i in 0 to 8 {
	mods.chisel.Carving.addVariation("cobblestone", <undergroundbiomes:igneous_cobble>.withDamage(i));
	mods.chisel.Carving.addVariation("cobblestone", <undergroundbiomes:metamorphic_cobble>.withDamage(i));
}

val igneousStoneNames = ["Red Granite", "Black Granite", "Rhyolite", "Andesite", "Gabbro", "Basalt", "Komatiite", "Dacite"] as string[];
val metamorphicStoneNames = ["Gneiss", "Eclogite", "Marble", "Quartzite", "Blue Schist", "Green Schist", "Soapstone", "Migmatite"] as string[];
val sedimentaryStoneNames = ["Limestone", "Chalk", "Shale", "Siltstone", "Lignite", "Dolomite", "Greywacke", "Chert"] as string[];
val allNames = [igneousStoneNames, metamorphicStoneNames, sedimentaryStoneNames] as string[][];

# Renaming Mana Infused to Mithril
for i, name in igneousStoneNames {
	<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.mithril.name>.withDamage(i).displayName = name + " Mithril Ore";
}
for i, name in metamorphicStoneNames {
	<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.mithril.name>.withDamage(i).displayName = name + " Mithril Ore";
}
for i, name in sedimentaryStoneNames {
	<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.mithril.name>.withDamage(i).displayName = name + " Mithril Ore";
}

val sand_tooltip1 = "Can be converted into vanilla Sand by crafting" as string;
val sand_tooltip2 = "2 of them together in a horizontal line." as string;
val gravel_tooltip1 = "Can be converted into vanilla Gravel by crafting" as string;
val gravel_tooltip2 = "2 of them together in a horizontal line." as string;

# Sand conversion tooltips
<undergroundbiomes:igneous_sand:*>.addTooltip(format.darkPurple(format.italic(sand_tooltip1)));
<undergroundbiomes:igneous_sand:*>.addTooltip(format.darkPurple(format.italic(sand_tooltip2)));
<undergroundbiomes:metamorphic_sand:*>.addTooltip(format.darkPurple(format.italic(sand_tooltip1)));
<undergroundbiomes:metamorphic_sand:*>.addTooltip(format.darkPurple(format.italic(sand_tooltip2)));
<undergroundbiomes:sedimentary_sand:*>.addTooltip(format.darkPurple(format.italic(sand_tooltip1)));
<undergroundbiomes:sedimentary_sand:*>.addTooltip(format.darkPurple(format.italic(sand_tooltip2)));

# Gravel conversion tooltips
<undergroundbiomes:igneous_gravel:*>.addTooltip(format.darkPurple(format.italic(gravel_tooltip1)));
<undergroundbiomes:igneous_gravel:*>.addTooltip(format.darkPurple(format.italic(gravel_tooltip2)));
<undergroundbiomes:metamorphic_gravel:*>.addTooltip(format.darkPurple(format.italic(gravel_tooltip1)));
<undergroundbiomes:metamorphic_gravel:*>.addTooltip(format.darkPurple(format.italic(gravel_tooltip2)));
<undergroundbiomes:sedimentary_gravel:*>.addTooltip(format.darkPurple(format.italic(gravel_tooltip1)));
<undergroundbiomes:sedimentary_gravel:*>.addTooltip(format.darkPurple(format.italic(gravel_tooltip2)));

# UB Stone to materialStoneTool OreDict
<ore:materialStoneTool>.addAll(<ore:stone>);
<ore:materialStoneTool>.addAll(<ore:stoneIgneous>);
<ore:materialStoneTool>.addAll(<ore:stoneMetamorphic>);
<ore:materialStoneTool>.addAll(<ore:stoneSedimentary>);

# UB Marble <-> Chisel Marble
recipes.addShaped(<chisel:marble2:7> * 9, [[<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>],[<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>],[<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>]]);
recipes.addShaped(<undergroundbiomes:metamorphic_stone:2> * 9, [[<chisel:marble2:7>,<chisel:marble2:7>,<chisel:marble2:7>],[<chisel:marble2:7>,<chisel:marble2:7>,<chisel:marble2:7>],[<chisel:marble2:7>,<chisel:marble2:7>,<chisel:marble2:7>]]);

# UB Limestone <-> Chisel Limestone
recipes.addShaped(<chisel:limestone2:7> * 9, [[<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>],[<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>],[<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>]]);
recipes.addShaped(<undergroundbiomes:sedimentary_stone> * 9, [[<chisel:limestone2:7>,<chisel:limestone2:7>,<chisel:limestone2:7>],[<chisel:limestone2:7>,<chisel:limestone2:7>,<chisel:limestone2:7>],[<chisel:limestone2:7>,<chisel:limestone2:7>,<chisel:limestone2:7>]]);

# UB Mossy Cobble with the Fluid Tranposer method
for i in 0 to 8 {
	mods.thermalexpansion.Transposer.addFillRecipe(<undergroundbiomes:igneous_cobble_mossy>.withDamage(i), <undergroundbiomes:igneous_cobble>.withDamage(i), <liquid:water> * 250, 4000);
	mods.thermalexpansion.Transposer.addFillRecipe(<undergroundbiomes:metamorphic_cobble_mossy>.withDamage(i), <undergroundbiomes:metamorphic_cobble>.withDamage(i), <liquid:water> * 250, 4000);
	mods.thermalexpansion.Transposer.addFillRecipe(<undergroundbiomes:sedimentary_stone_mossy>.withDamage(i), <undergroundbiomes:sedimentary_stone>.withDamage(i), <liquid:water> * 250, 4000);
}

# UB Mossy Cobble with the Metallurgic Infuser method
for i in 0 to 8 {
	mods.mekanism.infuser.addRecipe("BIO", 10, <undergroundbiomes:igneous_cobble>.withDamage(i), <undergroundbiomes:igneous_cobble_mossy>.withDamage(i));
	mods.mekanism.infuser.addRecipe("BIO", 10, <undergroundbiomes:metamorphic_cobble>.withDamage(i), <undergroundbiomes:metamorphic_cobble_mossy>.withDamage(i));
	mods.mekanism.infuser.addRecipe("BIO", 10, <undergroundbiomes:sedimentary_stone>.withDamage(i), <undergroundbiomes:sedimentary_stone_mossy>.withDamage(i));
}

print("ENDING UndergroundBiomes.zs");