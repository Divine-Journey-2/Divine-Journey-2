# Author: Atricos
print("STARTING MysticalAgricultureTieredCrystals.zs");

# Inferium Infusion Crystal
recipes.remove(<matc:inferiumcrystal>);
mods.extendedcrafting.EnderCrafting.addShaped(<matc:inferiumcrystal>, [[<mysticalagriculture:crafting:5>,<botania:manaresource:18>,<mysticalagriculture:crafting:5>],[<botania:manaresource:18>,<botania:manaresource:2>,<botania:manaresource:18>],[<mysticalagriculture:crafting:5>,<botania:manaresource:18>,<mysticalagriculture:crafting:5>]]);

print("ENDING MysticalAgricultureTieredCrystals.zs");