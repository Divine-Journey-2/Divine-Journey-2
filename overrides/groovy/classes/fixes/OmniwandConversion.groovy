package classes.fixes

import net.minecraft.util.datafix.IFixableData

class OmniwandConversion implements IFixableData {

    private static def MORPHTOOL = 'morphtool:tool'
    private static def OMNIWAND = 'omniwand:wand'
    private static def MORPH_DATA = 'morphtool:data'
    private static def OMNI_DATA = 'omniwand:data'

    public static def ALL_ITEMS = [MORPHTOOL]

    int getFixVersion() {
        Fixer.VERSION23_0
    }

    static void removeMorphToolData(NBTTagCompound item) {
        if (item.hasKey('tag', NbtHelper.COMPOUND)) {
            def tag = item.getCompoundTag('tag')
            // remove all the morphing tool tags + display, which is often changed to "{name} (Morphing Tool)"
            NbtHelper.removeTags(tag, 'morphtool:displayName', 'morphtool:is_morphing', 'display')
            if (tag.isEmpty()) item.removeTag('tag')
        }
    }

    NBTTagCompound fixTagCompound(NBTTagCompound compound) {
        if (compound.hasKey('id', NbtHelper.STRING)) {
            def id = compound.getString('id')
            if (id == MORPHTOOL) {
                // turn morphing tools into omniwands, fix nbt issues
                compound.setString('id', OMNIWAND)
                compound.setTag('tag', nbt().tap {
                    if (compound.hasKey('tag', NbtHelper.COMPOUND) && compound.getCompoundTag('tag').hasKey(MORPH_DATA, NbtHelper.COMPOUND)) {
                        def data = compound.getCompoundTag('tag').getCompoundTag(MORPH_DATA)
                        // this is the data for the items
                        data.getKeySet().each { removeMorphToolData data.getTag(it) }
                        setTag(OMNI_DATA, data)
                    }
                    setBoolean('omniwand:auto', true)
                })
            } else if (id == OMNIWAND) {
                // fix nbt for omniwands that have already been converted
                if (compound.hasKey('tag', NbtHelper.COMPOUND) && compound.getCompoundTag('tag').hasKey(OMNI_DATA, NbtHelper.COMPOUND)) {
                    def data = compound.getCompoundTag('tag').getCompoundTag(OMNI_DATA)
                    data.getKeySet().each { removeMorphToolData data.getTag(it) }
                }
            }
        }
        compound
    }
}
