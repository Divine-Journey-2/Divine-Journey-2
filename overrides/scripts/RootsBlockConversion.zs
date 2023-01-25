# Author: WaitingIdly

import mods.roots.predicates.BlockStateAbove;
import mods.roots.predicates.BlockStateBelow;
import mods.roots.predicates.PropertyPredicate;
import mods.roots.predicates.StatePredicate;
import mods.roots.predicates.Predicates;
import mods.roots.Transmutation;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.block.IBlockState;


print("STARTING RootsBlockConversion.zs");

var roots_block_conversion = <assembly:roots_block_conversion>;
roots_block_conversion.addJEICatalyst(<roots:ritual_transmutation>);
roots_block_conversion.addJEICatalyst(<roots:pyre>);
roots_block_conversion.addJEICatalyst(<roots:reinforced_pyre>);

roots_block_conversion.setJEIItemSlot(0, 0, "input", SlotVisual.itemSlot());
roots_block_conversion.setJEIDecoration(1, 0, "indicator_arrow", SlotVisual.arrowRight());
roots_block_conversion.setJEIItemSlot(2, 0, "catalyst", SlotVisual.itemSlot());
roots_block_conversion.setJEIDecoration(3, 0, "indicator_arrow_2", SlotVisual.arrowRight());
roots_block_conversion.setJEIItemSlot(4, 0, "output", SlotVisual.itemSlot());


function displayConversion(input as IIngredient, catalyst as IIngredient, output as IItemStack) as void {
    val recipe = AssemblyRecipe.create(function(container) {
        container.addItemOutput("output", output);
    });

    recipe.requireItem("input", input);

    if (!isNull(catalyst)) recipe.requireItem("catalyst", catalyst);
    else recipe.requireItem("catalyst", <thaumcraft:barrier>.withTag({display:{Name:"§r§dNo catalyst"}}));


    <assembly:roots_block_conversion>.addJEIRecipe(recipe);
}

// Add the default conversions
displayConversion(<minecraft:redstone_torch>, <minecraft:dirt:2>, <minecraft:red_mushroom>);
displayConversion(<minecraft:carpet>, <minecraft:stone:3>, <minecraft:snow_layer>);
displayConversion(<minecraft:lever>, <minecraft:dirt:2>, <minecraft:brown_mushroom>);
displayConversion(<minecraft:pumpkin>, <minecraft:water_bucket>, <minecraft:melon_block>);
displayConversion(<minecraft:dye:3>, null, <minecraft:carrot>);
displayConversion(<minecraft:deadbush>, null, <minecraft:dye:3> * 3);
displayConversion(<minecraft:redstone>, <minecraft:cobblestone>, <minecraft:vine>);
displayConversion(<minecraft:melon_block>, <minecraft:cobblestone>, <minecraft:pumpkin>);
displayConversion(<minecraft:pumpkin>, <minecraft:sand>, <minecraft:cactus>);
displayConversion(<minecraft:trapdoor>, <minecraft:wool>, <minecraft:web>);
displayConversion(<minecraft:redstone_block>, <minecraft:lava_bucket>, <minecraft:glowstone>);
displayConversion(<minecraft:carrot>, null, <minecraft:beetroot>);
displayConversion(<minecraft:log:2>, null, <minecraft:log:3>);
displayConversion(<minecraft:carpet>, <minecraft:water_bucket>, <minecraft:waterlily>);

// Add a Vine -> Bewitchment Spanish Moss conversion
Transmutation.addStateToStateRecipe("vine_to_moss", StatePredicate.create(<blockstate:minecraft:vine>), <blockstate:bewitchment:spanish_moss:east=true,north=true,south=true,up=true,west=true>, BlockStateAbove.create(StatePredicate.create(<blockstate:bewitchment:block_of_opal>)));
displayConversion(<minecraft:vine>, <bewitchment:block_of_opal>, <bewitchment:spanish_moss>);


// Vanilla Sapling cycle


Transmutation.removeRecipe("birch_jungle_leaves");

// Oak -> Dark Oak
Transmutation.addStateToStateRecipe("oak_to_dark_oak_sapling", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:minecraft:sapling:type=dark_oak>, BlockStateAbove.create(StatePredicate.create(<blockstate:evilcraft:dark_block>)));
displayConversion(<minecraft:sapling>, <evilcraft:dark_block>, <minecraft:sapling:5>);

// Dark Oak -> Acacia
Transmutation.addStateToStateRecipe("dark_oak_to_acacia_sapling", PropertyPredicate.create(<blockstate:minecraft:sapling:type=dark_oak>, "type"), <blockstate:minecraft:sapling:type=acacia>, BlockStateAbove.create(StatePredicate.create(<blockstate:minecraft:red_sandstone>)));
displayConversion(<minecraft:sapling:5>, <minecraft:red_sandstone>, <minecraft:sapling:4>);

// Acacia -> Jungle
Transmutation.addStateToStateRecipe("acacia_to_jungle_sapling", PropertyPredicate.create(<blockstate:minecraft:sapling:type=acacia>, "type"), <blockstate:minecraft:sapling:type=jungle>, BlockStateAbove.create(StatePredicate.create(<blockstate:minecraft:mossy_cobblestone>)));
displayConversion(<minecraft:sapling:4>, <minecraft:mossy_cobblestone>, <minecraft:sapling:3>);

// Jungle -> Birch
Transmutation.addStateToStateRecipe("jungle_to_birch_sapling", PropertyPredicate.create(<blockstate:minecraft:sapling:type=jungle>, "type"), <blockstate:minecraft:sapling:type=birch>, BlockStateAbove.create(StatePredicate.create(<blockstate:minecraft:quartz_block>)));
displayConversion(<minecraft:sapling:3>, <minecraft:quartz_block>, <minecraft:sapling:2>);

// Birch -> Spruce
Transmutation.addStateToStateRecipe("birch_to_spruce_sapling", PropertyPredicate.create(<blockstate:minecraft:sapling:type=birch>, "type"), <blockstate:minecraft:sapling:type=spruce>, BlockStateAbove.create(StatePredicate.create(<blockstate:minecraft:noteblock>)));
displayConversion(<minecraft:sapling:2>, <minecraft:noteblock>, <minecraft:sapling:1>);

// Spruce -> Oak
Transmutation.addStateToStateRecipe("spruce_to_oak_sapling", PropertyPredicate.create(<blockstate:minecraft:sapling:type=spruce>, "type"), <blockstate:minecraft:sapling:type=oak>, BlockStateAbove.create(StatePredicate.create(<blockstate:minecraft:dirt>)));
displayConversion(<minecraft:sapling:1>, <minecraft:dirt>, <minecraft:sapling>);


// Flower cycle


// Dandelion -> Oxeye Daisy
Transmutation.addStateToStateRecipe("dandelion_to_oxeye_daisy", PropertyPredicate.create(<blockstate:minecraft:yellow_flower:type=dandelion>, "type"), <blockstate:minecraft:red_flower:type=oxeye_daisy>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=silver>, "color")));
displayConversion(<minecraft:yellow_flower>, <minecraft:wool:8>, <minecraft:red_flower:8>);

// Poppy -> Dandelion
Transmutation.addStateToStateRecipe("poppy_to_dandelion", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=poppy>, "type"), <blockstate:minecraft:yellow_flower:type=dandelion>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=yellow>, "color")));
displayConversion(<minecraft:red_flower>, <minecraft:wool:4>, <minecraft:yellow_flower>);

// Blue Orchid -> Poppy
Transmutation.addStateToStateRecipe("blue_orchid_to_poppy", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=blue_orchid>, "type"), <blockstate:minecraft:red_flower:type=poppy>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=red>, "color")));
displayConversion(<minecraft:red_flower:1>, <minecraft:wool:14>, <minecraft:red_flower>);

// Allium -> Blue Orchid
Transmutation.addStateToStateRecipe("allium_to_blue_orchid", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=allium>, "type"), <blockstate:minecraft:red_flower:type=blue_orchid>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=light_blue>, "color")));
displayConversion(<minecraft:red_flower:2>, <minecraft:wool:3>, <minecraft:red_flower:1>);

// Houstonia -> Allium
Transmutation.addStateToStateRecipe("houstonia_to_allium", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=houstonia>, "type"), <blockstate:minecraft:red_flower:type=allium>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=magenta>, "color")));
displayConversion(<minecraft:red_flower:3>, <minecraft:wool:2>, <minecraft:red_flower:2>);

// Red Tulip -> Houstonia
Transmutation.addStateToStateRecipe("red_tulip_to_houstonia", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=red_tulip>, "type"), <blockstate:minecraft:red_flower:type=houstonia>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=silver>, "color")));
displayConversion(<minecraft:red_flower:4>, <minecraft:wool:8>, <minecraft:red_flower:3>);

// Orange Tulip -> Red Tulip
Transmutation.addStateToStateRecipe("orange_tulip_to_red_tulip", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=orange_tulip>, "type"), <blockstate:minecraft:red_flower:type=red_tulip>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=red>, "color")));
displayConversion(<minecraft:red_flower:5>, <minecraft:wool:14>, <minecraft:red_flower:4>);

// White Tulip -> Orange Tulip
Transmutation.addStateToStateRecipe("white_tulip_to_orange_tulip", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=white_tulip>, "type"), <blockstate:minecraft:red_flower:type=orange_tulip>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=orange>, "color")));
displayConversion(<minecraft:red_flower:6>, <minecraft:wool:1>, <minecraft:red_flower:5>);

// Pink Tulip -> White Tulip
Transmutation.addStateToStateRecipe("pink_tulip_to_white_tulip", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=pink_tulip>, "type"), <blockstate:minecraft:red_flower:type=white_tulip>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=silver>, "color")));
displayConversion(<minecraft:red_flower:7>, <minecraft:wool:8>, <minecraft:red_flower:6>);

// Oxeye Daisy -> Pink Tulip
Transmutation.addStateToStateRecipe("oxeye_daisy_to_pink_tulip", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=oxeye_daisy>, "type"), <blockstate:minecraft:red_flower:type=pink_tulip>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:minecraft:wool:color=pink>, "color")));
displayConversion(<minecraft:red_flower:8>, <minecraft:wool:6>, <minecraft:red_flower:7>);



// Double-tall flowers


// Rose Bush
Transmutation.addStateToItemRecipe("obtain_rose_bush", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=poppy>, "type"), <minecraft:double_plant:4>, BlockStateBelow.create(StatePredicate.create(<blockstate:roots:elemental_soil>)));
displayConversion(<minecraft:red_flower>, <roots:elemental_soil>, <minecraft:double_plant:4>);

// Lilac
Transmutation.addStateToItemRecipe("obtain_lilac", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=allium>, "type"), <minecraft:double_plant:1>, BlockStateBelow.create(StatePredicate.create(<blockstate:roots:elemental_soil>)));
displayConversion(<minecraft:red_flower:2>, <roots:elemental_soil>, <minecraft:double_plant:1>);

// Peony
Transmutation.addStateToItemRecipe("obtain_peony", PropertyPredicate.create(<blockstate:minecraft:red_flower:type=pink_tulip>, "type"), <minecraft:double_plant:5>, BlockStateBelow.create(StatePredicate.create(<blockstate:roots:elemental_soil>)));
displayConversion(<minecraft:red_flower:7>, <roots:elemental_soil>, <minecraft:double_plant:5>);

// Sunflower
Transmutation.addStateToItemRecipe("obtain_sunflower", PropertyPredicate.create(<blockstate:minecraft:yellow_flower:type=dandelion>, "type"), <minecraft:double_plant:0>, BlockStateBelow.create(StatePredicate.create(<blockstate:roots:elemental_soil>)));
displayConversion(<minecraft:yellow_flower>, <roots:elemental_soil>, <minecraft:double_plant:0>);



// Natura Saplings


// Maple Sapling
Transmutation.addStateToStateRecipe("natura_maple", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:overworld_sapling:foliage=maple>, BlockStateAbove.create(StatePredicate.create(<blockstate:minecraft:magma>)));
displayConversion(<minecraft:sapling>, <minecraft:magma>, <natura:overworld_sapling>);

// Silverbell Sapling
Transmutation.addStateToStateRecipe("natura_silverbell", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:overworld_sapling:foliage=silverbell>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:enderio:block_alloy_endergy:variant=energetic_silver>, "variant")));
displayConversion(<minecraft:sapling>, <enderio:block_alloy_endergy:5>, <natura:overworld_sapling:1>);

// Amaranth Sapling
Transmutation.addStateToStateRecipe("natura_amaranth", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:overworld_sapling:foliage=amaranth>, BlockStateAbove.create(StatePredicate.create(<blockstate:mysticalworld:amethyst_block>)));
displayConversion(<minecraft:sapling>, <mysticalworld:amethyst_block>, <natura:overworld_sapling:2>);

// Tiger Sapling
Transmutation.addStateToStateRecipe("natura_tiger", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:overworld_sapling:foliage=tiger>, BlockStateAbove.create(StatePredicate.create(<blockstate:contenttweaker:relic_block>)));
displayConversion(<minecraft:sapling>, <contenttweaker:relic_block>, <natura:overworld_sapling:3>);

// Willow Sapling
Transmutation.addStateToStateRecipe("natura_willow", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:overworld_sapling2:foliage=willow>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:twilightforest:block_storage:variant=steelleaf>, "variant")));
displayConversion(<minecraft:sapling>, <twilightforest:block_storage:2>, <natura:overworld_sapling2>);

// Eucalyptus Sapling
Transmutation.addStateToStateRecipe("natura_eucalyptus", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:overworld_sapling2:foliage=eucalyptus>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:actuallyadditions:block_crystal_empowered:type=white>, "type")));
displayConversion(<minecraft:sapling>, <actuallyadditions:block_crystal_empowered:5>, <natura:overworld_sapling2:1>);

// Hopseed Sapling
Transmutation.addStateToStateRecipe("natura_hopseed", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:overworld_sapling2:foliage=hopseed>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:actuallyadditions:block_crystal_empowered:type=green>, "type")));
displayConversion(<minecraft:sapling>, <actuallyadditions:block_crystal_empowered:4>, <natura:overworld_sapling2:2>);

// Sakura Sapling
Transmutation.addStateToStateRecipe("natura_sakura", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:overworld_sapling2:foliage=sakura>, BlockStateAbove.create(StatePredicate.create(<blockstate:divinerpg:bloodgem_block>)));
displayConversion(<minecraft:sapling>, <divinerpg:bloodgem_block>, <natura:overworld_sapling2:3>);

// Redwood Sapling
Transmutation.addStateToStateRecipe("natura_redwood", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:redwood_sapling:foliage=redwood>, BlockStateAbove.create(StatePredicate.create(<blockstate:roots:wildwood_log>)));
displayConversion(<minecraft:sapling>, <roots:wildwood_log>, <natura:redwood_sapling>);

// Ghostwood Sapling
Transmutation.addStateToStateRecipe("natura_ghostwood", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:nether_sapling:foliage=ghostwood>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:natura:nether_glass:type=soul>, "type")));
displayConversion(<minecraft:sapling>, <natura:nether_glass>, <natura:nether_sapling>);

// Fusewood Sapling
Transmutation.addStateToStateRecipe("natura_fusewood", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:nether_sapling:foliage=fusewood>, BlockStateAbove.create(StatePredicate.create(<blockstate:mekanism:obsidiantnt>)));
displayConversion(<minecraft:sapling>, <mekanism:obsidiantnt>, <natura:nether_sapling:1>);

// Darkwood Sapling
Transmutation.addStateToStateRecipe("natura_darkwood", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:nether_sapling:foliage=darkwood>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:actuallyadditions:block_crystal_empowered:type=black>, "type")));
displayConversion(<minecraft:sapling>, <actuallyadditions:block_crystal_empowered:3>, <natura:nether_sapling:2>);

// Bloodwood Sapling
Transmutation.addStateToStateRecipe("natura_bloodwood", PropertyPredicate.create(<blockstate:minecraft:sapling:type=oak>, "type"), <blockstate:natura:nether_sapling2:foliage=bloodwood>, BlockStateAbove.create(StatePredicate.create(<blockstate:minecraft:netherrack>)));
displayConversion(<minecraft:sapling>, <minecraft:netherrack>, <natura:nether_sapling2>);


// Bewitchment Saplings


// Cypress Sapling
Transmutation.addStateToStateRecipe("bewitchment_cypress", PropertyPredicate.create(<blockstate:minecraft:sapling:type=jungle>, "type"), <blockstate:bewitchment:cypress_sapling>, BlockStateAbove.create(StatePredicate.create(<blockstate:bewitchment:scorned_bricks>)));
displayConversion(<minecraft:sapling:3>, <bewitchment:scorned_bricks>, <bewitchment:cypress_sapling>);

// Elder Sapling
Transmutation.addStateToStateRecipe("bewitchment_elder", PropertyPredicate.create(<blockstate:minecraft:sapling:type=birch>, "type"), <blockstate:bewitchment:elder_sapling>, BlockStateAbove.create(StatePredicate.create(<blockstate:bewitchment:coquina>)));
displayConversion(<minecraft:sapling:2>, <bewitchment:coquina>, <bewitchment:elder_sapling>);

// Juniper Sapling
Transmutation.addStateToStateRecipe("bewitchment_juniper", PropertyPredicate.create(<blockstate:minecraft:sapling:type=acacia>, "type"), <blockstate:bewitchment:juniper_sapling>, BlockStateAbove.create(StatePredicate.create(<blockstate:bewitchment:scorned_bricks>)));
displayConversion(<minecraft:sapling:4>, <bewitchment:scorned_bricks>, <bewitchment:juniper_sapling>);


// Thaumcraft Saplings

// Greatwood Sapling
Transmutation.addStateToStateRecipe("thaumcraft_greatwood", PropertyPredicate.create(<blockstate:minecraft:sapling:type=dark_oak>, "type"), <blockstate:thaumcraft:sapling_greatwood>, BlockStateAbove.create(StatePredicate.create(<blockstate:contenttweaker:crystalline_brown_slime_block>)));
displayConversion(<minecraft:sapling:5>, <contenttweaker:crystalline_brown_slime_block>, <thaumcraft:sapling_greatwood>);

// Silverwood Sapling
Transmutation.addStateToStateRecipe("thaumcraft_silverwood", StatePredicate.create(<blockstate:integrateddynamics:menril_sapling>), <blockstate:thaumcraft:sapling_silverwood>, BlockStateAbove.create(PropertyPredicate.create(<blockstate:enderio:block_alloy_endergy:variant=energetic_silver>, "variant")));
displayConversion(<integrateddynamics:menril_sapling>, <enderio:block_alloy_endergy:5>, <thaumcraft:sapling_silverwood>);



print("ENDING RootsBlockConversion.zs");
