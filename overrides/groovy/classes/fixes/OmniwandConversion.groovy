
import net.minecraft.util.datafix.IFixableData
import net.minecraft.nbt.NBTTagCompound

class OmniwandConversion implements IFixableData {

    public static def MORPHTOOL = 'morphtool:tool'
    private static def OMNIWAND = 'omniwand:wand'

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
        if (compound.hasKey('id', NbtHelper.STRING) && compound.getString('id') == MORPHTOOL) {
            // turn morphing tools into omniwands, fix nbt issues
            compound.setString('id', OMNIWAND)
            compound.setTag('tag', new NBTTagCompound().tap {
                if (compound.hasKey('tag', NbtHelper.COMPOUND) && compound.getCompoundTag('tag').hasKey('tag', NbtHelper.COMPOUND)) {
                    def data = compound.getCompoundTag('tag').getCompoundTag('morphtool:data')
                    // this is the data for the items
                    data.each { removeMorphToolData it }
                    setTag('omniwand:data', data)
                }
                setBoolean('omniwand:auto', true)
            })
        } else if (compound.hasKey('id', NbtHelper.STRING) && compound.getString('id') == OMNIWAND) {
            // fix nbt for omniwands that have already been converted
            if (compound.hasKey('tag', NbtHelper.COMPOUND) && compound.getCompoundTag('tag').hasKey('tag', NbtHelper.COMPOUND)) {
                def data = compound.getCompoundTag('tag').getCompoundTag('omniwand:data')
                data.each { removeMorphToolData it }
            }
        }
        compound
    }
}
