# Author: Atricos, WaitingIdly

import mods.immersiveengineering.MetalPress;
import mods.thermalexpansion.Transposer;
import mods.immersiveengineering.Blueprint;
import mods.industrialforegoing.LaserDrill;
import mods.botania.Orechid;
import mods.tconstruct.Melting;
import mods.bloodmagic.AlchemyTable;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;
import crafttweaker.item.IItemStack;
import mods.astralsorcery.Grindstone;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.immersiveengineering.ArcFurnace;
import mods.extrautils2.Crusher as EUCrusher;
import moretweaker.lightningcraft.LightningCrusher;
import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Excavator;

print("STARTING ImmersiveEngineering.zs");

# Engineer's Hammer
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [[null,<contenttweaker:baykoks_bloodied_stone>,<thermalfoundation:material:32>],[null,<totemic:buffalo_items:1>,<contenttweaker:baykoks_bloodied_stone>],[<lightningcraft:rod:6>,null,null]]);

# Coke Brick
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration> * 2, [[<ore:ingotOsmium>,<minecraft:brick>,<ore:ingotOsmium>],[<minecraft:brick>,<contenttweaker:baykoks_bloodied_stone>,<minecraft:brick>],[<ore:ingotOsmium>,<minecraft:brick>,<ore:ingotOsmium>]]);

# Blast Brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 2, [[<ore:ingotInvar>,<minecraft:brick>,<ore:ingotInvar>],[<minecraft:brick>,<contenttweaker:baykoks_bloodied_stone>,<minecraft:brick>],[<ore:ingotInvar>,<minecraft:brick>,<ore:ingotInvar>]]);

# Treated Wood Planks (Using an Ore Dictionary gives an error, and it's buggy and doesn't nearly add all types of planks...)
for plank in <ore:plankWood>.items {
	mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, plank, <liquid:creosote> * 100, 2500);
}
for i in 0 to 6 {
	mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <minecraft:planks>.withDamage(i), <liquid:creosote> * 100, 2500);
}
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <divinerpg:divine_planks>, <liquid:creosote> * 100, 2500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <divinerpg:frozen_planks>, <liquid:creosote> * 100, 2500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <divinerpg:eden_planks>, <liquid:creosote> * 100, 2500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <divinerpg:wildwood_planks>, <liquid:creosote> * 100, 2500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <divinerpg:apalachia_planks>, <liquid:creosote> * 100, 2500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <divinerpg:skythern_planks>, <liquid:creosote> * 100, 2500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <divinerpg:mortum_planks>, <liquid:creosote> * 100, 2500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <divinerpg:eucalyptus_planks>, <liquid:creosote> * 100, 2500);
for i in 1 to 13 {
	mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <erebus:planks>.withDamage(i), <liquid:creosote> * 100, 2500);
}
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <extrautils2:ironwood_planks>, <liquid:creosote> * 100, 2500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <extrautils2:ironwood_planks:1>, <liquid:creosote> * 100, 2500);
for i in 0 to 9 {
	mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <natura:overworld_planks>.withDamage(i), <liquid:creosote> * 100, 2500);
}
for i in 0 to 4 {
	mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <natura:nether_planks>.withDamage(i), <liquid:creosote> * 100, 2500);
}
for i in 0 to 16 {
	mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <quark:stained_planks>.withDamage(i), <liquid:creosote> * 100, 2500);
}
for i in 0 to 6 {
	mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <quark:vertical_planks>.withDamage(i), <liquid:creosote> * 100, 2500);
}
for i in 0 to 16 {
	mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <quark:vertical_stained_planks>.withDamage(i), <liquid:creosote> * 100, 2500);
}
for i in 0 to 5 {
	mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <twilightforest:tower_wood>.withDamage(i), <liquid:creosote> * 100, 2500);
}
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <totemic:cedar_plank>, <liquid:creosote> * 100, 2500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <traverse:fir_planks>, <liquid:creosote> * 100, 2500);

# Engineer's Workbench
recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped(<immersiveengineering:wooden_device0:2>, [[<bibliocraft:paintingpress>,null,null],[<ore:plankTreatedWood>,<ore:plankTreatedWood>,<ore:plankTreatedWood>],[<ore:fenceTreatedWood>,<ore:workbench>,<ore:fenceTreatedWood>]]);

# Wires
function wires_function(input as IItemStack, output as IItemStack) {
	recipes.remove(output);
	recipes.addShapeless(output, [input, <minecraft:shears>.anyDamage().transformDamage(1)]);
	recipes.addShapeless(output, [input, <immersiveengineering:tool:1>]);
	mods.immersiveengineering.MetalPress.removeRecipe(output);
	mods.immersiveengineering.MetalPress.addRecipe(output * 2, input, <immersiveengineering:mold:4>, 3000);
    mods.thermalexpansion.Sawmill.addRecipe(output * 2, input, 4000);
    mods.mekanism.sawmill.addRecipe(input, output * 2);
}

# Copper Wire
wires_function(<thermalfoundation:material:320>, <immersiveengineering:material:20>);

# Electrum Wire
wires_function(<thermalfoundation:material:353>, <immersiveengineering:material:21>);

# Aluminium Wire
wires_function(<thermalfoundation:material:324>, <immersiveengineering:material:22>);

# Steel Wire
wires_function(<thermalfoundation:material:352>, <immersiveengineering:material:23>);

# Blueprints
recipes.remove(<immersiveengineering:blueprint>);
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}), [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), [[<thermalfoundation:material:352>,<ore:string>,<thermalfoundation:material:352>],[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}), [[<ore:ingotSteel>,<roots:living_arrow>,<ore:ingotSteel>],[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}), [[<thermalfoundation:material:352>,<roots:living_arrow>,<thermalfoundation:material:352>],[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}), [[<immersiveengineering:material:19>,<immersiveengineering:material:19>,<immersiveengineering:material:19>],[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

# Iron Mechanical Component
recipes.remove(<immersiveengineering:material:8>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:8>);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:8>, [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <ore:ingotOsmium>]);

# Steel Mechanical Component
recipes.remove(<immersiveengineering:material:9>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:9>);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:9>, [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <ore:ingotOsmium>]);

# Vacuum Tube
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:26>);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:26> * 2, [<thermalfoundation:material:354>, <thermalfoundation:material:325>, <ore:blockGlassOrange>, <immersiveengineering:material:20>]);

# Circuit Board
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:27>);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:27>, [<immersiveengineering:material:26>, <immersiveengineering:material:26>, <immersiveengineering:stone_decoration:8>, <thermalfoundation:material:320>]);

# Wire Connectors
recipes.remove(<immersiveengineering:connector>);
recipes.addShaped(<immersiveengineering:connector>, [[null,<ore:ingotCopper>,null],[<minecraft:hardened_clay>,<ore:ingotCopper>,<minecraft:hardened_clay>],[<minecraft:hardened_clay>,<ore:ingotSteel>,<minecraft:hardened_clay>]]);
recipes.remove(<immersiveengineering:connector:2>);
recipes.addShaped(<immersiveengineering:connector:2>, [[null,<minecraft:iron_ingot>,null],[<minecraft:hardened_clay>,<minecraft:iron_ingot>,<minecraft:hardened_clay>],[<minecraft:hardened_clay>,<ore:ingotSteel>,<minecraft:hardened_clay>]]);
recipes.remove(<immersiveengineering:connector:4>);
recipes.addShaped(<immersiveengineering:connector:4>, [[null,<ore:ingotAluminum>,null],[<minecraft:hardened_clay>,<ore:ingotAluminum>,<minecraft:hardened_clay>],[<minecraft:hardened_clay>,<ore:ingotSteel>,<minecraft:hardened_clay>]]);
recipes.remove(<immersiveengineering:connector:12>);
recipes.addShaped(<immersiveengineering:connector:12>, [[<ore:ingotElectrum>,<minecraft:redstone>,<ore:ingotElectrum>],[<minecraft:hardened_clay>,<ore:ingotSteel>,<minecraft:hardened_clay>]]);

# Wire Coils
recipes.remove(<immersiveengineering:wirecoil>);
recipes.addShaped(<immersiveengineering:wirecoil>, [[null,<immersiveengineering:material:20>,null],[<immersiveengineering:material:20>,<ore:stickWood>,<immersiveengineering:material:20>],[null,<immersiveengineering:material:20>,null]]);
recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.addShaped(<immersiveengineering:wirecoil:1>, [[null,<immersiveengineering:material:21>,null],[<immersiveengineering:material:21>,<ore:stickWood>,<immersiveengineering:material:21>],[null,<immersiveengineering:material:21>,null]]);
recipes.remove(<immersiveengineering:wirecoil:2>);
recipes.addShaped(<immersiveengineering:wirecoil:2>, [[null,<immersiveengineering:material:22>,null],[<immersiveengineering:material:23>,<ore:stickWood>,<immersiveengineering:material:23>],[null,<immersiveengineering:material:22>,null]]);
recipes.addShaped(<immersiveengineering:wirecoil:2>, [[null,<immersiveengineering:material:23>,null],[<immersiveengineering:material:22>,<ore:stickWood>,<immersiveengineering:material:22>],[null,<immersiveengineering:material:23>,null]]);
recipes.remove(<immersiveengineering:wirecoil:5>);
recipes.addShaped(<immersiveengineering:wirecoil:5>, [[null,<immersiveengineering:material:22>,null],[<minecraft:redstone>,<ore:stickWood>,<minecraft:redstone>],[null,<immersiveengineering:material:22>,null]]);
recipes.addShaped(<immersiveengineering:wirecoil:5>, [[null,<minecraft:redstone>,null],[<immersiveengineering:material:22>,<ore:stickWood>,<immersiveengineering:material:22>],[null,<minecraft:redstone>,null]]);

# Wire Relays
recipes.remove(<immersiveengineering:connector:1>);
recipes.addShaped(<immersiveengineering:connector:1>, [[null,<ore:ingotCopper>,null],[<minecraft:hardened_clay>,<ore:ingotSteel>,<minecraft:hardened_clay>]]);
recipes.remove(<immersiveengineering:connector:3>);
recipes.addShaped(<immersiveengineering:connector:3>, [[null,<minecraft:iron_ingot>,null],[<minecraft:hardened_clay>,<ore:ingotSteel>,<minecraft:hardened_clay>]]);
recipes.remove(<immersiveengineering:stone_decoration:8>);
recipes.addShaped(<immersiveengineering:stone_decoration:8>, [[null,<ore:dustSteel>,null],[<ore:blockGlassLime>,<ore:ingotSteel>,<ore:blockGlassLime>],[null,<ore:dustSteel>,null]]);
recipes.remove(<immersiveengineering:connector:5>);
recipes.addShaped(<immersiveengineering:connector:5>, [[null,<ore:ingotAluminum>,null],[<immersiveengineering:stone_decoration:8>,<ore:ingotAluminum>,<immersiveengineering:stone_decoration:8>],[<immersiveengineering:stone_decoration:8>,<ore:ingotSteel>,<immersiveengineering:stone_decoration:8>]]);

# Conveyor Belt
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), true);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [[<contenttweaker:treated_leather>,<contenttweaker:treated_leather>,<contenttweaker:treated_leather>],[<thermalfoundation:material:160>,<minecraft:redstone>,<thermalfoundation:material:160>]]);
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})]);

# Engineer's Wire Cutters
recipes.remove(<immersiveengineering:tool:1>);
recipes.addShaped(<immersiveengineering:tool:1>, [[null,<thermalfoundation:material:160>,null],[<immersiveengineering:treated_wood>,<ore:string>,<thermalfoundation:material:160>],[<immersiveengineering:material:2>,<immersiveengineering:treated_wood>,null]]);

# Steel Scaffolding
recipes.remove(<immersiveengineering:metal_decoration1:1>);
recipes.addShaped(<immersiveengineering:metal_decoration1:1> * 2, [[<thermalfoundation:material:160>,<immersiveengineering:material:2>,<thermalfoundation:material:160>],[<immersiveengineering:material:2>,null,<immersiveengineering:material:2>],[<thermalfoundation:material:160>,<immersiveengineering:material:2>,<thermalfoundation:material:160>]]);
recipes.addShapeless(<immersiveengineering:metal_decoration1:1>, [<immersiveengineering:metal_decoration1:3>]);
recipes.addShaped(<immersiveengineering:metal_decoration1:1>, [[<immersiveengineering:metal_decoration1_slab:1>],[<immersiveengineering:metal_decoration1_slab:1>]]);
#recipes.addShapeless(<immersiveengineering:metal_decoration1:1> * 3, [<immersiveengineering:steel_scaffolding_stairs0>,<immersiveengineering:steel_scaffolding_stairs0>,<immersiveengineering:steel_scaffolding_stairs0>,<immersiveengineering:steel_scaffolding_stairs0>]);

# Light Engineering Block
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4>, [[<minecraft:iron_ingot>,<immersiveengineering:material:8>,<minecraft:iron_ingot>],[<ore:ingotCopper>,<thermalfoundation:material:320>,<ore:ingotCopper>],[<minecraft:iron_ingot>,<immersiveengineering:material:8>,<minecraft:iron_ingot>]]);

# Heavy Engineering Block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5>, [[<ore:ingotSteel>,<immersiveengineering:material:9>,<ore:ingotSteel>],[<minecraft:piston>,<thermalfoundation:material:353>,<minecraft:piston>],[<ore:ingotSteel>,<immersiveengineering:material:9>,<ore:ingotSteel>]]);

# Redstone Engineering Block
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>, [[<minecraft:iron_ingot>,<projectred-core:resource_item:1>,<minecraft:iron_ingot>],[<projectred-core:resource_item:1>,<thermalfoundation:material:320>,<projectred-core:resource_item:1>],[<minecraft:iron_ingot>,<projectred-core:resource_item:1>,<minecraft:iron_ingot>]]);
<immersiveengineering:metal_decoration0:3>.addTooltip(format.red("Warning: ") + format.white("Do NOT build Immersive Engineering "));
<immersiveengineering:metal_decoration0:3>.addTooltip(format.white("multiblocks on a chunk border. Press F9 twice"));
<immersiveengineering:metal_decoration0:3>.addTooltip(format.white("to show them. Otherwise the machine could get"));
<immersiveengineering:metal_decoration0:3>.addTooltip(format.white("corrupted and eventually crash your world."));

# Iron Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:9>);
recipes.addShaped(<immersiveengineering:sheetmetal:9> * 4, [[<thermalfoundation:material:32>,<minecraft:iron_ingot>,<thermalfoundation:material:32>],[<minecraft:iron_ingot>,null,<minecraft:iron_ingot>],[<thermalfoundation:material:32>,<minecraft:iron_ingot>,<thermalfoundation:material:32>]]);

# Steel Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:8>);
recipes.addShaped(<immersiveengineering:sheetmetal:8> * 4, [[<thermalfoundation:material:352>,<ore:ingotSteel>,<thermalfoundation:material:352>],[<ore:ingotSteel>,null,<ore:ingotSteel>],[<thermalfoundation:material:352>,<ore:ingotSteel>,<thermalfoundation:material:352>]]);

# Copper Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:0>);
recipes.addShaped(<immersiveengineering:sheetmetal:0> * 4, [[<thermalfoundation:material:320>,<ore:ingotCopper>,<thermalfoundation:material:320>],[<ore:ingotCopper>,null,<ore:ingotCopper>],[<thermalfoundation:material:320>,<ore:ingotCopper>,<thermalfoundation:material:320>]]);

# Silver Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:3>);
recipes.addShaped(<immersiveengineering:sheetmetal:3> * 4, [[<thermalfoundation:material:322>,<ore:ingotSilver>,<thermalfoundation:material:322>],[<ore:ingotSilver>,null,<ore:ingotSilver>],[<thermalfoundation:material:322>,<ore:ingotSilver>,<thermalfoundation:material:322>]]);

# Aluminium Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:1>);
recipes.addShaped(<immersiveengineering:sheetmetal:1> * 4, [[<thermalfoundation:material:324>,<ore:ingotAluminum>,<thermalfoundation:material:324>],[<ore:ingotAluminum>,null,<ore:ingotAluminum>],[<thermalfoundation:material:324>,<ore:ingotAluminum>,<thermalfoundation:material:324>]]);

# Lead Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:2>);
recipes.addShaped(<immersiveengineering:sheetmetal:2> * 4, [[<thermalfoundation:material:323>,<ore:ingotLead>,<thermalfoundation:material:323>],[<ore:ingotLead>,null,<ore:ingotLead>],[<thermalfoundation:material:323>,<ore:ingotLead>,<thermalfoundation:material:323>]]);

# Nickel Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:4>);
recipes.addShaped(<immersiveengineering:sheetmetal:4> * 4, [[<thermalfoundation:material:325>,<ore:ingotNickel>,<thermalfoundation:material:325>],[<ore:ingotNickel>,null,<ore:ingotNickel>],[<thermalfoundation:material:325>,<ore:ingotNickel>,<thermalfoundation:material:325>]]);

# Gold Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:10>);
recipes.addShaped(<immersiveengineering:sheetmetal:10> * 4, [[<thermalfoundation:material:33>,<minecraft:gold_ingot>,<thermalfoundation:material:33>],[<minecraft:gold_ingot>,null,<minecraft:gold_ingot>],[<thermalfoundation:material:33>,<minecraft:gold_ingot>,<thermalfoundation:material:33>]]);

# Constantan Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:6>);
recipes.addShaped(<immersiveengineering:sheetmetal:6> * 4, [[<thermalfoundation:material:356>,<ore:ingotConstantan>,<thermalfoundation:material:356>],[<ore:ingotConstantan>,null,<ore:ingotConstantan>],[<thermalfoundation:material:356>,<ore:ingotConstantan>,<thermalfoundation:material:356>]]);

# Electrum Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:7>);
recipes.addShaped(<immersiveengineering:sheetmetal:7> * 4, [[<thermalfoundation:material:353>,<ore:ingotElectrum>,<thermalfoundation:material:353>],[<ore:ingotElectrum>,null,<ore:ingotElectrum>],[<thermalfoundation:material:353>,<ore:ingotElectrum>,<thermalfoundation:material:353>]]);

# Uranium Sheetmetal
recipes.remove(<immersiveengineering:sheetmetal:5>);
recipes.addShaped(<immersiveengineering:sheetmetal:5> * 4, [[<immersiveengineering:metal:35>,<ore:ingotUranium>,<immersiveengineering:metal:35>],[<ore:ingotUranium>,null,<ore:ingotUranium>],[<immersiveengineering:metal:35>,<ore:ingotUranium>,<immersiveengineering:metal:35>]]);

# Sheetmetal Slabs back into Sheetmetal
for i in 0 to 11 {
	recipes.addShaped(<immersiveengineering:sheetmetal>.withDamage(i), [[<immersiveengineering:sheetmetal_slab>.withDamage(i)],[<immersiveengineering:sheetmetal_slab>.withDamage(i)]]);
}

# External Heater
recipes.remove(<immersiveengineering:metal_device1:1>);
recipes.addShaped(<immersiveengineering:metal_device1:1>, [[<ore:ingotSteel>,<ore:ingotOsmium>,<ore:ingotSteel>],[<ore:ingotOsmium>,<immersiveengineering:metal_decoration0>,<ore:ingotOsmium>],[<ore:ingotSteel>,<minecraft:redstone>,<ore:ingotSteel>]]);

# Charging Station
recipes.remove(<immersiveengineering:metal_device1:5>);
recipes.addShaped(<immersiveengineering:metal_device1:5>, [[<ore:ingotSteel>,<immersiveengineering:connector:2>,<ore:ingotSteel>],[<ore:blockGlassLightGray>,<ore:blockGlassLightGray>,<ore:blockGlassLightGray>],[<ore:plankTreatedWood>,<immersiveengineering:metal_decoration0>,<ore:plankTreatedWood>]]);

# Fluid Pipe
recipes.remove(<immersiveengineering:metal_device1:6>);
recipes.addShaped(<immersiveengineering:metal_device1:6> * 3, [[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>],[<ore:paper>,<ore:paper>,<ore:paper>],[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>]]);

# Water Wheel
recipes.remove(<immersiveengineering:wooden_device1>);
recipes.addShaped(<immersiveengineering:wooden_device1>, [[null,<immersiveengineering:material:10>,null],[<immersiveengineering:material:10>,<immersiveengineering:material:2>,<immersiveengineering:material:10>],[null,<immersiveengineering:material:10>,null]]);

# Kinetic Dynamo
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<minecraft:redstone>,<immersiveengineering:metal_decoration0>,<minecraft:redstone>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Graphite Electrode (can only be made in the Engineer's Workbench)
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>);

# LV Capacitor
recipes.remove(<immersiveengineering:metal_device0:0>);
recipes.addShaped(<immersiveengineering:metal_device0:0>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<ore:ingotSteel>,<immersiveengineering:metal_decoration0>,<ore:ingotSteel>],[<immersiveengineering:treated_wood>,<minecraft:redstone>,<immersiveengineering:treated_wood>]]);

# MV Capacitor
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.addShaped("immersive_capacitor_upgrade1", <immersiveengineering:metal_device0:1>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<thermalfoundation:material:353>,<immersiveengineering:metal_device0>.marked("capacitor"),<thermalfoundation:material:353>],[<immersiveengineering:treated_wood>,<ore:blockRedstone>,<immersiveengineering:treated_wood>]],
function(out,ins,cInfo) {
	if(ins.capacitor.tag has "energyStorage") {
		return out.withTag({energyStorage: ins.capacitor.tag.energyStorage});
	} else {
		return out;
	}
}, null);

# HV Capacitor
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped("immersive_capacitor_upgrade2", <immersiveengineering:metal_device0:2>, [[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<thermalfoundation:material:322>,<immersiveengineering:metal_device0:1>.marked("capacitor"),<thermalfoundation:material:322>],[<ore:blockLead>,<ore:blockRedstone>,<ore:blockLead>]],
function(out,ins,cInfo) {
	if(ins.capacitor.tag has "energyStorage") {
		return out.withTag({energyStorage: ins.capacitor.tag.energyStorage});
	} else {
		return out;
	}
}, null);

# Thermoelectric Generator
recipes.remove(<immersiveengineering:metal_device1:3>);
recipes.addShaped(<immersiveengineering:metal_device1:3>, [[<thermalfoundation:material:356>,<thermalfoundation:material:356>,<thermalfoundation:material:356>],[<thermalfoundation:material:352>,<immersiveengineering:metal_device0:1>,<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<immersiveengineering:material:26>,<thermalfoundation:material:352>]]);

# Generator Block
recipes.remove(<immersiveengineering:metal_decoration0:6>);
recipes.addShaped(<immersiveengineering:metal_decoration0:6>, [[<thermalfoundation:material:352>,<thermalfoundation:material:353>,<thermalfoundation:material:352>],[<betternether:cincinnasite_forged>,<immersiveengineering:metal_device1:2>,<betternether:cincinnasite_forged>],[<thermalfoundation:material:352>,<thermalfoundation:material:353>,<thermalfoundation:material:352>]]);

# Radiator Block
recipes.remove(<immersiveengineering:metal_decoration0:7>);
recipes.addShaped(<immersiveengineering:metal_decoration0:7> * 2, [[<thermalfoundation:material:352>,<immersiveengineering:material:19>,<thermalfoundation:material:352>],[<immersiveengineering:material:19>,<ore:blockCopper>,<immersiveengineering:material:19>],[<thermalfoundation:material:352>,<immersiveengineering:material:19>,<thermalfoundation:material:352>]]);

# Transformer
recipes.remove(<immersiveengineering:connector:7>);
recipes.addShapedMirrored(<immersiveengineering:connector:7>, [[<immersiveengineering:connector>,null,<immersiveengineering:connector:2>],[<thermalfoundation:material:352>,<immersiveengineering:metal_decoration0:1>,<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# HV Transformer
recipes.remove(<immersiveengineering:connector:8>);
recipes.addShapedMirrored(<immersiveengineering:connector:8>, [[<immersiveengineering:connector:2>,null,<immersiveengineering:connector:4>],[<thermalfoundation:material:352>,<immersiveengineering:metal_decoration0:2>,<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Engineer's Voltometer
recipes.remove(<immersiveengineering:tool:2>);
recipes.addShaped(<immersiveengineering:tool:2>, [[<lightningcraft:rod:6>,<minecraft:compass>,<lightningcraft:rod:6>],[null,<ore:ingotCopper>,null]]);

# Current Transformer
recipes.remove(<immersiveengineering:connector:11>);
recipes.addShaped(<immersiveengineering:connector:11>, [[null,<immersiveengineering:tool:2>,null],[<minecraft:hardened_clay>,<immersiveengineering:metal_decoration0>,<minecraft:hardened_clay>],[<thermalfoundation:material:352>,<immersiveengineering:metal_decoration0>,<thermalfoundation:material:352>]]);

# Revolver
recipes.remove(<immersiveengineering:revolver>);
recipes.addShapedMirrored(<immersiveengineering:revolver>, [[null,<thermalfoundation:material:352>,null],[<immersiveengineering:material:14>,<immersiveengineering:material:15>,<immersiveengineering:material:16>],[<immersiveengineering:material:13>,<immersiveengineering:material:2>,<immersiveengineering:material:13>]]);

# Precision Scope
recipes.remove(<immersiveengineering:toolupgrade:8>);
recipes.addShapedMirrored(<immersiveengineering:toolupgrade:8>, [[<immersiveengineering:material:2>,<thermalfoundation:material:320>,null],[<thermalfoundation:material:320>,<ore:paneGlassColorless>,<thermalfoundation:material:320>],[null,<thermalfoundation:material:320>,<immersiveengineering:material:2>]]);

# Mining Drill
recipes.remove(<immersiveengineering:drill>);
recipes.addShapedMirrored(<immersiveengineering:drill>, [[null,<immersiveengineering:material:9>,<immersiveengineering:material:13>],[<immersiveengineering:metal_decoration0:5>,<immersiveengineering:material:27>,<immersiveengineering:material:9>],[<thermalfoundation:material:352>,<immersiveengineering:metal_decoration0:5>,null]]);

# Pressurized Air Tank
recipes.remove(<immersiveengineering:toolupgrade>);
recipes.addShapedMirrored(<immersiveengineering:toolupgrade>, [[<minecraft:bucket>,<thermalfoundation:material:323>,null],[<thermalfoundation:material:323>,<minecraft:bucket>,<thermalfoundation:material:323>],[null,<thermalfoundation:material:323>,<immersiveengineering:material:8>]]);

# Advanced Lubrication System
recipes.remove(<immersiveengineering:toolupgrade:1>);
recipes.addShapedMirrored(<immersiveengineering:toolupgrade:1>, [[<liquid:plantoil> * 1000,<thermalfoundation:material:32>,null],[<thermalfoundation:material:32>,<liquid:plantoil> * 1000,<thermalfoundation:material:32>],[null,<thermalfoundation:material:32>,<immersiveengineering:material:8>]]);

# Large Tank
recipes.remove(<immersiveengineering:toolupgrade:3>);
recipes.addShapedMirrored(<immersiveengineering:toolupgrade:3>, [[<immersiveengineering:material:8>,<thermalfoundation:material:352>,null],[<thermalfoundation:material:352>,<minecraft:bucket>,<thermalfoundation:material:357>],[null,<thermalfoundation:material:357>,<minecraft:bucket>]]);

# Chemical Thrower
recipes.remove(<immersiveengineering:chemthrower>);
recipes.addShaped(<immersiveengineering:chemthrower>, [[<immersiveengineering:toolupgrade>,null,<immersiveengineering:metal_device1:6>],[<immersiveengineering:metal_decoration0:5>,<immersiveengineering:metal_device1:6>,<immersiveengineering:metal_decoration0:5>],[<immersiveengineering:metal_decoration0:5>,<immersiveengineering:material:13>,null]]);

# Focused Nozzle
recipes.remove(<immersiveengineering:toolupgrade:7>);
recipes.addShapedMirrored(<immersiveengineering:toolupgrade:7>, [[null,<thermalfoundation:material:352>,<thermalfoundation:material:352>],[<immersiveengineering:metal_device1:6>,<immersiveengineering:metal_device1:6>,<minecraft:hopper>],[null,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Disabling Uranium Ores
val UraniumOres = [<immersiveengineering:ore:5>, <undergroundbiomes:igneous_stone_immersiveengineering_ore_5:*>, <undergroundbiomes:metamorphic_stone_immersiveengineering_ore_5:*>, <undergroundbiomes:sedimentary_stone_immersiveengineering_ore_5:*>] as IItemStack[];

mods.mekanism.combiner.removeRecipe(<immersiveengineering:ore:5>);
mods.botania.Orechid.removeOre(<ore:oreUranium>);
recipes.remove(<immersiveengineering:metal:14>);
mods.astralsorcery.Grindstone.removeRecipe(<immersiveengineering:metal:14>);
mods.actuallyadditions.Crusher.removeRecipe(<immersiveengineering:metal:14>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:5>);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:5>, <immersiveengineering:metal:14>, null, 100, 512);
LightningCrusher.remove(<immersiveengineering:metal:14>);
LightningCrusher.add(<immersiveengineering:metal:14>, <immersiveengineering:metal:5>);
mods.mekanism.enrichment.removeRecipe(<immersiveengineering:ore:5>);
mods.thermalexpansion.Pulverizer.removeRecipe(<immersiveengineering:ore:5>);
mods.enderio.SagMill.removeRecipe(<immersiveengineering:ore:5>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>, <immersiveengineering:ore:5>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand:*>, <immersiveengineering:ore:5>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, <immersiveengineering:ore:5>);

for ore in UraniumOres {
	recipes.removeShapeless(<immersiveengineering:metal:5>, [ore, <*>]);
	recipes.removeShapeless(<immersiveengineering:metal:5>, [ore, <*>, <*>]);
	furnace.remove(<immersiveengineering:metal:5>, ore);
	mods.tconstruct.Melting.removeRecipe(<liquid:uranium>, ore);
	mods.bloodmagic.AlchemyTable.removeRecipe([ore, <bloodmagic:cutting_fluid>]);
	IECrusher.removeRecipesForInput(ore);
	EUCrusher.remove(ore);
}

# More Ethanol recipes
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <minecraft:pumpkin>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <minecraft:wheat>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <minecraft:carrot>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <minecraft:beetroot>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <actuallyadditions:item_misc:13>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <actuallyadditions:item_food:16>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <actuallyadditions:item_coffee_beans>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <aether_legacy:blue_berry>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 300, <aether_legacy:enchanted_blueberry>, 18000);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <atum:flax>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <atum:emmer>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <mysticalworld:aubergine>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <natura:materials>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 40, <natura:materials:3>, 3200);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 40, <natura:edibles:2>, 3200);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 40, <natura:edibles:3>, 3200);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 40, <natura:edibles:4>, 3200);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 40, <natura:edibles:5>, 3200);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 40, <natura:edibles:6>, 3200);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 40, <natura:edibles:7>, 3200);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 40, <natura:edibles:8>, 3200);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 40, <natura:edibles:9>, 3200);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <roots:moonglow_leaf>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <roots:pereskia>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <roots:spirit_herb>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <roots:wildroot>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <roots:wildewheet>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <roots:cloud_berry>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <roots:infernal_bulb>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <roots:dewgonia>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 80, <roots:stalicripe>, 6400);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 300, <minecraft:golden_apple>, 18000);

# More Plant Oil recipes
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <actuallyadditions:item_rice_seed>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <actuallyadditions:item_canola_seed>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 20, <actuallyadditions:item_flax_seed>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <actuallyadditions:item_coffee_seed>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 20, <atum:flax_seeds>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 120, <atum:emmer_seeds>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 140, <mysticalworld:aubergine_seed>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <natura:overworld_seeds>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 20, <natura:overworld_seeds:1>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 100, <roots:moonglow_seed>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 100, <roots:spirit_herb_seed>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 100, <roots:wildewheet_seed>, 6400);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 100, <roots:pereskia_bulb>, 6400);

# Conveyor fix
recipes.addHiddenShapeless("immersive_conveyor_fix", <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [<immersiveengineering:conveyor>]);
<immersiveengineering:conveyor>.addShiftTooltip(format.darkGray(format.italic("If you obtained a broken/bugged Conveyor, put you can craft it into a regular one.")));

# Engineer's Manual tooltip
<immersiveengineering:tool:3>.addTooltip(format.italic("Some text for custom recipes have"));
<immersiveengineering:tool:3>.addTooltip(format.italic("overflown, use JEI to look those up!"));

# Garden Cloche
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [[<mysticalagriculture:soul_glass>,<immersiveengineering:material:26>,<mysticalagriculture:soul_glass>],[<mysticalagriculture:soul_glass>,<mysticalagriculture:crafting:34>,<mysticalagriculture:soul_glass>],[<ore:plankTreatedWood>,<immersiveengineering:material:8>,<ore:plankTreatedWood>]]);

# Concrete from Gravel OreDict
recipes.remove(<immersiveengineering:stone_decoration:5>);
recipes.addShaped(<immersiveengineering:stone_decoration:5> * 12, [[<ore:crystalSlag>,<minecraft:clay_ball>,<ore:crystalSlag>],[<ore:gravel>,<liquid:water> * 1000,<ore:gravel>],[<ore:crystalSlag>,<minecraft:clay_ball>,<ore:crystalSlag>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:5> * 8, [[<ore:sand>,<minecraft:clay_ball>,<ore:sand>],[<ore:gravel>,<liquid:water> * 1000,<ore:gravel>],[<ore:sand>,<minecraft:clay_ball>,<ore:sand>]]);


# Creative Capacitor
mods.extendedcrafting.TableCrafting.addShaped(<immersiveengineering:metal_device0:3> * 3,
[[<alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>],
[<alchemistry:ingot:115>, <immersiveengineering:metal_device0:2>, <immersiveengineering:metal_device0:2>, <immersiveengineering:metal_device0:2>, <alchemistry:ingot:115>],
[<alchemistry:ingot:114>, <immersiveengineering:metal_device0:2>, <lightningcraft:lightning_cell:3>, <immersiveengineering:metal_device0:2>, <alchemistry:ingot:114>],
[<alchemistry:ingot:115>, <immersiveengineering:metal_device0:2>, <immersiveengineering:metal_device0:2>, <immersiveengineering:metal_device0:2>, <alchemistry:ingot:115>],
[<alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>, <alchemistry:ingot:112>]]);

print("ENDING ImmersiveEngineering.zs");
