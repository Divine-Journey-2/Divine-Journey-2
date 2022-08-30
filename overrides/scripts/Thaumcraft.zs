# Author: Atricos
# Research Strings can be found in Thaumcraft.jar/thaumcraft/common/config/ConfigRecipes.class

import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.SalisMundus;
import crafttweaker.block.IBlock;
import mods.thaumcraft.Crucible;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.tconstruct.Alloy;
import mods.thaumcraft.Infusion;

print("STARTING Thaumcraft.zs");

# Cinderpearl into Blaze Powder is too OP
recipes.removeShaped(<minecraft:blaze_powder>, [[<thaumcraft:cinderpearl>]]);

# Thaumonomicon tooltip
<thaumcraft:thaumonomicon>.addTooltip(format.red(format.bold("Warning:")) + format.white(format.bold(" Recipes shown may be incorrect.")));
<thaumcraft:thaumonomicon>.addTooltip(format.white(format.bold("Always refer to JEI when crafting.")));

# Salis Mundus
# Original in OreProcessingAdditions.zs, duplication here
recipes.remove(<thaumcraft:salis_mundus>);
recipes.addShapeless(<thaumcraft:salis_mundus> * 2, [<thaumcraft:salis_mundus>,<botania:quartz:3>,<botania:manaresource:8>,<abyssalcraft:methane>,<contenttweaker:crystallized_mana_shard>]);

# Arcane Workbench
mods.thaumcraft.SalisMundus.removeSingleConversion(<thaumcraft:arcane_workbench>);
mods.thaumcraft.SalisMundus.addSingleConversion(<extendedcrafting:ender_crafter>.asBlock(), <thaumcraft:arcane_workbench>, "FIRSTSTEPS@1");
<thaumcraft:arcane_workbench>.addTooltip(format.white("Created by Right Clicking on an Extended Crafting"));
<thaumcraft:arcane_workbench>.addTooltip(format.white("Ender Crafter with some ") + format.lightPurple("Salis Mundus") + format.white("."));

# Thaumometer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:thaumometer", "FIRSTSTEPS@2", 20, [<aspect:aer>,<aspect:aqua>,<aspect:ordo>,<aspect:perditio>,<aspect:terra>,<aspect:ignis>], <thaumcraft:thaumometer>, [[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<botania:lens:15>,<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<contenttweaker:holy_core>]]);

# Crucible
mods.thaumcraft.SalisMundus.removeSingleConversion(<thaumcraft:crucible>);
mods.thaumcraft.SalisMundus.addSingleConversion(<evilcraft:purifier>.asBlock(), <thaumcraft:crucible>, "UNLOCKALCHEMY@1");
<thaumcraft:crucible>.addTooltip(format.white("Created by Right Clicking on an EvilCraft"));
<thaumcraft:crucible>.addTooltip(format.white("Purifier with some ") + format.lightPurple("Salis Mundus") + format.white("."));

# Wood Table
recipes.remove(<thaumcraft:table_wood>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablewood", "", 5, [], <thaumcraft:table_wood>, [[<botania:livingwood:5>,<botania:livingwood:5>,<botania:livingwood:5>],[<botania:livingwood:5>,null,<botania:livingwood:5>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablewood2", "", 5, [], <thaumcraft:table_wood>, [[null,null,null],[<botania:livingwood:5>,<botania:livingwood:5>,<botania:livingwood:5>],[<botania:livingwood:5>,null,<botania:livingwood:5>]]);

# Research Table
<thaumcraft:research_table>.addTooltip(format.white("Created by placing Scribing Tools"));
<thaumcraft:research_table>.addTooltip(format.white("on a Thaumcraft Wood Table."));

# Scribing Tools
recipes.removeShapeless(<thaumcraft:scribing_tools>, [<*>,<*>,<*>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("scribingtoolscraft1", "", 10, [], <thaumcraft:scribing_tools>, [<mysticalagriculture:crafting:24>,<botania:vial:1>,<botania:manaresource:22>,<divinerpg:kraken_skin>,<contenttweaker:rune_of_pride>]);
<thaumcraft:scribing_tools>.addTooltip(format.gray(format.italic("Fill me up with some Ink to complete my Research!")));

# Yellow Nitor
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:nitor", "UNLOCKALCHEMY@3", <thaumcraft:nitor_yellow>, <thermalfoundation:storage_alloy:6>, [<aspect:potentia> * 20, <aspect:ignis> * 20, <aspect:lux> * 20]);

# Quartz Sliver
recipes.remove(<thaumcraft:nugget:9>);
recipes.removeShaped(<minecraft:quartz>, [[<thaumcraft:nugget:9>,<thaumcraft:nugget:9>,<thaumcraft:nugget:9>],[<thaumcraft:nugget:9>,<thaumcraft:nugget:9>,<thaumcraft:nugget:9>],[<thaumcraft:nugget:9>,<thaumcraft:nugget:9>,<thaumcraft:nugget:9>]]);
# Rest is in OreProcessingAdditions.zs

# Vis Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:vis_resonator", "UNLOCKAUROMANCY@2", 10, [<aspect:aer>,<aspect:aqua>], <thaumcraft:vis_resonator>, [[<botania:shimmerrock>,<botania:shimmerrock>,<botania:shimmerrock>],[<botania:shimmerrock>,<contenttweaker:reduction_core>,<botania:shimmerrock>],[<botania:shimmerrock>,<botania:shimmerrock>,<botania:shimmerrock>]]);

# Caster's Gauntlet
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:caster_basic", "UNLOCKAUROMANCY@2", 50, [<aspect:aer> * 10,<aspect:aqua> * 10,<aspect:ordo> * 10,<aspect:perditio> * 10,<aspect:terra> * 10,<aspect:ignis> * 10], <thaumcraft:caster_basic>, [[null,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<immersiveengineering:toolupgrade:12>,<contenttweaker:infused_magical_core>],[<contenttweaker:magical_leather>,<thaumcraft:thaumometer>,<contenttweaker:magical_leather>]]);

# Blank Lesser Focus
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:focus_1>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:focus_1", "UNLOCKAUROMANCY", <thaumcraft:focus_1>, <contenttweaker:base_focal_sphere>, [<aspect:vitreus> * 40, <aspect:praecantatio> * 20, <aspect:instrumentum> * 20, <aspect:auram> * 10]);

# Alumentum
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:alumentum>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:alumentum", "ALUMENTUM", <thaumcraft:alumentum>, <abyssalcraft:crystal:22>, [<aspect:potentia> * 5, <aspect:ignis> * 2, <aspect:metallum> * 2, <aspect:perditio> * 2]);

# Enchanted Fabric
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:fabric>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:fabric", "UNLOCKINFUSION", 2, [<aspect:ordo> * 1], <thaumcraft:fabric>, [[<botania:manaresource:22>,<thaumcraft:salis_mundus>,<botania:manaresource:22>],[<thaumcraft:alumentum>,<botania:manaresource:1>,<thaumcraft:alumentum>],[<botania:manaresource:22>,<thaumcraft:salis_mundus>,<botania:manaresource:22>]]);

# Thaumaturge's Robe
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_chest", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_chest>, [[<thaumcraft:fabric>,<botania:manaweavechest>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>]]);

# Thaumaturge's Leggings
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_legs", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_legs>, [[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweavelegs>,<thaumcraft:fabric>],[<thaumcraft:fabric>,null,<thaumcraft:fabric>]]);

# Thaumaturge's Boots
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_boots", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_boots>, [[<thaumcraft:fabric>,null,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweaveboots>,<thaumcraft:fabric>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_boots", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_boots>, [[null,null,null],[<thaumcraft:fabric>,null,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweaveboots>,<thaumcraft:fabric>]]);

# Stone Table
recipes.remove(<thaumcraft:table_stone>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablestone", "", 2, [], <thaumcraft:table_stone>, [[<abyssalcraft:stone:5>,<abyssalcraft:stone:5>,<abyssalcraft:stone:5>],[<abyssalcraft:stone:5>,<thaumcraft:table_wood>,<abyssalcraft:stone:5>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablestone2", "", 2, [], <thaumcraft:table_stone>, [[null,null,null],[<abyssalcraft:stone:5>,<abyssalcraft:stone:5>,<abyssalcraft:stone:5>],[<abyssalcraft:stone:5>,<thaumcraft:table_wood>,<abyssalcraft:stone:5>]]);

# Arcane Stone
recipes.removeShaped(<thaumcraft:stone_arcane>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thaumcraft:stone_arcane> * 3, <bloodmagic:blood_rune>, null, 200, 720, [<botania:shimmerrock>,<thaumcraft:crystal_essence>]);
EIOAlloySmelter.addRecipe(<thaumcraft:stone_arcane> * 3, [<bloodmagic:blood_rune>,<botania:shimmerrock>,<thaumcraft:crystal_essence>], 32000);

# Focal Manipulator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:wand_workbench>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:wand_workbench", "BASEAUROMANCY@2", 50, [<aspect:terra> * 10,<aspect:ignis> * 5], <thaumcraft:wand_workbench>, [[<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>],[<thaumcraft:stone_arcane>,<thaumcraft:vis_resonator>,<thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>,<thaumcraft:table_stone>,<thaumcraft:stone_arcane>]]);

# Alchemical Brass Ingot
mods.thermalexpansion.InductionSmelter.removeRecipe(<alchemistry:ingot:30>, <thermalfoundation:material:64> * 3);
mods.thermalexpansion.InductionSmelter.removeRecipe(<alchemistry:ingot:30>, <thermalfoundation:material:128> * 3);
mods.tconstruct.Alloy.removeRecipe(<liquid:brass>);
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot:2>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:brassingot", "METALLURGY@1", <thaumcraft:ingot:2>, <botania:manaresource:7>, [<aspect:instrumentum> * 10, <aspect:cognitio> * 10]);

# Mundane Amulet
recipes.remove(<thaumcraft:baubles:0>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<thaumcraft:baubles:0>, 12000, <botania:cloudpendant>, [<thaumcraft:ingot:2>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]);

# Mundane Ring
recipes.remove(<thaumcraft:baubles:1>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<thaumcraft:baubles:1>, 12000, <botania:dodgering>, [<thaumcraft:ingot:2>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]);

# Mundane Belt
recipes.remove(<thaumcraft:baubles:2>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<thaumcraft:baubles:2>, 12000, <botania:travelbelt>, [<thaumcraft:ingot:2>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]);

# Focus Pouch
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:focus_pouch>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:FocusPouch", "FOCUSPOUCH", 20, [<aspect:ordo> * 10,<aspect:aer> * 5], <thaumcraft:focus_pouch>, [[<contenttweaker:magical_leather>,<thaumcraft:ingot:2>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<thaumcraft:baubles:2>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]]);

# Recharge Pedestal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:rechargepedestal", "RECHARGEPEDESTAL", 50, [<aspect:ignis> * 5,<aspect:aer> * 5,<aspect:perditio> * 5], <thaumcraft:recharge_pedestal>, [[null,<contenttweaker:rune_of_greed>,null],[<actuallyadditions:block_crystal_empowered:2>,<thaumcraft:vis_resonator>,<actuallyadditions:block_crystal_empowered:2>],[<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>]]);

# Workbench Charger
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
#<thaumcraft:arcane_workbench_charger>.addTooltip("Item disabled. Causes irreversible");
#<thaumcraft:arcane_workbench_charger>.addTooltip("crashes and world corruption.");
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:workbenchcharger", "WORKBENCHCHARGER", 350, [<aspect:ordo> * 5,<aspect:aer> * 5,<aspect:aqua> * 5], <thaumcraft:arcane_workbench_charger>, [[null,<thaumcraft:vis_resonator>,null],[<thaumcraft:plank_greatwood>,null,<thaumcraft:plank_greatwood>],[<thaumcraft:ingot:2>,null,<thaumcraft:ingot:2>]]);
<thaumcraft:arcane_workbench_charger>.addTooltip(format.white("Find the perfect chunk in a Magical"));
<thaumcraft:arcane_workbench_charger>.addTooltip(format.white("Forest biome and have a full set of"));
<thaumcraft:arcane_workbench_charger>.addTooltip(format.white("Thaumaturge Armor on to craft this!"));

# Glass Phial
recipes.remove(<thaumcraft:phial>);
recipes.addShaped(<thaumcraft:phial> * 4, [[<botania:elfglass>,<contenttweaker:intensive_catalyst>,<botania:elfglass>],[null,<botania:elfglass>,null]]);

# Mirrored Glass
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mirrored_glass>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:mirrorglass", "BASEARTIFICE", 30, [<aspect:aqua> * 2,<aspect:ordo> * 2,<aspect:aer> * 2], <thaumcraft:mirrored_glass>, [[<thaumcraft:quicksilver>,<thaumcraft:quicksilver>,<thaumcraft:quicksilver>],[<thaumcraft:quicksilver>,<contenttweaker:purified_tablet>,<thaumcraft:quicksilver>],[<thaumcraft:quicksilver>,<thaumcraft:quicksilver>,<thaumcraft:quicksilver>]]);

# Sanity Checker
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:sanity_checker>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:sanitychecker", "WARP", 50, [<aspect:ordo> * 10,<aspect:perditio> * 10], <thaumcraft:sanity_checker>, [[<thaumcraft:brain>,<thaumcraft:ingot:2>,null],[<thaumcraft:mirrored_glass>,<contenttweaker:rune_of_deception>,<thaumcraft:ingot:2>],[<thaumcraft:brain>,<thaumcraft:ingot:2>,null]]);

# Essentia Filter
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:TubeFilter", "TUBES", 5, [<aspect:aqua> * 2], <thaumcraft:filter> * 3, [[empowered_glod_crystal,<thaumcraft:plank_silverwood>,empowered_glod_crystal],[empowered_glod_crystal,<contenttweaker:rune_of_water>,empowered_glod_crystal],[empowered_glod_crystal,<thaumcraft:plank_silverwood>,empowered_glod_crystal]]);

# Rare Earths
<thaumcraft:nugget:10>.addTooltip(format.gray(format.italic("<Hold Shift for info on how to acquire>")));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Dropped rarely by any of the following Ores:"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Coal, Redstone, Quartz, Amber, Diamond;"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("in ascending order of drop rate."));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Alternatively, smelt any of the following Ores"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("in the Infernal Furnace: Iron, Gold, Silver,"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Copper, Tin, Lead, Cinnabar."));

# Thaumium Ingot
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:thaumiumingot", "METALLURGY@2", <thaumcraft:ingot>, <thaumcraft:ingot:2>, [<aspect:praecantatio> * 10,<aspect:metallum> * 10,<aspect:alkimia> * 10,<aspect:exanimis> * 10]);

# Goggles of Revealing
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Goggles", "UNLOCKARTIFICE", 50, [<aspect:ordo> * 15,<aspect:perditio> * 5], <thaumcraft:goggles>, [[<contenttweaker:magical_leather>,<thaumcraft:ingot:2>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,null,<contenttweaker:magical_leather>],[<thaumcraft:thaumometer>,<thaumcraft:ingot:2>,<thaumcraft:thaumometer>]]);

# Simple Arcane Mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:mechanism_simple", "BASEARTIFICE", 5, [<aspect:ignis>,<aspect:perditio>], <thaumcraft:mechanism_simple>, [[null,<thaumcraft:plate>,null],[<thaumcraft:plate>,<enderio:item_material:73>,<thaumcraft:plate>],[null,<simplyjetpacks:metaitemmods:16>,null]]);

# Arcane Lamp
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:lamp_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:ArcaneLamp", "ARCANELAMP", 15, [<aspect:ignis> * 2,<aspect:aer> * 2], <thaumcraft:lamp_arcane>, [[null,<thaumcraft:plate>,null],[<thaumcraft:plate>,<thaumcraft:amber_block>,<thaumcraft:plate>],[null,<thaumcraft:plate>,null]]);

# Hungry Chest
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:hungry_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:HungryChest", "HUNGRYCHEST", 10, [<aspect:terra> * 2,<aspect:aqua> * 2], <thaumcraft:hungry_chest>, [[<thaumcraft:log_greatwood>,<ore:trapdoorWood>,<thaumcraft:log_greatwood>],[<thaumcraft:plank_greatwood>,<minecraft:chest>,<thaumcraft:plank_greatwood>],[<thaumcraft:log_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:log_greatwood>]]);

# Arcane Bellows
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:bellows>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Bellows", "BELLOWS", 5, [<aspect:aer> * 8,<aspect:ignis>], <thaumcraft:bellows>, [[<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>],[<contenttweaker:magical_leather>,<thaumcraft:ingot:2>,<contenttweaker:magical_leather>],[<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>]]);

# Grappler can crash the game
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun_spool>);
<thaumcraft:grapple_gun_spool>.addTooltip("Item disabled. It can crash the game.");
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun_tip>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun>);

# Morphic Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:morphic_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:MorphicResonator", "BASEALCHEMY", 20, [<aspect:aer> * 4,<aspect:ignis> * 2,<aspect:ordo>,<aspect:perditio>], <thaumcraft:morphic_resonator>, [[<ore:blockGlassColorless>,<thaumcraft:nugget:10>,<ore:blockGlassColorless>],[<thaumcraft:plate>,<thaumcraft:vis_resonator>,<thaumcraft:plate>],[<ore:blockGlassColorless>,<thaumcraft:nugget:10>,<ore:blockGlassColorless>]]);

# Thaumium Sword
recipes.remove(<thaumcraft:thaumium_sword>);
recipes.addShaped(<thaumcraft:thaumium_sword>, [[<thaumcraft:ingot>],[<thaumcraft:ingot>],[<botania:elementiumsword>]]);

# Thaumium Pickaxe
recipes.remove(<thaumcraft:thaumium_pick>);
recipes.addShaped(<thaumcraft:thaumium_pick>, [[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>],[null,<botania:elementiumpick>,null],[null,<evilcraft:dark_stick>,null]]);

# Thaumium Shovel
recipes.remove(<thaumcraft:thaumium_shovel>);
recipes.addShaped(<thaumcraft:thaumium_shovel>, [[<thaumcraft:ingot>],[<botania:elementiumshovel>],[<evilcraft:dark_stick>]]);

# Thaumium Axe
recipes.remove(<thaumcraft:thaumium_axe>);
recipes.addShapedMirrored(<thaumcraft:thaumium_axe>, [[<thaumcraft:ingot>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<botania:elementiumaxe>],[null,<evilcraft:dark_stick>]]);

# Thaumium Hoe
recipes.remove(<thaumcraft:thaumium_hoe>);
recipes.addShapedMirrored(<thaumcraft:thaumium_hoe>, [[<thaumcraft:ingot>,<thaumcraft:ingot>],[null,<abyssalcraft:dreadiumhoe>],[null,<evilcraft:dark_stick>]]);

# Thaumium Helm
recipes.remove(<thaumcraft:thaumium_helm>);
recipes.addShaped(<thaumcraft:thaumium_helm>, [[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<botania:terrasteelhelm>,<thaumcraft:ingot>]]);

# Thaumium Chestplate
recipes.remove(<thaumcraft:thaumium_chest>);
recipes.addShaped(<thaumcraft:thaumium_chest>, [[<thaumcraft:ingot>,<botania:terrasteelchest>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>]]);

# Thaumium Leggings
recipes.remove(<thaumcraft:thaumium_legs>);
recipes.addShaped(<thaumcraft:thaumium_legs>, [[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<botania:terrasteellegs>,<thaumcraft:ingot>],[<thaumcraft:ingot>,null,<thaumcraft:ingot>]]);

# Thaumium Boots
recipes.remove(<thaumcraft:thaumium_boots>);
recipes.addShaped(<thaumcraft:thaumium_boots>, [[<thaumcraft:ingot>,null,<thaumcraft:ingot>],[<thaumcraft:ingot>,<botania:terrasteelboots>,<thaumcraft:ingot>]]);

# Magic Tallow
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:tallow>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:hedge_tallow", "HEDGEALCHEMY@1", <thaumcraft:tallow>, <thaumcraft:flesh_block>, [<aspect:ignis> * 10,<aspect:sensus> * 10,<aspect:fabrico> * 10,<aspect:perditio> * 5]);

# Essentia Smeltery
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:EssentiaSmelter", "BELLOWS", 40, [<aspect:ignis> * 20,<aspect:aer> * 4], <thaumcraft:smelter_basic>, [[<thaumcraft:plate>,<thaumcraft:crucible>,<thaumcraft:plate>],[<thaumcraft:plate>,<enderio:block_enhanced_alloy_smelter>,<thaumcraft:plate>],[<thaumcraft:plate>,<enderio:block_enhanced_alloy_smelter>,<thaumcraft:plate>]]);

# Vis Generator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_generator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:VisGenerator", "VISGENERATOR", 25, [<aspect:ignis> * 10,<aspect:aer> * 5], <thaumcraft:vis_generator>, [[<thaumcraft:log_greatwood>,<thaumcraft:plate>,<thaumcraft:log_greatwood>],[<thaumcraft:nugget:10>,<thaumcraft:vis_resonator>,<thaumcraft:nugget:10>],[<thaumcraft:log_greatwood>,<enderio:block_stirling_generator>,<thaumcraft:log_greatwood>]]);

# Arcane Ear
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_ear>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:ArcaneEar", "ARCANEEAR", 10, [<aspect:aer> * 8], <thaumcraft:arcane_ear>, [[<thaumcraft:plate>,<thaumcraft:plate>,<thaumcraft:plate>],[null,<thaumcraft:mechanism_simple>,null],[<thaumcraft:slab_greatwood>,<thaumcraft:slab_greatwood>,<thaumcraft:slab_greatwood>]]);

# Thaumic Dioptra
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:dioptra>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:dioptra", "DIOPTRA", 30, [<aspect:aer> * 10,<aspect:aqua> * 10], <thaumcraft:dioptra>, [[<thaumcraft:stone_arcane>,<thaumcraft:vis_resonator>,<thaumcraft:stone_arcane>],[<thaumcraft:plate>,<thaumcraft:thaumometer>,<thaumcraft:plate>],[<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>]]);

# Arcane Pattern Crafter
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:pattern_crafter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:patterncrafter", "ARCANEPATTERNCRAFTER", 30, [<aspect:terra> * 8,<aspect:aqua> * 8,<aspect:ordo> * 8], <thaumcraft:pattern_crafter>, [[null,<minecraft:hopper>,null],[<thaumcraft:mechanism_simple>,<appliedenergistics2:material:52>,<thaumcraft:mechanism_simple>],[null,<thaumcraft:vis_resonator>,null]]);

# Arcane Levitator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:levitator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Levitator", "LEVITATOR", 35, [<aspect:aer> * 16], <thaumcraft:levitator>, [[<thaumcraft:plank_greatwood>,<thaumcraft:plate:2>,<thaumcraft:plank_greatwood>],[<thaumcraft:mechanism_simple>,<thaumcraft:nitor_yellow>,<thaumcraft:mechanism_simple>],[<thaumcraft:plank_greatwood>,<thaumcraft:mechanism_simple>,<thaumcraft:plank_greatwood>]]);

# Complex Arcane Mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_complex>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:mechanism_complex", "BASEARTIFICE", 10, [<aspect:ignis> * 3,<aspect:perditio> * 3,<aspect:aer>], <thaumcraft:mechanism_complex>, [[null,<thaumcraft:mechanism_simple>,null],[<thaumcraft:plate:2>,<contenttweaker:rune_of_wrath>,<thaumcraft:plate:2>],[null,<thaumcraft:mechanism_simple>,null]]);

# Liquid Death Bucket
mods.thaumcraft.Crucible.removeRecipe(<forge:bucketfilled>.withTag({FluidName: "liquid_death", Amount: 1000}));
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:LiquidDeath", "LIQUIDDEATH", <forge:bucketfilled>.withTag({FluidName: "liquid_death", Amount: 1000}), <minecraft:bucket>, [<aspect:mortuus> * 100,<aspect:perditio> * 75,<aspect:alkimia> * 25,<aspect:spiritus> * 25,<aspect:alienis> * 10]);

# Everfull Urn
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:everfull_urn>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:EverfullUrn", "EVERFULLURN", <thaumcraft:everfull_urn>, <roots:unending_bowl>, [<aspect:terra> * 10,<aspect:fabrico> * 10]);

# Arcane Alembic
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:alembic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Alembic", "ESSENTIASMELTER", 40, [<aspect:aqua> * 15,<aspect:ignis> * 10], <thaumcraft:alembic>, [[<thaumcraft:plank_greatwood>,<thaumcraft:filter>,<thaumcraft:plank_greatwood>],[<thaumcraft:plate>,<bloodmagic:blood_tank>,<thaumcraft:plate>],[<thaumcraft:plank_greatwood>,<thaumcraft:filter>,<thaumcraft:plank_greatwood>]]);

# Warded Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_normal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:WardedJar", "WARDEDJARS", 5, [<aspect:aqua> * 5], <thaumcraft:jar_normal>, [[null,<thaumcraft:slab_greatwood>,null],[<thaumcraft:phial>,<contenttweaker:rune_of_water>,<thaumcraft:phial>],[null,<thaumcraft:phial>,null]]);

# Void Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_void>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:JarVoid", "WARDEDJARS", 10, [<aspect:perditio> * 5], <thaumcraft:jar_void>, [<thaumcraft:jar_normal>,<bloodmagic:component:4>]);

# Brass Lid Brace
recipes.remove(<thaumcraft:jar_brace>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("BrassBrace", "WARDEDJARS", 10, [<aspect:aer> * 2], <thaumcraft:jar_brace>, [[<thaumcraft:nugget:8>,<thaumcraft:plank_greatwood>,<thaumcraft:nugget:8>],[<thaumcraft:plank_greatwood>,null,<thaumcraft:plank_greatwood>],[<thaumcraft:nugget:8>,<thaumcraft:plank_greatwood>,<thaumcraft:nugget:8>]]);

# Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Tube", "TUBES", 10, [<aspect:aqua> * 3,<aspect:aer> * 2], <thaumcraft:tube> * 16, [[<enderio:item_alloy_ingot:6>,<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_ingot:6>],[<thaumcraft:quicksilver>,<contenttweaker:rune_of_water>,<thaumcraft:quicksilver>],[<enderio:item_alloy_ingot:6>,<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_ingot:6>]]);

# Restricted Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_restrict>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:TubeRestrict", "TUBES", 10, [<aspect:terra> * 3], <thaumcraft:tube_restrict>, [<thaumcraft:tube>,<bloodmagic:component:9>]);

# Directional Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_oneway>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:TubeOneway", "TUBES", 10, [<aspect:aqua> * 3], <thaumcraft:tube_oneway>, [<thaumcraft:tube>,<bloodmagic:component:31>]);

# Filtered Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:Filter", "TUBES", 10, [<aspect:ordo> * 3], <thaumcraft:tube_filter>, [<thaumcraft:tube>,<thaumcraft:filter>]);

# Essentia Valve
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_valve>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:TubeValve", "TUBES", 10, [<aspect:aer> * 3], <thaumcraft:tube_valve>, [<thaumcraft:tube>,<mekanism:basicblock2:8>]);

# Essentia Buffer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_buffer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:TubeBuffer", "TUBES", 25, [<aspect:ignis> * 5,<aspect:aqua> * 5,<aspect:aer> * 5,<aspect:ordo> * 5], <thaumcraft:tube_buffer>, [[<thaumcraft:phial>,<thaumcraft:tube_valve>,<thaumcraft:phial>],[<thaumcraft:tube>,<thaumcraft:plate>,<thaumcraft:tube>],[<thaumcraft:phial>,<thaumcraft:tube_restrict>,<thaumcraft:phial>]]);

# Blank Label
recipes.removeShapeless(<thaumcraft:label>, [<*>,<*>,<*>,<*>,<*>,<*>]);
mods.thaumcraft.Crucible.registerRecipe("JarLabel", "", <thaumcraft:label>, <abyssalcraft:engraving_blank>, [<aspect:ordo> * 20,<aspect:cognitio> * 15]);

# Purifying Bath Salts
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:bath_salts>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:BathSalts", "BATHSALTS", <thaumcraft:bath_salts>, <thaumcraft:salis_mundus>, [<aspect:victus> * 80, <aspect:aqua> * 60, <aspect:cognitio> * 60, <aspect:sensus> * 40, <aspect:ordo> * 40]);
<thaumcraft:bath_salts>.addTooltip(format.white("Place this into an Arcane Spa underneath a small pool"));
<thaumcraft:bath_salts>.addTooltip(format.white("of water to turn the Water into Purifying Liquid."));

# Sanitizing Soap
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:sanity_soap>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:SaneSoap", "SANESOAP", <thaumcraft:sanity_soap>, <contenttweaker:vibrant_slate>, [<aspect:cognitio> * 100, <aspect:victus> * 100, <aspect:sensus> * 80, <aspect:alienis> * 60, <aspect:fabrico> * 40]);

# Arcane Spa
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:spa>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:ArcaneSpa", "ARCANESPA", 50, [<aspect:aqua> * 30,<aspect:ordo> * 5], <thaumcraft:spa>, [[<botania:quartztypelavender>,<thaumcraft:jar_normal>,<botania:quartztypelavender>],[<thaumcraft:stone_arcane>,<thaumcraft:mechanism_complex>,<thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>]]);

# Runic Matrix
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:InfusionMatrix", "INFUSION@2", 150, [<aspect:aer> * 64,<aspect:aqua> * 64,<aspect:ordo> * 64,<aspect:perditio> * 64,<aspect:terra> * 64,<aspect:ignis> * 64], <thaumcraft:infusion_matrix>, [[<thaumcraft:stone_arcane>,<contenttweaker:matrix_multiplication_unit>,<thaumcraft:stone_arcane>],[<thaumcraft:metal_thaumium>,<botania:dice>,<thaumcraft:metal_thaumium>],[<thaumcraft:stone_arcane>,<alchemistry:ingot:11>,<thaumcraft:stone_arcane>]]);

# Essentia Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Resonator", "TUBES", 50, [<aspect:aer> * 5,<aspect:aqua> * 5,<aspect:ordo> * 2], <thaumcraft:resonator>, [[null,<immersiveengineering:material:1>,null],[null,<thaumcraft:vis_resonator>,<immersiveengineering:material:1>],[<thaumcraft:ingot:2>,null,null]]);

# Arcane Pedestal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:pedestal_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:ArcanePedestal", "INFUSION", 20, [<aspect:ordo> * 8,<aspect:terra> * 6], <thaumcraft:pedestal_arcane>, [[<bloodmagic:ritual_stone>,<bloodmagic:ritual_stone>,<bloodmagic:ritual_stone>],[null,<extendedcrafting:pedestal>,null],[<bloodmagic:ritual_stone>,<bloodmagic:ritual_stone>,<bloodmagic:ritual_stone>]]);

# Alchemical Construct
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:AlchemicalConstruct", "TUBES", <thaumcraft:metal_alchemical>, 0, [<aspect:alkimia> * 20, <aspect:machina> * 20], <contenttweaker:cosmic_alloy>, [<thaumcraft:tube>,<thaumcraft:stone_arcane>,<thaumcraft:tube_valve>,<thaumcraft:stone_arcane>,<thaumcraft:tube>,<thaumcraft:stone_arcane>,<thaumcraft:tube_valve>,<thaumcraft:stone_arcane>]);

# Advanced Alchemical Construct
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("contenttweaker:advanced_alchemical_construct2", "", 200, [<aspect:terra>,<aspect:ignis>], <thaumcraft:metal_alchemical_advanced>, [[null,<thaumcraft:metal_alchemical>,null],[<thaumcraft:plate:3>,<contenttweaker:primordial_fragment>,<thaumcraft:plate:3>],[null,<thaumcraft:metal_alchemical>,null]]);

# Auxillary Slurry Pump
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_aux>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:SmelterAux", "IMPROVEDSMELTING", 40, [<aspect:aer> * 5,<aspect:ignis> * 5], <thaumcraft:smelter_aux>, [[<thaumcraft:plank_greatwood>,<thaumcraft:tube_filter>,<thaumcraft:plank_greatwood>],[<thaumcraft:bellows>,<thaumcraft:metal_alchemical>,<thaumcraft:bellows>],[<thaumcraft:plank_greatwood>,<industrialforegoing:fluid_pump>,<thaumcraft:plank_greatwood>]]);

# Auxillary Venting Port
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_vent>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:SmelterVent", "IMPROVEDSMELTING2", 40, [<aspect:aer> * 5,<aspect:perditio> * 5], <thaumcraft:smelter_vent>, [[<thaumcraft:plank_greatwood>,<thaumcraft:plate>,<thaumcraft:plank_greatwood>],[<thaumcraft:filter>,<thaumcraft:metal_alchemical>,<thaumcraft:filter>],[<thaumcraft:plank_greatwood>,<thaumcraft:plate>,<thaumcraft:plank_greatwood>]]);

# Essentia Centrifuge
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:centrifuge>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Centrifuge", "CENTRIFUGE", 80, [<aspect:ordo> * 16,<aspect:perditio> * 16], <thaumcraft:centrifuge>, [[<thaumcraft:plank_greatwood>,<thaumcraft:mechanism_simple>,<thaumcraft:plank_greatwood>],[<thaumcraft:morphic_resonator>,<thaumcraft:metal_alchemical>,<thaumcraft:morphic_resonator>],[<thaumcraft:plank_greatwood>,<thaumcraft:mechanism_complex>,<thaumcraft:plank_greatwood>]]);

# Thaumium Essentia Smeltery
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_thaumium>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:EssentiaSmelterThaumium", "ESSENTIASMELTERTHAUMIUM", 160, [<aspect:ignis> * 40,<aspect:aer> * 8], <thaumcraft:smelter_thaumium>, [[<thaumcraft:plate>,<thaumcraft:smelter_basic>,<thaumcraft:plate>],[<thaumcraft:plate:2>,<thaumcraft:metal_alchemical>,<thaumcraft:plate:2>],[<thaumcraft:plate:2>,<thaumcraft:metal_alchemical>,<thaumcraft:plate:2>]]);

# Clockwork Mind
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mind>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:MindClockwork", "MINDCLOCKWORK@2", 20, [<aspect:ordo> * 4,<aspect:ignis> * 2,<aspect:terra> * 2], <thaumcraft:mind>, [[<botania:elfglass>,<thaumcraft:mechanism_simple>,<botania:elfglass>],[<botania:elfglass>,<contenttweaker:rune_of_fire>,<botania:elfglass>],[<thaumcraft:plate>,<thaumcraft:plate>,<thaumcraft:plate>]]);

# Mnemonic Matrix
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:brain_box>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:MnemonicMatrix", "THAUMATORIUM", 40, [<aspect:ordo> * 4,<aspect:terra> * 4], <thaumcraft:brain_box>, [[<thaumcraft:stone_arcane>,<thaumcraft:amber_block>,<thaumcraft:stone_arcane>],[<thaumcraft:amber_block>,<thaumcraft:mind>,<thaumcraft:amber_block>],[<thaumcraft:stone_arcane>,<thaumcraft:amber_block>,<thaumcraft:stone_arcane>]]);

# Potion Sprayer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:potion_sprayer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:PotionSprayer", "POTIONSPRAYER", 60, [<aspect:aqua> * 5,<aspect:ignis> * 5], <thaumcraft:potion_sprayer>, [[<thaumcraft:plate>,<thaumcraft:plank_greatwood>,<thaumcraft:plate>],[<thaumcraft:plank_greatwood>,<thaumcraft:metal_alchemical>,<thaumcraft:plank_greatwood>],[<thaumcraft:plate>,<bloodmagic:alchemy_table>,<thaumcraft:plate>]]);

# Filling Essentia Transfuser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_input>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:EssentiaTransportIn", "ESSENTIATRANSPORT", 100, [<aspect:aqua> * 24,<aspect:aer> * 24], <thaumcraft:essentia_input>, [[<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<alchemistry:ingot:11>],[<thaumcraft:smelter_aux>,<thaumcraft:metal_alchemical>,<thaumcraft:tube_buffer>],[<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<alchemistry:ingot:11>]]);

# Emptying Essentia Transfuser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_output>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:EssentiaTransportOut", "ESSENTIATRANSPORT", 100, [<aspect:aqua> * 24,<aspect:aer> * 24], <thaumcraft:essentia_output>, [[<alchemistry:ingot:11>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>],[<thaumcraft:tube_buffer>,<thaumcraft:metal_alchemical>,<thaumcraft:smelter_vent>],[<alchemistry:ingot:11>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>]]);

# Fancy Amulet
recipes.remove(<thaumcraft:baubles:4>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:fancyAmulet", "", <thaumcraft:baubles:4>, 1, [<aspect:desiderium> * 40, <aspect:instrumentum> * 10, <aspect:vitreus> * 10], <thaumcraft:baubles>, [<thaumcraft:ingot:2>,<actuallyadditions:item_crystal_empowered:2>,<thaumcraft:ingot:2>,empowered_glod_crystal]);

# Fancy Ring
recipes.remove(<thaumcraft:baubles:5>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:fancyRing", "", <thaumcraft:baubles:5>, 1, [<aspect:desiderium> * 40, <aspect:instrumentum> * 10, <aspect:vitreus> * 10], <thaumcraft:baubles:1>, [<thaumcraft:ingot:2>,<actuallyadditions:item_crystal_empowered:2>,<thaumcraft:ingot:2>,empowered_glod_crystal]);

# Fancy Belt
recipes.remove(<thaumcraft:baubles:6>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:fancyBelt", "", <thaumcraft:baubles:6>, 1, [<aspect:desiderium> * 40, <aspect:instrumentum> * 10, <aspect:vitreus> * 10], <thaumcraft:baubles:2>, [<thaumcraft:ingot:2>,<actuallyadditions:item_crystal_empowered:2>,<thaumcraft:ingot:2>,empowered_glod_crystal]);

# Blank Advanced Focus
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_2>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:focus_2", "FOCUSADVANCED@1", <thaumcraft:focus_2>, 3, [<aspect:vitreus> * 80,<aspect:praecantatio> * 40,<aspect:ordo> * 40,<aspect:instrumentum> * 40,<aspect:auram> * 20], <thaumcraft:focus_1>, [<alchemistry:ingot:11>,<thaumcraft:alumentum>,<thaumcraft:ingot>,<thaumcraft:vis_resonator>,<thaumcraft:alumentum>,<thaumcraft:ingot>]);

# Arcane Lamp
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:lamp_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:ArcaneLamp", "ARCANELAMP", 20, [<aspect:ignis> * 8,<aspect:aer> * 4], <thaumcraft:lamp_arcane>, [[<thaumcraft:plate>,<thaumcraft:amber_block>,<thaumcraft:plate>],[<thaumcraft:amber_block>,<thaumcraft:nitor_yellow>,<thaumcraft:amber_block>],[<thaumcraft:plate>,<thaumcraft:amber_block>,<thaumcraft:plate>]]);

# Lamp of Fertility
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:lamp_fertility>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:LampFertility", "LAMPFERTILITY", <thaumcraft:lamp_fertility>, 2, [<aspect:lux> * 40,<aspect:sol> * 20,<aspect:desiderium> * 20,<aspect:victus> * 20,<aspect:bestia> * 20], <thaumcraft:lamp_arcane>, [<thaumcraft:ingot>,<botania:quartz:3>,<thaumcraft:ingot>,<contenttweaker:rune_of_spring>]);

# Lamp of Growth
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:lamp_growth>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:LampGrowth", "LAMPGROWTH", <thaumcraft:lamp_growth>, 2, [<aspect:lux> * 40,<aspect:sol> * 20,<aspect:desiderium> * 20,<aspect:victus> * 20,<aspect:herba> * 20], <thaumcraft:lamp_arcane>, [<thaumcraft:ingot>,<botania:quartz:3>,<thaumcraft:ingot>,<contenttweaker:rune_of_summer>]);

# Magic Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mirror>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:Mirror", "MIRROR", <thaumcraft:mirror>, 1, [<aspect:permutatio> * 40,<aspect:motus> * 30,<aspect:desiderium> * 30,<aspect:vacuos> * 20], <thaumcraft:mirrored_glass>, [<contenttweaker:holy_core>,<contenttweaker:rune_of_deception>,<contenttweaker:holy_core>,<alchemistry:ingot:11>]);

# Magic Hand Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:hand_mirror>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:MirrorHand", "MIRRORHAND", <thaumcraft:hand_mirror>, 2, [<aspect:instrumentum> * 60,<aspect:motus> * 60,<aspect:humanus> * 20], <thaumcraft:mirror>, [<thaumcraft:ingot>,<contenttweaker:rune_of_greed>,<thaumcraft:ingot>,<botania:autocraftinghalo>]);

# Essentia Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mirror_essentia>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:MirrorEssentia", "MIRRORESSENTIA", <thaumcraft:mirror_essentia>, 1, [<aspect:motus> * 40,<aspect:aqua> * 40,<aspect:permutatio> * 30,<aspect:auram> * 20,<aspect:ordo> * 10], <thaumcraft:mirror>, [<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>,<contenttweaker:rune_of_lust>]);

# Automated Crossbow
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:turret>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:AutomatedCrossbow", "BASICTURRET", 60, [<aspect:aer> * 5], <thaumcraft:turret>, [[<botania:crystalbow>,<thaumcraft:mechanism_simple>,<thaumcraft:plate>],[<thaumcraft:plank_greatwood>,<thaumcraft:mind>,<thaumcraft:plank_greatwood>],[<thaumcraft:plank_greatwood>,null,<thaumcraft:plank_greatwood>]]);

# Advanced Automated Crossbow
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:turret:1>);
<thaumcraft:turret:1>.addTooltip(format.white("Item disabled. unmodifiable loot table."));

# Biothaumic Mind
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mind:1>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:MindBiothaumic", "MINDBIOTHAUMIC", <thaumcraft:mind:1>, 3, [<aspect:cognitio> * 60,<aspect:machina> * 40,<aspect:herba> * 30,<aspect:bestia> * 10], <thaumcraft:mind>, [<thaumcraft:brain>,<contenttweaker:rune_of_earth>,<thaumcraft:brain>,<thaumcraft:mechanism_complex>]);

# Arcane Bore
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:turret:2>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:ArcaneBore", "ARCANEBORE", <thaumcraft:turret:2>, 3, [<aspect:machina> * 120,<aspect:potentia> * 80,<aspect:ignis> * 60,<aspect:terra> * 60,<aspect:vacuos> * 40,<aspect:motus> * 40], <thaumcraft:turret>, [<thaumcraft:mechanism_complex>,<thaumcraft:morphic_resonator>,<thaumcraft:plate>,<thaumcraft:nugget:10>,<industrialforegoing:laser_drill>,<thaumcraft:mechanism_complex>,<thaumcraft:morphic_resonator>,<thaumcraft:plate>,<thaumcraft:nugget:10>,<industrialforegoing:laser_base>]);

# Headband of Curiosity
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:curiosity_band>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:CuriosityBand", "CURIOSITYBAND", <thaumcraft:curiosity_band>, 3, [<aspect:cognitio> * 200,<aspect:vinculum> * 150,<aspect:humanus> * 50,<aspect:volatus> * 50,<aspect:vacuos> * 50], <thaumcraft:baubles:6>, [<thaumcraft:scribing_tools>,<actuallyadditions:block_crystal_empowered:4>,<thaumcraft:scribing_tools>,<actuallyadditions:block_xp_solidifier>]);

# Infusion Speed Stone
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:matrix_speed>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:MatrixMotion", "INFUSIONBOOST", 500, [<aspect:aer> * 16,<aspect:ordo> * 16], <thaumcraft:matrix_speed>, [[<thaumcraft:stone_arcane>,<thaumcraft:nitor_white>,<thaumcraft:stone_arcane>],[<thaumcraft:nitor_white>,<contenttweaker:rune_of_sloth>,<thaumcraft:nitor_white>],[<thaumcraft:stone_arcane>,<thaumcraft:nitor_white>,<thaumcraft:stone_arcane>]]);

# Infusion Cost Stone
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:matrix_cost>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:MatrixCost", "INFUSIONBOOST", 500, [<aspect:aer> * 16,<aspect:perditio> * 16], <thaumcraft:matrix_cost>, [[<thaumcraft:stone_arcane>,<thaumcraft:nitor_white>,<thaumcraft:stone_arcane>],[<thaumcraft:nitor_white>,<contenttweaker:rune_of_greed>,<thaumcraft:nitor_white>],[<thaumcraft:stone_arcane>,<thaumcraft:nitor_white>,<thaumcraft:stone_arcane>]]);

# Flux Condenser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:condenser>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Condenser", "FLUXCLEANUP", 50, [<aspect:aer> * 8,<aspect:aqua> * 8,<aspect:perditio> * 8], <thaumcraft:condenser>, [[<thaumcraft:plate:2>,<thaumcraft:mechanism_complex>,<thaumcraft:plate:2>],[<thaumcraft:vis_resonator>,<contenttweaker:condensed_vis_crystal_vitium>,<thaumcraft:vis_resonator>],[<thaumcraft:plate:2>,<thaumcraft:mechanism_complex>,<thaumcraft:plate:2>]]);

# Flux Condenser Lattice
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:condenser_lattice>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:CondenserLattice", "FLUXCLEANUP", 10, [<aspect:aer> * 4,<aspect:terra> * 4], <thaumcraft:condenser_lattice>, [[<botania:quartz:6>,<thaumcraft:ingot>,<botania:quartz:6>],[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitreus"}]}),<thaumcraft:filter>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitreus"}]})],[<botania:quartz:6>,<thaumcraft:ingot>,<botania:quartz:6>]]);

# Boots of the Traveller
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:traveller_boots>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:BootsTraveller", "BOOTSTRAVELLER", <thaumcraft:traveller_boots>, 5, [<aspect:motus> * 120,<aspect:volatus> * 120,<aspect:praemunio> * 20], <thaumcraft:cloth_boots>, [<thaumcraft:fabric>,<contenttweaker:magical_leather>,<botania:supertravelbelt>,<contenttweaker:magical_leather>,<thaumcraft:fabric>,<botania:terrasteelboots>]);

# Axe of the Stream
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_axe>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:ElementalAxe", "ELEMENTALTOOLS", <thaumcraft:elemental_axe>.withTag({infench: [{lvl: 1 as short, id: 2 as short}, {lvl: 1 as short, id: 0 as short}]}), 2, [<aspect:aqua> * 100,<aspect:instrumentum> * 80,<aspect:herba> * 60,<aspect:aversio> * 40], <thaumcraft:thaumium_axe>, [<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>,<enderutilities:enderpart:20>,<thaumcraft:nugget:10>,<contenttweaker:condensed_vis_crystal_aqua>,<contenttweaker:condensed_vis_crystal_aqua>,<thaumcraft:ingot>]);

# Pickaxe of the Core
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_pick>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:ElementalPick", "ELEMENTALTOOLS", <thaumcraft:elemental_pick>.withTag({infench: [{lvl: 1 as short, id: 4 as short}, {lvl: 2 as short, id: 3 as short}]}), 2, [<aspect:ignis> * 100,<aspect:instrumentum> * 80,<aspect:aversio> * 40,<aspect:metallum> * 30,<aspect:sensus> * 30], <thaumcraft:thaumium_pick>, [<thaumcraft:ingot>,<contenttweaker:condensed_vis_crystal_ignis>,<thaumcraft:ingot>,<thaumcraft:nugget:10>,<enderutilities:enderpart:20>,<thaumcraft:nugget:10>,<thaumcraft:ingot>,<contenttweaker:condensed_vis_crystal_ignis>]);

# Sword of the Zephyr
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_sword>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:ElementalSword", "ELEMENTALTOOLS", <thaumcraft:elemental_sword>.withTag({infench: [{lvl: 2 as short, id: 5 as short}]}), 2, [<aspect:aer> * 100,<aspect:aversio> * 80,<aspect:motus> * 60,<aspect:instrumentum> * 40], <thaumcraft:thaumium_sword>, [<thaumcraft:ingot>,<thaumcraft:nugget:10>,<thaumcraft:ingot>,<contenttweaker:condensed_vis_crystal_aer>,<enderutilities:enderpart:20>,<contenttweaker:condensed_vis_crystal_aer>,<thaumcraft:ingot>,<thaumcraft:nugget:10>]);

# Shovel of the Eathmover
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_shovel>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:ElementalShovel", "ELEMENTALTOOLS", <thaumcraft:elemental_shovel>.withTag({infench: [{lvl: 1 as short, id: 1 as short}]}), 2, [<aspect:terra> * 100,<aspect:instrumentum> * 80,<aspect:fabrico> * 60,<aspect:herba> * 40], <thaumcraft:thaumium_shovel>, [<thaumcraft:ingot>,<thaumcraft:ingot>,<contenttweaker:condensed_vis_crystal_terra>,<thaumcraft:nugget:10>,<enderutilities:enderpart:20>,<thaumcraft:nugget:10>,<contenttweaker:condensed_vis_crystal_terra>,<thaumcraft:ingot>]);

# Hoe of Growth
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_hoe>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:ElementalHoe", "ELEMENTALTOOLS", <thaumcraft:elemental_hoe>, 2, [<aspect:ordo> * 100,<aspect:instrumentum> * 80,<aspect:herba> * 60,<aspect:perditio> * 40], <thaumcraft:thaumium_hoe>, [<thaumcraft:ingot>,<contenttweaker:condensed_vis_crystal_ordo>,<contenttweaker:condensed_vis_crystal_ordo>,<thaumcraft:nugget:10>,<enderutilities:enderpart:20>,<thaumcraft:nugget:10>,<thaumcraft:ingot>,<thaumcraft:ingot>]);

# Thaumium Fortress Helm
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:fortress_helm>.withTag(null));
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:ThaumiumFortressHelm", "ARMORFORTRESS", <thaumcraft:fortress_helm>, 3, [<aspect:praemunio> * 100,<aspect:metallum> * 60,<aspect:potentia> * 40], <thaumcraft:thaumium_helm>, [<thaumcraft:plate>,<thaumcraft:plate:2>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<thaumcraft:plate:2>,<thaumcraft:plate>,<thaumcraft:plate>]);

# Thaumium Fortress Cuirass
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:fortress_chest>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:ThaumiumFortressChest", "ARMORFORTRESS", <thaumcraft:fortress_chest>, 3, [<aspect:praemunio> * 100,<aspect:metallum> * 60,<aspect:potentia> * 40], <thaumcraft:thaumium_chest>, [<contenttweaker:magical_leather>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<contenttweaker:magical_leather>,<thaumcraft:plate>]);

# Thaumium Fortress Thigh Guards
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:fortress_legs>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:ThaumiumFortressLegs", "ARMORFORTRESS", <thaumcraft:fortress_legs>, 3, [<aspect:praemunio> * 100,<aspect:metallum> * 60,<aspect:potentia> * 40], <thaumcraft:thaumium_legs>, [<contenttweaker:magical_leather>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<contenttweaker:magical_leather>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<contenttweaker:magical_leather>,<thaumcraft:plate>]);

# Blank Seal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:seal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:SealBlank", "CONTROLSEALS", 20, [<aspect:ignis> * 4,<aspect:ordo> * 2,<aspect:terra> * 2,<aspect:aer>], <thaumcraft:seal>, [[<mekanism:plasticblock:1>,<thaumcraft:nitor_red>,<mekanism:plasticblock:1>],[<thaumcraft:tallow>,<contenttweaker:rune_of_wrath>,<thaumcraft:tallow>],[<mekanism:plasticblock:1>,<thaumcraft:nitor_red>,<mekanism:plasticblock:1>]]);

# Control Seal: Harvest
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:7>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:SealHarvest", "SEALHARVEST", <thaumcraft:seal:7>, 1, [<aspect:herba> * 30,<aspect:humanus> * 30,<aspect:sensus> * 20], <thaumcraft:seal>, [<mysticalagriculture:crafting:6>,<mysticalagriculture:crafting:6>,<enderio:block_farm_station>]);

# Control Seal: Butcher
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:8>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:SealButcher", "SEALBUTCHER", <thaumcraft:seal:8>, 1, [<aspect:bestia> * 30,<aspect:humanus> * 30,<aspect:sensus> * 20], <thaumcraft:seal>, [<contenttweaker:condensed_vis_crystal_bestia>,<thaumcraft:thaumium_sword>,<industrialforegoing:animal_byproduct_recolector>]);

# Control Seal: Block Breaker
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:12>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:SealBreak", "SEALBREAK", <thaumcraft:seal:12>, 1, [<aspect:instrumentum> * 30,<aspect:perditio> * 30,<aspect:sensus> * 20], <thaumcraft:seal>, [<thaumcraft:thaumium_pick>,<thaumcraft:thaumium_shovel>,<openblocks:block_breaker>]);

# Golemancer's Bell
recipes.remove(<thaumcraft:golem_bell>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("GolemBell", "", 50, [<aspect:ordo> * 10,<aspect:perditio> * 10,<aspect:terra> * 5], <thaumcraft:golem_bell>, [[null,<thaumcraft:plate:2>,<thaumcraft:vis_resonator>],[null,<thaumcraft:mechanism_simple>,<thaumcraft:plate:2>],[<enderutilities:enderpart:20>,null,null]]);

# Brain in a Jar
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:jar_brain>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:JarBrain", "JARBRAIN", <thaumcraft:jar_brain>, 5, [<aspect:cognitio> * 60,<aspect:exanimis> * 50,<aspect:sensus> * 30], <thaumcraft:jar_normal>, [<contenttweaker:rune_of_pride>,<thaumcraft:brain>,<contenttweaker:rune_of_greed>,<thaumcraft:ingot>]);

# Vision Module
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:module>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:modvision", "GOLEMVISION", 50, [<aspect:aqua> * 6], <thaumcraft:module>, [[<thaumcraft:phial>,null,<thaumcraft:phial>],[<botania:quartz:4>,null,<botania:quartz:4>],[<thaumcraft:plate>,<thaumcraft:mechanism_simple>,<thaumcraft:plate>]]);

# Aggression Module
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:module:1>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:modaggression", "SEALGUARD", 50, [<aspect:ignis> * 6], <thaumcraft:module:1>, [[null,<thaumcraft:phial>,null],[<thaumcraft:phial>,<botania:quartz:4>,<thaumcraft:phial>],[<thaumcraft:plate>,<thaumcraft:mechanism_simple>,<thaumcraft:plate>]]);

# Redstone Inlay
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:inlay>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:RedstoneInlay", "INFUSIONSTABLE", <contenttweaker:redstone_inlay_package>, 2, [<aspect:potentia> * 20,<aspect:ignis> * 10], <thermaldynamics:relay>, [<contenttweaker:fire_core>,<thaumcraft:ingot>,<enderio:block_alloy:3>]);
recipes.addShapeless(<thaumcraft:inlay> * 4, [<contenttweaker:redstone_inlay_package>]);

# Stabilizer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:stabilizer>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:Stabilizer", "INFUSIONSTABLE", <thaumcraft:stabilizer>, 4, [<aspect:machina> * 100,<aspect:ordo> * 100,<aspect:potentia> * 60,<aspect:vacuos> * 30], <thaumcraft:mechanism_complex>, [<thaumcraft:vis_resonator>,<thaumcraft:stone_arcane>,<thaumcraft:plate:2>,<thaumcraft:inlay>,<thaumcraft:plate:2>,<thaumcraft:stone_arcane>,<thaumcraft:vis_resonator>,<thaumcraft:inlay>]);

# Causaility Collapser
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:causality_collapser>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:CausalityCollapser", "RIFTCLOSER", <thaumcraft:causality_collapser>, 7, [<aspect:perditio> * 40,<aspect:potentia> * 30,<aspect:alienis> * 30,<aspect:vitium> * 30], <mekanism:obsidiantnt>, [<thaumcraft:vis_resonator>,<thaumcraft:nitor_pink>,<thaumcraft:alumentum>,<contenttweaker:brew_of_the_void>,<thaumcraft:morphic_resonator>,<thaumcraft:nitor_pink>,<thaumcraft:alumentum>,<contenttweaker:brew_of_the_void>]);

# Void Seed
<thaumcraft:void_seed>.addTooltip(format.white("Obtained by throwing a Causality Collapser on a"));
<thaumcraft:void_seed>.addTooltip(format.white("Flux Rift, or using a Void Siphon in the same chunk."));

# Void Metal Ingot
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot:1>);
recipes.addShaped(<thaumcraft:ingot:1> * 8, [[<contenttweaker:cold_void_metal_ingot>,<contenttweaker:cold_void_metal_ingot>,<contenttweaker:cold_void_metal_ingot>],[<contenttweaker:cold_void_metal_ingot>,<bewitchment:fiery_unguent>.noReturn(),<contenttweaker:cold_void_metal_ingot>],[<contenttweaker:cold_void_metal_ingot>,<contenttweaker:cold_void_metal_ingot>,<contenttweaker:cold_void_metal_ingot>]]);

# Void Siphon
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_siphon>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:VoidSiphon", "VOIDSIPHON", <thaumcraft:void_siphon>, 7, [<aspect:vacuos> * 200,<aspect:alienis> * 100,<aspect:perditio> * 100,<aspect:fabrico> * 100, <aspect:vitium> * 50], <thaumcraft:centrifuge>, [<bewitchment:swirl_of_depths>,<thaumcraft:plate>,<thaumcraft:plate>,<bewitchment:stone_ichor>,<thaumcraft:plate>,<thaumcraft:plate>,<bewitchment:swirl_of_depths>,<thaumcraft:metal_void>]);

# Void Metal Essentia Smeltery
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_void>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:EssentiaSmelterVoid", "ESSENTIASMELTERVOID", 750, [<aspect:ignis> * 64,<aspect:aer> * 16], <thaumcraft:smelter_void>, [[<thaumcraft:plate>,<thaumcraft:smelter_thaumium>,<thaumcraft:plate>],[<thaumcraft:plate:3>,<thaumcraft:metal_alchemical_advanced>,<thaumcraft:plate:3>],[<thaumcraft:plate:3>,<thaumcraft:metal_alchemical_advanced>,<thaumcraft:plate:3>]]);

# Void Sword
recipes.remove(<thaumcraft:void_sword>);
recipes.addShaped(<thaumcraft:void_sword>, [[<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>],[<bewitchment:cold_iron_sword>]]);

# Void Pickaxe
recipes.remove(<thaumcraft:void_pick>);
recipes.addShaped(<thaumcraft:void_pick>, [[<thaumcraft:ingot:1>,<thaumcraft:ingot:1>,<thaumcraft:ingot:1>],[null,<bewitchment:cold_iron_pickaxe>,null],[null,<thaumcraft:vis_resonator>,null]]);

# Void Shovel
recipes.remove(<thaumcraft:void_shovel>);
recipes.addShaped(<thaumcraft:void_shovel>, [[<thaumcraft:ingot:1>],[<bewitchment:cold_iron_shovel>],[<thaumcraft:vis_resonator>]]);

# Void Axe
recipes.remove(<thaumcraft:void_axe>);
recipes.addShapedMirrored(<thaumcraft:void_axe>, [[<thaumcraft:ingot:1>,<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>,<bewitchment:cold_iron_axe>],[null,<thaumcraft:vis_resonator>]]);

# Void Hoe
recipes.remove(<thaumcraft:void_hoe>);
recipes.addShapedMirrored(<thaumcraft:void_hoe>, [[<thaumcraft:ingot:1>,<thaumcraft:ingot:1>],[null,<bewitchment:cold_iron_hoe>],[null,<thaumcraft:vis_resonator>]]);

# Void Helm
recipes.remove(<thaumcraft:void_helm>);
recipes.addShaped(<thaumcraft:void_helm>, [[<thaumcraft:ingot:1>,<thaumcraft:ingot:1>,<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>,<bewitchment:cold_iron_helmet>,<thaumcraft:ingot:1>]]);

# Void Chestplate
recipes.remove(<thaumcraft:void_chest>);
recipes.addShaped(<thaumcraft:void_chest>, [[<thaumcraft:ingot:1>,<bewitchment:cold_iron_chestplate>,<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>,<thaumcraft:ingot:1>,<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>,<thaumcraft:ingot:1>,<thaumcraft:ingot:1>]]);

# Void Leggings
recipes.remove(<thaumcraft:void_legs>);
recipes.addShaped(<thaumcraft:void_legs>, [[<thaumcraft:ingot:1>,<thaumcraft:ingot:1>,<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>,<bewitchment:cold_iron_leggings>,<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>,null,<thaumcraft:ingot:1>]]);

# Void Boots
recipes.remove(<thaumcraft:void_boots>);
recipes.addShaped(<thaumcraft:void_boots>, [[<thaumcraft:ingot:1>,null,<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>,<bewitchment:cold_iron_boots>,<thaumcraft:ingot:1>]]);

# Void Thaumaturge Robes
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_robe_chest>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:VoidRobeChest", "VOIDROBEARMOR", <thaumcraft:void_robe_chest>, 7, [<aspect:metallum> * 60,<aspect:praemunio> * 60,<aspect:vacuos> * 60,<aspect:potentia> * 40,<aspect:alienis> * 40], <thaumcraft:void_chest>, [<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:salis_mundus>,<thaumcraft:fabric>,<contenttweaker:magical_leather>,<thaumcraft:cloth_chest>]);

# Void Thaumaturge Leggings
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_robe_legs>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:VoidRobeLegs", "VOIDROBEARMOR", <thaumcraft:void_robe_legs>, 7, [<aspect:metallum> * 50,<aspect:praemunio> * 50,<aspect:vacuos> * 50,<aspect:potentia> * 35,<aspect:alienis> * 35], <thaumcraft:void_legs>, [<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:salis_mundus>,<thaumcraft:fabric>,<contenttweaker:magical_leather>,<thaumcraft:cloth_legs>]);

# Primordial Pearl repair
recipes.addShapeless("thaumcraft_primordial_pearl_repair", <thaumcraft:primordial_pearl>, [<thaumcraft:primordial_pearl>.anyDamage().noReturn().marked("pearl"),<bewitchment:poppet_tool>],
	function(out,ins,cInfo) {
		if(ins.pearl.damage != 0) {
			return out.withDamage(ins.pearl.damage - 1);
		} else {
			return out;
		}
	}, null);
<thaumcraft:primordial_pearl>.addTooltip(format.white("Dropped rarely by ") + format.darkPurple("Void Rifts") + format.white(" when"));
<thaumcraft:primordial_pearl>.addTooltip(format.white("closed by a ") + format.lightPurple("Causality Collapser") + format.white("."));

# Ancient Pedestal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:pedestal_ancient>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:AncientPedestal", "INFUSIONANCIENT", 100, [<aspect:ordo> * 16,<aspect:terra> * 16,<aspect:perditio> * 8], <thaumcraft:pedestal_ancient>, [[<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>],[null,<thaumcraft:pedestal_arcane>,null],[<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>]]);

# Eldritch Pedestal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:pedestal_eldritch>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:EldritchPedestal", "INFUSIONELDRITCH", 150, [<aspect:perditio> * 32,<aspect:terra> * 16], <thaumcraft:pedestal_eldritch>, [[<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>],[null,<thaumcraft:pedestal_ancient>,null],[<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>]]);

# Blank Greater Focus
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_3>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:focus_3", "FOCUSGREATER@1", <thaumcraft:focus_3>, 8, [<aspect:vacuos> * 150,<aspect:vitreus> * 150,<aspect:ordo> * 100,<aspect:praecantatio> * 100,<aspect:instrumentum> * 50,<aspect:auram> * 50], <thaumcraft:focus_2>, [<alchemistry:ingot:11>,<thaumcraft:mirrored_glass>,<alchemistry:ingot:11>,<contenttweaker:primordial_fragment>,<alchemistry:ingot:11>,<thaumcraft:mirrored_glass>,<alchemistry:ingot:11>,<minecraft:nether_star>]);

# Void Thaumaturge Hood
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_robe_helm>);
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:VoidRobeHelm", "VOIDROBEARMOR", <thaumcraft:void_robe_helm>, 7, [<aspect:metallum> * 50,<aspect:praemunio> * 50,<aspect:vacuos> * 50,<aspect:potentia> * 35,<aspect:alienis> * 35,<aspect:sensus> * 35], <thaumcraft:void_helm>, [<thaumcraft:fabric>,<thaumcraft:plate:3>,<thaumcraft:salis_mundus>,<thaumcraft:plate:3>,<thaumcraft:fabric>,<thaumcraft:goggles>]);

# Brass Block -> Alchemical Brass Block
<thaumcraft:metal_brass>.displayName = "Alchemical Brass Block";

print("ENDING Thaumcraft.zs");
