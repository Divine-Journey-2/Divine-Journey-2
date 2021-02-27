# Author: Atricos

import mods.botania.RuneAltar;

print("STARTING MysticalAgricultureTieredCrystals.zs");

# Inferium Infusion Crystal
recipes.remove(<matc:inferiumcrystal>);
mods.extendedcrafting.EnderCrafting.addShaped(<matc:inferiumcrystal>, [[<mysticalagriculture:crafting:5>,<botania:manaresource:18>,<mysticalagriculture:crafting:5>],[<botania:manaresource:18>,<botania:manaresource:2>,<botania:manaresource:18>],[<mysticalagriculture:crafting:5>,<botania:manaresource:18>,<mysticalagriculture:crafting:5>]]);

# Prudentium Infusion Crystal
recipes.remove(<matc:prudentiumcrystal>);
mods.botania.RuneAltar.addRecipe(<matc:prudentiumcrystal>, [<matc:inferiumcrystal>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>], 50000);



print("ENDING MysticalAgricultureTieredCrystals.zs");