

// the level cap is done via config
// mods.astralsorcery.perk_tree_config.setLevelCap(100)


// The default formula is "prev + 150 + Math.floor(2 ^ (i / 2 + 3))",
// which makes level 30, the default max level, a push to get 3 million.
// However, since DJ2 increases the max level to 100, maxing out
// the level cap costs 105 quadrillion.
//
// This rebalanced the xp cost to be more bearable.
// Prior to being done in GroovyScript, this was done by the standalone mod Astral Level Nerf.

mods.astralsorcery.perk_tree_config.setXpFunction({ int i, long prev -> 6 + prev + (long) Math.pow(2, (6 + (i / 6))) })
