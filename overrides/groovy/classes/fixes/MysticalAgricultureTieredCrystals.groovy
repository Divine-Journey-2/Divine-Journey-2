package classes.fixes

import net.minecraft.util.datafix.IFixableData
import net.minecraft.nbt.NBTTagCompound

class MysticalAgricultureTieredCrystals implements IFixableData {

    public static def ALL_ITEMS = ['matc:inferiumcrystal', 'matc:prudentiumcrystal', 'matc:intermediumcrystal', 'matc:superiumcrystal', 'matc:supremiumcrystal']

    int getFixVersion() {
        Fixer.VERSION23_0
    }

    NBTTagCompound fixTagCompound(NBTTagCompound compound) {
        if (compound.hasKey('id', NbtHelper.STRING)) {
            def id = compound.getString('id')
            if (id.startsWith('matc')) {
                compound.setString('id', id.replace('matc', 'contenttweaker'))
            }
        }
        compound
    }
}
