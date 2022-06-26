#loader contenttweaker
# Author: Atricos

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.SoundType;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;
import crafttweaker.item.WeightedItemStack;

print("STARTING ContentTweakerBlocks.zs");

var compressed_obsidian1 = VanillaFactory.createBlock("compressed_obsidian1", <blockmaterial:rock>);
compressed_obsidian1.setBlockHardness(75.0);
compressed_obsidian1.setBlockResistance(1500.0);
compressed_obsidian1.setToolClass("pickaxe");
compressed_obsidian1.setToolLevel(3);
compressed_obsidian1.setBlockSoundType(<soundtype:stone>);
compressed_obsidian1.register();

var compressed_obsidian2 = VanillaFactory.createBlock("compressed_obsidian2", <blockmaterial:rock>);
compressed_obsidian2.setBlockHardness(100.0);
compressed_obsidian2.setBlockResistance(1800.0);
compressed_obsidian2.setToolClass("pickaxe");
compressed_obsidian2.setToolLevel(3);
compressed_obsidian2.setBlockSoundType(<soundtype:stone>);
compressed_obsidian2.register();

var compressed_obsidian3 = VanillaFactory.createBlock("compressed_obsidian3", <blockmaterial:rock>);
compressed_obsidian3.setBlockHardness(125.0);
compressed_obsidian3.setBlockResistance(2100.0);
compressed_obsidian3.setToolClass("pickaxe");
compressed_obsidian3.setToolLevel(3);
compressed_obsidian3.setBlockSoundType(<soundtype:stone>);
compressed_obsidian3.register();

var planks_firewood = VanillaFactory.createBlock("planks_firewood", <blockmaterial:wood>);
planks_firewood.setBlockHardness(2.0);
planks_firewood.setBlockResistance(3.0);
planks_firewood.setToolClass("axe");
planks_firewood.setToolLevel(0);
planks_firewood.setBlockSoundType(<soundtype:wood>);
planks_firewood.register();

var planks_hyrewood = VanillaFactory.createBlock("planks_hyrewood", <blockmaterial:wood>);
planks_hyrewood.setBlockHardness(2.0);
planks_hyrewood.setBlockResistance(3.0);
planks_hyrewood.setToolClass("axe");
planks_hyrewood.setToolLevel(0);
planks_hyrewood.setBlockSoundType(<soundtype:wood>);
planks_hyrewood.register();

var planks_mintwood = VanillaFactory.createBlock("planks_mintwood", <blockmaterial:wood>);
planks_mintwood.setBlockHardness(2.0);
planks_mintwood.setBlockResistance(3.0);
planks_mintwood.setToolClass("axe");
planks_mintwood.setToolLevel(0);
planks_mintwood.setBlockSoundType(<soundtype:wood>);
planks_mintwood.register();

var perfectium_block = VanillaFactory.createBlock("perfectium_block", <blockmaterial:iron>);
perfectium_block.setBlockHardness(7.5);
perfectium_block.setBlockResistance(6.0);
perfectium_block.setToolClass("pickaxe");
perfectium_block.setToolLevel(2);
perfectium_block.setBlockSoundType(<soundtype:metal>);
perfectium_block.register();

var compressed_perfectium_block = VanillaFactory.createBlock("compressed_perfectium_block", <blockmaterial:iron>);
compressed_perfectium_block.setBlockHardness(10.0);
compressed_perfectium_block.setBlockResistance(12.0);
compressed_perfectium_block.setToolClass("pickaxe");
compressed_perfectium_block.setToolLevel(2);
compressed_perfectium_block.setBlockSoundType(<soundtype:metal>);
compressed_perfectium_block.register();

var corrupted_draconium_block = VanillaFactory.createBlock("corrupted_draconium_block", <blockmaterial:iron>);
corrupted_draconium_block.setBlockHardness(10.0);
corrupted_draconium_block.setBlockResistance(7.0);
corrupted_draconium_block.setToolClass("pickaxe");
corrupted_draconium_block.setToolLevel(2);
corrupted_draconium_block.setBlockSoundType(<soundtype:metal>);
corrupted_draconium_block.register();

var glass_casing = VanillaFactory.createBlock("glass_casing", <blockmaterial:glass>);
glass_casing.setBlockHardness(1.5);
glass_casing.setBlockResistance(3.0);
glass_casing.setBlockLayer("TRANSLUCENT");
glass_casing.setLightOpacity(0);
glass_casing.setTranslucent(true);
glass_casing.setFullBlock(false);
glass_casing.setToolClass("pickaxe");
glass_casing.setToolLevel(2);
glass_casing.setBlockSoundType(<soundtype:stone>);
glass_casing.register();

var reinforced_glass_casing = VanillaFactory.createBlock("reinforced_glass_casing", <blockmaterial:glass>);
reinforced_glass_casing.setBlockHardness(2.5);
reinforced_glass_casing.setBlockResistance(5.0);
reinforced_glass_casing.setBlockLayer("TRANSLUCENT");
reinforced_glass_casing.setLightOpacity(0);
reinforced_glass_casing.setTranslucent(true);
reinforced_glass_casing.setFullBlock(false);
reinforced_glass_casing.setToolClass("pickaxe");
reinforced_glass_casing.setToolLevel(2);
reinforced_glass_casing.setBlockSoundType(<soundtype:metal>);
reinforced_glass_casing.register();

var charred_stone = VanillaFactory.createBlock("charred_stone", <blockmaterial:rock>);
charred_stone.setBlockHardness(1.5);
charred_stone.setBlockResistance(6.0);
charred_stone.setToolClass("pickaxe");
charred_stone.setToolLevel(0);
charred_stone.setBlockSoundType(<soundtype:stone>);
charred_stone.register();

var baykoks_bloodied_stone = VanillaFactory.createBlock("baykoks_bloodied_stone", <blockmaterial:rock>);
baykoks_bloodied_stone.setBlockHardness(1.5);
baykoks_bloodied_stone.setBlockResistance(6.0);
baykoks_bloodied_stone.setToolClass("pickaxe");
baykoks_bloodied_stone.setToolLevel(0);
baykoks_bloodied_stone.setBlockSoundType(<soundtype:stone>);
baykoks_bloodied_stone.register();

var energized_osmium_block = VanillaFactory.createBlock("energized_osmium_block", <blockmaterial:iron>);
energized_osmium_block.setBlockHardness(5.0);
energized_osmium_block.setBlockResistance(6.0);
energized_osmium_block.setToolClass("pickaxe");
energized_osmium_block.setToolLevel(1);
energized_osmium_block.setBlockSoundType(<soundtype:metal>);
energized_osmium_block.register();

var energized_certus_quartz_block = VanillaFactory.createBlock("energized_certus_quartz_block", <blockmaterial:rock>);
energized_certus_quartz_block.setBlockHardness(0.8);
energized_certus_quartz_block.setBlockResistance(0.8);
energized_certus_quartz_block.setToolClass("pickaxe");
energized_certus_quartz_block.setToolLevel(0);
energized_certus_quartz_block.setBlockSoundType(<soundtype:stone>);
energized_certus_quartz_block.register();

var relic_block = VanillaFactory.createBlock("relic_block", <blockmaterial:iron>);
relic_block.setBlockHardness(4.0);
relic_block.setBlockResistance(5.0);
relic_block.setToolClass("pickaxe");
relic_block.setToolLevel(1);
relic_block.setBlockSoundType(<soundtype:metal>);
relic_block.register();

var mixed_mushroom_compound_block = VanillaFactory.createBlock("mixed_mushroom_compound_block", <blockmaterial:wood>);
mixed_mushroom_compound_block.setBlockHardness(0.2);
mixed_mushroom_compound_block.setBlockResistance(0.2);
mixed_mushroom_compound_block.setToolClass("axe");
mixed_mushroom_compound_block.setToolLevel(0);
mixed_mushroom_compound_block.setBlockSoundType(<soundtype:ladder>);
mixed_mushroom_compound_block.register();

var hardened_amber_moosh = VanillaFactory.createBlock("hardened_amber_moosh", <blockmaterial:rock>);
hardened_amber_moosh.setBlockHardness(35);
hardened_amber_moosh.setBlockResistance(100);
hardened_amber_moosh.setToolClass("pickaxe");
hardened_amber_moosh.setToolLevel(2);
hardened_amber_moosh.setBlockSoundType(<soundtype:stone>);
hardened_amber_moosh.register();

var mixed_erebusian_stone = VanillaFactory.createBlock("mixed_erebusian_stone", <blockmaterial:iron>);
mixed_erebusian_stone.setBlockHardness(1.5);
mixed_erebusian_stone.setBlockResistance(6);
mixed_erebusian_stone.setToolClass("pickaxe");
mixed_erebusian_stone.setToolLevel(1);
mixed_erebusian_stone.setBlockSoundType(<soundtype:stone>);
mixed_erebusian_stone.register();

var healing_stone_block = VanillaFactory.createBlock("healing_stone_block", <blockmaterial:rock>);
healing_stone_block.setBlockHardness(1.5);
healing_stone_block.setBlockResistance(6);
healing_stone_block.setLightValue(1);
healing_stone_block.setToolClass("pickaxe");
healing_stone_block.setToolLevel(1);
healing_stone_block.setBlockSoundType(<soundtype:stone>);
healing_stone_block.register();

var aechomedirus_block = VanillaFactory.createBlock("aechomedirus_block", <blockmaterial:rock>);
aechomedirus_block.setBlockHardness(4);
aechomedirus_block.setBlockResistance(5);
aechomedirus_block.setToolClass("pickaxe");
aechomedirus_block.setToolLevel(1);
aechomedirus_block.setBlockSoundType(<soundtype:metal>);
aechomedirus_block.register();

var osglolapis_block = VanillaFactory.createBlock("osglolapis_block", <blockmaterial:iron>);
osglolapis_block.setBlockHardness(4);
osglolapis_block.setBlockResistance(4);
osglolapis_block.setToolClass("pickaxe");
osglolapis_block.setToolLevel(1);
osglolapis_block.setBlockSoundType(<soundtype:metal>);
osglolapis_block.register();

var demonlord_block = VanillaFactory.createBlock("demonlord_block", <blockmaterial:iron>);
demonlord_block.setBlockHardness(5);
demonlord_block.setBlockResistance(6);
demonlord_block.setToolClass("pickaxe");
demonlord_block.setToolLevel(2);
demonlord_block.setBlockSoundType(<soundtype:metal>);
demonlord_block.register();

var mobgrindium_block = VanillaFactory.createBlock("mobgrindium_block", <blockmaterial:iron>);
mobgrindium_block.setBlockHardness(11);
mobgrindium_block.setBlockResistance(30);
mobgrindium_block.setToolClass("pickaxe");
mobgrindium_block.setToolLevel(2);
mobgrindium_block.setBlockSoundType(<soundtype:metal>);
mobgrindium_block.register();

var open_block = VanillaFactory.createBlock("open_block", <blockmaterial:iron>);
open_block.setBlockHardness(2);
open_block.setBlockResistance(3);
open_block.setToolClass("pickaxe");
open_block.setToolLevel(0);
open_block.setBlockSoundType(<soundtype:metal>);
open_block.register();

var dark_block = VanillaFactory.createBlock("dark_block", <blockmaterial:iron>);
dark_block.setBlockHardness(4);
dark_block.setBlockResistance(5);
dark_block.setToolClass("pickaxe");
dark_block.setToolLevel(1);
dark_block.setBlockSoundType(<soundtype:metal>);
dark_block.register();

var energized_dark_block = VanillaFactory.createBlock("energized_dark_block", <blockmaterial:iron>);
energized_dark_block.setBlockHardness(4);
energized_dark_block.setBlockResistance(5);
energized_dark_block.setToolClass("pickaxe");
energized_dark_block.setToolLevel(1);
energized_dark_block.setBlockSoundType(<soundtype:metal>);
energized_dark_block.register();

var crystalline_brown_slime_block = VanillaFactory.createBlock("crystalline_brown_slime_block", <blockmaterial:iron>);
crystalline_brown_slime_block.setBlockHardness(5);
crystalline_brown_slime_block.setBlockResistance(6);
crystalline_brown_slime_block.setToolClass("pickaxe");
crystalline_brown_slime_block.setToolLevel(2);
crystalline_brown_slime_block.setBlockSoundType(<soundtype:metal>);
crystalline_brown_slime_block.register();

var glod_crystal_block = VanillaFactory.createBlock("glod_crystal_block", <blockmaterial:iron>);
glod_crystal_block.setBlockHardness(3);
glod_crystal_block.setBlockResistance(6);
glod_crystal_block.setToolClass("pickaxe");
glod_crystal_block.setToolLevel(2);
glod_crystal_block.setBlockSoundType(<soundtype:metal>);
glod_crystal_block.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:contenttweaker:glod_crystal_block>.withTag({display: {Name: "§6Glod Crystal Block"}}));
	return;
});
glod_crystal_block.register();

var empowered_glod_crystal_block = VanillaFactory.createBlock("empowered_glod_crystal_block", <blockmaterial:iron>);
empowered_glod_crystal_block.setBlockHardness(3);
empowered_glod_crystal_block.setBlockResistance(6);
empowered_glod_crystal_block.setToolClass("pickaxe");
empowered_glod_crystal_block.setToolLevel(2);
empowered_glod_crystal_block.setBlockSoundType(<soundtype:metal>);
empowered_glod_crystal_block.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:contenttweaker:empowered_glod_crystal_block>.withTag({display: {Name: "§6Empowered Glod Crystal Block"}}));
	return;
});
empowered_glod_crystal_block.register();

var block_of_elevation = VanillaFactory.createBlock("block_of_elevation", <blockmaterial:iron>);
block_of_elevation.setBlockHardness(2);
block_of_elevation.setBlockResistance(4);
block_of_elevation.setToolClass("pickaxe");
block_of_elevation.setToolLevel(1);
block_of_elevation.setBlockSoundType(<soundtype:metal>);
block_of_elevation.register();

var fluxed_electrum_block = VanillaFactory.createBlock("fluxed_electrum_block", <blockmaterial:iron>);
fluxed_electrum_block.setBlockHardness(3);
fluxed_electrum_block.setBlockResistance(6);
fluxed_electrum_block.setToolClass("pickaxe");
fluxed_electrum_block.setToolLevel(2);
fluxed_electrum_block.setBlockSoundType(<soundtype:metal>);
fluxed_electrum_block.register();

var steaming_restonia_crystal_block = VanillaFactory.createBlock("steaming_restonia_crystal_block", <blockmaterial:rock>);
steaming_restonia_crystal_block.setBlockHardness(1);
steaming_restonia_crystal_block.setBlockResistance(3);
steaming_restonia_crystal_block.setToolClass("pickaxe");
steaming_restonia_crystal_block.setToolLevel(1);
steaming_restonia_crystal_block.setBlockSoundType(<soundtype:stone>);
steaming_restonia_crystal_block.register();

val dimension_names_lower = ["eden", "wildwood", "apalachia", "skythern", "mortum", "moon", "mars", "venus", "asteroids"] as string[];
# itemUtils.getItem("minecraft:apple");

for dim in dimension_names_lower {

	var dim_stone = VanillaFactory.createBlock(dim + "_stone", <blockmaterial:rock>);
	#dim_stone.setBlockHardness(18000000);
	#dim_stone.setBlockResistance(3600000);
	dim_stone.setBlockHardness(-1);
	dim_stone.setBlockResistance(16777215);
	dim_stone.setToolClass(null);
	dim_stone.setWitherProof(true);
	dim_stone.setToolLevel(16777215);
	dim_stone.setBlockSoundType(<soundtype:stone>);
	dim_stone.register();

	var dim_bricks = VanillaFactory.createBlock(dim + "_bricks", <blockmaterial:rock>);
	dim_bricks.setBlockHardness(-1);
	dim_bricks.setBlockResistance(16777215);
	dim_bricks.setToolClass(null);
	dim_bricks.setWitherProof(true);
	dim_bricks.setToolLevel(16777215);
	dim_bricks.setBlockSoundType(<soundtype:stone>);
	dim_bricks.register();

	var dim_pillar = VanillaFactory.createBlock(dim + "_pillar", <blockmaterial:rock>);
	dim_pillar.setBlockHardness(-1);
	dim_pillar.setBlockResistance(16777215);
	dim_pillar.setToolClass(null);
	dim_pillar.setWitherProof(true);
	dim_pillar.setToolLevel(16777215);
	dim_pillar.setBlockSoundType(<soundtype:stone>);
	dim_pillar.register();

	var dim_floor = VanillaFactory.createBlock(dim + "_floor", <blockmaterial:rock>);
	dim_floor.setBlockHardness(-1);
	dim_floor.setBlockResistance(16777215);
	dim_floor.setToolClass(null);
	dim_floor.setWitherProof(true);
	dim_floor.setToolLevel(16777215);
	dim_floor.setBlockSoundType(<soundtype:stone>);
	dim_floor.register();

	var dim_roof = VanillaFactory.createBlock(dim + "_roof", <blockmaterial:rock>);
	dim_roof.setBlockHardness(-1);
	dim_roof.setBlockResistance(16777215);
	dim_roof.setToolClass(null);
	dim_roof.setWitherProof(true);
	dim_roof.setToolLevel(16777215);
	dim_roof.setBlockSoundType(<soundtype:stone>);
	dim_roof.register();

	var dim_glass = VanillaFactory.createBlock(dim + "_glass", <blockmaterial:glass>);
	dim_glass.setBlockHardness(-1);
	dim_glass.setBlockResistance(16777215);
	dim_glass.setBlockLayer("TRANSLUCENT");
	dim_glass.setToolClass(null);
	dim_glass.setLightOpacity(0);
	dim_glass.setTranslucent(true);
	dim_glass.setFullBlock(false);
	dim_glass.setWitherProof(true);
	dim_glass.setToolLevel(16777215);
	dim_glass.setBlockSoundType(<soundtype:glass>);
	dim_glass.register();

	var dim_door = VanillaFactory.createBlock(dim + "_door", <blockmaterial:iron>);
	dim_door.setBlockHardness(-1);
	dim_door.setBlockResistance(16777215);
	dim_door.setToolClass(null);
	dim_door.setWitherProof(true);
	dim_door.setToolLevel(16777215);
	dim_door.setBlockSoundType(<soundtype:metal>);
	dim_door.register();

}

var apalachia_door2 = VanillaFactory.createBlock("apalachia_door2", <blockmaterial:iron>);
apalachia_door2.setBlockHardness(-1);
apalachia_door2.setBlockResistance(16777215);
apalachia_door2.setToolClass(null);
apalachia_door2.setWitherProof(true);
apalachia_door2.setToolLevel(16777215);
apalachia_door2.setBlockSoundType(<soundtype:metal>);
apalachia_door2.register();

var skythern_door2 = VanillaFactory.createBlock("skythern_door2", <blockmaterial:iron>);
skythern_door2.setBlockHardness(-1);
skythern_door2.setBlockResistance(16777215);
skythern_door2.setToolClass(null);
skythern_door2.setWitherProof(true);
skythern_door2.setToolLevel(16777215);
skythern_door2.setBlockSoundType(<soundtype:metal>);
skythern_door2.register();

var venus_door2 = VanillaFactory.createBlock("venus_door2", <blockmaterial:iron>);
venus_door2.setBlockHardness(-1);
venus_door2.setBlockResistance(16777215);
venus_door2.setToolClass(null);
venus_door2.setWitherProof(true);
venus_door2.setToolLevel(16777215);
venus_door2.setBlockSoundType(<soundtype:metal>);
venus_door2.register();

var livingmatter = VanillaFactory.createBlock("livingmatter", <blockmaterial:ground>);
livingmatter.setBlockHardness(1.0);
livingmatter.setBlockResistance(1.0);
livingmatter.setToolClass("shovel");
livingmatter.setToolLevel(0);
livingmatter.setBlockSoundType(<soundtype:ground>);
livingmatter.register();

var hybrid_abyssalium_block = VanillaFactory.createBlock("hybrid_abyssalium_block", <blockmaterial:iron>);
hybrid_abyssalium_block.setBlockHardness(10.0);
hybrid_abyssalium_block.setBlockResistance(12.0);
hybrid_abyssalium_block.setToolClass("pickaxe");
hybrid_abyssalium_block.setToolLevel(2);
hybrid_abyssalium_block.setBlockSoundType(<soundtype:metal>);
hybrid_abyssalium_block.register();

var electrotine = VanillaFactory.createItem("electrotine");
electrotine.register();

var electrotine_ore = VanillaFactory.createBlock("electrotine_ore", <blockmaterial:rock>);
electrotine_ore.setBlockHardness(3.0);
electrotine_ore.setBlockResistance(3.0);
electrotine_ore.setToolClass("pickaxe");
electrotine_ore.setToolLevel(1);
electrotine_ore.setBlockSoundType(<soundtype:stone>);
electrotine_ore.register();
electrotine_ore.setDropHandler(function(drops, world, position, state, fortune) {

	drops.clear();
	drops.add(<item:contenttweaker:electrotine> * 2);
	drops.add(<item:contenttweaker:electrotine> % 50);
	drops.add(<item:contenttweaker:electrotine> % 50);
	if(fortune > 0) {
		drops.add(<item:contenttweaker:electrotine> * fortune);
	}

	return;
});

var angelic_silicon_crystal_block = VanillaFactory.createBlock("angelic_silicon_crystal_block", <blockmaterial:rock>);
angelic_silicon_crystal_block.setBlockHardness(4.0);
angelic_silicon_crystal_block.setBlockResistance(4.0);
angelic_silicon_crystal_block.setToolClass("pickaxe");
angelic_silicon_crystal_block.setToolLevel(2);
angelic_silicon_crystal_block.setBlockSoundType(<soundtype:glass>);
angelic_silicon_crystal_block.register();

var dark_realm_soul_block = VanillaFactory.createBlock("dark_realm_soul_block", <blockmaterial:rock>);
dark_realm_soul_block.setBlockHardness(6.0);
dark_realm_soul_block.setBlockResistance(5.0);
dark_realm_soul_block.setToolClass("pickaxe");
dark_realm_soul_block.setToolLevel(2);
dark_realm_soul_block.setBlockSoundType(<soundtype:glass>);
dark_realm_soul_block.register();

var dreammatter = VanillaFactory.createBlock("dreammatter", <blockmaterial:ground>);
dreammatter.setBlockHardness(2.0);
dreammatter.setBlockResistance(2.0);
dreammatter.setToolClass("shovel");
dreammatter.setToolLevel(0);
dreammatter.setBlockSoundType(<soundtype:ground>);
dreammatter.register();

var hyper_diamond_block = VanillaFactory.createBlock("hyper_diamond_block", <blockmaterial:iron>);
hyper_diamond_block.setBlockHardness(6.0);
hyper_diamond_block.setBlockResistance(5.0);
hyper_diamond_block.setToolClass("pickaxe");
hyper_diamond_block.setToolLevel(2);
hyper_diamond_block.setBlockSoundType(<soundtype:metal>);
hyper_diamond_block.register();

var stabilized_end_crystal = VanillaFactory.createBlock("stabilized_end_crystal", <blockmaterial:glass>);
stabilized_end_crystal.setBlockHardness(2.0);
stabilized_end_crystal.setBlockResistance(2.0);
stabilized_end_crystal.setBlockLayer("TRANSLUCENT");
stabilized_end_crystal.setToolClass("pickaxe");
stabilized_end_crystal.setLightOpacity(0);
stabilized_end_crystal.setTranslucent(true);
stabilized_end_crystal.setFullBlock(false);
stabilized_end_crystal.setToolLevel(1);
stabilized_end_crystal.setBlockSoundType(<soundtype:glass>);
stabilized_end_crystal.register();

var tough_purified_paste = VanillaFactory.createBlock("tough_purified_paste", <blockmaterial:ground>);
tough_purified_paste.setBlockHardness(9.0);
tough_purified_paste.setBlockResistance(5.0);
tough_purified_paste.setToolClass("shovel");
tough_purified_paste.setToolLevel(3);
tough_purified_paste.setBlockSoundType(<soundtype:ground>);
tough_purified_paste.register();

var undermeld = VanillaFactory.createBlock("undermeld", <blockmaterial:rock>);
undermeld.setBlockHardness(4.0);
undermeld.setBlockResistance(4.0);
undermeld.setToolClass("pickaxe");
undermeld.setToolLevel(1);
undermeld.setBlockSoundType(<soundtype:stone>);
undermeld.register();

var mystical_iron_block = VanillaFactory.createBlock("mystical_iron_block", <blockmaterial:iron>);
mystical_iron_block.setBlockHardness(6.0);
mystical_iron_block.setBlockResistance(5.0);
mystical_iron_block.setToolClass("pickaxe");
mystical_iron_block.setToolLevel(1);
mystical_iron_block.setBlockSoundType(<soundtype:metal>);
mystical_iron_block.register();

var ludicrous_ore = VanillaFactory.createBlock("ludicrous_ore", <blockmaterial:rock>);
ludicrous_ore.setBlockHardness(3.0);
ludicrous_ore.setBlockResistance(3.0);
ludicrous_ore.setToolClass("pickaxe");
ludicrous_ore.setToolLevel(2);
ludicrous_ore.setBlockSoundType(<soundtype:stone>);
ludicrous_ore.register();

var galactic_block = VanillaFactory.createBlock("galactic_block", <blockmaterial:iron>);
galactic_block.setBlockHardness(12.0);
galactic_block.setBlockResistance(16.0);
galactic_block.setToolClass("pickaxe");
galactic_block.setToolLevel(3);
galactic_block.setBlockSoundType(<soundtype:metal>);
galactic_block.register();

var tin_sheetmetal = VanillaFactory.createBlock("tin_sheetmetal", <blockmaterial:iron>);
tin_sheetmetal.setBlockHardness(2.5);
tin_sheetmetal.setBlockResistance(2.5);
tin_sheetmetal.setToolClass("pickaxe");
tin_sheetmetal.setToolLevel(0);
tin_sheetmetal.setBlockSoundType(<soundtype:metal>);
tin_sheetmetal.register();

var titanium_box = VanillaFactory.createBlock("titanium_box", <blockmaterial:iron>);
titanium_box.setBlockHardness(15.0);
titanium_box.setBlockResistance(1500);
titanium_box.setToolClass("pickaxe");
titanium_box.setToolLevel(3);
titanium_box.setBlockSoundType(<soundtype:metal>);
titanium_box.register();

var portion_of_the_sun = VanillaFactory.createBlock("portion_of_the_sun", <blockmaterial:rock>);
portion_of_the_sun.setBlockHardness(2.0);
portion_of_the_sun.setBlockResistance(0.5);
portion_of_the_sun.setToolClass("pickaxe");
portion_of_the_sun.setToolLevel(0);
portion_of_the_sun.setBlockSoundType(<soundtype:glass>);
portion_of_the_sun.setLightValue(1);
portion_of_the_sun.setFullBlock(false);
portion_of_the_sun.register();

var hyperglued_meteoric_casing = VanillaFactory.createBlock("hyperglued_meteoric_casing", <blockmaterial:iron>);
hyperglued_meteoric_casing.setBlockHardness(20.0);
hyperglued_meteoric_casing.setBlockResistance(2000);
hyperglued_meteoric_casing.setToolClass("pickaxe");
hyperglued_meteoric_casing.setToolLevel(3);
hyperglued_meteoric_casing.setBlockSoundType(<soundtype:metal>);
hyperglued_meteoric_casing.register();

var draconic_machine_frame = VanillaFactory.createBlock("draconic_machine_frame", <blockmaterial:iron>);
draconic_machine_frame.setBlockHardness(5.0);
draconic_machine_frame.setBlockResistance(5.0);
draconic_machine_frame.setToolClass("pickaxe");
draconic_machine_frame.setToolLevel(2);
draconic_machine_frame.setBlockSoundType(<soundtype:metal>);
draconic_machine_frame.register();

var crystal_core = VanillaFactory.createBlock("crystal_core", <blockmaterial:rock>);
crystal_core.setBlockHardness(2.0);
crystal_core.setBlockResistance(1.0);
crystal_core.setToolClass("pickaxe");
crystal_core.setToolLevel(1);
crystal_core.setBlockSoundType(<soundtype:glass>);
crystal_core.register();

var alchemical_machine_frame = VanillaFactory.createBlock("alchemical_machine_frame", <blockmaterial:iron>);
alchemical_machine_frame.setBlockHardness(6.0);
alchemical_machine_frame.setBlockResistance(6.0);
alchemical_machine_frame.setToolClass("pickaxe");
alchemical_machine_frame.setToolLevel(2);
alchemical_machine_frame.setBlockSoundType(<soundtype:metal>);
alchemical_machine_frame.register();

var stabilized_dimensional_machine_frame = VanillaFactory.createBlock("stabilized_dimensional_machine_frame", <blockmaterial:iron>);
stabilized_dimensional_machine_frame.setBlockHardness(7.5);
stabilized_dimensional_machine_frame.setBlockResistance(7.5);
stabilized_dimensional_machine_frame.setToolClass("pickaxe");
stabilized_dimensional_machine_frame.setToolLevel(2);
stabilized_dimensional_machine_frame.setBlockSoundType(<soundtype:metal>);
stabilized_dimensional_machine_frame.register();

var gerc_crystal = VanillaFactory.createBlock("gerc_crystal", <blockmaterial:rock>);
gerc_crystal.setBlockHardness(2.5);
gerc_crystal.setBlockResistance(2.5);
gerc_crystal.setToolClass("pickaxe");
gerc_crystal.setToolLevel(2);
gerc_crystal.setBlockSoundType(<soundtype:glass>);
gerc_crystal.register();

var celestial_crystal_core = VanillaFactory.createBlock("celestial_crystal_core", <blockmaterial:rock>);
celestial_crystal_core.setBlockHardness(4.0);
celestial_crystal_core.setBlockResistance(2.0);
celestial_crystal_core.setToolClass("pickaxe");
celestial_crystal_core.setToolLevel(2);
celestial_crystal_core.setBlockSoundType(<soundtype:glass>);
celestial_crystal_core.register();

var penultimate_machine_frame = VanillaFactory.createBlock("penultimate_machine_frame", <blockmaterial:rock>);
penultimate_machine_frame.setBlockHardness(8.0);
penultimate_machine_frame.setBlockResistance(6.0);
penultimate_machine_frame.setToolClass("pickaxe");
penultimate_machine_frame.setToolLevel(2);
penultimate_machine_frame.setBlockSoundType(<soundtype:glass>);
penultimate_machine_frame.register();

var reinforced_starlight_infused_machine_block = VanillaFactory.createBlock("reinforced_starlight_infused_machine_block", <blockmaterial:iron>);
reinforced_starlight_infused_machine_block.setBlockHardness(2.5);
reinforced_starlight_infused_machine_block.setBlockResistance(5.0);
reinforced_starlight_infused_machine_block.setToolClass("pickaxe");
reinforced_starlight_infused_machine_block.setToolLevel(2);
reinforced_starlight_infused_machine_block.setBlockSoundType(<soundtype:metal>);
reinforced_starlight_infused_machine_block.register();

var reinforced_machine_stabilizer = VanillaFactory.createBlock("reinforced_machine_stabilizer", <blockmaterial:iron>);
reinforced_machine_stabilizer.setBlockHardness(2.5);
reinforced_machine_stabilizer.setBlockResistance(5.0);
reinforced_machine_stabilizer.setToolClass("pickaxe");
reinforced_machine_stabilizer.setToolLevel(2);
reinforced_machine_stabilizer.setBlockSoundType(<soundtype:metal>);
reinforced_machine_stabilizer.register();

var reinforced_machine_electrolyzer = VanillaFactory.createBlock("reinforced_machine_electrolyzer", <blockmaterial:iron>);
reinforced_machine_electrolyzer.setBlockHardness(2.5);
reinforced_machine_electrolyzer.setBlockResistance(5.0);
reinforced_machine_electrolyzer.setToolClass("pickaxe");
reinforced_machine_electrolyzer.setToolLevel(2);
reinforced_machine_electrolyzer.setBlockSoundType(<soundtype:metal>);
reinforced_machine_electrolyzer.register();

var reinforced_machine_accelerator = VanillaFactory.createBlock("reinforced_machine_accelerator", <blockmaterial:iron>);
reinforced_machine_accelerator.setBlockHardness(2.5);
reinforced_machine_accelerator.setBlockResistance(5.0);
reinforced_machine_accelerator.setToolClass("pickaxe");
reinforced_machine_accelerator.setToolLevel(2);
reinforced_machine_accelerator.setBlockSoundType(<soundtype:metal>);
reinforced_machine_accelerator.register();

var ultimate_machine_frame = VanillaFactory.createBlock("ultimate_machine_frame", <blockmaterial:rock>);
ultimate_machine_frame.setBlockHardness(10.0);
ultimate_machine_frame.setBlockResistance(8.0);
ultimate_machine_frame.setToolClass("pickaxe");
ultimate_machine_frame.setToolLevel(3);
ultimate_machine_frame.setBlockSoundType(<soundtype:glass>);
ultimate_machine_frame.register();

print("ENDING ContentTweakerBlocks.zs");
