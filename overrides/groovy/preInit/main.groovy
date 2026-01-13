
import net.minecraftforge.event.RegistryEvent
import crazypants.enderio.api.farm.IFarmerJoe

// generic events aren't split properly, so we need to check that manually
event_manager.listen { RegistryEvent.MissingMappings event ->
    def type = event.getGenericType()
    if (type == Item) {
        event.getAllMappings().forEach {
            if (it.key.toString() == 'morphtool:tool') it.ignore()
        }
    } else if (type == IFarmerJoe) {
        event.getAllMappings().forEach {
            // disabled by Universal Tweaks to prevent crashes
            if (it.key.toString() == 'agricraft:farmer') it.ignore()
        }
    }
}
