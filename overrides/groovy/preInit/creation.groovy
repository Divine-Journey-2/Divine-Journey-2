
import net.minecraftforge.event.RegistryEvent

// generic events aren't split properly, so we need to check that manually
event_manager.listen { RegistryEvent.Register event ->
    def type = event.getGenericType()
    def registry = event.getRegistry()
    switch (event.getName()) {
        default:
            log.debug "${event.getGenericType()} is resource('${event.getName()}')"
            break
    }
}
