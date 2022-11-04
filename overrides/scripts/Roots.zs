# Author: Atricos

import mods.roots.Pyre;
import mods.roots.Mortar;
import mods.roots.Fey;
import mods.roots.Rituals;
import mods.roots.RunicShears;
import mods.roots.SummonCreatures;
import mods.roots.Modifiers;
import crafttweaker.formatting.IFormattedText;

print("STARTING Roots.zs");

# Root of the Fallen
recipes.addShapeless(<contenttweaker:root_of_the_fallen>, [<totemic:baykok_bow>.anyDamage().transformDamage(1),<roots:wildroot>]);

# Pyre
recipes.remove(<roots:pyre>);
recipes.addShaped("pyre", <roots:pyre>, [[null,<ore:rootsBark>,null],[<ore:rootsBark>,<contenttweaker:root_of_the_fallen>,<ore:rootsBark>],[<contenttweaker:baykoks_bloodied_stone>,<roots:terra_moss>,<contenttweaker:baykoks_bloodied_stone>]]);

# Charred Stone
Pyre.addRecipe("charred_stone", <contenttweaker:charred_stone> * 3, [<ore:stone>,<ore:stone>,<ore:stone>,<roots:terra_moss>,<ore:rootsBark>]);

# Mortar
recipes.remove(<roots:mortar>);
recipes.addShaped("mortar", <roots:mortar>, [[<contenttweaker:charred_stone>,null,<contenttweaker:charred_stone>],[<contenttweaker:charred_stone>,<minecraft:paper>,<contenttweaker:charred_stone>],[null,<contenttweaker:charred_stone>,null]]);

# Pestle
recipes.remove(<roots:pestle>);
recipes.addShaped("pestle", <roots:pestle>, [[null,null,<contenttweaker:charred_stone>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,null],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,null]]);
recipes.addShaped(<roots:pestle>, [[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,null],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,null],[null,null,<contenttweaker:charred_stone>]]);

# Imbuer
recipes.remove(<roots:imbuer>);
recipes.addShaped("imbuer", <roots:imbuer>, [[<ore:ingotBronze>,null,<ore:ingotBronze>],[<ore:ingotBronze>,<roots:terra_moss>,<ore:ingotBronze>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,<contenttweaker:charred_stone>]]);

# Imposer
recipes.remove(<roots:imposer>);
recipes.addShaped("imposer", <roots:imposer>, [[<ore:ingotBronze>,null,<ore:ingotBronze>],[null,<roots:imbuer>,null],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,<contenttweaker:charred_stone>]]);

# Staff
recipes.remove(<roots:staff>);
recipes.addShaped("staff", <roots:staff>, [[null,<ore:blockAmethyst>,<contenttweaker:root_of_the_fallen>],[null,<ore:blockOpal>,<ore:blockGarnet>],[<totemic:eagle_bone_whistle>,null,null]]);

# Gramary of the Forest
recipes.remove(<roots:gramary>);
recipes.addShaped("gramary", <roots:gramary>, [[<ore:rootsBark>,<roots:terra_moss>,<ore:rootsBark>],[<ore:rootsBark>,<minecraft:emerald>,<ore:rootsBark>],[<ore:rootsBark>,<roots:terra_moss>,<ore:rootsBark>]]);

# Herb Pouch
recipes.remove(<roots:herb_pouch>);
recipes.addShaped("herb_pouch", <roots:herb_pouch>.withTag({}), [[<contenttweaker:charred_stone>,<ore:string>,<contenttweaker:charred_stone>],[<totemic:buffalo_items>,null,<totemic:buffalo_items>],[<totemic:buffalo_items>,<totemic:buffalo_items>,<totemic:buffalo_items>]]);
<roots:herb_pouch>.addTooltip(format.bold(format.red("WARNING: ") + format.gray("Crafting this item will wipe the input bag's inventory!")));

# Apothecary Pouch
Fey.removeRecipe(<roots:component_pouch>);
Fey.addRecipe("component_pouch", <roots:component_pouch>, [<roots:herb_pouch>, <ore:rootsBark>, <roots:wildroot>, <roots:spirit_herb>, <minecraft:gold_nugget>]);
<roots:component_pouch>.addTooltip(format.bold(format.red("WARNING: ") + format.gray("Crafting this item will wipe the input bag's inventory!")));

# Fey Leather Pouch
<roots:fey_pouch>.addTooltip(format.bold(format.red("WARNING: ") + format.gray("Crafting this item will wipe the input bag's inventory!")));

# Apothecary Pouch
Fey.removeRecipe(<roots:apothecary_pouch>);
Fey.addRecipe("apothecary_pouch", <roots:apothecary_pouch>, [<roots:component_pouch>, <roots:stalicripe>, <roots:fey_pouch>, <roots:spirit_herb>, <minecraft:gold_block>]);
<roots:apothecary_pouch>.addTooltip(format.bold(format.red("WARNING: ") + format.gray("Crafting this item will wipe the input bag's inventory!")));

# Grove Supplication Ritual
Rituals.modifyRitual("grove_supplication", [<minecraft:mossy_cobblestone>,<totemic:cedar_sapling>,<totemic:eagle_drops:1>,<contenttweaker:root_of_the_fallen>,<roots:petals>]);

# Dewgonia
Pyre.removeRecipe(<roots:dewgonia>);
Pyre.addRecipe("dewgonia", <roots:dewgonia>*3, [<minecraft:waterlily>, <roots:terra_moss>, <quark:sugar_block>, <minecraft:lapis_block>, <roots:petals>]);

# Grove Stone
recipes.remove(<roots:grove_stone>);
recipes.addShaped("grove_stone", <roots:grove_stone>, [[null,<contenttweaker:charred_stone>,null],[<totemic:eagle_drops>,<contenttweaker:charred_stone>,<totemic:buffalo_items:1>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,<contenttweaker:charred_stone>]]);
recipes.addShaped(<roots:grove_stone>, [[null,<contenttweaker:charred_stone>,null],[<totemic:buffalo_items:1>,<contenttweaker:charred_stone>,<totemic:eagle_drops>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,<contenttweaker:charred_stone>]]);

# Fey Crafter
recipes.remove(<roots:fey_crafter>);
recipes.addShaped("fey_crafter", <roots:fey_crafter>, [[<ore:treeSapling>,null,<ore:treeSapling>],[<ore:blockAmethyst>,<roots:petals>,<ore:blockAmethyst>],[<contenttweaker:charred_stone>,<contenttweaker:charred_stone>,<contenttweaker:charred_stone>]]);

# Runic Crafter
Fey.removeRecipe(<roots:runic_crafter>);
Fey.addRecipe("runic_crafter", <roots:runic_crafter>, [<roots:fey_crafter>, <roots:runic_dust>, <roots:runic_dust>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]);

# Elemental Soil
Fey.removeRecipe(<roots:elemental_soil>);
Fey.addRecipe("elemental_soil", <roots:elemental_soil>*4, [<extrautils2:compresseddirt>, <ore:compressed1xGravel>, <minecraft:bone_block>, <roots:petals>, <roots:terra_moss>]);

# Runestone
Fey.removeRecipe(<roots:runestone>);
Fey.addRecipe("runestone", <roots:runestone>*3, [<contenttweaker:charred_stone>, <contenttweaker:charred_stone>, <contenttweaker:charred_stone>, <ore:gemAmethyst>, <minecraft:dye:4>]);

# Runed Obsidian
Fey.removeRecipe(<roots:runed_obsidian>);
Fey.addRecipe("runed_obsidian", <roots:runed_obsidian>*3, [<roots:runestone>, <roots:runestone>, <roots:runestone>, <thermalfoundation:material:770>, <contenttweaker:compressed_obsidian1>]);

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
Fey.addRecipe("wildwood_quiver", <roots:wildwood_quiver>, [<simplybackpacks:commonbackpack>.withTag({inv: {Size: 18, Items: []}, filter: {Size: 16, Items: []}}), <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
<roots:wildwood_quiver>.addTooltip(format.darkRed(format.italic("Crafting this requires a Common Backpack you've just crafted.")));
Fey.removeRecipe(<roots:living_pickaxe>);
Fey.addRecipe("living_pickaxe", <roots:living_pickaxe>, [<immersiveengineering:pickaxe_steel>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
Fey.removeRecipe(<roots:living_shovel>);
Fey.addRecipe("living_shovel", <roots:living_shovel>, [<immersiveengineering:shovel_steel>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
Fey.removeRecipe(<roots:living_axe>);
Fey.addRecipe("living_axe", <roots:living_axe>, [<immersiveengineering:axe_steel>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);
Fey.removeRecipe(<roots:living_hoe>);
Fey.addRecipe("living_hoe", <roots:living_hoe>, [<immersiveengineering:hoe_steel>, <roots:spirit_herb>, <roots:bark_wildwood>, <contenttweaker:root_of_the_fallen>, <roots:stalicripe>]);

# Terrastone Toools & Weapons
Fey.removeRecipe(<roots:terrastone_sword>);
Fey.addRecipe("terrastone_sword", <roots:terrastone_sword>, [<roots:living_sword>, <roots:terra_moss>, <roots:runestone>, <minecraft:emerald>, <roots:runic_dust>]);
Fey.removeRecipe(<roots:terrastone_pickaxe>);
Fey.addRecipe("terrastone_pickaxe", <roots:terrastone_pickaxe>, [<roots:living_pickaxe>, <roots:terra_moss>, <roots:runestone>, <minecraft:emerald>, <roots:runic_dust>]);
Fey.removeRecipe(<roots:terrastone_shovel>);
Fey.addRecipe("terrastone_shovel", <roots:terrastone_shovel>, [<roots:living_shovel>, <roots:terra_moss>, <roots:runestone>, <minecraft:emerald>, <roots:runic_dust>]);
Fey.removeRecipe(<roots:terrastone_axe>);
Fey.addRecipe("terrastone_axe", <roots:terrastone_axe>, [<roots:living_axe>, <roots:terra_moss>, <roots:runestone>, <minecraft:emerald>, <roots:runic_dust>]);
Fey.removeRecipe(<roots:terrastone_hoe>);
Fey.addRecipe("terrastone_hoe", <roots:terrastone_hoe>, [<roots:living_hoe>, <roots:terra_moss>, <roots:runestone>, <minecraft:emerald>, <roots:runic_dust>]);

# Runed Toools & Weapons
Fey.removeRecipe(<roots:runed_dagger>);
Fey.addRecipe("runed_dagger", <roots:runed_dagger>, [<roots:diamond_knife>, <roots:moonglow_leaf>, <roots:fey_leather>, <ore:gemAmethyst>, <roots:runed_obsidian>]);
Fey.removeRecipe(<roots:runed_sword>);
Fey.addRecipe("runed_sword", <roots:runed_sword>, [<roots:terrastone_sword>, <roots:infernal_bulb>, <roots:fey_leather>, <mysticalworld:amethyst_sword>, <roots:runed_obsidian>]);
Fey.removeRecipe(<roots:runed_pickaxe>);
Fey.addRecipe("runed_pickaxe", <roots:runed_pickaxe>, [<roots:terrastone_pickaxe>, <roots:stalicripe>, <roots:fey_leather>, <mysticalworld:amethyst_pickaxe>, <roots:runed_obsidian>]);
Fey.removeRecipe(<roots:runed_shovel>);
Fey.addRecipe("runed_shovel", <roots:runed_shovel>, [<roots:terrastone_shovel>, <roots:dewgonia>, <roots:fey_leather>, <mysticalworld:amethyst_shovel>, <roots:runed_obsidian>]);
Fey.removeRecipe(<roots:runed_axe>);
Fey.addRecipe("runed_axe", <roots:runed_axe>, [<roots:terrastone_axe>, <roots:cloud_berry>, <roots:fey_leather>, <mysticalworld:amethyst_axe>, <roots:runed_obsidian>]);
Fey.removeRecipe(<roots:runed_hoe>);
Fey.addRecipe("runed_hoe", <roots:runed_hoe>, [<roots:terrastone_hoe>, <roots:wildewheet>, <roots:fey_leather>, <mysticalworld:amethyst_hoe>, <roots:runed_obsidian>]);

# Sure-Footed Stone
recipes.remove(<roots:runestone_trample>);
recipes.addShaped("runestone_trample", <roots:runestone_trample>, [[<roots:chiseled_runestone>,<roots:terra_moss>,<roots:chiseled_runestone>],[<roots:terra_moss>,<roots:dewgonia>,<roots:terra_moss>],[<roots:chiseled_runestone>,<roots:terra_moss>,<roots:chiseled_runestone>]]);

# Unending Bowl
Fey.removeRecipe(<roots:unending_bowl>);
Fey.addRecipe("unending_bowl", <roots:unending_bowl>, [<enderio:block_reservoir>,<enderio:block_reservoir>,<enderio:block_reservoir>,<enderio:item_alloy_ingot:6>,<enderio:block_reservoir>]);
recipes.addShaped(<roots:unending_bowl>, [[<enderio:block_reservoir>,<enderio:block_reservoir>,<enderio:block_reservoir>],[<enderio:item_alloy_ingot:6>,<enderio:block_reservoir>,<enderio:item_alloy_ingot:6>]]);

# Salmon of Knowledge
Fey.removeRecipe(<roots:salmon_of_knowledge>);

# Wooden Shears
recipes.remove(<roots:wooden_shears>);

# Fire Starter
recipes.remove(<roots:fire_starter>);

# Spirit Bag
RunicShears.removeRecipe(<roots:spirit_bag>);

# Glass Eye
recipes.remove(<roots:glass_eye>);
recipes.addShaped("glass_eye", <roots:glass_eye>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockGlass>, <divinerpg:cyclops_eye>, <ore:blockGlass>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

# Spell Dusts
Mortar.changeSpell("spell_rose_thorns", [<minecraft:double_plant:4>, <minecraft:cactus>, <minecraft:iron_trapdoor>, <roots:stalicripe>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_aqua_bubble", [<minecraft:ice>, <minecraft:snow>, <roots:dewgonia>, <roots:moonglow_leaf>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_sanctuary", [<minecraft:armor_stand>, <roots:moonglow_leaf>, <betternether:barrel_cactus>, <minecraft:piston>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_growth_infusion", [<roots:spirit_herb>, <ore:treeSapling>, <minecraft:dye:15>, <minecraft:golden_hoe>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_sky_soarer", [<roots:cloud_berry>, <betternether:bone_mushroom>, <roots:living_arrow>, <ore:blockSlime>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_saturate", [<minecraft:mushroom_stew>, <divinerpg:donut>, <roots:wildewheet>, <mysticalworld:cooked_aubergine>, <roots:petals>]);
Mortar.changeSpell("spell_wild_fire", [<minecraft:diamond_sword>, <minecraft:tnt>, <roots:infernal_bulb>, <roots:stalicripe>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_natures_scythe", [<roots:wildroot>, <roots:wildroot>, <ore:tallgrass>, <mysticalworld:aubergine>, <roots:diamond_knife>]);
Mortar.changeSpell("spell_radiance", [<minecraft:glowstone>, <roots:stalicripe>, <roots:cloud_berry>, <betternether:black_apple>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_fey_light", [<minecraft:glowstone>, <roots:cloud_berry>, <betternether:eye_seed>, <minecraft:double_plant>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_desaturate", [<minecraft:bowl>, <minecraft:rotten_flesh>, <roots:baffle_cap_mushroom>, <betternether:stalagnate_bowl_mushroom>, <roots:petals>]);
Mortar.changeSpell("spell_augment", [<minecraft:iron_block>, <mysticalworld:aubergine>, <roots:cloud_berry>, <roots:wildewheet>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_storm_cloud", [<minecraft:obsidian>, <roots:cloud_berry>, <roots:runic_dust>, <roots:dewgonia>, <chisel:cloud>]);
Mortar.changeSpell("spell_dandelion_winds", [<minecraft:yellow_flower>, <roots:cloud_berry>, <roots:runic_dust>, <minecraft:piston>, <ore:blockAmethyst>]);
Mortar.changeSpell("spell_harvest", [<roots:wildewheet>, <betternether:nether_cactus>, <minecraft:diamond_hoe>, <minecraft:water_bucket>, <ore:blockAmethyst>]);
// These spells are gated to somewhat further in the game due to being too powerful
Mortar.changeSpell("spell_acid_cloud", [<enderio:item_end_steel_shield>, <roots:baffle_cap_mushroom>, <betternether:egg_plant>, <minecraft:potion>.withTag({Potion: "cofhcore:poison4"}), <ore:blockAmethyst>]);
Mortar.changeSpell("spell_shatter", [<enderio:item_alloy_endergy_ingot:3>, <roots:stalicripe>, <roots:runic_dust>, <actuallyadditions:item_drill_upgrade_speed_iii>, <mysticalworld:amethyst_block>]);
Mortar.changeSpell("spell_life_drain", [<contenttweaker:hardened_blood_droplet>, <roots:moonglow_leaf>, <roots:baffle_cap_mushroom>, <abyssalcraft:oblivionshard>, <mysticalworld:amethyst_block>]);
Mortar.changeSpell("spell_extension", [<contenttweaker:mobgrindium_block>, <roots:wildroot>, <minecraft:compass>, <minecraft:golden_carrot>, <ore:oreAmethyst>]);
Mortar.changeSpell("spell_petal_shell", [<astralsorcery:itemcraftingcomponent:2>, <roots:petals>, <spartanshields:shield_tc_void>, <spartanshields:shield_tower_platinum>, <mysticalworld:amethyst_block>]);

Modifiers.disableModifier("roots:spectral_drain");
Modifiers.disableModifier("roots:gifts_of_undeath");
# Disabled Spell names: reason
# spell_geas: prevents any mob from attacking
# spell_disarm: obtain weapons/armor mob is holding/wearing (custom bosses)
# spell_time_stop: prevents any mob from moving
# spell_chrysopoeia: transmutation, doesnt fit into progression (although it could!)

# Rituals
Rituals.modifyRitual("ritual_healing_aura", [<roots:spirit_herb>, <minecraft:sapling:2>, <roots:bark_birch>, <minecraft:splash_potion>.withTag({Potion: "minecraft:regeneration"}), <roots:terra_moss>]);
Rituals.modifyRitual("ritual_heavy_storms", [<roots:dewgonia>, <roots:cloud_berry>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:vine>, <minecraft:melon>]);
Rituals.modifyRitual("ritual_divine_protection", [<roots:cloud_berry>, <roots:pereskia>, <minecraft:glowstone>, <minecraft:double_plant>, <minecraft:flint_and_steel>]);
Rituals.modifyRitual("ritual_fire_storm", [<roots:infernal_bulb>, <minecraft:coal_block>, <minecraft:blaze_powder>, <minecraft:double_plant>, <minecraft:flint_and_steel>]);
Rituals.modifyRitual("ritual_spreading_forest", [<roots:spirit_herb>, <ore:treeSapling>, <roots:terra_moss>, <minecraft:dye:15>, <roots:wildewheet>]);
Rituals.modifyRitual("ritual_windwall", [<roots:moonglow_leaf>, <roots:cloud_berry>, <minecraft:glass_bottle>, <ore:feather>, <ore:wool>]);
Rituals.modifyRitual("ritual_warding_protection", [<minecraft:speckled_melon>, <roots:stalicripe>, <minecraft:iron_chestplate>, <spartanshields:shield_basic_stone>, <minecraft:tripwire_hook>]);
Rituals.modifyRitual("ritual_germination", [<roots:spirit_herb>, <roots:wildewheet>, <roots:dewgonia>, <minecraft:dye:15>, <minecraft:double_plant>]);
Rituals.modifyRitual("ritual_purity", [<roots:baffle_cap_mushroom>, <mysticalworld:aubergine>, <roots:pereskia>, <minecraft:snowball>, <minecraft:milk_bucket>]);
Rituals.modifyRitual("ritual_frost_lands", [<roots:dewgonia>, <minecraft:snowball>, <minecraft:snow>, <minecraft:ice>, <roots:moonglow_leaf>]);
Rituals.modifyRitual("ritual_animal_harvest", [<roots:wildewheet>, <minecraft:shears>, <roots:wildroot>, <ore:wool>, <minecraft:wheat_seeds>]);
Rituals.modifyRitual("ritual_summon_creatures", [<roots:stalicripe>, <minecraft:egg>, <minecraft:rotten_flesh>, <roots:wildroot>, <roots:wildewheet>]);
Rituals.modifyRitual("ritual_wildroot_growth", [<roots:spirit_herb>, <roots:wildroot>, <roots:dewgonia>, <roots:bark_dark_oak>, <minecraft:dye:15>]);
Rituals.modifyRitual("ritual_overgrowth", [<roots:dewgonia>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <roots:terra_moss>, <minecraft:tallgrass:1>, <ore:rootsBark>]);
Rituals.modifyRitual("ritual_flower_growth", [<roots:petals>, <roots:pereskia>, <minecraft:dye:15>, <roots:terra_moss>, <minecraft:tallgrass:1>]);
Rituals.modifyRitual("ritual_transmutation", [<roots:moonglow_leaf>, <roots:fey_leather>, <roots:living_arrow>, <ore:gemAmethyst>, <roots:chiseled_runestone>]);
Rituals.modifyRitual("ritual_gathering", [<roots:wildewheet>, <roots:cloud_berry>, <minecraft:redstone>, <minecraft:wooden_hoe>, <minecraft:bowl>]);

# Wildwood Sapling
Fey.addRecipe("wildwood_sapling_custom", <roots:wildwood_sapling>, [<totemic:cedar_sapling>,<roots:wildroot>,<mysticalworld:antlers>,<roots:wildwood_log>,<roots:wildwood_log>]);

# Summon Creatures Ritual
SummonCreatures.clearLifeEssence();
SummonCreatures.addEntity(<entity:natura:imp>, [<natura:nether_thorn_vines>, <contenttweaker:bloodgem_dust>, <betternether:eye_seed>]);
<natura:materials:6>.addTooltip(format.white("Imps can be spawned by the Roots 'Summon Creatures' ritual."));

# Artificial Scarab Wings
Fey.addRecipe("artificial_scarab_wings", <contenttweaker:artificial_scarab_wings>, [<roots:moonglow_leaf>,<roots:wildewheet>,<roots:stalicripe>,<roots:fey_leather>,<roots:spirit_herb>]);

# UB Gravel -> Flint in the Mortar
Mortar.removeRecipe(<minecraft:flint>);
Mortar.addRecipe("flint", <minecraft:flint>, [<ore:gravel>]);

# Creative Component Pouch
recipes.addShaped(<roots:creative_pouch>, [[<contenttweaker:beginners_singularity>,<roots:component_pouch>,<contenttweaker:beginners_singularity>],[<roots:component_pouch>,<storagedrawers:upgrade_creative>,<roots:component_pouch>],[<contenttweaker:beginners_singularity>,<roots:component_pouch>,<contenttweaker:beginners_singularity>]]);

print("ENDING Roots.zs");
