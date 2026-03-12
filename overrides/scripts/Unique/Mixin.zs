#loader mixin

#mixin {targets: "exterminatorjeff.undergroundbiomes.common.block.UBOre"}
zenClass MixinUBOre extends native.net.minecraft.block.Block {
    function func_180643_i(state as native.net.minecraft.block.state.IBlockState) as native.net.minecraft.item.ItemStack { // getSilkTouchDrop
        return this0.baseOre.func_180643_i(this0.baseOreState);
    }
}
