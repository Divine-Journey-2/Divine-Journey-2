# Author: Atricos

import mods.roots.Pyre;
import mods.roots.Mortar;
import mods.roots.Fey;
import mods.roots.Ritual;
import crafttweaker.formatting.IFormattedText;

print("STARTING Roots.zs");

# Root of the Fallen
recipes.addShapeless(<contenttweaker:root_of_the_fallen>, [<totemic:baykok_bow>.anyDamage().transformDamage(1),<roots:wildroot>]);

# Pyre
recipes.remove(<roots:bonfire>);
recipes.addShaped(<roots:bonfire>, [[null,<ore:rootsBark>,null],[<ore:rootsBark>,<contenttweaker:root_of_the_fallen>,<ore:rootsBark>],[<contenttweaker:baykoks_bloodied_stone>,<roots:terra_moss>,<contenttweaker:baykoks_bloodied_stone>]]);

# Charred Stone
Pyre.addRecipe("charred_stone", <contenttweaker:charred_stone> * 3, [<ore:stone>,<ore:stone>,<ore:stone>,<roots:terra_moss>,<ore:rootsBark>]);

# Mortar
recipes.remove(<roots:mortar>);
recipes.addShaped(<roots:mortar>, [[<contenttweaker:charred_stone>,null,<contenttweaker:charred_stone>],[<contenttweaker:charred_stone>,<minecraft:paper>,<contenttweaker:charred_stone>],[null,<contenttweaker:charred_stone>,null]]);

# Pestle
recipes.remove(<roots:pestle>);
recipes.addShaped(<roots:pestle>, [[null,null,<contenttweaker:charred_stone>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,null],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,null]]);
recipes.addShaped(<roots:pestle>, [[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,null],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,null],[null,null,<contenttweaker:charred_stone>]]);

# Imbuer
recipes.remove(<roots:imbuer>);
recipes.addShaped(<roots:imbuer>, [[<ore:ingotBronze>,null,<ore:ingotBronze>],[<ore:ingotBronze>,<roots:terra_moss>,<ore:ingotBronze>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,<contenttweaker:charred_stone>]]);

# Staff
recipes.remove(<roots:staff>);
recipes.addShaped(<roots:staff>, [[null,<ore:blockAmethyst>,<contenttweaker:root_of_the_fallen>],[null,<ore:blockOpal>,<ore:blockGarnet>],[<totemic:eagle_bone_whistle>,null,null]]);

# Component Pouch
recipes.remove(<roots:component_pouch>);
recipes.addShaped(<roots:component_pouch>, [[<contenttweaker:charred_stone>,<ore:string>,<contenttweaker:charred_stone>],[<totemic:buffalo_items>,<minecraft:gold_nugget>,<totemic:buffalo_items>],[<totemic:buffalo_items>,<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}),<totemic:buffalo_items>]]);
<roots:component_pouch>.addTooltip(format.darkRed(format.italic("Crafting this requires a non-upgraded Basic Backpack.")));
<roots:component_pouch>.addTooltip(format.bold(format.red("WARNING: ") + format.gray("Crafting this item will wipe the input bag's inventory!")));

# Grove Supplication Spell Dust
Mortar.changeSpell("spell_supplication", [<minecraft:mossy_cobblestone>,<totemic:cedar_sapling>,<totemic:eagle_drops:1>,<contenttweaker:root_of_the_fallen>,<roots:petals>]);

# Dewgonia
Pyre.removeRecipe(<roots:dewgonia>);
Pyre.addRecipe("dewgonia", <roots:dewgonia>*3, [<minecraft:waterlily>, <roots:terra_moss>, <quark:sugar_block>, <minecraft:lapis_block>, <roots:petals>]);

# Grove Stone
recipes.remove(<roots:grove_stone>);
recipes.addShaped(<roots:grove_stone>, [[null,<contenttweaker:charred_stone>,null],[<totemic:eagle_drops>,<contenttweaker:charred_stone>,<totemic:buffalo_items:1>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,<contenttweaker:charred_stone>]]);
recipes.addShaped(<roots:grove_stone>, [[null,<contenttweaker:charred_stone>,null],[<totemic:buffalo_items:1>,<contenttweaker:charred_stone>,<totemic:eagle_drops>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,<contenttweaker:charred_stone>]]);

# Fey Crafter
recipes.remove(<roots:fey_crafter>);
recipes.addShaped(<roots:fey_crafter>, [[<ore:treeSapling>,null,<ore:treeSapling>],[<ore:blockAmethyst>,<roots:petals>,<ore:blockAmethyst>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,<contenttweaker:charred_stone>]]);

# Elemental Soil
Fey.removeRecipe(<roots:elemental_soil>);
Fey.addRecipe("elemental_soil", <roots:elemental_soil>*4, [<extrautils2:compresseddirt>, <ore:compressed1xGravel>, <minecraft:bone_block>, <roots:petals>, <roots:terra_moss>]);

# Runestone
Fey.removeRecipe(<roots:runestone>);
Fey.addRecipe("runestone", <roots:runestone>*3, [<contenttweaker:charred_stone>, <contenttweaker:charred_stone>, <contenttweaker:charred_stone>, <ore:gemAmethyst>, <minecraft:dye:4>]);

# Cloud Berry
Pyre.removeRecipe(<roots:cloud_berry>);
Pyre.addRecipe("cloud_berry", <roots:cloud_berry>, [<roots:dewgonia>, <minecraft:red_flower:1>, <ore:wool>, <ore:treeLeaves>, <minecraft:tallgrass:1>]);

# Pereskia
Pyre.removeRecipe(<roots:pereskia>);
Pyre.addRecipe("pereskia", <roots:pereskia>, [<roots:dewgonia>, <minecraft:double_plant:1>, <minecraft:beetroot>, <minecraft:speckled_melon>, <ore:dyeMagenta>]);

# Baffle Cap
Pyre.removeRecipe(<roots:baffle_cap_mushroom>);
Pyre.addRecipe("baffle_cap", <roots:baffle_cap_mushroom>, [<roots:pereskia>, <minecraft:red_mushroom>, <minecraft:brown_mushroom>, <betternether:lucis_spore>, <betternether:orange_mushroom>]);

# Infernal Bulb
Pyre.removeRecipe(<roots:infernal_bulb>);
Pyre.addRecipe("infernal_bulb", <roots:infernal_bulb>, [<roots:baffle_cap_mushroom>, <minecraft:lava_bucket>, <minecraft:magma_cream>, <betternether:magma_flower>, <betternether:agave>]);

# Moonglow Leaf
Pyre.removeRecipe(<roots:moonglow_leaf>);
Pyre.addRecipe("moonglow_leaf", <roots:moonglow_leaf>, [<roots:cloud_berry>, <minecraft:quartz_block>, <minecraft:glowstone>, <roots:bark_birch>, <betternether:nether_reed>]);

# Runic Shears
Fey.removeRecipe(<roots:runic_shears>);
Fey.addRecipe("runic_shears", <roots:runic_shears>, [<minecraft:shears>, <roots:runestone>, <roots:runestone>, <roots:pereskia>, <contenttweaker:compressed_obsidian1>]);

# Stalicripe
Pyre.removeRecipe(<roots:stalicripe>);
Pyre.addRecipe("stalicripe", <roots:stalicripe>, [<roots:infernal_bulb>, <roots:wildewheet>, <roots:wildwood_log>, <roots:runestone>, <betternether:stalagnate_stem>]);

# Fey Leather
<ore:leather>.remove(<roots:fey_leather>);

# Sylvan Armor
Fey.removeRecipe(<roots:sylvan_helmet>);
Fey.addRecipe("sylvan_helmet", <roots:sylvan_helmet>, [<thermalfoundation:armor.helmet_steel>, <roots:fey_leather>, <contenttweaker:treated_leather>, <roots:bark_birch>, <ore:gemAmethyst>]);
Fey.removeRecipe(<roots:sylvan_chestplate>);
Fey.addRecipe("sylvan_chestplate", <roots:sylvan_chestplate>, [<thermalfoundation:armor.plate_steel>, <roots:fey_leather>, <contenttweaker:treated_leather>, <roots:bark_birch>, <ore:gemAmethyst>]);
Fey.removeRecipe(<roots:sylvan_chestplate>);
Fey.addRecipe("sylvan_chestplate", <roots:sylvan_chestplate>, [<thermalfoundation:armor.plate_steel>, <roots:fey_leather>, <contenttweaker:treated_leather>, <roots:bark_birch>, <ore:gemAmethyst>]);
Fey.removeRecipe(<roots:sylvan_leggings>);
Fey.addRecipe("sylvan_leggings", <roots:sylvan_leggings>, [<thermalfoundation:armor.legs_steel>, <roots:fey_leather>, <contenttweaker:treated_leather>, <roots:bark_birch>, <ore:gemAmethyst>]);
Fey.removeRecipe(<roots:sylvan_boots>);
Fey.addRecipe("sylvan_boots", <roots:sylvan_boots>, [<thermalfoundation:armor.boots_steel>, <roots:fey_leather>, <contenttweaker:treated_leather>, <roots:bark_birch>, <ore:gemAmethyst>]);

# Wildwood Armor
Fey.removeRecipe(<roots:wildwood_helmet>);
Fey.addRecipe("wildwood_helmet", <roots:wildwood_helmet>, [<roots:sylvan_helmet>, <roots:wildwood_log>, <roots:bark_wildwood>, <minecraft:diamond>, <mysticalworld:antlers>]);
Fey.removeRecipe(<roots:wildwood_chestplate>);
Fey.addRecipe("wildwood_chestplate", <roots:wildwood_chestplate>, [<roots:sylvan_chestplate>, <roots:wildwood_log>, <roots:bark_wildwood>, <minecraft:diamond>, <mysticalworld:pelt>]);
Fey.removeRecipe(<roots:wildwood_leggings>);
Fey.addRecipe("wildwood_leggings", <roots:wildwood_leggings>, [<roots:sylvan_leggings>, <roots:wildwood_log>, <roots:bark_wildwood>, <minecraft:diamond>, <mysticalworld:carapace>]);
Fey.removeRecipe(<roots:wildwood_boots>);
Fey.addRecipe("wildwood_boots", <roots:wildwood_boots>, [<roots:sylvan_boots>, <roots:wildwood_log>, <roots:bark_wildwood>, <minecraft:diamond>, <mysticalworld:cooked_squid>]);

# Living and Wildwood Toools & Weapons
Fey.removeRecipe(<roots:living_sword>);
Fey.addRecipe("living_sword", <roots:living_sword>, [<immersiveengineering:sword_steel>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
Fey.removeRecipe(<roots:wildwood_bow>);
Fey.addRecipe("wildwood_bow", <roots:wildwood_bow>, [<minecraft:bow>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
Fey.removeRecipe(<roots:living_arrow>);
Fey.addRecipe("living_arrow", <roots:living_arrow> * 6, [<minecraft:arrow>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
Fey.removeRecipe(<roots:wildwood_quiver>);
Fey.addRecipe("wildwood_quiver", <roots:wildwood_quiver>, [<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}), <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
<roots:wildwood_quiver>.addTooltip(format.darkRed(format.italic("Crafting this requires a Basic Backpack you've just crafted.")));
Fey.removeRecipe(<roots:living_pickaxe>);
Fey.addRecipe("living_pickaxe", <roots:living_pickaxe>, [<immersiveengineering:pickaxe_steel>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
Fey.removeRecipe(<roots:living_shovel>);
Fey.addRecipe("living_shovel", <roots:living_shovel>, [<immersiveengineering:shovel_steel>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
Fey.removeRecipe(<roots:living_axe>);
Fey.addRecipe("living_axe", <roots:living_axe>, [<immersiveengineering:axe_steel>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
Fey.removeRecipe(<roots:living_hoe>);
Fey.addRecipe("living_hoe", <roots:living_hoe>, [<immersiveengineering:hoe_steel>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);

# Sure-Footed Stone
recipes.remove(<roots:runestone_trample>);
recipes.addShaped(<roots:runestone_trample>, [[<roots:chiseled_runestone>,<roots:terra_moss>,<roots:chiseled_runestone>],[<roots:terra_moss>,<roots:dewgonia>,<roots:terra_moss>],[<roots:chiseled_runestone>,<roots:terra_moss>,<roots:chiseled_runestone>]]);

# Unending Bowl
Fey.removeRecipe(<roots:unending_bowl>);
Fey.addRecipe("unending_bowl", <roots:unending_bowl>, [<enderio:block_reservoir>,<enderio:block_reservoir>,<enderio:block_reservoir>,<enderio:item_alloy_ingot:6>,<enderio:block_reservoir>]);
recipes.addShaped(<roots:unending_bowl>, [[<enderio:block_reservoir>,<enderio:block_reservoir>,<enderio:block_reservoir>],[<enderio:item_alloy_ingot:6>,<enderio:block_reservoir>,<enderio:item_alloy_ingot:6>]]);

# Apothecary Pouch
Fey.removeRecipe(<roots:apothecary_pouch>);
Fey.addRecipe("apothecary_pouch", <roots:apothecary_pouch>, [<roots:component_pouch>, <roots:stalicripe>, <roots:moonglow_leaf>, <roots:spirit_herb>, <minecraft:gold_block>]);
<roots:apothecary_pouch>.addTooltip(format.bold(format.red("WARNING: ") + format.gray("Crafting this item will wipe the input bag's inventory!")));

# Spell Dusts
Mortar.changeSpell("spell_life_drain", [<minecraft:diamond_sword>, <roots:moonglow_leaf>, <roots:baffle_cap_mushroom>, <natura:nether_thorn_vines>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_wild_fire", [<minecraft:diamond_sword>, <minecraft:tnt>, <roots:infernal_bulb>, <roots:stalicripe>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_magnetism", [<minecraft:iron_block>, <mysticalworld:aubergine>, <roots:cloud_berry>, <roots:wildewheet>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_shatter", [<minecraft:diamond_pickaxe>, <minecraft:tnt>, <roots:runestone>, <roots:stalicripe>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_rampant_growth", [<roots:spirit_herb>, <roots:pereskia>, <minecraft:golden_apple>, <minecraft:bone_block>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_sanctuary", [<minecraft:armor_stand>, <roots:moonglow_leaf>, <betternether:barrel_cactus>, <minecraft:piston>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_second_wind", [<roots:dewgonia>, <minecraft:glass_bottle>, <roots:cloud_berry>, <roots:spirit_herb>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_sky_soarer", [<roots:cloud_berry>, <betternether:bone_mushroom>, <roots:living_arrow>, <ore:blockSlime>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_sense_animals", [<minecraft:lead>, <roots:baffle_cap_mushroom>, <minecraft:porkchop>, <minecraft:beef>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_dandelion_winds", [<minecraft:yellow_flower>, <roots:cloud_berry>, <roots:runic_dust>, <minecraft:piston>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_growth_infusion", [<roots:spirit_herb>, <ore:treeSapling>, <minecraft:dye:15>, <minecraft:golden_hoe>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_harvest", [<roots:wildewheet>, <betternether:nether_cactus>, <minecraft:diamond_hoe>, <minecraft:water_bucket>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_petal_shell", [<roots:petals>, <spartanshields:shield_riot_enderio>.withTag({Energy: 1000000}), <roots:spirit_herb>, <natura:nether_thorn_vines>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_radiance", [<minecraft:glowstone>, <roots:stalicripe>, <roots:cloud_berry>, <betternether:black_apple>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_time_stop", [<minecraft:clock>.withTag({"quark:clock_calculated": 1 as byte}), <actuallyadditions:block_misc:6>, <roots:moonglow_leaf>, <minecraft:splash_potion>.withTag({Potion: "minecraft:long_slowness"}), <ore:blockAmethyst>]);
Mortar.changeSpell("spell_sense_danger", [<minecraft:compass>.withTag({"quark:compass_calculated": 1 as byte, "quark:compass_in_nether": 0 as byte}), <betternether:black_apple>, <thaumcraft:flesh_block>, <roots:stalicripe>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_radiance", [<minecraft:glowstone>, <roots:stalicripe>, <roots:cloud_berry>, <betternether:black_apple>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_geas", [<spartanshields:shield_tower_gold>, <minecraft:web>, <minecraft:lead>, <roots:baffle_cap_mushroom>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_iced_touch", [<minecraft:ice>, <minecraft:snow>, <roots:dewgonia>, <roots:moonglow_leaf>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_rose_thorns", [<minecraft:double_plant:4>, <minecraft:cactus>, <minecraft:iron_trapdoor>, <roots:stalicripe>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_acid_cloud", [<spartanshields:shield_tower_invar>, <roots:baffle_cap_mushroom>, <betternether:egg_plant>, <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_poison"}), <ore:blockAmethyst>]);
Mortar.changeSpell("spell_light_drifter", [<simplyjetpacks:itemjetpack:18>, <roots:cloud_berry>, <roots:wildewheet>, <actuallyadditions:block_misc:6>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_fey_light", [<minecraft:glowstone>, <roots:cloud_berry>, <betternether:eye_seed>, <minecraft:double_plant>, <ore:blockAmethyst>]);

# Rituals
Ritual.modifyRitual("ritual_healing_aura", [<roots:spirit_herb>, <minecraft:sapling:2>, <roots:bark_birch>, <minecraft:splash_potion>.withTag({Potion: "minecraft:regeneration"}), <roots:terra_moss>]);
Ritual.modifyRitual("ritual_heavy_storms", [<roots:dewgonia>, <roots:cloud_berry>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:vine>, <minecraft:melon>]);
Ritual.modifyRitual("ritual_divine_protection", [<roots:cloud_berry>, <roots:pereskia>, <minecraft:glowstone>, <minecraft:double_plant>, <minecraft:flint_and_steel>]);
Ritual.modifyRitual("ritual_fire_storm", [<roots:infernal_bulb>, <minecraft:coal_block>, <minecraft:blaze_powder>, <minecraft:double_plant>, <minecraft:flint_and_steel>]);
Ritual.modifyRitual("ritual_spreading_forest", [<roots:spirit_herb>, <ore:treeSapling>, <roots:terra_moss>, <minecraft:dye:15>, <roots:wildewheet>]);
Ritual.modifyRitual("ritual_windwall", [<roots:moonglow_leaf>, <roots:cloud_berry>, <minecraft:glass_bottle>, <ore:feather>, <ore:wool>]);
Ritual.modifyRitual("ritual_warding_protection", [<minecraft:speckled_melon>, <roots:stalicripe>, <minecraft:iron_chestplate>, <spartanshields:shield_basic_stone>, <minecraft:tripwire_hook>]);
Ritual.modifyRitual("ritual_germination", [<roots:spirit_herb>, <roots:wildewheet>, <roots:dewgonia>, <minecraft:dye:15>, <minecraft:double_plant>]);
Ritual.modifyRitual("ritual_purity", [<roots:baffle_cap_mushroom>, <mysticalworld:aubergine>, <roots:pereskia>, <minecraft:snowball>, <minecraft:milk_bucket>]);
Ritual.modifyRitual("ritual_frost_lands", [<roots:dewgonia>, <minecraft:snowball>, <minecraft:snow>, <minecraft:ice>, <roots:moonglow_leaf>]);
Ritual.modifyRitual("ritual_animal_harvest", [<roots:wildewheet>, <minecraft:shears>, <roots:wildroot>, <ore:wool>, <minecraft:wheat_seeds>]);
Ritual.modifyRitual("ritual_summon_creatures", [<roots:stalicripe>, <minecraft:egg>, <minecraft:rotten_flesh>, <roots:wildroot>, <roots:wildewheet>]);
Ritual.modifyRitual("ritual_wild_growth", [<roots:spirit_herb>, <roots:wildroot>, <roots:dewgonia>, <roots:bark_dark_oak>, <minecraft:dye:15>]);
Ritual.modifyRitual("ritual_overgrowth", [<roots:dewgonia>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <roots:terra_moss>, <minecraft:tallgrass:1>, <ore:rootsBark>]);
Ritual.modifyRitual("ritual_flower_growth", [<roots:petals>, <roots:pereskia>, <minecraft:dye:15>, <roots:terra_moss>, <minecraft:tallgrass:1>]);
Ritual.modifyRitual("ritual_transmutation", [<roots:moonglow_leaf>, <roots:fey_leather>, <roots:living_arrow>, <ore:gemAmethyst>, <roots:chiseled_runestone>]);
Ritual.modifyRitual("ritual_gathering", [<roots:wildewheet>, <roots:cloud_berry>, <minecraft:redstone>, <minecraft:wooden_hoe>, <minecraft:bowl>]);

# Artificial Scarab Wings
Fey.addRecipe("artificial_scarab_wings", <contenttweaker:artificial_scarab_wings>, [<roots:moonglow_leaf>,<roots:wildewheet>,<roots:stalicripe>,<roots:fey_leather>,<roots:spirit_herb>]);

# UB Gravel -> Flint in the Mortar
Mortar.removeRecipe(<minecraft:flint>);
Mortar.removeRecipe(<minecraft:flint> * 2);
Mortar.removeRecipe(<minecraft:flint> * 3);
Mortar.removeRecipe(<minecraft:flint> * 4);
Mortar.removeRecipe(<minecraft:flint> * 5);
Mortar.addRecipe(<minecraft:flint>, [<ore:gravel>,null,null,null,null]);
Mortar.addRecipe(<minecraft:flint> * 2, [<ore:gravel>,<ore:gravel>,null,null,null]);
Mortar.addRecipe(<minecraft:flint> * 3, [<ore:gravel>,<ore:gravel>,<ore:gravel>,null,null]);
Mortar.addRecipe(<minecraft:flint> * 4, [<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>,null]);
Mortar.addRecipe(<minecraft:flint> * 5, [<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);

# Creative Component Pouch
recipes.addShaped(<roots:creative_pouch>, [[<contenttweaker:beginners_singularity>,<roots:component_pouch>,<contenttweaker:beginners_singularity>],[<roots:component_pouch>,<storagedrawers:upgrade_creative>,<roots:component_pouch>],[<contenttweaker:beginners_singularity>,<roots:component_pouch>,<contenttweaker:beginners_singularity>]]);

print("ENDING Roots.zs");