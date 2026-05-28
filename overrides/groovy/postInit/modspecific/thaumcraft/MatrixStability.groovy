
import classes.content.thaumcraft.MatrixStabilityStorage

MatrixStabilityStorage.ENTRIES.clear()

def add(Block block, float stabilityValue) {
    MatrixStabilityStorage.ENTRIES << new MatrixStabilityStorage.Entry(block, stabilityValue, 0.0)
}

def add(Block block, float stabilityValue, float stabilityReduction) {
    MatrixStabilityStorage.ENTRIES << new MatrixStabilityStorage.Entry(block, stabilityValue, stabilityReduction)
}

/// scanned by iterating every block and checking what ones implement IInfusionStabiliser/IInfusionStabiliserExt

MatrixStabilityStorage.ENTRIES << new MatrixStabilityStorage.Entry(block('minecraft:skull'), 0.1, 0.0, [item('minecraft:skull:*')])
add(block('abyssalcraft:dghead'), 0.1)
add(block('abyssalcraft:ohead'), 0.1)
add(block('abyssalcraft:phead'), 0.1)
add(block('abyssalcraft:whead'), 0.1)
add(block('bewitchment:black_candle'), 0.5)
add(block('bewitchment:blue_candle'), 0.5)
add(block('bewitchment:brown_candle'), 0.5)
add(block('bewitchment:candelabra_gold'), 1.5)
add(block('bewitchment:candelabra_iron'), 1.5)
add(block('bewitchment:candelabra_silver'), 1.5)
add(block('bewitchment:cyan_candle'), 0.5)
add(block('bewitchment:gray_candle'), 0.5)
add(block('bewitchment:green_candle'), 0.5)
add(block('bewitchment:light_blue_candle'), 0.5)
add(block('bewitchment:light_gray_candle'), 0.5)
add(block('bewitchment:lime_candle'), 0.5)
add(block('bewitchment:magenta_candle'), 0.5)
add(block('bewitchment:orange_candle'), 0.5)
add(block('bewitchment:pink_candle'), 0.5)
add(block('bewitchment:purple_candle'), 0.5)
add(block('bewitchment:red_candle'), 0.5)
add(block('bewitchment:white_candle'), 0.5)
add(block('bewitchment:yellow_candle'), 0.5)
add(block('botania:floatingspecialflower'), 0.1)
add(block('botania:miniisland'), 0.1)
add(block('botania:mushroom'), 0.1)
add(block('botania:pylon'), 0.1)
add(block('botania:shinyflower'), 0.1)
add(block('thaumcraft:candle_black'), 0.1)
add(block('thaumcraft:candle_blue'), 0.1)
add(block('thaumcraft:candle_brown'), 0.1)
add(block('thaumcraft:candle_cyan'), 0.1)
add(block('thaumcraft:candle_gray'), 0.1)
add(block('thaumcraft:candle_green'), 0.1)
add(block('thaumcraft:candle_lightblue'), 0.1)
add(block('thaumcraft:candle_lime'), 0.1)
add(block('thaumcraft:candle_magenta'), 0.1)
add(block('thaumcraft:candle_orange'), 0.1)
add(block('thaumcraft:candle_pink'), 0.1)
add(block('thaumcraft:candle_purple'), 0.1)
add(block('thaumcraft:candle_red'), 0.1)
add(block('thaumcraft:candle_silver'), 0.1)
add(block('thaumcraft:candle_white'), 0.1)
add(block('thaumcraft:candle_yellow'), 0.1)
add(block('thaumcraft:inlay'), 0.025)
add(block('thaumcraft:pedestal_ancient'), 0.0, 0.1)
add(block('thaumcraft:pedestal_arcane'), 0.0, 0.1)
add(block('thaumcraft:pedestal_eldritch'), 0.0, 0.1)
add(block('thaumcraft:stabilizer'), 0.25)
add(block('twilightforest:firefly_jar'), 0.1)
add(block('twilightforest:trophy_pedestal'), 0.1)
MatrixStabilityStorage.ENTRIES << new MatrixStabilityStorage.Entry(block('twilightforest:trophy'), 0.1, 0.0, [item('twilightforest:trophy:*')])


/// add the category to jei
import classes.content.jei.category.MatrixStabilizerCategory

mods.jei.category.categoryBuilder()
    .id(MatrixStabilizerCategory.UID)
    .category(guiHelper -> new MatrixStabilizerCategory(guiHelper))
    .catalyst(item('thaumcraft:infusion_matrix'), item('thaumicaugmentation:impetus_matrix'))
    .wrapper(MatrixStabilizerCategory.getRecipeWrappers())
    .register()
