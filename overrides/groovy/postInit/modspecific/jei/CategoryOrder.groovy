
/// some categories are unneeded, and the order of categories in JEI can be rather odd,
/// so this script attempts to clean it up.

/// for this most part, this is just moving the categories added by a mod around
/// or slightly adjusting the order of categories with a mod,
/// but there are a few cases where categories from other mods
/// are interleaved - particularly with custom categories, like from requious.
/// the ordering of mods is *mostly* based on when the mod is unlocked.

/// additionally, some of the more "spammy" recipe categories (in particular thaumcraft aspects)
/// are pushed to the back.

def hide = mods.jei.category.&hideCategory

/// disabled for spam reasons
/// typically communicated very little, but appears for most items
hide('thermalexpansion.factorizer_combine')
hide('thermalexpansion.factorizer_split')
hide('Painter')
hide('minecraft.anvil')
hide('thermaldynamics.covers')
hide('moretweaker.erebus.compost.recipes')

/// just a furnace fuel proxy
hide('petrified_burn_time')
hide('xu2_machine_extrautils2:generator_survival')
hide('xu2_machine_extrautils2:generator')
hide('xu2_machine_extrautils2:generator_overclock')
hide('StirlingGenerator')
hide('thermalexpansion.steam')
hide('EIOTank')

/// displays every item that can hold power
hide('thermalexpansion.charger')
hide('thermalexpansion.enervation')
hide('EIOWC')

/// effectively a duplicate of other category
hide('xu2_machine_extrautils2:furnace') // furnace clone
hide('mysticalagradditions:tier_6_crop_jei') // part of agricraft.produce already
hide('mysticalagriculture:reprocessor_jei') // just turns crop -> essence. also agricraft.produce
hide('roots.block_break') // break a grass block, duplicate of jeresources.worldgen

/// disabled
hide('jeresources.villager') // cannot trade with villagers
hide('divinerpg:jack_o_man') // shouldn't be able to spawn
hide('abyssalcraft.materialization') // has dupe bugs, so disabled
hide('bloodmagic:binding') // cannot remove these recipes, all recipes added to bloodmagic:alchemyArray
hide('roots.chrysopoeia') // spell is disabled
hide('roots.loot') // cannot obtain
hide('thermalexpansion.insolator') // the insolator is disabled
hide('thermalexpansion.insolator_tree') // the insolator is disabled
hide('roots.runic_shears_summon_entity') // essence is disabled

/// obvious, not needed to be a JEI category
hide('SolarPanel') // the power generated is on the tooltips? also doesnt include half of the solar panels
hide('roots.runed_wood') // use knife on log to make corresponding runed log? obvious
hide('roots.spell_costs') // display the spell cost of a given modifier - not really useful for jei? + tooltip on modifiers
hide('roots.pyre_light') // use flint and steel on pyre
hide('roots.ritual_visualise') // use knife on pyre to see range
hide('roots.spell_imbuing') // use dust on imbuer
hide('roots.spell_imposing') // use knife on imposer to make modifiers



mods.jei.category.setOrder([
/// basic vanilla remains unchanged
'minecraft.crafting',
'minecraft.fuel',
'minecraft.smelting',
'minecraft.brewing',

/// the info page
'jei.information',

/// some worldgen stuff
'jeresources.worldgen',
'jeresources.mob',
'jeresources.dungeon',
'jeresources.plant',

/// agricraft should be adjacent to the other crops
'agricraft.produce',
'agricraft.mutation',

/// in-world operations
'jetif',
'inworldcrafting.itemtransform',
'inworldcrafting.explode_item',
'inworldcrafting.exploding_blocks',
'requious.activate_block_or_entity',
'requious.configure',
'requious.explore_world',

/// tinkers construct
'tconstruct.smeltery',
'tconstruct.alloy',
'tconstruct.casting_table',
'tconstruct.dryingrack',

/// roots
'roots.mortar_and_pestle',
'roots.fey_crafting',
'roots.ritual_crafting',
'roots.ritual',
'roots.runic_shears',
'roots.runic_shears_entity',
'requious.roots_entity_spawning', // a helper for roots.summon_creatures
'roots.summon_creatures',
'requious.roots_block_conversion', // a helper for roots.transmutation
'roots.transmutation',
'roots.bark_carving',
'roots.terra_moss',
'roots.right_click_block',
'roots.soil',

/// immersive engineering
'ie.cokeoven',
'ie.alloysmelter',
'ie.blastfurnace.fuel', // fuel should appear first
'ie.blastfurnace',
'ie.metalPress',
'ie.crusher',
'ie.workbench',
'ie.squeezer',
'ie.fermenter',
'ie.refinery',
'ie.arcFurnace',
'ie.bottlingMachine',
'ie.mixer',
'requious.excavator',

/// applied energistics 2
'appliedenergistics2.inscriber',
'appliedenergistics2.grinder',
'appliedenergistics2.condenser',

/// atum
'atum.quern',
'atum.spinningwheel',
'atum.kiln',

/// erebus
'moretweaker.erebus.offering.recipes',
'moretweaker.erebus.smoothie.recipes',

/// aether legacy
'aether_legacy.enchantment',
'aether_legacy.freezable',

/// extra utilities 2
'extrautils2.resonator',
'xu2_machine_extrautils2:crusher',
'xu2_machine_extrautils2:enchanter',

/// thermal expansion
'thermalexpansion.furnace',
'thermalexpansion.furnace_food',
'thermalexpansion.furnace_ore',
'thermalexpansion.furnace_pyrolysis',
'thermalexpansion.pulverizer',
'thermalexpansion.pulverizer_petrotheum',
'thermalexpansion.sawmill',
'thermalexpansion.sawmill_tapper',
'thermalexpansion.smelter',
'thermalexpansion.smelter_pyrotheum',
'thermalexpansion.compactor',
'thermalexpansion.compactor_mint',
'thermalexpansion.compactor_gear',
'thermalexpansion.crucible',
'thermalexpansion.crucible_lava',
'thermalexpansion.refinery',
'thermalexpansion.refinery_fossil',
'thermalexpansion.refinery_potion',
'thermalexpansion.transposer_fill',
'thermalexpansion.transposer_extract',
'requious.charge', // hide the normal energetic infuser due to spamming every item, replace with only the unique recipes
'thermalexpansion.centrifuge',
'thermalexpansion.centrifuge_mobs',
'thermalexpansion.brewer',
'thermalexpansion.enchanter',
'thermalexpansion.precipitator',
'thermalexpansion.extruder',
'thermalexpansion.extruder_sedimentary',
'thermalexpansion.coolant',

/// enderio
'AlloySmelter',
'SagMill',
'GrindingBall',
'SliceNSPlice',
'SoulBinder',
'Vat',
'Enchanter',
'EIOWO',
'infinityPowder',

/// industrial foregoing
'EXTRACTOR_RECIPE',
'machine_produce_category',
'laser_category',
'stone_work_factory',
'bioreactor_accepted_items',
'protein_reactor_accepted_items',
'sludge_refiner_category',
'fluid_dictionary',
'if_manual_category',

/// integrated dynamics
'integrateddynamicscompat:dryingBasin',
'integrateddynamicscompat:squeezer',
'integrateddynamicscompat:mechanicalDryingBasin',
'integrateddynamicscompat:mechanicalSqueezer',

/// actually additions
'actuallyadditions.crushing',
'actuallyadditions.reconstructor',
'actuallyadditions.empowerer',
'actuallyadditions.compost',
'actuallyadditions.coffee',
'actuallyadditions.booklet',

/// mekanism
'mekanism.metallurgicinfuser',
'mekanism.osmiumcompressor',
'mekanism.precisionsawmill',
'mekanism.enrichmentchamber',
'mekanism.crusher',
'mekanism.purificationchamber',
'mekanism.chemicalinjectionchamber',
'mekanism.chemicalcrystallizer',
'mekanism.chemicalwasher',
'mekanism.chemicaldissolutionchamber',
'mekanism.chemicalinfuser',
'mekanism.chemicaloxidizer',
'mekanism.electrolyticseparator',
'mekanism.pressurizedreactionchamber',
'mekanism.rotary_condensentrator_condensentrating',
'mekanism.rotary_condensentrator_decondensentrating',
'mekanism.solarneutronactivator',
'mekanism.thermalevaporationplant',

/// abyssalcraft
'abyssalcraft.fuel.transmutation',
'abyssalcraft.transmutation',
'abyssalcraft.fuel.crystallization',
'abyssalcraft.crystallization',
'abyssalcraft.ritual',
'abyssalcraft.engraving',
'abyssalcraft.rending',

/// blood magic
'bloodmagic:altar',
'bloodmagic:alchemyArray',
'bloodmagic:soulForge',
'bloodmagic:salchemyTable',
'bloodmagic:armourDowngrade',

/// evilcraft
'evilcraft:bloodInfuser',
'evilcraft:environmentalAccumulator',
'evilcraft:sanguinaryEnvironmentalAccumulator',

/// botania
'botania.brewery',
'botania.pureDaisy',
'botania.runicAltar',
'botania.petals',
'botania.elvenTrade',
'requious.terra_plate',
'botania.manaPool',
'botania.orechid',
'botania.orechid_ignem',
'requious.metamorphic',

/// thaumcraft
'THAUMCRAFT_ARCANE_WORKBENCH',
'THAUMCRAFT_CRUCIBLE',
'THAUMCRAFT_INFUSION',

/// bewitchment
'jei.ritual',
'tile.bewitchment.witches_oven.name',
'tile.bewitchment.distillery.name',
'tile.bewitchment.spinning_wheel.name',
'tile.bewitchment.frostfire.name',
'tile.bewitchment.sigil_table.name',
'jei.incense',
'jei.cauldron',
'jei.brew',

/// divinerpg
'divinerpg:arcana_extractor',

/// lightningcraft
'lightningcraft.crusher_recipe_category',
'lightningcraft.infusion_recipe_category',

/// astral sorcery
'astralsorcery.lightwell',
'astralsorcery.grindstone',
'astralsorcery.infuser',
'astralsorcery.lightTransmutation',
'astralsorcery.altar.trait',
'astralsorcery.altar.constellation',
'astralsorcery.altar.attunement',
'astralsorcery.altar.discovery',

/// galacticraft
'galacticraft.circuits',
'galacticraft.ingotcompressor',
'galacticraft.oxygencompressor',
'galacticraft.refinery',
'galacticraft.gas_liquefier',
'galacticraft.methaneSynthesizer',

/// draconic evolution
'DraconicEvolution.Fusion',

/// alchemistry
'alchemistry.dissolver',
'alchemistry.combiner',
'alchemistry.electrolyzer',
'alchemistry.evaporator',
'alchemistry.atomizer',
'alchemistry.liquifier',
'alchemistry.fission',

/// projecte
'pe.worldtransmute',
'pe.collector',

/// extended crafting
'extendedcrafting:table_crafting_5x5',
'extendedcrafting:table_crafting_7x7',
'extendedcrafting:table_crafting_9x9',
'extendedcrafting:ender_crafting',
'extendedcrafting:combination_crafting',
'extendedcrafting:compressor',

/// avaritia
'Avatitia.Extreme',
'Avatitia.Compressor',

/// modular machinery
'modularmachinery.preview',
'modularmachinery.recipes.chemical_caster',
'modularmachinery.recipes.liquicrafter',
'modularmachinery.recipes.high_voltage_plasmafier',
'modularmachinery.recipes.laser_focus',
'modularmachinery.recipes.ultimate_compressor',
'modularmachinery.recipes.mass_inscriber',
'modularmachinery.recipes.lightningcraft_infusion_multiblock',
'modularmachinery.recipes.auto_infusion_matrix',
'modularmachinery.recipes.mob_loot_fabricator',
'modularmachinery.recipes.weak_fusion_plant',

/// galacticraft rocket stuff
'planetprogression.satellite.rocket',
'planetprogression.satellite.builder',

'galacticraft.rocketT1',
'galacticraft.buggy',

'galacticraft.rocketT2',
'galacticraft.cargoRocket',

'galacticraft.rocketT3',
'galacticraft.astroMiner',

/// miscellaneous
'chisel.chiseling',
'tinkersjei:tool_stats',
'mysticalagriculture:tinkering_table_jei',
'requious.beacon_base',
'extrautils2.blockPatterns',
'extrautils2.terraformer',

/// powergen options
'justenoughreactors:fuel',
'justenoughreactors:reactor',
'justenoughreactors:turbine',

'thermalexpansion.magmatic',
'thermalexpansion.compression',
'thermalexpansion.reactant',
'thermalexpansion.reactant_elemental',
'requious.enervation_dynamo', // not a category thermal adds, so we add it ourselves
'thermalexpansion.numismatic',
'thermalexpansion.numismatic_gem',

'xu2_machine_extrautils2:generator_culinary',
'xu2_machine_extrautils2:generator_lava',
'xu2_machine_extrautils2:generator_redstone',
'xu2_machine_extrautils2:generator_ender',
'xu2_machine_extrautils2:generator_potion',
'xu2_machine_extrautils2:generator_pink',
'xu2_machine_extrautils2:generator_tnt',
'xu2_machine_extrautils2:generator_netherstar',
'xu2_machine_extrautils2:generator_dragonsbreath',
'xu2_machine_extrautils2:generator_ice',
'xu2_machine_extrautils2:generator_death',
'xu2_machine_extrautils2:generator_enchant',
'xu2_machine_extrautils2:generator_slime',

'CombustionGenerator',
'ZombieGenerator',
'EnderGenerator',
'LavaGenerator',

/// thaumcraft aspects
'THAUMCRAFT_ASPECT_COMPOUND',
'THAUMCRAFT_ASPECT_FROM_ITEMSTACK',
])

// note that any categories added that are not in the list will appear *afterwards*.


