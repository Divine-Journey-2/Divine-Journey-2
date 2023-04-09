# Author: Atricos

import mods.tconstruct.Casting;
import mods.thermalexpansion.Crucible;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Melting;

print("STARTING TinkersConstruct.zs");

# Blank Pattern
recipes.remove(<tconstruct:pattern>);
recipes.addShaped(<tconstruct:pattern>, [[<ore:plankWood>,<ore:plankWood>,<ore:stickWood>],[<ore:plankWood>,<ore:ingotIron>,<ore:plankWood>],[<ore:stickWood>,<ore:plankWood>,<ore:plankWood>]]);

# Pattern Chest
recipes.remove(<tconstruct:tooltables:4>);
recipes.addShaped(<tconstruct:tooltables:4>, [[<tconstruct:pattern>],[<ore:chestWood>]]);

# Smeltery Parts
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>, [[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,<ore:blockRedstone>,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>]]);
recipes.remove(<tconstruct:seared_tank:0>);
recipes.addShaped(<tconstruct:seared_tank:0>, [[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,<ore:blockGlass>,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>]]);
recipes.remove(<tconstruct:seared_tank:1>);
recipes.addShaped(<tconstruct:seared_tank:1>, [[<tconstruct:seared:3>,<ore:blockGlass>,<tconstruct:seared:3>],[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],[<tconstruct:seared:3>,<ore:blockGlass>,<tconstruct:seared:3>]]);
recipes.remove(<tconstruct:smeltery_io>);
recipes.addShaped(<tconstruct:smeltery_io>, [[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<tconstruct:faucet>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>]]);
recipes.remove(<tconstruct:casting:1>);
recipes.addShaped(<tconstruct:casting:1>, [[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<minecraft:cauldron>,<tconstruct:seared:3>]]);
recipes.remove(<tconstruct:casting:0>);
recipes.addShaped(<tconstruct:casting:0>, [[<tconstruct:seared:3>,<thermalfoundation:material:32>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>]]);
recipes.remove(<tconstruct:channel>);
recipes.addShaped(<tconstruct:channel>, [[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<ore:ingotBrickSeared>,<ore:ingotBrickSeared>,<ore:ingotBrickSeared>]]);
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.addShaped(<tconstruct:seared_furnace_controller>, [[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,<minecraft:furnace>,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>]]);

# Wooden Hopper
recipes.remove(<tconstruct:wooden_hopper>);

# Slime Boots and Slimslings are OP
recipes.remove(<tconstruct:slime_boots:*>);
recipes.addShaped(<tconstruct:slime_boots:0>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<minecraft:slime_ball>,null,<minecraft:slime_ball>],[<tconstruct:slime_congealed:0>,null,<tconstruct:slime_congealed:0>]]);
recipes.addShaped(<tconstruct:slime_boots:1>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:1>,null,<tconstruct:edible:1>],[<tconstruct:slime_congealed:1>,null,<tconstruct:slime_congealed:1>]]);
recipes.addShaped(<tconstruct:slime_boots:2>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:2>,null,<tconstruct:edible:2>],[<tconstruct:slime_congealed:2>,null,<tconstruct:slime_congealed:2>]]);
recipes.addShaped(<tconstruct:slime_boots:3>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:3>,null,<tconstruct:edible:3>],[<tconstruct:slime_congealed:3>,null,<tconstruct:slime_congealed:3>]]);
recipes.addShaped(<tconstruct:slime_boots:4>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:4>,null,<tconstruct:edible:4>],[<tconstruct:slime_congealed:4>,null,<tconstruct:slime_congealed:4>]]);
<ore:slimeBoots>.addItems([<tconstruct:slime_boots:*>]);
recipes.remove(<tconstruct:slimesling:*>);
recipes.addShaped(<tconstruct:slimesling:0>, [[<ore:string>,<tconstruct:slime_congealed:0>,<contenttweaker:industrial_slime_ball>],[<minecraft:slime_ball>,<minecraft:slime_ball>,<minecraft:slime_ball>],[null,<contenttweaker:industrial_slime_ball>,null]]);
recipes.addShaped(<tconstruct:slimesling:1>, [[<ore:string>,<tconstruct:slime_congealed:1>,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:1>,<tconstruct:edible:1>,<tconstruct:edible:1>],[null,<contenttweaker:industrial_slime_ball>,null]]);
recipes.addShaped(<tconstruct:slimesling:2>, [[<ore:string>,<tconstruct:slime_congealed:2>,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:2>,<tconstruct:edible:2>,<tconstruct:edible:2>],[null,<contenttweaker:industrial_slime_ball>,null]]);
recipes.addShaped(<tconstruct:slimesling:3>, [[<ore:string>,<tconstruct:slime_congealed:3>,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:3>,<tconstruct:edible:3>,<tconstruct:edible:3>],[null,<contenttweaker:industrial_slime_ball>,null]]);
recipes.addShaped(<tconstruct:slimesling:4>, [[<ore:string>,<tconstruct:slime_congealed:4>,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:4>,<tconstruct:edible:4>,<tconstruct:edible:4>],[null,<contenttweaker:industrial_slime_ball>,null]]);
<ore:slimeSling>.addItems([<tconstruct:slimesling:*>]);

# Additional Necrotic Bone recipe
recipes.addShaped(<tconstruct:materials:17>, [[<quark:black_ash>,<quark:black_ash>,<quark:black_ash>],[<quark:black_ash>,<minecraft:bone>,<quark:black_ash>],[<quark:black_ash>,<quark:black_ash>,<quark:black_ash>]]);

# Plate Cast
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);

# Gear Cast
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);

# Creative Modifier
mods.extendedcrafting.TableCrafting.addShaped(<tconstruct:materials:50>,
[[<extendedcrafting:singularity:5>,<alchemistry:ingot:91>,<divinerpg:golden_fury>,<alchemistry:ingot:91>,<extendedcrafting:singularity:5>],
[<alchemistry:ingot:91>,<divinerpg:golden_fury>,<tconstruct:materials:16>,<divinerpg:golden_fury>,<alchemistry:ingot:91>],
[<divinerpg:golden_fury>,<tconstruct:materials:16>,<extendedcrafting:singularity_custom:104>,<tconstruct:materials:16>,<divinerpg:golden_fury>],
[<alchemistry:ingot:91>,<divinerpg:golden_fury>,<tconstruct:materials:16>,<divinerpg:golden_fury>,<alchemistry:ingot:91>],
[<extendedcrafting:singularity:5>,<alchemistry:ingot:91>,<divinerpg:golden_fury>,<alchemistry:ingot:91>,<extendedcrafting:singularity:5>]]);

# Piggybackpack
recipes.remove(<tconstruct:piggybackpack>);
recipes.addShaped(<tconstruct:piggybackpack>, [[null,<minecraft:string>,null],[<contenttweaker:industrial_leather>,<mekanism:enrichedalloy>,<contenttweaker:industrial_leather>],[<contenttweaker:industrial_leather>,<minecraft:string>,<contenttweaker:industrial_leather>]]);

function addMagmaCrucibleTinkersMoltenMetalRecipe(molten_metal as ILiquidStack, block as IItemStack, ingot as IItemStack, nugget as IItemStack) {
	# Energy: block: 32000, ingot: 4000, dust: 2000, plate: 4000, nugget: 500
	mods.thermalexpansion.Crucible.addRecipe(molten_metal * 1296, block, 32000);
	mods.thermalexpansion.Crucible.addRecipe(molten_metal * 144, ingot, 4000);
	mods.thermalexpansion.Crucible.addRecipe(molten_metal * 16, nugget, 500);
}

# Pig Iron
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:pigiron>, <tconstruct:metal:4>, <tconstruct:ingots:4>, <tconstruct:nuggets:4>);

# Knightslime
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:knightslime>, <tconstruct:metal:3>, <tconstruct:ingots:3>, <tconstruct:nuggets:3>);

# Aluminum Brass
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:alubrass>, <tconstruct:metal:5>, <tconstruct:ingots:5>, <tconstruct:nuggets:5>);

# Alchemical Brass
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:brass>, <thaumcraft:metal_brass>, <thaumcraft:ingot:2>, <thaumcraft:nugget:8>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:brass> * 144, <thaumcraft:ingot:2>, 4000);

# Obsidian
mods.thermalexpansion.Crucible.addRecipe(<liquid:lava> * 250, <thermalfoundation:material:770>, 75000);

# Clay
mods.thermalexpansion.Crucible.addRecipe(<liquid:clay> * 144, <minecraft:clay_ball>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:clay> * 576, <minecraft:clay>, 16000);

# Glass
mods.thermalexpansion.Crucible.addRecipe(<liquid:glass> * 1000, <ore:sand>.firstItem, 8000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:glass> * 1000, <ore:blockGlass>.firstItem, 8000);

# Ender Block
mods.thermalexpansion.Crucible.addRecipe(<liquid:ender> * 1000, <actuallyadditions:block_misc:6>, 80000);
mods.tconstruct.Melting.addRecipe(<liquid:ender> * 1000, <actuallyadditions:block_misc:6>, 900);
mods.tconstruct.Casting.addBasinRecipe(<actuallyadditions:block_misc:6>, null, <liquid:ender>, 1000);

# Electrical Steel
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:electrical_steel>, <enderio:block_alloy>, <enderio:item_alloy_ingot>, <enderio:item_alloy_nugget>);

# Energetic Alloy
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:energetic_alloy>, <enderio:block_alloy:1>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_nugget:1>);

# Vibrant Alloy
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:vibrant_alloy>, <enderio:block_alloy:2>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_nugget:2>);

# Redstone Alloy
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:redstone_alloy>, <enderio:block_alloy:3>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_nugget:3>);

# Conductive Iron
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:conductive_iron>, <enderio:block_alloy:4>, <enderio:item_alloy_ingot:4>, <enderio:item_alloy_nugget:4>);

# Pulsating Iron
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:pulsating_iron>, <enderio:block_alloy:5>, <enderio:item_alloy_ingot:5>, <enderio:item_alloy_nugget:5>);

# Dark Steel
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:dark_steel>, <enderio:block_alloy:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_nugget:6>);

# Soularium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:soularium>, <enderio:block_alloy:7>, <enderio:item_alloy_ingot:7>, <enderio:item_alloy_nugget:7>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:soularium> * 144, <enderio:item_material:74>, 2000);

# End Steel
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:end_steel>, <enderio:block_alloy:8>, <enderio:item_alloy_ingot:8>, <enderio:item_alloy_nugget:8>);

# Crude Steel
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:crude_steel>, <enderio:block_alloy_endergy>, <enderio:item_alloy_endergy_ingot>, <enderio:item_alloy_endergy_nugget>);

# Crystalline Alloy
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:crystalline_alloy>, <enderio:block_alloy_endergy:1>, <enderio:item_alloy_endergy_ingot:1>, <enderio:item_alloy_endergy_nugget:1>);

# Melodic Alloy
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:melodic_alloy>, <enderio:block_alloy_endergy:2>, <enderio:item_alloy_endergy_ingot:2>, <enderio:item_alloy_endergy_nugget:2>);

# Stellar Alloy
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:stellar_alloy>, <enderio:block_alloy_endergy:3>, <enderio:item_alloy_endergy_ingot:3>, <enderio:item_alloy_endergy_nugget:3>);

# Crystalline Pink Slime
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:crystalline_pink_slime>, <enderio:block_alloy_endergy:4>, <enderio:item_alloy_endergy_ingot:4>, <enderio:item_alloy_endergy_nugget:4>);

# Energetic Silver
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:energetic_silver>, <enderio:block_alloy_endergy:5>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_alloy_endergy_nugget:5>);

# Vivid Alloy
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:vivid_alloy>, <enderio:block_alloy_endergy:6>, <enderio:item_alloy_endergy_ingot:6>, <enderio:item_alloy_endergy_nugget:6>);

# Gravitite
mods.thermalexpansion.Crucible.addRecipe(<liquid:gravitite> * 144, <aether_legacy:enchanted_gravitite>, 4000);

# Valkyre Metal
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:valkyrie>, <tinkersaether:valkyrie_block>, <tinkersaether:valkyrie_ingot>, <tinkersaether:valkyrie_nugget>);

# Abyssalnite
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:moltenabyssalnite>, <abyssalcraft:ingotblock>, <abyssalcraft:abyingot>, <abyssalcraft:ingotnugget>);

# Refined Coralium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:moltenrefinedcoralium>, <abyssalcraft:ingotblock:1>, <abyssalcraft:cingot>, <abyssalcraft:ingotnugget:1>);

# Dreadium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:moltendreadium>, <abyssalcraft:ingotblock:2>, <abyssalcraft:dreadiumingot>, <abyssalcraft:ingotnugget:2>);

# Uranium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:uranium>, <immersiveengineering:storage:5>, <immersiveengineering:metal:5>, <immersiveengineering:metal:25>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:uranium> * 144, <immersiveengineering:metal:14>, 2000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:uranium> * 144, <immersiveengineering:metal:35>, 4000);

# Demon Metal
mods.thermalexpansion.Crucible.addRecipe(<liquid:xu_demonic_metal> * 1296, <extrautils2:simpledecorative:1>, 32000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:xu_demonic_metal> * 144, <extrautils2:ingredients:11>, 4000);

# Electricium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:electricium>, <lightningcraft:metal_block>, <lightningcraft:ingot>, <lightningcraft:nugget>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:electricium> * 144, <lightningcraft:plate:7>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:electricium> * 144, <lightningcraft:dust>, 2000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:electricium> * 144, <lightningcraft:rod:7>, 4000);

# Skyfather
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:skyfather>, <lightningcraft:metal_block:1>, <lightningcraft:ingot:1>, <lightningcraft:nugget:1>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:skyfather> * 144, <lightningcraft:plate:8>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:skyfather> * 144, <lightningcraft:dust:1>, 2000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:skyfather> * 144, <lightningcraft:rod:8>, 4000);

# Mystic
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:mystic>, <lightningcraft:metal_block:2>, <lightningcraft:ingot:2>, <lightningcraft:nugget:2>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:mystic> * 144, <lightningcraft:plate:9>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:mystic> * 144, <lightningcraft:dust:2>, 2000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:mystic> * 144, <lightningcraft:rod:9>, 4000);

# Soulium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:soulium>, <mysticalagriculture:ingot_storage:6>, <mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:45>);

# Base Essence
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:base_essence>, <mysticalagriculture:ingot_storage>, <mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:39>);

# Inferium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:inferium>, <mysticalagriculture:ingot_storage:1>, <mysticalagriculture:crafting:33>, <mysticalagriculture:crafting:40>);

# Prudentium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:prudentium>, <mysticalagriculture:ingot_storage:2>, <mysticalagriculture:crafting:34>, <mysticalagriculture:crafting:41>);

# Intermedium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:intermedium>, <mysticalagriculture:ingot_storage:3>, <mysticalagriculture:crafting:35>, <mysticalagriculture:crafting:42>);

# Superium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:superium>, <mysticalagriculture:ingot_storage:4>, <mysticalagriculture:crafting:36>, <mysticalagriculture:crafting:43>);

# Supremium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:supremium>, <mysticalagriculture:ingot_storage:5>, <mysticalagriculture:crafting:37>, <mysticalagriculture:crafting:44>);

# Alumite
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:alumite>, <plustic:alumiteblock>, <plustic:alumiteingot>, <plustic:alumitenugget>);

# Osgloglas
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:osgloglas>, <plustic:osgloglasblock>, <plustic:osgloglasingot>, <plustic:osgloglasnugget>);

# Osmiridium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:osmiridium>, <plustic:osmiridiumblock>, <plustic:osmiridiumingot>, <plustic:osmiridiumnugget>);

# Elementium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:elementium>, <botania:storage:2>, <botania:manaresource:7>, <botania:manaresource:19>);

# Mirion
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:mirion>, <plustic:mirionblock>, <plustic:mirioningot>, <plustic:mirionnugget>);

# Desh
mods.thermalexpansion.Crucible.addRecipe(<liquid:desh> * 1296, <lightningcraft:plate:9>, 32000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:desh> * 144, <lightningcraft:dust:2>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:desh> * 144, <galacticraftplanets:item_basic_mars:5>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:desh> * 144, <contenttweaker:desh_dust>, 2000);

# Thaumium
addMagmaCrucibleTinkersMoltenMetalRecipe(<liquid:thaumium>, <thaumcraft:metal_thaumium>, <thaumcraft:ingot>, <thaumcraft:nugget:6>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:thaumium> * 144, <thaumcraft:plate:2>, 4000);

# Starmetal
mods.thermalexpansion.Crucible.addRecipe(<liquid:starmetal> * 144, <astralsorcery:itemcraftingcomponent:1>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:starmetal> * 144, <astralsorcery:itemcraftingcomponent:2>, 2000);

# Fiery
mods.thermalexpansion.Crucible.addRecipe(<liquid:fierymetal> * 1296, <twilightforest:block_storage:1>, 32000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:fierymetal> * 144, <twilightforest:fiery_ingot>, 4000);

# Knightmetal
mods.thermalexpansion.Crucible.addRecipe(<liquid:knightmetal> * 1296, <twilightforest:knightmetal_block>, 32000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:knightmetal> * 144, <twilightforest:knightmetal_ingot>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:knightmetal> * 288, <twilightforest:armor_shard_cluster>, 8000);

# Cobalt
mods.tconstruct.Casting.removeBasinRecipe(<chisel:blockcobalt>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:metal>, null, <liquid:cobalt>, 1296);

# Refined Obsidian
mods.tconstruct.Melting.removeRecipe(<liquid:refinedobsidian>, <mekanism:otherdust:5>);

# Graveyard Soil
recipes.remove(<tconstruct:soil:3>);
recipes.addShapedMirrored(<tconstruct:soil:3>, [[<extrautils2:compresseddirt:1>,<extrautils2:compresseddirt:1>,<extrautils2:compresseddirt:1>],[<contenttweaker:sanctus>,<contenttweaker:livingmatter>,<contenttweaker:terrae>],[<extrautils2:compresseddirt:1>,<extrautils2:compresseddirt:1>,<extrautils2:compresseddirt:1>]]);

# Toolkits
recipes.remove(<tinkersaddons:modifier_item:1>);
recipes.addShaped(<tinkersaddons:modifier_item:1>, [[<tconstruct:large_plate>.withTag({Material: "iron"}),<thermalfoundation:storage_alloy>,<tconstruct:large_plate>.withTag({Material: "iron"})],[<thermalfoundation:storage_alloy>,<tconstruct:metal:4>,<thermalfoundation:storage_alloy>],[<tconstruct:large_plate>.withTag({Material: "iron"}),<thermalfoundation:storage_alloy>,<tconstruct:large_plate>.withTag({Material: "iron"})]]);
recipes.remove(<tinkersaddons:modifier_item:2>);
recipes.addShaped(<tinkersaddons:modifier_item:2>, [[<tconstruct:large_plate>.withTag({Material: "ardite"}),<aether_legacy:golden_amber>,<tconstruct:large_plate>.withTag({Material: "ardite"})],[<aether_legacy:golden_amber>,<enderio:block_alloy:1>,<aether_legacy:golden_amber>],[<tconstruct:large_plate>.withTag({Material: "ardite"}),<aether_legacy:golden_amber>,<tconstruct:large_plate>.withTag({Material: "ardite"})]]);
recipes.remove(<tinkersaddons:modifier_item:3>);
recipes.addShaped(<tinkersaddons:modifier_item:3>, [[<tconstruct:large_plate>.withTag({Material: "prismarine"}),<contenttweaker:ingot_of_elevation>,<tconstruct:large_plate>.withTag({Material: "prismarine"})],[<contenttweaker:ingot_of_elevation>,<actuallyadditions:block_crystal_empowered:2>,<contenttweaker:ingot_of_elevation>],[<tconstruct:large_plate>.withTag({Material: "prismarine"}),<contenttweaker:ingot_of_elevation>,<tconstruct:large_plate>.withTag({Material: "prismarine"})]]);
recipes.remove(<tinkersaddons:modifier_item:4>);
recipes.addShaped(<tinkersaddons:modifier_item:4>, [[<tconstruct:large_plate>.withTag({Material: "obsidian"}),<enderutilities:enderpart:2>,<tconstruct:large_plate>.withTag({Material: "obsidian"})],[<enderutilities:enderpart:2>,<contenttweaker:compressed_obsidian3>,<enderutilities:enderpart:2>],[<tconstruct:large_plate>.withTag({Material: "obsidian"}),<enderutilities:enderpart:2>,<tconstruct:large_plate>.withTag({Material: "obsidian"})]]);

# Congealed Slime Block
recipes.remove(<tconstruct:slime_congealed:5>);
recipes.addShaped(<tconstruct:slime_congealed:5>, [[null,<ore:slimeball>,null],[<ore:slimeball>,null,<ore:slimeball>],[null,<ore:slimeball>,null]]);

print("ENDING TinkersConstruct.zs");
