package classes.fixes

import net.minecraft.util.datafix.IFixableData
import net.minecraft.nbt.NBTTagCompound

class WirelessAE2Terminal implements IFixableData {

    // DJ2 only has crafting, fluid, and ultimate terminals by default, not interface or pattern
    private static def CRAFTING_TERMINALS = ['wct:wct', 'wct:wct_creative']
    private static def FLUID_TERMINALS = ['wft:wft', 'wft:wft_creative']
    private static def INTERFACE_TERMINALS = ['wit:wit', 'wit:wit_creative']
    private static def PATTERN_TERMINALS = ['wpt:wpt', 'wpt:wpt_creative']
    private static def UNIVERSAL_TERMINALS = ['ae2wtlib:wut', 'ae2wtlib:wut_creative']
    private static def INFINITY_BOOSTER_CARD = 'ae2wtlib:infinity_booster_card'
    private static def MAGNET_CARD = 'wct:magnet_card'

    private static def CREATIVE_TERMINALS = ['wct:wct_creative', 'wft:wft_creative', 'wit:wit_creative', 'wpt:wpt_creative', 'ae2wtlib:wut_creative']

    public static def ALL_ITEMS = [*CRAFTING_TERMINALS, *FLUID_TERMINALS, *INTERFACE_TERMINALS, *PATTERN_TERMINALS, *UNIVERSAL_TERMINALS, INFINITY_BOOSTER_CARD, MAGNET_CARD]

    private static def FIXED_BOOSTER_CARD = NbtHelper.itemStackRep('appliedenergistics2:material', 1, 59)
    private static def FIXED_MAGNET_CARD = NbtHelper.itemStackRep('appliedenergistics2:material', 1, 60)

    int getFixVersion() {
        Fixer.VERSION23_0
    }

    static def getTerminal(String id) {
        if (id in CRAFTING_TERMINALS) return NbtHelper.itemStackRep('appliedenergistics2:wireless_crafting_terminal')
        if (id in FLUID_TERMINALS) return NbtHelper.itemStackRep('appliedenergistics2:wireless_fluid_terminal')
        if (id in INTERFACE_TERMINALS) return NbtHelper.itemStackRep('appliedenergistics2:wireless_interface_terminal')
        if (id in PATTERN_TERMINALS) return NbtHelper.itemStackRep('appliedenergistics2:wireless_pattern_terminal')
        return null // this item is not a terminal
    }

    NBTTagCompound fixTagCompound(NBTTagCompound compound) {
        if (compound.hasKey('id', NbtHelper.STRING)) {
            def id = compound.getString('id')
            if (id == INFINITY_BOOSTER_CARD) {
                return compound.tap { merge(FIXED_BOOSTER_CARD) }
            } else if (id == MAGNET_CARD) {
                return compound.tap { merge(FIXED_MAGNET_CARD) }
            } else if (compound.hasKey('tag', NbtHelper.COMPOUND)) {
                def tag = compound.getCompoundTag('tag')
                def containedStacks = []

                if (id in UNIVERSAL_TERMINALS) {
                    tag.getTagList('StoredTerminals', NbtHelper.COMPOUND).each { containedStacks << getTerminal(it.getString('id')) }
                } else {
                    def terminal = getTerminal(id)
                    if (terminal == null) return compound // not a terminal, we should not be datafixing it
                    containedStacks << terminal
                }

                if (!tag.getCompoundTag('MagnetSlot').getTagList('Items', NbtHelper.COMPOUND).isEmpty()) {
                    containedStacks << FIXED_MAGNET_CARD
                }

                if (id in CREATIVE_TERMINALS || !tag.getCompoundTag('BoosterSlot').getTagList('Items', NbtHelper.COMPOUND).isEmpty() || tag.getInteger('InfinityEnergy') > 0) {
                    containedStacks << FIXED_BOOSTER_CARD
                }

                if (!containedStacks.isEmpty()) {
                    return compound.tap {
                        removeTag('tag') // remove tag before merging so we don't keep old nbt data
                        merge(containedStacks.size() == 1 ? containedStacks[0] : NbtHelper.clusterStacks(containedStacks))
                    }
                }
            }
        }
        compound
    }
}
