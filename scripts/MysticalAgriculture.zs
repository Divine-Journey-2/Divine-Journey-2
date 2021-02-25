# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.bloodmagic.TartaricForge;
import mods.thermalexpansion.Transposer;
import mods.botania.RuneAltar;

print("STARTING MysticalAgriculture.zs");

# Base Crafting Seed
recipes.remove(<mysticalagriculture:crafting:16>);
mods.extendedcrafting.EnderCrafting.addShaped(<mysticalagriculture:crafting:16>, [[<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>], [<mysticalagriculture:crafting:5>,<minecraft:wheat_seeds>,<mysticalagriculture:crafting:5>], [<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>]]);

# Tier 1 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:17>);
mods.extendedcrafting.EnderCrafting.addShaped(<mysticalagriculture:crafting:17>, [[<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>], [<mysticalagriculture:crafting>,<mysticalagriculture:crafting:16>,<mysticalagriculture:crafting>], [<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>]]);

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

# Water Seeds
recipes.remove(<mysticalagriculture:water_seeds>);
mods.thermalexpansion.Transposer.addFillRecipe(<mysticalagriculture:water_seeds>, <mysticalagriculture:ice_seeds>, <liquid:water> * 10000, 8000);

# Tier 2 Crafting Seed
recipes.remove(<mysticalagriculture:crafting:18>);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:crafting:18>, [<mysticalagriculture:crafting:17>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>], 30000);

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

# Obsidian Seeds
addTier2MysticalAgricultureSeed(<mysticalagriculture:obsidian_seeds>,<contenttweaker:compressed_obsidian2>);

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




print("ENDING MysticalAgriculture.zs");