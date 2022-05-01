# Author: Atricos

import mods.immersiveengineering.MetalPress;
import crafttweaker.game.IGame;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Transposer;
import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter;
import mods.thermalexpansion.InductionSmelter;

print("STARTING ThermalFoundation.zs");

# Renaming Mana Infused to Mithril
game.setLocalization("tile.thermalfoundation.ore.mithril.name", "Mithril Ore");
game.setLocalization("tile.thermalfoundation.storage.mithril.name", "Mithril Block");
game.setLocalization("tile.thermalfoundation.glass.mithril.name", "Hardened Mithril Glass");
<thermalfoundation:coin:72>.displayName = "Mithril Coin";
<thermalfoundation:material:72>.displayName = "Pulverized Mithril";
<thermalfoundation:material:136>.displayName = "Mithril Ingot";
<thermalfoundation:material:200>.displayName = "Mithril Nugget";
<thermalfoundation:material:264>.displayName = "Mithril Gear";
<thermalfoundation:material:328>.displayName = "Mithril Plate";
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:glass:8> * 2, <thermalfoundation:glass:3> * 2, <thermalfoundation:material:72>, 6000, <thermalfoundation:material:865>, 15);

# Steel Tools are already added by Immersive Engineering
recipes.remove(<thermalfoundation:tool.sword_steel>);
recipes.remove(<thermalfoundation:tool.pickaxe_steel>);
recipes.remove(<thermalfoundation:tool.shovel_steel>);
recipes.remove(<thermalfoundation:tool.axe_steel>);
recipes.remove(<thermalfoundation:tool.hoe_steel>);

# Redstone Reception Coil
recipes.remove(<thermalfoundation:material:513>);
recipes.addShapedMirrored(<thermalfoundation:material:513>, [[null,null,<ore:ingotRedAlloy>],[null,<thermalfoundation:material:25>,null],[<ore:ingotRedAlloy>,null,null]]);

# Redstone Transmission Coil
recipes.remove(<thermalfoundation:material:514>);
recipes.addShapedMirrored(<thermalfoundation:material:514>, [[null,null,<ore:ingotRedAlloy>],[null,<thermalfoundation:material:258>,null],[<ore:ingotRedAlloy>,null,null]]);

# Redstone Conductance Coil
recipes.remove(<thermalfoundation:material:515>);
recipes.addShapedMirrored(<thermalfoundation:material:515>, [[<ore:ingotRedAlloy>,null,null],[null,<thermalfoundation:material:289>,null],[null,null,<ore:ingotRedAlloy>]]);

# Saw Blade
recipes.remove(<thermalfoundation:material:657>);
recipes.addShaped(<thermalfoundation:material:657>, [[<immersiveengineering:material:2>,<immersiveengineering:material:2>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<thermalfoundation:material:352>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<immersiveengineering:material:2>,<immersiveengineering:material:2>]]);

# Hardened Upgrade Kit
recipes.remove(<thermalfoundation:upgrade>);
recipes.addShaped(<thermalfoundation:upgrade>, [[<thermalfoundation:material:354>,<thermalfoundation:material:354>,<thermalfoundation:material:354>],[<thermalfoundation:material:354>,<thermalfoundation:material:264>,<thermalfoundation:material:354>],[<ore:ingotRedAlloy>,<ore:ingotRedAlloy>,<ore:ingotRedAlloy>]]);

# Reinforced Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped(<thermalfoundation:upgrade:1>, [[<contenttweaker:fluxed_electrum_plate>,<contenttweaker:fluxed_electrum_plate>,<contenttweaker:fluxed_electrum_plate>],[<contenttweaker:fluxed_electrum_plate>,<enderio:item_material:41>,<contenttweaker:fluxed_electrum_plate>],[<ore:ingotRedAlloy>,<ore:ingotRedAlloy>,<ore:ingotRedAlloy>]]);

# Signalum Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:2>);
recipes.addShaped(<thermalfoundation:upgrade:2>, [[<thermalfoundation:material:327>,<thermalfoundation:material:327>,<thermalfoundation:material:327>],[<thermalfoundation:material:327>,<thermalfoundation:storage_alloy:5>,<thermalfoundation:material:327>],[<thermalfoundation:material:514>,<thermalfoundation:material:514>,<thermalfoundation:material:514>]]);

# Resonant Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:3>);
recipes.addShaped(<thermalfoundation:upgrade:3>, [[<extendedcrafting:material:2>,<extendedcrafting:material:2>,<extendedcrafting:material:2>],[<extendedcrafting:material:2>,<thermalfoundation:storage_alloy:7>,<extendedcrafting:material:2>],[<thermalfoundation:material:515>,<thermalfoundation:material:515>,<thermalfoundation:material:515>]]);

# Signalum Security Lock
recipes.remove(<thermalfoundation:security>);
recipes.addShaped(<thermalfoundation:security>, [[null,<thermalfoundation:material:165>,null],[<thermalfoundation:material:165>,<thermalfoundation:material:291>,<thermalfoundation:material:165>],[<thermalfoundation:material:165>,<thermalfoundation:material:165>,<thermalfoundation:material:165>]]);

# Multimeter
recipes.remove(<thermalfoundation:meter>);
recipes.addShaped(<thermalfoundation:meter>, [[<thermalfoundation:material:322>,<lightningcraft:rod:2>,<thermalfoundation:material:322>],[<thermalfoundation:material:352>,<thermalfoundation:material:25>,<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<contenttweaker:rf_powder>,<thermalfoundation:material:352>]]);

# Redprint
recipes.remove(<thermalfoundation:diagram_redprint>);
recipes.addShaped(<thermalfoundation:diagram_redprint>, [[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],[<ore:ingotRedAlloy>,<contenttweaker:rf_powder>,<ore:ingotRedAlloy>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

# Tome of Knowledge
recipes.remove(<thermalfoundation:tome_experience>);
recipes.addShaped(<thermalfoundation:tome_experience>, [[null,<minecraft:experience_bottle>,null],[<minecraft:emerald>,<minecraft:book>,<minecraft:emerald>],[null,<minecraft:experience_bottle>,null]]);

# Tar from Smoldering Tar
val slimeballs = [<minecraft:slime_ball>,<actuallyadditions:item_misc:12>,<aether_legacy:swetty_ball>,<industrialforegoing:pink_slime>,<tconstruct:edible:1>,<tconstruct:edible:2>,<tconstruct:edible:3>,<tconstruct:edible:4>] as IItemStack[];
for item in slimeballs {
	mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:833>, item, <liquid:smoldering_tar> * 200, 6000);
}

# Smoldering Tar from Tar
mods.thermalexpansion.Transposer.addExtractRecipe(<liquid:smoldering_tar> * 200, <thermalfoundation:material:833>, 800);

# Mana Dust
recipes.addShapeless(<thermalfoundation:material:1028>, [<contenttweaker:rf_powder>,<thermalfoundation:material:1024>,<thermalfoundation:material:1025>,<thermalfoundation:material:1026>,<thermalfoundation:material:1027>]);

# Mithril Ingot
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:136>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:136>, <thermalfoundation:material:1028>, null, 200, 512, [<contenttweaker:demonlord_ingot>, <thermalfoundation:material:134>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:136>, <thermalfoundation:material:72>, null, 100, 512);
mods.enderio.AlloySmelter.addRecipe(<thermalfoundation:material:136>, [<thermalfoundation:material:1028>, <contenttweaker:demonlord_ingot>, <thermalfoundation:material:134>], 24000);

# Regular Hardened Glass recipes should only require regular Hardened Glass, otherwise it's impossible to figure out which one you need from JEI
<ore:blockGlassHardened>.removeItems([<enderio:block_fused_quartz:*>, <thermalfoundation:glass:*>, <thermalfoundation:glass_alloy:*>]);
<ore:blockGlassHardened>.add(<thermalfoundation:glass:3>);
recipes.removeShapeless(<thermalfoundation:glass:3>, [<*>,<thermalfoundation:glass:3>,<*>,<*>]);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:glass:3>, <thermalfoundation:material:67>);

# Enderium
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:167>); 
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:167> * 4, <minecraft:ender_pearl> * 4, null, 100, 384, [<thermalfoundation:material:131> * 3, <thermalfoundation:material:134>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:167> * 2, <enderio:item_material:39> * 2, null, 80, 256, [<ore:sand>], "Alloying");

# Signalum
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:165>); 
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:165> * 4, <thermalfoundation:material:128> * 3, null, 100, 512, [<thermalfoundation:material:130>, <minecraft:redstone> * 10], "Alloying");

# Fluxed Aqua-Chow
<thermalfoundation:bait:2>.addTooltip(format.white("To obtain, charge Rich Aqua-Chow in an Energetic Infuser."));

# Resonant Clathrate from Mystical Agriculture Essences
recipes.addShaped(<thermalfoundation:material:895>, [[null,<mysticalagriculture:enderium_essence>,null],[<mysticalagriculture:enderium_essence>,<minecraft:flint>,<mysticalagriculture:enderium_essence>],[null,<mysticalagriculture:enderium_essence>,null]]);

# Destabilized Clathrate <-> AC Redstone Shard conversion fix
<ore:crystalRedstone>.remove(<thermalfoundation:material:893>);

# Silver Plate, S'il vous plaît
<thermalfoundation:material:322>.addShiftTooltip(format.darkPurple(format.italic("S'il vous plaît")));

print("ENDING ThermalFoundation.zs");