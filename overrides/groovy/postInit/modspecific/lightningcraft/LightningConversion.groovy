

import classes.content.lightningcraft.LightningConversionRecipe
import net.minecraftforge.event.entity.EntityStruckByLightningEvent
import net.minecraft.entity.item.EntityItem
import sblectric.lightningcraft.recipes.LightningTransformRecipes
import sblectric.lightningcraft.entities.EntityLCItem

// this script is needed to fix a bug where some lightning generation
// wouldn't convert the recipe properly!

// also makes some other changes, like not voiding excess of the same item,
// failing due to unrelated items nearby, and adding a recipe for the blocks.

// remove the lightningcraft recipes
LightningTransformRecipes.metaClass.makePublic('recipeList')
LightningTransformRecipes.instance().recipeList.clear()

// add those recipes to our registry
LightningConversionRecipe.RECIPES.clear()
LightningConversionRecipe.RECIPES << new LightningConversionRecipe([item('botania:manaresource', 2), item('enderio:item_alloy_endergy_ingot', 1), item('plustic:mirioningot')], item('lightningcraft:ingot'))
LightningConversionRecipe.RECIPES << new LightningConversionRecipe([item('botania:storage', 3), item('enderio:block_alloy_endergy', 1), item('plustic:mirionblock')], item('lightningcraft:metal_block'))
LightningConversionRecipe.RECIPES << new LightningConversionRecipe([item('lightningcraft:material', 5), item('lightningcraft:ingot', 1), item('bewitchment:stone_ichor')], item('lightningcraft:material', 11))

// highest so it goes before the normal lightningcraft recipes
eventManager.listen(EventPriority.HIGHEST) { EntityStruckByLightningEvent event ->
    def entity = event.getEntity()
    def world = entity.world
    if (world.isRemote || entity.isDead || entity !instanceof EntityItem) return

    def activeItems = [entity]

    // find all nearby items that are valid inputs for a recipe
    for (def nearby : world.getEntitiesInAABBexcluding(entity, entity.getEntityBoundingBox().grow(2), { it instanceof EntityItem && !it.isDead && LightningConversionRecipe.isValidInput(it.getItem()) })) {
        activeItems << nearby
    }

    // get the recipe output, also removes unused items from the list
    def out = LightningConversionRecipe.getRecipeOutput(entity, activeItems)
    if (out.isEmpty()) return

    // remove the items used
    for (def ent : activeItems) {
        def stack = ent.getItem().copy()
        stack.shrink(1)
        if (!stack.isEmpty()) {
            // if the stack isn't empty, theres some items left over - make sure those don't get destroyed by lightning!
            def entityitem = new EntityLCItem(world, ent.posX, ent.posY, ent.posZ, stack)
            world.spawnEntity(entityitem)
        }
        ent.setDead()
    }

    // spawn an invincible resulting item at that position
    def entityitem = new EntityLCItem(world, entity.posX, entity.posY, entity.posZ, out)
    world.spawnEntity(entityitem)
}
