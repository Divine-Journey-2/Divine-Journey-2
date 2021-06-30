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
mods.alchemistry.Dissolver.addRecipe(<draconicevolution:draconic_core>, true, 1, [[40, <alchemistry:compound:8>],[20, <alchemistry:element:6> * 16],[20, <alchemistry:element:26> * 16],[20, <alchemistry:element:16> * 12]]);

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
mods.alchemistry.Dissolver.addRecipe(<botania:rune:8>, true, 1, [[100, <alchemistry:compound:29> * 24]]);
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
mods.alchemistry.Dissolver.addRecipe(<bewitchment:bottled_hellfire>, true, 1, [[50, <alchemistry:compound:20>, <alchemistry:element:6> * 16],[50, <alchemistry:compound:5>, <alchemistry:element:6> * 16]]);

# Psilocybin <- Refined Coralium Ingot
mods.alchemistry.Dissolver.removeRecipe(<minecraft:brown_mushroom>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:brown_mushroom>, true, 1, [[100, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:red_mushroom>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:red_mushroom>, true, 1, [[100, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:cingot>, true, 1, [[50, <alchemistry:compound:21>, <alchemistry:element:26> * 2],[50, <alchemistry:compound:10>, <alchemistry:element:26> * 4]]);
mods.alchemistry.Dissolver.addRecipe(<abyssalcraft:ingotblock:1>, true, 1, [[50, <alchemistry:compound:21> * 9, <alchemistry:element:26> * 18],[50, <alchemistry:compound:10> * 9, <alchemistry:element:26> * 36]]);

# Zinc Oxide <- Alchemical Brass Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<minecraft:netherrack>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:netherrack>, true, 1, [[50, <alchemistry:compound:1>],[10, <alchemistry:element:6>],[10, <alchemistry:element:15>],[10, <alchemistry:element:14>],[10, <alchemistry:element:16>],[10, <alchemistry:element:79>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:netherbrick>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:netherbrick>, true, 1, [[50, <alchemistry:compound:1>],[10, <alchemistry:element:6>],[10, <alchemistry:element:15>],[10, <alchemistry:element:14>],[10, <alchemistry:element:16>],[10, <alchemistry:element:79>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:nether_brick>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:nether_brick>, true, 1, [[50, <alchemistry:compound:1>],[10, <alchemistry:element:6>],[10, <alchemistry:element:15>],[10, <alchemistry:element:14>],[10, <alchemistry:element:16>],[10, <alchemistry:element:79>]]);
mods.alchemistry.Dissolver.addRecipe(<thaumcraft:ingot:2>, true, 1, [[40, <alchemistry:compound:22>, <alchemistry:element:26> * 6, <alchemistry:element:6> * 6],[30, <alchemistry:compound:10>, <alchemistry:element:26> * 6, <alchemistry:element:6> * 6],[30, <alchemistry:element:79>* 6, <alchemistry:element:26> * 6, <alchemistry:element:6> * 6]]);
mods.alchemistry.Dissolver.addRecipe(<thaumcraft:metal_brass>, true, 1, [[40, <alchemistry:compound:22> * 9, <alchemistry:element:26> * 54, <alchemistry:element:6> * 54],[30, <alchemistry:compound:10> * 9, <alchemistry:element:26> * 54, <alchemistry:element:6> * 54],[30, <alchemistry:element:79>* 54, <alchemistry:element:26> * 54, <alchemistry:element:6> * 54]]);

# Lead Iodide <- Evil Infused Iron Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<ore:dyeYellow>);
mods.alchemistry.Dissolver.addRecipe(<extrautils2:ingredients:17>, true, 1, [[50, <alchemistry:compound:25> * 4, <alchemistry:element:26> * 6],[50, <alchemistry:compound:10> * 4, <alchemistry:element:26> * 6]]);
mods.alchemistry.Dissolver.addRecipe(<extrautils2:simpledecorative:2>, true, 1, [[50, <alchemistry:compound:25> * 36, <alchemistry:element:26> * 54],[50, <alchemistry:compound:10> * 36, <alchemistry:element:26> * 54]]);

# Urea <- Luminessence
mods.alchemistry.Dissolver.addRecipe(<extendedcrafting:material:7>, true, 1, [[50, <alchemistry:compound:28>, <alchemistry:element:1> * 16],[50, <alchemistry:compound:54>, <alchemistry:element:1> * 16]]);

# Potassium Cyanide <- Elevaium Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<minecraft:fish:3>);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:ingot_of_elevation>, true, 1, [[50, <alchemistry:compound:54>, <alchemistry:element:79> * 16],[50, <alchemistry:compound:54>, <alchemistry:element:6> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:block_of_elevation>, true, 1, [[50, <alchemistry:compound:54> * 9, <alchemistry:element:79> * 64, <alchemistry:element:79> * 64, <alchemistry:element:79> * 16],[50, <alchemistry:compound:54> * 9, <alchemistry:element:6> * 64, <alchemistry:element:6> * 64, <alchemistry:element:6> * 16]]);

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
mods.alchemistry.Dissolver.addRecipe(<plustic:mirioningot>, true, 1, [[25, <alchemistry:compound:23>, <alchemistry:compound:10>, <alchemistry:element:6> * 6],[25, <alchemistry:compound:18>, <alchemistry:compound:10>, <alchemistry:element:6> * 6],[25, <alchemistry:compound:23>, <alchemistry:element:26> * 6, <alchemistry:element:6> * 6],[25, <alchemistry:compound:18>, <alchemistry:element:26> * 6, <alchemistry:element:6> * 6]]);
mods.alchemistry.Dissolver.addRecipe(<plustic:mirionblock>, true, 1, [[25, <alchemistry:compound:23> * 9, <alchemistry:compound:10> * 9, <alchemistry:element:6> * 54],[25, <alchemistry:compound:18> * 9, <alchemistry:compound:10> * 9, <alchemistry:element:6> * 54],[25, <alchemistry:compound:23> * 9, <alchemistry:element:26> * 54, <alchemistry:element:6> * 54],[25, <alchemistry:compound:18> * 9, <alchemistry:element:26> * 54, <alchemistry:element:6> * 54]]);

# Mescaline <- Void Metal Ingot & Block
mods.alchemistry.Dissolver.removeRecipe(<minecraft:cactus>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:cactus>, true, 1, [[100, <alchemistry:compound>]]);
mods.alchemistry.Dissolver.addRecipe(<thaumcraft:ingot:1>, true, 1, [[50, <alchemistry:compound:32>, <alchemistry:element:26> * 6],[50, <alchemistry:compound:10>, <alchemistry:element:26> * 6]]);
mods.alchemistry.Dissolver.addRecipe(<thaumcraft:metal_void>, true, 1, [[50, <alchemistry:compound:32> * 9, <alchemistry:element:26> * 54],[50, <alchemistry:compound:10> * 9, <alchemistry:element:26> * 54]]);

# Strontium Carbonate
mods.alchemistry.Dissolver.removeRecipe(<minecraft:redstone>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:redstone>, true, 1, [[100, <alchemistry:compound:10>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:redstone_ore>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:redstone_ore>, true, 1, [[100, <alchemistry:compound:10> * 3, <alchemistry:compound:1>]]);
mods.alchemistry.Dissolver.removeRecipe(<minecraft:redstone_block>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:redstone_block>, true, 1, [[100, <alchemistry:compound:10> * 9]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:impetus_crystal>, true, 1, [[100, <alchemistry:compound:17> * 2, <alchemistry:compound:32> * 2]]);
mods.alchemistry.Dissolver.addRecipe(<thaumicaugmentation:material:5>, true, 1, [[100, <alchemistry:compound:17> * 3, <alchemistry:compound:32> * 2]]);
mods.alchemistry.Dissolver.addRecipe(<thaumicaugmentation:material:3>, true, 1, [[100, <alchemistry:compound:17> * 12, <alchemistry:compound:32> * 10]]);

# Potassium Dichromate <- Solar Array Wafer, Advanced Wafer, plus other Wafers
mods.alchemistry.Dissolver.addRecipe(<galacticraftplanets:basic_item_venus:6>, true, 1, [[100, <alchemistry:compound:40>, <alchemistry:compound:1> * 3, <alchemistry:element:24> * 4]]);
mods.alchemistry.Dissolver.addRecipe(<galacticraftcore:basic_item:12>, true, 1, [[100, <alchemistry:element:7> * 16, <alchemistry:compound:1> * 4, <alchemistry:element:24> * 3]]);
mods.alchemistry.Dissolver.addRecipe(<galacticraftcore:basic_item:14>, true, 1, [[100, <alchemistry:compound:40>, <alchemistry:compound:1> * 3, <alchemistry:element:24> * 4]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:cheesy_wafer>, true, 1, [[100, <alchemistry:compound:9>, <alchemistry:compound:11>, <alchemistry:compound:1> * 2, <alchemistry:element:24> * 2]]);
mods.alchemistry.Dissolver.addRecipe(<galacticraftcore:basic_item:13>, true, 1, [[100, <alchemistry:compound:33>, <alchemistry:compound:43>, <alchemistry:compound:1>, <alchemistry:element:24>]]);

# Potassium Permanganate <- Hybrid Abyssalium Ingot & Block
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:hybrid_abyssalium_ingot>, true, 1, [[100, <alchemistry:compound:42>, <alchemistry:compound:21>, <alchemistry:element:25> * 4]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:hybrid_abyssalium_block>, true, 1, [[100, <alchemistry:compound:42> * 9, <alchemistry:compound:21> * 9, <alchemistry:element:25> * 36]]);

# Cadmium Sulfide, Magnesium Sulfate <- Flying Ointment
mods.alchemistry.Dissolver.addRecipe(<bewitchment:flying_ointment>, true, 1, [[50, <alchemistry:compound:45>,<alchemistry:compound:43>,<alchemistry:element:8> * 8,<alchemistry:element:7> * 8],[50, <alchemistry:compound:43>,<alchemistry:element:8> * 16,<alchemistry:element:7> * 16]]);

# Chromium Oxide, Magnesium Sulfate <- Bottled Frostfire
mods.alchemistry.Dissolver.addRecipe(<bewitchment:bottled_frostfire>, true, 1, [[50, <alchemistry:compound:46>,<alchemistry:compound:43>,<alchemistry:element:8> * 8,<alchemistry:element:7> * 8],[50, <alchemistry:compound:43>,<alchemistry:element:8> * 16,<alchemistry:element:7> * 16]]);

# Antimony Trioxide <- End Steel Ingot & Block
mods.alchemistry.Dissolver.addRecipe(<enderio:item_alloy_ingot:8>, true, 1, [[50, <alchemistry:compound:47>, <alchemistry:element:26> * 6],[50, <alchemistry:compound:10>, <alchemistry:element:26> * 6]]);
mods.alchemistry.Dissolver.addRecipe(<enderio:block_alloy:8>, true, 1, [[50, <alchemistry:compound:47> * 9, <alchemistry:element:26> * 54],[50, <alchemistry:compound:10> * 9, <alchemistry:element:26> * 54]]);

# Titanium Oxide <- Compressed Titanium & Titanium Box
mods.alchemistry.Dissolver.addRecipe(<galacticraftplanets:item_basic_asteroids:6>, true, 1, [[50, <alchemistry:compound:48>, <alchemistry:element:22> * 8],[50, <alchemistry:element:22> * 16]]);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:titanium_box>, true, 1, [[100, <alchemistry:compound:48> * 4, <alchemistry:element:22> * 32]]);

# Han Purple <- Wyvern Core
mods.alchemistry.Dissolver.addRecipe(<draconicevolution:wyvern_core>, true, 1, [[100, <alchemistry:compound:49>, <alchemistry:compound:8> * 2]]);

# Arsenic Sulfide <- Rainbow Tablet
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:rainbow_tablet>, true, 1, [[100, <alchemistry:compound:50>, <alchemistry:compound:1> * 2, <alchemistry:element:6> * 8, <alchemistry:element:24> * 2]]);

# Barium Sulfate, Copper Chloride <- Crystaltine Ingot
mods.alchemistry.Dissolver.addRecipe(<extendedcrafting:material:24>, true, 1, [[100, <alchemistry:compound:51>, <alchemistry:compound:54> * 10, <alchemistry:compound:44> * 10]]);

# Copper Chloride <- Crystalline Ingot & Block
mods.alchemistry.Dissolver.addRecipe(<enderio:item_alloy_endergy_ingot:1>, true, 1, [[100, <alchemistry:compound:54>, <alchemistry:compound:44>]]);
mods.alchemistry.Dissolver.addRecipe(<enderio:block_alloy_endergy:1>, true, 1, [[100, <alchemistry:compound:54> * 9, <alchemistry:compound:44> * 9]]);

# Mercury Sulfide <- Supremium Ingot & Block
mods.alchemistry.Dissolver.addRecipe(<mysticalagriculture:crafting:37>, true, 1, [[100, <alchemistry:compound:60> * 12, <alchemistry:element:50> * 6, <alchemistry:element:47> * 6, <alchemistry:element:82> * 6]]);
mods.alchemistry.Dissolver.addRecipe(<mysticalagriculture:ingot_storage:5>, true, 1, [[100, <alchemistry:compound:60> * 64, <alchemistry:compound:60> * 44, <alchemistry:element:50> * 54, <alchemistry:element:47> * 54, <alchemistry:element:82> * 54]]);

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
mods.extendedcrafting.TableCrafting.addShaped(<alchemistry:chemical_combiner>,
[[<contenttweaker:chromium_barium_compound>,null,null,null,<contenttweaker:chromium_barium_compound>],
[null,<contenttweaker:chromium_barium_compound>,<contenttweaker:corrupted_core>,<contenttweaker:chromium_barium_compound>,null],
[null,<rftools:machine_base>,<draconicevolution:fusion_crafting_core>,<rftools:machine_base>,null],
[<rftools:machine_base>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:alchemical_machine_frame>,<contenttweaker:antimony_strontium_compound>,<rftools:machine_base>],
[<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>,<contenttweaker:antimony_strontium_compound>]]);

# Mercury from Mercury liquid
mods.alchemistry.Atomizer.addRecipe(<alchemistry:element:80> * 16, <liquid:mercury> * 1000);

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

print("ENDING Alchemistry.zs");