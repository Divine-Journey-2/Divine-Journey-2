package classes.fixes

import net.minecraft.util.datafix.IFixableData
import net.minecraft.nbt.NBTTagCompound

class ActuallyBaubles implements IFixableData {

    public static def CONVERSION_MAP = [
        'actuallyadditions:potion_ring_advanced_bauble': 'actuallyadditions:item_potion_ring_advanced',
        'actuallyadditions:magnet_ring_bauble': 'actuallyadditions:item_suction_ring',
        'actuallyadditions:battery_bauble': 'actuallyadditions:item_battery',
        'actuallyadditions:battery_double_bauble': 'actuallyadditions:item_battery_double',
        'actuallyadditions:battery_triple_bauble': 'actuallyadditions:item_battery_triple',
        'actuallyadditions:battery_quadruple_bauble': 'actuallyadditions:item_battery_quadruple',
        'actuallyadditions:battery_quintuple_bauble': 'actuallyadditions:item_battery_quintuple',
    ]

    int getFixVersion() {
        Fixer.VERSION23_0
    }

    NBTTagCompound fixTagCompound(NBTTagCompound compound) {
        if (compound.hasKey('id', NbtHelper.STRING)) {
            def id = compound.getString('id')
            if (CONVERSION_MAP.containsKey(id)) {
                compound.setString('id', CONVERSION_MAP[id])
            }
        }
        compound
    }
}
