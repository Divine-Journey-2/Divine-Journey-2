#loader preinit
# Author: WaitingIdly

import dj2addons.totemic.Instruments;

print("STARTING Instruments.zs");

// Increase the amount of music provided by each instrument
Instruments.modifyMusicValues("totemic:flute", 5, 1.3);
Instruments.modifyMusicValues("totemic:drum", 7, 1.3);
Instruments.modifyMusicValues("totemic:wind_chime", 3, 1.3);
Instruments.modifyMusicValues("totemic:jingle_dress", 5, 1.3);
Instruments.modifyMusicValues("totemic:rattle", 8, 1.3);
Instruments.modifyMusicValues("totemic:eagle_bone_whistle", 10, 1.3);

print("ENDING Instruments.zs");
