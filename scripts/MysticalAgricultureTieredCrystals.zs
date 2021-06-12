# Author: Atricos

import mods.botania.RuneAltar;
import mods.thaumcraft.Infusion;

print("STARTING MysticalAgricultureTieredCrystals.zs");

# Inferium Infusion Crystal
recipes.remove(<matc:inferiumcrystal>);
mods.extendedcrafting.EnderCrafting.addShaped(<matc:inferiumcrystal>, [[<mysticalagriculture:crafting:5>,<botania:manaresource:18>,<mysticalagriculture:crafting:5>],[<botania:manaresource:18>,<botania:manaresource:2>,<botania:manaresource:18>],[<mysticalagriculture:crafting:5>,<botania:manaresource:18>,<mysticalagriculture:crafting:5>]]);

# Prudentium Infusion Crystal
recipes.remove(<matc:prudentiumcrystal>);
mods.botania.RuneAltar.addRecipe(<matc:prudentiumcrystal>, [<matc:inferiumcrystal>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>], 50000);

# Intermedium Infusion Crystal
recipes.remove(<matc:intermediumcrystal>);
mods.thaumcraft.Infusion.registerRecipe("matc:intermediumcrystal", "", <matc:intermediumcrystal>, 7, [<aspect:vitreus> * 100, <aspect:alkimia> * 70, <aspect:herba> * 70, <aspect:praecantatio> * 50, <aspect:instrumentum> * 50, <aspect:ignis> * 50], <matc:prudentiumcrystal>, [<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>]);

print("ENDING MysticalAgricultureTieredCrystals.zs");