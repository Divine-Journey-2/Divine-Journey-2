# Author: WaitingIdly

import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;

print("STARTING TerrestrialAgglomerationPlate.zs");

var terra_plate = <assembly:terra_plate>;
terra_plate.addJEICatalyst(<botania:terraplate>);
terra_plate.setJEIItemSlot(0, 0, "input0", SlotVisual.itemSlot());
terra_plate.setJEIItemSlot(1, 0, "input1", SlotVisual.itemSlot());
terra_plate.setJEIItemSlot(2, 0, "input2", SlotVisual.itemSlot());
terra_plate.setJEIDecoration(3, 0, "indicator_arrow", SlotVisual.arrowRight());
terra_plate.setJEIItemSlot(4, 0, "output", SlotVisual.itemSlot());

val recipe = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <botania:manaresource:4>);
});
recipe.requireItem("input0", <botania:manaresource:0>);
recipe.requireItem("input1", <botania:manaresource:1>);
recipe.requireItem("input2", <botania:manaresource:2>);

<assembly:terra_plate>.addJEIRecipe(recipe);

print("ENDING TerrestrialAgglomerationPlate.zs");
