# Author: WaitingIdly

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;

print("STARTING ActivateBlockJEI.zs");

var activate = <assembly:activate_block_or_entity>;
activate.addJEICatalyst(<botania:cosmetic:32>.withTag({
    display:{
        Name: "§r§cRight Clicking"
    },
}));
activate.setJEIItemSlot(0, 0, "item_input", SlotVisual.itemSlot());
activate.setJEIDecoration(1, 0, "plus_sight", SlotVisual.arrowRight());
activate.setJEIItemSlot(2, 0, "block_entity", SlotVisual.itemSlot());
activate.setJEIDecoration(3, 0, "indicator_arrow", SlotVisual.arrowRight());
activate.setJEIItemSlot(4, 0, "item_output", SlotVisual.itemSlot());


function addInteraction(input as IIngredient, blockEntity as IIngredient, output as IItemStack) as void {
    val recipe = AssemblyRecipe.create(function(container) {
        container.addItemOutput("item_output", output);
    });

    recipe.requireItem("block_entity", blockEntity);
    recipe.requireItem("item_input", input);

    <assembly:activate_block_or_entity>.addJEIRecipe(recipe);
}

// Tinkers Construct Mending Moss
addInteraction(<tconstruct:materials:18>, <minecraft:bookshelf>, <tconstruct:materials:19>);

// Activating Ender Cores on End Crystals and Stabilized End Crystals
var endCrystal = <minecraft:end_crystal> | <contenttweaker:stabilized_end_crystal>;
addInteraction(<enderutilities:enderpart:10>, endCrystal, <enderutilities:enderpart:15>);
addInteraction(<enderutilities:enderpart:11>, endCrystal, <enderutilities:enderpart:16>);
addInteraction(<enderutilities:enderpart:12>, endCrystal, <enderutilities:enderpart:17>);

// Indicating how to obtain Ignition
addInteraction(<contenttweaker:flame_devourer_pendant>.withTag({display:{Lore: ["§r§bMust be afflicted with the §cHell Fire§b status","§r§bUses Durability"]}}), <bewitchment:brazier>, <contenttweaker:ignition>);

// Vanilla doubling tall flowers function
addInteraction(<minecraft:dye:15>, <minecraft:double_plant>, <minecraft:double_plant> * 2);
addInteraction(<minecraft:dye:15>, <minecraft:double_plant:1>, <minecraft:double_plant:1> * 2);
addInteraction(<minecraft:dye:15>, <minecraft:double_plant:4>, <minecraft:double_plant:4> * 2);
addInteraction(<minecraft:dye:15>, <minecraft:double_plant:5>, <minecraft:double_plant:5> * 2);

// Basic Salis Mundus tranformations
addInteraction(<thaumcraft:salis_mundus>, <minecraft:bookshelf>, <thaumcraft:thaumonomicon>);
addInteraction(<thaumcraft:salis_mundus>, <extendedcrafting:ender_crafter>, <thaumcraft:arcane_workbench>.withTag({display:{Lore:["§r§bMust be unlocked in the Thaumonomicon."]}}));
addInteraction(<thaumcraft:salis_mundus>, <evilcraft:purifier>, <thaumcraft:crucible>.withTag({display:{Lore:["§r§bMust be unlocked in the Thaumonomicon."]}}));

// Botania Seeds (convert area of dirt/grass into target)
var soil = <minecraft:dirt> | <minecraft:grass>;
addInteraction(<botania:grassseeds:0>, <minecraft:dirt>, <minecraft:grass>);
addInteraction(<botania:grassseeds:1>, soil, <minecraft:dirt:2>);
addInteraction(<botania:grassseeds:2>, soil, <minecraft:mycelium>);
addInteraction(<botania:grassseeds:3>, soil, <botania:altgrass:0>);
addInteraction(<botania:grassseeds:4>, soil, <botania:altgrass:1>);
addInteraction(<botania:grassseeds:5>, soil, <botania:altgrass:2>);
addInteraction(<botania:grassseeds:6>, soil, <botania:altgrass:3>);
addInteraction(<botania:grassseeds:7>, soil, <botania:altgrass:4>);
addInteraction(<botania:grassseeds:8>, soil, <botania:altgrass:5>);
addInteraction(<botania:overgrowthseed>, <minecraft:grass>, <botania:enchantedsoil>);

// Drop of Evil
addInteraction(<extrautils2:ingredients:10>, soil, <extrautils2:cursedearth>);

// Unlock the Aether Portal
addInteraction(<contenttweaker:crown_of_skies>, <aether_legacy:aether_portal>, <aether_legacy:aether_portal>.withTag({display:{Name:"§dUnlock the Aether Dimension"}}));


print("ENDING ActivateBlockJEI.zs");
