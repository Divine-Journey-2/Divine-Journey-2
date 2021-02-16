# Author: Atricos

import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.SalisMundus;
import crafttweaker.block.IBlock;

print("STARTING Thaumcraft.zs");

# Cinderpearl into Blaze Powder is too OP
recipes.removeShaped(<minecraft:blaze_powder>, [[<thaumcraft:cinderpearl>]]);

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
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumometer", "FIRSTSTEPS@2", 20, [<aspect:aer>,<aspect:aqua>,<aspect:ordo>,<aspect:perditio>,<aspect:terra>,<aspect:ignis>], <thaumcraft:thaumometer>, [[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<botania:lens:15>,<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<contenttweaker:holy_core>]]);

# Crucible
mods.thaumcraft.SalisMundus.removeSingleConversion(<thaumcraft:crucible>);
mods.thaumcraft.SalisMundus.addSingleConversion(<extendedcrafting:table_basic>.asBlock(), <integrateddynamics:mechanical_drying_basin>, "UNLOCKALCHEMY@1");
<thaumcraft:crucible>.addTooltip(format.white("Created by Right Clicking on an Integrated Dynamics"));
<thaumcraft:crucible>.addTooltip(format.white("Mechanical Drying Basin with some ") + format.lightPurple("Salis Mundus") + format.white("."));

# Wood Table
recipes.remove(<thaumcraft:table_wood>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablewood", "", 10, [], <thaumcraft:table_wood>, [[<botania:livingwood:5>,<botania:livingwood:5>,<botania:livingwood:5>],[<botania:livingwood:5>,null,<botania:livingwood:5>]]);

# Research Table
<thaumcraft:research_table>.addTooltip(format.white("Created by Right Clicking on a Thaumcraft"));
<thaumcraft:research_table>.addTooltip(format.white("Wood Table with some ") + format.lightPurple("Salis Mundus") + format.white("."));

# Scribing Tools
recipes.removeShapeless(<thaumcraft:scribing_tools>, [<*>,<*>,<*>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("scribingtoolscraft1", "", 5, [], <thaumcraft:scribing_tools>, [<mysticalagriculture:crafting:24>,<botania:vial:1>,<botania:manaresource:22>,<divinerpg:kraken_skin>,<botania:rune:15>]);


print("ENDING Thaumcraft.zs");