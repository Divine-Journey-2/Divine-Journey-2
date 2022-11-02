# Author: WaitingIdly

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;

print("STARTING ActivateBlockJEI.zs");

val activate = <assembly:activate_block_or_entity>;
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
val endCrystal = <minecraft:end_crystal> | <contenttweaker:stabilized_end_crystal>;
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

// Botania Phantom Ink makes Spark not (well, less) visible
addInteraction(<botania:phantomink>.withTag({display:{Lore:["§r§bNot consumed."]}}), <botania:spark>, <botania:spark>.withTag({display:{Lore:["§r§bSignificantly less visible."]}}));

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
addInteraction(<contenttweaker:crown_of_skies>, <aether_legacy:aether_portal>, <aether_legacy:aether_portal>.withTag({display:{Name:"§r§dUnlock the Aether Dimension"}}));

// P2P Tunnel Attunement
// https://github.com/PrototypeTrousers/Applied-Energistics-2/blob/AE2-Omnifactory/src/main/java/appeng/core/features/registries/P2PTunnelRegistry.java
val allTunnels = <appliedenergistics2:part:460> | <appliedenergistics2:part:461> | <appliedenergistics2:part:462> | <appliedenergistics2:part:463> | <appliedenergistics2:part:467> | <appliedenergistics2:part:469>;
addInteraction(
    <appliedenergistics2:part:16>.withTag({display:{Name:"§r§dAny AE2 Cable"}}),
    allTunnels,
    <appliedenergistics2:part:460> // ME
);

addInteraction(
    <minecraft:torch> | <minecraft:glowstone>,
    allTunnels,
    <appliedenergistics2:part:467> // LIGHT
);

addInteraction(
    <thermaldynamics:duct_0>.withTag({display:{Name:"§r§dNearly anything that can hold or transfer RF/FE/CF/AE"}}),
    allTunnels,
    <appliedenergistics2:part:469> // FE
);

addInteraction(
    <minecraft:redstone> | <minecraft:redstone_block> | <minecraft:repeater> | <minecraft:redstone_lamp> | <minecraft:daylight_detector> | <minecraft:lever>,
    allTunnels,
    <appliedenergistics2:part:461> // REDSTONE
);

addInteraction(
    <appliedenergistics2:interface> | <appliedenergistics2:part:440> | <appliedenergistics2:part:220> | <appliedenergistics2:part:260> | <appliedenergistics2:part:261> | <minecraft:hopper> | <minecraft:chest> | <minecraft:trapped_chest> | <mekanism:transmitter:3> | <mekanism:transmitter:4> | <mekanism:transmitter:5>,
    allTunnels,
    <appliedenergistics2:part:462> // ITEM
);

addInteraction(
    <minecraft:bucket>.withTag({display:{Name:"§r§dNearly anything that can hold or transfer fluids"}}),
    allTunnels,
    <appliedenergistics2:part:463> // FLUID
);



print("ENDING ActivateBlockJEI.zs");
