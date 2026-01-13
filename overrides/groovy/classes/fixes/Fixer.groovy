
import net.minecraftforge.fml.common.FMLCommonHandler
import net.minecraft.util.datafix.FixTypes

class Fixer {

    // naming convention: increase major and minor to 3 digits and replace . with _ to get the desired version
    static final int VERSION22_2 = 2_022_002 // this would be 2.22.2 -> 2.022.002 -> 2_022_002
    static final int VERSION23_0 = 2_023_000

    static final int LATEST = VERSION23_0
    static final int DEV = LATEST + 1_000_000 // use and increment when developing

    static {
        def fmlFixer = FMLCommonHandler.instance().getDataFixer()
        def fixer = fmlFixer.init(getPackId(), LATEST)
        fixer.registerFix(FixTypes.ITEM_INSTANCE, new OmniwandConversion())
        log "registered fixes for $LATEST"
    }
}
