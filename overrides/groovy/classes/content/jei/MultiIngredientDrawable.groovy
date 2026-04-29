package classes.content.jei

import mezz.jei.api.gui.IDrawable
import mezz.jei.api.gui.IDrawableAnimated
import mezz.jei.api.gui.ITickTimer
import net.minecraft.client.Minecraft

/// animated drawable that cycles between drawing the listed ingredients
class MultiIngredientDrawable implements IDrawableAnimated {

    ITickTimer timer
    List<IDrawable> ingredients

    MultiIngredientDrawable(ITickTimer timer, List<IDrawable> ingredients) {
        this.timer = timer
        this.ingredients = ingredients
    }

	int getWidth() {
        16
    }

	int getHeight() {
        16
    }

	void draw(Minecraft minecraft, int xOffset, int yOffset) {
        int time = timer.getValue() % ingredients.size()
        ingredients[time].draw(minecraft, xOffset, yOffset)
    }
}
