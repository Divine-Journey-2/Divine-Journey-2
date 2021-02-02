# Author: Atricos

import mods.chisel.Carving;

print("STARTING Chisel.zs");

# Removing the ability to transform Roots Elemental Soils into each other
mods.chisel.Carving.removeGroup("rootsRunicSoilTypes");

# Remove some Stone types from the "stonebrick" group, because there is no space
for i in 0 to 4 {
	mods.chisel.Carving.removeVariation("stonebrick", <minecraft:stonebrick>.withDamage(i));
}
mods.chisel.Carving.removeVariation("stonebrick", <lightningcraft:corrupt_stone>);
mods.chisel.Carving.removeVariation("stonebrick", <chisel:stonebrick2:8>);
mods.chisel.Carving.removeVariation("stonebrick", <chisel:stonebrick2:9>);
furnace.addRecipe(<chisel:stonebrick2:9>, <chisel:stonebrick2:8>);

# Fixing Chiseled Double Stone Slab conflict
recipes.removeShapeless(<minecraft:stone>, [<minecraft:stone_slab>, <minecraft:stone_slab>]);
recipes.addShaped(<chisel:stonebrick2:8>, [[<minecraft:stone_slab>],[<minecraft:stone_slab>]]);

print("ENDING Chisel.zs");