# Author: Atricos
# Research Strings can be found in ThaumicAugmentation.jar/thecodex6824/thaumicaugmentation/init/RecipeHandler.class, or at https://github.com/TheCodex6824/ThaumicAugmentation/wiki/Available-Research .

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;

print("STARTING ThaumicAugmentation.zs");

# Glass Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:glass_tube>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:glass_tube", "TUBES", 10, [<aspect:aqua> * 4,<aspect:aer> * 3], <thaumicaugmentation:glass_tube> * 16, [[<enderio:item_alloy_ingot:6>,<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_ingot:6>],[<enderio:block_fused_glass>,<contenttweaker:rune_of_water>,<enderio:block_fused_glass>],[<enderio:item_alloy_ingot:6>,<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_ingot:6>]]);

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
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:gauntlet_2", "GAUNTLET_VOID", <thaumicaugmentation:gauntlet:1>.withTag({color: 2498903}), 7, [<aspect:alienis> * 150,<aspect:vacuos> * 150,<aspect:potentia> * 100,<aspect:instrumentum> * 100], <thaumicaugmentation:gauntlet>, [<thaumcraft:fabric>,<bewitchment:diabolical_vein>,<thaumcraft:thaumometer>,<alchemistry:ingot:11>,<thaumcraft:plate:3>,<alchemistry:ingot:11>,<thaumcraft:vis_resonator>,<bewitchment:diabolical_vein>,<thaumcraft:fabric>,<thaumcraft:voidseer_charm>]);
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
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_cell", "", <thaumicaugmentation:material:3>, 8, [<aspect:alienis> * 240,<aspect:vacuos> * 240,<aspect:potentia> * 240], <enderutilities:enderpart:17>, [<contenttweaker:impetus_crystal>,<thaumcraft:amber_block>,<contenttweaker:impetus_crystal>,<contenttweaker:condensed_vis_crystal_vacuos>,<contenttweaker:impetus_crystal>,<thaumcraft:amber_block>,<contenttweaker:impetus_crystal>,<contenttweaker:condensed_vis_crystal_alienis>]);

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
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:fracture_locator", "", <thaumicaugmentation:fracture_locator>, 8, [<aspect:vacuos> * 240,<aspect:auram> * 200,<aspect:perditio> * 100], <contenttweaker:impetus_crystal>, [<thaumcraft:plate>,<contenttweaker:condensed_vis_crystal_vacuos>,<thaumcraft:plate>,<thaumcraft:nugget:10>,<thaumcraft:plate>,<contenttweaker:condensed_vis_crystal_vacuos>,<thaumcraft:plate>,<thaumcraft:nugget:10>]);

# Void Stone
<thaumicaugmentation:stone>.addTooltip(format.white("Base Stone of the Emptiness dimension."));

# Ancient Stone
<thaumcraft:stone_ancient>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Ancient Pedestal
<thaumcraft:pedestal_ancient>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Crusted Stone
<thaumicaugmentation:stone:6>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Glowing Crusted Stone
<thaumicaugmentation:stone:7>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Glyphed Stone
<thaumcraft:stone_ancient_glyphed>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Ancient Bars
<thaumicaugmentation:bars>.addTooltip(format.white("Found in Eldritch Spires in the Emptiness dimension."));

# Eldritch Stone
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:stone_eldritch_tile>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:stone_eldritch_tile", "VOID_STONE_USAGE", <thaumcraft:stone_eldritch_tile>, <thaumicaugmentation:stone>, [<aspect:alienis> * 24, <aspect:terra> * 8]);

# Impetus Jewel
mods.thaumcraft.Crucible.removeRecipe(<thaumicaugmentation:material:5>);
mods.thaumcraft.Crucible.registerRecipe("thaumicaugmentation:impetus_jewel", "", <thaumicaugmentation:material:5>, <contenttweaker:impetus_crystal>, [<aspect:ordo> * 40, <aspect:potentia> * 40,<aspect:stellae> * 10]);

# Impetus Drainer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_drainer>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_drainer", "", <thaumicaugmentation:impetus_drainer>, 7, [<aspect:alienis> * 200,<aspect:machina> * 200,<aspect:potentia> * 100,<aspect:metallum> * 100,<aspect:auram> * 50], <thaumicaugmentation:material:5>, [<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:stone_eldritch_tile>,<thaumicaugmentation:bars>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:metal_void>]);

# Impetus Relay
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_relay>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumicaugmentation:impetus_relay", "", 50, [<aspect:ignis> * 6,<aspect:ordo> * 6,<aspect:perditio> * 6,<aspect:terra> * 6], <thaumicaugmentation:impetus_relay>, [<thaumicaugmentation:material:5>,<thaumcraft:plate:3>]);

# Impetus Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_linker>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:impetus_linker", "", 150, [<aspect:ordo> * 8,<aspect:perditio> * 8,<aspect:ignis> * 4,<aspect:terra> * 4,<aspect:aer> * 4], <thaumicaugmentation:impetus_linker>, [[null,<thaumicaugmentation:material:5>,<thaumcraft:ingot:1>],[<thaumcraft:ingot:1>,<bewitchment:boline>,<thaumcraft:ingot:1>],[null,<thaumcraft:ingot:1>,null]]);

# Impetus Diffuser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_diffuser>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_diffuser", "", <thaumicaugmentation:impetus_diffuser>, 8, [<aspect:alienis> * 200,<aspect:machina> * 200,<aspect:permutatio> * 100,<aspect:metallum> * 100,<aspect:auram> * 50], <thaumicaugmentation:material:5>, [<thaumcraft:morphic_resonator>,<thaumcraft:plate:3>,<thaumcraft:stone_eldritch_tile>,<botania:hourglass>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:plate:3>,<thaumcraft:morphic_resonator>,<thaumcraft:plate:3>]);

# Ancient Lantern
recipes.remove(<thaumicaugmentation:stone:11>);
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

# Stability Field Generator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:stability_field_generator>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:stability_field_generator", "", <thaumicaugmentation:stability_field_generator>, 7, [<aspect:machina> * 200,<aspect:ordo> * 200,<aspect:potentia> * 120,<aspect:vacuos> * 60,<aspect:auram> * 60], <thaumicaugmentation:material:5>, [<thaumcraft:plate>,<contenttweaker:condensed_vis_crystal_auram>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<contenttweaker:condensed_vis_crystal_auram>,<thaumcraft:plate>,<thaumcraft:stabilizer>]);

# Extradimensional Monitor
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:rift_monitor>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:rift_monitor", "", 100, [<aspect:aer> * 10,<aspect:terra> * 10], <thaumicaugmentation:rift_monitor>, [[<thaumcraft:slab_eldritch>,<thaumcraft:thaumometer>,<thaumcraft:slab_eldritch>],[<thaumcraft:stone_eldritch_tile>,<thaumicaugmentation:material:5>,<thaumcraft:stone_eldritch_tile>],[<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>]]);

# Void Recharge Pedestal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:void_recharge_pedestal>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:void_recharge_pedestal", "", <thaumicaugmentation:void_recharge_pedestal>, 8, [<aspect:machina> * 200,<aspect:alienis> * 200,<aspect:potentia> * 150,<aspect:permutatio> * 120,<aspect:auram> * 120], <thaumicaugmentation:material:5>, [<thaumcraft:plate:3>,<contenttweaker:condensed_vis_crystal_alienis>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<contenttweaker:condensed_vis_crystal_alienis>,<thaumcraft:plate:3>,<thaumcraft:recharge_pedestal>]);

# Impetus Generator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_generator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:impetus_generator", "", 100, [<aspect:ignis> * 8,<aspect:perditio> * 8], <thaumicaugmentation:impetus_generator>, [[<thaumcraft:stone_eldritch_tile>,<enderio:item_alloy_ingot:3>,<thaumcraft:stone_eldritch_tile>],[<thaumcraft:morphic_resonator>,<thaumicaugmentation:material:5>,<thaumcraft:morphic_resonator>],[<thaumcraft:stone_eldritch_tile>,<enderio:item_alloy_ingot:3>,<thaumcraft:stone_eldritch_tile>]]);

# Arcane Terraformer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:arcane_terraformer>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:arcane_terraformer", "", <thaumicaugmentation:arcane_terraformer>, 8, [<aspect:machina> * 240,<aspect:terra> * 240,<aspect:permutatio> * 200,<aspect:potentia> * 150,<aspect:auram> * 150,<aspect:sensus> * 100], <thaumicaugmentation:impetus_diffuser>, [<contenttweaker:condensed_vis_crystal_terra>,<thaumcraft:metal_thaumium>,<thaumcraft:mechanism_complex>,<thaumcraft:potion_sprayer>,<thaumcraft:mechanism_complex>,<thaumcraft:metal_thaumium>,<contenttweaker:condensed_vis_crystal_terra>,<thaumicaugmentation:material:5>]);

# Vis Regenerator Lattice
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:material>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:vis_regenerator_lattice", "", 100, [<aspect:aer> * 12,<aspect:aqua> * 12], <thaumicaugmentation:material>, [[<thaumcraft:log_silverwood>,<thaumcraft:leaves_silverwood>,<thaumcraft:log_silverwood>],[<thaumcraft:leaves_silverwood>,<thaumcraft:condenser_lattice>,<thaumcraft:leaves_silverwood>],[<thaumcraft:log_silverwood>,<thaumcraft:leaves_silverwood>,<thaumcraft:log_silverwood>]]);

# Vis Regenerator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:vis_regenerator>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:vis_regenerator", "", <thaumicaugmentation:vis_regenerator>, 7, [<aspect:machina> * 50,<aspect:aer> * 50,<aspect:ordo> * 50,<aspect:auram> * 30,<aspect:potentia> * 30], <thaumicaugmentation:material>, [<thaumcraft:stone_eldritch_tile>,<contenttweaker:condensed_vis_crystal_aer>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:mechanism_complex>,<thaumcraft:stone_eldritch_tile>,<contenttweaker:condensed_vis_crystal_aer>,<thaumcraft:stone_eldritch_tile>,<thaumicaugmentation:bars>]);

# Impetus Gate
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_gate>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:impetus_gate", "", 50, [<aspect:terra> * 10,<aspect:aer> * 10,<aspect:perditio> * 10], <thaumicaugmentation:impetus_gate>, [[null,<thaumicaugmentation:material:1>,null],[<thaumcraft:plate:3>,<thaumicaugmentation:impetus_relay>,<thaumcraft:plate:3>],[null,<botania:manaresource:12>,null]]);

# Impetus Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:impetus_mirror>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impetus_mirror", "IMPETUS_MIRROR", <thaumicaugmentation:impetus_mirror>, 8, [<aspect:vitreus> * 100,<aspect:permutatio> * 150,<aspect:motus> * 150,<aspect:potentia> * 100], <thaumcraft:mirror_essentia>, [<thaumcraft:stone_eldritch_tile>,<thaumcraft:plate:3>,<thaumcraft:stone_eldritch_tile>,<contenttweaker:condensed_vis_crystal_vitreus>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:plate:3>,<thaumcraft:stone_eldritch_tile>,<thaumicaugmentation:material:5>]);

# Impulse Cannon
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:impulse_cannon>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:impulse_cannon", "IMPULSE_CANNON", <thaumicaugmentation:impulse_cannon>, 9, [<aspect:alienis> * 150,<aspect:aversio> * 150,<aspect:potentia> * 150,<aspect:machina> * 100,<aspect:mortuus> * 100,<aspect:vacuos> * 60,<aspect:tenebrae> * 50], <thaumicaugmentation:material:3>, [<thaumcraft:morphic_resonator>,<thaumicaugmentation:material:5>,<thaumcraft:plate:3>,<contenttweaker:condensed_vis_crystal_aversio>,<thaumcraft:inlay>,<thaumicaugmentation:stability_field_generator>,<thaumcraft:inlay>,<contenttweaker:condensed_vis_crystal_aversio>,<thaumcraft:plate:3>,<thaumicaugmentation:material:5>,<thaumcraft:morphic_resonator>,<thaumcraft:focus_3>]);

# Railgun Conversion
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impulse_cannon_augment>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:impulse_cannon_augment", "", 150, [<aspect:ordo> * 20,<aspect:perditio> * 20,<aspect:terra> * 20], <thaumicaugmentation:impulse_cannon_augment>, [[null,<thaumcraft:plate:3>,null],[<thaumcraft:plate:3>,<thaumicaugmentation:material:5>,<thaumcraft:plate:3>],[null,<thaumcraft:plate:3>,null]]);

# Burst Fire Conversion
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impulse_cannon_augment:1>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:impulse_cannon_augment:1", "", 150, [<aspect:ordo> * 20,<aspect:perditio> * 20,<aspect:terra> * 20], <thaumicaugmentation:impulse_cannon_augment:1>, [[<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:plate:3>],[<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>,<thaumicaugmentation:material:5>],[<thaumcraft:plate:3>,<thaumcraft:plate:3>,<thaumcraft:plate:3>]]);

# Elytra Harness
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:elytra_harness>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:elytra_harness", "", <thaumicaugmentation:elytra_harness>, 7, [<aspect:volatus> * 150,<aspect:motus> * 100,<aspect:potentia> * 100], <thaumicaugmentation:material:4>, [<contenttweaker:condensed_vis_crystal_volatus>,<thaumcraft:plate:3>,<thaumcraft:vis_resonator>,<contenttweaker:condensed_vis_crystal_volatus>,<thaumcraft:plate:3>,<minecraft:elytra>]);

# Impetus Thruster Upgrade
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:elytra_harness_augment>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:elytra_harness_augment", "", <thaumicaugmentation:elytra_harness_augment>, 9, [<aspect:volatus> * 200,<aspect:motus> * 200,<aspect:potentia> * 200,<aspect:alienis> * 150], <thaumcraft:baubles:6>, [<contenttweaker:magical_leather>,<contenttweaker:condensed_vis_crystal_alienis>,<thaumcraft:plate:3>,<thaumicaugmentation:material:5>,<thaumcraft:plate:3>,<contenttweaker:condensed_vis_crystal_vacuos>,<contenttweaker:magical_leather>,<thaumicaugmentation:material:3>]);

# Voidseer's Pearl
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:voidseer_charm>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:voidseer_charm", "", <thaumcraft:voidseer_charm>, 8, [<aspect:cognitio> * 240,<aspect:vacuos> * 240,<aspect:praecantatio> * 240,<aspect:alienis> * 240], <thaumcraft:baubles:4>, [<alchemistry:ingot:11>,<contenttweaker:rune_of_pride>,<thaumcraft:void_seed>,<thaumicaugmentation:material:5>,<thaumcraft:void_seed>,<contenttweaker:rune_of_greed>,<alchemistry:ingot:11>,<contenttweaker:primordial_fragment>]);

# Seal Copier
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:seal_copier>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:seal_copier", "SEAL_COPIER", <thaumicaugmentation:seal_copier>, 1, [<aspect:cognitio> * 30,<aspect:instrumentum> * 30,<aspect:machina> * 15,<aspect:humanus> * 10], <thaumcraft:golem_bell>, [<thaumcraft:seal>,<thaumcraft:plate:2>,<contenttweaker:condensed_vis_crystal_cognitio>,<evilcraft:dark_stick>,<thaumcraft:resonator>,<evilcraft:dark_stick>,<contenttweaker:condensed_vis_crystal_cognitio>,<thaumcraft:plate:2>]);

# Void Thaumaturge Boots
mods.thaumcraft.Infusion.removeRecipe(<thaumicaugmentation:void_boots>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:void_boots", "BOOTS_VOID", <thaumicaugmentation:void_boots>.withTag({color: 6961280}), 7, [<aspect:metallum> * 50,<aspect:praemunio> * 50,<aspect:vacuos> * 50,<aspect:potentia> * 35,<aspect:alienis> * 35,<aspect:motus> * 35], <thaumcraft:traveller_boots>, [<thaumcraft:fabric>,<thaumcraft:plate:3>,<thaumicaugmentation:material:5>,<thaumcraft:plate:3>,<thaumcraft:fabric>,<contenttweaker:primordial_fragment>]);

# Warded Chest
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:warded_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:warded_chest", "WARDED_ARCANA", 50, [<aspect:aer> * 8,<aspect:ordo> * 8,<aspect:terra> * 5], <thaumicaugmentation:warded_chest>, [[null,<thaumcraft:plate:3>,null],[<thaumcraft:plate:2>,<ironchest:iron_chest:6>,<thaumcraft:plate:2>],[<thaumcraft:plate:2>,<thaumcraft:plate:2>,<thaumcraft:plate:2>]]);

print("ENDING ThaumicAugmentation.zs");