// no_run

import net.minecraftforge.event.world.BlockEvent
import exterminatorjeff.undergroundbiomes.common.block.UBOre
import net.minecraft.item.ItemBlock

// makes silk touch + underground biomes ores not unusable by
// making UB ores drop the "base" form of the block when broken with silk touch

eventmanager.listen { BlockEvent.HarvestDropsEvent event ->
    if (event.world.isRemote) return
    if (!event.isSilkTouching()) return

    event.drops.size().times { i ->
        def drop = event.drops.get(i)
        if (drop.item instanceof ItemBlock && drop.item.block instanceof UBOre) {
            event.drops.set(i, drop.item.block.baseOre.getSilkTouchDrop(drop.item.block.baseOreState))
        }
    }
}
