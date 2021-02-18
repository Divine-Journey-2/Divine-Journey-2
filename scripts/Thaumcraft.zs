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

print("STARTING Thaumcraft.zs");

# Cinderpearl into Blaze Powder is too OP
recipes.removeShaped(<minecraft:blaze_powder>, [[<thaumcraft:cinderpearl>]]);

# Thaumonomicon tooltip
<thaumcraft:thaumonomicon>.addTooltip(format.red(format.bold("Warninrg:")) + format.white(format.bold(" Recipes shown may be incorrect.")));
<thaumcraft:thaumonomicon>.addTooltip(format.white(format.bold("Always refer to JEI when crafting.")));

# Salis Mundus
# Original in OreProcessingAdditions.zs, duplication here
recipes.remove(<thaumcraft:salis_mundus>);
recipes.addShapeless(<thaumcraft:salis_mundus> * 2, [<thaumcraft:salis_mundus>,<botania:quartz:3>,<botania:manaresource:8>,<abyssalcraft:methane>,<contenttweaker:crystallized_mana_shard>]);

# Arcane Workbench
mods.thaumcraft.SalisMundus.removeSingleConversion(<thaumcraft:arcane_workbench>);
mods.thaumcraft.SalisMundus.addSingleConversion(<extendedcrafting:table_basic>.asBlock(), <thaumcraft:arcane_workbench>, "FIRSTSTEPS@1");
<thaumcraft:arcane_workbench>.addTooltip(format.white("Created by Right Clicking on an Extended Crafting"));
<thaumcraft:arcane_workbench>.addTooltip(format.white("Basic Crafting Table with some ") + format.lightPurple("Salis Mundus") + format.white("."));

# Thaumometer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:thaumometer", "FIRSTSTEPS@2", 20, [<aspect:aer>,<aspect:aqua>,<aspect:ordo>,<aspect:perditio>,<aspect:terra>,<aspect:ignis>], <thaumcraft:thaumometer>, [[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<botania:lens:15>,<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<contenttweaker:holy_core>]]);

# Crucible
mods.thaumcraft.SalisMundus.removeSingleConversion(<thaumcraft:crucible>);
mods.thaumcraft.SalisMundus.addSingleConversion(<evilcraft:purifier>.asBlock(), <thaumcraft:crucible>, "UNLOCKALCHEMY@1");
<thaumcraft:crucible>.addTooltip(format.white("Created by Right Clicking on an EvilCraft"));
<thaumcraft:crucible>.addTooltip(format.white("Crucible with some ") + format.lightPurple("Salis Mundus") + format.white("."));

# Wood Table
recipes.remove(<thaumcraft:table_wood>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablewood", "", 10, [], <thaumcraft:table_wood>, [[<botania:livingwood:5>,<botania:livingwood:5>,<botania:livingwood:5>],[<botania:livingwood:5>,null,<botania:livingwood:5>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablewood2", "", 10, [], <thaumcraft:table_wood>, [[null,null,null],[<botania:livingwood:5>,<botania:livingwood:5>,<botania:livingwood:5>],[<botania:livingwood:5>,null,<botania:livingwood:5>]]);

# Research Table
<thaumcraft:research_table>.addTooltip(format.white("Created by placing Scribing Tools"));
<thaumcraft:research_table>.addTooltip(format.white("on a Thaumcraft Wood Table."));

# Scribing Tools
recipes.removeShapeless(<thaumcraft:scribing_tools>, [<*>,<*>,<*>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("scribingtoolscraft1", "", 5, [], <thaumcraft:scribing_tools>, [<mysticalagriculture:crafting:24>,<botania:vial:1>,<botania:manaresource:22>,<divinerpg:kraken_skin>,<botania:rune:15>]);
<thaumcraft:scribing_tools>.addTooltip(format.gray(format.italic("Fill me up with some Ink to complete my Research!")));

# Yellow Nitor
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:nitor", "UNLOCKALCHEMY@3", <thaumcraft:nitor_yellow>, <thermalfoundation:storage_alloy:6>, [<aspect:potentia> * 20, <aspect:ignis> * 20, <aspect:lux> * 20]);

# Quartz Sliver
recipes.remove(<thaumcraft:nugget:9>);
recipes.removeShaped(<minecraft:quartz>, [[<thaumcraft:nugget:9>,<thaumcraft:nugget:9>,<thaumcraft:nugget:9>],[<thaumcraft:nugget:9>,<thaumcraft:nugget:9>,<thaumcraft:nugget:9>],[<thaumcraft:nugget:9>,<thaumcraft:nugget:9>,<thaumcraft:nugget:9>]]);
<ore:nuggetQuartz>.remove(<thaumcraft:nugget:9>);
# Rest is in OreProcessingAdditions.zs

# Vis Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:vis_resonator", "UNLOCKAUROMANCY@2", 50, [<aspect:aer> * 2,<aspect:aqua> * 2], <thaumcraft:vis_resonator>, [[<botania:shimmerrock>,<botania:shimmerrock>,<botania:shimmerrock>],[<botania:shimmerrock>,<contenttweaker:reduction_core>,<botania:shimmerrock>],[<botania:shimmerrock>,<botania:shimmerrock>,<botania:shimmerrock>]]);

# Caster's Gauntlet
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:caster_basic", "UNLOCKAUROMANCY@2", 100, [<aspect:aer> * 10,<aspect:aqua> * 10,<aspect:ordo> * 10,<aspect:perditio> * 10,<aspect:terra> * 10,<aspect:ignis> * 10], <thaumcraft:caster_basic>, [[null,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<immersiveengineering:toolupgrade:12>,<contenttweaker:infused_magical_core>],[<contenttweaker:magical_leather>,<thaumcraft:thaumometer>,<contenttweaker:magical_leather>]]);

# Blank Lesser Focus
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:focus_1>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:focus_1", "UNLOCKAUROMANCY", <thaumcraft:focus_1>, <contenttweaker:base_focal_sphere>, [<aspect:vitreus> * 40, <aspect:praecantatio> * 20, <aspect:instrumentum> * 20, <aspect:auram> * 10]);

# Alumentum
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:alumentum>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:alumentum", "INFUSION", <thaumcraft:alumentum>, <abyssalcraft:crystal:22>, [<aspect:potentia> * 20, <aspect:ignis> * 20, <aspect:metallum> * 20, <aspect:perditio> * 10]);

# Enchanted Fabric
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:fabric>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:fabric", "MINDBIOTHAUMIC", 5, [<aspect:ordo> * 1], <thaumcraft:fabric>, [[null,<thaumcraft:salis_mundus>,null],[<thaumcraft:alumentum>,<botania:spellcloth>,<thaumcraft:alumentum>],[null,<thaumcraft:salis_mundus>,null]]);

# Thaumaturge's Robe
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_chest", "UNLOCKINFUSION", 100, [<aspect:ordo> * 10], <thaumcraft:cloth_chest>, [[<thaumcraft:fabric>,<botania:manaweavechest>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>]]);

# Thaumaturge's Leggings
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_legs", "UNLOCKINFUSION", 100, [<aspect:ordo> * 10], <thaumcraft:cloth_legs>, [[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweavelegs>,<thaumcraft:fabric>],[<thaumcraft:fabric>,null,<thaumcraft:fabric>]]);

# Thaumaturge's Boots
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_boots", "UNLOCKINFUSION", 100, [<aspect:ordo> * 10], <thaumcraft:cloth_boots>, [[<thaumcraft:fabric>,null,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweaveboots>,<thaumcraft:fabric>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_boots", "UNLOCKINFUSION", 100, [<aspect:ordo> * 10], <thaumcraft:cloth_boots>, [[null,null,null],[<thaumcraft:fabric>,null,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweaveboots>,<thaumcraft:fabric>]]);

# Stone Table
recipes.remove(<thaumcraft:table_stone>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablestone", "", 10, [], <thaumcraft:table_stone>, [[<abyssalcraft:stone:5>,<abyssalcraft:stone:5>,<abyssalcraft:stone:5>],[<abyssalcraft:stone:5>,<thaumcraft:table_wood>,<abyssalcraft:stone:5>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablestone2", "", 10, [], <thaumcraft:table_stone>, [[null,null,null],[<abyssalcraft:stone:5>,<abyssalcraft:stone:5>,<abyssalcraft:stone:5>],[<abyssalcraft:stone:5>,<thaumcraft:table_wood>,<abyssalcraft:stone:5>]]);

# Arcane Stone
recipes.removeShaped(<thaumcraft:stone_arcane>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thaumcraft:stone_arcane> * 3, <bloodmagic:blood_rune>, null, 200, 720, [<botania:shimmerrock>,<thaumcraft:crystal_essence>]);
EIOAlloySmelter.addRecipe(<thaumcraft:stone_arcane> * 3, [<bloodmagic:blood_rune>,<botania:shimmerrock>,<thaumcraft:crystal_essence>], 32000);

# Focal Manipulator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:wand_workbench>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:wand_workbench", "BASEAUROMANCY@2", 100, [<aspect:terra> * 10,<aspect:ignis> * 5], <thaumcraft:wand_workbench>, [[<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>],[<thaumcraft:stone_arcane>,<thaumcraft:vis_resonator>,<thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>,<thaumcraft:table_stone>,<thaumcraft:stone_arcane>]]);

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
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:FocusPouch", "FOCUSPOUCH", 40, [<aspect:ordo> * 10,<aspect:aer> * 5], <thaumcraft:focus_pouch>, [[<contenttweaker:magical_leather>,<thaumcraft:ingot:2>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<thaumcraft:baubles:2>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]]);

# Recharge Pedestal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:rechargepedestal", "RECHARGEPEDESTAL", 350, [<aspect:ordo> * 5,<aspect:aer> * 5,<aspect:aqua> * 5], <thaumcraft:recharge_pedestal>, [[null,<thaumcraft:vis_resonator>,null],[<thaumcraft:plank_greatwood>,null,<thaumcraft:plank_greatwood>],[<thaumcraft:ingot:2>,null,<thaumcraft:ingot:2>]]);

# Glass Phial
recipes.remove(<thaumcraft:phial>);
recipes.addShaped(<thaumcraft:phial> * 4, [[<botania:elfglass>,<contenttweaker:intensive_catalyst>,<botania:elfglass>],[null,<botania:elfglass>,null]]);

# Mirrored Glass
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mirrored_glass>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:mirrorglass", "BASEARTIFICE", 60, [<aspect:aqua> * 2,<aspect:ordo> * 2,<aspect:aer> * 2], <thaumcraft:mirrored_glass>, [[<thaumcraft:quicksilver>,<thaumcraft:quicksilver>,<thaumcraft:quicksilver>],[<thaumcraft:quicksilver>,<contenttweaker:purified_tablet>,<thaumcraft:quicksilver>],[<thaumcraft:quicksilver>,<thaumcraft:quicksilver>,<thaumcraft:quicksilver>]]);

# Sanity Checker
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:sanity_checker>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:sanitychecker", "WARP", 100, [<aspect:ordo> * 10,<aspect:perditio> * 10], <thaumcraft:sanity_checker>, [[<thaumcraft:brain>,<thaumcraft:ingot:2>,null],[<thaumcraft:mirrored_glass>,<contenttweaker:rune_of_deception>,<thaumcraft:ingot:2>],[<thaumcraft:brain>,<thaumcraft:ingot:2>,null]]);

# Essentia Filter
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:TubeFilter", "TUBES", 15, [<aspect:aqua> * 2], <thaumcraft:filter>, [[empowered_glod_crystal,<thaumcraft:plank_silverwood>,empowered_glod_crystal],[empowered_glod_crystal,<botania:rune>,empowered_glod_crystal],[empowered_glod_crystal,<thaumcraft:plank_silverwood>,empowered_glod_crystal]]);
<thaumcraft:nugget:10>.addTooltip(format.gray(format.italic("<Hold Shift for info on how to acquire>")));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Dropped rarely by any of the following Ores:"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Coal, Redstone, Quartz. Amber, Diamond;"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("in ascending order or drop rate."));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Alternatively, smelt any of the following Ores"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("in the Infernal Furnace: Oron, Gold, Silver,"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Copper, Tin, Lead, Cinnabar."));

print("ENDING Thaumcraft.zs");