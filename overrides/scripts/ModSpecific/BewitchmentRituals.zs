#loader preinit
# Author: WaitingIdly

import dj2addons.bewitchment.Rituals;

print("STARTING BewitchmentRituals.zs");

// Remove the biome shift ritual, as it allows for a progression skip
Rituals.removeRitual("biome_shift");


print("ENDING BewitchmentRituals.zs");
