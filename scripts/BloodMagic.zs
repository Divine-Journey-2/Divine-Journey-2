# Author: Atricos

import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;
import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

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
for glass in <ore:blockGlass>.items {
	for blue_dye in <ore:dyeBlue>.items {
		mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:gold_ingot>,glass,blue_dye]);
	}
}
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
for s in <ore:string>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:bow>,<bloodmagic:soul_gem:1>,s,s]);
}
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:sentient_bow>.withTag({}), [<abyssalcraft:corbow>,<bloodmagic:soul_gem:1>,<minecraft:string>,<minecraft:string>], 75, 4);

# Arcane Ashes
for white_dye in <ore:dyeWhite>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>,white_dye,<minecraft:gunpowder>,<minecraft:coal:*>]);
}
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:arcane_ashes>, [<appliedenergistics2:material:45>,<enderio:item_material:37>,<natura:bonemeal_bag>,<thermalfoundation:fertilizer:2>], 1, 1);

# Divination Sigil
mods.bloodmagic.AlchemyArray.removeRecipe(<minecraft:redstone>, <bloodmagic:slate>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:sigil_divination>, <bloodmagic:slate>, <actuallyadditions:item_engineer_goggles>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

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

function blood_magic_add_rune_recipe(rune as IItemStack, input1 as IIngredient, input2 as IIngredient) {
	recipes.remove(rune);
	mods.immersiveengineering.ArcFurnace.addRecipe(rune, <bloodmagic:blood_rune>, null, 160, 512, [input1, input2], "Alloying");
	EIOAlloySmelter.addRecipe(rune, [<bloodmagic:blood_rune>, input1, input2], 24000);
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
for cobble in <ore:cobblestone>.items {
	for coal_block in <ore:blockCoal>.items {
		mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:lava_bucket>,<minecraft:redstone>,cobble,coal_block]);
	}
}
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:1>, [<minecraft:lava_bucket>,<minecraft:lava_bucket>,<contenttweaker:fluxed_electrum_block>,<minecraft:coal_block>], 8, 2);

# Air Reagent
for feather in <ore:feather>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ghast_tear>,feather,feather]);
}
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:2>, [<minecraft:glass_bottle>,<minecraft:glass_bottle>,<immersiveengineering:toolupgrade>,<immersiveengineering:wooden_device1:1>], 8, 2);

# Haste Reagent
for stone in <ore:stone>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:cookie>,<minecraft:sugar>,<minecraft:cookie>,stone]);
}
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:13>, [<bibliocraft:cookiejar>,<minecraft:potion>.withTag({Potion: "cofhcore:haste4"}),<minecraft:glowstone>,<quark:sugar_block>], 16, 4);

# Frost Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ice>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:redstone>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:32>, [<minecraft:packed_ice>,<minecraft:snow>,<enderio:item_alloy_endergy_ingot:6>,<thermalfoundation:material:1025>], 16, 4);

# Growth Reagent
for sapling in <ore:treeSapling>.items {
	for sugarcane in <ore:sugarcane>.items {
		mods.bloodmagic.TartaricForge.removeRecipe([sapling,sapling,sugarcane,<minecraft:sugar>]);
	}
}
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:5>, [<minecraft:bone_block>,<natura:overworld_sapling>,<natura:overworld_sapling2:1>,<minecraft:melon>], 16, 4);

# Elasticity Reagent
for s in <ore:string>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:slime>,<minecraft:slime>,<minecraft:leather>,s]);
}
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:31>, [<minecraft:slime>,<minecraft:slime>,<contenttweaker:blood_infused_leather>,<erebus:silk>], 64, 16);

# Void Reagent
for s in <ore:string>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:bucket>,s,s,<minecraft:gunpowder>]);
}
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:4>, [<quantumflux:voidbucket>,<actuallyadditions:item_crystal_empowered:3>,<actuallyadditions:item_crystal_empowered:3>,<contenttweaker:mobgrindium_block>], 64, 16);

# Suppression Reagent
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:teleposer>,<minecraft:water_bucket>,<minecraft:lava_bucket>,<minecraft:blaze_rod>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:9>, [<actuallyadditions:block_misc:8>,<forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "vapor_of_levity", Amount: 1000}),<enderio:item_material:44>], 64, 16);

# Lesser Tartaric Gem
for redstone_block in <ore:blockRedstone>.items {
	for lapis_block in <ore:blockLapis>.items {
		mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:diamond>,redstone_block,lapis_block]);
	}
}
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
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:8>, [<botania:rune>,<botania:rune:1>,<botania:rune:2>,<botania:rune:3>], 64, 64);

# Bound Blade
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_sword:0>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_sword>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelsword>, <bloodmagic:component:8>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Bound Pickaxe
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_pickaxe:0>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_pickaxe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelpick>, <bloodmagic:component:8>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Bound Shovel
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_shovel:0>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_shovel>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelshovel>, <bloodmagic:component:8>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

# Bound Axe
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_axe:0>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_axe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <botania:manasteelaxe>, <bloodmagic:component:8>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");

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
recipes.addShaped(<bloodmagic:ritual_controller>, [[<abyssalcraft:crystalcluster:3>,<abyssalcraft:crystalcluster:15>,<abyssalcraft:crystalcluster:3>],[<abyssalcraft:crystalcluster:15>,<botania:rune:1>,<abyssalcraft:crystalcluster:15>],[<abyssalcraft:crystalcluster:3>,blood_orb_at_least_tier_4.reuse(),<abyssalcraft:crystalcluster:3>]]);

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
recipes.addShaped(<bloodmagic:ritual_diviner:1>, [[<botania:spellcloth>.noReturn(),<abyssalcraft:crystalcluster:12>,<botania:spellcloth>.noReturn()],[<bloodmagic:inscription_tool:5>.noReturn(),blood_orb_at_least_tier_4.reuse(),<bloodmagic:inscription_tool:5>.noReturn()],[<botania:spellcloth>.noReturn(),<contenttweaker:suppression_core>,<botania:spellcloth>.noReturn()]]);

# Ritual Dismantler
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:item_demon_crystal:2>,<bloodmagic:item_demon_crystal:2>,<bloodmagic:ritual_diviner>,<bloodmagic:blood_shard>]);
recipes.addShaped(<bloodmagic:ritual_dismantler>, [[null,<bloodmagic:ritual_diviner>,null],[<evilcraft:dull_dust>,<contenttweaker:reduction_core>,<evilcraft:dull_dust>]]);

# Common Tartaric Gem
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem:1>,<minecraft:diamond>,<minecraft:gold_block>,<bloodmagic:slate:2>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:soul_gem:2>.withTag({}), [<bloodmagic:soul_gem:1>,<contenttweaker:magical_core>,<contenttweaker:holy_core>,<contenttweaker:environmental_core>], 256, 128);

# Demon Crystallizer
for s in <ore:stone>.items {
	for g in <ore:blockGlass>.items {
		mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_forge>,s,<minecraft:dye:4>,g]);
	}
}
recipes.addShaped(<bloodmagic:demon_crystallizer>, [[<enderio:block_alloy:6>,<contenttweaker:potency_core>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<bloodmagic:soul_forge>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<extendedcrafting:frame>,<enderio:block_alloy:6>]]);

# Demon Crucible
for s in <ore:stone>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:cauldron>,s,<minecraft:dye:4>,<minecraft:diamond>]);
}
recipes.addShaped(<bloodmagic:demon_crucible>, [[<enderio:block_alloy:6>,<contenttweaker:defensive_core>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<bloodmagic:soul_forge>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<extendedcrafting:frame>,<enderio:block_alloy:6>]]);

# Demon Pylon
for s in <ore:stone>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>,s,<bloodmagic:item_demon_crystal:*>]);
}
recipes.addShaped(<bloodmagic:demon_pylon>, [[<enderio:block_alloy:6>,<bloodmagic:item_demon_crystal:*>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<bloodmagic:soul_forge>,<enderio:block_alloy:6>],[<enderio:block_alloy:6>,<extendedcrafting:frame>,<enderio:block_alloy:6>]]);

# Demon Will Aura Gauge
for g in <ore:blockGlass>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:gold_ingot>,<minecraft:redstone>,g,<bloodmagic:item_demon_crystal:*>]);
}
recipes.addShaped(<bloodmagic:demon_will_gauge>, [[null,<contenttweaker:praesidium>,null],[<contenttweaker:potentia>,<enderio:item_conduit_probe>,<contenttweaker:potentia>],[null,<contenttweaker:praesidium>,null]]);

# Phantom Bridge Reagent
for s in <ore:stone>.items {
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:soul_sand>,<minecraft:soul_sand>,s,<minecraft:obsidian>]);
}
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:15>, [<actuallyadditions:block_phantomface>,<enderutilities:draw_bridge>,<contenttweaker:compressed_obsidian1>,<botania:manaresource>], 64, 64);

# Greater Tartaric Gem

# Grand Tartaric Gem

print("ENDING BloodMagic.zs");