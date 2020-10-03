# Author: Atricos
print("STARTING IronBackpacks.zs");

# Basic Backpack
recipes.removeShaped(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}), [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}), [[<ore:blockWool>,<contenttweaker:treated_leather>,<ore:blockWool>],[<contenttweaker:treated_leather>,<ore:chestWood>,<contenttweaker:treated_leather>],[<ore:blockWool>,<contenttweaker:treated_leather>,<ore:blockWool>]]);

# Iron Backpack (Storage Emphasis)
recipes.removeShaped(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}), [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped("ironbackpacks_storage1", <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}), [[<minecraft:iron_ingot>,<minecraft:iron_block>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}).marked("backpack"),<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]],
	function(out, ins, cInfo) { 
	if(ins.backpack.tag has "packInv") {
		return out.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}, packInv: ins.backpack.tag.packInv});
	} else {
		return out.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}});
	}}, null);

# Gold Backpack (Storage Emphasis)
recipes.removeShaped(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}), [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped("ironbackpacks_storage2", <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}), [[<minecraft:gold_ingot>,<minecraft:gold_block>,<minecraft:gold_ingot>],[<minecraft:gold_ingot>,<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}).marked("backpack"),<minecraft:gold_ingot>],[<minecraft:gold_ingot>,<minecraft:gold_ingot>,<minecraft:gold_ingot>]],
	function(out, ins, cInfo) { 
	if(ins.backpack.tag has "packInv") {
		return out.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}, packInv: ins.backpack.tag.packInv});
	} else {
		return out.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}});
	}}, null);

# Diamond Backpack (Storage Emphasis)
recipes.removeShaped(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}}), [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped("ironbackpacks_storage3", <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}}), [[<minecraft:diamond>,<minecraft:diamond_block>,<minecraft:diamond>],[<minecraft:diamond>,<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}).marked("backpack"),<minecraft:diamond>],[<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>]],
	function(out, ins, cInfo) { 
	if(ins.backpack.tag has "packInv") {
		return out.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}, packInv: ins.backpack.tag.packInv});
	} else {
		return out.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}});
	}}, null);

# Upgrade Emphasis isn't implemented yet, disabling them
recipes.remove(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}));
recipes.remove(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}));
recipes.remove(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}));
recipes.remove(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "STORAGE"}}));
recipes.remove(<ironbackpacks:upgrade>);

print("ENDING IronBackpacks.zs");