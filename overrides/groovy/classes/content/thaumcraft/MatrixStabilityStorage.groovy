package classes.content.thaumcraft

import net.minecraft.util.NonNullList
import net.minecraft.util.text.translation.I18n

class MatrixStabilityStorage {

    static final List<Entry> ENTRIES = []

    static class Entry {

        /// the relevant block
        final Block block
        /// the stability value the block provides
        final float stabilityValue
        /// the stability reduction the block provides - often unused, as stabilityValue is a malus if unmatched
        final float stabilityReduction
        /// the itemstacks that correspond to the relevant block
        final List<ItemStack> stacks
        /// if this entry has m///////////////////
        final boolean hasMultipleBlockStates

        Entry(Block block, float stabilityValue, float stabilityReduction) {
            this(block, stabilityValue, stabilityReduction, generateStacks(block))
        }

        Entry(Block block, float stabilityValue, float stabilityReduction, List<ItemStack> stacks) {
            this.block = block
            this.stabilityValue = stabilityValue
            this.stabilityReduction = stabilityReduction
            this.stacks = stacks
            this.hasMultipleBlockStates = !stacks.isEmpty() && (stacks.size() > 1 || stacks.get(0).getHasSubtypes())
            //block.getBlockState().getValidStates().size() > 1
            //stacks.size() > 0 && stacks.get(0).getHasSubtypes()
        }

        static def generateStacks(Block block) {
            def list = NonNullList.create()
            block.getSubBlocks(creativeTab(), list)
            return list
        }

        def getStacks() {
            stacks
        }

        List<String> getDescription() {
            def list = []
            list << I18n.translateToLocalFormatted('dj2.jei.thaumcraft.matrix.base')
            if (hasMultipleBlockStates) list << I18n.translateToLocalFormatted('dj2.jei.thaumcraft.matrix.blockstate_note')
            if (stabilityValue > 0) list << I18n.translateToLocalFormatted('dj2.jei.thaumcraft.matrix.increase', stabilityValue)
            if (stabilityReduction > 0) list << I18n.translateToLocalFormatted('dj2.jei.thaumcraft.matrix.decrease', stabilityReduction)
            return list
        }
    }

}
