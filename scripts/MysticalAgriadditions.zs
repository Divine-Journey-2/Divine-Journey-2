# Author: Atricos
print("STARTING MysticalAgriadditions.zs");

# Dragon Egg Seeds
recipes.remove(<mysticalagradditions:dragon_egg_seeds>);
# recipes in config/modularmachinery/recipes/laser_focus_mysticalagriculture_dragon_egg_seeds.json

# Dragon Egg Crux
recipes.remove(<mysticalagradditions:special:1>);
# recipe in config/modularmachinery/recipes/laser_focus_mysticalagriadditions_dragon_egg_crux.json

# Insaium Ingot
recipes.remove(<mysticalagradditions:insanium:2>);
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriadditions_insanium_ingot.json

# Tier 6 Crafting Seed
recipes.remove(<mysticalagradditions:insanium:1>);
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriadditions_tier_6_crafting_seed.json

# Tier 6 Mob Chunk
recipes.remove(<mysticalagradditions:insanium:4>);

# Inferium Seeds (Tier 6)
recipes.remove(<mysticalagradditions:tier6_inferium_seeds>);
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriadditions_inferium_seeds_tier_6.json

# Nether Star Seeds
recipes.remove(<mysticalagradditions:nether_star_seeds>);
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriadditions_nether_star_seeds.json

# Nether Star Crux
recipes.remove(<mysticalagradditions:special>);
recipes.addShaped(<mysticalagradditions:special>, [[<contenttweaker:compressed_perfectium_block>,<extendedcrafting:storage:2>,<contenttweaker:compressed_perfectium_block>],[<extendedcrafting:storage:2>,<mysticalagradditions:storage:1>,<extendedcrafting:storage:2>],[<contenttweaker:compressed_perfectium_block>,<extendedcrafting:storage:2>,<contenttweaker:compressed_perfectium_block>]]);

# Awakened Draconium Seeds
recipes.remove(<mysticalagradditions:awakened_draconium_seeds>);
# recipe in config/modularmachinery/recipes/weak_fusion_plant_mysticalagriadditions_awakened_draconium_seeds.json

# Awakened Draconium Crux
recipes.remove(<mysticalagradditions:special:4>);
recipes.addShaped(<mysticalagradditions:special:4>, [[<draconicevolution:draconic_block>,<draconicevolution:dragon_heart>,<draconicevolution:draconic_block>],[<draconicevolution:dragon_heart>,<contenttweaker:corrupted_dragon_token>,<draconicevolution:dragon_heart>],[<draconicevolution:draconic_block>,<draconicevolution:dragon_heart>,<draconicevolution:draconic_block>]]);


print("ENDING MysticalAgriadditions.zs");