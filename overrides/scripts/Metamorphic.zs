# Author: WaitingIdly

import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;

print("STARTING Metamorphic.zs");

var metamorphic = <assembly:metamorphic>;
metamorphic.addJEICatalyst(<botania:specialflower>.withTag({type: "marimorphosis"}));
metamorphic.addJEICatalyst(<botania:specialflower>.withTag({type: "marimorphosisChibi"}));
metamorphic.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "marimorphosis"}));
metamorphic.addJEICatalyst(<botania:floatingspecialflower>.withTag({type: "marimorphosisChibi"}));

metamorphic.setJEIItemSlot(0, 0, "input", SlotVisual.itemSlot());
metamorphic.setJEIDecoration(1, 0, "indicator_arrow", SlotVisual.arrowRight());

for x in 0 to 8 {
    metamorphic.setJEIItemSlot(2 + x, 0, "output" ~ x, SlotVisual.itemSlot());
}

val recipe = AssemblyRecipe.create(function(container) {
    for i in 0 to 8 {
        container.addItemOutput("output" ~ i, <botania:biomestonea>.withDamage(i));
    }
});

recipe.requireItem("input", <minecraft:stone>);

<assembly:metamorphic>.addJEIRecipe(recipe);

print("ENDING Metamorphic.zs");
