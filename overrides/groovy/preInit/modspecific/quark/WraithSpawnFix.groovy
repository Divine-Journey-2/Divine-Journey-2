
// replace the spawn logic for the curse potion effect
// so it checks that the position the mob would spawn in is valid.

import vazkii.quark.world.feature.Wraiths
import vazkii.quark.api.module.FeatureEvent
import net.minecraftforge.common.MinecraftForge

event_manager.listen { FeatureEvent.PostEnable event ->
    def feature = event.getFeature()
    // remove wraiths from the event bus
    if (feature instanceof Wraiths) MinecraftForge.EVENT_BUS.unregister(feature)
}

import net.minecraft.entity.EnumCreatureAttribute
import net.minecraft.entity.monster.IMob
import net.minecraftforge.event.entity.living.LivingSpawnEvent
import net.minecraftforge.fml.common.eventhandler.Event.Result

// original code:
// https://github.com/Rebirth-of-the-Night/Quark/blob/5b9dc687c8825b5b81605787c684d6960b3c4a38/src/main/java/vazkii/quark/world/feature/Wraiths.java#L120
event_manager.listen { LivingSpawnEvent.CheckSpawn event ->
    def entity = event.getEntityLiving()
    if (event.getResult() == Result.ALLOW) return
    if (entity !instanceof IMob) return
    if (!entity.getCanSpawnHere() || !entity.isNotColliding()) return // this is the part thats different - now check if the entity can actually spawn in this location
    def world = event.getWorld()
    if (world.isRemote) return

    for (def player : world.playerEntities) {
        if (!player.isSpectator() && player.isPotionActive(Wraiths.curse) && player.getDistanceSq(entity) < Wraiths.curseRange * Wraiths.curseRange) {
            if (entity.getCreatureAttribute() == EnumCreatureAttribute.UNDEAD) {
                entity.addPotionEffect(new PotionEffect(potion('minecraft:fire_resistance'), Integer.MAX_VALUE, 0, false, false))
            }
            event.setResult(Result.ALLOW)
            return
        }
    }
}
