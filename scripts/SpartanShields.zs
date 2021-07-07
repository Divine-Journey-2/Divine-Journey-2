# Author: Atricos
print("STARTING SpartanShields.zs");

# Manasteel Plated Shield
recipes.remove(<spartanshields:shield_botania_manasteel>);
recipes.addShaped(<spartanshields:shield_botania_manasteel>, [[<botania:manaresource>,<contenttweaker:rune_of_earth>,<botania:manaresource>],[<botania:manaresource>,<botania:manaresource:3>,<botania:manaresource>],[null,<contenttweaker:rune_of_mana>,null]]);

# Elementium Plated Shield
recipes.remove(<spartanshields:shield_botania_elementium>);
recipes.addShaped(<spartanshields:shield_botania_elementium>, [[<botania:manaresource:7>,<contenttweaker:rune_of_summer>,<botania:manaresource:7>],[<botania:manaresource:7>,<botania:manaresource:13>,<botania:manaresource:7>],[null,<contenttweaker:rune_of_mana>,null]]);

# Terrasteel Strenghtened Shield
recipes.remove(<spartanshields:shield_botania_terrasteel>);
recipes.addShaped(<spartanshields:shield_botania_terrasteel>, [[<botania:manaresource:4>,<contenttweaker:rune_of_pride>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:manaresource:3>,<botania:manaresource:4>],[null,<contenttweaker:rune_of_mana>,null]]);

print("ENDING SpartanShields.zs");