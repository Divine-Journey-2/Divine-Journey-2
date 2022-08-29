# Author: WaitingIdly

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


function addInteraction(input as IItemStack, blockEntity as IItemStack, output as IItemStack) as void {
    val recipe = AssemblyRecipe.create(function(container) {
        container.addItemOutput("item_output", output);
    });

    recipe.requireItem("block_entity", blockEntity);
    recipe.requireItem("item_input", input);

    <assembly:activate_block_or_entity>.addJEIRecipe(recipe);
}

// Activating Ender Cores on End Crystals
addInteraction(<enderutilities:enderpart:10>, <minecraft:end_crystal>, <enderutilities:enderpart:15>);
addInteraction(<enderutilities:enderpart:11>, <minecraft:end_crystal>, <enderutilities:enderpart:16>);
addInteraction(<enderutilities:enderpart:12>, <minecraft:end_crystal>, <enderutilities:enderpart:17>);

// Activating Ender Cores on Stabilized End Crystals
addInteraction(<enderutilities:enderpart:10>, <contenttweaker:stabilized_end_crystal>, <enderutilities:enderpart:15>);
addInteraction(<enderutilities:enderpart:11>, <contenttweaker:stabilized_end_crystal>, <enderutilities:enderpart:16>);
addInteraction(<enderutilities:enderpart:12>, <contenttweaker:stabilized_end_crystal>, <enderutilities:enderpart:17>);

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



print("ENDING ActivateBlockJEI.zs");
