package classes.fixes

import net.minecraftforge.common.util.Constants

class NbtHelper {

    // copy the used tags so we don't have to import constants everywhere
    static final int BYTE = Constants.NBT.TAG_BYTE
    static final int SHORT = Constants.NBT.TAG_SHORT
    static final int INT = Constants.NBT.TAG_INT
    static final int LONG = Constants.NBT.TAG_LONG
    static final int FLOAT = Constants.NBT.TAG_FLOAT
    static final int DOUBLE = Constants.NBT.TAG_DOUBLE
    static final int BYTE_ARRAY = Constants.NBT.TAG_BYTE_ARRAY
    static final int STRING = Constants.NBT.TAG_STRING
    static final int LIST = Constants.NBT.TAG_LIST
    static final int COMPOUND = Constants.NBT.TAG_COMPOUND
    static final int INT_ARRAY = Constants.NBT.TAG_INT_ARRAY
    static final int LONG_ARRAY = Constants.NBT.TAG_LONG_ARRAY
    static final int ANY_NUMBER = Constants.NBT.TAG_ANY_NUMERIC

    /// remove any number of tags from a single nbt compound
    static void removeTags(NBTTagCompound compound, String... removal) {
        compound.with { removal.each { removeTag(it) } }
    }

    /// generate a default itemstack representation
    static NBTTagCompound itemStackRep(String id, int amount = 1, int damage = 0, NBTTagCompound tag = null) {
        def stack = new NBTTagCompound()
        stack.setString('id', id)
        stack.setByte('Count', amount as byte)
        stack.setShort('Damage', damage as short)
        if (tag != null) stack.setTag('tag', tag)
        stack
    }

    /// store any number of itemstacks into a matter cluster,
    /// which can be right-clicked to extract all contained stacks.
    /// useful for when a single itemstack being removed is effectively 2 itemstacks
    static NBTTagCompound clusterStacks(List<NBTTagCompound> stacks) {
        itemStackRep('avaritia:matter_cluster', 1, 0, new NBTTagCompound().tap {
            setTag('clusteritems', new NBTTagCompound().tap {
                setInteger('total', stacks.size())
                setTag('items', new NBTTagList().tap {
                    stacks.each { e ->
                        appendTag(new NBTTagCompound().tap {
                            setInteger('count', 1)
                            setTag('item', e)
                        })
                    }
                })
            })
        })
    }
}
