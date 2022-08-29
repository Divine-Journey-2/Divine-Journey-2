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

# Remove Bibliocraft Bell (causes errors)
recipes.remove(<bibliocraft:bell>);

# Print Press Chase
recipes.remove(<bibliocraft:bibliochase>);
recipes.addShaped(<bibliocraft:bibliochase>, [[null,<bibliocraft:framingboard>,null],[<bibliocraft:framingboard>,<avaritia:resource>,<bibliocraft:framingboard>],[null,<bibliocraft:framingboard>,null]]);

# Typesetting Table
recipes.remove(<bibliocraft:typesettingtable>);
recipes.addShaped(<bibliocraft:typesettingtable>, [[<bibliocraft:framingboard>,<bibliocraft:bibliochase>,<bibliocraft:framingboard>],[<bibliocraft:framingboard>,<openblocks:auto_enchantment_table>,<bibliocraft:framingboard>],[<enderio:block_alloy:8>,<contenttweaker:crystalline_brown_slime_block>,<enderio:block_alloy:8>]]);

# Printing Press
recipes.remove(<bibliocraft:printingpress>);
recipes.addShaped(<bibliocraft:printingpress>, [[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:printed_operation_circuit>,<contenttweaker:crystalline_brown_slime_ingot>],[<bibliocraft:framingboard>,<contenttweaker:printed_operation_circuit>,<bibliocraft:framingboard>],[<enderio:block_alloy>,<enderio:block_alloy>,<enderio:block_alloy>]]);

# Oak Creative Bookcase
mods.extendedcrafting.TableCrafting.addShaped(<bibliocraft:bookcasecreative>,
[[<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>],
[<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>],
[<contenttweaker:taste_the_rainbow>,<contenttweaker:taste_the_rainbow>,<contenttweaker:corruption_core>,<contenttweaker:taste_the_rainbow>,<contenttweaker:taste_the_rainbow>],
[<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>,<bibliocraft:bookcase>],
[<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>,<divinerpg:dungeon_bookshelf>]]);

print("ENDING BiblioCraft.zs");
