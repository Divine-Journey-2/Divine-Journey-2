# Author: Atricos
print("STARTING SimplyBackpacks.zs");

# Common Backpack
recipes.remove(<simplybackpacks:commonbackpack>);
recipes.addShaped(<simplybackpacks:commonbackpack>.withTag({inv: {Size: 18, Items: []}, filter: {Size: 16, Items: []}}), [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],[<contenttweaker:treated_leather>,<ore:chestWood>,<contenttweaker:treated_leather>],[<contenttweaker:treated_leather>,<minecraft:iron_ingot>,<contenttweaker:treated_leather>]]);

/*
function(out,ins,cInfo) {
	if(ins.input_bag.tag has "Items") {
		return out.withTag({inv: {Size: 33, Items: ins.input_bag.tag.Items}, filter: {Size: 16, Items: []}});
	} else {
		return out.withTag({inv: {Size: 33, Items: []}, filter: {Size: 16, Items: []}});
	}
}
*/

# Uncommon Backpack
recipes.remove(<simplybackpacks:uncommonbackpack>);
recipes.addShaped(<simplybackpacks:uncommonbackpack>.withTag({inv: {Size: 33, Items: []}, filter: {Size: 16, Items: []}}), [[<minecraft:gold_ingot>,<minecraft:gold_ingot>,<minecraft:gold_ingot>],[<contenttweaker:treated_leather>,<minecraft:iron_block>,<contenttweaker:treated_leather>],[<contenttweaker:treated_leather>,<minecraft:gold_ingot>,<contenttweaker:treated_leather>]]);

# Rare Backpack
recipes.remove(<simplybackpacks:rarebackpack>);
recipes.addShaped(<simplybackpacks:rarebackpack>.withTag({inv: {Size: 66, Items: []}, filter: {Size: 16, Items: []}}), [[<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>],[<contenttweaker:treated_leather>,<minecraft:gold_block>,<contenttweaker:treated_leather>],[<contenttweaker:treated_leather>,<minecraft:diamond>,<contenttweaker:treated_leather>]]);

# Epic Backpack
recipes.remove(<simplybackpacks:epicbackpack>);
recipes.addShaped(<simplybackpacks:epicbackpack>.withTag({inv: {Size: 99, Items: []}, filter: {Size: 16, Items: []}}), [[<plustic:alumiteingot>,<plustic:alumiteingot>,<plustic:alumiteingot>],[<contenttweaker:treated_leather>,<minecraft:diamond_block>,<contenttweaker:treated_leather>],[<contenttweaker:treated_leather>,<plustic:alumiteblock>,<contenttweaker:treated_leather>]]);

print("ENDING SimplyBackpacks.zs");