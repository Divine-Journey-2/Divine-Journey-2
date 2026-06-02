

import classes.content.lightningcraft.LightningConversionRecipe
import net.minecraftforge.event.entity.EntityStruckByLightningEvent
import net.minecraft.entity.item.EntityItem
import sblectric.lightningcraft.entities.EntityLCItem

// this script is needed to fix a bug where some lightning generation
// wouldn't convert the recipe properly!

// also makes some other changes, like not voiding excess of the same item,
// failing due to unrelated items nearby, and adding a recipe for the blocks.

LightningConversionRecipe.RECIPES.clear()
LightningConversionRecipe.RECIPES << new LightningConversionRecipe([item('minecraft:diamond'), item('minecraft:iron_ingot'), item('minecraft:gold_ingot')], item('lightningcraft:ingot'))
LightningConversionRecipe.RECIPES << new LightningConversionRecipe([item('minecraft:diamond_block'), item('minecraft:iron_block'), item('minecraft:gold_block')], item('lightningcraft:metal_block'))
LightningConversionRecipe.RECIPES << new LightningConversionRecipe([item('lightningcraft:material', 5), item('lightningcraft:ingot', 1), item('minecraft:emerald')], item('lightningcraft:material', 11))

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
    def out = LightningConversionRecipe.getRecipeOutput(activeItems)
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
