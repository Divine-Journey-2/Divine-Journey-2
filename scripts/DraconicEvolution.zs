# Author: Atricos

import mods.botania.RuneAltar;

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
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<mob_grinding_utils:saw>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_aversio>,<mob_grinding_utils:saw>,<industrialforegoing:mob_relocator>,<mob_grinding_utils:saw>,<contenttweaker:condensed_vis_crystal_aversio>,<galacticraftplanets:item_basic_asteroids:5>],
[<draconicevolution:draconic_core>,<mob_grinding_utils:saw>,<industrialforegoing:mob_relocator>,<contenttweaker:draconic_machine_frame>,<industrialforegoing:mob_relocator>,<mob_grinding_utils:saw>,<draconicevolution:draconic_core>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_aversio>,<mob_grinding_utils:saw>,<industrialforegoing:mob_relocator>,<mob_grinding_utils:saw>,<contenttweaker:condensed_vis_crystal_aversio>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<mob_grinding_utils:saw>,<contenttweaker:condensed_vis_crystal_aversio>,<contenttweaker:condensed_vis_crystal_aversio>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:draconic_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Wyvern Core
recipes.remove(<draconicevolution:wyvern_core>);
mods.botania.RuneAltar.addRecipe(<draconicevolution:wyvern_core>, [<minecraft:nether_star>,<draconicevolution:draconic_core>,<draconicevolution:draconium_ingot>,<draconicevolution:draconic_core>,<draconicevolution:draconium_ingot>,<draconicevolution:draconic_core>,<draconicevolution:draconium_ingot>,<draconicevolution:draconic_core>,<draconicevolution:draconium_ingot>], 250000);
<draconicevolution:wyvern_core>.addTooltip("Takes a quarter of a Mana Pool to craft.");

print("ENDING DraconicEvolution.zs");