// side: client
package classes.content.jei.category

import classes.content.lightningcraft.LightningConversionRecipe
import classes.content.jei.category.GenericRecipeCategory
import classes.content.jei.Area

import mezz.jei.api.gui.IRecipeLayout
import mezz.jei.api.gui.ITooltipCallback
import mezz.jei.api.ingredients.IIngredients
import mezz.jei.api.ingredients.VanillaTypes
import mezz.jei.api.recipe.IRecipeWrapper
import net.minecraft.util.text.translation.I18n
import net.minecraft.client.Minecraft

class LightningCategory extends GenericRecipeCategory {

    static final String UID = "${getPackId()}.lightning"

    private static final int ROWS = 1
    private static final int COLUMNS = 4
    private static final int TOTAL_SLOTS = ROWS * COLUMNS
    private static final int PADDING = 4
    private static final int ARROW_SPACE = ARROW_WIDTH + PADDING * 2
    private static final int ARROW_Y = 3 * SLOT_SIZE + PADDING + PADDING

    private final Area LIGHTNING_LOCATION = Area.fromPoint(PADDING, (int) (ARROW_Y + (ARROW_WIDTH - SLOT_SIZE) / 2), SLOT_SIZE, SLOT_SIZE)

    private final def lightning

    LightningCategory(guiHelper) {
        super(guiHelper, UID, SLOT_SIZE * COLUMNS + PADDING * 2 + ARROW_SPACE, SLOT_SIZE * ROWS + PADDING * 2)

        lightning = guiHelper.createDrawableIngredient(item('contenttweaker:lightning_charge'))
    }

    def generateIcon() {
        guiHelper.createDrawableIngredient(item('contenttweaker:lightning_charge'))
    }

    static def getRecipeWrappers() {
        def wrappers = []
        for (def recipe in LightningConversionRecipe.RECIPES) {
            wrappers << new Wrapper(recipe)
        }
        wrappers
    }

    void setRecipe(IRecipeLayout recipeLayout, IRecipeWrapper recipeWrapper, IIngredients ingredients) {
        addItemSlot(recipeLayout, 1, true, 0 * SLOT_SIZE + PADDING, PADDING)
        addItemSlot(recipeLayout, 2, true, 1 * SLOT_SIZE + PADDING, PADDING)
        addItemSlot(recipeLayout, 3, true, 2 * SLOT_SIZE + PADDING, PADDING)
        addItemSlot(recipeLayout, 0, false, 3 * SLOT_SIZE + PADDING + ARROW_SPACE, PADDING)

        super.setRecipe(recipeLayout, recipeWrapper, ingredients)
    }

    void drawExtras(Minecraft minecraft) {
        rightArrow.draw(minecraft, ARROW_Y, PADDING)
        lightning.draw(minecraft, LIGHTNING_LOCATION.left, LIGHTNING_LOCATION.top)
	}

    List<String> getTooltipStrings(int mouseX, int mouseY) {
        LIGHTNING_LOCATION.isHovered(mouseX, mouseY) ? [I18n.translateToLocal('dj2.jei.lightningcraft.lightning.instruction')] : []
	}

    static class Wrapper implements IRecipeWrapper {

        final LightningConversionRecipe recipe

        Wrapper(LightningConversionRecipe recipe) {
            this.recipe = recipe
        }

        void getIngredients(IIngredients ingredients) {
            ingredients.setInputs(VanillaTypes.ITEM, recipe.getInputs())
            ingredients.setOutput(VanillaTypes.ITEM, recipe.getOutput())
        }
    }
}
