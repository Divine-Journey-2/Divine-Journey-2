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
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:gauntlet_2", "GAUNTLET_VOID", <thaumicaugmentation:gauntlet:1>.withTag({color: 2498903}), 7, [<aspect:alienis> * 150,<aspect:vacuos> * 150,<aspect:potentia> * 100,<aspect:instrumentum> * 100], <thaumicaugmentation:gauntlet>, [<thaumcraft:fabric>,<bewitchment:diabolical_vein>,<thaumcraft:thaumometer>,<alchemistry:ingot:30>,<thaumcraft:plate:3>,<alchemistry:ingot:30>,<thaumcraft:vis_resonator>,<bewitchment:diabolical_vein>,<thaumcraft:fabric>,<thaumcraft:voidseer_charm>]);
<thaumicaugmentation:gauntlet:1>.addTooltip(format.white("Remove your current Foci before crafting this!"));

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
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_cell", "", <thaumicaugmentation:material:3>, 8, [<aspect:alienis> * 250,<aspect:vacuos> * 250,<aspect:potentia> * 250], <bewitchment:stone_ichor>, [<contenttweaker:impetus_crystal>,<thaumcraft:amber_block>,<contenttweaker:impetus_crystal>,<contenttweaker:condensed_vis_crystal_vacuos>,<contenttweaker:impetus_crystal>,<thaumcraft:amber_block>,<contenttweaker:impetus_crystal>,<contenttweaker:condensed_vis_crystal_alienis>]);

# Impetus Conductor
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:augment_caster_rift_energy_storage>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:augment_caster_rift_energy_storage", "", 100, [<aspect:perditio> * 32,<aspect:terra> * 8,<aspect:ignis> * 8], <thaumicaugmentation:augment_caster_rift_energy_storage>, [[<bewitchment:ectoplasm>,<thaumcraft:plate:2>,<bewitchment:ectoplasm>],[<thaumcraft:plate:2>,<thaumicaugmentation:material:3>,<thaumcraft:plate:2>],[<bewitchment:ectoplasm>,<thaumcraft:plate:2>,<bewitchment:ectoplasm>]]);

# Vis Battery Augment
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:augment_vis_battery>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:augment_vis_battery", "", 150, [<aspect:ordo> * 16,<aspect:aer> * 16,<aspect:terra> * 8], <thaumicaugmentation:augment_vis_battery>, [[<thaumcraft:stone_arcane>,<thaumcraft:morphic_resonator>,<thaumcraft:stone_arcane>],[<thaumcraft:morphic_resonator>,<bewitchment:perpetual_ice>,<thaumcraft:morphic_resonator>],[<thaumcraft:stone_arcane>,<thaumcraft:morphic_resonator>,<thaumcraft:stone_arcane>]]);

# Girdle Upgrade
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness_augment:1>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:thaumostatic_harness_augment:1", "", <thaumicaugmentation:thaumostatic_harness_augment:1>, 7, [<aspect:aer> * 100,<aspect:motus> * 75,<aspect:volatus> * 50], <thaumcraft:baubles:6>, [<contenttweaker:magical_leather>,<contenttweaker:travelers_tenacity>,<contenttweaker:magical_leather>,<contenttweaker:condensed_vis_crystal_volatus>]);

# Gyroscope Upgrade
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness_augment:0>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:thaumostatic_harness_augment:0", "", <thaumicaugmentation:thaumostatic_harness_augment:0>, 7, [<aspect:vinculum> * 100,<aspect:aer> * 75,<aspect:volatus> * 50], <thaumcraft:baubles:6>, [<thaumcraft:plate:2>,<bewitchment:stone_ichor>,<thaumcraft:plate:2>,<contenttweaker:condensed_vis_crystal_vinculum>]);

# Fracture Locator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:fracture_locator>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:fracture_locator", "", <thaumicaugmentation:fracture_locator>, 8, [<aspect:vacuos> * 250,<aspect:auram> * 200,<aspect:perditio> * 100], <contenttweaker:impetus_crystal>, [<thaumcraft:plate>,<contenttweaker:condensed_vis_crystal_vacuos>,<thaumcraft:plate>,<thaumcraft:nugget:10>,<thaumcraft:plate>,<contenttweaker:condensed_vis_crystal_vacuos>,<thaumcraft:plate>,<thaumcraft:nugget:10>]);

# Void Stone
<thaumicaugmentation:stone>.addTooltip(format.white("Base Stone of the Emptiness dimension."));

# Ancient Stone
<thaumcraft:stone_ancient>.addTooltip(format.white("Found in Eldritch Spires on the Emptiness dimension."));

# Ancient Pedestal
<thaumcraft:pedestal_ancient>.addTooltip(format.white("Found in Eldritch Spires on the Emptiness dimension."));

# Crusted Stone
<thaumicaugmentation:stone:6>.addTooltip(format.white("Found in Eldritch Spires on the Emptiness dimension."));

# Glowing Crusted Stone
<thaumicaugmentation:stone:7>.addTooltip(format.white("Found in Eldritch Spires on the Emptiness dimension."));

# Glyphed Stone
<thaumcraft:stone_ancient_glyphed>.addTooltip(format.white("Found in Eldritch Spires on the Emptiness dimension."));

# Eldritch Stone
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:stone_eldritch_tile>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:stone_eldritch_tile", "VOID_STONE_USAGE", <thaumcraft:stone_eldritch_tile>, <thaumicaugmentation:stone>, [<aspect:alienis> * 24, <aspect:terra> * 8]);

# Impetus Jewel
mods.thaumcraft.Crucible.removeRecipe(<thaumicaugmentation:material:5>);
mods.thaumcraft.Crucible.registerRecipe("thaumicaugmentation:impetus_jewel", "", <thaumicaugmentation:material:5>, <contenttweaker:impetus_crystal>, [<aspect:ordo> * 40, <aspect:potentia> * 40,<aspect:stellae> * 10]);

# Impetus Drainer
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:impetus_drainer>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_drainer", "", <thaumicaugmentation:impetus_drainer>, 7, [<aspect:alienis> * 200,<aspect:machina> * 200,<aspect:potentia> * 100,<aspect:metallum> * 100,<aspect:auram> * 50], <thaumicaugmentation:material:5>, [<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:stone_eldritch_tile>,<thaumicaugmentation:bars>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:metal_void>]);

# Impetus Relay
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_relay>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumicaugmentation:impetus_relay", "", 50, [<aspect:ignis> * 6,<aspect:ordo> * 6,<aspect:perditio> * 6,<aspect:terra> * 6], <thaumicaugmentation:impetus_relay>, [<thaumicaugmentation:material:5>,<thaumcraft:plate:3>]);

# Impetus Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_linker>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:impetus_linker", "", 150, [<aspect:ordo> * 8,<aspect:perditio> * 8,<aspect:ignis> * 4,<aspect:terra> * 4,<aspect:aer> * 4], <thaumicaugmentation:impetus_linker>, [[null,<thaumicaugmentation:material:5>,<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>,<bewitchment:boline>,<thaumcraft:ingot:1>],[null,<thaumcraft:ingot:1>,null]]);

# Impetus Diffuser
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:impetus_diffuser>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_diffuser", "", <thaumicaugmentation:impetus_diffuser>, 8, [<aspect:alienis> * 200,<aspect:machina> * 200,<aspect:permutatio> * 100,<aspect:metallum> * 100,<aspect:auram> * 50], <thaumicaugmentation:material:5>, [<thaumcraft:morphic_resonator>,<thaumcraft:plate:3>,<thaumcraft:stone_eldritch_tile>,<botania:hourglass>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:plate:3>,<thaumcraft:morphic_resonator>,<thaumcraft:plate:3>]);

# Ancient Lantern
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:stone:11>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:ancient_lantern", "", 25, [<aspect:ignis> * 12,<aspect:perditio> * 6], <thaumicaugmentation:stone:11>, [[<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>],[<thaumcraft:stone_ancient>,<thaumicaugmentation:material:5>,<thaumcraft:stone_ancient>],[<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>]]);

# Autocaster
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:autocaster_placer>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:autocaster_placer", "", <thaumicaugmentation:autocaster_placer>, 8, [<aspect:machina> * 200,<aspect:aversio> * 200,<aspect:cognitio> * 150,<aspect:sensus> * 50,<aspect:auram> * 50], <thaumcraft:mind:1>, [<thaumcraft:morphic_resonator>,<thaumcraft:vis_resonator>,<thaumcraft:plate>,<thaumcraft:mechanism_complex>,<thaumcraft:plate>,<thaumcraft:vis_resonator>,<thaumcraft:morphic_resonator>,<thaumicaugmentation:gauntlet:1>]);

# Flux Inducer
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:rift_feeder>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:rift_feeder", "", <thaumicaugmentation:rift_feeder>, 7, [<aspect:machina> * 200,<aspect:vitium> * 200,<aspect:alienis> * 100,<aspect:vacuos> * 50,<aspect:perditio> * 50], <thaumcraft:essentia_input>, [<thaumcraft:mechanism_simple>,<thaumcraft:tube_filter>,<thaumcraft:plate:3>,<thaumcraft:morphic_resonator>,<thaumcraft:plate:3>,<thaumcraft:tube_filter>,<thaumcraft:mechanism_simple>,<thaumcraft:morphic_resonator>]);

# Reinforced Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:rift_jar>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:rift_jar", "", 50, [<aspect:aqua> * 20,<aspect:perditio> * 5], <thaumicaugmentation:rift_jar>, [[<thaumcraft:plate:3>,<thaumicaugmentation:material:1>,<thaumcraft:plate:3>],[<thaumcraft:plate:3>,<thaumcraft:jar_normal>,<thaumcraft:plate:3>],[<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:plate:3>]]);

# Metaspatial Extruder
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:rift_mover_output>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:rift_mover_output", "RIFT_MOVING", <thaumicaugmentation:rift_mover_output>, 8, [<aspect:perditio> * 150,<aspect:machina> * 150,<aspect:vacuos> * 100,<aspect:vitium> * 100,<aspect:alienis> * 100,<aspect:permutatio> * 100], <thaumicaugmentation:material:5>, [<thaumcraft:stone_eldritch_tile>,<contenttweaker:condensed_vis_crystal_vitium>,<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:plate:3>,<contenttweaker:condensed_vis_crystal_machina>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:mechanism_complex>]);

# Metaspatial Accumulator
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:rift_mover_input>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:rift_mover_input", "RIFT_MOVING", <thaumicaugmentation:rift_mover_input>, 8, [<aspect:vinculum> * 150,<aspect:machina> * 150,<aspect:vacuos> * 100,<aspect:vitium> * 100,<aspect:alienis> * 100,<aspect:permutatio> * 100], <thaumicaugmentation:material:5>, [<thaumcraft:plate:3>,<thaumcraft:plate:3>,<contenttweaker:condensed_vis_crystal_praecantatio>,<thaumcraft:stone_eldritch_tile>,<contenttweaker:condensed_vis_crystal_machina>,<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:mechanism_complex>]);


print("ENDING ThaumicAugmentation.zs");