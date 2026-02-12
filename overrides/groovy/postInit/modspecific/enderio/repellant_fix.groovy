
import net.minecraftforge.event.entity.living.EnderTeleportEvent

import thaumcraft.common.entities.monster.boss.EntityCultistPortalGreater
import thaumcraft.common.entities.monster.cult.EntityCultistPortalLesser
import thaumcraft.common.entities.monster.tainted.EntityTaintacle
import thaumcraft.common.entities.monster.tainted.EntityTaintSeed


// the repellant enchantment can teleport entities that hit the player away,
// and the vanishing tinkers trait can do the same on hit.
// this can teleport entities that shouldn't be teleported,
// so we need to block those entities from being teleported.
eventmanager.listen { EnderTeleportEvent event ->
    def entity = event.getEntity()
    if (!entity.isNonBoss() || // stop bosses from being teleported away
        entity instanceof EntityCultistPortalGreater || entity instanceof EntityCultistPortalLesser || // prevent cultist portals from teleporting
        entity instanceof EntityTaintacle || entity instanceof EntityTaintSeed // prevent static taint entities from being teleported
        ) {
        event.setCanceled(true)
    }
}

