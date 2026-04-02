

// display runic shears as a catalyst for moss
mods.jei.catalyst.add('roots.terra_moss', item('roots:runic_shears'))


// update moss recipes to add more conversions
mods.roots.moss.removeAll()

mods.roots.moss.add(item('minecraft:mossy_cobblestone'), item('minecraft:cobblestone'))
mods.roots.moss.add(item('minecraft:stonebrick', 1), item('minecraft:stonebrick'))
mods.roots.moss.add(item('minecraft:monster_egg', 3), item('minecraft:monster_egg', 2))

// add a bunch of various mossy stones to the conversion map
// mostly relevant for underground biomes stones

mods.roots.moss.add(item('aether_legacy:mossy_holystone'), item('aether_legacy:holystone'))
mods.roots.moss.add(item('twilightforest:castle_brick', 4), item('twilightforest:castle_brick'))
mods.roots.moss.add(item('twilightforest:maze_stone', 5), item('twilightforest:maze_stone', 1))
mods.roots.moss.add(item('twilightforest:etched_nagastone_mossy'), item('twilightforest:etched_nagastone'))
mods.roots.moss.add(item('twilightforest:nagastone_pillar_mossy'), item('twilightforest:nagastone_pillar'))

(0..<8).each { i ->
    mods.roots.moss.add(item('undergroundbiomes:igneous_cobble_mossy', i), item('undergroundbiomes:igneous_cobble', i))
    mods.roots.moss.add(item('undergroundbiomes:metamorphic_cobble_mossy', i), item('undergroundbiomes:metamorphic_cobble', i))
    mods.roots.moss.add(item('undergroundbiomes:sedimentary_stone_mossy', i), item('undergroundbiomes:sedimentary_stone', i))
}

(0..<16).each { i ->
    mods.roots.moss.add(item('chisel:cobblestonemossy', i), item('chisel:cobblestone', i))
    mods.roots.moss.add(item('chisel:templemossy', i), item('chisel:temple', i))
}

mods.roots.moss.add(item('chisel:cobblestonemossy1', 0), item('chisel:cobblestone1', 0))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 1), item('chisel:cobblestone1', 1))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 2), item('chisel:cobblestone1', 2))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 3), item('chisel:cobblestone1', 3))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 4), item('chisel:cobblestone1', 4))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 5), item('chisel:cobblestone1', 5))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 6), item('chisel:cobblestone1', 6))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 7), item('chisel:cobblestone1', 7))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 8), item('chisel:cobblestone2')) // the order doesn't match.
mods.roots.moss.add(item('chisel:cobblestonemossy1', 9), item('chisel:cobblestone2', 1)) // how "cool"
mods.roots.moss.add(item('chisel:cobblestonemossy1', 10), item('chisel:cobblestone2', 2))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 11), item('chisel:cobblestone2', 3))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 12), item('chisel:cobblestone2', 4))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 13), item('chisel:cobblestone2', 5))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 14), item('chisel:cobblestone2', 6))
mods.roots.moss.add(item('chisel:cobblestonemossy1', 15), item('chisel:cobblestone1', 8)) // now go back patch the earlier bodge
mods.roots.moss.add(item('chisel:cobblestonemossy2'), item('chisel:cobblestone1', 9))



