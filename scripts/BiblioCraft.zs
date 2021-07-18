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

# Oak Creative Bookcase
mods.extendedcrafting.TableCrafting.addShaped(<bibliocraft:bookcasecreative>,
[[<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>],
[<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>],
[<contenttweaker:taste_the_rainbow>,<contenttweaker:taste_the_rainbow>,<contenttweaker:corruption_core>,<contenttweaker:taste_the_rainbow>,<contenttweaker:taste_the_rainbow>],
[<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>],
[<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>]]);

print("ENDING BiblioCraft.zs");