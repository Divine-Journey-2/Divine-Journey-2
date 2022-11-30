# Author: WaitingIdly

import crafttweaker.item.IItemStack;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;

print("STARTING Charge.zs");

var charge = <assembly:charge>;
charge.addJEICatalyst(<thermalexpansion:machine:9>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
charge.setJEIItemSlot(0, 0, "input", SlotVisual.itemSlot());
charge.setJEIDecoration(1, 0, "indicator_arrow", SlotVisual.arrowRight());
charge.setJEIItemSlot(2, 0, "output", SlotVisual.itemSlot());

function addCharge(input as IItemStack, output as IItemStack) as void {
    val recipe = AssemblyRecipe.create(function(container) {
        container.addItemOutput("output", output);
    });
    recipe.requireItem("input", input);
    <assembly:charge>.addJEIRecipe(recipe);
}

addCharge(<appliedenergistics2:quartz_ore>, <appliedenergistics2:charged_quartz_ore>);
addCharge(<appliedenergistics2:material>, <appliedenergistics2:material:1>);
addCharge(<thermalfoundation:bait:1>, <thermalfoundation:bait:2>);
addCharge(<thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:2>);


print("ENDING Charge.zs");
