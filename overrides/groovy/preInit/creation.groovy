
import net.minecraftforge.event.RegistryEvent

import crazypants.enderio.api.farm.IFertilizer
import crazypants.enderio.base.farming.fertilizer.Bonemeal

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
        default:
            log.debug "${event.getGenericType()} is resource('${event.getName()}')"
            break
    }
}
