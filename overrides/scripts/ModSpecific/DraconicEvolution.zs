# Author: Atricos
# FUSION RECIPES IN config/brandon3055/CustomFusionRecipes.json

import mods.botania.RuneAltar;
import mods.thaumcraft.Infusion;
import mods.enderio.Enchanter;

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
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<contenttweaker:condensed_vis_crystal_aversio>,<industrialforegoing:mob_relocator>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<industrialforegoing:mob_relocator>,<contenttweaker:death_core>,<industrialforegoing:mob_relocator>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<galacticraftplanets:item_basic_asteroids:5>],
[<draconicevolution:draconic_core>,<evilcraft:potentia_sphere>,<industrialforegoing:mob_relocator>,<contenttweaker:death_core>,<contenttweaker:draconic_machine_frame>,<contenttweaker:death_core>,<industrialforegoing:mob_relocator>,<evilcraft:potentia_sphere>,<draconicevolution:draconic_core>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<industrialforegoing:mob_relocator>,<contenttweaker:death_core>,<industrialforegoing:mob_relocator>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<contenttweaker:condensed_vis_crystal_aversio>,<industrialforegoing:mob_relocator>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:offensive_core>,<contenttweaker:offensive_core>,<galacticraftplanets:item_basic_asteroids:5>],
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

# Dislocator Receptacle
recipes.remove(<draconicevolution:dislocator_receptacle>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:dislocator_receptacle>,
[[<contenttweaker:titanium_box>,<draconicevolution:infused_obsidian>,<contenttweaker:titanium_box>,<draconicevolution:infused_obsidian>,<contenttweaker:titanium_box>],
[<draconicevolution:infused_obsidian>,<draconicevolution:infused_obsidian>,<draconicevolution:draconic_core>,<draconicevolution:infused_obsidian>,<draconicevolution:infused_obsidian>],
[<contenttweaker:titanium_box>,<draconicevolution:draconic_core>,<draconicevolution:draconic_core>,<draconicevolution:draconic_core>,<contenttweaker:titanium_box>],
[<draconicevolution:infused_obsidian>,<draconicevolution:infused_obsidian>,<draconicevolution:draconic_core>,<draconicevolution:infused_obsidian>,<draconicevolution:infused_obsidian>],
[<contenttweaker:titanium_box>,<draconicevolution:infused_obsidian>,<contenttweaker:titanium_box>,<draconicevolution:infused_obsidian>,<contenttweaker:titanium_box>]]);

# Dislocator Pedestal
recipes.remove(<draconicevolution:dislocator_pedestal>);
recipes.addShaped(<draconicevolution:dislocator_pedestal>, [[null,<enderio:block_tele_pad>,null],[null,<enderio:block_tele_pad>,null],[<thaumcraft:pedestal_eldritch>,<contenttweaker:draconic_machine_frame>,<thaumcraft:pedestal_eldritch>]]);

# Rain Sensor
recipes.remove(<draconicevolution:rain_sensor>);
recipes.addShaped(<draconicevolution:rain_sensor>, [[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>],[<contenttweaker:tempestas>,<draconicevolution:draconic_core>,<contenttweaker:tempestas>],[<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>,<galacticraftplanets:item_basic_mars:3>]]);

# Disenchanter
recipes.remove(<draconicevolution:diss_enchanter>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:diss_enchanter>,
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<industrialforegoing:enchantment_extractor>,<actuallyadditions:item_disenchanting_lens>,<lightningcraft:ench_reallocator>,<actuallyadditions:item_disenchanting_lens>,<industrialforegoing:enchantment_aplicator>,<galacticraftplanets:item_basic_asteroids:5>],
[<draconicevolution:draconic_core>,<contenttweaker:condensed_vis_crystal_instrumentum>,<industrialforegoing:enchantment_extractor>,<contenttweaker:draconic_machine_frame>,<industrialforegoing:enchantment_aplicator>,<contenttweaker:condensed_vis_crystal_instrumentum>,<draconicevolution:draconic_core>],
[<galacticraftplanets:item_basic_asteroids:5>,<industrialforegoing:enchantment_extractor>,<contenttweaker:condensed_vis_crystal_praecantatio>,<lightningcraft:ench_reallocator>,<contenttweaker:condensed_vis_crystal_praecantatio>,<industrialforegoing:enchantment_aplicator>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Entity Detector
recipes.remove(<draconicevolution:entity_detector>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:entity_detector>,
[[null,null,<minecraft:ender_eye>,null,null],
[null,<integrateddynamics:part_entity_reader_item>,<integrateddynamics:part_entity_reader_item>,<integrateddynamics:part_entity_reader_item>,null],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:basic_item:13>,<contenttweaker:draconic_machine_frame>,<galacticraftcore:basic_item:13>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Advanced Entity Detector
recipes.remove(<draconicevolution:entity_detector:1>);
recipes.addShaped(<draconicevolution:entity_detector:1>, [[null,<minecraft:skull:1>,null],[<draconicevolution:entity_detector>,<contenttweaker:draconic_machine_frame>,<draconicevolution:entity_detector>],[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Energy Core
recipes.remove(<draconicevolution:energy_storage_core>);
mods.thaumcraft.Infusion.registerRecipe("draconic_energy_storage_core", "", <draconicevolution:energy_storage_core>, 9, [<aspect:potentia> * 240, <aspect:ignis> * 120, <aspect:lux> * 120, <aspect:auram> * 80, <aspect:diabolus> * 40], <draconicevolution:wyvern_core>, [<draconicevolution:wyvern_energy_core>,<draconicevolution:wyvern_energy_core>,<draconicevolution:wyvern_energy_core>,<draconicevolution:wyvern_energy_core>,<enderio:block_cap_bank:3>,<enderio:block_cap_bank:3>,<enderio:block_cap_bank:3>,<enderio:block_cap_bank:3>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>,<galacticraftplanets:basic_item_venus:6>]);

# Energy Pylon
recipes.remove(<draconicevolution:energy_pylon>);
mods.thaumcraft.Infusion.registerRecipe("draconic_energy_pylon", "", <draconicevolution:energy_pylon>, 8, [<aspect:potentia> * 150, <aspect:permutatio> * 150, <aspect:auram> * 80], <draconicevolution:wyvern_energy_core>, [<draconicevolution:draconic_core>,<galacticraftcore:basic_item:20>,<draconicevolution:draconic_core>,<galacticraftcore:basic_item:20>]);

# Fusion Crafting Core
recipes.remove(<draconicevolution:fusion_crafting_core>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:fusion_crafting_core>,
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:wyvern_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:basic_item:12>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftplanets:beam_receiver>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftcore:basic_item:12>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftplanets:beam_reflector>,<draconicevolution:wyvern_energy_core>,<galacticraftplanets:beam_reflector>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftplanets:item_basic_asteroids:5>],
[<draconicevolution:wyvern_core>,<extendedcrafting:material:24>,<galacticraftplanets:beam_receiver>,<draconicevolution:wyvern_energy_core>,<contenttweaker:draconic_machine_frame>,<draconicevolution:wyvern_energy_core>,<galacticraftplanets:beam_receiver>,<extendedcrafting:material:24>,<draconicevolution:wyvern_core>],
[<galacticraftplanets:item_basic_asteroids:5>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftplanets:beam_reflector>,<draconicevolution:wyvern_energy_core>,<galacticraftplanets:beam_reflector>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:basic_item:12>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftplanets:beam_receiver>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftcore:basic_item:12>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<galacticraftcore:basic_item:12>,<galacticraftcore:basic_item:12>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:wyvern_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Basic Fusion Crafting Injector
recipes.remove(<draconicevolution:crafting_injector>);
recipes.addShaped(<draconicevolution:crafting_injector>, [[<extendedcrafting:material:24>,<contenttweaker:draconic_machine_frame>,<extendedcrafting:material:24>],[<mekanism:machineblock2:3>,<galacticraftplanets:beam_receiver>,<mekanism:machineblock2:3>],[null,<galacticraftplanets:beam_reflector>,null]]);

# Basic Energy Relay Crystal
recipes.removeShaped(<draconicevolution:energy_crystal>);
# recipe in config/modularmachinery/recipes/laser_focus_draconicevolution_basic_energy_relay_crystal.json

# Wyvern Energy Relay Crystal
recipes.removeShaped(<draconicevolution:energy_crystal:1>);
# recipe in config/modularmachinery/recipes/laser_focus_draconicevolution_wyvern_energy_relay_crystal.json

# Basic Wireless Energy Crystal
recipes.remove(<draconicevolution:energy_crystal:6>);
recipes.addShaped(<draconicevolution:energy_crystal:6>, [[<enderio:block_normal_wireless_charger>,<draconicevolution:particle_generator>,<enderio:block_normal_wireless_charger>],[<draconicevolution:draconic_core>,<draconicevolution:energy_crystal>,<draconicevolution:draconic_core>],[<enderio:block_normal_wireless_charger>,<draconicevolution:particle_generator>,<enderio:block_normal_wireless_charger>]]);

# Wyvern Wireless Energy Crystal
recipes.remove(<draconicevolution:energy_crystal:7>);
recipes.addShaped(<draconicevolution:energy_crystal:7>, [[<enderio:block_enhanced_wireless_charger>,<draconicevolution:particle_generator>,<enderio:block_enhanced_wireless_charger>],[<draconicevolution:wyvern_core>,<draconicevolution:energy_crystal:1>,<draconicevolution:wyvern_core>],[<enderio:block_enhanced_wireless_charger>,<draconicevolution:particle_generator>,<enderio:block_enhanced_wireless_charger>]]);

# Flux Gate
recipes.remove(<draconicevolution:flow_gate>);
recipes.addShaped(<draconicevolution:flow_gate>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:potentiometer>,<galacticraftplanets:item_basic_asteroids:5>],[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:draconic_machine_frame>,<contenttweaker:steaming_restonia_crystal>],[<galacticraftplanets:item_basic_asteroids:5>,<rftools:logic_block>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Fluid Gate
recipes.remove(<draconicevolution:flow_gate:8>);
recipes.addShaped(<draconicevolution:flow_gate:8>, [[<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:potentiometer>,<galacticraftplanets:item_basic_asteroids:5>],[<enderio:item_alloy_endergy_ingot:1>,<contenttweaker:draconic_machine_frame>,<enderio:item_alloy_endergy_ingot:1>],[<galacticraftplanets:item_basic_asteroids:5>,<rftools:logic_block>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Dislocator
recipes.remove(<draconicevolution:dislocator>);
recipes.addShaped(<draconicevolution:dislocator>, [[null,<draconicevolution:wyvern_energy_core>,null],[<draconicevolution:wyvern_energy_core>,<mekanism:portableteleporter>,<draconicevolution:wyvern_energy_core>],[null,<draconicevolution:wyvern_energy_core>,null]]);

# Item Dislocator
recipes.remove(<draconicevolution:magnet>);
recipes.addShaped(<draconicevolution:magnet>, [[<draconicevolution:draconium_ingot>,null,<draconicevolution:draconium_ingot>],[<draconicevolution:draconium_ingot>,<botania:magnetringgreater>,<draconicevolution:draconium_ingot>],[<draconicevolution:wyvern_core>,<draconicevolution:dislocator>,<draconicevolution:wyvern_core>]]);

# Wyvern Helm
recipes.remove(<draconicevolution:wyvern_helm>);
mods.avaritia.ExtremeCrafting.addShaped("draconicevolution:wyvern_helm", <draconicevolution:wyvern_helm>,
[[null,null,null,null,null,null,null,null,null],
[null,null,null,<mysticalagriculture:ingot_storage:5>,null,<mysticalagriculture:ingot_storage:5>,null,null,null],
[null,null,<draconicevolution:draconium_block>,<mysticalagriculture:ingot_storage:5>,<extendedcrafting:material:24>,<mysticalagriculture:ingot_storage:5>,<draconicevolution:draconium_block>,null,null],
[null,null,<draconicevolution:draconium_block>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<draconicevolution:draconium_block>,null,null],
[null,<draconicevolution:draconium_block>,<extendedcrafting:material:24>,<draconicevolution:draconium_block>,<draconicadditions:potato_helm>,<draconicevolution:draconium_block>,<extendedcrafting:material:24>,<draconicevolution:draconium_block>,null],
[<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>],
[<draconicevolution:draconium_block>,null,null,<draconicevolution:draconium_block>,<draconicevolution:wyvern_core>,<draconicevolution:draconium_block>,null,null,<draconicevolution:draconium_block>],
[<draconicevolution:draconium_block>,null,null,<draconicevolution:draconium_block>,<draconicevolution:wyvern_core>,<draconicevolution:draconium_block>,null,null,<draconicevolution:draconium_block>],
[null,null,null,null,null,null,null,null,null]]);

# Wyvern Chestplate
recipes.remove(<draconicevolution:wyvern_chest>);
mods.avaritia.ExtremeCrafting.addShaped("draconicevolution:wyvern_chest", <draconicevolution:wyvern_chest>,
[[null,null,<extendedcrafting:material:24>,null,null,null,<extendedcrafting:material:24>,null,null],
[<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,null,null,null,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>],
[null,<draconicevolution:draconium_block>,<extendedcrafting:material:24>,<mysticalagriculture:ingot_storage:5>,<mysticalagriculture:ingot_storage:5>,<mysticalagriculture:ingot_storage:5>,<extendedcrafting:material:24>,<draconicevolution:draconium_block>,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<extendedcrafting:material:24>,<draconicevolution:wyvern_core>,<extendedcrafting:material:24>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicadditions:potato_chest>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:wyvern_core>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null],
[null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null],
[null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null],
[null,null,null,null,null,null,null,null,null]]);

# Wyvern Leggings
recipes.remove(<draconicevolution:wyvern_legs>);
mods.avaritia.ExtremeCrafting.addShaped("draconicevolution:wyvern_legs", <draconicevolution:wyvern_legs>,
[[null,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,null,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,null],
[<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<mysticalagriculture:ingot_storage:5>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>],
[null,<draconicevolution:draconium_block>,<draconicevolution:wyvern_core>,<mysticalagriculture:ingot_storage:5>,<draconicadditions:potato_legs>,<mysticalagriculture:ingot_storage:5>,<draconicevolution:wyvern_core>,<draconicevolution:draconium_block>,null],
[null,<extendedcrafting:material:24>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<extendedcrafting:material:24>,null],
[null,<draconicevolution:draconium_block>,<extendedcrafting:material:24>,<extendedcrafting:material:24>,null,<extendedcrafting:material:24>,<extendedcrafting:material:24>,<draconicevolution:draconium_block>,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null]]);

# Wyvern Boots
recipes.remove(<draconicevolution:wyvern_boots>);
mods.avaritia.ExtremeCrafting.addShaped("draconicevolution:wyvern_boots", <draconicevolution:wyvern_boots>,
[[null,null,null,null,null,null,null,null,null],
[null,null,null,null,null,null,null,null,null],
[null,null,null,null,null,null,null,null,null],
[<extendedcrafting:material:24>,null,<mysticalagriculture:ingot_storage:5>,<mysticalagriculture:ingot_storage:5>,null,<mysticalagriculture:ingot_storage:5>,<mysticalagriculture:ingot_storage:5>,null,<extendedcrafting:material:24>],
[null,<extendedcrafting:material:24>,<draconicevolution:wyvern_core>,<extendedcrafting:material:24>,<draconicadditions:potato_boots>,<extendedcrafting:material:24>,<draconicevolution:wyvern_core>,<extendedcrafting:material:24>,null],
[null,<draconicevolution:draconium_block>,<extendedcrafting:material:24>,<draconicevolution:draconium_block>,null,<draconicevolution:draconium_block>,<extendedcrafting:material:24>,<draconicevolution:draconium_block>,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null],
[null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null]]);

# Wyvern Flux Capacitor
recipes.remove(<draconicevolution:draconium_capacitor>);
# recipe in config/modularmachinery/recipes/laser_focus_draconicevolution_wyvern_flux_capacitor.json

# Crystal Binder
recipes.remove(<draconicevolution:crystal_binder>);
recipes.addShapedMirrored(<draconicevolution:crystal_binder>, [[null,<draconicevolution:draconium_ingot>,null],[null,<contenttweaker:solar_ingot>,<draconicevolution:draconium_ingot>],[<draconicevolution:draconic_core>,null,null]]);

# Sword of the Wyvern
recipes.remove(<draconicevolution:wyvern_sword>);
mods.avaritia.ExtremeCrafting.addShaped("draconicevolution:wyvern_sword", <draconicevolution:wyvern_sword>,
[[null,null,null,null,<draconicevolution:draconium_block>,null,null,null,null],
[null,null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null,null],
[null,null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null,null],
[null,null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null,null],
[null,null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null,null],
[null,null,null,<draconicevolution:draconium_block>,<extrautils2:luxsaber:*>,<draconicevolution:draconium_block>,null,null,null],
[null,null,<extendedcrafting:material:24>,<draconicevolution:wyvern_core>,<galacticraftplanets:titanium_sword>,<draconicevolution:wyvern_core>,<extendedcrafting:material:24>,null,null],
[null,null,null,<extendedcrafting:material:24>,<mysticalagriculture:ingot_storage:5>,<extendedcrafting:material:24>,null,null,null],
[null,null,null,null,<mysticalagriculture:ingot_storage:5>,null,null,null,null]]);

# Pickaxe of the Wyvern
recipes.remove(<draconicevolution:wyvern_pick>);
mods.avaritia.ExtremeCrafting.addShaped("draconicevolution:wyvern_pick", <draconicevolution:wyvern_pick>,
[[null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null],
[null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null],
[<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,<draconicevolution:wyvern_core>,<galacticraftplanets:titanium_pickaxe>,<draconicevolution:wyvern_core>,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>],
[<draconicevolution:draconium_block>,null,null,null,<mysticalagriculture:ingot_storage:5>,null,null,null,<draconicevolution:draconium_block>],
[null,null,null,null,<mysticalagriculture:ingot_storage:5>,null,null,null,null],
[null,null,null,null,<extendedcrafting:material:24>,null,null,null,null],
[null,null,null,null,<extendedcrafting:material:24>,null,null,null,null],
[null,null,null,null,<extendedcrafting:material:24>,null,null,null,null],
[null,null,null,null,<draconicevolution:draconium_block>,null,null,null,null]]);

# Shovel of the Wyvern
recipes.remove(<draconicevolution:wyvern_shovel>);
mods.avaritia.ExtremeCrafting.addShaped("draconicevolution:wyvern_shovel" ,<draconicevolution:wyvern_shovel>,
[[null,null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null,null],
[null,null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null,null],
[null,null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,null,null,null],
[null,null,null,<draconicevolution:wyvern_core>,<galacticraftplanets:titanium_shovel>,<draconicevolution:wyvern_core>,null,null,null],
[null,null,null,null,<extendedcrafting:material:24>,null,null,null,null],
[null,null,null,null,<extendedcrafting:material:24>,null,null,null,null],
[null,null,null,null,<extendedcrafting:material:24>,null,null,null,null],
[null,null,null,null,<mysticalagriculture:ingot_storage:5>,null,null,null,null],
[null,null,null,<draconicevolution:draconium_block>,<mysticalagriculture:ingot_storage:5>,<draconicevolution:draconium_block>,null,null,null]]);

# Axe of the Wyvern
recipes.remove(<draconicevolution:wyvern_axe>);
mods.avaritia.ExtremeCrafting.addShaped("draconicevolution:wyvern_axe", <draconicevolution:wyvern_axe>,
[[null,null,<draconicevolution:draconium_block>,null,null,null,null,null,null],
[null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:wyvern_core>,null,null,null,null],
[null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<galacticraftplanets:titanium_axe>,<draconicevolution:draconium_block>,null,null,null],
[null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:wyvern_core>,null,null,null,null],
[null,null,<draconicevolution:draconium_block>,null,<extendedcrafting:material:24>,null,null,null,null],
[null,null,null,null,<extendedcrafting:material:24>,null,null,null,null],
[null,null,null,null,<extendedcrafting:material:24>,null,null,null,null],
[null,null,null,null,<mysticalagriculture:ingot_storage:5>,null,null,null,null],
[null,null,null,<draconicevolution:draconium_block>,<mysticalagriculture:ingot_storage:5>,<draconicevolution:draconium_block>,null,null,null]]);

# Bow of the Wyvern
recipes.remove(<draconicevolution:wyvern_bow>);
mods.avaritia.ExtremeCrafting.addShaped("draconicevolution:wyvern_bow", <draconicevolution:wyvern_bow>,
[[null,null,<extendedcrafting:material:24>,null,null,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<draconicevolution:draconium_block>,<mysticalagriculture:ingot_storage:5>],
[null,null,null,<draconicevolution:wyvern_core>,<draconicevolution:draconium_block>,null,null,null,<botania:manaresource:12>],
[<extendedcrafting:material:24>,null,<thaumcraft:turret>,<draconicevolution:draconium_block>,<mysticalagriculture:supremium_bow>,null,null,<botania:manaresource:12>,null],
[null,<draconicevolution:wyvern_core>,<draconicevolution:draconium_block>,<bloodmagic:sentient_bow>,null,null,<botania:manaresource:12>,null,null],
[null,<draconicevolution:draconium_block>,<divinerpg:mortum_bow>,null,null,<botania:manaresource:12>,null,null,null],
[<draconicevolution:draconium_block>,null,null,null,<botania:manaresource:12>,null,null,null,null],
[<draconicevolution:draconium_block>,null,null,<botania:manaresource:12>,null,null,null,null,null],
[<draconicevolution:draconium_block>,null,<botania:manaresource:12>,null,null,null,null,null,null],
[<mysticalagriculture:ingot_storage:5>,<botania:manaresource:12>,null,null,null,null,null,null,null]]);

# Upgrade Key (RF Capacity)
recipes.remove(<draconicevolution:tool_upgrade>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade", "", <draconicevolution:tool_upgrade>, 8, [<aspect:potentia> * 80, <aspect:instrumentum> * 60], <draconicevolution:wyvern_energy_core>, [<enderio:block_cap_bank:3>,<draconicevolution:draconic_core>,<draconicevolution:draconium_block>,<draconicevolution:draconic_core>,<enderio:block_cap_bank:3>,<draconicevolution:draconic_core>,<draconicevolution:draconium_block>,<draconicevolution:draconic_core>]);

# Upgrade Key (Dig Speed)
recipes.remove(<draconicevolution:tool_upgrade:1>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:1", "", <draconicevolution:tool_upgrade:1>, 8, [<aspect:motus> * 80, <aspect:instrumentum> * 60], <minecraft:golden_pickaxe>, [<lightningcraft:plate:9>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>]);

# Upgrade Key (Dig AOE)
recipes.remove(<draconicevolution:tool_upgrade:2>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:2", "", <draconicevolution:tool_upgrade:2>, 8, [<aspect:perditio> * 80, <aspect:instrumentum> * 60], <mysticalagradditions:charm>, [<actuallyadditions:block_miner>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>,<thaumcraft:turret:2>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>]);

# Upgrade Key (Attack Damage)
recipes.remove(<draconicevolution:tool_upgrade:3>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:3", "", <draconicevolution:tool_upgrade:3>, 8, [<aspect:aversio> * 80, <aspect:instrumentum> * 60], <mysticalagriculture:charm:8>, [<minecraft:potion>.withTag({Potion: "cofhcore:strength3+"}),<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>,<minecraft:potion>.withTag({Potion: "cofhcore:strength3+"}),<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>]);

# Upgrade Key (Attack AOE)
recipes.remove(<draconicevolution:tool_upgrade:4>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:4", "", <draconicevolution:tool_upgrade:4>, 8, [<aspect:aversio> * 80, <aspect:instrumentum> * 60], <mysticalagriculture:charm:16>, [<immersiveengineering:metal_device1:11>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>,<immersiveengineering:metal_device1:11>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>]);

# Upgrade Key (Arrow Damage)
recipes.remove(<draconicevolution:tool_upgrade:5>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:5", "", <draconicevolution:tool_upgrade:5>, 8, [<aspect:aversio> * 80, <aspect:volatus> * 60], <mysticalagriculture:charm:14>, [<mysticalagriculture:supremium_arrow>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>,<mysticalagriculture:supremium_arrow>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>]);

# Upgrade Key (Draw Speed)
recipes.remove(<draconicevolution:tool_upgrade:6>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:6", "", <draconicevolution:tool_upgrade:6>, 8, [<aspect:motus> * 80, <aspect:volatus> * 60], <mysticalagriculture:charm:13>, [<mysticalagriculture:supremium_arrow>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>,<mysticalagriculture:supremium_arrow>,<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>]);

# Upgrade Key (Arrow Speed)
recipes.remove(<draconicevolution:tool_upgrade:7>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:7", "", <draconicevolution:tool_upgrade:7>, 8, [<aspect:motus> * 80, <aspect:volatus> * 60], <mysticalagriculture:supremium_arrow>, [<minecraft:tipped_arrow>.withTag({Potion: "cofhcore:swiftness4"}),<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>,<minecraft:tipped_arrow>.withTag({Potion: "cofhcore:swiftness4"}),<draconicevolution:draconic_core>,<lightningcraft:plate:9>,<draconicevolution:draconic_core>]);

# Upgrade Key (Shield Capacity)
recipes.remove(<draconicevolution:tool_upgrade:8>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:8", "", <draconicevolution:tool_upgrade:8>, 8, [<aspect:praemunio> * 80, <aspect:potentia> * 60], <mysticalagriculture:charm:6>, [<enderio:block_cap_bank:3>,<draconicevolution:draconic_core>,<spartanshields:shield_tower_platinum>,<draconicevolution:draconic_core>,<enderio:block_cap_bank:3>,<draconicevolution:draconic_core>,<spartanshields:shield_tower_platinum>,<draconicevolution:draconic_core>]);

# Upgrade Key (Shield Recovery)
recipes.remove(<draconicevolution:tool_upgrade:9>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:9", "", <draconicevolution:tool_upgrade:9>, 8, [<aspect:praemunio> * 80, <aspect:potentia> * 60], <mysticalagriculture:charm:2>, [<enderio:block_cap_bank:3>,<draconicevolution:draconic_core>,<minecraft:potion>.withTag({Potion: "cofhcore:regeneration4"}),<draconicevolution:draconic_core>,<enderio:block_cap_bank:3>,<draconicevolution:draconic_core>,<minecraft:potion>.withTag({Potion: "cofhcore:regeneration4"}),<draconicevolution:draconic_core>]);

# Upgrade Key (Movement Speed)
recipes.remove(<draconicevolution:tool_upgrade:10>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:10", "", <draconicevolution:tool_upgrade:10>, 8, [<aspect:motus> * 80, <aspect:praemunio> * 60], <mysticalagriculture:charm:9>, [<teslacorelib:speed_tier2>,<draconicevolution:draconic_core>,<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}),<draconicevolution:draconic_core>,<teslacorelib:speed_tier2>,<draconicevolution:draconic_core>,<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}),<draconicevolution:draconic_core>]);

# Upgrade Key (Jump Boost)
recipes.remove(<draconicevolution:tool_upgrade:11>);
mods.thaumcraft.Infusion.registerRecipe("draconicevolution:tool_upgrade:11", "", <draconicevolution:tool_upgrade:11>, 8, [<aspect:motus> * 80, <aspect:volatus> * 60], <mysticalagriculture:charm:10>, [<tconstruct:slime_boots:*>,<draconicevolution:draconic_core>,<minecraft:potion>.withTag({Potion: "cofhcore:leaping4"}),<draconicevolution:draconic_core>,<tconstruct:slime_boots:*>,<draconicevolution:draconic_core>,<minecraft:potion>.withTag({Potion: "cofhcore:leaping4"}),<draconicevolution:draconic_core>]);

# Draconic Wireless Energy Crystal
recipes.remove(<draconicevolution:energy_crystal:8>);
recipes.addShaped(<draconicevolution:energy_crystal:8>, [[<enderio:block_enhanced_wireless_charger>,<draconicevolution:particle_generator:2>,<enderio:block_enhanced_wireless_charger>],[<draconicevolution:awakened_core>,<draconicevolution:energy_crystal:2>,<draconicevolution:awakened_core>],[<enderio:block_enhanced_wireless_charger>,<draconicevolution:particle_generator:2>,<enderio:block_enhanced_wireless_charger>]]);

# Awakened Item Dislocator
recipes.remove(<draconicevolution:magnet:1>);
# recipe in config/brandon3055/CustomFusionRecipes.json

# Draconic Flux Capacitor
recipes.remove(<draconicevolution:draconium_capacitor:1>);
# recipe in config/brandon3055/CustomFusionRecipes.json

# Dragon Heart from Mystical Agriaddons
recipes.remove(<draconicevolution:dragon_heart>);
recipes.addShaped(<draconicevolution:dragon_heart>, [[<mysticalagriculture:crafting:37>,<mysticalagradditions:stuff:2>,<mysticalagriculture:crafting:37>],[<mysticalagradditions:stuff:2>,<bhc:green_heart>,<mysticalagradditions:stuff:2>],[<mysticalagriculture:crafting:37>,<mysticalagradditions:stuff:2>,<mysticalagriculture:crafting:37>]]);
<draconicevolution:dragon_heart>.addTooltip(format.white("Obtained after slaying the Ender Dragon."));
<draconicevolution:dragon_heart>.addTooltip(format.white("Can also be crafted using Mystical Agriculture."));

# Reaper enchantment
# mods.enderio.Enchanter.removeRecipe(<enchantment:draconicevolution:enchant_reaper>);
# mods.enderio.Enchanter.addRecipe(<enchantment:draconicevolution:enchant_reaper>, <draconicevolution:draconic_core>, 3, 60);
# causes a crash

# Chaos Shard
<draconicevolution:chaos_shard>.addTooltip(format.white("Obtained after slaying the Chaos Guardian."));
<draconicevolution:chaos_shard>.addTooltip(format.white("Can also be crafted using Alchemistry."));

# Reactor Stabilizer Inner Rotor
recipes.remove(<draconicevolution:reactor_part:1>);
recipes.addShapedMirrored(<draconicevolution:reactor_part:1>, [[<contenttweaker:corrupted_core>,<alchemistry:ingot:44>,<alchemistry:ingot:44>],[null,<bigreactors:turbinerotorblade>,<bigreactors:turbinerotorblade>]]);

# Reactor Stabilizer Outer Rotor
recipes.remove(<draconicevolution:reactor_part:2>);
recipes.addShapedMirrored(<draconicevolution:reactor_part:2>, [[<contenttweaker:corrupted_core>,<alchemistry:ingot:41>,<alchemistry:ingot:41>],[null,<bigreactors:turbinerotorblade>,<bigreactors:turbinerotorblade>]]);

# Reactor Stabilizer Rotor Assembly
recipes.remove(<draconicevolution:reactor_part:3>);
recipes.addShapedMirrored(<draconicevolution:reactor_part:3>, [[null,<draconicevolution:reactor_part:1>,<draconicevolution:reactor_part:2>],[<contenttweaker:corrupted_core>,<alchemistry:ingot:94>,<alchemistry:ingot:94>],[null,<draconicevolution:reactor_part:1>,<draconicevolution:reactor_part:2>]]);

# Reactor Stabilizer Focus Ring
recipes.remove(<draconicevolution:reactor_part:4>);
recipes.addShaped(<draconicevolution:reactor_part:4>, [[<alchemistry:ingot:44>,<alchemistry:ingot:41>,<alchemistry:ingot:44>],[<alchemistry:ingot:41>,<contenttweaker:corrupted_core>,<alchemistry:ingot:41>],[<alchemistry:ingot:44>,<alchemistry:ingot:41>,<alchemistry:ingot:44>]]);

# Reactor Stabilizer Frame
recipes.remove(<draconicevolution:reactor_part>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:reactor_part>,
[[<immersiveengineering:metal:5>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<immersiveengineering:metal:5>],
[<immersiveengineering:metal:5>,null,null,null,<immersiveengineering:metal:5>],
[<contenttweaker:corrupted_core>,<bigreactors:turbinerotorshaft>,<contenttweaker:draconic_machine_frame>,<bigreactors:turbinerotorshaft>,<contenttweaker:corrupted_core>],
[<immersiveengineering:metal:5>,null,null,null,<immersiveengineering:metal:5>],
[<immersiveengineering:metal:5>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<alchemistry:ingot:94>,<immersiveengineering:metal:5>]]);

# Bound Dislocator (Point to Point)
recipes.remove(<draconicevolution:dislocator_bound:1>);
recipes.addShaped(<draconicevolution:dislocator_bound:1>, [[<alchemistry:ingot:44>,<quantumflux:zeropointextractor>,<alchemistry:ingot:44>],[<alchemistry:ingot:44>,<rftools:advanced_charged_porter>,<alchemistry:ingot:44>],[<alchemistry:ingot:44>,<draconicevolution:dislocator>,<alchemistry:ingot:44>]]);

# Bound Dislocator (Player)
recipes.remove(<draconicevolution:dislocator_bound:2>);
recipes.addShaped(<draconicevolution:dislocator_bound:2>, [[<alchemistry:ingot:44>,<actuallyadditions:block_player_interface>,<alchemistry:ingot:44>],[<alchemistry:ingot:44>,<rftools:advanced_charged_porter>,<alchemistry:ingot:44>],[<alchemistry:ingot:44>,<draconicevolution:dislocator>,<alchemistry:ingot:44>]]);

# Celestial Manipulator
recipes.remove(<draconicevolution:celestial_manipulator>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:celestial_manipulator>,
[[<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:94>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:94>,<contenttweaker:celestial_crystal_core>],
[<alchemistry:ingot:94>,<alchemistry:ingot:94>,<alchemistry:ingot:60>,<contenttweaker:corrupted_dragon_token>,<alchemistry:ingot:60>,<alchemistry:ingot:94>,<alchemistry:ingot:94>],
[<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<astralsorcery:blockcelestialgateway>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<contenttweaker:corrupted_dragon_token>,<astralsorcery:blockcelestialgateway>,<contenttweaker:penultimate_machine_frame>,<astralsorcery:blockcelestialgateway>,<contenttweaker:corrupted_dragon_token>,<alchemistry:ingot:60>],
[<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<astralsorcery:blockcelestialgateway>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>],
[<alchemistry:ingot:94>,<alchemistry:ingot:94>,<alchemistry:ingot:60>,<contenttweaker:corrupted_dragon_token>,<alchemistry:ingot:60>,<alchemistry:ingot:94>,<alchemistry:ingot:94>],
[<contenttweaker:celestial_crystal_core>,<alchemistry:ingot:94>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:60>,<alchemistry:ingot:94>,<contenttweaker:celestial_crystal_core>]]);

# Creative Flux Capacitor
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:draconium_capacitor:2>, 
[[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>], 
[<projecte:item.pe_matter:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <projecte:item.pe_matter:1>], 
[<projecte:item.pe_matter:1>, <draconicevolution:draconium_capacitor:1>, <extrautils2:passivegenerator:6>, <draconicevolution:draconium_capacitor:1>, <projecte:item.pe_matter:1>], 
[<projecte:item.pe_matter:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <projecte:item.pe_matter:1>], 
[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>]]);

# Creative RF Source
mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:creative_rf_source>,
[[<draconicevolution:infused_obsidian>, <draconicevolution:infused_obsidian>, <draconicevolution:energy_crystal:8>, <draconicevolution:infused_obsidian>, <draconicevolution:infused_obsidian>], 
[<draconicevolution:infused_obsidian>, <draconicevolution:particle_generator:2>, <draconicevolution:energy_storage_core>, <draconicevolution:particle_generator:2>, <draconicevolution:infused_obsidian>], 
[<draconicevolution:energy_crystal:8>, <contenttweaker:corrupted_dragon_token>, <extrautils2:creativeenergy>, <contenttweaker:corrupted_dragon_token>, <draconicevolution:energy_crystal:8>], 
[<draconicevolution:infused_obsidian>, <draconicevolution:particle_generator:2>, <draconicevolution:energy_storage_core>, <draconicevolution:particle_generator:2>, <draconicevolution:infused_obsidian>], 
[<draconicevolution:infused_obsidian>, <draconicevolution:infused_obsidian>, <draconicevolution:energy_crystal:8>, <draconicevolution:infused_obsidian>, <draconicevolution:infused_obsidian>]]);

print("ENDING DraconicEvolution.zs");