package classes.content.jei.category

import classes.content.bewitchment.AltarUpgradeStorage
import classes.content.jei.Area
import classes.content.jei.MultiIngredientDrawable
import classes.content.jei.category.GenericRecipeCategory

import mezz.jei.api.gui.IRecipeLayout
import mezz.jei.api.gui.ITooltipCallback
import mezz.jei.api.ingredients.IIngredients
import mezz.jei.api.ingredients.VanillaTypes
import mezz.jei.api.recipe.IRecipeWrapper
import net.minecraft.util.text.translation.I18n
import com.bewitchment.api.registry.AltarUpgrade

class AltarUpgradeCategory extends GenericRecipeCategory {

    static final String UID = "${getPackId()}.altar_upgrades"

    private static final int ROWS = 2 // might want 4 at some point, but only have ~12 maximum for a particular category right now
    private static final int COLUMNS = 9
    private static final int TOTAL_SLOTS = ROWS * COLUMNS
    private static final int CYCLE_TIME = 20 * 5 * 4

    private static def displayTypes

    final def altars

    AltarUpgradeCategory(guiHelper, altars) {
        super(guiHelper, UID, SLOT_SIZE * COLUMNS, SLOT_SIZE + SLOT_SIZE * ROWS)
        this.altars = altars
        this.displayTypes = [
            (AltarUpgrade.Type.SWORD): guiHelper.createDrawableIngredient(item('bewitchment:athame')),
            (AltarUpgrade.Type.WAND): guiHelper.createDrawableIngredient(item('bewitchment:leonards_wand')),
            (AltarUpgrade.Type.PENTACLE): guiHelper.createDrawableIngredient(item('bewitchment:pentacle')),
            (AltarUpgrade.Type.CUP): guiHelper.createDrawableIngredient(item('actuallyadditions:item_misc', 14)), // a coffee cup
        ]
    }

    def generateIcon() {
        new MultiIngredientDrawable(guiHelper.createTickTimer(CYCLE_TIME, altars.size(), false), altars.collect { guiHelper.createDrawableIngredient it })
    }

    static def getRecipeWrappers() {
        def wrappers = []
        AltarUpgradeStorage.UPGRADES.each { type, values ->
            // sort to improve readability
            values.sort { a, b -> a.upgrade.upgrade1 == b.upgrade.upgrade1 ? a.upgrade.upgrade2 <=> b.upgrade.upgrade2 : a.upgrade.upgrade1 <=> b.upgrade.upgrade1 }
            // split each group to ensure none exceed the total slots for a single wrapper
            for (def group in values.collate(TOTAL_SLOTS)) {
                wrappers << new Wrapper(type, group)
            }
        }
        wrappers
    }

    void setRecipe(IRecipeLayout recipeLayout, IRecipeWrapper recipeWrapper, IIngredients ingredients) {
        (0..<ROWS).each { row ->
            (0..<COLUMNS).each { column ->
                addItemSlot(recipeLayout, row * COLUMNS + column, true, column * SLOT_SIZE, SLOT_SIZE + row * SLOT_SIZE)
            }
        }
        recipeLayout.getItemStacks().addTooltipCallback(recipeWrapper)
        super.setRecipe(recipeLayout, recipeWrapper, ingredients)
    }

    static class Wrapper implements IRecipeWrapper, ITooltipCallback<ItemStack> {

        private static final Area TYPE_LOCATION = Area.fromPoint(0, 4 * SLOT_SIZE, SLOT_SIZE, SLOT_SIZE)

        final AltarUpgrade.Type type
        final def inputs

        Wrapper(AltarUpgrade.Type type, def inputs) {
            this.type = type
            this.inputs = inputs
        }

        void getIngredients(IIngredients ingredients) {
            ingredients.setInputLists(VanillaTypes.ITEM, inputs.collect { it.stacks })
        }

        @Override
        void drawInfo(net.minecraft.client.Minecraft minecraft, int recipeWidth, int recipeHeight, int mouseX, int mouseY) {
            displayTypes[type].draw(minecraft, TYPE_LOCATION.left, TYPE_LOCATION.top)
        }

        List<String> getTooltipStrings(int mouseX, int mouseY) {
            if (TYPE_LOCATION.isHovered(mouseX, mouseY)) {
                switch (type) {
                    case AltarUpgrade.Type.SWORD: return [I18n.translateToLocal('dj2.jei.bewitchment.type.sword')]
                    case AltarUpgrade.Type.WAND: return [I18n.translateToLocal('dj2.jei.bewitchment.type.wand')]
                    case AltarUpgrade.Type.PENTACLE: return [I18n.translateToLocal('dj2.jei.bewitchment.type.pentacle')]
                    case AltarUpgrade.Type.CUP: return [I18n.translateToLocal('dj2.jei.bewitchment.type.cup')]
                }
            }
            return []
        }

        void onTooltip(int i, boolean isInput, ItemStack stack, List<String> tooltip) {
            if (this.inputs.size() < i) return // dont think this should happen
            def hovered = this.inputs[i]
            tooltip.add(hovered?.getUpgradeDescription())
            if (hovered?.tooltip != null) tooltip.add(hovered.tooltip())
        }
    }
}
