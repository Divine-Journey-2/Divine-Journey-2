# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.bloodmagic.TartaricForge;
import mods.thermalexpansion.Transposer;

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





print("ENDING MysticalAgriculture.zs");