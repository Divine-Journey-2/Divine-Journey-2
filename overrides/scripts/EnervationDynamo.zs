# Author: WaitingIdly

import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import crafttweaker.item.IItemStack;

print("STARTING EnervationDynamo.zs");

var enervation_dynamo = <assembly:enervation_dynamo>;
enervation_dynamo.addJEICatalyst(<thermalexpansion:dynamo:4>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));

enervation_dynamo.setJEIItemSlot(0, 0, "input", SlotVisual.itemSlot());
enervation_dynamo.setJEIDecoration(1, 0, "indicator_arrow", SlotVisual.arrowRight());
enervation_dynamo.setJEIEnergySlot(2, 0, "output", "rf");

function add(item as IItemStack, power as int) {
    val recipe = AssemblyRecipe.create(function(container) {
        container.addEnergyOutput("output", power, 0);
    });

    recipe.requireItem("input", item);

    <assembly:enervation_dynamo>.addJEIRecipe(recipe);
}

add(<minecraft:redstone>, 64000);
add(<minecraft:redstone_block>, 640000);

print("ENDING EnervationDynamo.zs");
