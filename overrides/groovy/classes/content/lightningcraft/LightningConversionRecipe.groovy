package classes.content.lightningcraft

import net.minecraft.entity.item.EntityItem

/// lightningcraft technically has a recipe class,
/// but it doesn't behave correctly - this is a replacement for it.
class LightningConversionRecipe {

    static final def RECIPES = []

    /// if the item being tested is any input in any recipe
    static boolean isValidInput(ItemStack test) {
        for (def recipe in RECIPES) {
            for (def input in recipe.inputs) {
                if (test in input) return true
            }
        }
        return false
    }

    /// either empty or the output stack of the recipe
    /// mutates the input list to remove items not part of the recipe
    static ItemStack getRecipeOutput(List<EntityItem> activeItems) {
        def inputs = activeItems.collect { it.getItem() }
        for (def recipe in RECIPES) {
            if (recipe.inputsMatch(inputs)) {
                recipe.filterInputs(activeItems)
                return recipe.getOutput()
            }
        }
        return item()
    }

    private final def inputs
    private final def output

    LightningConversionRecipe(List<ItemStack> inputs, ItemStack output) {
        this.inputs = inputs
        this.output = output
    }

    boolean inputsMatch(List<ItemStack> checking) {
        if (checking.size() < inputs.size()) return false
        int matched = 0
        for (def input in inputs) {
            for (def check in checking) {
                if (input in check) {
                    matched++
                    break
                }
            }
        }
        return matched >= inputs.size()
    }

    /// if there are two EntityItems with the same item, both will be kept.
    /// this shouldn't lead to issues where items are voided, as items of the same type join together when nearby.
    void filterInputs(List<EntityItem> activeItems) {
        activeItems.removeIf {
            for (def input in inputs) {
                if (input in it.getItem()) return false
            }
            return true
        }
    }

    List<ItemStack> getInputs() {
        inputs
    }

    ItemStack getOutput() {
        output.copy()
    }
}
