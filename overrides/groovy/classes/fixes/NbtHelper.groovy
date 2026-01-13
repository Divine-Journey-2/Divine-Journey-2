
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

    static void removeTags(NBTTagCompound compound, String... removal) {
        compound.with { removal.each { removeTag(it) } }
    }
}
