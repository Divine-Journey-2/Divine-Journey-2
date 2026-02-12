package classes.fixes

import net.minecraft.util.datafix.IFixableData

class MysticalAgricultureTieredCrystals implements IFixableData {

    /// all items this affects
    public static def ALL_ITEMS = ['matc:inferiumcrystal', 'matc:prudentiumcrystal', 'matc:intermediumcrystal', 'matc:superiumcrystal', 'matc:supremiumcrystal']

    int getFixVersion() {
        Fixer.VERSION23_0
    }

    NBTTagCompound fixTagCompound(NBTTagCompound compound) {
        if (compound.hasKey('id', NbtHelper.STRING)) {
            def id = compound.getString('id')
            if (id.startsWith('matc')) {
                compound.setString('id', id.replace('matc', 'contenttweaker'))
                // because the damage scale has changed, give the benefit of the doubt and reset to 0
                compound.setShort('Damage', 0 as short)
            }
        }
        compound
    }
}
