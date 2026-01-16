
import net.minecraftforge.event.RegistryEvent
import crazypants.enderio.api.farm.IFarmerJoe
import classes.fixes.OmniwandConversion
import classes.fixes.WirelessAE2Terminal

static def STORAGE_DRAWERS_EXTRA = ['storagedrawersextra:extra_trim_1', 'storagedrawersextra:extra_trim_0', 'storagedrawersextra:extra_drawers', 'storagedrawersextra:extra_trim_2', 'storagedrawersextra:extra_trim_3']

// generic events aren't split properly, so we need to check that manually
event_manager.listen { RegistryEvent.MissingMappings event ->
    def type = event.getGenericType()
    if (type == Item) {
        event.getAllMappings().forEach {
            if (it.key.toString() == OmniwandConversion.MORPHTOOL) it.ignore()
            else if (it.key.toString() in WirelessAE2Terminal.ALL_ITEMS) it.ignore()
            else if (it.key.toString() in STORAGE_DRAWERS_EXTRA) it.ignore()
        }
    } else if (type == Block) {
        event.getAllMappings().forEach {
            if (it.key.toString() in STORAGE_DRAWERS_EXTRA) it.ignore()
        }
    } else if (type == IFarmerJoe) {
        event.getAllMappings().forEach {
            // disabled by Universal Tweaks to prevent crashes
            if (it.key.toString() == 'agricraft:farmer') it.ignore()
        }
    }
}
