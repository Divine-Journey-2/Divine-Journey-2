
import net.minecraftforge.event.RegistryEvent
import crazypants.enderio.api.farm.IFarmerJoe
import classes.fixes.ActuallyBaubles
import classes.fixes.MysticalAgricultureTieredCrystals
import classes.fixes.OmniwandConversion
import classes.fixes.StorageDrawersExtras
import classes.fixes.WirelessAE2Terminal

// generic events aren't split properly, so we need to check that manually
event_manager.listen { RegistryEvent.MissingMappings event ->
    def type = event.getGenericType()
    if (type == Item) {
        event.getAllMappings().forEach {
            def id = it.key.toString()
            if (id in ActuallyBaubles.CONVERSION_MAP) it.ignore()
            else if (id in MysticalAgricultureTieredCrystals.ALL_ITEMS) it.ignore()
            else if (id in OmniwandConversion.ALL_ITEMS) it.ignore()
            else if (id in StorageDrawersExtras.ALL_ITEMS) it.ignore()
            else if (id in WirelessAE2Terminal.ALL_ITEMS) it.ignore()
            else if (id == 'baubles:ring') it.ignore()
        }
    } else if (type == IFarmerJoe) {
        event.getAllMappings().forEach {
            // disabled by Universal Tweaks to prevent crashes
            if (it.key.toString() == 'agricraft:farmer') it.ignore()
        }
    }
}
