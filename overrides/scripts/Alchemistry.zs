# Author: Atricos

import mods.alchemistry.Dissolver;
import mods.alchemistry.Combiner;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.alchemistry.Liquifier;
import mods.alchemistry.Atomizer;

print("STARTING Alchemistry.zs");

# Zinc Ingot from AbyssalCraft Crystallized Zinc Cluster
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<abyssalcraft:crystalcluster2:8>, <alchemistry:ingot:30>, 1.0);

# Sodium Ingot rom AbyssalCraft Crystallized Sodium Cluster
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<contenttweaker:crystallized_sodium_cluster>, <alchemistry:ingot:11>, 1.0);

# Alchemistry Guidebook
recipes.remove(<patchouli:guide_book>.withTag({"patchouli:book": "alchemistry:alchemistry_book"}), true);
recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "alchemistry:alchemistry_book"}), [<minecraft:book>,<minecraft:glass_bottle>]);

# Evaporator
recipes.remove(<alchemistry:evaporator>);
mods.extendedcrafting.TableCrafting.addShaped(<alchemistry:evaporator>,
[[<galacticraftplanets:item_basic_asteroids:5>,null,null,null,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,null,null,null,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<mekanism:basicblock:15>,<contenttweaker:draconic_machine_frame>,<mekanism:basicblock:15>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<mekanism:basicblock:14>,<draconicevolution:chaotic_core>,<mekanism:basicblock:14>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Chemical Dissolver
recipes.remove(<alchemistry:chemical_dissolver>);
recipes.addShaped(<alchemistry:chemical_dissolver>, [[<extrautils2:simpledecorative:2>,<botania:conjurationcatalyst>,<extrautils2:simpledecorative:2>],[<mekanism:machineblock2:6>,<contenttweaker:alchemical_machine_frame>,<mekanism:machineblock2:6>],[<extendedcrafting:storage:3>,<botania:conjurationcatalyst>,<extendedcrafting:storage:3>]]);

# Kaolinite <- Draconic Core
mods.alchemistry.Dissolver.removeRecipe(<minecraft:grass>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:grass>, true, 1, [[40, <alchemistry:compound:7>],[40, <alchemistry:compound:1>],[20, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:dirt>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:dirt>, true, 1, [[40, <alchemistry:compound:7>],[50, <alchemistry:compound:1>],[10, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:dirt:1>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:dirt:1>, true, 1, [[40, <alchemistry:compound:7>],[50, <alchemistry:compound:1>],[10, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:dirt:2>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:dirt:2>, true, 1, [[30, <alchemistry:compound:7>],[50, <alchemistry:compound:1>],[20, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:sponge>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:clay>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:clay>, true, 1, [[50, <alchemistry:compound:7> * 4],[50, <alchemistry:compound:1> * 4]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:clay_ball>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:clay_ball>, true, 1, [[50, <alchemistry:compound:7>],[50, <alchemistry:compound:1>]]);
mods.alchemistry.Dissolver.addRecipe(<draconicevolution:draconic_core>, true, 1, [[40, <alchemistry:compound:8> * 8],[20, <alchemistry:element:6> * 64],[20, <alchemistry:element:26> * 64],[20, <alchemistry:element:16> * 48]]);

# Magnesium Oxide <- Will Crystals, Potassium Carbonate <- Corrosive Will Crystal
mods.alchemistry.Dissolver.removeRecipe(<minecraft:obsidian>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:obsidian>, true, 1, [[100, <alchemistry:compound:5> * 8, <alchemistry:compound:3> * 8, <alchemistry:compound:1> * 24]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:magma>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:magma>, true, 2, [[10, <alchemistry:element:25> * 2],[5, <alchemistry:compound:5>],[2, <alchemistry:compound:3>],[10, <alchemistry:compound:1>],[21, <alchemistry:element:16> * 2],[10, <alchemistry:compound:10>],[9, <alchemistry:element:82> * 2]]);
mods.alchemistry.Dissolver.addRecipe(<bloodmagic:item_demon_crystal>, true, 1, [[40, <alchemistry:compound:4> * 8],[20, <alchemistry:compound:5> * 8],[20, <alchemistry:compound:6> * 8],[20, <alchemistry:element:6> * 24]]);
mods.alchemistry.Dissolver.addRecipe(<bloodmagic:item_demon_crystal:1>, true, 1, [[26, <alchemistry:compound:4> * 12],[26, <alchemistry:compound:31>],[16, <alchemistry:compound:5> * 12],[16, <alchemistry:compound:6> * 12],[16, <alchemistry:element:6> * 36]]);
mods.alchemistry.Dissolver.addRecipe(<bloodmagic:item_demon_crystal:2>, true, 1, [[40, <alchemistry:compound:4> * 16],[20, <alchemistry:compound:5> * 16],[20, <alchemistry:compound:6> * 16],[20, <alchemistry:element:6> * 48]]);
mods.alchemistry.Dissolver.addRecipe(<bloodmagic:item_demon_crystal:3>, true, 1, [[40, <alchemistry:compound:4> * 16],[20, <alchemistry:compound:5> * 16],[20, <alchemistry:compound:6> * 16],[20, <alchemistry:element:6> * 48]]);
mods.alchemistry.Dissolver.addRecipe(<bloodmagic:item_demon_crystal:4>, true, 1, [[40, <alchemistry:compound:4> * 16],[20, <alchemistry:compound:5> * 16],[20, <alchemistry:compound:6> * 16],[20, <alchemistry:element:6> * 48]]);

# Ammonium <- Crystallized Mana, Rune of Mana
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:crystallized_mana_fragment>, true, 1, [[10, <alchemistry:compound:29>],[80, <alchemistry:compound:7>],[10, <alchemistry:element:7>]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:crystallized_mana_shard>, true, 1, [[45, <alchemistry:compound:29> * 2],[35, <alchemistry:compound:7> * 2],[20, <alchemistry:element:7> * 2]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:crystallized_mana>, true, 1, [[67.5, <alchemistry:compound:29> * 12],[20, <alchemistry:compound:7> * 12],[12.5, <alchemistry:element:7> * 12]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:rune_of_mana>, true, 1, [[100, <alchemistry:compound:29> * 24]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:crystallized_mana_cluster>, true, 1, [[100, <alchemistry:compound:29> * 64,<alchemistry:compound:29> * 8]]);

# Methane <- Crystallized Methane, AbyssalCraft Methane
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:10>, true, 1, [[100, <alchemistry:compound:34>]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:10>, true, 1, [[100, <alchemistry:compound:34> * 9]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:methane>, true, 1, [[100, <alchemistry:compound:34> * 9]]);
mods.alchemistry.Combiner.addRecipe(<abyssalcraft:methane>, [<alchemistry:compound:34> * 9]);

# Cucurbitacin <- Bottled Hellfire
mods.alchemistry.Dissolver.removeRecipe(<minecraft:pumpkin>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:pumpkin>, true, 1, [[45, <alchemistry:compound>],[45, <alchemistry:compound:7>],[10, <alchemistry:compound:11>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:melon_block>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:melon_block>, true, 1, [[45, <alchemistry:compound>],[45, <alchemistry:compound:7>],[10, <alchemistry:compound:11>]]);
mods.alchemistry.Dissolver.addRecipe(<bewitchment:bottled_hellfire>, true, 1, [[50, <alchemistry:compound:20> * 2, <alchemistry:element:6> * 16],[50, <alchemistry:compound:5> * 8, <alchemistry:element:6> * 16]]);

# Psyllium <- Refined Coralium Ingot
mods.alchemistry.Dissolver.removeRecipe(<minecraft:brown_mushroom>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:brown_mushroom>, true, 1, [[100, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:red_mushroom>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:red_mushroom>, true, 1, [[100, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:cingot>, true, 1, [[50, <alchemistry:compound:21> * 4, <alchemistry:element:26> * 8],[50, <alchemistry:compound:10> * 4, <alchemistry:element:26> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:ingotblock:1>, true, 1, [[50, <alchemistry:compound:21> * 36, <alchemistry:element:26> * 72],[50, <alchemistry:compound:10> * 36, <alchemistry:element:26> * 144]]);

# Zinc Oxide <- Alchemical Brass Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<minecraft:netherrack>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:netherrack>, true, 1, [[50, <alchemistry:compound:1>],[10, <alchemistry:element:6>],[10, <alchemistry:element:15>],[10, <alchemistry:element:14>],[10, <alchemistry:element:16>],[10, <alchemistry:element:79>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:netherbrick>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:netherbrick>, true, 1, [[50, <alchemistry:compound:1>],[10, <alchemistry:element:6>],[10, <alchemistry:element:15>],[10, <alchemistry:element:14>],[10, <alchemistry:element:16>],[10, <alchemistry:element:79>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:nether_brick>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:nether_brick>, true, 1, [[50, <alchemistry:compound:1>],[10, <alchemistry:element:6>],[10, <alchemistry:element:15>],[10, <alchemistry:element:14>],[10, <alchemistry:element:16>],[10, <alchemistry:element:79>]]);
mods.alchemistry.Dissolver.addRecipe(<thaumcraft:ingot:2>, true, 1, [[40, <alchemistry:compound:22> * 4, <alchemistry:element:26> * 24, <alchemistry:element:6> * 24],[30, <alchemistry:compound:10> * 4, <alchemistry:element:26> * 24, <alchemistry:element:6> * 24],[30, <alchemistry:element:79>* 24, <alchemistry:element:26> * 24, <alchemistry:element:6> * 24]]);
mods.alchemistry.Dissolver.addRecipe(<thaumcraft:metal_brass>, true, 1, [[40, <alchemistry:compound:22> * 36, <alchemistry:element:26> * 216, <alchemistry:element:6> * 216],[30, <alchemistry:compound:10> * 36, <alchemistry:element:26> * 216, <alchemistry:element:6> * 216],[30, <alchemistry:element:79>* 216, <alchemistry:element:26> * 216, <alchemistry:element:6> * 216]]);

# Lead Iodide <- Evil Infused Iron Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<ore:dyeYellow>);
mods.alchemistry.Dissolver.addRecipe(<extrautils2:ingredients:17>, true, 1, [[50, <alchemistry:compound:25> * 32, <alchemistry:element:26> * 48],[50, <alchemistry:compound:10> * 32, <alchemistry:element:26> * 48]]);
mods.alchemistry.Dissolver.addRecipe(<extrautils2:simpledecorative:2>, true, 1, [[50, <alchemistry:compound:25> * 288, <alchemistry:element:26> * 432],[50, <alchemistry:compound:10> * 288, <alchemistry:element:26> * 432]]);

# Urea <- Luminessence
mods.alchemistry.Dissolver.addRecipe(<extendedcrafting:material:7>, true, 1, [[50, <alchemistry:compound:28>, <alchemistry:element:1> * 32],[50, <alchemistry:compound:54> * 8, <alchemistry:element:1> * 32]]);

# Potassium Cyanide <- Elevaium Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<minecraft:fish:3>);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:ingot_of_elevation>, true, 1, [[50, <alchemistry:compound:54> * 8, <alchemistry:element:79> * 16],[50, <alchemistry:compound:54> * 8, <alchemistry:element:6> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:block_of_elevation>, true, 1, [[50, <alchemistry:compound:54> * 72, <alchemistry:element:79> * 144],[50, <alchemistry:compound:54> * 72, <alchemistry:element:6> * 144]]);

# Calcium Carbonate <- Meteoric Iron Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<minecraft:egg>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:egg>, true, 1, [[100, <alchemistry:element:20> * 8, <alchemistry:compound:9> * 2]]);
mods.alchemistry.Dissolver.addRecipe(<galacticraftcore:item_basic_moon>, true, 1, [[50, <alchemistry:compound:13>, <alchemistry:element:26> * 6],[50, <alchemistry:compound:10>, <alchemistry:element:26> * 6]]);
mods.alchemistry.Dissolver.addRecipe(<galacticraftcore:basic_block_core:12>, true, 1, [[50, <alchemistry:compound:13> * 9, <alchemistry:element:26> * 54],[50, <alchemistry:compound:10> * 9, <alchemistry:element:26> * 54]]);

# Polyvinyl Chloride, Nickel Chloride <- Beam Core
mods.alchemistry.Dissolver.removeRecipe(<ore:record>);
mods.alchemistry.Dissolver.removeRecipe(<ore:dyeGreen>);
mods.alchemistry.Dissolver.addRecipe(<galacticraftplanets:item_basic_asteroids:8>, true, 1, [[50, <alchemistry:compound:53> * 16],[50, <alchemistry:compound:41> * 16]]);

# Beryl, Cobalt Aluminate <- Mirion Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<ore:dyeLightBlue>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:emerald>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:emerald>, true, 1, [[60, <alchemistry:compound:1>],[40, <alchemistry:element:3>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:emerald_block>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:emerald_block>, true, 1, [[60, <alchemistry:compound:1> * 9],[40, <alchemistry:element:3> * 9]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:emerald_ore>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:emerald_ore>, true, 1, [[70, <alchemistry:compound:1>],[30, <alchemistry:element:3> * 2]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:prismarine_shard>);
mods.alchemistry.Dissolver.addRecipe(<plustic:mirioningot>, true, 1, [[25, <alchemistry:compound:23> * 4, <alchemistry:compound:10> * 8, <alchemistry:element:6> * 16],[25, <alchemistry:compound:18> * 8, <alchemistry:compound:10> * 8, <alchemistry:element:6> * 16],[25, <alchemistry:compound:23> * 4, <alchemistry:element:26> * 32, <alchemistry:element:6> * 16],[25, <alchemistry:compound:18> * 8, <alchemistry:element:26> * 32, <alchemistry:element:6> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<plustic:mirionblock>, true, 1, [[25, <alchemistry:compound:23> * 36, <alchemistry:compound:10> * 72, <alchemistry:element:6> * 144],[25, <alchemistry:compound:18> * 72, <alchemistry:compound:10> * 72, <alchemistry:element:6> * 144],[25, <alchemistry:compound:23> * 36, <alchemistry:element:26> * 288, <alchemistry:element:6> * 144],[25, <alchemistry:compound:18> * 72, <alchemistry:element:26> * 288, <alchemistry:element:6> * 144]]);

# Mesquite <- Void Metal Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<minecraft:cactus>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:cactus>, true, 1, [[100, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.addRecipe(<thaumcraft:ingot:1>, true, 1, [[50, <alchemistry:compound:32> * 4, <alchemistry:element:26> * 24],[50, <alchemistry:compound:10> * 4, <alchemistry:element:26> * 24]]);
mods.alchemistry.Dissolver.addRecipe(<thaumcraft:metal_void>, true, 1, [[50, <alchemistry:compound:32> * 36, <alchemistry:element:26> * 216],[50, <alchemistry:compound:10> * 36, <alchemistry:element:26> * 216]]);

# Strontium Carbonate
mods.alchemistry.Dissolver.removeRecipe(<minecraft:redstone>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:redstone>, true, 1, [[100, <alchemistry:compound:10>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:redstone_ore>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:redstone_ore>, true, 1, [[100, <alchemistry:compound:10> * 3, <alchemistry:compound:1>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:redstone_block>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:redstone_block>, true, 1, [[100, <alchemistry:compound:10> * 9]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:impetus_crystal>, true, 1, [[100, <alchemistry:compound:17> * 64, <alchemistry:compound:32> * 8]]);
mods.alchemistry.Dissolver.addRecipe(<thaumicaugmentation:material:5>, true, 1, [[100, <alchemistry:compound:17> * 96, <alchemistry:compound:32> * 8]]);
mods.alchemistry.Dissolver.addRecipe(<thaumicaugmentation:material:3>, true, 1, [[100, <alchemistry:compound:17> * 256, <alchemistry:compound:32> * 40]]);

# Potassium Dichromate <- Solar Array Wafer, Advanced Wafer, plus other Wafers
mods.alchemistry.Dissolver.addRecipe(<galacticraftplanets:basic_item_venus:6>, true, 1, [[100, <alchemistry:compound:40> * 40, <alchemistry:compound:1> * 30, <alchemistry:element:24> * 320]]);
mods.alchemistry.Dissolver.addRecipe(<galacticraftcore:basic_item:12>, true, 1, [[100, <alchemistry:element:7> * 64, <alchemistry:compound:1> * 40, <alchemistry:element:24> * 240]]);
mods.alchemistry.Dissolver.addRecipe(<galacticraftcore:basic_item:14>, true, 1, [[100, <alchemistry:compound:40> * 40, <alchemistry:compound:1> * 30, <alchemistry:element:24> * 320]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:cheesy_wafer>, true, 1, [[100, <alchemistry:compound:9> * 10, <alchemistry:compound:11> * 10, <alchemistry:compound:1> * 20, <alchemistry:element:24> * 160]]);
mods.alchemistry.Dissolver.addRecipe(<galacticraftcore:basic_item:13>, true, 1, [[100, <alchemistry:compound:33> * 10, <alchemistry:compound:43> * 10, <alchemistry:compound:1> * 10, <alchemistry:element:24> * 80]]);

# Potassium Permanganate <- Hybrid Abyssalium Ingot & Block
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:hybrid_abyssalium_ingot>, true, 1, [[100, <alchemistry:compound:42> * 2, <alchemistry:compound:21> * 4, <alchemistry:element:25> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:hybrid_abyssalium_block>, true, 1, [[100, <alchemistry:compound:42> * 18, <alchemistry:compound:21> * 36, <alchemistry:element:25> * 144]]);

# Cadmium Sulfide, Magnesium Sulfate <- Flying Ointment
mods.alchemistry.Dissolver.addRecipe(<bewitchment:flying_ointment>, true, 1, [[100, <alchemistry:compound:45> * 192,<alchemistry:compound:43> * 3,<alchemistry:element:8> * 32,<alchemistry:element:7> * 32]]);

# Chromium Oxide, Magnesium Sulfate <- Bottled Frostfire
mods.alchemistry.Dissolver.addRecipe(<bewitchment:bottled_frostfire>, true, 1, [[50, <alchemistry:compound:46> * 24,<alchemistry:compound:43> * 24,<alchemistry:element:8> * 8,<alchemistry:element:7> * 8],[50, <alchemistry:compound:43> * 32,<alchemistry:element:8> * 16,<alchemistry:element:7> * 16]]);

# Antimony Trioxide <- End Steel Ingot & Block
mods.alchemistry.Dissolver.addRecipe(<enderio:item_alloy_ingot:8>, true, 1, [[50, <alchemistry:compound:47> * 16, <alchemistry:element:26> * 32],[50, <alchemistry:compound:10> * 16, <alchemistry:element:26> * 32]]);
mods.alchemistry.Dissolver.addRecipe(<enderio:block_alloy:8>, true, 1, [[50, <alchemistry:compound:47> * 144, <alchemistry:element:26> * 288],[50, <alchemistry:compound:10> * 144, <alchemistry:element:26> * 288]]);

# Titanium Oxide <- Compressed Titanium & Titanium Box
mods.alchemistry.Dissolver.addRecipe(<galacticraftplanets:item_basic_asteroids:6>, true, 1, [[50, <alchemistry:compound:48> * 8, <alchemistry:element:22> * 64],[50, <alchemistry:element:22> * 128]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:titanium_box>, true, 1, [[100, <alchemistry:compound:48> * 32, <alchemistry:element:22> * 256]]);

# Han Purple <- Wyvern Core
mods.alchemistry.Dissolver.addRecipe(<draconicevolution:wyvern_core>, true, 1, [[100, <alchemistry:compound:49> * 128, <alchemistry:compound:8> * 16]]);

# Arsenic Sulfide <- Rainbow Tablet
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:rainbow_tablet>, true, 1, [[100, <alchemistry:compound:50> * 32, <alchemistry:compound:1> * 20, <alchemistry:element:6> * 64, <alchemistry:element:24> * 160]]);

# Barium Sulfate, Copper Chloride <- Crystaltine Ingot
mods.alchemistry.Dissolver.addRecipe(<extendedcrafting:material:24>, true, 1, [[100, <alchemistry:compound:51> * 64, <alchemistry:compound:54> * 80, <alchemistry:compound:44> * 80]]);

# Copper Chloride <- Crystalline Ingot & Block
mods.alchemistry.Dissolver.addRecipe(<enderio:item_alloy_endergy_ingot:1>, true, 1, [[100, <alchemistry:compound:54> * 8, <alchemistry:compound:44> * 8]]);
mods.alchemistry.Dissolver.addRecipe(<enderio:block_alloy_endergy:1>, true, 1, [[100, <alchemistry:compound:54> * 72, <alchemistry:compound:44> * 72]]);

# Mercury Sulfide <- Supremium Ingot & Block
mods.alchemistry.Dissolver.addRecipe(<mysticalagriculture:crafting:37>, true, 1, [[100, <alchemistry:compound:60> * 48, <alchemistry:element:50> * 24, <alchemistry:element:47> * 24, <alchemistry:element:82> * 24]]);
mods.alchemistry.Dissolver.addRecipe(<mysticalagriculture:ingot_storage:5>, true, 1, [[100, <alchemistry:compound:60> * 432, <alchemistry:element:50> * 216, <alchemistry:element:47> * 216, <alchemistry:element:82> * 216]]);

# Quartz -/> Barium
mods.alchemistry.Dissolver.removeRecipe(<minecraft:quartz>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:quartz>, true, 1, [[100, <alchemistry:compound:1> * 8]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:quartz_ore>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:quartz_ore>, true, 1, [[100, <alchemistry:compound:1> * 16]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:quartz_block>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:quartz_block>, true, 1, [[100, <alchemistry:compound:1> * 32]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:quartz_block:1>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:quartz_block:1>, true, 1, [[100, <alchemistry:compound:1> * 32]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:quartz_block:2>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:quartz_block:2>, true, 1, [[100, <alchemistry:compound:1> * 32]]);

# End Stone, End Stone Bricks, Ender Pearl -/> Mercury
mods.alchemistry.Dissolver.removeRecipe(<minecraft:end_stone>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:end_stone>, true, 1, [[100, <alchemistry:compound:1> * 2, <alchemistry:element:3>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:end_bricks>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:end_bricks>, true, 1, [[100, <alchemistry:compound:1> * 2, <alchemistry:element:3>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:ender_pearl>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:ender_pearl>, true, 1, [[100, <alchemistry:element:14> * 2, <alchemistry:element:3>]]);

# Fertilizer
mods.alchemistry.Combiner.removeRecipe(<alchemistry:fertilizer> * 8);
mods.alchemistry.Combiner.addRecipe(<alchemistry:fertilizer>, [<alchemistry:compound:30>,<alchemistry:compound:27>,<alchemistry:compound:42>]);

# Ethane
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:35>);
mods.alchemistry.Combiner.addRecipe(<alchemistry:compound:35>, [<alchemistry:compound:34>,<alchemistry:element:6>,<alchemistry:element:1> * 2]);

# Propane
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:36>);
mods.alchemistry.Combiner.addRecipe(<alchemistry:compound:36>, [<alchemistry:compound:35>,<alchemistry:element:6>,<alchemistry:element:1> * 2]);

# Butane
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:37>);
mods.alchemistry.Combiner.addRecipe(<alchemistry:compound:37>, [<alchemistry:compound:36>,<alchemistry:element:6>,<alchemistry:element:1> * 2]);

# Pentane
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:38>);
mods.alchemistry.Combiner.addRecipe(<alchemistry:compound:38>, [<alchemistry:compound:37>,<alchemistry:element:6>,<alchemistry:element:1> * 2]);

# Hexane
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:39>);
mods.alchemistry.Combiner.addRecipe(<alchemistry:compound:39>, [<alchemistry:compound:38>,<alchemistry:element:6>,<alchemistry:element:1> * 2]);

# AbyssalCraft -> Alchemistry Iron
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal>, true, 1, [[100, <alchemistry:element:26> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster>, true, 1, [[100, <alchemistry:element:26> * 64, <alchemistry:element:26> * 64, <alchemistry:element:26> * 16]]);

# AbyssalCraft -> Alchemistry Gold
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:1>, true, 1, [[100, <alchemistry:element:79> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:1>, true, 1, [[100, <alchemistry:element:79> * 64, <alchemistry:element:79> * 64, <alchemistry:element:79> * 16]]);

# AbyssalCraft -> Alchemistry Sulfur
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:2>, true, 1, [[100, <alchemistry:element:16> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:2>, true, 1, [[100, <alchemistry:element:16> * 64, <alchemistry:element:16> * 64, <alchemistry:element:16> * 16]]);

# AbyssalCraft -> Alchemistry Carbon
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:3>, true, 1, [[100, <alchemistry:element:6> * 8]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:3>, true, 1, [[100, <alchemistry:element:6> * 64, <alchemistry:element:6> * 8]]);

# AbyssalCraft -> Alchemistry Oxygen
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:4>, true, 1, [[100, <alchemistry:element:8> * 3]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:4>, true, 1, [[100, <alchemistry:element:8> * 27]]);

# AbyssalCraft -> Alchemistry Hydrogen
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:5>, true, 1, [[100, <alchemistry:element:1> * 3]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:5>, true, 1, [[100, <alchemistry:element:1> * 27]]);

# AbyssalCraft -> Alchemistry Nitrogen
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:6>, true, 1, [[100, <alchemistry:element:7> * 8]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:6>, true, 1, [[100, <alchemistry:element:7> * 64, <alchemistry:element:7> * 8]]);

# AbyssalCraft -> Alchemistry Phosphorus
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:7>, true, 1, [[100, <alchemistry:element:15> * 8]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:7>, true, 1, [[100, <alchemistry:element:15> * 64, <alchemistry:element:15> * 8]]);

# AbyssalCraft -> Alchemistry Potassium
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:8>, true, 1, [[100, <alchemistry:element:19> * 8]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:8>, true, 1, [[100, <alchemistry:element:19> * 64, <alchemistry:element:19> * 8]]);

# AbyssalCraft Nitrate -> Alchemistry Nitrogen & Oxygen
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:9>, true, 1, [[100, <alchemistry:element:7> * 8, <alchemistry:element:8> * 24]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster:9>, true, 1, [[100, <alchemistry:element:7> * 64, <alchemistry:element:7> * 8, <alchemistry:element:8> * 64, <alchemistry:element:8> * 64, <alchemistry:element:8> * 64, <alchemistry:element:8> * 24]]);

# AbyssalCraft -> Alchemistry Tin
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:16>, true, 1, [[100, <alchemistry:element:50> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:0>, true, 1, [[100, <alchemistry:element:50> * 64, <alchemistry:element:50> * 64, <alchemistry:element:50> * 16]]);

# AbyssalCraft -> Alchemistry Copper
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:17>, true, 1, [[100, <alchemistry:element:29> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:1>, true, 1, [[100, <alchemistry:element:29> * 64, <alchemistry:element:29> * 64, <alchemistry:element:29> * 16]]);

# AbyssalCraft -> Alchemistry Silicon
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:18>, true, 1, [[100, <alchemistry:element:14> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:2>, true, 1, [[100, <alchemistry:element:14> * 64, <alchemistry:element:14> * 64, <alchemistry:element:14> * 16]]);

# AbyssalCraft -> Alchemistry Magnesium
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:19>, true, 1, [[100, <alchemistry:element:12> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:3>, true, 1, [[100, <alchemistry:element:12> * 64, <alchemistry:element:12> * 64, <alchemistry:element:12> * 16]]);

# AbyssalCraft -> Alchemistry Aluminum
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:20>, true, 1, [[100, <alchemistry:element:13> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:4>, true, 1, [[100, <alchemistry:element:13> * 64, <alchemistry:element:13> * 64, <alchemistry:element:13> * 16]]);

# AbyssalCraft Silica -> Alchemistry Silicon & Oxygen
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:21>, true, 1, [[100, <alchemistry:element:14> * 16, <alchemistry:element:8> * 6]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:5>, true, 1, [[100, <alchemistry:element:14> * 64, <alchemistry:element:14> * 64, <alchemistry:element:14> * 16, <alchemistry:element:8> * 54]]);

# AbyssalCraft Alumina -> Alchemistry Aluminum & Oxygen
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:22>, true, 1, [[100, <alchemistry:element:13> * 32, <alchemistry:element:8> * 9]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:6>, true, 1, [[100, <alchemistry:element:13> * 64, <alchemistry:element:13> * 64, <alchemistry:element:13> * 64, <alchemistry:element:13> * 64, <alchemistry:element:13> * 64, <alchemistry:element:8> * 64, <alchemistry:element:8> * 8]]);

# AbyssalCraft Magnesia -> Alchemistry Magnesium & Oxygen
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:23>, true, 1, [[100, <alchemistry:element:12> * 16, <alchemistry:element:8> * 3]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:7>, true, 1, [[100, <alchemistry:element:12> * 64, <alchemistry:element:12> * 64, <alchemistry:element:12> * 16, <alchemistry:element:8> * 27]]);

# AbyssalCraft -> Alchemistry Zinc
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:24>, true, 1, [[100, <alchemistry:element:30> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:8>, true, 1, [[100, <alchemistry:element:30> * 64, <alchemistry:element:30> * 64, <alchemistry:element:30> * 16]]);

# AbyssalCraft -> Alchemistry Calcium
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:25>, true, 1, [[100, <alchemistry:element:20> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:9>, true, 1, [[100, <alchemistry:element:20> * 64, <alchemistry:element:20> * 64, <alchemistry:element:20> * 16]]);

# AbyssalCraft -> Alchemistry Beryllium
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystal:26>, true, 1, [[100, <alchemistry:element:4> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:crystalcluster2:10>, true, 1, [[100, <alchemistry:element:4> * 64, <alchemistry:element:4> * 64, <alchemistry:element:4> * 16]]);

# Chemical Combiner
recipes.remove(<alchemistry:chemical_combiner>);
mods.extendedcrafting.TableCrafting.addShaped(<alchemistry:chemical_combiner>,
[[<contenttweaker:chromium_barium_compound>,null,null,null,<contenttweaker:chromium_barium_compound>],
[null,<contenttweaker:chromium_barium_compound>,<contenttweaker:corrupted_core>,<contenttweaker:chromium_barium_compound>,null],
[null,<rftools:machine_base>,<draconicevolution:fusion_crafting_core>,<rftools:machine_base>,null],
[<rftools:machine_base>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:alchemical_machine_frame>,<contenttweaker:antimony_strontium_compound>,<rftools:machine_base>],
[<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>]]);

# Mercury from Mercury liquid
#mods.alchemistry.Atomizer.addRecipe(<alchemistry:element:80> * 16, <liquid:mercury> * 1000);

# Atomizer
recipes.remove(<alchemistry:atomizer>);
mods.extendedcrafting.TableCrafting.addShaped(<alchemistry:atomizer>,
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:ingot:24>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[null,null,<enderutilities:molecular_exciter>,null,null],
[null,<enderutilities:molecular_exciter>,<draconicevolution:fusion_crafting_core>,<enderutilities:molecular_exciter>,null],
[null,<enderutilities:molecular_exciter>,<contenttweaker:alchemical_machine_frame>,<enderutilities:molecular_exciter>,null],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Liquifier
recipes.remove(<alchemistry:liquifier>);
mods.extendedcrafting.TableCrafting.addShaped(<alchemistry:liquifier>,
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:ingot:24>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[null,null,<enderutilities:machine_1>,null,null],
[null,<enderutilities:machine_1>,<draconicevolution:fusion_crafting_core>,<enderutilities:machine_1>,null],
[null,<enderutilities:machine_1>,<contenttweaker:alchemical_machine_frame>,<enderutilities:machine_1>,null],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:chromium_barium_compound>,<contenttweaker:chromium_barium_compound>,<contenttweaker:chromium_barium_compound>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Electrolyzer
recipes.remove(<alchemistry:electrolyzer>);
mods.extendedcrafting.TableCrafting.addShaped(<alchemistry:electrolyzer>,
[[<galacticraftplanets:item_basic_asteroids:5>,null,null,null,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,null,null,null,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<alchemistry:compound:51>,<contenttweaker:alchemical_machine_frame>,<alchemistry:compound:51>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<projectred-core:resource_item:410>,<galacticraftplanets:mars_machine_t2:8>,<projectred-core:resource_item:410>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:chromium_barium_compound>,<contenttweaker:chromium_barium_compound>,<contenttweaker:chromium_barium_compound>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Han Calcite
mods.alchemistry.Combiner.addRecipe(<alchemistry:compound:1005>, [<alchemistry:compound:49>,<alchemistry:compound:13> * 4]);

# Beryl Zincite
mods.alchemistry.Combiner.addRecipe(<alchemistry:compound:1006>, [<alchemistry:compound:18> * 2,<alchemistry:compound:22>]);

# Barium Calcite, recipe in AlchemistryCustomCompounds.zs
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:1001>);

# Copper Carbonate, recipe in AlchemistryCustomCompounds.zs
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:1002>);

# Beryllium Alumide, recipe in AlchemistryCustomCompounds.zs
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:1003>);

# Silicon Trioxide, recipe in AlchemistryCustomCompounds.zs
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:1004>);

# Slot Filler
recipes.remove(<alchemistry:slot_filler>);
recipes.addShapeless(<alchemistry:slot_filler>, [<alchemistry:element:6>]);

# Chemical Dissolver removals
mods.alchemistry.Dissolver.removeRecipe(<ore:blockGlass>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:purpur_block>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:purpur_pillar>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:lapis_ore>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:lapis_block>);

# Chemical Dissolved changes
mods.alchemistry.Dissolver.removeRecipe(<minecraft:flint>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:flint>, true, 1, [[100, <alchemistry:compound:1>]]);
for i in 0 to 16 {
	mods.alchemistry.Dissolver.removeRecipe(<minecraft:concrete_powder>.withDamage(i));
	mods.alchemistry.Dissolver.addRecipe(<minecraft:concrete_powder>.withDamage(i), true, 1, [[100, <alchemistry:compound:1>]]);
	mods.alchemistry.Dissolver.removeRecipe(<minecraft:concrete>.withDamage(i));
	mods.alchemistry.Dissolver.addRecipe(<minecraft:concrete>.withDamage(i), true, 1, [[100, <alchemistry:compound:1>]]);
}
mods.alchemistry.Dissolver.removeRecipe(<minecraft:soul_sand>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:soul_sand>, true, 1, [[100, <alchemistry:compound:1>, <alchemistry:element:14> * 2]]);
mods.alchemistry.Dissolver.removeRecipe(<ore:cobblestone>);
mods.alchemistry.Dissolver.addRecipe(<ore:cobblestone>, true, 1, [[90, null],[5, <alchemistry:compound:1>],[5, <alchemistry:element:14>]]);
mods.alchemistry.Dissolver.removeRecipe(<ore:stoneGranite>);
mods.alchemistry.Dissolver.removeRecipe(<ore:stoneGranitePolished>);
mods.alchemistry.Dissolver.addRecipe(<ore:stoneGranite>, true, 1, [[80, null],[10, <alchemistry:compound:1>],[10, <alchemistry:element:14>]]);
mods.alchemistry.Dissolver.addRecipe(<ore:stoneGranitePolished>, true, 1, [[80, null],[10, <alchemistry:compound:1>],[10, <alchemistry:element:14>]]);
mods.alchemistry.Dissolver.removeRecipe(<ore:stoneDiorite>);
mods.alchemistry.Dissolver.removeRecipe(<ore:stoneDioritePolished>);
mods.alchemistry.Dissolver.addRecipe(<ore:stoneDiorite>, true, 1, [[80, null],[10, <alchemistry:compound:1>],[10, <alchemistry:element:14>]]);
mods.alchemistry.Dissolver.addRecipe(<ore:stoneDioritePolished>, true, 1, [[80, null],[10, <alchemistry:compound:1>],[10, <alchemistry:element:14>]]);
mods.alchemistry.Dissolver.removeRecipe(<ore:stoneAndesite>);
mods.alchemistry.Dissolver.removeRecipe(<ore:stoneAndesitePolished>);
mods.alchemistry.Dissolver.addRecipe(<ore:stoneAndesite>, true, 1, [[80, null],[10, <alchemistry:compound:1>],[10, <alchemistry:element:14>]]);
mods.alchemistry.Dissolver.addRecipe(<ore:stoneAndesitePolished>, true, 1, [[80, null],[10, <alchemistry:compound:1>],[10, <alchemistry:element:14>]]);
mods.alchemistry.Dissolver.removeRecipe(<ore:stone>);
mods.alchemistry.Dissolver.addRecipe(<ore:stone>, true, 1, [[80, null],[10, <alchemistry:compound:1>],[10, <alchemistry:element:14>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:sand>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:sand>, true, 1, [[60, <alchemistry:compound:1>],[40, <alchemistry:element:14>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:sand:1>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:sand:1>, true, 1, [[50, <alchemistry:compound:1>],[30, <alchemistry:element:14>],[20, <alchemistry:compound:10>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:red_sandstone>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:red_sandstone>, true, 1, [[50, <alchemistry:compound:1> * 4],[30, <alchemistry:element:14> * 4],[20, <alchemistry:compound:10> * 4]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:red_sandstone:1>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:red_sandstone:1>, true, 1, [[50, <alchemistry:compound:1> * 4],[30, <alchemistry:element:14> * 4],[20, <alchemistry:compound:10> * 4]]);
mods.alchemistry.Dissolver.addRecipe(<minecraft:sandstone>, true, 1, [[60, <alchemistry:compound:1> * 4],[40, <alchemistry:element:14> * 4]]);
mods.alchemistry.Dissolver.addRecipe(<minecraft:sandstone:1>, true, 1, [[60, <alchemistry:compound:1> * 4],[40, <alchemistry:element:14> * 4]]);
mods.alchemistry.Dissolver.removeRecipe(<ore:oreIron>);
mods.alchemistry.Dissolver.addRecipe(<ore:oreIron>, true, 1, [[100, <alchemistry:element:26> * 2]]);
mods.alchemistry.Dissolver.removeRecipe(<ore:oreGold>);
mods.alchemistry.Dissolver.addRecipe(<ore:oreGold>, true, 1, [[100, <alchemistry:element:79> * 2]]);

# Chemical Combiner removals
mods.alchemistry.Combiner.removeRecipe(<minecraft:quartz>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:quartz_ore>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:quartz_block>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:quartz_block:1>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:quartz_block:2>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:flint>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:cobblestone> * 2);
mods.alchemistry.Combiner.removeRecipe(<minecraft:stone:1>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:stone:3>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:stone:5>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:stone>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:sand>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:sand:1> * 8);
mods.alchemistry.Combiner.removeRecipe(<minecraft:sand:1> * 8);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:4> * 4);
mods.alchemistry.Combiner.removeRecipe(<minecraft:prismarine_shard>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dirt> * 4);
mods.alchemistry.Combiner.removeRecipe(<minecraft:mycelium> * 4);
mods.alchemistry.Combiner.removeRecipe(<minecraft:grass> * 4);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:1>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:2>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:5>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:6>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:7>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:8>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:9>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:10>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:11>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:12>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:13>);
mods.alchemistry.Combiner.removeRecipe(<minecraft:dye:14>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:4>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:8>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:13>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:14>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:21>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:22>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:23>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:27>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:29>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:31>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:32>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:34>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:40>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:41>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:42>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:43>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:44>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:46>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:48>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:53>);
mods.alchemistry.Combiner.removeRecipe(<alchemistry:compound:54>);

# Chemical Combiner changes
mods.alchemistry.Combiner.removeRecipe(<minecraft:soul_sand>);
mods.alchemistry.Combiner.addRecipe(<minecraft:soul_sand>, [<alchemistry:compound:1>,null,<alchemistry:element:14> * 2]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:sponge>);
mods.alchemistry.Combiner.addRecipe(<minecraft:sponge>, [<alchemistry:compound:13> * 4, <alchemistry:compound:22> * 2]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:emerald>);
mods.alchemistry.Combiner.addRecipe(<minecraft:emerald>, [<alchemistry:compound:1>, <alchemistry:element:3>]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:emerald_block>);
mods.alchemistry.Combiner.addRecipe(<minecraft:emerald_block>, [null,<alchemistry:compound:1> * 9, <alchemistry:element:3> * 9]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:redstone>);
mods.alchemistry.Combiner.addRecipe(<minecraft:redstone>, [<alchemistry:compound:10>]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:redstone_block>);
mods.alchemistry.Combiner.addRecipe(<minecraft:redstone_block>, [null,<alchemistry:compound:10> * 9]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:clay_ball>);
mods.alchemistry.Combiner.addRecipe(<minecraft:clay_ball>, [<alchemistry:compound:1>,<alchemistry:compound:7>]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:clay>);
mods.alchemistry.Combiner.addRecipe(<minecraft:clay>, [null,null,null,<alchemistry:compound:1> * 4,<alchemistry:compound:7> * 4]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:egg>);
mods.alchemistry.Combiner.addRecipe(<minecraft:egg>, [<alchemistry:element:20> * 8, <alchemistry:compound:9> * 2]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:ender_pearl>);
mods.alchemistry.Combiner.addRecipe(<minecraft:ender_pearl>, [null,<alchemistry:element:14> * 2, <alchemistry:element:3>]);
mods.alchemistry.Combiner.removeRecipe(<minecraft:obsidian>);
mods.alchemistry.Combiner.addRecipe(<minecraft:obsidian>, [<alchemistry:compound:5> * 8, <alchemistry:compound:3> * 8, <alchemistry:compound:1> * 24]);

# Hydroxylapatite, Mendelevium <- Nether Star
mods.alchemistry.Dissolver.removeRecipe(<minecraft:skull:1>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:bone>);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:bone_block>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:nether_star>, true, 1, [[100, <alchemistry:compound:16> * 8, <alchemistry:element:101> * 32]]);

# Bismuth <- Demonic Elixir
mods.alchemistry.Dissolver.addRecipe(<bewitchment:demonic_elixir>, true, 1, [[50, <alchemistry:element:83> * 256, <alchemistry:compound:5> * 24, <alchemistry:compound:7> * 24],[50, <alchemistry:element:83> * 128, <alchemistry:compound:5> * 48, <alchemistry:compound:7> * 48]]);

# Tungsten <- Stone Ichor
mods.alchemistry.Dissolver.addRecipe(<bewitchment:stone_ichor>, true, 1, [[50, <alchemistry:element:74> * 256, <alchemistry:compound:1> * 64, <alchemistry:compound:7> * 32],[50, <alchemistry:element:74> * 128, <alchemistry:compound:1> * 64, <alchemistry:compound:7> * 64]]);

# Fission Casing
recipes.remove(<alchemistry:fission_casing>);
recipes.addShaped(<alchemistry:fission_casing> * 8, [[<contenttweaker:chromium_barium_compound>,<alchemistry:ingot:4>,<contenttweaker:chromium_barium_compound>],[<alchemistry:ingot:4>,<contenttweaker:copper_bismid_carbonate_sheet>,<alchemistry:ingot:4>],[<contenttweaker:chromium_barium_compound>,<alchemistry:ingot:4>,<contenttweaker:chromium_barium_compound>]]);

# Fission Controller
recipes.remove(<alchemistry:fission_controller>);
mods.extendedcrafting.TableCrafting.addShaped(<alchemistry:fission_controller>,
[[<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>],
[<alchemistry:fission_casing>,<contenttweaker:chromium_barium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<bigreactors:reactoraccessport>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:chromium_barium_compound>,<alchemistry:fission_casing>],
[<alchemistry:fission_casing>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:chromium_barium_compound>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:chromium_barium_compound>,<contenttweaker:antimony_strontium_compound>,<alchemistry:fission_casing>],
[<alchemistry:fission_casing>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:antimony_strontium_compound>,<alchemistry:fission_casing>],
[<alchemistry:fission_casing>,<bigreactors:reactorpowertaprf>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:alchemical_machine_frame>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:copper_bismid_carbonate_sheet>,<bigreactors:reactorpowertaprf>,<alchemistry:fission_casing>],
[<alchemistry:fission_casing>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:corrupted_dragon_token>,<contenttweaker:oxygen_rich_barium_calcite_perpetuator>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:antimony_strontium_compound>,<alchemistry:fission_casing>],
[<alchemistry:fission_casing>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:chromium_barium_compound>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:chromium_barium_compound>,<contenttweaker:antimony_strontium_compound>,<alchemistry:fission_casing>],
[<alchemistry:fission_casing>,<contenttweaker:chromium_barium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<bigreactors:reactoraccessport>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:chromium_barium_compound>,<alchemistry:fission_casing>],
[<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>,<alchemistry:fission_casing>]]);

# Fission Core
recipes.remove(<alchemistry:fission_core>);
mods.extendedcrafting.TableCrafting.addShaped(<alchemistry:fission_core>,
[[<alchemistry:fission_casing>,<alchemistry:fission_casing>,<bigreactors:reactorfuelrod>,<alchemistry:fission_casing>,<alchemistry:fission_casing>],
[<contenttweaker:antimony_strontium_compound>,<contenttweaker:copper_bismid_carbonate_sheet>,<bigreactors:reactorfuelrod>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:antimony_strontium_compound>],
[<contenttweaker:antimony_strontium_compound>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:alchemical_machine_frame>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:antimony_strontium_compound>],
[<contenttweaker:antimony_strontium_compound>,<contenttweaker:copper_bismid_carbonate_sheet>,<bigreactors:reactorfuelrod>,<contenttweaker:copper_bismid_carbonate_sheet>,<contenttweaker:antimony_strontium_compound>],
[<alchemistry:fission_casing>,<alchemistry:fission_casing>,<bigreactors:reactorfuelrod>,<alchemistry:fission_casing>,<alchemistry:fission_casing>]]);

# Europium <- Dimensional Shard Ore, Dimensional Shard
mods.alchemistry.Dissolver.addRecipe(<ore:oreDimensionalShard>, true, 1, [[100, <alchemistry:element:63> * 128, <alchemistry:compound:14> * 128]]);
mods.alchemistry.Dissolver.addRecipe(<rftools:dimensional_shard>, true, 1, [[100, <alchemistry:element:63> * 16, <alchemistry:compound:14> * 16]]);

# Europium, Barium Sulfate, Potassium Cyanide, Copper Chloride, Ammonium <- Infused Diamond, Infused Enderpearl
mods.alchemistry.Dissolver.addRecipe(<rftools:infused_diamond>, true, 1, [[100, <alchemistry:element:63> * 64, <alchemistry:compound:51> * 128, <alchemistry:compound:54> * 60, <alchemistry:compound:44> * 60, <alchemistry:compound:29> * 2, <alchemistry:compound:14> * 64]]);
mods.alchemistry.Dissolver.addRecipe(<rftools:infused_enderpearl>, true, 1, [[100, <alchemistry:element:63> * 64, <alchemistry:compound:51> * 128, <alchemistry:compound:54> * 60, <alchemistry:compound:44> * 60, <alchemistry:compound:14> * 64]]);

# Erbium Potassium Cyanide, Copper Chloride <- Stellar Alloy
mods.alchemistry.Dissolver.addRecipe(<enderio:item_alloy_endergy_ingot:3>, true, 1, [[100, <alchemistry:element:68> * 1, <alchemistry:compound:54> * 8, <alchemistry:compound:44> * 8]]);
mods.alchemistry.Dissolver.addRecipe(<enderio:block_alloy_endergy:3>, true, 1, [[100, <alchemistry:element:68> * 9, <alchemistry:compound:54> * 72, <alchemistry:compound:44> * 72]]);

# Rutherfordium, Curium, Neptunium <- Highly Radioactive Dimension-Splitting Compound
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:highly_radioactive_dimension_splitting_compound>, true, 1, [[100, <alchemistry:element:104> * 8, <alchemistry:element:96> * 8, <alchemistry:element:93> * 8, <alchemistry:element:94> * 2, <alchemistry:element:45>]]);

# Germanium
mods.alchemistry.Dissolver.removeRecipe(<minecraft:blaze_powder>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:blaze_powder>, true, 1, [[100, <alchemistry:element:6> * 8, <alchemistry:element:16> * 8]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:nether_wart>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:nether_wart>, true, 1, [[100, <alchemistry:compound>, <alchemistry:element:34> * 4]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:nether_wart_block>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:nether_wart_block>, true, 1, [[100, <alchemistry:compound> * 9, <alchemistry:element:34> * 36]]);

# Neodymium, Dysprosium, Hafnium <- Low Covalence Dust, Medium Covalence Dust, High Covalence Dust
mods.alchemistry.Dissolver.addRecipe(<projecte:item.pe_covalence_dust>, true, 1, [[100, <alchemistry:compound:1011> * 8, <alchemistry:compound:14> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<projecte:item.pe_covalence_dust:1>, true, 1, [[100, <alchemistry:compound:1011> * 8, <alchemistry:compound:14> * 8, <alchemistry:element:66> * 16, <alchemistry:compound:54> * 32, <alchemistry:compound:44> * 32]]);
mods.alchemistry.Dissolver.addRecipe(<projecte:item.pe_covalence_dust:2>, true, 1, [[100, <alchemistry:compound:1011> * 8, <alchemistry:compound:14> * 8, <alchemistry:compound:1012> * 8, <alchemistry:element:66> * 16, <alchemistry:compound:54> * 32, <alchemistry:compound:44> * 32]]);

# Polonium, Radon, Americium <- Dark Matter & Red Matter
mods.alchemistry.Dissolver.addRecipe(<projecte:item.pe_matter>, true, 1, [[100, <alchemistry:element:66> * 4, <alchemistry:compound:1012> * 2, <alchemistry:element:84> * 32, <alchemistry:element:86> * 32]]);
mods.alchemistry.Dissolver.addRecipe(<projecte:item.pe_matter:1>, true, 1, [[100, <alchemistry:element:66> * 2, <alchemistry:compound:1012>, <alchemistry:element:84> * 32, <alchemistry:element:86> * 32, <alchemistry:element:95> * 16]]);

# Protactinum <- White Matter
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:white_matter>, true, 1, [[100, <alchemistry:element:66>, <alchemistry:compound:1012>, <alchemistry:element:84> * 32, <alchemistry:element:86> * 32, <alchemistry:element:95> * 16, <alchemistry:element:91> * 4]]);

# Fusion Casing
recipes.remove(<alchemistry:fusion_casing>);
recipes.addShaped(<alchemistry:fusion_casing>, [[<alchemistry:ingot:60>,<alchemistry:ingot:90>,<alchemistry:ingot:60>],[<alchemistry:ingot:90>,<alchemistry:fission_casing>,<alchemistry:ingot:90>],[<alchemistry:ingot:60>,<alchemistry:ingot:90>,<alchemistry:ingot:60>]]);

# Fusion Core
recipes.remove(<alchemistry:fusion_core>);
recipes.addShaped(<alchemistry:fusion_core>, [[<alchemistry:fusion_casing>,<avaritia:resource:4>,<alchemistry:fusion_casing>],[<alchemistry:ingot:104>,<alchemistry:fission_core>,<alchemistry:ingot:104>],[<alchemistry:fusion_casing>,<avaritia:resource:4>,<alchemistry:fusion_casing>]]);

# Fusion Controller
recipes.remove(<alchemistry:fusion_controller>);
recipes.addShaped(<alchemistry:fusion_controller>, [[<alchemistry:fusion_casing>,<contenttweaker:essence_of_matter>,<alchemistry:fusion_casing>],[<avaritia:resource:4>,<contenttweaker:ultimate_machine_frame>,<avaritia:resource:4>],[<alchemistry:fusion_casing>,<alchemistry:fission_controller>,<alchemistry:fusion_casing>]]);

# Lights
function addAlchemistryLightRecipe(output as IItemStack, element as IItemStack) {
  recipes.remove(output);
  recipes.addShaped(output, [[<mekanism:basicblock:10>,element,<mekanism:basicblock:10>],[element,element,element],[<mekanism:basicblock:10>,element,<mekanism:basicblock:10>]]);
}

# Neon Light
addAlchemistryLightRecipe(<alchemistry:neon_light>,<alchemistry:element:10>);

# Helium Light
addAlchemistryLightRecipe(<alchemistry:helium_light>,<alchemistry:element:2>);

# Argon Light
addAlchemistryLightRecipe(<alchemistry:argon_light>,<alchemistry:element:18>);

# Krypton Light
addAlchemistryLightRecipe(<alchemistry:krypton_light>,<alchemistry:element:36>);

# Xenon Light
addAlchemistryLightRecipe(<alchemistry:xenon_light>,<alchemistry:element:54>);

print("ENDING Alchemistry.zs");