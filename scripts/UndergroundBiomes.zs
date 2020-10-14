#priority 10

import crafttweaker.item.IItemStack;

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

val sand_tooltip = "Can be converted into vanilla Sand by crafting 2 of them together in a horizontal line." as string;
val gravel_tooltip = "Can be converted into vanilla Gravel by crafting 2 of them together in a horizontal line." as string;

# Sand conversion tooltips
<undergroundbiomes:igneous_sand:*>.addTooltip(format.darkRed(format.italic(sand_tooltip)));
<undergroundbiomes:metamorphic_sand:*>.addTooltip(format.darkRed(format.italic(sand_tooltip)));
<undergroundbiomes:sedimentary_sand:*>.addTooltip(format.darkRed(format.italic(sand_tooltip)));

# Gravel conversion tooltips
<undergroundbiomes:igneous_gravel:*>.addTooltip(format.darkRed(format.italic(gravel_tooltip)));
<undergroundbiomes:metamorphic_gravel:*>.addTooltip(format.darkRed(format.italic(gravel_tooltip)));
<undergroundbiomes:sedimentary_gravel:*>.addTooltip(format.darkRed(format.italic(gravel_tooltip)));

print("ENDING UndergroundBiomes.zs");