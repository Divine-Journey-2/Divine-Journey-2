// Author: WaitingIdly

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;

print("STARTING ActivateBlockJEI.zs");

val activate = <assembly:activate_block_or_entity>;
activate.addJEICatalyst(<botania:cosmetic:32>.withTag({
    display:{
        Name: game.localize("dj2.activate_block_jei.hand.name")
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
addInteraction(<contenttweaker:flame_devourer_pendant>.withTag({display:{Lore: [game.localize("dj2.activate_block_jei.flame_devourer_pendant.desc0"),game.localize("dj2.activate_block_jei.flame_devourer_pendant.desc1")]}}), <bewitchment:brazier>, <contenttweaker:ignition>);

// Vanilla doubling tall flowers function
addInteraction(<minecraft:dye:15>, <minecraft:double_plant>, <minecraft:double_plant> * 2);
addInteraction(<minecraft:dye:15>, <minecraft:double_plant:1>, <minecraft:double_plant:1> * 2);
addInteraction(<minecraft:dye:15>, <minecraft:double_plant:4>, <minecraft:double_plant:4> * 2);
addInteraction(<minecraft:dye:15>, <minecraft:double_plant:5>, <minecraft:double_plant:5> * 2);

// Totemic Stripping Red Cedar Logs
addInteraction(<totemic:bark_stripper>, <totemic:cedar_log>, <totemic:stripped_cedar_log>);

// Basic Salis Mundus tranformations
addInteraction(<thaumcraft:salis_mundus>, <minecraft:bookshelf>, <thaumcraft:thaumonomicon>);
addInteraction(<thaumcraft:salis_mundus>, <extendedcrafting:ender_crafter>, <thaumcraft:arcane_workbench>.withTag({display:{Lore:[game.localize("dj2.activate_block_jei.arcane_workbench.desc0")]}}));
addInteraction(<thaumcraft:salis_mundus>, <evilcraft:purifier>, <thaumcraft:crucible>.withTag({display:{Lore:[game.localize("dj2.activate_block_jei.crucible.desc0")]}}));

// Research Table
addInteraction(<thaumcraft:scribing_tools>, <thaumcraft:table_wood>, <thaumcraft:research_table>);

// Botania Phantom Ink makes Spark not (well, less) visible
addInteraction(<botania:phantomink>.withTag({display:{Lore:[game.localize("dj2.activate_block_jei.phantomink.desc0")]}}), <botania:spark>, <botania:spark>.withTag({display:{Lore:[game.localize("dj2.activate_block_jei.spark.desc0")]}}));

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
addInteraction(<contenttweaker:crown_of_skies>, <aether_legacy:aether_portal>, <aether_legacy:aether_portal>.withTag({display:{Name:game.localize("dj2.activate_block_jei.aether_portal.desc0")}}));

// P2P Tunnel Attunement
// https://github.com/PrototypeTrousers/Applied-Energistics-2/blob/AE2-Omnifactory/src/main/java/appeng/core/features/registries/P2PTunnelRegistry.java
val allTunnels = <appliedenergistics2:part:460> | <appliedenergistics2:part:461> | <appliedenergistics2:part:462> | <appliedenergistics2:part:463> | <appliedenergistics2:part:467> | <appliedenergistics2:part:469>;
addInteraction(
    <appliedenergistics2:part:16>.withTag({display:{Name:game.localize("dj2.activate_block_jei.glass_cable.desc0")}}),
    allTunnels,
    <appliedenergistics2:part:460> // ME
);

addInteraction(
    <minecraft:torch> | <minecraft:glowstone>,
    allTunnels,
    <appliedenergistics2:part:467> // LIGHT
);

addInteraction(
    <thermaldynamics:duct_0>.withTag({display:{Name:game.localize("dj2.activate_block_jei.rf_duct.desc0")}}),
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
    <minecraft:bucket>.withTag({display:{Name:game.localize("dj2.activate_block_jei.bucket.desc0")}}),
    allTunnels,
    <appliedenergistics2:part:463> // FLUID
);

// Add Potato Armor
val air = <thaumcraft:barrier>.withTag({display:{Name:game.localize("dj2.activate_block_jei.barrier.desc0")}});
addInteraction(<draconicadditions:infused_potato_helm>, air, <draconicadditions:potato_helm>);
addInteraction(<draconicadditions:infused_potato_chest>, air, <draconicadditions:potato_chest>);
addInteraction(<draconicadditions:infused_potato_legs>, air, <draconicadditions:potato_legs>);
addInteraction(<draconicadditions:infused_potato_boots>, air, <draconicadditions:potato_boots>);

// Botania Ender Air
addInteraction(<minecraft:glass_bottle>, <minecraft:end_stone>, <botania:manaresource:15>);

// Milk from Cow
addInteraction(<minecraft:bucket>, <minecraft:spawn_egg>.withTag({EntityTag:{id:"minecraft:cow"}}) | <draconicevolution:mob_soul>.withTag({EntityName:"minecraft:cow"}), <minecraft:milk_bucket>);

// Antimatter from Anticow
addInteraction(<minecraft:bucket>, <minecraft:spawn_egg>.withTag({EntityTag:{id:"abyssalcraft:anticow"}}) | <draconicevolution:mob_soul>.withTag({EntityName:"abyssalcraft:anticow"}), <forge:bucketfilled>.withTag({FluidName: "liquidantimatter", Amount: 1000}));

// Aechor from Aechor Plant
addInteraction(<aether_legacy:skyroot_bucket>, <minecraft:spawn_egg>.withTag({EntityTag:{id:"aether_legacy:aechor_plant"}}) | <draconicevolution:mob_soul>.withTag({EntityName:"aether_legacy:aechor_plant"}), <aether_legacy:skyroot_bucket:2>);

// Botania Flowers from Fertilizer
for x in 0 to 16 {
    addInteraction(<botania:fertilizer>, soil, <botania:flower>.withDamage(x));
}

// Botania Double-tall Flowers
for x in 0 to 8 {
    addInteraction(<minecraft:dye:15>, <botania:flower>.withDamage(x), <botania:doubleflower1>.withDamage(x));
    addInteraction(<minecraft:dye:15>, <botania:flower>.withDamage(x + 8), <botania:doubleflower2>.withDamage(x));
    addInteraction(<minecraft:dye:15>, <botania:petal>.withDamage(x), <botania:doubleflower1>.withDamage(x));
    addInteraction(<minecraft:dye:15>, <botania:petal>.withDamage(x + 8), <botania:doubleflower2>.withDamage(x));
}

// DivineRPG Chunks summoning bosses
addInteraction(<divinerpg:eden_chunk>, <divinerpg:sunstorm_spawner>, <divinerpg:eden_heart>.withTag({display:{Lore:[game.localize("dj2.activate_block_jei.after_killed.desc0")]}}));
addInteraction(<divinerpg:wildwood_chunk>, <divinerpg:termasect_spawner>, <divinerpg:wildwood_heart>.withTag({display:{Lore:[game.localize("dj2.activate_block_jei.after_killed.desc0")]}}));
addInteraction(<divinerpg:apalachia_chunk>, <divinerpg:eternal_archer_spawner>, <divinerpg:apalachia_heart>.withTag({display:{Lore:[game.localize("dj2.activate_block_jei.after_killed.desc0")]}}));
addInteraction(<divinerpg:skythern_chunk>, <divinerpg:experienced_cori_spawner>, <divinerpg:skythern_heart>.withTag({display:{Lore:[game.localize("dj2.activate_block_jei.after_killed.desc0")]}}));


print("ENDING ActivateBlockJEI.zs");
