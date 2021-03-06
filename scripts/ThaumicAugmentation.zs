# Author: Atricos
# Research Strings can be found in ThaumicAugmentation.jar/thecodex6824/thaumicaugmentation/init/RecipeHandler.class, or at https://github.com/TheCodex6824/ThaumicAugmentation/wiki/Available-Research .

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;

print("STARTING ThaumicAugmentation.zs");

# Warding Sigil
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:material:1>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:warding_sigil", "", <thaumicaugmentation:material:1>, 5, [<aspect:vinculum> * 100,<aspect:auram> * 50,<aspect:praecantatio> * 50,<aspect:instrumentum> * 20], <thaumcraft:seal>, [<thaumcraft:plate:2>,<thaumcraft:plate:2>,<thaumcraft:tallow>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<contenttweaker:infused_magical_core>]);

# Fortified Glass
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:fortified_glass>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:fortified_glass", "", 40, [<aspect:ordo> * 8,<aspect:aer> * 8,<aspect:aqua> * 8,<aspect:terra> * 8], <thaumicaugmentation:fortified_glass> * 8, [[<botania:elfglass>,<botania:elfglass>,<botania:elfglass>],[<botania:elfglass>,<thaumicaugmentation:material:1>,<botania:elfglass>],[<botania:elfglass>,<botania:elfglass>,<botania:elfglass>]]);

# Thaumium Caster's Gauntlet
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:gauntlet>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:gauntlet", "GAUNTLET_THAUMIUM", 250, [<aspect:aer> * 24,<aspect:aqua> * 24,<aspect:ordo> * 24,<aspect:perditio> * 24,<aspect:terra> * 24,<aspect:ignis> * 24], <thaumicaugmentation:gauntlet>.withTag({color: 8022208}), [[null,<thaumcraft:plate:2>,<thaumcraft:plate:2>],[<thaumcraft:plate:2>,<thaumcraft:caster_basic>,<thaumcraft:fabric>],[<thaumcraft:plate:2>,<thaumcraft:thaumometer>,<thaumcraft:vis_resonator>]]);
<thaumicaugmentation:gauntlet>.addTooltip(format.white("Remove your current Foci before crafting this!"));

# Voidseer Caster's Gauntlet
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:gauntlet:1>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:gauntlet_2", "GAUNTLET_VOID", <thaumicaugmentation:gauntlet:1>.withTag({color: 2498903}), 7, [<aspect:alienis> * 150,<aspect:vacuos> * 150,<aspect:potentia> * 100,<aspect:instrumentum> * 100], <thaumicaugmentation:gauntlet>, [<thaumcraft:fabric>,<bewitchment:diabolical_vein>,<thaumcraft:thaumometer>,<alchemistry:ingot:30>,<thaumcraft:plate:3>,<alchemistry:ingot:30>,<thaumcraft:vis_resonator>,<bewitchment:diabolical_vein>,<thaumcraft:fabric>]);

# Harness Base
recipes.remove(<thaumicaugmentation:material:4>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:harness_base", "", <thaumicaugmentation:material:4>, 2, [<aspect:praemunio> * 100,<aspect:volatus> * 75,<aspect:motus> * 75,<aspect:aer> * 50], <minecraft:leather_chestplate>, [<contenttweaker:magical_leather>,<bewitchment:heaven_extract>,<thaumcraft:plate>,<thaumcraft:baubles:2>,<thaumcraft:plate>,<contenttweaker:travelers_tenacity>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]);

# Thaumostatic Harness
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:thaumostatic_harness", "", <thaumicaugmentation:thaumostatic_harness>, 7, [<aspect:machina> * 200,<aspect:potentia> * 200,<aspect:volatus> * 200,<aspect:motus> * 200], <thaumicaugmentation:material:4>, [<thaumcraft:plank_greatwood>,<contenttweaker:condensed_vis_crystal_aer>,<thaumcraft:plank_greatwood>,<thaumcraft:levitator>,<thaumcraft:plank_greatwood>,<contenttweaker:condensed_vis_crystal_aer>,<thaumcraft:plank_greatwood>,<thaumcraft:morphic_resonator>]);

# Effect Crystal: Vis Discount
mods.thaumcraft.Crucible.removeRecipe(<thaumicaugmentation:augment_builder_effect>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:augment_builder_effect_cost", "", <thaumicaugmentation:augment_builder_effect>.withTag({id: "thaumicaugmentation:effect_cost"}), <contenttweaker:condensed_vis_crystal_ordo>, [<aspect:auram> * 50, <aspect:vitreus> * 30, <aspect:praecantatio> * 15]);

# Effect Crystal: Focus Power
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:augment_builder_effect_power", "", <thaumicaugmentation:augment_builder_effect>.withTag({id: "thaumicaugmentation:effect_power"}), <contenttweaker:condensed_vis_crystal_ordo>, [<aspect:aversio> * 50, <aspect:vitreus> * 30, <aspect:praecantatio> * 15]);

# Effect Crystal: Cast Speed
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:augment_builder_effect_cast_speed", "", <thaumicaugmentation:augment_builder_effect>.withTag({id: "thaumicaugmentation:effect_cast_speed"}), <contenttweaker:condensed_vis_crystal_ordo>, [<aspect:potentia> * 50, <aspect:vitreus> * 30, <aspect:praecantatio> * 15]);

# Impetus Cell
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:material:3>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_cell", "", <thaumicaugmentation:material:3>, 8, [<aspect:alienis> * 250,<aspect:vacuos> * 250,<aspect:potentia> * 250], <bewitchment:stone_ichor>, [<thaumcraft:ingot:1>,<thaumcraft:amber_block>,<thaumcraft:ingot:1>,<contenttweaker:condensed_vis_crystal_vacuos>,<thaumcraft:ingot:1>,<thaumcraft:amber_block>,<thaumcraft:ingot:1>,<contenttweaker:condensed_vis_crystal_alienis>]);

# Impetus Conductor
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:augment_caster_rift_energy_storage>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:augment_caster_rift_energy_storage", "", 100, [<aspect:perditio> * 32,<aspect:terra> * 8,<aspect:ignis> * 8], <thaumicaugmentation:augment_caster_rift_energy_storage>, [[<bewitchment:ectoplasm>,<thaumcraft:plate:2>,<bewitchment:ectoplasm>],[<thaumcraft:plate:2>,<thaumicaugmentation:material:3>,<thaumcraft:plate:2>],[<bewitchment:ectoplasm>,<thaumcraft:plate:2>,<bewitchment:ectoplasm>]]);



print("ENDING ThaumicAugmentation.zs");