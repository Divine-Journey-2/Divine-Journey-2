# Author: Atricos
print("STARTING BiblioCraft.zs");

# Framed Chests
for i in 0 to 4 {
	recipes.remove(<bibliocraft:framedchest>.withDamage(i));
	recipes.addShaped(<bibliocraft:framedchest>.withDamage(i), [[<minecraft:log>.withDamage(i),<minecraft:planks>.withDamage(i),<minecraft:log>.withDamage(i)],[<minecraft:planks>.withDamage(i),<bibliocraft:label>.withDamage(i),<minecraft:planks>.withDamage(i)],[<minecraft:log>.withDamage(i),<minecraft:planks>.withDamage(i),<minecraft:log>.withDamage(i)]]);
}
for i in 0 to 2 {
	recipes.remove(<bibliocraft:framedchest>.withDamage(i+4));
	recipes.addShaped(<bibliocraft:framedchest>.withDamage(i+4), [[<minecraft:log2>.withDamage(i),<minecraft:planks>.withDamage(i+4),<minecraft:log2>.withDamage(i)],[<minecraft:planks>.withDamage(i+4),<bibliocraft:label>.withDamage(i+4),<minecraft:planks>.withDamage(i+4)],[<minecraft:log2>.withDamage(i),<minecraft:planks>.withDamage(i+4),<minecraft:log2>.withDamage(i)]]);
}


print("ENDING BiblioCraft.zs");