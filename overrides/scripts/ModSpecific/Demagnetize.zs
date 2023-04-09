# Author: WaitingIdly
import mods.actuallyadditions.AtomicReconstructor;

print("STARTING Demagnetize.zs");

# Demagnetizer
recipes.removeByRecipeName("demagnetize:demagnetizer");
recipes.addShaped(<demagnetize:demagnetizer>, [[<thermalfoundation:material:323>,<quantumflux:magnet>,<thermalfoundation:material:323>],[<thermalfoundation:material:323>,<enderio:item_material:1>,<thermalfoundation:material:323>],[<thermalfoundation:material:323>,<minecraft:redstone_torch>,<thermalfoundation:material:323>]]);

# Advanced Demagnetizer
recipes.removeByRecipeName("demagnetize:demagnetizer_advanced");
AtomicReconstructor.addRecipe(<demagnetize:demagnetizer_advanced>, <demagnetize:demagnetizer>, 100000);


print("ENDING Demagnetize.zs");
