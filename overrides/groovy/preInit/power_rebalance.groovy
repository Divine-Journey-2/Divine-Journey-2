
import erogenousbeef.bigreactors.common.multiblock.PowerSystem

// increase the maximum power of the extreme reactor power tap from 10 million to 10 billion
PowerSystem.metaClass.makeMutable('maxCapacity')
PowerSystem.RedstoneFlux.maxCapacity = 10_000_000_000L

// turbine doesn't work because it is a static final field - will have to use mixins to change to 50 billion

