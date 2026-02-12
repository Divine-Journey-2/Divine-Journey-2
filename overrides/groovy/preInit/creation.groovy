
import net.minecraftforge.event.RegistryEvent

import crazypants.enderio.api.farm.IFertilizer
import crazypants.enderio.base.farming.fertilizer.Bonemeal
import crazypants.enderio.base.farming.farmers.CustomSeedFarmer

// generic events aren't split properly, so we need to check that manually
event_manager.listen { RegistryEvent.Register event ->
    def type = event.getGenericType()
    def registry = event.getRegistry()
    switch (event.getName()) {
        case resource('enderio:fertilizer'):
            // add a bunch of various bonemeal-like effects to the enderio farmer
            registry.register(new Bonemeal(item('industrialforegoing:fertilizer')))
            registry.register(new Bonemeal(item('alchemistry:fertilizer')))
            registry.register(new Bonemeal(item('thermalfoundation:fertilizer')))
            registry.register(new Bonemeal(item('thermalfoundation:fertilizer', 1)))
            registry.register(new Bonemeal(item('thermalfoundation:fertilizer', 2)))
            registry.register(new Bonemeal(item('evilcraft:blood_potash')))
            registry.register(new Bonemeal(item('thaumcraft:elemental_hoe:*')))
            break
        case resource('enderio:farmers'):
            def elementalFarmer = { def name, def plant, def seed ->
                new CustomSeedFarmer(plant, seed).setRequiresTilling(false).setRegistryName(getPackId(), name)
            }
            registry.register(elementalFarmer('roots_cloud_berry', block('roots:cloud_berry_crop'), item('roots:cloud_berry')))
            registry.register(elementalFarmer('roots_infernal_bulb', block('roots:infernal_bulb_crop'), item('roots:infernal_bulb')))
            registry.register(elementalFarmer('roots_dewgonia', block('roots:dewgonia_crop'), item('roots:dewgonia')))
            registry.register(elementalFarmer('roots_stalicripe', block('roots:stalicripe_crop'), item('roots:stalicripe')))
            break
        default:
            log.debug "${event.getGenericType()} is resource('${event.getName()}')"
            break
    }
}
