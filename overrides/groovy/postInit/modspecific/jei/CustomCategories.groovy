// side: client

/// Bewitchment Altar
import classes.content.jei.category.AltarUpgradeCategory

def altars = [item('bewitchment:stone_witches_altar'), item('bewitchment:nether_brick_witches_altar'), item('bewitchment:obsidian_witches_altar'), item('bewitchment:coquina_witches_altar'), item('bewitchment:embittered_brick_witches_altar'), item('bewitchment:scorned_brick_witches_altar')]

mods.jei.category.categoryBuilder()
    .id(AltarUpgradeCategory.UID)
    .category(guiHelper -> new AltarUpgradeCategory(guiHelper, altars))
    .catalyst(altars)
    .wrapper(AltarUpgradeCategory.getRecipeWrappers())
    .register()


/// Lightning
import classes.content.jei.category.LightningCategory

mods.jei.description.remove(item('lightningcraft:guide'))
mods.jei.description.remove(item('lightningcraft:ingot'))
mods.jei.description.remove(item('lightningcraft:material', 11))

mods.jei.category.categoryBuilder()
    .id(LightningCategory.UID)
    .category(guiHelper -> new LightningCategory(guiHelper))
    .catalyst(item('lightningcraft:golf_club_gold'), item('divinerpg:serenade_striker'), item('evilcraft:lightning_grenade'))
    .wrapper(LightningCategory.getRecipeWrappers())
    .register()


/// Thaumcraft Stability
import classes.content.jei.category.MatrixStabilizerCategory

mods.jei.category.categoryBuilder()
    .id(MatrixStabilizerCategory.UID)
    .category(guiHelper -> new MatrixStabilizerCategory(guiHelper))
    .catalyst(item('thaumcraft:infusion_matrix'), item('thaumicaugmentation:impetus_matrix'))
    .wrapper(MatrixStabilizerCategory.getRecipeWrappers())
    .register()
