package classes.fixes

import net.minecraft.util.datafix.IFixableData

class NaturaLegacy implements IFixableData {

    public static final def CONVERSION_MAP = [
        'natura:fusewood_kama': 'natura:fusewood_hoe',
        'natura:bloodwood_kama': 'natura:bloodwood_hoe',
        'natura:netherquartz_kama': 'natura:netherquartz_hoe',
        'natura:darkwood_kama': 'natura:darkwood_hoe',
        'natura:ghostwood_kama': 'natura:ghostwood_hoe',
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
