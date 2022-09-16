# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.immersiveengineering.MetalPress;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;

print("STARTING Plates.zs");

# Only the Thermal Foundation Plates will be used in recipes, and only they can be crafted
#recipes.replaceAllOccurences(<ore:plateIron>, <thermalfoundation:material:32>, <*>);
#recipes.replaceAllOccurences(<ore:plateGold>, <thermalfoundation:material:33>, <*>);
#recipes.replaceAllOccurences(<ore:plateCopper>, <thermalfoundation:material:320>, <*>);
#recipes.replaceAllOccurences(<ore:plateTin>, <thermalfoundation:material:321>, <*>);
#recipes.replaceAllOccurences(<ore:plateSilver>, <thermalfoundation:material:322>, <*>);
#recipes.replaceAllOccurences(<ore:plateLead>, <thermalfoundation:material:323>, <*>);
#recipes.replaceAllOccurences(<ore:plateAluminum>, <thermalfoundation:material:324>, <*>);
#recipes.replaceAllOccurences(<ore:plateNickel>, <thermalfoundation:material:325>, <*>);
#recipes.replaceAllOccurences(<ore:platePlatinum>, <thermalfoundation:material:326>, <*>);
#recipes.replaceAllOccurences(<ore:plateIridium>, <thermalfoundation:material:327>, <*>);
#recipes.replaceAllOccurences(<ore:plateMithril>, <thermalfoundation:material:328>, <*>);
#recipes.replaceAllOccurences(<ore:plateSteel>, <thermalfoundation:material:352>, <*>);
#recipes.replaceAllOccurences(<ore:plateElectrum>, <thermalfoundation:material:353>, <*>);
#recipes.replaceAllOccurences(<ore:plateInvar>, <thermalfoundation:material:354>, <*>);
#recipes.replaceAllOccurences(<ore:plateBronze>, <thermalfoundation:material:355>, <*>);
#recipes.replaceAllOccurences(<ore:plateConstantan>, <thermalfoundation:material:356>, <*>);
#recipes.replaceAllOccurences(<ore:plateSignalum>, <thermalfoundation:material:357>, <*>);
#recipes.replaceAllOccurences(<ore:plateLumium>, <thermalfoundation:material:358>, <*>);
#recipes.replaceAllOccurences(<ore:plateEnderium>, <thermalfoundation:material:359>, <*>);

# Correct Plates with Iron Hammer
recipes.addShapeless(<thermalfoundation:material:32>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotIron>, <ore:ingotIron>]);
recipes.addShapeless(<thermalfoundation:material:33>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotGold>, <ore:ingotGold>]);
recipes.addShapeless(<thermalfoundation:material:320>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotCopper>, <ore:ingotCopper>]);
recipes.addShapeless(<thermalfoundation:material:321>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotTin>, <ore:ingotTin>]);
recipes.addShapeless(<thermalfoundation:material:322>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotSilver>, <ore:ingotSilver>]);
recipes.addShapeless(<thermalfoundation:material:323>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotLead>, <ore:ingotLead>]);
recipes.addShapeless(<thermalfoundation:material:324>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotAluminum>, <ore:ingotAluminum>]);
recipes.addShapeless(<thermalfoundation:material:325>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotNickel>, <ore:ingotNickel>]);
recipes.addShapeless(<thermalfoundation:material:326>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotPlatinum>, <ore:ingotPlatinum>]);
recipes.addShapeless(<thermalfoundation:material:327>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotIridium>, <ore:ingotIridium>]);
recipes.addShapeless(<thermalfoundation:material:328>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotMithril>, <ore:ingotMithril>]);
recipes.addShapeless(<thermalfoundation:material:352>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotSteel>, <ore:ingotSteel>]);
recipes.addShapeless(<thermalfoundation:material:353>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotElectrum>, <ore:ingotElectrum>]);
recipes.addShapeless(<thermalfoundation:material:354>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotInvar>, <ore:ingotInvar>]);
recipes.addShapeless(<thermalfoundation:material:355>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotBronze>, <ore:ingotBronze>]);
recipes.addShapeless(<thermalfoundation:material:356>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotConstantan>, <ore:ingotConstantan>]);
recipes.addShapeless(<thermalfoundation:material:357>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotSignalum>, <ore:ingotSignalum>]);
recipes.addShapeless(<thermalfoundation:material:358>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotLumium>, <ore:ingotLumium>]);
recipes.addShapeless(<thermalfoundation:material:359>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <ore:ingotEnderium>, <ore:ingotEnderium>]);

# Remove regular Plate recipes
recipes.removeShaped(<thermalfoundation:material:322> * 2, [[<ore:ingotSilver>,<ore:ingotSilver>,<ore:ingotSilver>]]);

# Correct Plates with Immersive Metal Press
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:32>, <ore:ingotIron>, <immersiveengineering:mold>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:33>, <ore:ingotGold>, <immersiveengineering:mold>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:320>, <ore:ingotCopper>, <immersiveengineering:mold>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:322>, <ore:ingotSilver>, <immersiveengineering:mold>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:323>, <ore:ingotLead>, <immersiveengineering:mold>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:324>, <ore:ingotAluminum>, <immersiveengineering:mold>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:325>, <ore:ingotNickel>, <immersiveengineering:mold>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:352>, <ore:ingotSteel>, <immersiveengineering:mold>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:353>, <ore:ingotElectrum>, <immersiveengineering:mold>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:356>, <ore:ingotConstantan>, <immersiveengineering:mold>, 3000);

# Removing Iron Plate recipes
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:39>);
recipes.remove(<immersiveengineering:metal:39>);
recipes.remove(<lightningcraft:plate>);
recipes.remove(<thaumcraft:plate:1>);
val ironPlates = <ore:plateIron>;
ironPlates.removeItems([<lightningcraft:plate>, <thaumcraft:plate:1>, <immersiveengineering:metal:39>]);

# Removing Gold Plate recipes
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:40>);
recipes.remove(<immersiveengineering:metal:40>);
recipes.remove(<lightningcraft:plate:5>);
val goldPlates = <ore:plateGold>;
goldPlates.removeItems([<immersiveengineering:metal:40>, <lightningcraft:plate:5>]);

# Removing Copper Plate recipes
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:30>);
recipes.remove(<immersiveengineering:metal:30>);
recipes.remove(<lightningcraft:plate:6>);
val copperPlates = <ore:plateCopper>;
copperPlates.removeItems([<immersiveengineering:metal:30>, <lightningcraft:plate:6>]);

# Removing Tin Plate recipes
recipes.remove(<lightningcraft:plate:3>);
val tinPlates = <ore:plateTin>;
tinPlates.removeItems([<lightningcraft:plate:3>]);

# Removing Silver Plate recipes
recipes.remove(<bewitchment:silver_plate>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:33>);
recipes.remove(<immersiveengineering:metal:33>);
val silverPlates = <ore:plateSilver>;
silverPlates.removeItems([<bewitchment:silver_plate>, <immersiveengineering:metal:33>]);

# Removing Lead Plate recipes
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:32>);
recipes.remove(<immersiveengineering:metal:32>);
recipes.remove(<lightningcraft:plate:2>);
val leadPlates = <ore:plateLead>;
leadPlates.removeItems([<immersiveengineering:metal:32>, <lightningcraft:plate:2>]);

# Removing Aluminum Plate recipes
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:31>);
recipes.remove(<immersiveengineering:metal:31>);
recipes.remove(<lightningcraft:plate:4>);
val aluminumPlates = <ore:plateAluminum>;
aluminumPlates.removeItems([<immersiveengineering:metal:31>, <lightningcraft:plate:4>]);

# Removing Nickel Plate recipes
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:34>);
recipes.remove(<immersiveengineering:metal:34>);
val nickelPlates = <ore:plateNickel>;
nickelPlates.removeItems([<immersiveengineering:metal:34>]);

# Removing Steel Plate recipes
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:38>);
recipes.remove(<immersiveengineering:metal:38>);
recipes.remove(<lightningcraft:plate:1>);
val steelPlates = <ore:plateSteel>;
steelPlates.removeItems([<immersiveengineering:metal:38>, <lightningcraft:plate:1>]);

# Removing Electrum Plate recipes
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:37>);
recipes.remove(<immersiveengineering:metal:37>);
val electrumPlates = <ore:plateElectrum>;
electrumPlates.removeItems([<immersiveengineering:metal:37>]);

# Removing Constantan Plate recipes
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:36>);
recipes.remove(<immersiveengineering:metal:36>);
val constantanPlates = <ore:plateConstantan>;
constantanPlates.removeItems([<immersiveengineering:metal:36>]);

# Silicon Plate
mods.alchemistry.Combiner.addRecipe(<appliedenergistics2:material:5>, [<alchemistry:element:14> * 16]);
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:silicon_plate>, <appliedenergistics2:material:5>, 4000);
mods.immersiveengineering.MetalPress.removeRecipe(<contenttweaker:silicon_plate>);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:silicon_plate>, <appliedenergistics2:material:5>, <immersiveengineering:mold>, 4000);
recipes.addShapeless(<contenttweaker:silicon_plate>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<appliedenergistics2:material:5>,<appliedenergistics2:material:5>]);

# Titanium Plate
recipes.addShapeless(<contenttweaker:titanium_plate>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<galacticraftplanets:item_basic_asteroids>,<galacticraftplanets:item_basic_asteroids>]);
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:titanium_plate>, <galacticraftplanets:item_basic_asteroids>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:titanium_plate>, <galacticraftplanets:item_basic_asteroids>, <immersiveengineering:mold>, 3000);
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:titanium_plate>, false, 1, [[100, <alchemistry:element:22> * 144]]);

# Black Iron Slate
recipes.remove(<extendedcrafting:material:2>);
recipes.addShapeless(<extendedcrafting:material:2>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<extendedcrafting:material>,<extendedcrafting:material>]);
mods.thermalexpansion.Compactor.addPressRecipe(<extendedcrafting:material:2>, <extendedcrafting:material>, 8000);
mods.immersiveengineering.MetalPress.addRecipe(<extendedcrafting:material:2>, <extendedcrafting:material>, <immersiveengineering:mold>, 8000);

# Uranium Plate
recipes.remove(<immersiveengineering:metal:35>);
recipes.addShapeless(<immersiveengineering:metal:35>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<immersiveengineering:metal:5>,<immersiveengineering:metal:5>]);

# Thaumium Plate
recipes.remove(<thaumcraft:plate:2>);
recipes.addShapeless(<thaumcraft:plate:2>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<thaumcraft:ingot>,<thaumcraft:ingot>]);

# Brass Plate
recipes.remove(<thaumcraft:plate>);
recipes.addShapeless(<thaumcraft:plate>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<thaumcraft:ingot:2>,<thaumcraft:ingot:2>]);

# Void Metal Plate
recipes.remove(<thaumcraft:plate:3>);
recipes.addShapeless(<thaumcraft:plate:3>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<thaumcraft:ingot:1>,<thaumcraft:ingot:1>]);

# Cold Iron Plate
recipes.remove(<bewitchment:cold_iron_plate>);
recipes.addShapeless(<bewitchment:cold_iron_plate>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<bewitchment:cold_iron_ingot>,<bewitchment:cold_iron_ingot>]);

# Skyfather Plate
recipes.remove(<lightningcraft:plate:8>);
recipes.addShapeless(<lightningcraft:plate:8>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<lightningcraft:ingot:1>,<lightningcraft:ingot:1>]);

# Mystic Plate
recipes.remove(<lightningcraft:plate:9>);
recipes.addShapeless(<lightningcraft:plate:9>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<lightningcraft:ingot:2>,<lightningcraft:ingot:2>]);

# Removing TC Casting recipes
val noCastPlates = [<thermalfoundation:material:32>,<thermalfoundation:material:33>,<thermalfoundation:material:320>,<thermalfoundation:material:321>,<thermalfoundation:material:322>,<thermalfoundation:material:323>,<thermalfoundation:material:324>,<thermalfoundation:material:325>,<thermalfoundation:material:326>,<thermalfoundation:material:327>,<thermalfoundation:material:328>,<thermalfoundation:material:352>,<thermalfoundation:material:353>,<thermalfoundation:material:354>,<thermalfoundation:material:355>,<thermalfoundation:material:356>,<thermalfoundation:material:357>,<thermalfoundation:material:358>,<thermalfoundation:material:359>,<immersiveengineering:metal:35>,<lightningcraft:plate:7>,<lightningcraft:plate:8>,<lightningcraft:plate:9>,<thaumcraft:plate>,<thaumcraft:plate:2>] as IItemStack[];
val respLiquids = [<liquid:iron>,<liquid:gold>,<liquid:copper>,<liquid:tin>,<liquid:silver>,<liquid:lead>,<liquid:aluminum>,<liquid:nickel>,<liquid:platinum>,<liquid:iridium>,<liquid:mithril>,<liquid:steel>,<liquid:electrum>,<liquid:invar>,<liquid:bronze>,<liquid:constantan>,<liquid:signalum>,<liquid:lumium>,<liquid:enderium>,<liquid:uranium>,<liquid:electricium>,<liquid:skyfather>,<liquid:mystic>,<liquid:brass>,<liquid:thaumium>] as ILiquidStack[];
for i, plate in noCastPlates {
	mods.tconstruct.Casting.removeTableRecipe(plate, respLiquids[i]);
}

print("ENDING Plates.zs");
