// Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.ITooltipFunction;
import crafttweaker.recipes.IRecipeFunction;
import mods.botania.RuneAltar;
import mods.thaumcraft.Infusion;
import mods.astralsorcery.Altar;
import mods.zenutils.I18n;

print("STARTING MysticalAgricultureTieredCrystals.zs");

// Add tooltips to Infusion Crystals
val uses_left as ITooltipFunction = function(item) { return I18n.format("dj2.any_crystal_durability.desc0", (item.maxDamage + 1 - item.damage)); } as ITooltipFunction;

<contenttweaker:inferiumcrystal:*>.addAdvancedTooltip(uses_left);
<contenttweaker:inferiumcrystal:*>.addTooltip(game.localize("dj2.inferium_crystal.desc0"));
<contenttweaker:prudentiumcrystal:*>.addAdvancedTooltip(uses_left);
<contenttweaker:prudentiumcrystal:*>.addTooltip(game.localize("dj2.prudentium_crystal.desc0"));
<contenttweaker:intermediumcrystal:*>.addAdvancedTooltip(uses_left);
<contenttweaker:intermediumcrystal:*>.addTooltip(game.localize("dj2.intermedium_crystal.desc0"));
<contenttweaker:superiumcrystal:*>.addAdvancedTooltip(uses_left);
<contenttweaker:superiumcrystal:*>.addTooltip(game.localize("dj2.superium_crystal.desc0"));
<contenttweaker:supremiumcrystal:*>.addAdvancedTooltip(uses_left);
<contenttweaker:supremiumcrystal:*>.addTooltip(game.localize("dj2.supremium_crystal.desc0"));
<mysticalagriculture:master_infusion_crystal>.addTooltip(game.localize("dj2.master_crystal.desc0"));

// Remove default essence recipes
recipes.removeByRecipeName("mysticalagriculture:core/compression/prudentium_essence_to");
recipes.removeByRecipeName("mysticalagriculture:core/compression/intermedium_essence_to");
recipes.removeByRecipeName("mysticalagriculture:core/compression/superium_essence_to");
recipes.removeByRecipeName("mysticalagriculture:core/compression/supremium_essence_to");
recipes.removeByRecipeName("mysticalagradditions:insanium_essence_to");
recipes.removeByRecipeName("mysticalagriculture:core/infusion_crystal");

// type = dust, block
val INFERIUM as IItemStack[] = [<mysticalagriculture:crafting>, <mysticalagriculture:storage>];
val PRUDENTIUM as IItemStack[] = [ <mysticalagriculture:crafting:1>, <mysticalagriculture:storage:1>];
val INTERMEDIUM as IItemStack[] = [<mysticalagriculture:crafting:2>, <mysticalagriculture:storage:2>];
val SUPERIUM as IItemStack[] = [<mysticalagriculture:crafting:3>, <mysticalagriculture:storage:3>];
val SUPREMIUM as IItemStack[] = [<mysticalagriculture:crafting:4>, <mysticalagriculture:storage:4>];
val MASTER as IItemStack[] = [<mysticalagradditions:insanium>, <mysticalagradditions:storage>];

// Add essence upgrade recipes
function addEssenceUpgradeRecipes(crystal as IItemStack, current as IItemStack[], next as IItemStack[]) {
    recipes.addShaped(next[0], [[null,current[0],null],[current[0],crystal.anyDamage().transformDamage(),current[0]],[null,current[0],null]]);
    recipes.addShaped(next[1], [[null,current[1],null],[current[1],crystal.anyDamage().marked("target").transformDamage(9),current[1]],[null,current[1],null]], function(out, ins, cInfo) { return (ins.target.maxDamage - ins.target.damage < 8) ? null : out;} as IRecipeFunction);
}

addEssenceUpgradeRecipes(<contenttweaker:inferiumcrystal>, INFERIUM, PRUDENTIUM);
addEssenceUpgradeRecipes(<contenttweaker:prudentiumcrystal>, PRUDENTIUM, INTERMEDIUM);
addEssenceUpgradeRecipes(<contenttweaker:intermediumcrystal>, INTERMEDIUM, SUPERIUM);
addEssenceUpgradeRecipes(<contenttweaker:superiumcrystal>, SUPERIUM, SUPREMIUM);
addEssenceUpgradeRecipes(<contenttweaker:supremiumcrystal>, SUPREMIUM, MASTER);

// Convert matc into crafttweaker
<matc:inferiumcrystal>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<matc:inferiumcrystal>.addTooltip(game.localize("dj2.deprecated.convert.desc"));
<matc:prudentiumcrystal>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<matc:prudentiumcrystal>.addTooltip(game.localize("dj2.deprecated.convert.desc"));
<matc:intermediumcrystal>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<matc:intermediumcrystal>.addTooltip(game.localize("dj2.deprecated.convert.desc"));
<matc:superiumcrystal>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<matc:superiumcrystal>.addTooltip(game.localize("dj2.deprecated.convert.desc"));
<matc:supremiumcrystal>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<matc:supremiumcrystal>.addTooltip(game.localize("dj2.deprecated.convert.desc"));

recipes.remove(<matc:inferiumcrystal>);
recipes.remove(<matc:prudentiumcrystal>);
recipes.remove(<matc:intermediumcrystal>);
recipes.remove(<matc:superiumcrystal>);
recipes.remove(<matc:supremiumcrystal>);

recipes.removeByRecipeName("matc:essence/prudentium");
recipes.removeByRecipeName("matc:essence/intermedium");
recipes.removeByRecipeName("matc:essence/superium");
recipes.removeByRecipeName("matc:essence/supremium");
recipes.removeByRecipeName("matc:essence/insanium");

recipes.addHiddenShapeless("inferiumcrystal_conversion", <contenttweaker:inferiumcrystal>, [<matc:inferiumcrystal>.noReturn()]);
recipes.addHiddenShapeless("prudentiumcrystal_conversion", <contenttweaker:prudentiumcrystal>, [<matc:prudentiumcrystal>.noReturn()]);
recipes.addHiddenShapeless("intermediumcrystal_conversion", <contenttweaker:intermediumcrystal>, [<matc:intermediumcrystal>.noReturn()]);
recipes.addHiddenShapeless("superiumcrystal_conversion", <contenttweaker:superiumcrystal>, [<matc:superiumcrystal>.noReturn()]);
recipes.addHiddenShapeless("supremiumcrystal_conversion", <contenttweaker:supremiumcrystal>, [<matc:supremiumcrystal>.noReturn()]);

// Inferium Infusion Crystal
mods.extendedcrafting.EnderCrafting.addShaped(<contenttweaker:inferiumcrystal>, [[<mysticalagriculture:crafting:5>,<botania:manaresource:18>,<mysticalagriculture:crafting:5>],[<botania:manaresource:18>,<botania:manaresource:2>,<botania:manaresource:18>],[<mysticalagriculture:crafting:5>,<botania:manaresource:18>,<mysticalagriculture:crafting:5>]]);

// Prudentium Infusion Crystal
mods.botania.RuneAltar.addRecipe(<contenttweaker:prudentiumcrystal>, [<contenttweaker:inferiumcrystal>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>], 50000);

// Intermedium Infusion Crystal
mods.thaumcraft.Infusion.registerRecipe("contenttweaker:intermediumcrystal", "", <contenttweaker:intermediumcrystal>, 7, [<aspect:vitreus> * 100, <aspect:alkimia> * 70, <aspect:herba> * 70, <aspect:praecantatio> * 50, <aspect:instrumentum> * 50, <aspect:ignis> * 50], <contenttweaker:prudentiumcrystal>, [<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>]);

// Superium Infusion Crystal
mods.astralsorcery.Altar.addTraitAltarRecipe("contenttweaker:superiumcrystal", <contenttweaker:superiumcrystal>, 4000, 100,
[null,null,null,
null,<contenttweaker:intermediumcrystal>,null,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<draconicevolution:wyvern_core>,<draconicevolution:wyvern_core>,<draconicevolution:wyvern_core>,<draconicevolution:wyvern_core>]);

// Supremium Infusion Crystal
// recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculturetieredcrystals_supremium_infusion_crystal.json

// Master Infusion Crystal
recipes.remove(<mysticalagriculture:master_infusion_crystal>);
mods.extendedcrafting.TableCrafting.addShaped(<mysticalagriculture:master_infusion_crystal>,
[[null,null,null,null,<alchemistry:ingot:45>,null,null,null,null],
[null,null,null,<alchemistry:ingot:45>,<alchemistry:ingot:45>,<alchemistry:ingot:45>,null,null,null],
[null,null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null,null],
[null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:supremiumcrystal>.noReturn(),<mysticalagradditions:insanium:2>,<contenttweaker:supremiumcrystal>.noReturn(),<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null],
[null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<alchemistry:atomizer>,<mysticalagradditions:storage:1>,<alchemistry:liquifier>,<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null],
[null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:supremiumcrystal>.noReturn(),<mysticalagradditions:insanium:2>,<contenttweaker:supremiumcrystal>.noReturn(),<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null],
[null,null,<alchemistry:ingot:45>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<contenttweaker:zysc_baach_sheet>,<alchemistry:ingot:45>,null,null],
[null,null,null,<alchemistry:ingot:45>,<alchemistry:ingot:45>,<alchemistry:ingot:45>,null,null,null],
[null,null,null,null,<alchemistry:ingot:45>,null,null,null,null]]);

print("ENDING MysticalAgricultureTieredCrystals.zs");
