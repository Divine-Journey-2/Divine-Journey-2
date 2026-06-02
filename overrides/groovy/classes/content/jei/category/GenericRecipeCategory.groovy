package classes.content.jei.category

import mezz.jei.api.gui.IDrawable
import mezz.jei.api.gui.IGuiIngredient
import mezz.jei.api.gui.IGuiIngredientGroup
import mezz.jei.api.gui.IRecipeLayout
import mezz.jei.api.recipe.IRecipeCategory
import mezz.jei.api.recipe.IRecipeWrapper
import mezz.jei.api.recipe.IIngredientType
import mezz.jei.api.ingredients.IIngredients
import mezz.jei.api.ingredients.VanillaTypes
import net.minecraft.util.text.translation.I18n

/// a generic helper category
abstract class GenericRecipeCategory implements IRecipeCategory<IRecipeWrapper> {

    public static final int SLOT_SIZE = 18

    static def guiHelper
    static def rightArrow
    static def slot

    final def uid
    final int width
    final int height
    def background
    def icon

    GenericRecipeCategory(guiHelper, uid, width, height) {
        init(guiHelper)
        this.uid = uid
        this.width = width
        this.height = height
        this.background = guiHelper.createBlankDrawable(width, height)
    }

    /// some static things to be reused
    private static void init(helper) {
        if (guiHelper == null) {
            guiHelper = helper
            rightArrow = helper.drawableBuilder(resource('groovyscript:textures/jei/arrow_right.png'), 0, 0, 24, 15)
                .setTextureSize(24, 15)
                .build()
            slot = helper.getSlotDrawable()
        }
    }

    void setRecipe(IRecipeLayout recipeLayout, IRecipeWrapper recipeWrapper, IIngredients ingredients) {
        recipeLayout.getItemStacks().set(ingredients)
        setBackgrounds(recipeLayout.getItemStacks(), slot)
    }

    /// create the icon that represents the category for the top bar
    abstract def generateIcon()

    /// get the icon, creating it if needed
    IDrawable getIcon() {
        icon == null ? icon = generateIcon() : icon
    }

    String getUid() {
        this.uid
    }

    String getTitle() {
        I18n.translateToLocal("jei.category.${this.uid}.name")
    }

    String getModName() {
        getPackName()
    }

    IDrawable getBackground() {
        this.background
    }

    /// add a slot of the given type
    protected static void addSlot(IIngredientType type, IRecipeLayout recipeLayout, int index, boolean isInput, int x, int y) {
        recipeLayout.getIngredientsGroup(type).init(index, isInput, x, y)
    }

    /// add an item slot
    protected static void addItemSlot(IRecipeLayout recipeLayout, int index, boolean isInput, int x, int y) {
        addSlot(VanillaTypes.ITEM, recipeLayout, index, isInput, x, y)
    }

    /// set the background textrue for every ingredient in the ingredient group
    protected static void setBackgrounds(IGuiIngredientGroup<?> ingredientGroup, IDrawable drawable) {
        ingredientGroup.getGuiIngredients().values().each {
            it.setBackground(drawable)
        }
    }

    /// a basic recipe wrapper for holding any ingredient type
    /// created via something like
    /// new RecipeWrapper([
    ///     (VanillaTypes.ITEM): [[item('minecraft:clay'), item('minecraft:diamond')], [item('minecraft:gold_ingot')]],
    ///     (VanillaTypes.ITEM): [[item('minecraft:gold_ingot')]]
    /// ])
    /// this would represent a recipe of "Clay||Diamond + Gold Ingot -> Gold Ingot"
    /// both Clay and Diamond would take up the same slot, and would alternate appearing
    static class RecipeWrapper implements IRecipeWrapper {

        Map<IIngredientType, List<List<?>>> inputs
        Map<IIngredientType, List<List<?>>> outputs

        RecipeWrapper(def inputs, def outputs) {
            this.inputs = inputs
            this.outputs = outputs
        }

        void getIngredients(IIngredients ingredients) {
            inputs.each { k, v -> ingredients.setInputLists(k, v) }
            outputs.each { k, v -> ingredients.setOutputLists(k, v) }
        }

        /// some of the other methods IRecipeWrapper has that could be overriden by a subclass:

        // void drawInfo(Minecraft minecraft, int recipeWidth, int recipeHeight, int mouseX, int mouseY)

        // List<String> getTooltipStrings(int mouseX, int mouseY)

        // boolean handleClick(Minecraft minecraft, int mouseX, int mouseY, int mouseButton)
    }
}
