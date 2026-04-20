
/// add more catalyst items (the ones on the left side of the GUI)
/// to various JEI categories.

def add(id, stacks) {
    mods.jei.catalyst.add(id, stacks)
}

def remove(id, stacks) {
    mods.jei.catalyst.remove(id, stacks)
}


/// uncrafting table is disabled
remove('minecraft.crafting', item('twilightforest:uncrafting_table'))

/// missed crafting options
add('minecraft.crafting', [item('appliedenergistics2:part', 360), item('appliedenergistics2:wireless_crafting_terminal'), item('avaritia:compressed_crafting_table'), item('avaritia:double_compressed_crafting_table'), item('erebus:petrified_crafting_table')])

/// autocrafting
add('minecraft.crafting', [item('extrautils2:analogcrafter'), item('appliedenergistics2:molecular_assembler'), item('botania:opencrate', 1), item('rftools:crafter1'), item('rftools:crafter2'), item('rftools:crafter3')])


/// furnaces
def furnaceAndFuel(stacks) {
    add('minecraft.smelting', stacks)
    add('minecraft.fuel', stacks)
}

add('minecraft.fuel', [item('divinerpg:coalstone_furnace'), item('divinerpg:oceanfire_furnace'), item('divinerpg:moonlight_furnace')])
furnaceAndFuel([item('betternether:netherrack_furnace'), item('erebus:umber_furnace'), item('mysticalagriculture:inferium_furnace'), item('mysticalagriculture:prudentium_furnace'), item('mysticalagriculture:intermedium_furnace'), item('mysticalagriculture:superium_furnace'), item('mysticalagriculture:supremium_furnace'), item('mysticalagriculture:ultimate_furnace'), item('projecte:dm_furnace'), item('projecte:rm_furnace')])
add('minecraft.smelting', [item('extrautils2:machine').withNbt(['Type': 'extrautils2:furnace']), item('galacticraftcore:machine_tiered', 4), item('galacticraftcore:machine_tiered', 12)])
/// xu2 generators that otherwise duplicate furnace fuel info
add('minecraft.fuel', [item('extrautils2:machine').withNbt(['Type': 'extrautils2:generator']), item('extrautils2:machine').withNbt(['Type': 'extrautils2:generator_survival']), item('extrautils2:machine').withNbt(['Type': 'extrautils2:generator_overclock'])])


/// some of the component blocks for the first few ie multiblocks
/// later multiblocks don't fit this model as well, and this section might be removed once a better solution to displaying multiblocks is added
add('ie.cokeoven', item('immersiveengineering:stone_decoration') * 27)
add('ie.alloysmelter', item('immersiveengineering:stone_decoration', 10) * 8)

def blastFurnace(stacks) {
    add('ie.blastfurnace', stacks)
    add('ie.blastfurnace.fuel', stacks)
}

blastFurnace([item('immersiveengineering:stone_decoration', 1) * 27, item('immersiveengineering:stone_decoration', 2) * 27, item('immersiveengineering:metal_device1') * 2])


/// add more sources of explosions
add('inworldcrafting.explode_item', item('openblocks:trophy', 3).withNbt(['entity_id': 'minecraft:creeper']))
add('inworldcrafting.explode_item', item('appliedenergistics2:tiny_tnt'))

def explode(stacks) {
    add('inworldcrafting.explode_item', stacks)
    add('inworldcrafting.exploding_blocks', stacks)
}

explode([item('minecraft:tnt_minecart'), item('mekanism:obsidiantnt'), item('immersiveengineering:wooden_device0', 4), item('actuallyadditions:item_explosion_lens'), item('thaumcraft:causality_collapser')])


/// some enderio categories dont have their enchanced versions of the machine added
add('GrindingBall', item('enderio:block_enhanced_sag_mill')) // sag mill has simple/normal/enhanced, but balls only has normal?
add('Vat', item('enderio:block_enhanced_vat'))


/// ultimate compressor is also a compressor
add('galacticraft.ingotcompressor', item('galacticraftcore:machine4'))


/// add fusion crafting injectors to fusion
add('DraconicEvolution.Fusion', [item('draconicevolution:crafting_injector'), item('draconicevolution:crafting_injector', 1), item('draconicevolution:crafting_injector', 2), item('draconicevolution:crafting_injector', 3)])


/// add higher-tier tables to the lower categories - each table can still craft the recipes from the prior table!
add('astralsorcery.altar.constellation', item('astralsorcery:blockaltar', 3))
add('astralsorcery.altar.attunement', [item('astralsorcery:blockaltar', 2), item('astralsorcery:blockaltar', 3)])
add('astralsorcery.altar.discovery', [item('astralsorcery:blockaltar', 1), item('astralsorcery:blockaltar', 2), item('astralsorcery:blockaltar', 3)])


/// add the pedestal (and variants) the to infusion category
add('THAUMCRAFT_INFUSION', [item('thaumcraft:pedestal_arcane'), item('thaumcraft:pedestal_ancient'), item('thaumcraft:pedestal_eldritch')])


/// add Terrestrial Agglomeration Plate "multiblock" components
add('requious.terra_plate', [item('botania:livingrock') * 5, item('minecraft:lapis_block') * 4])


/// the Empowerer also uses 4 display stands
add('actuallyadditions.empowerer', item('actuallyadditions:block_display_stand') * 4)


/// show blood magic altar tiers
def tier(ItemStack stack, String display, int amount) {
    stack.withNbt(['display': ['Name': '§r§dTier ' + display]]) * amount
}
def rune(String display, int amount) {
    tier(item('bloodmagic:blood_rune'), display, amount)
}

add('bloodmagic:altar', [
    rune('two', 8),
    rune('three', 20), tier(item('minecraft:glowstone'), 'three', 4), tier(item('minecraft:sea_lantern'), 'three', 4),
    rune('four', 28), tier(item('bloodmagic:decorative_brick'), 'four', 4), tier(item('bloodmagic:decorative_brick', 1), 'four', 4),
    rune('five', 52), tier(item('minecraft:beacon'), 'five', 4),
    rune('six', 76), tier(item('bloodmagic:decorative_brick', 2), 'six', 4), tier(item('bloodmagic:decorative_brick', 3), 'six', 4)
])



/// add higher-tier tables to the lower categories - each table can, unless specified that its not able to, craft the recipes from the prior table
add('extendedcrafting:table_crafting_5x5', [item('extendedcrafting:table_elite'), item('extendedcrafting:table_ultimate')])
add('extendedcrafting:table_crafting_7x7', item('extendedcrafting:table_ultimate'))


/// add the blocks required for the roots rituals
add('roots.summon_creatures', [item('roots:pyre'), item('roots:reinforced_pyre'), item('roots:catalyst_plate')])
add('roots.transmutation', [item('roots:pyre'), item('roots:reinforced_pyre')])

/// display runic shears as a catalyst for moss
add('roots.terra_moss', item('roots:runic_shears'))

