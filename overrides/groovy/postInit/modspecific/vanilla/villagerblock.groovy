

import net.minecraftforge.event.entity.player.PlayerInteractEvent
import net.minecraft.entity.passive.EntityVillager

eventmanager.listen { PlayerInteractEvent.EntityInteract event ->
    if (event.getTarget() instanceof EntityVillager) {
        event.setCanceled(true)
    }
}
