# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.bloodmagic.TartaricForge;
import mods.thermalexpansion.Transposer;
import mods.botania.RuneAltar;
import thaumcraft.aspect.CTAspectStack;
import mods.thaumcraft.Infusion;
import mods.astralsorcery.Altar;
import mods.alchemistry.Combiner;
import moretweaker.lightningcraft.LightningInfusion;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

print("STARTING MysticalAgriculture.zs");

# Base Crafting Seed
recipes.remove(<mysticalagriculture:crafting:16>);
mods.extendedcrafting.EnderCrafting.addShaped(<mysticalagriculture:crafting:16>, [[<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>], [<mysticalagriculture:crafting:5>,<minecraft:wheat_seeds>,<mysticalagriculture:crafting:5>], [<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>]]);

# Tier 1 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:17>);
mods.extendedcrafting.EnderCrafting.addShaped(<mysticalagriculture:crafting:17>, [[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>], [<mysticalagriculture:crafting>,<mysticalagriculture:crafting:16>,<mysticalagriculture:crafting>], [<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>]]);

# Inferium Seeds: Tier 1
recipes.remove(<mysticalagriculture:tier1_inferium_seeds>);
mods.extendedcrafting.EnderCrafting.addShaped(<mysticalagriculture:tier1_inferium_seeds>, [[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>],[<mysticalagriculture:crafting>,<minecraft:wheat_seeds>,<mysticalagriculture:crafting>],[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>]]);

function addTier1MysticalAgricultureSeed(output as IItemStack, input_material as IIngredient) {
	recipes.remove(output);
	mods.extendedcrafting.EnderCrafting.addShaped(output, [[input_material,<mysticalagriculture:crafting>,input_material], [<mysticalagriculture:crafting>,<mysticalagriculture:crafting:17>,<mysticalagriculture:crafting>], [input_material,<mysticalagriculture:crafting>,input_material]]);
}

# Stone Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:stone_seeds>,<extrautils2:compressedcobblestone>);

# Dirt Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:dirt_seeds>,<extrautils2:compresseddirt>);

# Grains of Infinity Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:grains_of_infinity_seeds>,<enderio:block_infinity>);

# Ice Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:ice_seeds>,<minecraft:packed_ice>);

# Wood Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:wood_seeds>,<ore:logWood>);

# Marble Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:marble_seeds>,<ore:blockMarble>);
addTier1MysticalAgricultureSeed(<mysticalagriculture:marble_seeds>,<ore:stoneMarble>);

# Limestone Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:limestone_seeds>,<ore:stoneLimestone>);
addTier1MysticalAgricultureSeed(<mysticalagriculture:limestone_seeds>,<ore:stoneLimestonePolished>);

# Basalt Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:basalt_seeds>,<ore:stoneBasalt>);
addTier1MysticalAgricultureSeed(<mysticalagriculture:basalt_seeds>,<ore:stoneBasaltPolished>);

# Nature Cluster
recipes.remove(<mysticalagriculture:crafting:6>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:6>, [<minecraft:cactus>,<minecraft:pumpkin>,<minecraft:reeds>,<minecraft:wheat>], 64, 16);

# Nature Seeds
addTier1MysticalAgricultureSeed(<mysticalagriculture:nature_seeds>,<mysticalagriculture:crafting:6>);

# Misc. Saplings from various Essences
recipes.addShaped(<natura:overworld_sapling> * 4, [[null,null,null],[null,null,null],[<mysticalagriculture:wood_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:wood_essence>]]);
recipes.addShaped(<natura:overworld_sapling:1> * 4, [[null,null,<mysticalagriculture:wood_essence>],[null,null,<mysticalagriculture:nature_essence>],[null,null,<mysticalagriculture:wood_essence>]]);
recipes.addShaped(<natura:overworld_sapling:2> * 4, [[null,null,<mysticalagriculture:wood_essence>],[null,<mysticalagriculture:nature_essence>,null],[<mysticalagriculture:wood_essence>,null,null]]);
recipes.addShaped(<natura:overworld_sapling:3> * 4, [[null,<mysticalagriculture:wood_essence>,null],[null,<mysticalagriculture:nature_essence>,null],[null,null,<mysticalagriculture:wood_essence>]]);
recipes.addShaped(<natura:overworld_sapling2> * 4, [[null,null,<mysticalagriculture:wood_essence>],[null,<mysticalagriculture:nature_essence>,null],[null,<mysticalagriculture:wood_essence>,null]]);
recipes.addShaped(<natura:overworld_sapling2:1> * 4, [[<mysticalagriculture:wood_essence>,null,null],[null,<mysticalagriculture:nature_essence>,null],[null,<mysticalagriculture:wood_essence>,null]]);
recipes.addShaped(<natura:overworld_sapling2:2> * 4, [[null,null,null],[null,<mysticalagriculture:nature_essence>,<mysticalagriculture:wood_essence>],[<mysticalagriculture:wood_essence>,null,null]]);
recipes.addShaped(<natura:overworld_sapling2:3> * 4, [[<mysticalagriculture:wood_essence>,null,null],[null,<mysticalagriculture:nature_essence>,<mysticalagriculture:wood_essence>],[null,null,null]]);

mods.extendedcrafting.TableCrafting.addShaped(<natura:redwood_sapling> * 49, [
[<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:wood_essence>,<mysticalagriculture:wood_essence>,<mysticalagriculture:wood_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:wood_essence>,<mysticalagriculture:wood_essence>,<mysticalagriculture:wood_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:wood_essence>,<mysticalagriculture:wood_essence>,<mysticalagriculture:wood_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nature_essence>]]);

recipes.addShaped(<natura:nether_sapling> * 4, [[<mysticalagriculture:nether_essence>,null,<mysticalagriculture:wood_essence>],[null,<mysticalagriculture:nature_essence>,null],[<mysticalagriculture:wood_essence>,null,<mysticalagriculture:nether_essence>]]);
recipes.addShaped(<natura:nether_sapling:1> * 4, [[null,<mysticalagriculture:nether_essence>,null],[<mysticalagriculture:wood_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:wood_essence>],[null,<mysticalagriculture:nether_essence>,null]]);
recipes.addShaped(<natura:nether_sapling:2> * 4, [[<mysticalagriculture:wood_essence>,null,<mysticalagriculture:nether_essence>],[null,<mysticalagriculture:nature_essence>,null],[<mysticalagriculture:nether_essence>,null,<mysticalagriculture:wood_essence>]]);
recipes.addShaped(<natura:nether_sapling2> * 4, [[null,<mysticalagriculture:wood_essence>,null],[<mysticalagriculture:nether_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:nether_essence>],[null,<mysticalagriculture:wood_essence>,null]]);

recipes.addShaped(<bewitchment:elder_sapling> * 4, [[<mysticalagriculture:cold_iron_essence>,null,<mysticalagriculture:wood_essence>],[null,<mysticalagriculture:nature_essence>,null],[<mysticalagriculture:wood_essence>,null,<mysticalagriculture:cold_iron_essence>]]);
recipes.addShaped(<bewitchment:juniper_sapling> * 4, [[null,<mysticalagriculture:cold_iron_essence>,null],[<mysticalagriculture:wood_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:wood_essence>],[null,<mysticalagriculture:cold_iron_essence>,null]]);
recipes.addShaped(<bewitchment:cypress_sapling> * 4, [[<mysticalagriculture:wood_essence>,null,<mysticalagriculture:cold_iron_essence>],[null,<mysticalagriculture:nature_essence>,null],[<mysticalagriculture:cold_iron_essence>,null,<mysticalagriculture:wood_essence>]]);
recipes.addShaped(<bewitchment:dragons_blood_sapling> * 4, [[null,<mysticalagriculture:wood_essence>,null],[<mysticalagriculture:cold_iron_essence>,<mysticalagriculture:nature_essence>,<mysticalagriculture:cold_iron_essence>],[null,<mysticalagriculture:wood_essence>,null]]);

# Water Seeds
recipes.remove(<mysticalagriculture:water_seeds>);
mods.thermalexpansion.Transposer.addFillRecipe(<mysticalagriculture:water_seeds>, <mysticalagriculture:ice_seeds>, <liquid:water> * 10000, 8000);

# Tier 2 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:18>);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:crafting:18>, [<mysticalagriculture:crafting:17>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 30000);

# Inferium Seeds: Tier 2
recipes.remove(<mysticalagriculture:tier2_inferium_seeds>);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:tier2_inferium_seeds>, [<mysticalagriculture:tier1_inferium_seeds>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 30000);

function addTier2MysticalAgricultureSeed(output as IItemStack, input_material as IIngredient) {
	addTier2MysticalAgricultureSeedWithInput(output,input_material,<mysticalagriculture:crafting:18>);
}

function addTier2MysticalAgricultureSeedWithInput(output as IItemStack, input_material as IIngredient, input_seed as IIngredient) {
	recipes.remove(output);
	mods.botania.RuneAltar.addRecipe(output, [input_seed,input_material,input_material,input_material,input_material,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 30000);
}

# Fire Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:fire_seeds>,<contenttweaker:incendium>);

# Nether Cluster
recipes.remove(<mysticalagriculture:crafting:8>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:8>, [<simplyjetpacks:metaitemmods:12>,<extrautils2:compressednetherrack:1>,<extrautils2:compressednetherrack:1>,<simplyjetpacks:metaitemmods:12>], 128, 32);

# Nether Seeds
addTier2MysticalAgricultureSeedWithInput(<mysticalagriculture:nether_seeds>,<mysticalagriculture:crafting:8>,<mysticalagriculture:fire_seeds>);

# Coal Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:coal_seeds>,<minecraft:coal_block>);

# Bitumen and Tar from Coal and Basalt Essence
recipes.addShaped(<thermalfoundation:material:892> * 3, [[<mysticalagriculture:basalt_essence>,<mysticalagriculture:coal_essence>,<mysticalagriculture:basalt_essence>],[<mysticalagriculture:coal_essence>,<minecraft:flint>,<mysticalagriculture:coal_essence>],[<mysticalagriculture:basalt_essence>,<mysticalagriculture:coal_essence>,<mysticalagriculture:basalt_essence>]]);
recipes.addShaped(<thermalfoundation:material:833> * 3, [[<mysticalagriculture:basalt_essence>,<mysticalagriculture:coal_essence>,<mysticalagriculture:basalt_essence>],[<mysticalagriculture:coal_essence>,<ore:slimeball>,<mysticalagriculture:coal_essence>],[<mysticalagriculture:basalt_essence>,<mysticalagriculture:coal_essence>,<mysticalagriculture:basalt_essence>]]);

# Obsidian Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:obsidian_seeds>,<contenttweaker:compressed_obsidian2>);

# Soulium Dagger
recipes.remove(<mysticalagriculture:soulium_dagger>);

# Tier 1 Mob Chunk
# in OreProcessingAdditions.zs

# Tier 2 Mob Chunk
recipes.remove(<mysticalagriculture:chunk:1>);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:chunk:1>, [<mysticalagriculture:chunk>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 10000);

# Pig Chunk
recipes.remove(<mysticalagriculture:chunk:7>);
recipes.addShaped(<mysticalagriculture:chunk:7>, [[<minecraft:porkchop>,<minecraft:porkchop>,<minecraft:porkchop>],[<minecraft:porkchop>,<mysticalagriculture:chunk:1>,<minecraft:porkchop>],[<minecraft:porkchop>,<minecraft:porkchop>,<minecraft:porkchop>]]);

# Pig Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:pig_seeds>,<mysticalagriculture:chunk:7>);

# Chicken Chunk
recipes.remove(<mysticalagriculture:chunk:8>);
recipes.addShaped(<mysticalagriculture:chunk:8>, [[<minecraft:feather>,<minecraft:egg>,<minecraft:feather>],[<minecraft:egg>,<mysticalagriculture:chunk:1>,<minecraft:egg>],[<minecraft:feather>,<minecraft:egg>,<minecraft:feather>]]);

# Chicken Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:chicken_seeds>,<mysticalagriculture:chunk:8>);

# Cow Chunk
recipes.remove(<mysticalagriculture:chunk:9>);
recipes.addShaped(<mysticalagriculture:chunk:9>, [[<minecraft:leather>,<minecraft:beef>,<minecraft:leather>],[<minecraft:beef>,<mysticalagriculture:chunk:1>,<minecraft:beef>],[<minecraft:leather>,<minecraft:beef>,<minecraft:leather>]]);

# Cow Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:cow_seeds>,<mysticalagriculture:chunk:9>);

# Sheep Chunk
recipes.remove(<mysticalagriculture:chunk:10>);
recipes.addShaped(<mysticalagriculture:chunk:10>, [[<minecraft:wool:*>,<minecraft:mutton>,<minecraft:wool:*>],[<minecraft:mutton>,<mysticalagriculture:chunk:1>,<minecraft:mutton>],[<minecraft:wool:*>,<minecraft:mutton>,<minecraft:wool:*>]]);

# Sheep Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:sheep_seeds>,<mysticalagriculture:chunk:10>);

# Rabbit Chunk
recipes.remove(<mysticalagriculture:chunk:15>);
recipes.addShaped(<mysticalagriculture:chunk:15>, [[<minecraft:rabbit_hide>,<minecraft:rabbit>,<minecraft:rabbit_hide>],[<minecraft:rabbit>,<mysticalagriculture:chunk:1>,<minecraft:rabbit>],[<minecraft:rabbit_hide>,<minecraft:rabbit>,<minecraft:rabbit_hide>]]);

# Rabbit Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:rabbit_seeds>,<mysticalagriculture:chunk:15>);

# Rubber Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:rubber_seeds>,<industrialforegoing:plastic>);

# Plastic from Rubber Seeds -> Tiny Dry Rubber from Rubber Seeds
recipes.remove(<industrialforegoing:plastic>);
recipes.addShaped(<industrialforegoing:tinydryrubber> * 3, [[<mysticalagriculture:rubber_essence>,<mysticalagriculture:rubber_essence>,<mysticalagriculture:rubber_essence>]]);

# Silicon Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:silicon_seeds>,<galacticraftcore:basic_block_core:13>);

# Sulfur Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:sulfur_seeds>,<abyssalcraft:crystalcluster:2>);

# Saltpeter Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:saltpeter_seeds>,<abyssalcraft:crystalcluster:8>);

# Graphite Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:graphite_seeds>,<bigreactors:ingotgraphite>);

# HOP Graphite Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:hop_graphite_seeds>,<immersiveengineering:material:19>);

# Mystical Flower Cluster
recipes.remove(<mysticalagriculture:crafting:10>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:10>, [<botania:doubleflower1:4>,<botania:doubleflower1:5>,<botania:doubleflower2:6>,<botania:doubleflower2:3>], 128, 32);

# Mystical Flower Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:mystical_flower_seeds>,<mysticalagriculture:crafting:10>);

# Sky Stone Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:sky_stone_seeds>,<appliedenergistics2:sky_stone_block>);

# Tier 3 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:19>);
mods.thaumcraft.Infusion.registerRecipe("mysticalagriculture:tier3_crafting_seed", "", <mysticalagriculture:crafting:19>, 3, [<aspect:herba> * 100,<aspect:praecantatio> * 50], <mysticalagriculture:crafting:18>, [<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>]);

# Inferium Seeds: Tier 3
recipes.remove(<mysticalagriculture:tier3_inferium_seeds>);
mods.thaumcraft.Infusion.registerRecipe("mysticalagriculture:tier3_inferium_seeds", "", <mysticalagriculture:tier3_inferium_seeds>, 3, [<aspect:herba> * 100,<aspect:praecantatio> * 50], <mysticalagriculture:tier2_inferium_seeds>, [<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>]);

function addTier3MysticalAgricultureSeedWithInput(output as IItemStack, input_material as IIngredient, input_vis_crystal as IItemStack, input_aspect as CTAspectStack, input_seed as IItemStack) {
	recipes.remove(output);
	mods.thaumcraft.Infusion.registerRecipe(output.name, "", output, 4, [<aspect:herba> * 100,input_aspect * 100], input_seed, [input_material,input_material,input_material,input_material,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,input_vis_crystal]);
}

function addTier3MysticalAgricultureSeed(output as IItemStack, input_material as IIngredient, input_vis_crystal as IItemStack, input_aspect as CTAspectStack) {
	addTier3MysticalAgricultureSeedWithInput(output, input_material, input_vis_crystal, input_aspect, <mysticalagriculture:crafting:19>);
}

# Dye Cluster
recipes.remove(<mysticalagriculture:crafting:7>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:7>, [<minecraft:dye>,<minecraft:dye:14>,<minecraft:dye:6>,<minecraft:dye:13>], 256, 64);

# Dye Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:dye_seeds>, <mysticalagriculture:crafting:7>, <contenttweaker:condensed_vis_crystal_sensus>, <aspect:sensus>, <mysticalagriculture:mystical_flower_seeds>);

# Iron Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:iron_seeds>, <minecraft:iron_block>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Nether Quartz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:nether_quartz_seeds>, <minecraft:quartz_block>, <contenttweaker:condensed_vis_crystal_vitreus>, <aspect:vitreus>);

# Glowstone Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:glowstone_seeds>, <minecraft:glowstone>, <contenttweaker:condensed_vis_crystal_lux>, <aspect:lux>);

# Redstone Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:redstone_seeds>, <minecraft:redstone_block>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>);

# Gold Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:gold_seeds>, <minecraft:gold_block>, <contenttweaker:condensed_vis_crystal_desiderium>, <aspect:desiderium>);

# Cincinnasite from Gold and Nether Essence
recipes.addShaped(<betternether:cincinnasite> * 8, [[<mysticalagriculture:gold_essence>,<mysticalagriculture:gold_essence>,<mysticalagriculture:gold_essence>],[<mysticalagriculture:gold_essence>,<mysticalagriculture:nether_essence>,<mysticalagriculture:gold_essence>],[<mysticalagriculture:gold_essence>,<mysticalagriculture:gold_essence>,<mysticalagriculture:gold_essence>]]);

# Lapis Lazuli Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:lapis_lazuli_seeds>, <minecraft:lapis_block>, <contenttweaker:condensed_vis_crystal_terra>, <aspect:terra>);

# End Cluster
recipes.remove(<mysticalagriculture:crafting:9>);
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:crafting:9>, [<enderio:item_alloy_ingot:8>,<enderio:item_alloy_endergy_ingot:2>,<enderio:item_alloy_endergy_ingot:2>,<enderio:item_alloy_ingot:8>], 256, 64);

# End Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:end_seeds>, <mysticalagriculture:crafting:9>, <contenttweaker:condensed_vis_crystal_alienis>, <aspect:alienis>);

# Tier 3 Mob Chunk
recipes.remove(<mysticalagriculture:chunk:2>);
mods.thaumcraft.Infusion.registerRecipe("mysticalagriculture:tier3_mob_chunk", "", <mysticalagriculture:chunk:2>, 4, [<aspect:bestia> * 100,<aspect:victus> * 50,<aspect:aversio> * 50], <mysticalagriculture:chunk:1>, [<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>]);

# Experience Chunk
recipes.addShaped(<mysticalagriculture:chunk:5>, [[<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>],[<actuallyadditions:item_solidified_experience>,<mysticalagriculture:chunk:2>,<actuallyadditions:item_solidified_experience>],[<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>]]);

# Experience Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:experience_seeds>, <mysticalagriculture:chunk:5>, <contenttweaker:condensed_vis_crystal_cognitio>, <aspect:cognitio>);

# Zombie Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:zombie_seeds>, <mysticalagriculture:chunk:6>, <contenttweaker:condensed_vis_crystal_exanimis>, <aspect:exanimis>);

# Slime Chunk
recipes.remove(<mysticalagriculture:chunk:11>);
recipes.addShaped(<mysticalagriculture:chunk:11>, [[<minecraft:slime>,<minecraft:slime>,<minecraft:slime>],[<minecraft:slime>,<mysticalagriculture:chunk:2>,<minecraft:slime>],[<minecraft:slime>,<minecraft:slime>,<minecraft:slime>]]);

# Slime Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:slime_seeds>, <mysticalagriculture:chunk:11>, <contenttweaker:condensed_vis_crystal_alkimia>, <aspect:alkimia>);

# Skeleton Chunk
recipes.remove(<mysticalagriculture:chunk:12>);
recipes.addShaped(<mysticalagriculture:chunk:12>, [[<minecraft:bone_block>,<minecraft:bone_block>,<minecraft:bone_block>],[<minecraft:bone_block>,<mysticalagriculture:chunk:2>,<minecraft:bone_block>],[<minecraft:bone_block>,<minecraft:bone_block>,<minecraft:bone_block>]]);

# Skeleton Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:skeleton_seeds>, <mysticalagriculture:chunk:12>, <contenttweaker:condensed_vis_crystal_mortuus>, <aspect:mortuus>);

# Creeper Chunk
recipes.remove(<mysticalagriculture:chunk:13>);
recipes.addShaped(<mysticalagriculture:chunk:13>, [[<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>],[<minecraft:gunpowder>,<mysticalagriculture:chunk:2>,<minecraft:gunpowder>],[<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>]]);

# Creeper Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:creeper_seeds>, <mysticalagriculture:chunk:13>, <contenttweaker:condensed_vis_crystal_perditio>, <aspect:perditio>);

# Spider Chunk
recipes.remove(<mysticalagriculture:chunk:14>);
recipes.addShaped(<mysticalagriculture:chunk:14>, [[<minecraft:string>,<minecraft:spider_eye>,<minecraft:string>],[<minecraft:spider_eye>,<mysticalagriculture:chunk:2>,<minecraft:spider_eye>],[<minecraft:string>,<minecraft:spider_eye>,<minecraft:string>]]);

# Spider Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:spider_seeds>, <mysticalagriculture:chunk:14>, <contenttweaker:condensed_vis_crystal_motus>, <aspect:motus>);

# Guardian Seeds
recipes.remove(<mysticalagriculture:chunk:16>);
recipes.addShaped(<mysticalagriculture:chunk:16>, [[<minecraft:prismarine_shard>,<minecraft:fish>,<minecraft:prismarine_shard>],[<minecraft:fish>,<mysticalagriculture:chunk:2>,<minecraft:fish>],[<minecraft:prismarine_shard>,<minecraft:fish>,<minecraft:prismarine_shard>]]);

# Guardian Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:guardian_seeds>, <mysticalagriculture:chunk:16>, <contenttweaker:condensed_vis_crystal_aqua>, <aspect:aqua>);

# Blaze Chunk
recipes.remove(<mysticalagriculture:chunk:17>);
recipes.addShaped(<mysticalagriculture:chunk:17>, [[<botania:blazeblock>,<botania:blazeblock>,<botania:blazeblock>],[<botania:blazeblock>,<mysticalagriculture:chunk:2>,<botania:blazeblock>],[<botania:blazeblock>,<botania:blazeblock>,<botania:blazeblock>]]);

# Blaze Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:blaze_seeds>, <mysticalagriculture:chunk:17>, <contenttweaker:condensed_vis_crystal_ignis>, <aspect:ignis>);

# Aluminum Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:aluminum_seeds>, <thermalfoundation:storage:4>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Copper Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:copper_seeds>, <thermalfoundation:storage>, <contenttweaker:condensed_vis_crystal_permutatio>, <aspect:permutatio>);

# Tin Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:tin_seeds>, <thermalfoundation:storage:1>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Bronze Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:bronze_seeds>, <thermalfoundation:storage_alloy:3>, <contenttweaker:condensed_vis_crystal_instrumentum>, <aspect:instrumentum>, <mysticalagriculture:copper_seeds>);

# Silver Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:silver_seeds>, <thermalfoundation:storage:2>, <contenttweaker:condensed_vis_crystal_desiderium>, <aspect:desiderium>);

# Lead Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:lead_seeds>, <thermalfoundation:storage:3>, <contenttweaker:condensed_vis_crystal_ordo>, <aspect:ordo>);

# Steel Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:steel_seeds>, <thermalfoundation:storage_alloy>, <contenttweaker:condensed_vis_crystal_ignis>, <aspect:ignis>, <mysticalagriculture:iron_seeds>);

# Nickel Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:nickel_seeds>, <thermalfoundation:storage:5>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Constantan Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:constantan_seeds>, <thermalfoundation:storage_alloy:4>, <contenttweaker:condensed_vis_crystal_instrumentum>, <aspect:instrumentum>, <mysticalagriculture:nickel_seeds>);

# Electrum Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:electrum_seeds>, <thermalfoundation:storage_alloy:1>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:gold_seeds>);

# Invar Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:invar_seeds>, <thermalfoundation:storage_alloy:2>, <contenttweaker:condensed_vis_crystal_instrumentum>, <aspect:instrumentum>, <mysticalagriculture:iron_seeds>);

# Platinum Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:platinum_seeds>, <thermalfoundation:storage:6>, <contenttweaker:condensed_vis_crystal_praemunio>, <aspect:praemunio>, <mysticalagriculture:nickel_seeds>);

# Amber Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:amber_seeds>, <thaumcraft:amber_block>, <contenttweaker:condensed_vis_crystal_vinculum>, <aspect:vinculum>);

# Blizz Chunk
recipes.remove(<mysticalagriculture:chunk:21>);
recipes.addShaped(<mysticalagriculture:chunk:21>, [[<thermalfoundation:material:2048>,<thermalfoundation:material:2048>,<thermalfoundation:material:2048>],[<thermalfoundation:material:2048>,<mysticalagriculture:chunk:2>,<thermalfoundation:material:2048>],[<thermalfoundation:material:2048>,<thermalfoundation:material:2048>,<thermalfoundation:material:2048>]]);

# Blizz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:blizz_seeds>, <mysticalagriculture:chunk:21>, <contenttweaker:condensed_vis_crystal_gelum>, <aspect:gelum>);

# Blitz Chunk
recipes.remove(<mysticalagriculture:chunk:22>);
recipes.addShaped(<mysticalagriculture:chunk:22>, [[<thermalfoundation:material:2050>,<thermalfoundation:material:2050>,<thermalfoundation:material:2050>],[<thermalfoundation:material:2050>,<mysticalagriculture:chunk:2>,<thermalfoundation:material:2050>],[<thermalfoundation:material:2050>,<thermalfoundation:material:2050>,<thermalfoundation:material:2050>]]);

# Blitz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:blitz_seeds>, <mysticalagriculture:chunk:22>, <contenttweaker:condensed_vis_crystal_ignis>, <aspect:ignis>);

# Basalz Chunk
recipes.remove(<mysticalagriculture:chunk:23>);
recipes.addShaped(<mysticalagriculture:chunk:23>, [[<thermalfoundation:material:2052>,<thermalfoundation:material:2052>,<thermalfoundation:material:2052>],[<thermalfoundation:material:2052>,<mysticalagriculture:chunk:2>,<thermalfoundation:material:2052>],[<thermalfoundation:material:2052>,<thermalfoundation:material:2052>,<thermalfoundation:material:2052>]]);

# Basalz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:basalz_seeds>, <mysticalagriculture:chunk:23>, <contenttweaker:condensed_vis_crystal_perditio>, <aspect:perditio>);

# Lumium Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:lumium_seeds>, <thermalfoundation:storage_alloy:6>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:glowstone_seeds>);

# Aluminum Brass Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:aluminum_brass_seeds>, <tconstruct:metal:5>, <contenttweaker:condensed_vis_crystal_permutatio>, <aspect:permutatio>, <mysticalagriculture:aluminum_seeds>);

# Redstone Alloy Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:redstone_alloy_seeds>, <enderio:block_alloy:3>, <contenttweaker:condensed_vis_crystal_terra>, <aspect:terra>, <mysticalagriculture:redstone_seeds>);

# Soularium Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:soularium_seeds>, <enderio:block_alloy:7>, <contenttweaker:condensed_vis_crystal_spiritus>, <aspect:spiritus>, <mysticalagriculture:gold_seeds>);

# Quicksilver Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:quicksilver_seeds>, <thaumcraft:quicksilver>, <contenttweaker:condensed_vis_crystal_mortuus>, <aspect:mortuus>);

# Osmium Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:osmium_seeds>, <mekanism:basicblock>, <contenttweaker:condensed_vis_crystal_metallum>, <aspect:metallum>);

# Glowstone Ingot Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:glowstone_ingot_seeds>, <mekanism:basicblock:4>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:glowstone_seeds>);

# Refined Obsidian Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:refined_obsidian_seeds>, <mekanism:basicblock:2>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:obsidian_seeds>);

# Black Quartz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:black_quartz_seeds>, <actuallyadditions:block_misc:2>, <contenttweaker:condensed_vis_crystal_tenebrae>, <aspect:tenebrae>);

# Menril Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:menril_seeds>, <integrateddynamics:crystalized_menril_block>, <contenttweaker:condensed_vis_crystal_vitreus>, <aspect:vitreus>);

# Crystallized Menril Chunk from Menril Essence
recipes.addShaped(<integrateddynamics:crystalized_menril_chunk> * 3, [[<mysticalagriculture:menril_essence>],[<mysticalagriculture:menril_essence>],[<mysticalagriculture:menril_essence>]]);

# Jade Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:jade_seeds>, <erebus:jade_block>, <contenttweaker:condensed_vis_crystal_terra>, <aspect:terra>);

# Dark Gem Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:dark_gem_seeds>, <evilcraft:dark_power_gem_block>, <contenttweaker:condensed_vis_crystal_tenebrae>, <aspect:tenebrae>);

# Certus Quartz Seeds
addTier3MysticalAgricultureSeed(<mysticalagriculture:certus_quartz_seeds>, <appliedenergistics2:quartz_block>, <contenttweaker:condensed_vis_crystal_vitreus>, <aspect:vitreus>);

# Fluix Seeds
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:fluix_seeds>, <appliedenergistics2:fluix_block>, <contenttweaker:condensed_vis_crystal_potentia>, <aspect:potentia>, <mysticalagriculture:certus_quartz_seeds>);

# Moon Stone Seeds & Moon Stone Essence -> Moon Stone
addTier3MysticalAgricultureSeedWithInput(<mysticalagriculture:moonstone_seeds>, <extrautils2:ingredients:5>, <contenttweaker:condensed_vis_crystal_luna>, <aspect:luna>, <mysticalagriculture:lapis_lazuli_seeds>);
<mysticalagriculture:moonstone_seeds>.displayName = "Moon Stone Seeds";
<mysticalagriculture:moonstone_essence>.displayName = "Moon Stone Essence";
recipes.addShaped(<extrautils2:ingredients:5>, [[<mysticalagriculture:moonstone_essence>,<mysticalagriculture:moonstone_essence>,<mysticalagriculture:moonstone_essence>],[<mysticalagriculture:moonstone_essence>,null,<mysticalagriculture:moonstone_essence>],[<mysticalagriculture:moonstone_essence>,<mysticalagriculture:moonstone_essence>,<mysticalagriculture:moonstone_essence>]]);

# Tier 4 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:20>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/tier4craftingseed", <mysticalagriculture:crafting:20>, 3000, 100,
[null,null,null,
null,<mysticalagriculture:crafting:19>,null,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>]);

# Inferium Seeds: Tier 4
recipes.remove(<mysticalagriculture:tier4_inferium_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/tier4_inferium_seeds", <mysticalagriculture:tier4_inferium_seeds>, 3000, 100,
[null,null,null,
null,<mysticalagriculture:tier3_inferium_seeds>,null,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>]);

function addTier4MysticalAgricultureSeedWithInput(output as IItemStack, input_material as IIngredient, constellation as string, input_seed as IItemStack) {
	recipes.remove(output);
	mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/" + output.name, output, 3000, 100,
	[null,null,null,
	null,input_seed,null,
	null,null,null,
	<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
	null,null,null,null,null,null,null,null,
	input_material,input_material,input_material,input_material], "astralsorcery.constellation." + constellation);
}

function addTier4MysticalAgricultureSeed(output as IItemStack, input_material as IIngredient, constellation as string) {
	addTier4MysticalAgricultureSeedWithInput(output, input_material, constellation, <mysticalagriculture:crafting:20>);
}

# Diamond Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:diamond_seeds>, <actuallyadditions:block_crystal_empowered:2>, "vicio");

# Emerald Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:emerald_seeds>, <actuallyadditions:block_crystal_empowered:4>, "aevitas");

# Tier 4 mob chunk
recipes.remove(<mysticalagriculture:chunk:3>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/tier4mobchunk", <mysticalagriculture:chunk:3>, 2500, 100,
[null,null,null,
null,<mysticalagriculture:chunk:2>,null,
null,null,null,
null,null,null,null,
null,null,null,null,null,null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>]);

# Ghast Chunk
recipes.remove(<mysticalagriculture:chunk:18>);
recipes.addShaped(<mysticalagriculture:chunk:18>, [[null,<divinerpg:ghast_pumpkin>,null],[<divinerpg:ghast_pumpkin>,<mysticalagriculture:chunk:3>,<divinerpg:ghast_pumpkin>],[null,<divinerpg:ghast_pumpkin>,null]]);

# Ghast Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:ghast_seeds>, <mysticalagriculture:chunk:18>, "vicio");

# Enderman Chunk
recipes.remove(<mysticalagriculture:chunk:19>);
recipes.addShaped(<mysticalagriculture:chunk:19>, [[<actuallyadditions:block_misc:6>,<actuallyadditions:block_misc:6>,<actuallyadditions:block_misc:6>,],[<actuallyadditions:block_misc:6>,<mysticalagriculture:chunk:3>,<actuallyadditions:block_misc:6>],[<actuallyadditions:block_misc:6>,<actuallyadditions:block_misc:6>,<actuallyadditions:block_misc:6>]]);

# Enderman Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:enderman_seeds>, <mysticalagriculture:chunk:19>, "pelotrio");

# Signalum Seeds
recipes.remove(<mysticalagriculture:signalum_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/signalum_seeds", <mysticalagriculture:signalum_seeds>, 3000, 100,
[null,<mysticalagriculture:redstone_seeds>,null,
null,null,null,
<mysticalagriculture:copper_seeds>,null,<mysticalagriculture:silver_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<thermalfoundation:storage_alloy:5>,<thermalfoundation:storage_alloy:5>,<thermalfoundation:storage_alloy:5>,<thermalfoundation:storage_alloy:5>], "astralsorcery.constellation.fornax");

# Enderium Seeds
recipes.remove(<mysticalagriculture:enderium_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/enderium_seeds", <mysticalagriculture:enderium_seeds>, 3000, 100,
[null,<mysticalagriculture:enderman_seeds>,null,
null,null,null,
<mysticalagriculture:lead_seeds>,null,<mysticalagriculture:platinum_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<thermalfoundation:storage_alloy:7>,<thermalfoundation:storage_alloy:7>,<thermalfoundation:storage_alloy:7>,<thermalfoundation:storage_alloy:7>], "astralsorcery.constellation.aevitas");

# Fluxed Electrum Seeds
recipes.remove(<mysticalagriculture:fluxed_electrum_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/fluxed_electrum_seeds", <mysticalagriculture:fluxed_electrum_seeds>, 3000, 100,
[null,<mysticalagriculture:electrum_seeds>,null,
null,null,null,
<mysticalagriculture:redstone_alloy_seeds>,null,<mysticalagriculture:blaze_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<contenttweaker:fluxed_electrum_block>,<contenttweaker:fluxed_electrum_block>,<contenttweaker:fluxed_electrum_block>,<contenttweaker:fluxed_electrum_block>], "astralsorcery.constellation.mineralis");

# Fluxed Electum Essence -> Fluxed Electrum Ingot
recipes.addShaped(<contenttweaker:fluxed_electrum_ingot> * 3, [[<mysticalagriculture:fluxed_electrum_essence>,<mysticalagriculture:fluxed_electrum_essence>,<mysticalagriculture:fluxed_electrum_essence>],[<mysticalagriculture:fluxed_electrum_essence>,null,<mysticalagriculture:fluxed_electrum_essence>],[<mysticalagriculture:fluxed_electrum_essence>,<mysticalagriculture:fluxed_electrum_essence>,<mysticalagriculture:fluxed_electrum_essence>]]);

# Knightslime Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:knightslime_seeds>, <tconstruct:metal:3>, "bootes", <mysticalagriculture:slime_seeds>);

# Ardite Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:ardite_seeds>, <tconstruct:metal:1>, "mineralis");

# Cobalt Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:cobalt_seeds>, <tconstruct:metal>, "octans");

# Manyullyn Seeds
recipes.remove(<mysticalagriculture:manyullyn_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/manyullin_seeds", <mysticalagriculture:manyullyn_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:cobalt_seeds>,null,<mysticalagriculture:ardite_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<tconstruct:metal:2>,<tconstruct:metal:2>,<tconstruct:metal:2>,<tconstruct:metal:2>], "astralsorcery.constellation.horologium");

# Electrical Steel Seeds
recipes.remove(<mysticalagriculture:electrical_steel_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/electrical_steel_seeds", <mysticalagriculture:electrical_steel_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:steel_seeds>,null,<mysticalagriculture:silicon_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy>,<enderio:block_alloy>,<enderio:block_alloy>,<enderio:block_alloy>], "astralsorcery.constellation.armara");

# Conductive Iron Seeds
recipes.remove(<mysticalagriculture:conductive_iron_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/conductive_iron_seeds", <mysticalagriculture:conductive_iron_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:iron_seeds>,null,<mysticalagriculture:redstone_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy:4>,<enderio:block_alloy:4>,<enderio:block_alloy:4>,<enderio:block_alloy:4>], "astralsorcery.constellation.bootes");

# Dark Steel Seeds
recipes.remove(<mysticalagriculture:dark_steel_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/dark_steel_seeds", <mysticalagriculture:dark_steel_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:steel_seeds>,null,<mysticalagriculture:refined_obsidian_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>,<enderio:block_alloy:6>], "astralsorcery.constellation.armara");

# Pulsating Iron Seeds
recipes.remove(<mysticalagriculture:pulsating_iron_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/pulsating_iron_seeds", <mysticalagriculture:pulsating_iron_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:iron_seeds>,null,<mysticalagriculture:enderman_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy:5>,<enderio:block_alloy:5>,<enderio:block_alloy:5>,<enderio:block_alloy:5>], "astralsorcery.constellation.aevitas");

# Energetic Alloy Seeds
recipes.remove(<mysticalagriculture:energetic_alloy_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/energetic_alloy_seeds", <mysticalagriculture:energetic_alloy_seeds>, 3000, 100,
[null,<mysticalagriculture:gold_seeds>,null,
null,null,null,
<mysticalagriculture:redstone_seeds>,null,<mysticalagriculture:glowstone_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy:1>,<enderio:block_alloy:1>,<enderio:block_alloy:1>,<enderio:block_alloy:1>], "astralsorcery.constellation.fornax");

# Vibrant Alloy Seeds
recipes.remove(<mysticalagriculture:vibrant_alloy_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/vibrant_alloy_seeds", <mysticalagriculture:vibrant_alloy_seeds>, 3000, 100,
[null,null,null,
<mysticalagriculture:energetic_alloy_seeds>,null,<mysticalagriculture:enderman_seeds>,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<enderio:block_alloy:2>,<enderio:block_alloy:2>,<enderio:block_alloy:2>,<enderio:block_alloy:2>], "astralsorcery.constellation.mineralis");

# Manasteel Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:manasteel_seeds>, <botania:storage>, "octans", <mysticalagriculture:mithril_seeds>);

# Elementium Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:elementium_seeds>, <botania:storage:2>, "horologium", <mysticalagriculture:manasteel_seeds>);

# Electrotine Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:electrotine_seeds>, <projectred-core:resource_item:342>, "vicio");

# Alumite Seeds
recipes.remove(<mysticalagriculture:alumite_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/alumite_seeds", <mysticalagriculture:alumite_seeds>, 3000, 100,
[null,<mysticalagriculture:aluminum_seeds>,null,
null,null,null,
<mysticalagriculture:iron_seeds>,null,<mysticalagriculture:obsidian_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<plustic:alumiteblock>,<plustic:alumiteblock>,<plustic:alumiteblock>,<plustic:alumiteblock>], "astralsorcery.constellation.bootes");

# Coralium Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:coralium_seeds>, <abyssalcraft:ingotblock:1>, "aevitas");

# Abyssalnite Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:abyssalnite_seeds>, <abyssalcraft:ingotblock>, "bootes", <mysticalagriculture:coralium_seeds>);

# Dreaduium Seeds
addTier4MysticalAgricultureSeedWithInput(<mysticalagriculture:dreadium_seeds>, <abyssalcraft:ingotblock:2>, "discidia", <mysticalagriculture:abyssalnite_seeds>);

# Mithril Seeds
recipes.remove(<mysticalagriculture:mithril_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/mithril_seeds", <mysticalagriculture:mithril_seeds>, 3000, 100,
[<mysticalagriculture:platinum_seeds>,<mysticalagriculture:blaze_seeds>,<mysticalagriculture:blizz_seeds>,
<mysticalagriculture:gold_seeds>,null,<mysticalagriculture:blitz_seeds>,
<mysticalagriculture:osmium_seeds>,<mysticalagriculture:bronze_seeds>,<mysticalagriculture:basalz_seeds>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
null,null,null,null,null,null,null,null,
<thermalfoundation:storage:8>,<thermalfoundation:storage:8>,<thermalfoundation:storage:8>,<thermalfoundation:storage:8>], "astralsorcery.constellation.horologium");

# Iridium Seeds
addTier4MysticalAgricultureSeed(<mysticalagriculture:iridium_seeds>, <thermalfoundation:storage:7>, "armara");

# Lithium Seeds
recipes.remove(<mysticalagriculture:lithium_seeds>);
mods.astralsorcery.Altar.addTraitAltarRecipe("dj2:shaped/internal/altar/lithium_seeds", <mysticalagriculture:lithium_seeds>, 3000, 100,
[null,null,null,
null,<mysticalagriculture:crafting:20>,null,
null,null,null,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,
<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>,<alchemistry:ingot:3>], "astralsorcery.constellation.vicio");

/*
# Inferium to Supremium Bows
function addMysticalAgricultureBowRecipe(new_bow as IItemStack, old_bow as IItemStack, new_material as IIngredient, tool_core as IIngredient) {
	recipes.remove(new_bow);
	recipes.addShapedMirrored(new_bow, [[null,new_material,<mysticalagriculture:crafting:23>],[tool_core,old_bow,<mysticalagriculture:crafting:23>],[null,new_material,<mysticalagriculture:crafting:23>]]);
}

# Inferium Bow
addMysticalAgricultureBowRecipe(<mysticalagriculture:inferium_bow>,<minecraft:bow>,<mysticalagriculture:crafting:33>,<mysticalagriculture:gear>);

# Prudentium Bow
addMysticalAgricultureBowRecipe(<mysticalagriculture:prudentium_bow>,<mysticalagriculture:inferium_bow>,<mysticalagriculture:crafting:34>,<mysticalagriculture:gear:1>);

# Intermedium Bow
addMysticalAgricultureBowRecipe(<mysticalagriculture:intermedium_bow>,<mysticalagriculture:prudentium_bow>,<mysticalagriculture:crafting:35>,<mysticalagriculture:gear:2>);

# Superium Bow
addMysticalAgricultureBowRecipe(<mysticalagriculture:superium_bow>,<mysticalagriculture:intermedium_bow>,<mysticalagriculture:crafting:36>,<mysticalagriculture:gear:3>);

# Supremium Bow
recipes.remove(<mysticalagriculture:supremium_bow>);
addMysticalAgricultureBowRecipe(<mysticalagriculture:supremium_bow>.withTag({}),<mysticalagriculture:superium_bow>,<mysticalagriculture:crafting:37>,<mysticalagriculture:gear:4>);
*/

# Tier 5 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:21>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_tier_5_crafting_seed.json

# Inferium Seeds: Tier 5
recipes.remove(<mysticalagriculture:tier5_inferium_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_inferium_seeds_tier_5.json

# Tier 5 Mob Chunk
recipes.remove(<mysticalagriculture:chunk:4>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_tier_5_mob_chunk.json

# Wither Skeleton Chunk
recipes.remove(<mysticalagriculture:chunk:20>);
recipes.addShaped(<mysticalagriculture:chunk:20>, [[<minecraft:skull:1>,<extrautils2:ingredients:10>,<minecraft:skull:1>],[<extrautils2:ingredients:10>,<mysticalagriculture:chunk:4>,<extrautils2:ingredients:10>],[<minecraft:skull:1>,<extrautils2:ingredients:10>,<minecraft:skull:1>]]);

# Wither Skeleton Seeds
recipes.remove(<mysticalagriculture:wither_skeleton_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_wither_skeleton_seeds.json

# Zinc Seeds
recipes.remove(<mysticalagriculture:zinc_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_zinc_seeds.json

# Alchemical Brass Seeds
<mysticalagriculture:brass_seeds>.displayName = "Alchemical Brass Seeds";
<mysticalagriculture:brass_essence>.displayName = "Alchemical Brass Essence";
recipes.remove(<mysticalagriculture:brass_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_alchemical_brass_seeds.json

# Titanium Seeds
recipes.remove(<mysticalagriculture:titanium_seeds>);
recipes.remove(<alchemistry:ingot:22>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_titanium_seeds.json
recipes.addShaped(<galacticraftplanets:item_basic_asteroids> * 3, [[<mysticalagriculture:titanium_essence>,<mysticalagriculture:titanium_essence>,<mysticalagriculture:titanium_essence>],[<mysticalagriculture:titanium_essence>,null,<mysticalagriculture:titanium_essence>],[<mysticalagriculture:titanium_essence>,<mysticalagriculture:titanium_essence>,<mysticalagriculture:titanium_essence>]]);

# End Steel Seeds
recipes.remove(<mysticalagriculture:end_steel_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_end_steel_seeds.json

# Terrasteel Seeds
recipes.remove(<mysticalagriculture:terrasteel_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_terrasteel_seeds.json

# Thaumium Seeds
recipes.remove(<mysticalagriculture:thaumium_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_thaumium_seeds.json

# Void Metal Seeds
recipes.remove(<mysticalagriculture:void_metal_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_void_metal_seeds.json

# Cold-Iron Seeds
recipes.remove(<mysticalagriculture:cold_iron_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_cold_iron_seeds.json

# Cold Iron from Cold-Iron Essence
recipes.addShaped(<bewitchment:cold_iron_ingot> * 3, [[<mysticalagriculture:cold_iron_essence>,<mysticalagriculture:cold_iron_essence>,<mysticalagriculture:cold_iron_essence>],[<mysticalagriculture:cold_iron_essence>,null,<mysticalagriculture:cold_iron_essence>],[<mysticalagriculture:cold_iron_essence>,<mysticalagriculture:cold_iron_essence>,<mysticalagriculture:cold_iron_essence>]]);

# Coquina from Stone Essence and Cold-Iron Essence
recipes.addShaped(<bewitchment:coquina> * 8, [[<mysticalagriculture:stone_essence>,<mysticalagriculture:stone_essence>,<mysticalagriculture:stone_essence>],[<mysticalagriculture:stone_essence>,<mysticalagriculture:cold_iron_essence>,<mysticalagriculture:stone_essence>],[<mysticalagriculture:stone_essence>,<mysticalagriculture:stone_essence>,<mysticalagriculture:stone_essence>]]);

# Meteoric Iron Seeds
recipes.remove(<mysticalagriculture:meteoric_iron_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_meteoric_iron_seeds.json

# Desh Seeds
recipes.remove(<mysticalagriculture:desh_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_desh_seeds.json

# Aquamarine Seeds
recipes.remove(<mysticalagriculture:aquamarine_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_aquamarine_seeds.json

# Starmetal Seeds
recipes.remove(<mysticalagriculture:starmetal_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_starmetal_seeds.json

# Draconium Seeds
recipes.remove(<mysticalagriculture:draconium_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_draconium_seeds.json

# Yellorium Seeds
recipes.remove(<mysticalagriculture:yellorium_seeds>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_yellorium_seeds.json

# Mystical Fertilizer
recipes.remove(<mysticalagriculture:mystical_fertilizer>);
mods.alchemistry.Combiner.addRecipe(<mysticalagriculture:mystical_fertilizer> * 3, [<alchemistry:fertilizer>,<alchemistry:compound:53>]);

# Base Eseence Ingot
recipes.remove(<mysticalagriculture:crafting:32>);
recipes.addShaped(<mysticalagriculture:crafting:32>, [[null,<mysticalagriculture:crafting:5>,null],[<mysticalagriculture:crafting:5>,<botania:manaresource>,<mysticalagriculture:crafting:5>],[null,<mysticalagriculture:crafting:5>,null]]);
recipes.addShapeless(<mysticalagriculture:crafting:32> * 9, [<mysticalagriculture:ingot_storage>]);

# Mystical Machine Frame
recipes.remove(<mysticalagriculture:mystical_machine_frame>);
recipes.addShaped(<mysticalagriculture:mystical_machine_frame>, [[<contenttweaker:clean_runic_plate>,<mysticalagriculture:crafting:32>,<contenttweaker:clean_runic_plate>],[<mysticalagriculture:crafting:32>,<extendedcrafting:frame>,<mysticalagriculture:crafting:32>],[<contenttweaker:clean_runic_plate>,<mysticalagriculture:crafting:32>,<contenttweaker:clean_runic_plate>]]);

# Seed Reprocessor
recipes.remove(<mysticalagriculture:seed_reprocessor>);
recipes.addShaped(<mysticalagriculture:seed_reprocessor>, [[<thermalfoundation:material:327>,<mysticalagriculture:tier2_inferium_seeds>,<thermalfoundation:material:327>],[<thermalfoundation:material:327>,<mysticalagriculture:mystical_machine_frame>,<thermalfoundation:material:327>],[<thermalfoundation:material:327>,<mysticalagriculture:ingot_storage:6>,<thermalfoundation:material:327>]]);

# Ultimate Seed Reprocessor
recipes.remove(<mysticalagriculture:ultimate_reprocessor>);
recipes.addShaped(<mysticalagriculture:ultimate_reprocessor>, [[null,<mysticalagradditions:insanium>,null],[<mysticalagradditions:insanium>,<mysticalagriculture:supremium_reprocessor>,<mysticalagradditions:insanium>],[null,<mysticalagradditions:storage>,null]]);

# Witherproof Block
recipes.remove(<mysticalagriculture:witherproof_block>);
recipes.addShaped(<mysticalagriculture:witherproof_block>, [[<enderio:block_dark_iron_bars>,<mysticalagriculture:wither_skeleton_essence>,<enderio:block_dark_iron_bars>],[<mysticalagriculture:wither_skeleton_essence>,<mysticalagriculture:soulstone>,<mysticalagriculture:wither_skeleton_essence>],[<enderio:block_dark_iron_bars>,<mysticalagriculture:wither_skeleton_essence>,<enderio:block_dark_iron_bars>]]);

# Witherproof Glass
recipes.remove(<mysticalagriculture:witherproof_glass>);
recipes.addShaped(<mysticalagriculture:witherproof_glass>, [[<enderio:block_dark_iron_bars>,<mysticalagriculture:wither_skeleton_essence>,<enderio:block_dark_iron_bars>],[<mysticalagriculture:wither_skeleton_essence>,<mysticalagriculture:soul_glass>,<mysticalagriculture:wither_skeleton_essence>],[<enderio:block_dark_iron_bars>,<mysticalagriculture:wither_skeleton_essence>,<enderio:block_dark_iron_bars>]]);

# Prudentium Ingot
recipes.removeShapeless(<mysticalagriculture:crafting:34>, [<*>,<*>,<*>]);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:crafting:34>, [<mysticalagriculture:crafting:33>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 10000);

# Intermedium Ingot
recipes.removeShapeless(<mysticalagriculture:crafting:35>, [<*>,<*>,<*>]);
mods.thaumcraft.Infusion.registerRecipe("mysticalagriculture:intermedium_seed", "", <mysticalagriculture:crafting:35>, 1, [<aspect:metallum> * 10,<aspect:praecantatio> * 10], <mysticalagriculture:crafting:34>, [<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>]);

# Superium Ingot
recipes.removeShapeless(<mysticalagriculture:crafting:36>, [<*>,<*>,<*>]);
RecipeBuilder.newBuilder("superium_ingot_recipe", "lightningcraft_infusion_multiblock", 300)
	.addEnergyPerTickInput(50000)
	.addItemInput(<mysticalagriculture:crafting:35>)
	.addItemInput(<lightningcraft:material:12> * 2)
	.addItemInput(<mysticalagriculture:crafting:3> * 2)
	.addItemOutput(<mysticalagriculture:crafting:36>)
	.build();


# Supremium Ingot
recipes.removeShapeless(<mysticalagriculture:crafting:37>, [<*>,<*>,<*>]);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriculture_supremium_ingot.json

# Inferium Fertilization Core
recipes.remove(<mysticalagriculture:crafting:50>);
recipes.addShaped(<mysticalagriculture:crafting:50>, [[<mysticalagriculture:crafting>,<botania:manaresource:7>,<mysticalagriculture:crafting>],[<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting:32>,<mysticalagriculture:fertilized_essence>],[<mysticalagriculture:crafting>,<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting>]]);

# Prudentium Fertilization Core
recipes.remove(<mysticalagriculture:crafting:51>);
recipes.addShaped(<mysticalagriculture:crafting:51>, [[<mysticalagriculture:crafting:1>,<thaumcraft:ingot>,<mysticalagriculture:crafting:1>],[<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting:50>,<mysticalagriculture:fertilized_essence>],[<mysticalagriculture:crafting:1>,<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting:1>]]);

# Intermedium Fertilization Core
recipes.remove(<mysticalagriculture:crafting:52>);
recipes.addShaped(<mysticalagriculture:crafting:52>, [[<mysticalagriculture:crafting:2>,<contenttweaker:gypsum>,<mysticalagriculture:crafting:2>],[<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting:51>,<mysticalagriculture:fertilized_essence>],[<mysticalagriculture:crafting:2>,<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting:2>]]);

# Superium Fertilization Core
recipes.remove(<mysticalagriculture:crafting:53>);
recipes.addShaped(<mysticalagriculture:crafting:53>, [[<mysticalagriculture:crafting:3>,<astralsorcery:itemcraftingcomponent:1>,<mysticalagriculture:crafting:3>],[<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting:52>,<mysticalagriculture:fertilized_essence>],[<mysticalagriculture:crafting:3>,<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting:3>]]);

# Supremium Fertilization Core
recipes.remove(<mysticalagriculture:crafting:54>);
recipes.addShaped(<mysticalagriculture:crafting:54>, [[<mysticalagriculture:crafting:4>,<contenttweaker:solar_ingot>,<mysticalagriculture:crafting:4>],[<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting:53>,<mysticalagriculture:fertilized_essence>],[<mysticalagriculture:crafting:4>,<mysticalagriculture:fertilized_essence>,<mysticalagriculture:crafting:4>]]);

# Theoretical Infinite Water Source
recipes.remove(<mysticalagriculture:crafting:48>);
recipes.addShaped(<mysticalagriculture:crafting:48>, [[<extendedcrafting:material>,<contenttweaker:rune_of_water>,<extendedcrafting:material>],[<contenttweaker:rune_of_water>,<roots:unending_bowl>,<contenttweaker:rune_of_water>],[<extendedcrafting:material>,<contenttweaker:rune_of_water>,<extendedcrafting:material>]]);

# Prudentium Watering Can
recipes.remove(<mysticalagriculture:watering_can:1>);
recipes.addShapedMirrored(<mysticalagriculture:watering_can:1>, [[<mysticalagriculture:crafting:34>,<mysticalagriculture:crafting:51>,null],[<mysticalagriculture:crafting:34>,<mysticalagriculture:watering_can>,<mysticalagriculture:crafting:34>],[null,<mysticalagriculture:crafting:34>,null]]);

# Intermedium Watering Can
recipes.remove(<mysticalagriculture:watering_can:2>);
recipes.addShapedMirrored(<mysticalagriculture:watering_can:2>, [[<mysticalagriculture:crafting:35>,<mysticalagriculture:crafting:52>,null],[<mysticalagriculture:crafting:35>,<mysticalagriculture:watering_can:1>,<mysticalagriculture:crafting:35>],[null,<mysticalagriculture:crafting:35>,null]]);

# Superium Watering Can
recipes.remove(<mysticalagriculture:watering_can:3>);
recipes.addShapedMirrored(<mysticalagriculture:watering_can:3>, [[<mysticalagriculture:crafting:36>,<mysticalagriculture:crafting:53>,null],[<mysticalagriculture:crafting:36>,<mysticalagriculture:watering_can:2>,<mysticalagriculture:crafting:36>],[null,<mysticalagriculture:crafting:36>,null]]);

# Supremium Watering Can
recipes.remove(<mysticalagriculture:watering_can:4>);
recipes.addShapedMirrored(<mysticalagriculture:watering_can:4>, [[<mysticalagriculture:crafting:37>,<mysticalagriculture:crafting:54>,null],[<mysticalagriculture:crafting:37>,<mysticalagriculture:watering_can:3>,<mysticalagriculture:crafting:37>],[null,<mysticalagriculture:crafting:37>,null]]);

# Core Remover
recipes.remove(<mysticalagriculture:core_remover>);
recipes.addShaped(<mysticalagriculture:core_remover>, [[null,<mysticalagriculture:fertilized_essence>,null],[<mysticalagriculture:fertilized_essence>,<contenttweaker:suppression_core>,<mysticalagriculture:fertilized_essence>],[null,<mysticalagriculture:fertilized_essence>,null]]);

# Growth Accelerator
recipes.remove(<mysticalagriculture:growth_accelerator>);
recipes.addShaped(<mysticalagriculture:growth_accelerator> * 4, [[<appliedenergistics2:quartz_growth_accelerator>,<mysticalagriculture:ingot_storage:1>,<appliedenergistics2:quartz_growth_accelerator>],[<mysticalagriculture:ingot_storage:1>,<mysticalagriculture:mystical_machine_frame>,<mysticalagriculture:ingot_storage:1>],[<appliedenergistics2:quartz_growth_accelerator>,<mysticalagriculture:ingot_storage:1>,<appliedenergistics2:quartz_growth_accelerator>]]);

# Inferium Tool Core
recipes.remove(<mysticalagriculture:gear>);
recipes.addShaped(<mysticalagriculture:gear>, [[<mysticalagriculture:crafting>,<botania:manaresource:7>,<mysticalagriculture:crafting>],[<botania:manaresource:7>,<mysticalagriculture:crafting:32>,<botania:manaresource:7>],[<mysticalagriculture:crafting>,<botania:manaresource:7>,<mysticalagriculture:crafting>]]);

# Prudentium Tool Core
recipes.remove(<mysticalagriculture:gear:1>);
recipes.addShaped(<mysticalagriculture:gear:1>, [[<mysticalagriculture:crafting:1>,<thaumcraft:ingot>,<mysticalagriculture:crafting:1>],[<thaumcraft:ingot>,<mysticalagriculture:gear>,<thaumcraft:ingot>],[<mysticalagriculture:crafting:1>,<thaumcraft:ingot>,<mysticalagriculture:crafting:1>]]);

# Intermedium Tool Core
recipes.remove(<mysticalagriculture:gear:2>);
recipes.addShaped(<mysticalagriculture:gear:2>, [[<mysticalagriculture:crafting:2>,<contenttweaker:gypsum>,<mysticalagriculture:crafting:2>],[<contenttweaker:gypsum>,<mysticalagriculture:gear:1>,<contenttweaker:gypsum>],[<mysticalagriculture:crafting:2>,<contenttweaker:gypsum>,<mysticalagriculture:crafting:2>]]);

# Superium Tool Core
recipes.remove(<mysticalagriculture:gear:3>);
recipes.addShaped(<mysticalagriculture:gear:3>, [[<mysticalagriculture:crafting:3>,<astralsorcery:itemcraftingcomponent:1>,<mysticalagriculture:crafting:3>],[<astralsorcery:itemcraftingcomponent:1>,<mysticalagriculture:gear:2>,<astralsorcery:itemcraftingcomponent:1>],[<mysticalagriculture:crafting:3>,<astralsorcery:itemcraftingcomponent:1>,<mysticalagriculture:crafting:3>]]);

# Supremium Tool Core
recipes.remove(<mysticalagriculture:gear:4>);
recipes.addShaped(<mysticalagriculture:gear:4>, [[<mysticalagriculture:crafting:4>,<contenttweaker:solar_ingot>,<mysticalagriculture:crafting:4>],[<contenttweaker:solar_ingot>,<mysticalagriculture:gear:3>,<contenttweaker:solar_ingot>],[<mysticalagriculture:crafting:4>,<contenttweaker:solar_ingot>,<mysticalagriculture:crafting:4>]]);

# Inferium Armor Core
recipes.remove(<mysticalagriculture:gear:5>);
recipes.addShaped(<mysticalagriculture:gear:5>, [[<mysticalagriculture:crafting>,<botania:manaresource:7>,<mysticalagriculture:crafting>],[<minecraft:leather>,<mysticalagriculture:crafting:32>,<minecraft:leather>],[<mysticalagriculture:crafting>,<minecraft:leather>,<mysticalagriculture:crafting>]]);

# Prudentium Armor Core
recipes.remove(<mysticalagriculture:gear:6>);
recipes.addShaped(<mysticalagriculture:gear:6>, [[<mysticalagriculture:crafting:1>,<thaumcraft:ingot>,<mysticalagriculture:crafting:1>],[<contenttweaker:treated_leather>,<mysticalagriculture:gear:5>,<contenttweaker:treated_leather>],[<mysticalagriculture:crafting:1>,<contenttweaker:treated_leather>,<mysticalagriculture:crafting:1>]]);

# Intermedium Armor Core
recipes.remove(<mysticalagriculture:gear:7>);
recipes.addShaped(<mysticalagriculture:gear:7>, [[<mysticalagriculture:crafting:2>,<contenttweaker:gypsum>,<mysticalagriculture:crafting:2>],[<contenttweaker:blood_infused_leather>,<mysticalagriculture:gear:6>,<contenttweaker:blood_infused_leather>],[<mysticalagriculture:crafting:2>,<contenttweaker:blood_infused_leather>,<mysticalagriculture:crafting:2>]]);

# Superium Armor Core
recipes.remove(<mysticalagriculture:gear:8>);
recipes.addShaped(<mysticalagriculture:gear:8>, [[<mysticalagriculture:crafting:3>,<astralsorcery:itemcraftingcomponent:1>,<mysticalagriculture:crafting:3>],[<contenttweaker:magical_leather>,<mysticalagriculture:gear:7>,<contenttweaker:magical_leather>],[<mysticalagriculture:crafting:3>,<contenttweaker:magical_leather>,<mysticalagriculture:crafting:3>]]);

# Supremium Armor Core
recipes.remove(<mysticalagriculture:gear:9>);
recipes.addShaped(<mysticalagriculture:gear:9>, [[<mysticalagriculture:crafting:4>,<contenttweaker:solar_ingot>,<mysticalagriculture:crafting:4>],[<contenttweaker:star_leather>,<mysticalagriculture:gear:8>,<contenttweaker:star_leather>],[<mysticalagriculture:crafting:4>,<contenttweaker:star_leather>,<mysticalagriculture:crafting:4>]]);

# Inferium Arrow Head
recipes.remove(<mysticalagriculture:gear:15>);
recipes.addShaped(<mysticalagriculture:gear:15>, [[null,<mysticalagriculture:crafting:40>,null],[<mysticalagriculture:crafting:40>,<contenttweaker:coated_clathrate>,<mysticalagriculture:crafting:40>],[null,<mysticalagriculture:crafting:40>,null]]);

function addMysticalAgricultureArmorRecipes(input_armor as IItemStack[], output_armor as IItemStack[], new_ingot as IIngredient, new_core as IIngredient) {

	# Helmet
	recipes.remove(output_armor[0]);
	recipes.addShaped(output_armor[0], [[new_ingot,new_core,new_ingot],[new_ingot,input_armor[0],new_ingot]]);

	# Chestplate
	recipes.remove(output_armor[1]);
	recipes.addShaped(output_armor[1], [[new_ingot,input_armor[1],new_ingot],[new_ingot,new_core,new_ingot],[new_ingot,new_ingot,new_ingot]]);

	# Leggings
	recipes.remove(output_armor[2]);
	recipes.addShaped(output_armor[2], [[new_ingot,new_core,new_ingot],[new_ingot,input_armor[2],new_ingot],[new_ingot,null,new_ingot]]);

	# Boots
	recipes.remove(output_armor[3]);
	recipes.addShaped(output_armor[3], [[new_ingot,new_core,new_ingot],[new_ingot,input_armor[3],new_ingot]]);

}

# Inferium Armor
addMysticalAgricultureArmorRecipes([<botania:elementiumhelm>,<botania:elementiumchest>,<botania:elementiumlegs>,<botania:elementiumboots>],[<mysticalagriculture:inferium_helmet>,<mysticalagriculture:inferium_chestplate>,<mysticalagriculture:inferium_leggings>,<mysticalagriculture:inferium_boots>],<mysticalagriculture:crafting:33>,<mysticalagriculture:gear:5>);

# Prudentium Armor
addMysticalAgricultureArmorRecipes([<mysticalagriculture:inferium_helmet>,<mysticalagriculture:inferium_chestplate>,<mysticalagriculture:inferium_leggings>,<mysticalagriculture:inferium_boots>],[<mysticalagriculture:prudentium_helmet>,<mysticalagriculture:prudentium_chestplate>,<mysticalagriculture:prudentium_leggings>,<mysticalagriculture:prudentium_boots>],<mysticalagriculture:crafting:34>,<mysticalagriculture:gear:6>);

# Intermedium Armor
addMysticalAgricultureArmorRecipes([<mysticalagriculture:prudentium_helmet>,<mysticalagriculture:prudentium_chestplate>,<mysticalagriculture:prudentium_leggings>,<mysticalagriculture:prudentium_boots>],[<mysticalagriculture:intermedium_helmet>,<mysticalagriculture:intermedium_chestplate>,<mysticalagriculture:intermedium_leggings>,<mysticalagriculture:intermedium_boots>],<mysticalagriculture:crafting:35>,<mysticalagriculture:gear:7>);

# Superium Armor
addMysticalAgricultureArmorRecipes([<mysticalagriculture:intermedium_helmet>,<mysticalagriculture:intermedium_chestplate>,<mysticalagriculture:intermedium_leggings>,<mysticalagriculture:intermedium_boots>],[<mysticalagriculture:superium_helmet>,<mysticalagriculture:superium_chestplate>,<mysticalagriculture:superium_leggings>,<mysticalagriculture:superium_boots>],<mysticalagriculture:crafting:36>,<mysticalagriculture:gear:8>);

# Supremium Armor
recipes.remove(<mysticalagriculture:supremium_helmet>);
recipes.remove(<mysticalagriculture:supremium_chestplate>);
recipes.remove(<mysticalagriculture:supremium_leggings>);
recipes.remove(<mysticalagriculture:supremium_boots>);
addMysticalAgricultureArmorRecipes([<mysticalagriculture:superium_helmet>,<mysticalagriculture:superium_chestplate>,<mysticalagriculture:superium_leggings>,<mysticalagriculture:superium_boots>],[<mysticalagriculture:supremium_helmet>.withTag({}),<mysticalagriculture:supremium_chestplate>.withTag({}),<mysticalagriculture:supremium_leggings>.withTag({}),<mysticalagriculture:supremium_boots>.withTag({})],<mysticalagriculture:crafting:37>,<mysticalagriculture:gear:9>);

# Blank Charm
recipes.remove(<mysticalagriculture:charm>);
recipes.addShaped(<mysticalagriculture:charm>, [[<mysticalagriculture:crafting:5>,<mysticalagriculture:storage:5>,<mysticalagriculture:crafting:5>],[<mysticalagriculture:storage:5>,<mysticalagriculture:ingot_storage:4>,<mysticalagriculture:storage:5>],[<mysticalagriculture:crafting:5>,<mysticalagriculture:storage:5>,<mysticalagriculture:crafting:5>]]);

function addMysticalAgricultureCharmRecipe(output as IItemStack, input_material as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[input_material,<mysticalagriculture:crafting:36>,input_material],[<mysticalagriculture:crafting:36>,<mysticalagriculture:charm>,<mysticalagriculture:crafting:36>],[input_material,<mysticalagriculture:crafting:36>,input_material]]);
}

# Charm: Night Vision
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:1>,<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision"}));

# Charm: Absoption
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:2>,<minecraft:potion>.withTag({Potion: "cofhcore:absorption4"}));

# Charm: Wither Resistance
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:3>,<draconicevolution:wyvern_core>);

# Charm: Antivenom
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:4>,<alchemistry:compound:1004>);

# Charm: Fire Resistance
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:5>,<bewitchment:fiery_unguent>);

# Charm: Resistance
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:6>,<galacticraftplanets:item_basic_asteroids:5>);

# Charm: Strength
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:7>,<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}));

# Charm: Strength II
recipes.remove(<mysticalagriculture:charm:8>);
recipes.addShaped(<mysticalagriculture:charm:8>, [[<evilcraft:bowl_of_promises:5>,<mysticalagriculture:crafting:37>,<evilcraft:bowl_of_promises:5>],[<mysticalagriculture:crafting:37>,<mysticalagriculture:charm:7>,<mysticalagriculture:crafting:37>],[<evilcraft:bowl_of_promises:5>,<mysticalagriculture:crafting:37>,<evilcraft:bowl_of_promises:5>]]);

# Charm: Speed
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:9>,<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3"}));

# Charm: Jump Boost
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:10>,<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3"}));

# Charm: Miner's Vision
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:11>,<astralsorcery:blockworldilluminator>);

# Charm: Quick Draw
addMysticalAgricultureCharmRecipe(<mysticalagriculture:charm:13>,<roots:spell_dust>.withTag({spell_storage: {s: "roots:spell_radiance"}}));

# Mystical Stick
recipes.remove(<mysticalagriculture:crafting:22>);
recipes.addShaped(<mysticalagriculture:crafting:22>, [[null,<mysticalagriculture:crafting:5>,null],[<mysticalagriculture:crafting:5>,<mekanism:polyethene:3>,<mysticalagriculture:crafting:5>],[null,<mysticalagriculture:crafting:5>,null]]);

# Mystical String
recipes.remove(<mysticalagriculture:crafting:23>);
recipes.addShaped(<mysticalagriculture:crafting:23>, [[null,<mysticalagriculture:crafting:5>,null],[<mysticalagriculture:crafting:5>,<botania:manaresource:16>,<mysticalagriculture:crafting:5>],[null,<mysticalagriculture:crafting:5>,null]]);

# Shears
recipes.remove(<mysticalagriculture:inferium_shears>);
recipes.addShaped(<mysticalagriculture:inferium_shears>, [[null,<mysticalagriculture:crafting:33>,null],[<ore:plankWood>,<mysticalagriculture:gear:0>,<mysticalagriculture:crafting:33>],[<botania:elementiumshears>,<ore:plankWood>,null]]);
recipes.remove(<mysticalagriculture:prudentium_shears>);
recipes.addShaped(<mysticalagriculture:prudentium_shears>, [[null,<mysticalagriculture:crafting:34>,null],[<ore:plankWood>,<mysticalagriculture:gear:1>,<mysticalagriculture:crafting:34>],[<mysticalagriculture:inferium_shears>,<ore:plankWood>,null]]);
recipes.remove(<mysticalagriculture:intermedium_shears>);
recipes.addShaped(<mysticalagriculture:intermedium_shears>, [[null,<mysticalagriculture:crafting:35>,null],[<ore:plankWood>,<mysticalagriculture:gear:2>,<mysticalagriculture:crafting:35>],[<mysticalagriculture:prudentium_shears>,<ore:plankWood>,null]]);
recipes.remove(<mysticalagriculture:superium_shears>);
recipes.addShaped(<mysticalagriculture:superium_shears>, [[null,<mysticalagriculture:crafting:36>,null],[<ore:plankWood>,<mysticalagriculture:gear:3>,<mysticalagriculture:crafting:36>],[<mysticalagriculture:intermedium_shears>,<ore:plankWood>,null]]);
recipes.remove(<mysticalagriculture:supremium_shears>);
recipes.addShaped(<mysticalagriculture:supremium_shears>.withTag({}), [[null,<mysticalagriculture:crafting:37>,null],[<ore:plankWood>,<mysticalagriculture:gear:4>,<mysticalagriculture:crafting:37>],[<mysticalagriculture:superium_shears>,<ore:plankWood>,null]]);

# Order: [sword, pickaxe, shovel, axe, hoe, bow, sickle, scythe, fishing rod]
function addMysticalAgricultureToolRecipes(input_tools as IItemStack[], output_tools as IItemStack[], new_ingot as IIngredient, new_core as IIngredient) {

	# Sword
	recipes.remove(output_tools[0]);
	recipes.addShaped(output_tools[0], [[new_ingot],[new_core],[input_tools[0]]]);

	# Pickaxe
	recipes.remove(output_tools[1]);
	recipes.addShaped(output_tools[1], [[new_ingot,new_core,new_ingot],[null,input_tools[1],null],[null,<mysticalagriculture:crafting:22>,null]]);

	# Shovel
	recipes.remove(output_tools[2]);
	recipes.addShaped(output_tools[2], [[new_core],[input_tools[2]],[<mysticalagriculture:crafting:22>]]);

	# Axe
	recipes.remove(output_tools[3]);
	recipes.addShapedMirrored(output_tools[3], [[new_ingot,new_ingot],[new_core,input_tools[3]],[null,<mysticalagriculture:crafting:22>]]);

	# Hoe
	recipes.remove(output_tools[4]);
	recipes.addShapedMirrored(output_tools[4], [[new_ingot,new_core],[null,input_tools[4]],[null,<mysticalagriculture:crafting:22>]]);

	# Bow
	recipes.remove(output_tools[5]);
	recipes.addShapedMirrored(output_tools[5], [[null,new_ingot,<mysticalagriculture:crafting:23>],[new_core,input_tools[5],<mysticalagriculture:crafting:23>],[null,new_ingot,<mysticalagriculture:crafting:23>]]);

	# Sickle
	recipes.remove(output_tools[6]);
	recipes.addShapedMirrored(output_tools[6], [[null,new_ingot,null],[null,null,new_core],[input_tools[6],new_ingot,null]]);

	# Scythe
	recipes.remove(output_tools[7]);
	recipes.addShapedMirrored(output_tools[7], [[new_ingot,new_core,input_tools[7]],[null,<mysticalagriculture:crafting:22>,null],[<mysticalagriculture:crafting:22>,null,null]]);

	# Fishing Rod
	recipes.remove(output_tools[8]);
	recipes.addShapedMirrored(output_tools[8], [[null,null,new_ingot],[null,new_core,<mysticalagriculture:crafting:23>],[input_tools[8],null,<mysticalagriculture:crafting:23>]]);

}

# Inferium Tools
addMysticalAgricultureToolRecipes([<botania:elementiumsword>,<botania:elementiumpick>,<botania:elementiumshovel>,<botania:elementiumaxe>,<abyssalcraft:dreadiumhoe>,<botania:crystalbow>,<thermalfoundation:tool.sickle_platinum>,<mysticalagriculture:crafting:22>,<thermalfoundation:tool.fishing_rod_platinum>],[<mysticalagriculture:inferium_sword>,<mysticalagriculture:inferium_pickaxe>,<mysticalagriculture:inferium_shovel>,<mysticalagriculture:inferium_axe>,<mysticalagriculture:inferium_hoe>,<mysticalagriculture:inferium_bow>,<mysticalagriculture:inferium_sickle>,<mysticalagriculture:inferium_scythe>,<mysticalagriculture:inferium_fishing_rod>],<mysticalagriculture:crafting:33>,<mysticalagriculture:gear>);

# Prudentium Tools
addMysticalAgricultureToolRecipes([<mysticalagriculture:inferium_sword>,<mysticalagriculture:inferium_pickaxe>,<mysticalagriculture:inferium_shovel>,<mysticalagriculture:inferium_axe>,<mysticalagriculture:inferium_hoe>,<mysticalagriculture:inferium_bow>,<mysticalagriculture:inferium_sickle>,<mysticalagriculture:inferium_scythe>,<mysticalagriculture:inferium_fishing_rod>],[<mysticalagriculture:prudentium_sword>,<mysticalagriculture:prudentium_pickaxe>,<mysticalagriculture:prudentium_shovel>,<mysticalagriculture:prudentium_axe>,<mysticalagriculture:prudentium_hoe>,<mysticalagriculture:prudentium_bow>,<mysticalagriculture:prudentium_sickle>,<mysticalagriculture:prudentium_scythe>,<mysticalagriculture:prudentium_fishing_rod>],<mysticalagriculture:crafting:34>,<mysticalagriculture:gear:1>);

# Intermedium Tools
addMysticalAgricultureToolRecipes([<mysticalagriculture:prudentium_sword>,<mysticalagriculture:prudentium_pickaxe>,<mysticalagriculture:prudentium_shovel>,<mysticalagriculture:prudentium_axe>,<mysticalagriculture:prudentium_hoe>,<mysticalagriculture:prudentium_bow>,<mysticalagriculture:prudentium_sickle>,<mysticalagriculture:prudentium_scythe>,<mysticalagriculture:prudentium_fishing_rod>],[<mysticalagriculture:intermedium_sword>,<mysticalagriculture:intermedium_pickaxe>,<mysticalagriculture:intermedium_shovel>,<mysticalagriculture:intermedium_axe>,<mysticalagriculture:intermedium_hoe>,<mysticalagriculture:intermedium_bow>,<mysticalagriculture:intermedium_sickle>,<mysticalagriculture:intermedium_scythe>,<mysticalagriculture:intermedium_fishing_rod>],<mysticalagriculture:crafting:35>,<mysticalagriculture:gear:2>);

# Superium Tools
addMysticalAgricultureToolRecipes([<mysticalagriculture:intermedium_sword>,<mysticalagriculture:intermedium_pickaxe>,<mysticalagriculture:intermedium_shovel>,<mysticalagriculture:intermedium_axe>,<mysticalagriculture:intermedium_hoe>,<mysticalagriculture:intermedium_bow>,<mysticalagriculture:intermedium_sickle>,<mysticalagriculture:intermedium_scythe>,<mysticalagriculture:intermedium_fishing_rod>],[<mysticalagriculture:superium_sword>,<mysticalagriculture:superium_pickaxe>,<mysticalagriculture:superium_shovel>,<mysticalagriculture:superium_axe>,<mysticalagriculture:superium_hoe>,<mysticalagriculture:superium_bow>,<mysticalagriculture:superium_sickle>,<mysticalagriculture:superium_scythe>,<mysticalagriculture:superium_fishing_rod>],<mysticalagriculture:crafting:36>,<mysticalagriculture:gear:3>);

# Supremium Tools
recipes.remove(<mysticalagriculture:supremium_sword>);
recipes.remove(<mysticalagriculture:supremium_pickaxe>);
recipes.remove(<mysticalagriculture:supremium_shovel>);
recipes.remove(<mysticalagriculture:supremium_axe>);
recipes.remove(<mysticalagriculture:supremium_hoe>);
recipes.remove(<mysticalagriculture:supremium_bow>);
recipes.remove(<mysticalagriculture:supremium_sickle>);
recipes.remove(<mysticalagriculture:supremium_scythe>);
addMysticalAgricultureToolRecipes([<mysticalagriculture:superium_sword>,<mysticalagriculture:superium_pickaxe>,<mysticalagriculture:superium_shovel>,<mysticalagriculture:superium_axe>,<mysticalagriculture:superium_hoe>,<mysticalagriculture:superium_bow>,<mysticalagriculture:superium_sickle>,<mysticalagriculture:superium_scythe>,<mysticalagriculture:superium_fishing_rod>],[<mysticalagriculture:supremium_sword>.withTag({}),<mysticalagriculture:supremium_pickaxe>.withTag({}),<mysticalagriculture:supremium_shovel>.withTag({}),<mysticalagriculture:supremium_axe>.withTag({}),<mysticalagriculture:supremium_hoe>.withTag({}),<mysticalagriculture:supremium_bow>.withTag({}),<mysticalagriculture:supremium_sickle>.withTag({}),<mysticalagriculture:supremium_scythe>.withTag({}),<mysticalagriculture:supremium_fishing_rod>],<mysticalagriculture:crafting:37>,<mysticalagriculture:gear:4>);

function addMysticalAgricultureTinkeringTableRecipe(input as IItemStack, output as IItemStack, input_material as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[<mysticalagriculture:soulstone>,<mysticalagriculture:soulstone>,<mysticalagriculture:soulstone>],[input_material,input,input_material],[input_material,null,input_material]]);
}

# Tinkering Table (Inferium)
addMysticalAgricultureTinkeringTableRecipe(<enderutilities:machine_1:2>,<mysticalagriculture:tinkering_table>,<mysticalagriculture:crafting:33>);

# Tinkering Table (Prudentium)
addMysticalAgricultureTinkeringTableRecipe(<mysticalagriculture:tinkering_table>,<mysticalagriculture:tinkering_table:1>,<mysticalagriculture:crafting:34>);

# Tinkering Table (Intermedium)
addMysticalAgricultureTinkeringTableRecipe(<mysticalagriculture:tinkering_table:1>,<mysticalagriculture:tinkering_table:2>,<mysticalagriculture:crafting:35>);

# Tinkering Table (Superium)
addMysticalAgricultureTinkeringTableRecipe(<mysticalagriculture:tinkering_table:2>,<mysticalagriculture:tinkering_table:3>,<mysticalagriculture:crafting:36>);

# Tinkering Table (Supremium)
addMysticalAgricultureTinkeringTableRecipe(<mysticalagriculture:tinkering_table:3>,<mysticalagriculture:tinkering_table:4>,<mysticalagriculture:crafting:37>);

# Tinkering Table (Insanium)
addMysticalAgricultureTinkeringTableRecipe(<mysticalagriculture:tinkering_table:4>,<mysticalagradditions:tinkering_table>,<mysticalagradditions:insanium:2>);

# Tungsten Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_tungsten_seeds.json

# Uranium Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_uranium_seeds.json

# Chrome Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_chrome_seeds.json

# Chrome Essence into Chromium
recipes.addShaped(<alchemistry:ingot:24> * 3, [[<mysticalagriculture:chrome_essence>,<mysticalagriculture:chrome_essence>,<mysticalagriculture:chrome_essence>],[<mysticalagriculture:chrome_essence>,null,<mysticalagriculture:chrome_essence>],[<mysticalagriculture:chrome_essence>,<mysticalagriculture:chrome_essence>,<mysticalagriculture:chrome_essence>]]);

# Ruby Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_ruby_seeds.json

# Sapphire Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_sapphire_seeds.json

# Peridot Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_peridot_seeds.json

# Thorium Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_thorium_seeds.json

# Boron Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_boron_seeds.json

# Magnesium Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_magnesium_seeds.json

# Rock Crystal Seeds
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriculture_rock_crystal_seeds.json

# Ores from Essence
function addMysticalAgricultureEssenceToOreRecipe(ore as IItemStack, essence as IItemStack, amount as int) {
	recipes.addShaped(ore * amount, [[essence,essence,essence],[essence,<ore:stone>,essence],[essence,essence,essence]]);
}
addMysticalAgricultureEssenceToOreRecipe(<minecraft:iron_ore>,<mysticalagriculture:iron_essence>,2);
addMysticalAgricultureEssenceToOreRecipe(<minecraft:coal_ore>,<mysticalagriculture:coal_essence>,3);
addMysticalAgricultureEssenceToOreRecipe(<minecraft:gold_ore>,<mysticalagriculture:gold_essence>,1);
addMysticalAgricultureEssenceToOreRecipe(<minecraft:redstone_ore>,<mysticalagriculture:redstone_essence>,1);
addMysticalAgricultureEssenceToOreRecipe(<minecraft:lapis_ore>,<mysticalagriculture:lapis_lazuli_essence>,1);
addMysticalAgricultureEssenceToOreRecipe(<minecraft:diamond_ore>,<mysticalagriculture:diamond_essence>,1);
addMysticalAgricultureEssenceToOreRecipe(<minecraft:emerald_ore>,<mysticalagriculture:emerald_essence>,1);
addMysticalAgricultureEssenceToOreRecipe(<thermalfoundation:ore:1>,<mysticalagriculture:tin_essence>,1);
addMysticalAgricultureEssenceToOreRecipe(<thermalfoundation:ore>,<mysticalagriculture:copper_essence>,2);
addMysticalAgricultureEssenceToOreRecipe(<thermalfoundation:ore:2>,<mysticalagriculture:silver_essence>,1);
addMysticalAgricultureEssenceToOreRecipe(<thermalfoundation:ore:3>,<mysticalagriculture:lead_essence>,1);
addMysticalAgricultureEssenceToOreRecipe(<thermalfoundation:ore:4>,<mysticalagriculture:aluminum_essence>,2);
addMysticalAgricultureEssenceToOreRecipe(<thermalfoundation:ore:5>,<mysticalagriculture:nickel_essence>,1);

print("ENDING MysticalAgriculture.zs");
