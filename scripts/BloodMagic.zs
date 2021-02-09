# Author: Atricos

import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;
import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.Apothecary;

print("STARTING BloodMagic.zs");

# No Grass crafting in the Alchemy Table
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:dirt:*>,<minecraft:dye:15>,<minecraft:wheat_seeds>]);

# No Cutting Fluid recipes
var allOres = <ore:allOres>;
allOres.addAll(<ore:oreSaltpeter>); 
allOres.addAll(<ore:oreSalt>);
allOres.addAll(<ore:oreSilver>);
allOres.addAll(<ore:oreLead>);
allOres.addAll(<ore:oreDilithium>);
allOres.addAll(<ore:oreRedstone>);
allOres.addAll(<ore:oreCertusQuartz>);
allOres.addAll(<ore:oreDraconium>);
allOres.addAll(<ore:oreSilicon>);
allOres.addAll(<ore:oreIron>);
allOres.addAll(<ore:oreNickel>);
allOres.addAll(<ore:oreTitanium>);
allOres.addAll(<ore:oreOsmium>);
allOres.addAll(<ore:oreAstralStarmetal>);
allOres.addAll(<ore:oreAbyssalnite>);
allOres.addAll(<ore:oreCopper>);
allOres.addAll(<ore:oreGold>);
allOres.addAll(<ore:oreIridium>);
allOres.addAll(<ore:oreLead>);
allOres.addAll(<ore:oreQuartz>);
allOres.addAll(<ore:oreYellorite>);
allOres.addAll(<ore:oreLapis>);
allOres.addAll(<ore:oreAluminium>);
allOres.addAll(<ore:oreNaturalAluminum>);
allOres.addAll(<ore:oreAluminum>);
allOres.addAll(<ore:oreMithril>);
allOres.addAll(<ore:oreLiquifiedCoralium>);
allOres.addAll(<ore:oreTin>);
allOres.addAll(<ore:oreDiamond>);
allOres.addAll(<ore:oreQuartzBlack>);
allOres.addAll(<ore:oreEmerald>);
allOres.addAll(<ore:oreCoal>);
allOres.addAll(<ore:orePlatinum>);
allOres.addAll(<ore:oreNetherEmerald>);
allOres.addAll(<ore:oreNetherDiamond>);
allOres.addAll(<ore:oreNetherRedstone>);
allOres.addAll(<ore:oreNetherLapis>);
allOres.addAll(<ore:oreNetherCoal>);
allOres.addAll(<ore:oreNetherGold>);
allOres.addAll(<ore:oreNetherIron>);
allOres.addAll(<ore:oreNetherCopper>);
allOres.addAll(<ore:oreNetherTin>);
for ore in allOres.items {
	mods.bloodmagic.AlchemyTable.removeRecipe([ore, <bloodmagic:cutting_fluid>]);
}
for ore in <ore:oreNaturalAluminum>.items {
	mods.bloodmagic.AlchemyTable.removeRecipe([ore, <bloodmagic:cutting_fluid>]);
}

# Blood Altar
recipes.remove(<bloodmagic:altar>);
mods.extendedcrafting.TableCrafting.addShaped(<bloodmagic:altar>,
[[<abyssalcraft:ingotblock:2>,<enderutilities:enderpart:2>,<enderutilities:enderpart:2>,<enderutilities:enderpart:2>,<abyssalcraft:ingotblock:2>],
[<abyssalcraft:ingotblock:1>,<actuallyadditions:block_crystal_empowered:3>,<contenttweaker:dread_crystal>,<actuallyadditions:block_crystal_empowered:3>,<abyssalcraft:ingotblock:1>],
[<abyssalcraft:ingotblock:1>,<actuallyadditions:block_crystal_empowered:3>,<extrautils2:drum:3>,<actuallyadditions:block_crystal_empowered:3>,<abyssalcraft:ingotblock:1>],
[<abyssalcraft:ingotblock:1>,<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_crystal_empowered:3>,<abyssalcraft:ingotblock:1>],
[<abyssalcraft:stone>,<abyssalcraft:stone>,<abyssalcraft:stone>,<abyssalcraft:stone>,<abyssalcraft:stone>]]);

# Sacrificial Dagger
recipes.remove(<bloodmagic:sacrificial_dagger>);
recipes.addShapedMirrored(<bloodmagic:sacrificial_dagger>.withTag({sacrifice: 0 as byte}), [[null,null,<abyssalcraft:oblivionshard>],[<abyssalcraft:abyingot>,<abyssalcraft:oblivionshard>,null],[<actuallyadditions:item_crystal_empowered:1>,<abyssalcraft:abyingot>,null]]);

# Dagger of Sacrifice
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:iron_sword>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, <abyssalcraft:dreadiumsword>, 1, 5000, 100, 100);

# Rudimentary Snare
recipes.remove(<bloodmagic:soul_snare>);
recipes.addShapedMirrored(<bloodmagic:soul_snare> * 2, [[null,<thermalfoundation:material:136>,<thermalfoundation:material:200>],[<thermalfoundation:material:136>,<contenttweaker:hardened_blood_droplet>,<ore:string>],[<thermalfoundation:material:136>,<ore:string>,<ore:string>]]);

# Hellfire Forge
recipes.remove(<bloodmagic:soul_forge>);
mods.extendedcrafting.TableCrafting.addShaped(<bloodmagic:soul_forge>,
[[<thermalfoundation:storage:8>,null,null,null,<thermalfoundation:storage:8>],
[<thermalfoundation:storage:7>,<thermalfoundation:storage:7>,<thermalfoundation:storage:8>,<thermalfoundation:storage:7>,<thermalfoundation:storage:7>],
[<enderio:block_alloy:6>,<betternether:cincinnasite_forge>,<contenttweaker:hardened_blood_droplet>,<betternether:cincinnasite_forge>,<enderio:block_alloy:6>],
[<enderio:block_alloy:6>,<betternether:cincinnasite_forge>,<contenttweaker:hardened_blood_droplet>,<betternether:cincinnasite_forge>,<enderio:block_alloy:6>],
[<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>]]);

# Petty Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:gold_ingot>,<ore:blockGlass>.firstItem,<ore:dyeBlue>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:soul_gem>.withTag({}), [<thermalfoundation:material:136>,<abyssalcraft:shadowshard>,<abyssalcraft:coralium>,<evilcraft:dark_gem>], 1, 1);

# Sanguine Scientiem
recipes.remove(<guideapi:bloodmagic-guide>);
recipes.addShapeless(<guideapi:bloodmagic-guide>, [<minecraft:book>,<contenttweaker:hardened_blood_droplet>,<contenttweaker:hardened_blood_droplet>]);

# Sentient Sword
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:iron_sword>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:sentient_sword>.withTag({}), [<bloodmagic:soul_gem>,<abyssalcraft:dreadiumsword>], 32, 4);

# Sentient Pickaxe
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:iron_pickaxe>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:sentient_pickaxe>.withTag({}), [<bloodmagic:soul_gem>,<abyssalcraft:dreadiumpickaxe>], 32, 4);

# Sentient Shovel
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:iron_shovel>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:sentient_shovel>.withTag({}), [<bloodmagic:soul_gem>,<abyssalcraft:dreadiumshovel>], 32, 4);

# Sentient Axe
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:iron_axe>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:sentient_axe>.withTag({}), [<bloodmagic:soul_gem>,<abyssalcraft:dreadiumaxe>], 32, 4);

# Sentient Bow
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:bow>,<bloodmagic:soul_gem:1>,<ore:string>.firstItem,<ore:string>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:sentient_bow>.withTag({}), [<abyssalcraft:corbow>,<bloodmagic:soul_gem:1>,<minecraft:string>,<minecraft:string>], 75, 4);

# Arcane Ashes
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,<ore:dyeWhite>.firstItem,<minecraft:gunpowder>,<minecraft:coal:*>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:arcane_ashes>, [<appliedenergistics2:material:45>,<enderio:item_material:37>,<natura:bonemeal_bag>,<thermalfoundation:fertilizer:2>], 1, 1);

function addBloodMagicSigilRecipeJustSwap(sigil as IItemStack, origInput1 as IItemStack, origInput2 as IItemStack) {
	addBloodMagicSigilRecipe(sigil, origInput1, origInput2, origInput2, origInput1);
}

function addBloodMagicSigilRecipe(sigil as IItemStack, origInput1 as IItemStack, origInput2 as IItemStack, newInput1 as IItemStack, newInput2 as IItemStack) {
	mods.bloodmagic.AlchemyArray.removeRecipe(origInput1, origInput2);
	mods.bloodmagic.AlchemyArray.addRecipe(sigil, newInput1, newInput2, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");
}

# Divination Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_divination>, <minecraft:redstone>, <bloodmagic:slate>, <bloodmagic:slate>, <actuallyadditions:item_engineer_goggles>);

# Blank Slate
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
for ds in dimensional_stones {
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate>, ds, 0, 1000, 40, 40);
}

# Reinforced Slate
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:1>, <bloodmagic:slate>, 1, 2500, 60, 60);

# Imbued Slate
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:1>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:2>, <bloodmagic:slate:1>, 2, 7500, 125, 125);

# Demonic Slate
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:2>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:3>, <bloodmagic:slate:2>, 3, 25000, 200, 200);

# Ethereal Slate
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:3>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:4>, <bloodmagic:slate:3>, 4, 60000, 250, 250);

# Weak Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:diamond>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <contenttweaker:dread_crystal>, 0, 2500, 10, 10);

# Blank Rune
recipes.remove(<bloodmagic:blood_rune>);
recipes.addShaped(<bloodmagic:blood_rune>, [[<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>],[<bloodmagic:slate>,blood_orb_at_least_tier_1.reuse(),<bloodmagic:slate>],[<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>]]);

# Alchemy Table
recipes.remove(<bloodmagic:alchemy_table>);
mods.extendedcrafting.TableCrafting.addShaped(<bloodmagic:alchemy_table>,
[[<thermalfoundation:glass:7>,<minecraft:glass_bottle>,<minecraft:glass_bottle>,<minecraft:glass_bottle>,<thermalfoundation:glass:7>],
[<enderio:block_alloy:6>,<contenttweaker:steaming_restonia_crystal_block>,empowered_glod_crystal_block,<contenttweaker:steaming_restonia_crystal_block>,<enderio:block_alloy:6>],
[<enderio:block_alloy:6>,<enderio:block_alloy:6>,<contenttweaker:hardened_blood_droplet>,<enderio:block_alloy:6>,<enderio:block_alloy:6>],
[null,<abyssalcraft:ingotblock:2>,<enderio:block_alloy:6>,<abyssalcraft:ingotblock:2>,null],
[<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>]]);

function blood_magic_add_rune_recipe_with_unique_input(rune as IItemStack, runeInput as IItemStack, input1 as IIngredient, input2 as IIngredient) {
	recipes.remove(rune);
	mods.immersiveengineering.ArcFurnace.addRecipe(rune, runeInput, null, 160, 512, [input1, input2], "Alloying");
	EIOAlloySmelter.addRecipe(rune, [runeInput, input1, input2], 24000);
}

function blood_magic_add_rune_recipe(rune as IItemStack, input1 as IIngredient, input2 as IIngredient) {
	blood_magic_add_rune_recipe_with_unique_input(rune, <bloodmagic:blood_rune>, input1, input2);
}

# Speed Rune
blood_magic_add_rune_recipe(<bloodmagic:blood_rune:1>, <actuallyadditions:item_drill_upgrade_speed_iii>, <bloodmagic:slate:1> * 2);

# Rune of Self-Sacrifice
blood_magic_add_rune_recipe(<bloodmagic:blood_rune:4>, <thermalfoundation:storage_alloy:6>, <bloodmagic:slate:1> * 2);

# Rune of Sacrifice
blood_magic_add_rune_recipe(<bloodmagic:blood_rune:3>, <thermalfoundation:storage_alloy:5>, <bloodmagic:slate:2> * 2);

# Apprentice Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:redstone_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <contenttweaker:coralium_decorated_blood_star>, 1, 12000, 15, 15);

# Magician Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:gold_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <contenttweaker:frozen_blood_core>, 2, 25000, 15, 15);

# Water Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:sugar>,<minecraft:water_bucket>,<minecraft:water_bucket>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component>, [<minecraft:water_bucket>,<minecraft:water_bucket>,<quark:sugar_block>,<mekanism:saltblock>], 8, 2);

# Lava Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:lava_bucket>,<minecraft:redstone>,<ore:cobblestone>.firstItem,<ore:blockCoal>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:1>, [<minecraft:lava_bucket>,<minecraft:lava_bucket>,<contenttweaker:fluxed_electrum_block>,<minecraft:coal_block>], 8, 2);

# Air Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ghast_tear>,<ore:feather>.firstItem,<ore:feather>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:2>, [<minecraft:glass_bottle>,<minecraft:glass_bottle>,<immersiveengineering:toolupgrade>,<immersiveengineering:wooden_device1:1>], 8, 2);

# Haste Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:cookie>,<minecraft:sugar>,<minecraft:cookie>,<ore:stone>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:13>, [<bibliocraft:cookiejar>,<minecraft:potion>.withTag({Potion: "cofhcore:haste4"}),<minecraft:glowstone>,<quark:sugar_block>], 72, 6);

# Frost Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ice>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:redstone>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:32>, [<minecraft:packed_ice>,<minecraft:snow>,<enderio:item_alloy_endergy_ingot:6>,<thermalfoundation:material:1025>], 72, 6);

# Growth Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<ore:treeSapling>.firstItem,<ore:treeSapling>.firstItem,<ore:sugarcane>.firstItem,<minecraft:sugar>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:5>, [<minecraft:bone_block>,<natura:overworld_sapling>,<natura:overworld_sapling2:1>,<minecraft:melon>], 72, 6);

# Elasticity Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:slime>,<minecraft:slime>,<minecraft:leather>,<ore:string>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:31>, [<minecraft:slime>,<minecraft:slime>,<contenttweaker:blood_infused_leather>,<erebus:silk>], 500, 32);

# Void Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:bucket>,<ore:string>.firstItem,<ore:string>.firstItem,<minecraft:gunpowder>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:4>, [<quantumflux:voidbucket>,<actuallyadditions:item_crystal_empowered:3>,<actuallyadditions:item_crystal_empowered:3>,<contenttweaker:mobgrindium_block>], 500, 32);

# Suppression Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:teleposer>,<minecraft:water_bucket>,<minecraft:lava_bucket>,<minecraft:blaze_rod>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:9>, [<actuallyadditions:block_misc:8>,<forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "vapor_of_levity", Amount: 1000}),<enderio:item_material:44>], 500, 32);

# Lesser Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:diamond>,<ore:blockRedstone>.firstItem,<ore:blockLapis>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:soul_gem:1>.withTag({}), [<bloodmagic:soul_gem>,<contenttweaker:gusty_core>,<contenttweaker:aquatic_core>,<contenttweaker:fire_core>], 64, 32);

# Rune of Capacity
blood_magic_add_rune_recipe(<bloodmagic:blood_rune:6>, <enderio:block_tank:1>, <bloodmagic:slate:2> * 2);

# Incense Altar
recipes.remove(<bloodmagic:incense_altar>);
recipes.addShaped(<bloodmagic:incense_altar>, [[<enderutilities:enderpart:1>,null,<enderutilities:enderpart:1>],[<contenttweaker:holy_core>,<evilcraft:promise_acceptor:1>,<contenttweaker:holy_core>],[empowered_glod_crystal_block,<betternether:cincinnasite_forge>,empowered_glod_crystal_block]]);

# Wooden Path
recipes.remove(<bloodmagic:path>);
recipes.addShaped(<bloodmagic:path>, [[<evilcraft:undead_plank>,<evilcraft:undead_plank>,<evilcraft:undead_plank>],[<evilcraft:undead_plank>,blood_orb_at_least_tier_2,<evilcraft:undead_plank>],[<evilcraft:undead_plank>,<evilcraft:undead_plank>,<evilcraft:undead_plank>]]);

# Stone Brick Path
recipes.remove(<bloodmagic:path:2>);
recipes.addShaped(<bloodmagic:path:2> * 2, [[<extrautils2:compressedcobblestone:1>,<bloodmagic:path>,<extrautils2:compressedcobblestone:1>],[<bloodmagic:path>,blood_orb_at_least_tier_3,<bloodmagic:path>],[<extrautils2:compressedcobblestone:1>,<bloodmagic:path>,<extrautils2:compressedcobblestone:1>]]);

# Binding Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:gold_nugget>,<minecraft:gunpowder>]);
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:binding_reagent>, [<botania:rune>,<botania:rune:1>,<botania:rune:2>,<botania:rune:3>], 64, 64);

# Bound Blade
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_sword>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelsword>, <contenttweaker:binding_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Bound Pickaxe
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_pickaxe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelpick>, <contenttweaker:binding_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Bound Shovel
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_shovel>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelshovel>, <contenttweaker:binding_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Bound Axe
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_axe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelaxe>, <contenttweaker:binding_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Large Bloodstone Tile
recipes.remove(<bloodmagic:decorative_brick>);
recipes.addShaped(<bloodmagic:decorative_brick>, [[<contenttweaker:hybrid_abyssalium_ingot>,<bloodmagic:blood_shard>,<contenttweaker:hybrid_abyssalium_ingot>],[<bloodmagic:blood_shard>,<contenttweaker:power_core>,<bloodmagic:blood_shard>],[<contenttweaker:hybrid_abyssalium_ingot>,<bloodmagic:blood_shard>,<contenttweaker:hybrid_abyssalium_ingot>]]);

# Master Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:blood_shard>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}), <bloodmagic:decorative_brick>, 3, 60000, 50, 50);

# Ritual Stone
recipes.removeShaped(<bloodmagic:ritual_stone>, [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<bloodmagic:ritual_stone> * 4, [[<minecraft:obsidian>,<bloodmagic:slate:2>,<minecraft:obsidian>],[<bloodmagic:slate:2>,<contenttweaker:dark_core>,<bloodmagic:slate:2>],[<minecraft:obsidian>,blood_orb_at_least_tier_4.reuse(),<minecraft:obsidian>]]);

# Master Ritual Stone
recipes.removeShaped(<bloodmagic:ritual_controller>, [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<bloodmagic:ritual_controller>, [[<contenttweaker:compressed_obsidian1>,<bloodmagic:ritual_stone>,<contenttweaker:compressed_obsidian1>],[<bloodmagic:ritual_stone>,blood_orb_at_least_tier_4.reuse(),<bloodmagic:ritual_stone>],[<contenttweaker:compressed_obsidian1>,<bloodmagic:ritual_stone>,<contenttweaker:compressed_obsidian1>]]);

# Lava Crystal
recipes.remove(<bloodmagic:lava_crystal>);
recipes.addShaped(<bloodmagic:lava_crystal>, [[<abyssalcraft:crystalcluster:3>,<abyssalcraft:crystalcluster:15>,<abyssalcraft:crystalcluster:3>],[<abyssalcraft:crystalcluster:15>,<botania:rune:1>,<abyssalcraft:crystalcluster:15>],[<abyssalcraft:crystalcluster:3>,blood_orb_at_least_tier_4.reuse(),<abyssalcraft:crystalcluster:3>]]);

# Weak Activation Crystal
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:lava_crystal>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:activation_crystal>, <bloodmagic:lava_crystal>, 3, 100000, 60, 60);

# Awakened Activation Crystal
recipes.remove(<bloodmagic:activation_crystal:1>);
recipes.addShaped(<bloodmagic:activation_crystal:1>, [[null,<evilcraft:weather_container:3>,null],[<minecraft:nether_star>,<bloodmagic:activation_crystal>,<abyssalcraft:lifecrystal>],[null,<botania:rune:8>,null]]);

# Elemental Inscription Tool: Water
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:lapis_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:1>.withTag({uses: 10}), <botania:rune>, 3, 40000, 60, 60);

# Elemental Inscription Tool: Fire
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:magma_cream>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:2>.withTag({uses: 10}), <botania:rune:1>, 3, 40000, 60, 60);

# Elemental Inscription Tool: Earth
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:obsidian>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:3>.withTag({uses: 10}), <botania:rune:2>, 3, 40000, 60, 60);

# Elemental Inscription Tool: Air
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:ghast_tear>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:4>.withTag({uses: 10}), <botania:rune:3>, 3, 40000, 60, 60);

# Elemental Inscription Tool: Dusk
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:coal_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:5>.withTag({uses: 10}), <botania:rune:8>, 3, 40000, 60, 60);

# Elemental Inscription Tool: Dawn
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:glowstone>);

# Ritual Diviner
recipes.remove(<bloodmagic:ritual_diviner>);
recipes.addShaped(<bloodmagic:ritual_diviner>, [[<botania:spellcloth>.noReturn(),<bloodmagic:inscription_tool:2>.noReturn(),<botania:spellcloth>.noReturn()],[<bloodmagic:inscription_tool:4>.noReturn(),blood_orb_at_least_tier_4.reuse(),<bloodmagic:inscription_tool:3>.noReturn()],[<botania:spellcloth>.noReturn(),<bloodmagic:inscription_tool:1>.noReturn(),<botania:spellcloth>.noReturn()]]);

# Ritual Diviner [Dusk]
recipes.remove(<bloodmagic:ritual_diviner:1>);
recipes.addShaped(<bloodmagic:ritual_diviner:1>, [[<botania:spellcloth>.noReturn(),<abyssalcraft:crystalcluster:12>,<botania:spellcloth>.noReturn()],[<bloodmagic:inscription_tool:5>.noReturn(),<bloodmagic:ritual_diviner>,<bloodmagic:inscription_tool:5>.noReturn()],[<botania:spellcloth>.noReturn(),<contenttweaker:suppression_core>,<botania:spellcloth>.noReturn()]]);

# Ritual Dismantler
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:item_demon_crystal:2>,<bloodmagic:item_demon_crystal:2>,<bloodmagic:ritual_diviner>,<bloodmagic:blood_shard>]);
recipes.addShaped(<bloodmagic:ritual_dismantler>, [[null,<bloodmagic:ritual_diviner>,null],[<evilcraft:dull_dust>,<contenttweaker:reduction_core>,<evilcraft:dull_dust>]]);

# Common Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem:1>,<minecraft:diamond>,<minecraft:gold_block>,<bloodmagic:slate:2>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:soul_gem:2>.withTag({}), [<bloodmagic:soul_gem:1>,<contenttweaker:magical_core>,<contenttweaker:holy_core>,<contenttweaker:environmental_core>], 256, 128);

# Demon Crystallizer
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_forge>,<ore:stone>.firstItem,<minecraft:dye:4>,<ore:blockGlass>.firstItem]);
recipes.addShaped(<bloodmagic:demon_crystallizer>, [[<enderio:block_alloy:6>,<contenttweaker:potency_core>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<bloodmagic:soul_forge>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<extendedcrafting:frame>,<enderio:block_alloy:6>]]);

# Demon Crucible
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:cauldron>,<ore:stone>.firstItem,<minecraft:dye:4>,<minecraft:diamond>]);
recipes.addShaped(<bloodmagic:demon_crucible>, [[<enderio:block_alloy:6>,<contenttweaker:defensive_core>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<bloodmagic:soul_forge>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<extendedcrafting:frame>,<enderio:block_alloy:6>]]);

# Demon Pylon
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>,<ore:stone>.firstItem,<bloodmagic:item_demon_crystal:*>]);
recipes.addShaped(<bloodmagic:demon_pylon>, [[<enderio:block_alloy:6>,<bloodmagic:item_demon_crystal:*>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<bloodmagic:soul_forge>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<extendedcrafting:frame>,<enderio:block_alloy:6>]]);

# Demon Will Aura Gauge
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:gold_ingot>,<minecraft:redstone>,<ore:blockGlass>.firstItem,<bloodmagic:item_demon_crystal:*>]);
recipes.addShaped(<bloodmagic:demon_will_gauge>, [[null,<contenttweaker:praesidium>,null],[<contenttweaker:potentia>,<enderio:item_conduit_probe>,<contenttweaker:potentia>],[null,<contenttweaker:praesidium>,null]]);

# Rune of Augmented Capacity
blood_magic_add_rune_recipe_with_unique_input(<bloodmagic:blood_rune:7>, <bloodmagic:blood_rune:6>, <extrautils2:drum:3>, <bloodmagic:slate:3> * 2);

# Efficiency Rune
blood_magic_add_rune_recipe(<bloodmagic:blood_rune:2>, <botania:rune:8>, <bloodmagic:slate:3> * 2);

# Charging Rune
blood_magic_add_rune_recipe_with_unique_input(<bloodmagic:blood_rune:10>, <bloodmagic:blood_rune:1>, <botania:manaresource:8> * 3, <bloodmagic:slate:4> * 2);

# Displacement Rune
blood_magic_add_rune_recipe(<bloodmagic:blood_rune:5>, <botania:rune>, <bloodmagic:slate:4> * 2);

# Acceleration Rune
blood_magic_add_rune_recipe_with_unique_input(<bloodmagic:blood_rune:9>, <bloodmagic:blood_rune:1>, <contenttweaker:aether> * 3, <bloodmagic:slate:4> * 2);

# Rune of the Orb
blood_magic_add_rune_recipe_with_unique_input(<bloodmagic:blood_rune:8>, <bloodmagic:blood_rune:7>, <enderutilities:enderpart:12>, <bloodmagic:slate:4> * 2);

# Air Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_air>, <bloodmagic:component:2>, <bloodmagic:slate:1>);

# Water Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_water>, <bloodmagic:component>, <bloodmagic:slate>);

# Lava Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_lava>, <bloodmagic:component:1>, <bloodmagic:slate>);

# Void Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_void>, <bloodmagic:component:4>, <bloodmagic:slate:1>);

# Sigil of the Green Grove
addBloodMagicSigilRecipe(<bloodmagic:sigil_green_grove>, <bloodmagic:component:5>, <bloodmagic:slate:1>, <bloodmagic:slate:2>, <bloodmagic:component:5>);

# Blood Lamp Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<ore:glowstone>.firstItem,<minecraft:torch>,<minecraft:redstone>,<minecraft:redstone>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:11>, [<torchmaster:dread_lamp>,<bibliocraft:lampgold>,<thermalfoundation:storage_alloy:6>,<botania:rune:4>], 64, 32);

# Sigil of the Blood Lamp
addBloodMagicSigilRecipe(<bloodmagic:sigil_blood_light>, <bloodmagic:component:11>, <bloodmagic:slate:2>, <bloodmagic:slate:3>, <bloodmagic:component:11>);

# Sigil of Elemental Affinity
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_elemental_affinity>, <bloodmagic:component:6>, <bloodmagic:slate:2>);

# Magnetism Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<ore:string>.firstItem,<minecraft:gold_ingot>,<minecraft:iron_block>,<minecraft:gold_ingot>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:12>, [<quantumflux:magnet:*>,<contenttweaker:power_core>,<simplyjetpacks:metaitemmods:12>,<simplyjetpacks:metaitemmods:12>], 64, 32);

# Sigil of Magnetism
addBloodMagicSigilRecipe(<bloodmagic:sigil_magnetism>, <bloodmagic:component:12>, <bloodmagic:slate:2>, <bloodmagic:slate:3>, <bloodmagic:component:12>);

# Sigil of Suppression
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_suppression>, <bloodmagic:component:9>, <bloodmagic:slate:3>);

# Sigil of Haste
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_haste>, <bloodmagic:component:13>, <bloodmagic:slate:3>);

# Mining Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_pickaxe>,<minecraft:iron_axe>,<minecraft:iron_shovel>,<minecraft:gunpowder>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:3>, [<botania:manasteelpick>,<botania:manasteelshovel>,<bloodmagic:component:13>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]})], 32, 16);

# Sigil of the Fast Miner
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_fast_miner>, <bloodmagic:component:3>, <bloodmagic:slate:1>);

# Sight Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:sigil_divination>,<ore:blockGlass>.firstItem,<ore:blockGlass>.firstItem,<minecraft:glowstone_dust>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:7>, [<bloodmagic:sigil_divination>,<botania:monocle>,<actuallyadditions:item_engineer_goggles_advanced>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 69 as short}]})], 32, 16);

# Seer's Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_seer>, <bloodmagic:component:7>, <bloodmagic:slate:1>, <bloodmagic:slate:3>, <bloodmagic:component:7>);

# Phantom Bridge Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:soul_sand>,<minecraft:soul_sand>,<ore:stone>.firstItem,<minecraft:obsidian>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:15>, [<actuallyadditions:block_phantomface>,<enderutilities:draw_bridge>,<contenttweaker:compressed_obsidian1>,<botania:manaresource>], 32, 16);

# Sigil of the Phantom Bridge
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_phantom_bridge>, <bloodmagic:component:15>, <bloodmagic:slate:3>);

# Sigil of the Whirlwind
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:sigil_whirlwind>, <bloodmagic:slate:2>, <contenttweaker:tempest_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Compression Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:gold_block>,<minecraft:obsidian>,<ore:cobblestone>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:14>, [<avaritia:compressed_crafting_table>,<thermalexpansion:machine:5>,<contenttweaker:reductus>,<contenttweaker:blood_infused_leather>], 32, 16);

# Sigil of Compression
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_compression>, <bloodmagic:component:14>, <bloodmagic:slate:3>);

# Severance Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ender_eye>,<minecraft:ender_pearl>,<minecraft:gold_ingot>,<minecraft:gold_ingot>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:16>, [<mob_grinding_utils:ender_inhibitor_on>,<mob_grinding_utils:ender_inhibitor_on>,<minecraft:ender_eye>,<minecraft:ender_eye>], 32, 16);

# Sigil of Ender Severance
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_ender_severance>, <bloodmagic:component:16>, <bloodmagic:slate:3>);

# Holding Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<ore:chestWood>.firstItem,<ore:leather>.firstItem,<ore:string>.firstItem,<ore:string>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:27>, [<appliedenergistics2:drive>,<contenttweaker:reduction_core>,<contenttweaker:blood_infused_leather>,<botania:manaresource:22>], 32, 16);

# Sigil of Holding
addBloodMagicSigilRecipe(<bloodmagic:sigil_holding>, <bloodmagic:component:27>, <bloodmagic:slate:2>, <bloodmagic:slate:3>, <bloodmagic:component:27>);

# Claw Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:flint>,<minecraft:flint>,<bloodmagic:cutting_fluid>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:30>, [<minecraft:flint>,<minecraft:flint>,<divinerpg:crab_claw>,<divinerpg:crab_claw>], 16, 4);

# Sigil of the Claw
addBloodMagicSigilRecipe(<bloodmagic:sigil_claw>, <bloodmagic:component:30>, <bloodmagic:slate:2>, <bloodmagic:slate:1>, <bloodmagic:component:30>);

# Sigil of Elasticity
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_bounce>, <bloodmagic:component:31>, <bloodmagic:slate:1>);

# Sigil of Winter's Breath
addBloodMagicSigilRecipe(<bloodmagic:sigil_frost>, <bloodmagic:component:32>, <bloodmagic:slate:1>, <bloodmagic:slate:2>, <bloodmagic:component:32>);

# Ritual Tinkerer
recipes.remove(<bloodmagic:ritual_reader>);
recipes.addShapedMirrored(<bloodmagic:ritual_reader>, [[null,<contenttweaker:virtus>,null],[null,<bloodmagic:ritual_controller>,<contenttweaker:virtus>],[blood_orb_at_least_tier_4,null,null]]);

# Blood Letter's Pack
recipes.remove(<bloodmagic:pack_self_sacrifice>);
recipes.addShaped(<bloodmagic:pack_self_sacrifice>, [[<contenttweaker:hybrid_abyssalium_ingot>,<enderio:block_tank:1>,<contenttweaker:hybrid_abyssalium_ingot>],[<contenttweaker:hybrid_abyssalium_ingot>,<abyssalcraft:dreadiumplate>,<contenttweaker:hybrid_abyssalium_ingot>],[<bloodmagic:slate>,null,<bloodmagic:slate>]]);

# Coat of Arms
recipes.remove(<bloodmagic:pack_sacrifice>);
recipes.addShaped(<bloodmagic:pack_sacrifice>, [[<abyssalcraft:dreadiumingot>,<enderio:block_tank:1>,<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumplate>,<abyssalcraft:dreadiumingot>],[<bloodmagic:slate>,null,<bloodmagic:slate>]]);

# Greater Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem:2>,<bloodmagic:slate:3>,<bloodmagic:blood_shard>,<bloodmagic:item_demon_crystal>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:soul_gem:3>.withTag({}), [<bloodmagic:soul_gem:2>,<bloodmagic:decorative_brick>,<bloodmagic:item_demon_crystal>,<contenttweaker:potency_core>], 1024, 512);

# Sentient Armour Gem
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:diamond_chestplate>,<bloodmagic:soul_gem:1>,<minecraft:iron_block>,<minecraft:obsidian>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:sentient_armour_gem>, [<bloodmagic:soul_gem:1>,<botania:manasteelchest>,<enderio:item_material:44>,<contenttweaker:defensive_core>], 512, 256);

# Living Helmet
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:living_armour_helmet>, <botania:manasteelhelm>, <contenttweaker:binding_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Living Chestplate
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:living_armour_chest>.withTag({}), <botania:manasteelchest>, <contenttweaker:binding_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Living Leggings
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:living_armour_leggings>, <botania:manasteellegs>, <contenttweaker:binding_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Living Boots
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:living_armour_boots>, <botania:manasteelboots>, <contenttweaker:binding_reagent>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Tome of Peritia
recipes.remove(<bloodmagic:experience_tome>);

# Potion Flask
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:potion>.withTag({Potion: "minecraft:water"}),<ore:cropNetherWart>.firstItem,<minecraft:redstone>,<minecraft:glowstone_dust>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:potion_flask>, [<minecraft:potion>.withTag({Potion: "minecraft:water"}),<minecraft:nether_wart>,<actuallyadditions:item_crystal>,<mekanism:ingot:3>], 1000, 200, 1);

# Simple Lengthening Catalyst
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:gunpowder>,<ore:cropNetherWart>.firstItem,<minecraft:dye:4>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:28>, [<minecraft:nether_wart>,<actuallyadditions:item_crystal>,<contenttweaker:aquasalus>], 2000, 200, 1);

# Simple Power Catalyst
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:gunpowder>,<ore:cropNetherWart>.firstItem,<minecraft:redstone>]);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:component:29>, [<minecraft:nether_wart>,<mekanism:ingot:3>,<contenttweaker:incendium>], 2000, 200, 1);

# Living Armor Training Bracelet
recipes.remove(<bloodmagic:upgrade_trainer>);
recipes.addShaped(<bloodmagic:upgrade_trainer>, [[null,<contenttweaker:power_core>,null],[<contenttweaker:power_core>,blood_orb_at_least_tier_4,<contenttweaker:power_core>],[null,<contenttweaker:power_core>,null]]);

# Demon Blood Shard
mods.botania.RuneAltar.addRecipe(<bloodmagic:blood_shard:1>, [<bloodmagic:blood_shard>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>,<botania:rune:13>,<botania:rune:11>,<botania:rune:15>,<contenttweaker:rune_of_deception>], 50000);

# Archmage Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:nether_star>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <bloodmagic:blood_shard:1>, 4, 120000, 80, 80);

# Grand Tartaric Gem

print("ENDING BloodMagic.zs");