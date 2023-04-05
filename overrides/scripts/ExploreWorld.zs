# Author: WaitingIdly

import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;

print("STARTING ExploreWorld.zs");

var explore_world = <assembly:explore_world>;
explore_world.addJEICatalyst(<extrautils2:snowglobe:1>);
explore_world.setJEIItemSlot(0, 0, "input", SlotVisual.itemSlot());
explore_world.setJEIDecoration(2, 0, "indicator_arrow", SlotVisual.arrowRight());
explore_world.setJEIItemSlot(3, 0, "output", SlotVisual.itemSlot());

val recipe = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <extrautils2:snowglobe:1>);
});
recipe.requireItem("input", <extrautils2:snowglobe>);

<assembly:explore_world>.addJEIRecipe(recipe);

print("ENDING ExploreWorld.zs");
