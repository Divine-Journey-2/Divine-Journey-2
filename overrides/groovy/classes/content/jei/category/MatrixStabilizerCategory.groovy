package classes.content.jei.category

import classes.content.thaumcraft.MatrixStabilityStorage
import classes.content.jei.category.GenericRecipeCategory

import mezz.jei.api.gui.IRecipeLayout
import mezz.jei.api.gui.ITooltipCallback
import mezz.jei.api.ingredients.IIngredients
import mezz.jei.api.ingredients.VanillaTypes
import mezz.jei.api.recipe.IRecipeWrapper

class MatrixStabilizerCategory extends GenericRecipeCategory {

    static final String UID = "${getPackId()}.matrix_stability"

    private static final int ROWS = 6
    private static final int COLUMNS = 9
    private static final int TOTAL_SLOTS = ROWS * COLUMNS

    MatrixStabilizerCategory(guiHelper) {
        super(guiHelper, UID, SLOT_SIZE * COLUMNS, SLOT_SIZE * ROWS)
    }

    def generateIcon() {
        guiHelper.createDrawableIngredient(item('thaumcraft:infusion_matrix'))
    }

    static def getRecipeWrappers() {
        def wrappers = []
        MatrixStabilityStorage.ENTRIES.sort { a, b -> b.stabilityValue <=> a.stabilityValue }
        for (def group in MatrixStabilityStorage.ENTRIES.collate(TOTAL_SLOTS)) {
            wrappers << new Wrapper(group)
        }
        wrappers
    }

    void setRecipe(IRecipeLayout recipeLayout, IRecipeWrapper recipeWrapper, IIngredients ingredients) {
        (0..<ROWS).each { row ->
            (0..<COLUMNS).each { column ->
                addItemSlot(recipeLayout, row * COLUMNS + column, true, column * SLOT_SIZE, row * SLOT_SIZE)
            }
        }
        recipeLayout.getItemStacks().addTooltipCallback(recipeWrapper)
        super.setRecipe(recipeLayout, recipeWrapper, ingredients)
    }

    static class Wrapper implements IRecipeWrapper, ITooltipCallback<ItemStack> {

        final def inputs

        Wrapper(def inputs) {
            this.inputs = inputs
        }

        void getIngredients(IIngredients ingredients) {
            ingredients.setInputLists(VanillaTypes.ITEM, inputs.collect { it.getStacks() })
        }

        void onTooltip(int i, boolean isInput, ItemStack stack, List<String> tooltip) {
            if (this.inputs.size() < i) return // dont think this should happen
            def hovered = this.inputs[i]
            if (hovered == null) return
            tooltip.addAll(hovered.getDescription())
        }
    }
}
