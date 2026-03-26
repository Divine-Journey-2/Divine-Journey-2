
import erogenousbeef.bigreactors.common.multiblock.PowerSystem

// increase the maximum power of the extreme reactor power tap from 10 million to 10 billion
PowerSystem.metaClass.makeMutable('maxCapacity')
PowerSystem.RedstoneFlux.maxCapacity = 10_000_000_000L

// turbine doesn't work because it is a static final field - will have to use mixins to change to 50 billion


import mekanism.common.tile.prefab.TileEntityAdvancedElectricMachine

// increase the base MAX_GAS that can go into a gas tank for mekanism from 210 to 2100
// primarily for the Osmium Compressor, as Osmium Blocks give 1800 gas and so can't ever be converted
TileEntityAdvancedElectricMachine.metaClass.makeMutable('MAX_GAS')
TileEntityAdvancedElectricMachine.MAX_GAS = 2100

