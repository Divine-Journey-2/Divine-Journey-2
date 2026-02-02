
import net.minecraftforge.event.world.BlockEvent

// makes silk touch + underground biomes ores not unusable by
// making UB ores drop the "base" form of the block when broken with silk touch

def oreConversion = [
    (ore('oreAluminum')): item('thermalfoundation:ore', 4),
    (ore('oreAmber')): item('thaumcraft:ore_amber'),
    (ore('oreAmethyst')): item('mysticalworld:amethyst_ore'),
    (ore('oreAquamarine')): item('astralsorcery:blockcustomsandore'),
    (ore('oreArlemite')): item('divinerpg:arlemite_ore'),
    (ore('oreAstralStarmetal')): item('astralsorcery:blockcustomore', 1),
    (ore('oreChargedCertusQuartz')): item('appliedenergistics2:charged_quartz_ore'), // put first so it applies before normal certus quartz
    (ore('oreCertusQuartz')): item('appliedenergistics2:quartz_ore'),
    (ore('oreCinnabar')): item('thaumcraft:ore_cinnabar'),
    (ore('oreClathrateOilSand')): item('thermalfoundation:ore_fluid'),
    (ore('oreClathrateOilShale')): item('thermalfoundation:ore_fluid', 1),
    (ore('oreClathrateRedstone')): item('thermalfoundation:ore_fluid', 2),
    (ore('oreCoal')): item('minecraft:coal_ore'),
    (ore('oreCopper')): item('thermalfoundation:ore'),
    (ore('oreCoralium')): item('abyssalcraft:coraliumore'),
    (ore('oreDark')): item('evilcraft:dark_ore'),
    (ore('oreDiamond')): item('minecraft:diamond_ore'),
    (ore('oreDimensionalShard')): item('rftools:dimensional_shard_ore'),
    (ore('oreDraconium')): item('draconicevolution:draconium_ore'),
    (ore('oreEmerald')): item('minecraft:emerald_ore'),
    (ore('oreGarnet')): item('bewitchment:garnet_ore'),
    (ore('oreGold')): item('minecraft:gold_ore'),
    (ore('oreInferium')): item('mysticalagriculture:inferium_ore'),
    (ore('oreIridium')): item('thermalfoundation:ore', 7),
    (ore('oreIron')): item('minecraft:iron_ore'),
    (ore('oreLapis')): item('minecraft:lapis_ore'),
    (ore('oreLead')): item('thermalfoundation:ore', 3),
    (ore('oreMithril')): item('thermalfoundation:ore', 8),
    (ore('oreNickel')): item('thermalfoundation:ore', 5),
    (ore('oreOpal')): item('bewitchment:opal_ore'),
    (ore('oreOsmium')): item('mekanism:oreblock'),
    (ore('oreOverworldQuartz')): item('thaumcraft:ore_quartz'),
    (ore('orePlatinum')): item('thermalfoundation:ore', 6),
    (ore('oreProsperity')): item('mysticalagriculture:prosperity_ore'),
    (ore('oreQuartzBlack')): item('actuallyadditions:block_misc', 3),
    (ore('oreRealmite')): item('divinerpg:realmite_ore'),
    (ore('oreRedstone')): item('minecraft:redstone_ore'),
    (ore('oreRupee')): item('divinerpg:rupee_ore'),
    (ore('oreSilver')): item('thermalfoundation:ore', 2),
    (ore('oreTin')): item('thermalfoundation:ore', 1),
    (ore('oreUranium')): item('immersiveengineering:ore', 5),
    (ore('oreYellorite')): item('bigreactors:oreyellorite'),
]

eventmanager.listen { BlockEvent.HarvestDropsEvent event ->
    if (event.world.isRemote) return
    if (event.drops.isEmpty()) return

    // if its from UB and in the conversion map, convert those drops
    if (event.isSilkTouching() && event.getHarvester() != null && event.getState().getBlock().getRegistryName().getNamespace() == 'undergroundbiomes') {
        def value = event.drops.collect {
            oreConversion.findResult(it, { k, v -> it in k ? v : null })
        }
        event.drops.clear()
        event.drops.addAll(value)
    }
}
