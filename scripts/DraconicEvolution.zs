# Author: Atricos

import mods.botania.RuneAltar;
import mods.thaumcraft.Infusion;

print("STARTING DraconicEvolution.zs");

# Potentiometer
recipes.remove(<draconicevolution:potentiometer>);
recipes.addShaped(<draconicevolution:potentiometer>, [[null,<draconicevolution:draconium_dust>,null],[<projectred-core:resource_item:103>,<draconicevolution:draconium_dust>,<projectred-core:resource_item:103>],[<minecraft:stone_slab:7>,<minecraft:stone_slab:7>,<minecraft:stone_slab:7>]]);

# Draconic Core
recipes.remove(<draconicevolution:draconic_core>);
recipes.addShapedMirrored(<draconicevolution:draconic_core>, [[<contenttweaker:galactic_ingot>,<draconicevolution:draconium_ingot>,<lightningcraft:ingot:2>],[<draconicevolution:draconium_ingot>,<contenttweaker:plasma_core>,<draconicevolution:draconium_ingot>],[<contenttweaker:solar_ingot>,<draconicevolution:draconium_ingot>,<contenttweaker:corrupted_light_ingot>]]);

# Draconium Infused Obsidian
recipes.remove(<draconicevolution:infused_obsidian>);
recipes.addShaped(<draconicevolution:infused_obsidian>, [[<contenttweaker:compressed_obsidian2>,<contenttweaker:solar_ingot>,<contenttweaker:compressed_obsidian2>],[<contenttweaker:solar_ingot>,<draconicevolution:draconium_dust>,<contenttweaker:solar_ingot>],[<contenttweaker:compressed_obsidian2>,<contenttweaker:solar_ingot>,<contenttweaker:compressed_obsidian2>]]);

# Dislocation Normalization Field Projector
recipes.remove(<draconicevolution:item_dislocation_inhibitor>);
recipes.addShaped(<draconicevolution:item_dislocation_inhibitor>, [[<galacticraftplanets:item_basic_asteroids:5>,<botania:floatingspecialflower>.withTag({type: "solegnolia"}),<galacticraftplanets:item_basic_asteroids:5>],[<botania:floatingspecialflower>.withTag({type: "solegnolia"}),<contenttweaker:draconic_machine_frame>,<botania:floatingspecialflower>.withTag({type: "solegnolia"})],[<galacticraftplanets:item_basic_asteroids:5>,<botania:floatingspecialflower>.withTag({type: "solegnolia"}),<galacticraftplanets:item_basic_asteroids:5>]]);

# Generator
recipes.remove(<draconicevolution:generator>);
recipes.addShaped(<draconicevolution:generator>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconium_ingot>,<galacticraftplanets:item_basic_asteroids:5>],[<galacticraftcore:machine>,<contenttweaker:draconic_machine_frame>,<galacticraftcore:machine>],[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconium_ingot>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Mob Grinder
recipes.remove(<draconicevolution:grinder>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:grinder>,
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<contenttweaker:condensed_vis_crystal_aversio>,<evilcraft:potentia_sphere>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<contenttweaker:condensed_vis_crystal_aversio>,<mob_grinding_utils:saw>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<mob_grinding_utils:saw>,<industrialforegoing:mob_relocator>,<mob_grinding_utils:saw>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<galacticraftplanets:item_basic_asteroids:5>],
[<draconicevolution:draconic_core>,<evilcraft:potentia_sphere>,<mob_grinding_utils:saw>,<industrialforegoing:mob_relocator>,<contenttweaker:draconic_machine_frame>,<industrialforegoing:mob_relocator>,<mob_grinding_utils:saw>,<evilcraft:potentia_sphere>,<evilcraft:potentia_sphere>,<draconicevolution:draconic_core>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<mob_grinding_utils:saw>,<industrialforegoing:mob_relocator>,<mob_grinding_utils:saw>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<contenttweaker:condensed_vis_crystal_aversio>,<mob_grinding_utils:saw>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<contenttweaker:condensed_vis_crystal_aversio>,<evilcraft:potentia_sphere>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Wyvern Core
recipes.remove(<draconicevolution:wyvern_core>);
mods.botania.RuneAltar.addRecipe(<draconicevolution:wyvern_core>, [<minecraft:nether_star>,<draconicevolution:draconic_core>,<draconicevolution:draconic_core>,<draconicevolution:draconic_core>,<draconicevolution:draconic_core>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>], 250000);
<draconicevolution:wyvern_core>.addTooltip(format.white("Takes a quarter of a Mana Pool to craft."));
<draconicevolution:wyvern_core>.addTooltip(format.italic("JEI shows 10x the Mana you need, so that's why the bar is full."));

# Draconic Evolution Information Tablet
recipes.remove(<draconicevolution:info_tablet>);
recipes.addShaped(<draconicevolution:info_tablet>, [[<contenttweaker:energized_dark_ingot>,<draconicevolution:draconium_dust>,<contenttweaker:energized_dark_ingot>],[<draconicevolution:draconium_dust>,<minecraft:book>,<draconicevolution:draconium_dust>],[<contenttweaker:energized_dark_ingot>,<draconicevolution:draconium_dust>,<contenttweaker:energized_dark_ingot>]]);
<draconicevolution:info_tablet>.addTooltip(format.white("Contains information about EnderIO & Thaumic Energistics,"));
<draconicevolution:info_tablet>.addTooltip(format.white("not just Draconic Evolution & Draconic Additions."));

# Wyvern Energy Core
recipes.remove(<draconicevolution:wyvern_energy_core>);
# recipe in config/modularmachinery/recipes/laser_focus_draconicevolution_wyvern_energy_core.json

# Draconic Energy Core
recipes.remove(<draconicevolution:draconic_energy_core>);
# recipe in config/modularmachinery/recipes/laser_focus_draconicevolution_draconic_energy_core.json

# Particle Generator
recipes.remove(<draconicevolution:particle_generator>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:particle_generator>,
[[<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:solar_ingot>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>],
[<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,null,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>],
[<contenttweaker:solar_ingot>,null,<contenttweaker:draconic_machine_frame>,null,<contenttweaker:solar_ingot>],
[<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,null,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>],
[<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:solar_ingot>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>]]);

# Energy Core Stabilizer
recipes.remove(<draconicevolution:particle_generator:2>);
# recipe in config/modularmachinery/recipes/laser_focus_draconicevolution_energy_core_stabilizer.json

# Energy Infuser
recipes.remove(<draconicevolution:energy_infuser>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:energy_infuser>,
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_potentia>,<draconicevolution:particle_generator:2>,<contenttweaker:condensed_vis_crystal_potentia>,<galacticraftplanets:item_basic_asteroids:5>],
[<draconicevolution:draconic_core>,<contenttweaker:condensed_vis_crystal_potentia>,<contenttweaker:draconic_machine_frame>,<contenttweaker:condensed_vis_crystal_potentia>,<draconicevolution:draconic_core>],
[<galacticraftplanets:item_basic_asteroids:5>,<thermalexpansion:machine:9>,<thermalexpansion:machine:9>,<thermalexpansion:machine:9>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

print("ENDING DraconicEvolution.zs");