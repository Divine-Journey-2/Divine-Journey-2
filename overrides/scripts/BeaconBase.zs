# Author: WaitingIdly

import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import crafttweaker.item.IItemStack;

print("STARTING BeaconBase.zs");
var beacon_base = <assembly:beacon_base>;
beacon_base.addJEICatalyst(<minecraft:beacon>);

for y in 0 to 9 {
    for x in 0 to 9 {
        beacon_base.setJEIItemSlot(x, y, "slot" ~ ((y * 9) + x), SlotVisual.itemSlot());
    }
}

val blocks as IItemStack[] = [<abyssalcraft:ingotblock:1>, <abyssalcraft:ingotblock:2>, <abyssalcraft:ingotblock>, <aether_legacy:enchanted_gravitite>, <aether_legacy:zanite_block>, <avaritia:block_resource:1>, <avaritia:block_resource:2>, <avaritia:block_resource>, <botania:storage:1>, <botania:storage:2>, <botania:storage:3>, <botania:storage:4>, <botania:storage>, <divinerpg:arcanium_block>, <divinerpg:arlemite_block>, <divinerpg:bloodgem_block>, <divinerpg:netherite_block>, <divinerpg:realmite_block>, <divinerpg:rupee_block>, <enderio:block_alloy_endergy:1>, <enderio:block_alloy_endergy:2>, <enderio:block_alloy_endergy:3>, <enderio:block_alloy_endergy:4>, <enderio:block_alloy_endergy:5>, <enderio:block_alloy_endergy:6>, <enderio:block_alloy_endergy>, <enderio:block_alloy:1>, <enderio:block_alloy:2>, <enderio:block_alloy:3>, <enderio:block_alloy:4>, <enderio:block_alloy:5>, <enderio:block_alloy:6>, <enderio:block_alloy:7>, <enderio:block_alloy:8>, <enderio:block_alloy>, <lightningcraft:metal_block:1>, <lightningcraft:metal_block:2>, <lightningcraft:metal_block>, <mekanism:basicblock:2>, <mekanism:basicblock:4>, <mekanism:basicblock>, <minecraft:diamond_block>, <minecraft:emerald_block>, <minecraft:gold_block>, <minecraft:iron_block>, <plustic:alumiteblock>, <tconstruct:metal:1>, <tconstruct:metal:2>, <tconstruct:metal:3>, <tconstruct:metal:4>, <tconstruct:metal:5>, <tconstruct:metal:6>, <tconstruct:metal>, <thaumcraft:amber_block>, <thaumcraft:metal_brass>, <thaumcraft:metal_thaumium>, <thaumcraft:metal_void>, <thermalfoundation:storage_alloy:1>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:storage_alloy:4>, <thermalfoundation:storage_alloy:5>, <thermalfoundation:storage_alloy:6>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage:1>, <thermalfoundation:storage:2>, <thermalfoundation:storage:3>, <thermalfoundation:storage:4>, <thermalfoundation:storage:5>, <thermalfoundation:storage:6>, <thermalfoundation:storage:7>, <thermalfoundation:storage:8>, <thermalfoundation:storage>, <twilightforest:block_storage:1>, <twilightforest:block_storage:2>, <twilightforest:block_storage:3>, <twilightforest:block_storage:4>, <twilightforest:block_storage>] as IItemStack[];

val recipe = AssemblyRecipe.create(function(container) {});

for x, block in blocks {
    recipe.requireItem("slot" ~ x, block);
}

<assembly:beacon_base>.addJEIRecipe(recipe);

print("ENDING BeaconBase.zs");
