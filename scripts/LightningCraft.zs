# Author: Atricos

import mods.immersiveengineering.MetalPress;

print("STARTING LightningCraft.zs");

# Copper Rod
recipes.remove(<lightningcraft:rod:6>);
recipes.addShaped(<lightningcraft:rod:6>, [[<ore:ingotCopper>],[<ore:ingotCopper>]]);
mods.immersiveengineering.MetalPress.addRecipe(<lightningcraft:rod:6>, <ore:ingotCopper>, <immersiveengineering:mold:2>, 2400);

# Gold Rod
recipes.remove(<lightningcraft:rod:5>);
recipes.addShaped(<lightningcraft:rod:5>, [[<minecraft:gold_ingot>],[<minecraft:gold_ingot>]]);
mods.immersiveengineering.MetalPress.removeRecipe(<lightningcraft:rod:5>);
mods.immersiveengineering.MetalPress.addRecipe(<lightningcraft:rod:5>, <minecraft:gold_ingot>, <immersiveengineering:mold:2>, 2400);

# Electricium Plate
recipes.remove(<lightningcraft:plate:7>);
recipes.addShapeless(<lightningcraft:plate:7>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <lightningcraft:ingot>, <lightningcraft:ingot>]);


print("ENDING LightningCraft.zs");