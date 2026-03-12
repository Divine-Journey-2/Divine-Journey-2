package classes.fixes

import net.minecraftforge.fml.common.FMLCommonHandler
import net.minecraft.util.datafix.FixTypes

class Fixer {

    // naming convention: increase major and minor to 3 digits and replace . with _ to get the desired version
    public static final int VERSION22_2 = 2_022_002 // this would be 2.22.2 -> 2.022.002 -> 2_022_002
    public static final int VERSION23_0 = 2_023_000

    public static final int LATEST = VERSION23_0
    public static final int DEV = LATEST + 1_000_000 // use and increment when developing

    static {
        def fmlFixer = FMLCommonHandler.instance().getDataFixer()
        def fixer = fmlFixer.init(getPackId(), LATEST)
        if (isDedicatedServer()) return // datafixers seem to break on servers - disable them until the cause can be resolved
        fixer.registerFix(FixTypes.ITEM_INSTANCE, new ActuallyBaubles())
        fixer.registerFix(FixTypes.ITEM_INSTANCE, new MysticalAgricultureTieredCrystals())
        fixer.registerFix(FixTypes.ITEM_INSTANCE, new OmniwandConversion())
        fixer.registerFix(FixTypes.ITEM_INSTANCE, new WirelessAE2Terminal())
        log "registered fixes for $LATEST"
    }
}
