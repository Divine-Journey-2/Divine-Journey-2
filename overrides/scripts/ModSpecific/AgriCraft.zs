// Author: Atricos

import mods.thermalexpansion.Transposer;

print("STARTING AgriCraft.zs");

// Crops Sticks
recipes.remove(<agricraft:crop_sticks>);
for stick in <ore:stickWood>.items {
    mods.thermalexpansion.Transposer.addFillRecipe(<agricraft:crop_sticks>, stick * 4, <liquid:growth_infusion_liquid> * 10, 1000);
}
<agricraft:crop_sticks>.addTooltip(game.localize("dj2.crop_sticks.desc0"));
<agricraft:crop_sticks>.addTooltip(game.localize("dj2.crop_sticks.desc1"));
<agricraft:crop_sticks>.addTooltip(game.localize("dj2.crop_sticks.desc2"));
<agricraft:crop_sticks>.addShiftTooltip(game.localize("dj2.crop_sticks.desc3"));
<agricraft:crop_sticks>.addShiftTooltip(game.localize("dj2.crop_sticks.desc4"));
<agricraft:crop_sticks>.addShiftTooltip(game.localize("dj2.crop_sticks.desc5"));
<agricraft:crop_sticks>.addShiftTooltip(game.localize("dj2.crop_sticks.desc6"));


// Seed Analyzer
recipes.remove(<agricraft:seed_analyzer>);
recipes.addShaped(<agricraft:seed_analyzer>, [[null,<lightningcraft:ingot>,null],[<lightningcraft:ingot>,<agricraft:crop_sticks>,<lightningcraft:ingot>],[<astralsorcery:blockinfusedwood:6>,<extendedcrafting:frame>,<astralsorcery:blockinfusedwood:6>]]);

// Agricultural Journal
recipes.remove(<agricraft:journal>);
mods.thermalexpansion.Transposer.addFillRecipe(<agricraft:journal>, <minecraft:book>, <liquid:growth_infusion_liquid> * 1000, 8000);

// Gardening Trowel
recipes.remove(<agricraft:trowel>);
recipes.addShapedMirrored(<agricraft:trowel>, [[null,null,<ore:stickWood>],[<lightningcraft:ingot:1>,<astralsorcery:itemcraftingcomponent:4>,null],[<lightningcraft:ingot:1>,<lightningcraft:ingot:1>,null]]);

// Clipper
recipes.remove(<agricraft:clipper>);
recipes.addShapedMirrored(<agricraft:clipper>, [[<simplyjetpacks:metaitemmods:12>,null,null],[null,<astralsorcery:itemcraftingcomponent:4>,<lightningcraft:ingot:2>],[null,<lightningcraft:ingot:2>,null]]);

// Computer Controlled Seed Analyzer
recipes.remove(<agricraft:peripheral>);
recipes.addShaped(<agricraft:peripheral>, [[<galacticraftplanets:item_basic_asteroids:5>,<agricraft:seed_analyzer>,<galacticraftplanets:item_basic_asteroids:5>],[<galacticraftplanets:item_basic_asteroids:5>,<agricraft:seed_analyzer>,<galacticraftplanets:item_basic_asteroids:5>],[<appliedenergistics2:controller>,<modularmachinery:blockcontroller>,<appliedenergistics2:controller>]]);

print("ENDING AgriCraft.zs");
