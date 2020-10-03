#priority 10
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

# Renaming Mana Infused to Mithril
val igneousStoneNames = ["Red Granite", "Black Granite", "Rhyolite", "Andesite", "Gabbro", "Basalt", "Komatiite", "Dacite"] as string[];
val metamorphicStoneNames = ["Gneiss", "Eclogite", "Marble", "Quartzite", "Blue Schist", "Green Schist", "Soapstone", "Migmatite"] as string[];
val sedimentaryStoneNames = ["Limestone", "Chalk", "Shale", "Siltstone", "Lignite", "Dolomite", "Greywacke", "Chert"] as string[];

for i, name in igneousStoneNames {
	<undergroundbiomes:igneous_stone_tile.thermalfoundation.ore.mithril.name>.withDamage(i).displayName = name + " Mithril Ore";
}

for i, name in metamorphicStoneNames {
	<undergroundbiomes:metamorphic_stone_tile.thermalfoundation.ore.mithril.name>.withDamage(i).displayName = name + " Mithril Ore";
}

for i, name in sedimentaryStoneNames {
	<undergroundbiomes:sedimentary_stone_tile.thermalfoundation.ore.mithril.name>.withDamage(i).displayName = name + " Mithril Ore";
}

print("ENDING UndergroundBiomes.zs");