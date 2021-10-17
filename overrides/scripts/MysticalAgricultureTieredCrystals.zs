# Author: Atricos

import mods.botania.RuneAltar;
import mods.thaumcraft.Infusion;
import mods.astralsorcery.Altar;

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

# Superium Infusion Crystal
recipes.remove(<matc:superiumcrystal>);
mods.astralsorcery.Altar.addTraitAltarRecipe("matc:superiumcrystal", <matc:superiumcrystal>, 4000, 100,
[null,null,null,
null,<matc:intermediumcrystal>,null,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<draconicevolution:wyvern_core>,<draconicevolution:wyvern_core>,<draconicevolution:wyvern_core>,<draconicevolution:wyvern_core>]);

# Supremium Infusion Crystal
recipes.remove(<matc:supremiumcrystal>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculturetieredcrystals_supremium_infusion_crystal.json

# Master Infusion Crystal
recipes.remove(<mysticalagriculture:master_infusion_crystal>);
mods.extendedcrafting.TableCrafting.addShaped(<mysticalagriculture:master_infusion_crystal>,
[[null,null,null,null,<alchemistry:ingot:45>,null,null,null,null],
[null,null,null,<alchemistry:ingot:45>,<alchemistry:ingot:45>,<alchemistry:ingot:45>,null,null,null],
[null,null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null,null],
[null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<matc:supremiumcrystal>.noReturn(),<mysticalagradditions:insanium:2>,<matc:supremiumcrystal>.noReturn(),<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null],
[null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<alchemistry:atomizer>,<mysticalagradditions:storage:1>,<alchemistry:liquifier>,<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null],
[null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<matc:supremiumcrystal>.noReturn(),<mysticalagradditions:insanium:2>,<matc:supremiumcrystal>.noReturn(),<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null],
[null,null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null,null],
[null,null,null,<alchemistry:ingot:45>,<alchemistry:ingot:45>,<alchemistry:ingot:45>,null,null,null],
[null,null,null,null,<alchemistry:ingot:45>,null,null,null,null]]);

print("ENDING MysticalAgricultureTieredCrystals.zs");