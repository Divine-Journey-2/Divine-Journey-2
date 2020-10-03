# Author: Atricos
print("STARTING Botania.zs");

# Petal Apothecary
recipes.remove(<botania:altar>);
mods.extendedcrafting.EnderCrafting.addShaped(<botania:altar>, [[<contenttweaker:clean_runic_plate>,<botania:petal:*>,<contenttweaker:clean_runic_plate>],[null,<contenttweaker:tempest_core>,null],[<contenttweaker:clean_runic_plate>,<contenttweaker:clean_runic_plate>,<contenttweaker:clean_runic_plate>]]);

print("ENDING Botania.zs");