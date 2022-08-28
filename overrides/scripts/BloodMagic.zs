# Author: Atricos, ByThePowerOfScience a.k.a Haiku

import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;
import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.Apothecary;
import dj2addons.bloodmagic.HellfireForge as DJ2AddonsHellFireForge;

print("STARTING BloodMagic.zs");

# No Grass crafting in the Alchemy Table
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:dirt:*>,<minecraft:dye:15>,<minecraft:wheat_seeds>]);

# No Cutting Fluid recipes
var allOres = [<ore:oreSaltpeter>,<ore:oreSalt>,<ore:oreSilver>,<ore:oreLead>,<ore:oreDilithium>,<ore:oreRedstone>,<ore:oreCertusQuartz>,<ore:oreDraconium>,
<ore:oreSilicon>,<ore:oreIron>,<ore:oreNickel>,<ore:oreTitanium>,<ore:oreOsmium>,<ore:oreAstralStarmetal>,<ore:oreAbyssalnite>,<ore:oreCopper>,<ore:oreGold>,
<ore:oreIridium>,<ore:oreLead>,<ore:oreQuartz>,<ore:oreYellorite>,<ore:oreLapis>,<ore:oreAluminium>,<ore:oreAluminum>,<ore:oreMithril>,
<ore:oreLiquifiedCoralium>,<ore:oreTin>,<ore:oreDiamond>,<ore:oreQuartzBlack>,<ore:oreEmerald>,<ore:oreCoal>,<ore:orePlatinum>,<ore:oreNetherEmerald>,
<ore:oreNetherDiamond>,<ore:oreNetherRedstone>,<ore:oreNetherLapis>,<ore:oreNetherCoal>,<ore:oreNetherGold>,<ore:oreNetherIron>,
<ore:oreNetherCopper>,<ore:oreNetherTin>] as IIngredient[];

for oreDict in allOres {
	for ore in oreDict.items {
		mods.bloodmagic.AlchemyTable.removeRecipe([ore, <bloodmagic:cutting_fluid>]);
	}
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

function addBloodMagicSigilRecipeJustSwap(sigil as IItemStack, origInput1 as IItemStack, origInput2 as IItemStack, texture as string) {
    addBloodMagicSigilRecipe(sigil, origInput1, origInput2, origInput2, origInput1, texture);
}

function addBloodMagicSigilRecipe(sigil as IItemStack, origInput1 as IItemStack, origInput2 as IItemStack, newInput1 as IItemStack, newInput2 as IItemStack, texture as string) {
    mods.bloodmagic.AlchemyArray.removeRecipe(origInput1, origInput2);
    mods.bloodmagic.AlchemyArray.addRecipe(sigil, newInput1, newInput2, "bloodmagic:textures/models/alchemyarrays/" + texture + ".png");
}

# Divination Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_divination>, <minecraft:redstone>, <bloodmagic:slate>, <bloodmagic:slate>, <actuallyadditions:item_engineer_goggles>, "divinationsigil");

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
	#EIOAlloySmelter.addRecipe(rune, [runeInput, input1, input2], 24000);
	# Alloy Smelter recipes in config/enderio/recipes/user/user_recipes.xml
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
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component>, [<minecraft:water_bucket>,<minecraft:water_bucket>,<quark:sugar_block>,<mekanism:saltblock>], 8, 4);

# Lava Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:lava_bucket>,<minecraft:redstone>,<ore:cobblestone>.firstItem,<ore:blockCoal>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:1>, [<minecraft:lava_bucket>,<minecraft:lava_bucket>,<contenttweaker:fluxed_electrum_block>,<minecraft:coal_block>], 8, 4);

# Air Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ghast_tear>,<ore:feather>.firstItem,<ore:feather>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:2>, [<minecraft:glass_bottle>,<minecraft:glass_bottle>,<immersiveengineering:toolupgrade>,<immersiveengineering:wooden_device1:1>], 8, 4);

# Haste Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:cookie>,<minecraft:sugar>,<minecraft:cookie>,<ore:stone>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:13>, [<bibliocraft:cookiejar>,<minecraft:potion>.withTag({Potion: "cofhcore:haste4"}),<minecraft:glowstone>,<quark:sugar_block>], 80, 12);

# Frost Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ice>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:redstone>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:32>, [<minecraft:packed_ice>,<minecraft:snow>,<enderio:item_alloy_endergy_ingot:6>,<thermalfoundation:material:1025>], 80, 12);

# Growth Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<ore:treeSapling>.firstItem,<ore:treeSapling>.firstItem,<ore:sugarcane>.firstItem,<minecraft:sugar>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:5>, [<minecraft:bone_block>,<natura:overworld_sapling>,<natura:overworld_sapling2:1>,<minecraft:melon>], 80, 12);

# Elasticity Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:slime>,<minecraft:slime>,<minecraft:leather>,<ore:string>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:31>, [<minecraft:slime>,<minecraft:slime>,<contenttweaker:blood_infused_leather>,<erebus:silk>], 500, 72);

# Void Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:bucket>,<ore:string>.firstItem,<ore:string>.firstItem,<minecraft:gunpowder>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:4>, [<quantumflux:voidbucket>,<actuallyadditions:item_crystal_empowered:3>,<thermalfoundation:material:167>,<contenttweaker:mobgrindium_block>], 500, 72);

# Suppression Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:teleposer>,<minecraft:water_bucket>,<minecraft:lava_bucket>,<minecraft:blaze_rod>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:9>, [<actuallyadditions:block_misc:8>,<forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "vapor_of_levity", Amount: 1000}),<enderio:item_material:44>], 500, 72);

# Lesser Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:diamond>,<ore:blockRedstone>.firstItem,<ore:blockLapis>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:soul_gem:1>.withTag({}), [<bloodmagic:soul_gem>,<contenttweaker:gusty_core>,<contenttweaker:aquatic_core>,<contenttweaker:fire_core>], 64, 32);

# Rune of Capacity
blood_magic_add_rune_recipe(<bloodmagic:blood_rune:6>, <enderio:block_tank:1>, <bloodmagic:slate:2> * 2);

# Incense Altar
recipes.remove(<bloodmagic:incense_altar>);
recipes.addShaped(<bloodmagic:incense_altar>, [[<enderutilities:enderpart:1>,null,<enderutilities:enderpart:1>],[<bloodmagic:blood_rune:4>,<contenttweaker:hardened_blood_droplet>,<bloodmagic:blood_rune:4>],[empowered_glod_crystal_block,<betternether:cincinnasite_forge>,empowered_glod_crystal_block]]);

# Wooden Path
recipes.remove(<bloodmagic:path>);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:path>, [<immersiveengineering:treated_wood>, <extrautils2:decorativesolidwood:1>, <evilcraft:undead_plank>, <roots:wildwood_planks>, <totemic:cedar_plank>, <openblocks:path>], 25, 10, 1);

# Stone Brick Path
recipes.remove(<bloodmagic:path:2>);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:path:2>, [<bloodmagic:path>, <bloodmagic:path>, <extrautils2:compressedcobblestone:1>, <extrautils2:compressedcobblestone:1>, <roots:runestone>, <roots:runestone>], 100, 10, 2);

# Worn Stone Brick Path
recipes.remove(<bloodmagic:path:4>);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:path:4>, [<bloodmagic:path:2>, <bloodmagic:path:2>, <extrautils2:compressedcobblestone:2>, <extrautils2:compressedcobblestone:2>, <appliedenergistics2:material:45>, <appliedenergistics2:material:45>], 400, 10, 3);

# Obsidian Brick Path
recipes.remove(<bloodmagic:path:6>);
mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:path:6>, [<bloodmagic:path:4>, <bloodmagic:path:4>, <roots:runed_obsidian>, <roots:runed_obsidian>, <mekanism:basicblock:2>, <mekanism:basicblock:2>], 1600, 10, 3);

# Binding Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:gold_nugget>,<minecraft:gunpowder>]);
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:binding_reagent>, [<contenttweaker:rune_of_water>,<contenttweaker:rune_of_fire>,<contenttweaker:rune_of_earth>,<contenttweaker:rune_of_air>], 64, 64);

# Large Bloodstone Tile
recipes.remove(<bloodmagic:decorative_brick>);
recipes.addShaped(<bloodmagic:decorative_brick>, [[<contenttweaker:hybrid_abyssalium_ingot>,<bloodmagic:blood_shard>,<contenttweaker:hybrid_abyssalium_ingot>],[<bloodmagic:blood_shard>,<contenttweaker:power_core>,<bloodmagic:blood_shard>],[<contenttweaker:hybrid_abyssalium_ingot>,<bloodmagic:blood_shard>,<contenttweaker:hybrid_abyssalium_ingot>]]);

# Master Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:blood_shard>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}), <bloodmagic:decorative_brick>, 3, 60000, 50, 50);

# Ritual Stone
recipes.removeShaped(<bloodmagic:ritual_stone>, [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<bloodmagic:ritual_stone> * 16, [[<minecraft:obsidian>,<bloodmagic:slate:2>,<minecraft:obsidian>],[<bloodmagic:slate:2>,<contenttweaker:dark_core>,<bloodmagic:slate:2>],[<minecraft:obsidian>,blood_orb_at_least_tier_4.reuse(),<minecraft:obsidian>]]);

# Master Ritual Stone
recipes.removeShaped(<bloodmagic:ritual_controller>, [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<bloodmagic:ritual_controller>, [[<contenttweaker:compressed_obsidian1>,<bloodmagic:ritual_stone>,<contenttweaker:compressed_obsidian1>],[<bloodmagic:ritual_stone>,blood_orb_at_least_tier_4.reuse(),<bloodmagic:ritual_stone>],[<contenttweaker:compressed_obsidian1>,<bloodmagic:ritual_stone>,<contenttweaker:compressed_obsidian1>]]);

# Lava Crystal
recipes.remove(<bloodmagic:lava_crystal>);
recipes.addShaped(<bloodmagic:lava_crystal>, [[<abyssalcraft:crystalcluster:3>,<abyssalcraft:crystalcluster:15>,<abyssalcraft:crystalcluster:3>],[<abyssalcraft:crystalcluster:15>,<contenttweaker:rune_of_fire>,<abyssalcraft:crystalcluster:15>],[<abyssalcraft:crystalcluster:3>,blood_orb_at_least_tier_4.reuse(),<abyssalcraft:crystalcluster:3>]]);

# Blood Tank
for i in 1 to 16 {
    val target = <bloodmagic:blood_tank>.definition.makeStack(i);
    val origin = <bloodmagic:blood_tank>.definition.makeStack(i - 1);
    val amount = 1000 * ((i + 1) * (i + 1));

	recipes.remove(target);
    recipes.addHiddenShapeless("blood_magic_tank_clearing_"~i, target, [target]);
	mods.bloodmagic.BloodAltar.addRecipe(target, origin, 4, amount, 50, 50);
}

# Weak Activation Crystal
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:lava_crystal>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:activation_crystal>, <bloodmagic:lava_crystal>, 3, 100000, 60, 60);

# Awakened Activation Crystal
recipes.remove(<bloodmagic:activation_crystal:1>);
recipes.addShaped(<bloodmagic:activation_crystal:1>, [[null,<evilcraft:weather_container:3>,null],[<minecraft:nether_star>,<bloodmagic:activation_crystal>,<abyssalcraft:lifecrystal>],[null,<contenttweaker:rune_of_mana>,null]]);

# Elemental Inscription Tool: Water
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:lapis_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:1>.withTag({uses: 10}), <contenttweaker:rune_of_water>, 3, 40000, 60, 60);

# Elemental Inscription Tool: Fire
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:magma_cream>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:2>.withTag({uses: 10}), <contenttweaker:rune_of_fire>, 3, 40000, 60, 60);

# Elemental Inscription Tool: Earth
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:obsidian>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:3>.withTag({uses: 10}), <contenttweaker:rune_of_earth>, 3, 40000, 60, 60);

# Elemental Inscription Tool: Air
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:ghast_tear>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:4>.withTag({uses: 10}), <contenttweaker:rune_of_air>, 3, 40000, 60, 60);

# Elemental Inscription Tool: Dusk
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:coal_block>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:5>.withTag({uses: 10}), <contenttweaker:rune_of_mana>, 3, 40000, 60, 60);

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
blood_magic_add_rune_recipe(<bloodmagic:blood_rune:2>, <contenttweaker:rune_of_mana>, <bloodmagic:slate:3> * 2);

# Charging Rune
blood_magic_add_rune_recipe_with_unique_input(<bloodmagic:blood_rune:10>, <bloodmagic:blood_rune:1>, <botania:manaresource:8> * 3, <bloodmagic:slate:4> * 2);

# Displacement Rune
blood_magic_add_rune_recipe(<bloodmagic:blood_rune:5>, <contenttweaker:rune_of_water>, <bloodmagic:slate:4> * 2);

# Acceleration Rune
blood_magic_add_rune_recipe_with_unique_input(<bloodmagic:blood_rune:9>, <bloodmagic:blood_rune:1>, <contenttweaker:aether> * 3, <bloodmagic:slate:4> * 2);

# Rune of the Orb
blood_magic_add_rune_recipe_with_unique_input(<bloodmagic:blood_rune:8>, <bloodmagic:blood_rune:7>, <enderutilities:enderpart:17>, <bloodmagic:slate:4> * 2);

# Air Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_air>, <bloodmagic:component:2>, <bloodmagic:slate:1>, "airsigil");

# Water Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_water>, <bloodmagic:component>, <bloodmagic:slate>, "watersigil");

# Lava Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_lava>, <bloodmagic:component:1>, <bloodmagic:slate>, "lavasigil");

# Void Sigil
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_void>, <bloodmagic:component:4>, <bloodmagic:slate:1>, "voidsigil");

# Sigil of the Green Grove
addBloodMagicSigilRecipe(<bloodmagic:sigil_green_grove>, <bloodmagic:component:5>, <bloodmagic:slate:1>, <bloodmagic:slate:2>, <bloodmagic:component:5>, "growthsigil");

# Blood Lamp Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<ore:glowstone>.firstItem,<minecraft:torch>,<minecraft:redstone>,<minecraft:redstone>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:11>, [<torchmaster:dread_lamp>,<bibliocraft:lampgold>,<thermalfoundation:storage_alloy:6>,<contenttweaker:rune_of_spring>], 64, 32);

# Sigil of the Blood Lamp
addBloodMagicSigilRecipe(<bloodmagic:sigil_blood_light>, <bloodmagic:component:11>, <bloodmagic:slate:2>, <bloodmagic:slate:3>, <bloodmagic:component:11>, "lightsigil");

# Sigil of Elemental Affinity
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_elemental_affinity>, <bloodmagic:component:6>, <bloodmagic:slate:2>, "elementalaffinitysigil");

# Magnetism Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<ore:string>.firstItem,<minecraft:gold_ingot>,<minecraft:iron_block>,<minecraft:gold_ingot>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:12>, [<quantumflux:magnet:*>,<contenttweaker:power_core>,<simplyjetpacks:metaitemmods:12>,<simplyjetpacks:metaitemmods:12>], 64, 32);

# Sigil of Magnetism
addBloodMagicSigilRecipe(<bloodmagic:sigil_magnetism>, <bloodmagic:component:12>, <bloodmagic:slate:2>, <bloodmagic:slate:3>, <bloodmagic:component:12>, "magnetismsigil");

# Sigil of Suppression
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_suppression>, <bloodmagic:component:9>, <bloodmagic:slate:3>, "suppressionsigil");

# Sigil of Haste
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_haste>, <bloodmagic:component:13>, <bloodmagic:slate:3>, "hastesigil");

# Mining Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_pickaxe>,<minecraft:iron_axe>,<minecraft:iron_shovel>,<minecraft:gunpowder>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:3>, [<botania:manasteelpick>,<botania:manasteelshovel>,<bloodmagic:component:13>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]})], 32, 16);

# Sigil of the Fast Miner
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_fast_miner>, <bloodmagic:component:3>, <bloodmagic:slate:1>, "fastminersigil");

# Sight Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:sigil_divination>,<ore:blockGlass>.firstItem,<ore:blockGlass>.firstItem,<minecraft:glowstone_dust>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:7>, [<bloodmagic:sigil_divination>,<botania:monocle>,<actuallyadditions:item_engineer_goggles_advanced>,<minecraft:splash_potion>.withTag({Potion: "minecraft:long_night_vision"})], 32, 16);

# Seer's Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_seer>, <bloodmagic:component:7>, <bloodmagic:slate:1>, <bloodmagic:slate:3>, <bloodmagic:component:7>, "sightsigil");

# Phantom Bridge Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:soul_sand>,<minecraft:soul_sand>,<ore:stone>.firstItem,<minecraft:obsidian>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:15>, [<actuallyadditions:block_phantomface>,<enderutilities:draw_bridge>,<contenttweaker:compressed_obsidian1>,<botania:manaresource>], 32, 16);

# Sigil of the Phantom Bridge
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_phantom_bridge>, <bloodmagic:component:15>, <bloodmagic:slate:3>, "skeletonturret2");

# Sigil of the Whirlwind
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:sigil_whirlwind>, <bloodmagic:slate:2>, <contenttweaker:tempest_reagent>, "bloodmagic:textures/models/alchemyarrays/lightsigil.png");

# Compression Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:gold_block>,<minecraft:obsidian>,<ore:cobblestone>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:14>, [<avaritia:compressed_crafting_table>,<thermalexpansion:machine:5>,<contenttweaker:reductus>,<contenttweaker:blood_infused_leather>], 32, 16);

# Sigil of Compression
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_compression>, <bloodmagic:component:14>, <bloodmagic:slate:3>, "basearray");

# Severance Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ender_eye>,<minecraft:ender_pearl>,<minecraft:gold_ingot>,<minecraft:gold_ingot>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:16>, [<mob_grinding_utils:ender_inhibitor_on>,<mob_grinding_utils:ender_inhibitor_on>,<minecraft:ender_eye>,<minecraft:ender_eye>], 32, 16);

# Sigil of Ender Severance
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_ender_severance>, <bloodmagic:component:16>, <bloodmagic:slate:3>, "skeletonturret2");

# Holding Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<ore:chestWood>.firstItem,<ore:leather>.firstItem,<ore:string>.firstItem,<ore:string>.firstItem]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:27>, [<appliedenergistics2:drive>,<contenttweaker:reduction_core>,<contenttweaker:blood_infused_leather>,<botania:manaresource:22>], 32, 16);

# Sigil of Holding
addBloodMagicSigilRecipe(<bloodmagic:sigil_holding>, <bloodmagic:component:27>, <bloodmagic:slate:2>, <bloodmagic:slate:3>, <bloodmagic:component:27>, "bindingarray");

# Claw Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:flint>,<minecraft:flint>,<bloodmagic:cutting_fluid>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:30>, [<minecraft:flint>,<minecraft:flint>,<divinerpg:crab_claw>,<divinerpg:crab_claw>], 16, 4);

# Sigil of the Claw
addBloodMagicSigilRecipe(<bloodmagic:sigil_claw>, <bloodmagic:component:30>, <bloodmagic:slate:2>, <bloodmagic:slate:1>, <bloodmagic:component:30>, "spikearray");

# Sigil of Elasticity
addBloodMagicSigilRecipeJustSwap(<bloodmagic:sigil_bounce>, <bloodmagic:component:31>, <bloodmagic:slate:1>, "bouncearray");

# Sigil of Winter's Breath
addBloodMagicSigilRecipe(<bloodmagic:sigil_frost>, <bloodmagic:component:32>, <bloodmagic:slate:1>, <bloodmagic:slate:2>, <bloodmagic:component:32>, "lightsigil");

# Ritual Tinkerer
recipes.remove(<bloodmagic:ritual_reader>);
recipes.addShapedMirrored(<bloodmagic:ritual_reader>, [[null,<contenttweaker:virtus>,null],[null,<bloodmagic:ritual_controller>,<contenttweaker:virtus>],[blood_orb_at_least_tier_4.reuse(),null,null]]);

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

# Living Armor and Tools
function addBloodMagicLivingRecipie(living as IItemStack, orgin as IItemStack) {
    mods.bloodmagic.AlchemyArray.addRecipe(living, orgin, <contenttweaker:binding_reagent>, "bloodmagic:textures/models/alchemyarrays/bindinglightningarray.png");
}

addBloodMagicLivingRecipie(<bloodmagic:living_armour_helmet>, <botania:manasteelhelm>);
addBloodMagicLivingRecipie(<bloodmagic:living_armour_chest>.withTag({}), <botania:manasteelchest>);
addBloodMagicLivingRecipie(<bloodmagic:living_armour_leggings>, <botania:manasteellegs>);
addBloodMagicLivingRecipie(<bloodmagic:living_armour_boots>, <botania:manasteelboots>);

addBloodMagicLivingRecipie(<bloodmagic:bound_sword>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelsword>);
addBloodMagicLivingRecipie(<bloodmagic:bound_pickaxe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelpick>);
addBloodMagicLivingRecipie(<bloodmagic:bound_axe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelaxe>);
addBloodMagicLivingRecipie(<bloodmagic:bound_shovel>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelshovel>);

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
recipes.addShaped(<bloodmagic:upgrade_trainer>, [[null,<contenttweaker:power_core>,null],[<contenttweaker:power_core>,blood_orb_at_least_tier_4.reuse(),<contenttweaker:power_core>],[null,<contenttweaker:power_core>,null]]);

# Demon Blood Shard
mods.botania.RuneAltar.addRecipe(<bloodmagic:blood_shard:1>, [<bloodmagic:blood_shard>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:soul_of_the_dark_realm>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_greed>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_deception>], 50000);

# Archmage Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:nether_star>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <bloodmagic:blood_shard:1>, 4, 120000, 80, 80);

# Weak Blood Shard duplication
recipes.addShaped(<bloodmagic:blood_shard> * 8, [[null,<bloodmagic:blood_shard>,null],[<bloodmagic:blood_shard>,<bloodmagic:slate:3>,<bloodmagic:blood_shard>],[null,<bloodmagic:blood_shard>,null]]);

# Grand Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem:3>,<minecraft:nether_star>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:soul_gem:4>.withTag({}), [<bloodmagic:soul_gem:3>,<botania:manaresource:5>], 4096, 2048);

# Ritual Stone of Dawn
recipes.removeShapeless(<bloodmagic:ritual_stone>, [<bloodmagic:ritual_stone:6>]);

# Crystal Cluster
recipes.addShaped(<bloodmagic:decorative_brick:2>, [[<bloodmagic:blood_shard:1>,<contenttweaker:magical_tablet>,<bloodmagic:blood_shard:1>],[<contenttweaker:magical_tablet>,<contenttweaker:angelic_silicon_crystal_block>,<contenttweaker:magical_tablet>],[<bloodmagic:blood_shard:1>,<contenttweaker:magical_tablet>,<bloodmagic:blood_shard:1>]]);

# Weak Blood Shard tooltip
<bloodmagic:blood_shard>.addTooltip(format.white("Slay mobs with your activated ") + format.red("Bound Blade"));
<bloodmagic:blood_shard>.addTooltip(format.white("to obtain. Be wary though. While it's active,"));
<bloodmagic:blood_shard>.addTooltip(format.white("it constantly drains LP from your Life Network!"));

# Tartaric Gem tooltips
<bloodmagic:soul_gem:0>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("64") + format.white(" Will Quality."));
<bloodmagic:soul_gem:1>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("256") + format.white(" Will Quality."));
<bloodmagic:soul_gem:2>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("1024") + format.white(" Will Quality."));
<bloodmagic:soul_gem:3>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("4096") + format.white(" Will Quality."));
<bloodmagic:soul_gem:4>.addTooltip(format.white("This Tartaric Gem can store a maximum of ") + format.red("16,384") + format.white(" Will Quality."));

# Blood Orb tooltips
function add_blood_orb_tooltip(id as string, amount as string, tier as string) {
	var item = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:"~id as string});
	item.addTooltip(format.white("This Blood Orb can store a base of ") + format.red(amount) + format.white(" Life Essence."));
	if (tier > 1) {
		item.addTooltip(format.white("This Blood Orb can only be filled in a tier ") + format.red(tier) + format.white(" or above Blood Altar"));
	}
}
add_blood_orb_tooltip("weak", "5,000", 1);
add_blood_orb_tooltip("apprentice", "25,000", 2);
add_blood_orb_tooltip("magician", "150,000", 3);
add_blood_orb_tooltip("master", "1,000,000", 4);
add_blood_orb_tooltip("archmage", "10,000,000", 5);
add_blood_orb_tooltip("transcendent", "30,000,000", 6);

# Transcendent Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:decorative_brick:2>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}), <evilcraft:blood_orb:1>, 5, 240000, 120, 120);

# Imperfect Ritual Stone
recipes.remove(<bloodmagic:ritual_controller:1>);
recipes.addShaped(<bloodmagic:ritual_controller:1>, [[<contenttweaker:vibrant_slate>,<astralsorcery:itemcraftingcomponent:4>,<contenttweaker:vibrant_slate>],[<astralsorcery:itemcraftingcomponent:4>,<bloodmagic:ritual_controller>,<astralsorcery:itemcraftingcomponent:4>],[<contenttweaker:vibrant_slate>,<astralsorcery:itemcraftingcomponent:4>,<contenttweaker:vibrant_slate>]]);

# Teleposition Focus
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:ender_pearl>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:teleposition_focus>, <draconicevolution:dislocator_bound:1>, 5, 500000, 500, 500);

# Enhanced Teleposition Focus
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:teleposition_focus>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:teleposition_focus:1>, <bloodmagic:teleposition_focus>, 5, 1000000, 500, 500);

# Reinforced Teleposition Focus
recipes.remove(<bloodmagic:teleposition_focus:2>);
recipes.addShaped(<bloodmagic:teleposition_focus:2>, [[<galacticraftplanets:item_basic_asteroids:5>,<bloodmagic:decorative_brick>,<galacticraftplanets:item_basic_asteroids:5>],[<bloodmagic:decorative_brick>,<bloodmagic:teleposition_focus:1>,<bloodmagic:decorative_brick>],[<galacticraftplanets:item_basic_asteroids:5>,<bloodmagic:decorative_brick>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Demonic Teleposition Focus
recipes.remove(<bloodmagic:teleposition_focus:3>);
recipes.addShaped(<bloodmagic:teleposition_focus:3>, [[<bloodmagic:decorative_brick:2>,<bloodmagic:blood_shard:1>,<bloodmagic:decorative_brick:2>],[<bloodmagic:blood_shard:1>,<bloodmagic:teleposition_focus:2>,<bloodmagic:blood_shard:1>],[<bloodmagic:decorative_brick:2>,<bloodmagic:blood_shard:1>,<bloodmagic:decorative_brick:2>]]);

# Teleposer
recipes.remove(<bloodmagic:teleposer>);
recipes.addShaped(<bloodmagic:teleposer>, [[<bloodmagic:decorative_brick:2>,<alchemistry:ingot:44>,<bloodmagic:decorative_brick:2>],[<alchemistry:ingot:44>,<bloodmagic:teleposition_focus>,<alchemistry:ingot:44>],[<bloodmagic:decorative_brick:2>,<alchemistry:ingot:44>,<bloodmagic:decorative_brick:2>]]);

# Transposition Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:teleposer>,<minecraft:diamond>,<minecraft:ender_pearl>,<minecraft:obsidian>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:18>, [<bloodmagic:teleposer>,<rftools:infused_enderpearl>,<alchemistry:ingot:40>,<alchemistry:ingot:40>], 1000, 144);

# Teleposition Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:teleposer>,<ore:glowstone>.firstItem,<ore:blockRedstone>.firstItem,<minecraft:gold_ingot>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:17>, [<bloodmagic:teleposer>,<rftools:infused_enderpearl>,<alchemistry:ingot:45>,<alchemistry:ingot:45>], 1000, 144);

# Transposition Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_transposition>, <bloodmagic:component:18>, <bloodmagic:slate:3>, <contenttweaker:perfect_slate>, <bloodmagic:component:18>, "skeletonturret1");

# Teleposition Sigil
addBloodMagicSigilRecipe(<bloodmagic:sigil_teleposition>, <bloodmagic:component:17>, <bloodmagic:slate:3>, <contenttweaker:perfect_slate>, <bloodmagic:component:17>, "teleportationarray");

# Creative Activation Crystal
mods.extendedcrafting.TableCrafting.addShaped(<bloodmagic:activation_crystal:2>,
[[null, <alchemistry:ingot:118>, <alchemistry:ingot:118>, null, null],
[<alchemistry:ingot:118>, <totemic:ceremony_cheat>, <alchemistry:ingot:118>, <alchemistry:ingot:118>, null],
[<alchemistry:ingot:118>, <bloodmagic:activation_crystal:1>, <evilcraft:creative_blood_drop>, <bloodmagic:activation_crystal:1>, null],
[null, <alchemistry:ingot:118>, <alchemistry:ingot:118>, <alchemistry:ingot:118>, null],
[null, null, null, <alchemistry:ingot:118>, <alchemistry:ingot:118>]]);

# Creative Sacrifical Dagger
mods.extendedcrafting.TableCrafting.addShaped(<bloodmagic:sacrificial_dagger:1>.withTag({sacrifice: 0 as byte}),
[[null, null, null, null, <alchemistry:ingot:75>],
[<alchemistry:ingot:112>, null, null, <bloodmagic:sacrificial_dagger>, null],
[null, <alchemistry:ingot:112>, <bloodmagic:activation_crystal:2>, null, null],
[null, <bloodmagic:sacrificial_dagger>, <alchemistry:ingot:112>, null, null],
[<alchemistry:ingot:110>, null, null, <alchemistry:ingot:112>, null]]);

# Speeding up the Hellfire Forge
DJ2AddonsHellFireForge.setCraftingTicksRequired(10);

# Speeding up Will Transfer rate
DJ2AddonsHellFireForge.setWorldWillTransferRate(10);

# Crafting with all Will types
DJ2AddonsHellFireForge.setCraftWithAllWillTypes(true);

print("ENDING BloodMagic.zs");
