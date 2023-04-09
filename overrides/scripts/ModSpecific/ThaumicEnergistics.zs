# Author: Atricos
# Research strings can be found in thaumicenergistics-2.2.4.jar/integration/thaumcraft/ThEThaumcraft.class

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;

print("STARTING ThaumicEnergistics.zs");

# Diffusion Core
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:diffusion_core>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:diffusion_core", "DIGISENTIA", 10, [<aspect:perditio> * 2], <thaumicenergistics:diffusion_core>, [[<thaumcraft:quicksilver>,<contenttweaker:thaumium_processor>,<thaumcraft:quicksilver>],[<thaumcraft:stone_eldritch_tile>,<appliedenergistics2:material:44>,<thaumcraft:stone_eldritch_tile>],[<thaumcraft:quicksilver>,<contenttweaker:thaumium_processor>,<thaumcraft:quicksilver>]]);

# Coalescence Core
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:coalescence_core>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:coalescence_core", "DIGISENTIA", 10, [<aspect:ordo> * 2], <thaumicenergistics:coalescence_core>, [[<thaumcraft:quicksilver>,<contenttweaker:thaumium_processor>,<thaumcraft:quicksilver>],[<thaumcraft:stone_eldritch_tile>,<appliedenergistics2:material:43>,<thaumcraft:stone_eldritch_tile>],[<thaumcraft:quicksilver>,<contenttweaker:thaumium_processor>,<thaumcraft:quicksilver>]]);

# 1k ME Essentia Storage Component
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:essentia_component_1k>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_component_1k_base", "ESSENTIASTORAGE1k", 10, [], <thaumicenergistics:essentia_component_1k>, [[<thaumcraft:salis_mundus>,<appliedenergistics2:material>,<thaumcraft:stone_eldritch_tile>],[<appliedenergistics2:material>,<contenttweaker:thaumium_processor>,<appliedenergistics2:material>],[<thaumcraft:stone_eldritch_tile>,<appliedenergistics2:material>,<thaumcraft:salis_mundus>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_component_1k_charged", "ESSENTIASTORAGE1k", 10, [], <thaumicenergistics:essentia_component_1k>, [[<thaumcraft:salis_mundus>,<appliedenergistics2:material:1>,<thaumcraft:stone_eldritch_tile>],[<appliedenergistics2:material:1>,<contenttweaker:thaumium_processor>,<appliedenergistics2:material:1>],[<thaumcraft:stone_eldritch_tile>,<appliedenergistics2:material:1>,<thaumcraft:salis_mundus>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_component_1k_pure", "ESSENTIASTORAGE1k", 10, [], <thaumicenergistics:essentia_component_1k>, [[<thaumcraft:salis_mundus>,<appliedenergistics2:material:10>,<thaumcraft:stone_eldritch_tile>],[<appliedenergistics2:material:10>,<contenttweaker:thaumium_processor>,<appliedenergistics2:material:10>],[<thaumcraft:stone_eldritch_tile>,<appliedenergistics2:material:10>,<thaumcraft:salis_mundus>]]);

# 4k ME Essentia Storage Component
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:essentia_component_4k>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_component_4k", "ESSENTIASTORAGE4k", 10, [], <thaumicenergistics:essentia_component_4k>, [[<thaumcraft:salis_mundus>,<thaumicenergistics:essentia_component_1k>,<thaumcraft:stone_eldritch_tile>],[<thaumicenergistics:essentia_component_1k>,<contenttweaker:thaumium_processor>,<thaumicenergistics:essentia_component_1k>],[<thaumcraft:stone_eldritch_tile>,<thaumicenergistics:essentia_component_1k>,<thaumcraft:salis_mundus>]]);

# 16k ME Essentia Storage Component
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:essentia_component_16k>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_component_16k", "ESSENTIASTORAGE16k", 10, [], <thaumicenergistics:essentia_component_16k>, [[<thaumcraft:salis_mundus>,<thaumicenergistics:essentia_component_4k>,<thaumcraft:stone_eldritch_tile>],[<thaumicenergistics:essentia_component_4k>,<contenttweaker:thaumium_processor>,<thaumicenergistics:essentia_component_4k>],[<thaumcraft:stone_eldritch_tile>,<thaumicenergistics:essentia_component_4k>,<thaumcraft:salis_mundus>]]);

# 64k ME Essentia Storage Component
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:essentia_component_64k>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_component_64k", "ESSENTIASTORAGE64k", 10, [], <thaumicenergistics:essentia_component_64k>, [[<thaumcraft:salis_mundus>,<thaumicenergistics:essentia_component_16k>,<thaumcraft:stone_eldritch_tile>],[<thaumicenergistics:essentia_component_16k>,<contenttweaker:thaumium_processor>,<thaumicenergistics:essentia_component_16k>],[<thaumcraft:stone_eldritch_tile>,<thaumicenergistics:essentia_component_16k>,<thaumcraft:salis_mundus>]]);

# 1k ME Essentia Storage Cell
recipes.removeShaped(<thaumicenergistics:essentia_cell_1k>);
recipes.addShaped(<thaumicenergistics:essentia_cell_1k>.withTag({filter: {}}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<thaumicenergistics:essentia_component_1k>,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# 4k ME Essentia Storage Cell
recipes.removeShaped(<thaumicenergistics:essentia_cell_4k>);
recipes.addShaped(<thaumicenergistics:essentia_cell_4k>.withTag({filter: {}}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<thaumicenergistics:essentia_component_4k>,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# 16k ME Essentia Storage Cell
recipes.removeShaped(<thaumicenergistics:essentia_cell_16k>);
recipes.addShaped(<thaumicenergistics:essentia_cell_16k>.withTag({filter: {}}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<thaumicenergistics:essentia_component_16k>,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# 64k ME Essentia Storage Cell
recipes.removeShaped(<thaumicenergistics:essentia_cell_64k>);
recipes.addShaped(<thaumicenergistics:essentia_cell_64k>.withTag({filter: {}}), [[<appliedenergistics2:quartz_glass>,<minecraft:redstone>,<appliedenergistics2:quartz_glass>],[<minecraft:redstone>,<thaumicenergistics:essentia_component_64k>,<minecraft:redstone>],[<thermalfoundation:material:160>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]]);

# ME Essentia Import Bus
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:essentia_import>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_import_bus", "ESSENTIABUSES", 20, [<aspect:perditio> * 4], <thaumicenergistics:essentia_import>, [[<thaumcraft:ingot>,<thaumcraft:salis_mundus>,<thaumcraft:ingot>],[<thaumcraft:tube>,<thaumicenergistics:diffusion_core>,<thaumcraft:tube>],[<thaumcraft:ingot>,<thaumcraft:salis_mundus>,<thaumcraft:ingot>]]);

# ME Essentia Export Bus
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:essentia_export>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_export_bus", "ESSENTIABUSES", 20, [<aspect:ordo> * 4], <thaumicenergistics:essentia_export>, [[<thaumcraft:ingot>,<thaumcraft:salis_mundus>,<thaumcraft:ingot>],[<thaumcraft:tube>,<thaumicenergistics:coalescence_core>,<thaumcraft:tube>],[<thaumcraft:ingot>,<thaumcraft:salis_mundus>,<thaumcraft:ingot>]]);

# ME Essentia Storage Bus
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:essentia_storage>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_storage_bus", "ESSENTIABUSES", 20, [<aspect:ordo> * 4, <aspect:perditio> * 4,<aspect:aqua> * 4], <thaumicenergistics:essentia_storage>, [[<thaumcraft:plate:2>,<thaumcraft:plate:2>,<thaumcraft:plate:2>],[<thaumicenergistics:essentia_export>,<thaumcraft:salis_mundus>,<thaumicenergistics:essentia_import>],[<thaumcraft:plate:2>,<thaumcraft:plate:2>,<thaumcraft:plate:2>]]);

# ME Essentia Terminal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:essentia_terminal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:essentia_terminal", "ESSENTIATERMINAL", 25, [<aspect:ordo> * 20], <thaumicenergistics:essentia_terminal>, [[<thaumcraft:plate:2>,<thaumcraft:salis_mundus>,<thaumcraft:plate:2>],[<thaumicenergistics:diffusion_core>,<appliedenergistics2:part:380>,<thaumicenergistics:coalescence_core>],[<thaumcraft:plate:2>,<thaumcraft:salis_mundus>,<thaumcraft:plate:2>]]);

# Arcane Crafting Terminal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:arcane_terminal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:arcane_terminal", "ARCANETERMINAL", 50, [<aspect:aer> * 10,<aspect:terra> * 10,<aspect:aqua> * 10,<aspect:ignis> * 10,<aspect:perditio> * 10,<aspect:ordo> * 10], <thaumicenergistics:arcane_terminal>, [[<thaumcraft:plate:2>,<thaumcraft:arcane_workbench>,<thaumcraft:plate:2>],[<thaumicenergistics:diffusion_core>,<appliedenergistics2:part:360>,<thaumicenergistics:coalescence_core>],[<thaumcraft:plate:2>,<thaumcraft:arcane_workbench>,<thaumcraft:plate:2>]]);

# Arcane Charging Upgrade
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:upgrade_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicenergistics:upgrade_arcane", "WORKBENCHCHARGER", 50, [<aspect:aer> * 10], <thaumicenergistics:upgrade_arcane>, [[<thaumicenergistics:diffusion_core>,<thaumcraft:ingot:1>,null],[<thaumcraft:arcane_workbench_charger>,<appliedenergistics2:material:28>,<thaumcraft:ingot:1>],[<thaumicenergistics:coalescence_core>,<thaumcraft:ingot:1>,null]]);

# Essentia Infusion Provider
mods.thaumcraft.Infusion.removeRecipe(<thaumicenergistics:infusion_provider>);
mods.thaumcraft.Infusion.registerRecipe("thaumicenergistics:infusion_provider", "INFUSIONPROVIDER", <thaumicenergistics:infusion_provider>, 8, [<aspect:machina> * 240,<aspect:praecantatio> * 200,<aspect:permutatio> * 200,<aspect:aqua> * 50], <thaumicaugmentation:material:3>, [<appliedenergistics2:interface>,<thaumicenergistics:coalescence_core>,<thaumcraft:salis_mundus>,<contenttweaker:condensed_vis_crystal_machina>,<appliedenergistics2:interface>,<thaumicenergistics:diffusion_core>,<thaumcraft:salis_mundus>,<thaumicaugmentation:impetus_mirror>]);

# Arcane Assembler
mods.thaumcraft.Infusion.removeRecipe(<thaumicenergistics:arcane_assembler>);
mods.thaumcraft.Infusion.registerRecipe("thaumicenergistics:arcane_assembler", "ARCANEASSEMBLER", <thaumicenergistics:arcane_assembler>, 8, [<aspect:potentia> * 120,<aspect:praecantatio> * 100,<aspect:permutatio> * 100,<aspect:fabrico> * 100], <thaumcraft:arcane_workbench>,[<appliedenergistics2:molecular_assembler>,<contenttweaker:condensed_vis_crystal_aer>,<contenttweaker:condensed_vis_crystal_terra>,<thaumicenergistics:essentia_storage>,<contenttweaker:condensed_vis_crystal_ignis>,<appliedenergistics2:molecular_assembler>,<contenttweaker:condensed_vis_crystal_aqua>,<contenttweaker:condensed_vis_crystal_ordo>,<thaumicenergistics:essentia_storage>,<contenttweaker:condensed_vis_crystal_perditio>]);

# Blank Knowledge Core
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:blank_knowledge_core>);
mods.thaumcraft.Infusion.registerRecipe("thaumicenergistics:blank_knowledge_core", "KNOWLEDGECORE", <thaumicenergistics:blank_knowledge_core>, 10,[<aspect:cognitio> * 180,<aspect:fabrico> * 100,<aspect:praemunio> * 100,<aspect:potentia> * 80,<aspect:vinculum> * 80,<aspect:exanimis> * 10,<aspect:vacuos> * 10], <thaumcraft:jar_brain>, [<thaumcraft:focus_3>,<thaumicaugmentation:fortified_glass>,<thaumcraft:focus_3>,<thaumicaugmentation:fortified_glass>]);

# Arcane Inscriber
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicenergistics:arcane_inscriber>);
mods.thaumcraft.Infusion.registerRecipe("thaumicenergistics:arcane_inscriber", "ARCANEINSCRIBER", <thaumicenergistics:arcane_inscriber>, 6, [<aspect:machina> * 180,<aspect:cognitio> * 180,<aspect:fabrico> * 100,<aspect:praecantatio> * 60,<aspect:permutatio> * 60,<aspect:vitium> * 50], <thaumicenergistics:arcane_terminal>, [<thaumcraft:mind>,<appliedenergistics2:part:340>,<contenttweaker:estimation_processor>,<thaumcraft:mind>,<appliedenergistics2:part:340>,<contenttweaker:estimation_processor>]);

# Creative ME Essentia Storage Cell
mods.extendedcrafting.TableCrafting.addShaped(<thaumicenergistics:essentia_cell_creative>,
[[<alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:114>, <alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:117>],
[<alchemistry:ingot:117>, <alchemistry:ingot:114>, <contenttweaker:clay>, <alchemistry:ingot:114>, <thaumicenergistics:essentia_cell_64k>, <alchemistry:ingot:114>, <contenttweaker:clay>, <alchemistry:ingot:114>, <alchemistry:ingot:117>],
[<alchemistry:ingot:117>, <contenttweaker:clay>, <thaumicenergistics:essentia_cell_64k>, <contenttweaker:clay>, <extracells:storage.component:3>, <contenttweaker:clay>, <thaumicenergistics:essentia_cell_64k>, <contenttweaker:clay>, <alchemistry:ingot:117>],
[<alchemistry:ingot:117>, <alchemistry:ingot:114>, <contenttweaker:clay>, <contenttweaker:thaumium_processor>, <thaumicenergistics:infusion_provider>, <contenttweaker:thaumium_processor>, <contenttweaker:clay>, <alchemistry:ingot:114>, <alchemistry:ingot:117>],
[<alchemistry:ingot:114>, <thaumicenergistics:essentia_cell_64k>, <extracells:storage.component:3>, <thaumicenergistics:infusion_provider>, <bewitchment:blessed_stone>, <thaumicenergistics:infusion_provider>, <extracells:storage.component:3>, <thaumicenergistics:essentia_cell_64k>, <alchemistry:ingot:114>],
[<alchemistry:ingot:117>, <alchemistry:ingot:114>, <contenttweaker:clay>, <contenttweaker:thaumium_processor>, <thaumicenergistics:infusion_provider>, <contenttweaker:thaumium_processor>, <contenttweaker:clay>, <alchemistry:ingot:114>, <alchemistry:ingot:117>],
[<alchemistry:ingot:117>, <contenttweaker:clay>, <thaumicenergistics:essentia_cell_64k>, <contenttweaker:clay>, <extracells:storage.component:3>, <contenttweaker:clay>, <thaumicenergistics:essentia_cell_64k>, <contenttweaker:clay>, <alchemistry:ingot:117>],
[<alchemistry:ingot:117>, <alchemistry:ingot:114>, <contenttweaker:clay>, <alchemistry:ingot:114>, <thaumicenergistics:essentia_cell_64k>, <alchemistry:ingot:114>, <contenttweaker:clay>, <alchemistry:ingot:114>, <alchemistry:ingot:117>],
[<alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:114>, <alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:117>, <alchemistry:ingot:117>]]);

print("ENDING ThaumicEnergistics.zs");
