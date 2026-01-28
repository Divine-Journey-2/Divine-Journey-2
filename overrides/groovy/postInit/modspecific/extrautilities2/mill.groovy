
import com.rwtema.extrautils2.tile.TilePassiveGenerator
import com.rwtema.extrautils2.power.IWorldPowerMultiplier

// rebalance Grid Power generators

// base description of generators:
// solar gives up to 1 gp while daytime, reduced by rain, with reduced efficiency starting at 200
// lunar gives up to 1.25 gp while nighttime, depending on phase of moon, with reduced efficiency starting at 200
// lava gives up to 3.5 gp when adjacent to level 1 flowing lava, doubled in the nether, with reduced efficiency starting at 200
// water gives up to 16 gp while flowing water is adjacent, with reduced efficiency starting at 64
// wind gives up to 5 gp if its thundering, with reduced efficiency starting at 512
// fire gives 4 gp while a fire is below it, doubled in the nether, with reduced efficiency starting at 40
// creative gives 10,000 gp
// manual gives up to 15 while being actively used
// dragon gives 500 gp with a dragon egg, with reduced efficiency starting at 500

// in many cases changing a generator requires using both "setBasePower" and "setPowerLevel"
// due to the former often being used only for the tooltip.

def gen = mods.extrautils2.grid_power_passive_generator

// leave solar, lunar, lava, and manual gp generators unchanged

// make water scale significantly worse
gen.setScaling(resource('generators:water'), 16.0f, 0.5f, 32.0f, 0.35f, 128.0f, 0.1f)

// quadruple gp from wind
class WindMult implements IWorldPowerMultiplier {
    public float multiplier(World world) {
        4.0f * com.rwtema.extrautils2.power.PowerMultipliers.WIND.multiplier(world)
    }

    public String toString() {
        'WIND_MULTIPLIER'
    }
}
// gen.setBasePower(resource('generators:wind'), 4) // doesn't work, unclear why
gen.setPowerMultiplier(resource('generators:wind'), new WindMult())


// increase gp from fire by 50%
gen.setBasePower(resource('generators:fire'), 6.0f)
gen.setPowerLevel(resource('generators:fire'), { TilePassiveGenerator generator, World world ->
    world.getBlockState(generator.getPos().down()).getBlock() == block('minecraft:fire') ? 6.0f : 0.0f
})

// significantly increase gp from dragon mills, and reduce scaling rate significantly
gen.setBasePower(resource('generators:dragon_egg'), 1_000.0f)
gen.setScaling(resource('generators:dragon_egg'), 5_000.0f, 0.5f, 10_000.0f, 0.25f, 50_000.0f, 0.05f)
gen.setPowerLevel(resource('generators:dragon_egg'), { TilePassiveGenerator generator, World world ->
    world.getBlockState(generator.getPos().up()).getBlock() == block('minecraft:dragon_egg') ? 1_000.0f : 0.0f
})

// vastly increase creative gen to avoid needing to spam it
gen.setBasePower(resource('generators:creative'), 1_000_000_000.0f) // 1 trillion gp!!!
gen.setPowerLevel(resource('generators:creative'), { TilePassiveGenerator generator, World world ->
    1_000_000_000.0f
})

// todo: why is this needed?
gen.metaClass.makePublic('scalingMap')
com.rwtema.extrautils2.blocks.BlockPassiveGenerator.GeneratorType.each {
    float[] capsInput = gen.scalingMap.get(it.getKey())
    if (capsInput == null) return
    float[][] caps = (capsInput as List).collate(2)
    it.caps = IWorldPowerMultiplier.createCapsTree(caps)
}
