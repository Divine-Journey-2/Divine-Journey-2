
import com.bewitchment.api.registry.AltarUpgrade
import net.minecraft.util.text.translation.I18n

/// holds the data for a JEI category
class AltarUpgradeStorage {
    static Map<AltarUpgrade, List<AltarUpgradeStorage.Entry>> UPGRADES = [
        (AltarUpgrade.Type.SWORD): [],
        (AltarUpgrade.Type.WAND): [],
        (AltarUpgrade.Type.PENTACLE): [],
        (AltarUpgrade.Type.CUP): []
    ]

    static class Entry {

        /// the itemstacks that are valid for this upgrade
        final List<ItemStack> stacks
        /// the altar upgrade in question
        final AltarUpgrade upgrade
        /// a possibly null closure that returns a tooltip - typically indicating something that isnt easily represented on the stack
        final Closure tooltip

        Entry(ItemStack stack, AltarUpgrade upgrade) {
            this([stack], upgrade, null)
        }

        Entry(ItemStack stack, AltarUpgrade upgrade, Closure tooltip) {
            this([stack], upgrade, tooltip)
        }

        Entry(List<ItemStack> stacks, AltarUpgrade upgrade) {
            this(stacks, upgrade, null)
        }

        Entry(List<ItemStack> stacks, AltarUpgrade upgrade, Closure tooltip) {
            this.stacks = stacks
            this.upgrade = upgrade
            this.tooltip = tooltip
        }

        String getUpgradeDescription() {
            getUpgradeDescription(upgrade)
        }

        /// the description of the upgrade, displays in JEI when hovering over the item
        static String getUpgradeDescription(upgrade) {
            switch (upgrade.type) {
                case AltarUpgrade.Type.SWORD:
                    if (upgrade.upgrade2 == 0) return I18n.translateToLocal('dj2.jei.bewitchment.nothing')
                    def text = "${upgrade.upgrade2 < 1 ? textformat('red') : textformat('gold')}*${upgrade.upgrade2}"
                    return I18n.translateToLocalFormatted('dj2.jei.bewitchment.sword', text)
                case AltarUpgrade.Type.WAND:
                    if (upgrade.upgrade2 == 0) return I18n.translateToLocal('dj2.jei.bewitchment.nothing')
                    def text = "${upgrade.upgrade2 < 0 ? "${textformat('red')}-" : "${textformat('gold')}+"}${upgrade.upgrade2 * 64}"
                    return I18n.translateToLocalFormatted('dj2.jei.bewitchment.wand', text)
                case AltarUpgrade.Type.PENTACLE:
                    if (upgrade.upgrade1 == 0) return I18n.translateToLocal('dj2.jei.bewitchment.nothing')
                    def text = "${upgrade.upgrade1 < 0 ? "${textformat('red')}-" : "${textformat('gold')}+"}${upgrade.upgrade1}"
                    return I18n.translateToLocalFormatted('dj2.jei.bewitchment.pentacle', text)
                case AltarUpgrade.Type.CUP:
                    if (upgrade.upgrade1 == 0 && upgrade.upgrade2 == 0) return I18n.translateToLocal('dj2.jei.bewitchment.nothing')
                    def text1 = "${upgrade.upgrade1 < 0 ? "${textformat('red')}-" : "${textformat('gold')}+"}${upgrade.upgrade1}"
                    def text2 = "${upgrade.upgrade2 < 1 ? textformat('red') : textformat('gold')}*${upgrade.upgrade2}"
                    if (upgrade.upgrade2 == 0) return I18n.translateToLocalFormatted('dj2.jei.bewitchment.cup_add', text1)
                    if (upgrade.upgrade1 == 0) return I18n.translateToLocalFormatted('dj2.jei.bewitchment.cup_times', text2)
                    return I18n.translateToLocalFormatted('dj2.jei.bewitchment.cup_both', text1, text2)
            }
            // none of the nothing options *should* be run, but just in case
            return I18n.translateToLocal('dj2.jei.bewitchment.nothing')
        }
    }
}
