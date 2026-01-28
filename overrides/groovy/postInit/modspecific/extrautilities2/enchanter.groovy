

// add more items to the bookshelf oredict for the enchanter recipe
ore('bookshelf').tap {
    // add the aether legacy bookshelf to the oredict
    add(item('aether_legacy:skyroot_bookshelf'))
    // add the itemstack with each metadata directly to the oredict
    // fixing the enchanter not properly checking WILDCARD metadata
    add(item('quark:custom_bookshelf:*').toMcIngredient().getMatchingStacks())
    add(item('natura:overworld_bookshelves:*').toMcIngredient().getMatchingStacks())
    add(item('natura:nether_bookshelves:*').toMcIngredient().getMatchingStacks())
}
