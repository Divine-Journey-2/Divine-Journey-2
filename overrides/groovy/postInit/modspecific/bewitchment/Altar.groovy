
import classes.content.bewitchment.AltarUpgradeStorage

import net.minecraft.util.text.translation.I18n

/// all of the default entries
/// https://github.com/WaitingIdly/Bewitchment/blob/1.12.2/src/main/java/com/bewitchment/registry/ModRecipes.java#L118
/// many of these entries are pointless to have

/// remove the default altar upgrades
mods.bewitchment.altar_upgrade.removeAll()
if (isReloading()) AltarUpgradeStorage.UPGRADES.each { k, v -> v.clear() } // clear the lists when reloading

/// some helper methods for adding new entries and making sure they appear correctly in jei
/// the closure should be a localized string for the requirements to be valid - ie "Requires [X]"
void addJei(def upgrade, def entry, Closure tooltip = null) {
    AltarUpgradeStorage.UPGRADES[upgrade.type] << new AltarUpgradeStorage.Entry(entry, upgrade, tooltip)
}

def addSword(def entry, double mult, boolean hasJei = true) {
    def upgrade = mods.bewitchment.altar_upgrade.recipeBuilder()
        .predicate(entry)
        .sword().multiplier(mult)
        .register()
    if (hasJei && entry instanceof ItemStack) addJei(upgrade, entry)
    upgrade
}

def addWand(def entry, double mult, boolean hasJei = true) {
    def upgrade = mods.bewitchment.altar_upgrade.recipeBuilder()
        .predicate(entry)
        .wand().multiplier(mult)
        .register()
    if (hasJei && entry instanceof ItemStack) addJei(upgrade, entry)
    upgrade
}

def addPentacle(def entry, int gain, boolean hasJei = true) {
    def upgrade = mods.bewitchment.altar_upgrade.recipeBuilder()
        .predicate(entry)
        .pentacle().gain(gain)
        .register()
    if (hasJei && entry instanceof ItemStack) addJei(upgrade, entry)
    upgrade
}

def addCup(def entry, double mult, int gain, boolean hasJei = true) {
    def upgrade = mods.bewitchment.altar_upgrade.recipeBuilder()
        .predicate(entry)
        .cup().gain(gain).multiplier(mult)
        .register()
    if (hasJei && entry instanceof ItemStack) addJei(upgrade, entry)
    upgrade
}


/// Swords - multiply maximum magic power
/// higher multiplier due to requiring getting 1024 souls
addJei(addSword(item('abyssalcraft:soulreaper').withNbt(['souls': 1024]), 2.2, false), item('abyssalcraft:soulreaper').withNbt(['souls': 1024]), { I18n.translateToLocal('dj2.jei.bewitchment.entry.soul_reaper') })
addSword(item('bloodmagic:sentient_sword'), 1.1) // the souls in the sword scream out
addSword(item('botania:enderdagger'), 1.1)
addSword(item('bewitchment:athame'), 1.3)
addSword(item('thaumicaugmentation:primal_cutter'), 1.9)
addSword(item('lightningcraft:mystic_sword'), 1.65)
addSword(item('astralsorcery:itemchargedcrystalsword'), 2.75)
addSword(item('avaritia:skullfire_sword'), 4)
addJei(addSword(item('extrautils2:luxsaber:*'), 6.666, false), item('extrautils2:luxsaber:*').withNbt(['Energy': 40000])) // this avoids a visual bug in JEI (bar overflows to the left)
addSword(item('extrautils2:lawsword'), 10)


/// Wands - increase base maximum magic power
addJei(addWand(s -> s.getBlockState().getBlock() instanceof net.minecraft.block.BlockEndRod, 1.1), item('minecraft:end_rod'))
addJei(addWand(s -> s.getBlockState().getBlock() instanceof vazkii.quark.decoration.block.BlockCandle, 1.225), item('quark:candle:*'))
addJei(addWand(s -> s.getBlockState().getBlock() instanceof thaumcraft.common.blocks.basic.BlockCandle, 1.225), [item('thaumcraft:candle_white'), item('thaumcraft:candle_orange'), item('thaumcraft:candle_magenta'), item('thaumcraft:candle_lightblue'), item('thaumcraft:candle_yellow'), item('thaumcraft:candle_lime'), item('thaumcraft:candle_pink'), item('thaumcraft:candle_gray'), item('thaumcraft:candle_silver'), item('thaumcraft:candle_cyan'), item('thaumcraft:candle_purple'), item('thaumcraft:candle_blue'), item('thaumcraft:candle_brown'), item('thaumcraft:candle_green'), item('thaumcraft:candle_red'), item('thaumcraft:candle_black')])
addJei(addWand(s -> s.getBlockState().getBlock() instanceof com.bewitchment.common.block.BlockCandle, 1.225), [item('bewitchment:white_candle'), item('bewitchment:orange_candle'), item('bewitchment:magenta_candle'), item('bewitchment:light_blue_candle'), item('bewitchment:yellow_candle'), item('bewitchment:lime_candle'), item('bewitchment:pink_candle'), item('bewitchment:gray_candle'), item('bewitchment:light_gray_candle'), item('bewitchment:cyan_candle'), item('bewitchment:purple_candle'), item('bewitchment:blue_candle'), item('bewitchment:brown_candle'), item('bewitchment:green_candle'), item('bewitchment:red_candle'), item('bewitchment:black_candle')])
addJei(addWand(s -> s.getBlockState().getBlock() instanceof thaumcraft.common.blocks.misc.BlockNitor, 1.3), [item('thaumcraft:nitor_white'), item('thaumcraft:nitor_orange'), item('thaumcraft:nitor_magenta'), item('thaumcraft:nitor_lightblue'), item('thaumcraft:nitor_yellow'), item('thaumcraft:nitor_lime'), item('thaumcraft:nitor_pink'), item('thaumcraft:nitor_gray'), item('thaumcraft:nitor_silver'), item('thaumcraft:nitor_cyan'), item('thaumcraft:nitor_purple'), item('thaumcraft:nitor_blue'), item('thaumcraft:nitor_brown'), item('thaumcraft:nitor_green'), item('thaumcraft:nitor_red'), item('thaumcraft:nitor_black')])
addJei(addWand(s -> s.getBlockState().getBlock() instanceof com.bewitchment.common.block.BlockCandelabra, 1.5), [item('bewitchment:candelabra_gold'), item('bewitchment:candelabra_iron'), item('bewitchment:candelabra_silver')])
addWand(item('bewitchment:thyrsus'), 1.66)
addWand(item('bewitchment:leonards_wand'), 1.86)
addWand(item('bewitchment:caduceus'), 2.1)
addWand(item('thaumicaugmentation:impulse_cannon'), 4)


/// Pentacles - increase magic power gain
addJei(addPentacle(s -> s.getTileEntity() instanceof net.minecraft.tileentity.TileEntitySkull && s.getTileEntity().getSkullType() == 5, 1), item('minecraft:skull', 5))
addJei(addPentacle(s -> s.getBlockState().getBlock() instanceof vazkii.botania.common.block.decor.BlockTinyPotato, 1), item('botania:tinypotato'))
addPentacle(item('bewitchment:grimoire_magia'), 2)
addJei(addPentacle(s -> s.getBlockState().getBlock() instanceof vazkii.botania.common.block.BlockGaiaHead, 2), item('botania:gaiahead'))
addPentacle(item('bewitchment:pentacle'), 3)
addPentacle(item('bewitchment:demon_heart'), 4)
addPentacle(item('thaumicaugmentation:material', 5), 6) // impetus crystal
addPentacle(item('draconicevolution:ender_energy_manipulator'), 11)
addPentacle(item('projecte:item.pe_life_stone'), 20)
// addPentacle(item('avaritia:resource', 5), 33) // causes all slots afterwards to render as black squares instead - sad!


/// Cups - increase magic power gain and/or multiply maximum magic power
import net.minecraft.tileentity.TileEntityFlowerPot
addJei(addCup(s -> s.getTileEntity() instanceof TileEntityFlowerPot && s.getTileEntity().getFlowerItemStack().isEmpty(), 1.05, 0), [item('minecraft:flower_pot'), item('quark:colored_flowerpot_white'), item('quark:colored_flowerpot_orange'), item('quark:colored_flowerpot_magenta'), item('quark:colored_flowerpot_light_blue'), item('quark:colored_flowerpot_yellow'), item('quark:colored_flowerpot_lime'), item('quark:colored_flowerpot_pink'), item('quark:colored_flowerpot_gray'), item('quark:colored_flowerpot_silver'), item('quark:colored_flowerpot_cyan'), item('quark:colored_flowerpot_purple'), item('quark:colored_flowerpot_blue'), item('quark:colored_flowerpot_brown'), item('quark:colored_flowerpot_green'), item('quark:colored_flowerpot_red'), item('quark:colored_flowerpot_black')], { I18n.translateToLocal('dj2.jei.bewitchment.entry.flower_pot') })
addJei(addCup(s -> s.getTileEntity() instanceof TileEntityFlowerPot && !s.getTileEntity().getFlowerItemStack().isEmpty(), 1.1, 1), [item('minecraft:flower_pot'), item('quark:colored_flowerpot_white'), item('quark:colored_flowerpot_orange'), item('quark:colored_flowerpot_magenta'), item('quark:colored_flowerpot_light_blue'), item('quark:colored_flowerpot_yellow'), item('quark:colored_flowerpot_lime'), item('quark:colored_flowerpot_pink'), item('quark:colored_flowerpot_gray'), item('quark:colored_flowerpot_silver'), item('quark:colored_flowerpot_cyan'), item('quark:colored_flowerpot_purple'), item('quark:colored_flowerpot_blue'), item('quark:colored_flowerpot_brown'), item('quark:colored_flowerpot_green'), item('quark:colored_flowerpot_red'), item('quark:colored_flowerpot_black')], { I18n.translateToLocal('dj2.jei.bewitchment.entry.flower_pot_full') })
addJei(addCup(s -> s.getBlockState().getBlock() instanceof paulevs.betternether.blocks.BlockCincinnasitePot, 1.1, 0), item('betternether:cincinnasite_pot'))
addCup(item('thaumcraft:jar_brain'), 3, 0)
addJei(addCup(blockstate('bewitchment:goblet'), 1.5, 4), item('bewitchment:goblet'))
addJei(addCup(blockstate('bewitchment:filled_goblet'), 1.7, 5), item('bewitchment:filled_goblet'))

// rift jars decrease maxium, but a void rift will vastly increase the regen rate
import thecodex6824.thaumicaugmentation.common.tile.TileRiftJar
addJei(addCup(s -> s.getTileEntity() instanceof TileRiftJar && !s.getTileEntity().rift.hasRift(), 0.25, 0), item('thaumicaugmentation:rift_jar'), { I18n.translateToLocal('dj2.jei.bewitchment.entry.rift_jar') })
addJei(addCup(s -> s.getTileEntity() instanceof TileRiftJar && s.getTileEntity().rift.hasRift() && s.getTileEntity().rift.getRift().getRiftSize() >= 90, 0.25, 50), item('thaumicaugmentation:rift_jar').withNbt(['seed': 1337, 'size': 100]), { I18n.translateToLocal('dj2.jei.bewitchment.entry.full_rift_jar') })

addCup(item('projecte:item.pe_void_ring'), 4, 10)


/// add the category to jei
import classes.content.jei.AltarUpgradeCategory

def altars = [item('bewitchment:stone_witches_altar'), item('bewitchment:nether_brick_witches_altar'), item('bewitchment:obsidian_witches_altar'), item('bewitchment:coquina_witches_altar'), item('bewitchment:embittered_brick_witches_altar'), item('bewitchment:scorned_brick_witches_altar')]

mods.jei.category.categoryBuilder()
    .id(AltarUpgradeCategory.UID)
    .category(guiHelper -> new AltarUpgradeCategory(guiHelper, altars))
    .catalyst(altars)
    .wrapper(AltarUpgradeCategory.getRecipeWrappers())
    .register()
