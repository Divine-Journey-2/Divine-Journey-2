#priority 9
# Author: Atricos

import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Melting;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Sawmill;
import mods.mekanism.sawmill;

print("STARTING Rods.zs");

# Stone Rod
recipes.remove(<microblockcbe:stone_rod>);
<ore:rodStone>.remove(<microblockcbe:stone_rod>);

# Iron Rod
recipes.remove(<immersiveengineering:material:1>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:1>);
recipes.addShaped(<immersiveengineering:material:1>, [[<minecraft:iron_ingot>],[<minecraft:iron_ingot>]]);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:1>, <minecraft:iron_ingot>, <immersiveengineering:mold:2>, 2400, 1);
#recipes.replaceAllOccurences(<ore:stickIron>, <immersiveengineering:material:1>, <*>);
#recipes.replaceAllOccurences(<ore:rodIron>, <immersiveengineering:material:1>, <*>);
recipes.remove(<lightningcraft:rod>);
<ore:rodIron>.remove(<lightningcraft:rod>);
recipes.remove(<immersiveengineering:metal_ladder>);
recipes.addShaped(<immersiveengineering:metal_ladder> * 3, [[<immersiveengineering:material:1>,null,<immersiveengineering:material:1>],[<immersiveengineering:material:1>,<immersiveengineering:material:1>,<immersiveengineering:material:1>],[<immersiveengineering:material:1>,null,<immersiveengineering:material:1>]]);
recipes.remove(<immersiveengineering:cloth_device:2>);
recipes.addShaped(<immersiveengineering:cloth_device:2> * 3, [[<immersiveengineering:material:1>,<immersiveengineering:material:1>,<immersiveengineering:material:1>],[<immersiveengineering:material:5>,<immersiveengineering:material:5>,<immersiveengineering:material:5>],[<immersiveengineering:material:5>,<immersiveengineering:material:5>,<immersiveengineering:material:5>]]);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <immersiveengineering:material:1>);
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 144, <immersiveengineering:material:1>, 591);

# Gold Rod
mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <lightningcraft:rod:5>);
mods.tconstruct.Melting.addRecipe(<liquid:gold> * 144, <lightningcraft:rod:5>, 444);

# Copper Rod
#recipes.replaceAllOccurences(<ore:stickCopper>, <lightningcraft:rod:6>, <*>);
#recipes.replaceAllOccurences(<ore:rodCopper>, <lightningcraft:rod:6>, <*>);
mods.tconstruct.Melting.removeRecipe(<liquid:copper>, <lightningcraft:rod:6>);
mods.tconstruct.Melting.addRecipe(<liquid:copper> * 144, <lightningcraft:rod:6>, 450);

# Tin Rod
recipes.remove(<lightningcraft:rod:3>);
recipes.addShaped(<lightningcraft:rod:3>, [[<ore:ingotTin>],[<ore:ingotTin>]]);
mods.immersiveengineering.MetalPress.removeRecipe(<lightningcraft:rod:3>);
mods.immersiveengineering.MetalPress.addRecipe(<lightningcraft:rod:3>, <ore:ingotTin>, <immersiveengineering:mold:2>, 2400, 1);
mods.tconstruct.Melting.removeRecipe(<liquid:tin>, <lightningcraft:rod:3>);
mods.tconstruct.Melting.addRecipe(<liquid:tin> * 144, <lightningcraft:rod:3>, 331);

# Lead Rod
recipes.remove(<lightningcraft:rod:2>);
recipes.addShaped(<lightningcraft:rod:2>, [[<ore:ingotLead>],[<ore:ingotLead>]]);
mods.immersiveengineering.MetalPress.removeRecipe(<lightningcraft:rod:2>);
mods.immersiveengineering.MetalPress.addRecipe(<lightningcraft:rod:2>, <ore:ingotLead>, <immersiveengineering:mold:2>, 2400, 1);
mods.tconstruct.Melting.removeRecipe(<liquid:lead>, <lightningcraft:rod:2>);
mods.tconstruct.Melting.addRecipe(<liquid:lead> * 144, <lightningcraft:rod:2>, 362);

# Silver Rod
recipes.addShaped(<contenttweaker:silver_rod>, [[<thermalfoundation:material:130>],[<thermalfoundation:material:130>]]);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:silver_rod>, <thermalfoundation:material:130>, <immersiveengineering:mold:2>, 2400, 1);
mods.tconstruct.Melting.removeRecipe(<liquid:silver>, <contenttweaker:silver_rod>);
mods.tconstruct.Melting.addRecipe(<liquid:silver> * 144, <contenttweaker:silver_rod>, 411);

# Aluminum Rod (recipe is in ImmersiveEngineering.zs)
recipes.remove(<immersiveengineering:material:3>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:3>);
recipes.addShaped(<immersiveengineering:material:3>, [[<ore:ingotAluminum>],[<ore:ingotAluminum>]]);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:3>, <ore:ingotAluminum>, <immersiveengineering:mold:2>, 2400, 1);
#recipes.replaceAllOccurences(<ore:stickAluminum>, <immersiveengineering:material:3>, <*>);
#recipes.replaceAllOccurences(<ore:rodAluminum>, <immersiveengineering:material:3>, <*>);
recipes.remove(<lightningcraft:rod:4>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>, <immersiveengineering:material:3>);
mods.tconstruct.Melting.addRecipe(<liquid:aluminum> * 144, <immersiveengineering:material:3>, 318);

# Steel Rod
recipes.remove(<immersiveengineering:material:2>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:2>);
recipes.addShaped(<immersiveengineering:material:2>, [[<ore:ingotSteel>],[<ore:ingotSteel>]]);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:2>, <ore:ingotSteel>, <immersiveengineering:mold:2>, 2400, 1);
#recipes.replaceAllOccurences(<ore:stickSteel>, <immersiveengineering:material:2>, <*>);
#recipes.replaceAllOccurences(<ore:rodSteel>, <immersiveengineering:material:2>, <*>);
recipes.remove(<lightningcraft:rod:1>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:material:2>);
mods.tconstruct.Melting.addRecipe(<liquid:steel> * 144, <immersiveengineering:material:2>, 537);

# Titanium Rod
recipes.addShaped(<contenttweaker:titanium_rod>, [[<galacticraftplanets:item_basic_asteroids>],[<galacticraftplanets:item_basic_asteroids>]]);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:titanium_rod>, <galacticraftplanets:item_basic_asteroids>, <immersiveengineering:mold:2>, 2400, 1);
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>, <contenttweaker:titanium_rod>);
mods.tconstruct.Melting.addRecipe(<liquid:titanium> * 144, <contenttweaker:titanium_rod>, 984);

# Electricium Rod
recipes.remove(<lightningcraft:rod:7>);
recipes.addShaped(<lightningcraft:rod:7>, [[<ore:ingotElectricium>],[<ore:ingotElectricium>]]);
mods.immersiveengineering.MetalPress.removeRecipe(<lightningcraft:rod:7>);
mods.immersiveengineering.MetalPress.addRecipe(<lightningcraft:rod:7>, <ore:ingotElectricium>, <immersiveengineering:mold:2>, 2400, 1);
mods.tconstruct.Melting.removeRecipe(<liquid:electricium>, <lightningcraft:rod:7>);
mods.tconstruct.Melting.addRecipe(<liquid:electricium> * 144, <lightningcraft:rod:7>, 611);

# Skyfather Rod
recipes.remove(<lightningcraft:rod:8>);
recipes.addShaped(<lightningcraft:rod:8>, [[<ore:ingotSkyfather>],[<ore:ingotSkyfather>]]);
mods.immersiveengineering.MetalPress.removeRecipe(<lightningcraft:rod:8>);
mods.immersiveengineering.MetalPress.addRecipe(<lightningcraft:rod:8>, <ore:ingotSkyfather>, <immersiveengineering:mold:2>, 2400, 1);
mods.tconstruct.Melting.removeRecipe(<liquid:skyfather>, <lightningcraft:rod:8>);
mods.tconstruct.Melting.addRecipe(<liquid:skyfather> * 144, <lightningcraft:rod:8>, 400);

# Mystic Rod
recipes.remove(<lightningcraft:rod:9>);
recipes.addShaped(<lightningcraft:rod:9>, [[<ore:ingotMystic>],[<ore:ingotMystic>]]);
mods.immersiveengineering.MetalPress.removeRecipe(<lightningcraft:rod:9>);
mods.immersiveengineering.MetalPress.addRecipe(<lightningcraft:rod:9>, <ore:ingotMystic>, <immersiveengineering:mold:2>, 2400, 1);
mods.tconstruct.Melting.removeRecipe(<liquid:mystic>, <lightningcraft:rod:9>);
mods.tconstruct.Melting.addRecipe(<liquid:mystic> * 144, <lightningcraft:rod:9>, 735);

# Add rods to sawmills
function addRodToSawmill(input as IItemStack, output as IItemStack) {
    mods.thermalexpansion.Sawmill.addRecipe(output, input, 4000);
    mods.mekanism.sawmill.addRecipe(input, output);
}

addRodToSawmill(<thermalfoundation:material:132>, <immersiveengineering:material:3>);
addRodToSawmill(<minecraft:iron_ingot>, <immersiveengineering:material:1>);
addRodToSawmill(<thermalfoundation:material:130>, <contenttweaker:silver_rod>);
addRodToSawmill(<galacticraftplanets:item_basic_asteroids>, <contenttweaker:titanium_rod>);
addRodToSawmill(<thermalfoundation:material:131>, <lightningcraft:rod:2>);
addRodToSawmill(<thermalfoundation:material:129>, <lightningcraft:rod:3>);
addRodToSawmill(<minecraft:gold_ingot>, <lightningcraft:rod:5>);
addRodToSawmill(<thermalfoundation:material:128>, <lightningcraft:rod:6>);
addRodToSawmill(<thermalfoundation:material:160>, <immersiveengineering:material:2>);
addRodToSawmill(<lightningcraft:ingot:2>, <lightningcraft:rod:9>);
addRodToSawmill(<lightningcraft:ingot>, <lightningcraft:rod:7>);
addRodToSawmill(<lightningcraft:ingot:1>, <lightningcraft:rod:8>);

print("ENDING Rods.zs");
