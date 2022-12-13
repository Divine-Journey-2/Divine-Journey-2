# Author: WaitingIdly

import mods.enderio.Enchanter as EIO;
import mods.thermalexpansion.Enchanter as Thermal;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

print("STARTING Enchantments.zs");


recipes.removeByRecipeName("openblocks:flim_flam_0");
recipes.removeByRecipeName("openblocks:flim_flam_1");
recipes.removeByRecipeName("openblocks:flim_flam_2");
recipes.removeByRecipeName("openblocks:flim_flam_3");
recipes.removeByRecipeName("evilcraft:enchanted_book");

val eioRemoveList as IEnchantmentDefinition[] = [<enchantment:abyssalcraft:iron_wall>, <enchantment:abyssalcraft:light_pierce>, <enchantment:astralsorcery:enchantment.as.nightvision>, <enchantment:cofhcore:holding>, <enchantment:cofhcore:insight>, <enchantment:cofhcore:leech>, <enchantment:cofhcore:multishot>, <enchantment:cofhcore:smelting>, <enchantment:cofhcore:vorpal>, <enchantment:draconicevolution:enchant_reaper>, <enchantment:endercore:autosmelt>, <enchantment:endercore:xpboost>, <enchantment:enderio:repellent>, <enchantment:enderio:soulbound>, <enchantment:enderio:witherarrow>, <enchantment:enderio:witherweapon>, <enchantment:evilcraft:poison_tip>, <enchantment:evilcraft:unusing>, <enchantment:minecraft:aqua_affinity>, <enchantment:minecraft:bane_of_arthropods>, <enchantment:minecraft:blast_protection>, <enchantment:minecraft:depth_strider>, <enchantment:minecraft:efficiency>, <enchantment:minecraft:feather_falling>, <enchantment:minecraft:fire_aspect>, <enchantment:minecraft:fire_protection>, <enchantment:minecraft:flame>, <enchantment:minecraft:fortune>, <enchantment:minecraft:frost_walker>, <enchantment:minecraft:infinity>, <enchantment:minecraft:knockback>, <enchantment:minecraft:looting>, <enchantment:minecraft:luck_of_the_sea>, <enchantment:minecraft:lure>, <enchantment:minecraft:mending>, <enchantment:minecraft:power>, <enchantment:minecraft:projectile_protection>, <enchantment:minecraft:protection>, <enchantment:minecraft:punch>, <enchantment:minecraft:respiration>, <enchantment:minecraft:sharpness>, <enchantment:minecraft:silk_touch>, <enchantment:minecraft:smite>, <enchantment:minecraft:sweeping>, <enchantment:minecraft:thorns>, <enchantment:minecraft:unbreaking>];

val thermalRemoveList as IItemStack[] = [<minecraft:prismarine_crystals>,<minecraft:spider_eye>,<minecraft:chorus_fruit_popped>,<minecraft:gunpowder>,<minecraft:prismarine_shard>,<minecraft:redstone>,<minecraft:feather>,<minecraft:blaze_rod>,<minecraft:magma_cream>,<minecraft:blaze_powder>,<minecraft:emerald>,<minecraft:ice>,<minecraft:ender_eye>,<minecraft:piston>,<minecraft:gold_ingot>,<minecraft:fish:2>,<minecraft:carrot_on_a_stick>,<minecraft:nether_star>,<minecraft:flint>,<minecraft:shield>,<minecraft:iron_ingot>,<minecraft:string>,<minecraft:fish:3>,<minecraft:quartz>,<minecraft:glowstone_dust>,<minecraft:rotten_flesh>,<minecraft:reeds>,<minecraft:double_plant:4>,<minecraft:obsidian>,<minecraft:ghast_tear>,<astralsorcery:itemcraftingcomponent:2>,<minecraft:chest>,<minecraft:experience_bottle >,<minecraft:nether_wart>,<minecraft:arrow>,<thermalfoundation:material:1027>,<thermalfoundation:material:1024>,<minecraft:soul_sand>,<minecraft:skull:1>,<evilcraft:blood_orb:1>,<evilcraft:poison_sac>,<evilcraft:blood_waxed_coal>];

val additionList as IItemStack[IEnchantmentDefinition] = {
    <enchantment:minecraft:aqua_affinity>: <divinerpg:aqua_ball>*12,
    <enchantment:minecraft:bane_of_arthropods>: <minecraft:web>*1,
    <enchantment:minecraft:binding_curse>: <minecraft:tripwire_hook>*16,
    <enchantment:minecraft:blast_protection>: <minecraft:gunpowder>*16,
    <enchantment:minecraft:depth_strider>: <minecraft:prismarine_crystals>*16,
    <enchantment:minecraft:efficiency>: <minecraft:redstone_block>*12,
    <enchantment:minecraft:feather_falling>: <minecraft:feather>*16,
    <enchantment:minecraft:fire_aspect>: <divinerpg:fury_fire>*1,
    <enchantment:minecraft:fire_protection>: <contenttweaker:fluxed_electrum_ingot>*2,
    <enchantment:minecraft:flame>: <minecraft:fire_charge>*32,
    <enchantment:minecraft:fortune>: <minecraft:lapis_block>*20,
    <enchantment:minecraft:frost_walker>: <minecraft:ice>*32,
    <enchantment:minecraft:infinity>: <enderio:block_infinity_fog>*64,
    <enchantment:minecraft:knockback>: <minecraft:slime>*1,
    <enchantment:minecraft:looting>: <contenttweaker:aechomedirus>*1,
    <enchantment:minecraft:luck_of_the_sea>: <minecraft:sea_lantern>*16,
    <enchantment:minecraft:lure>: <minecraft:string>*16,
    <enchantment:minecraft:mending>: <tinkersaddons:modifier_item>*1,
    <enchantment:minecraft:power>: <minecraft:flint>*12,
    <enchantment:minecraft:projectile_protection>: <minecraft:arrow>*16,
    <enchantment:minecraft:protection>: <enderio:block_dark_steel_anvil>*1,
    <enchantment:minecraft:punch>: <minecraft:piston>*16,
    <enchantment:minecraft:respiration>: <minecraft:glass_bottle>*16,
    <enchantment:minecraft:sharpness>: <mob_grinding_utils:saw_upgrade>*1,
    <enchantment:minecraft:silk_touch>: <actuallyadditions:item_drill_upgrade_silk_touch>*1,
    <enchantment:minecraft:smite>: <thaumcraft:flesh_block>*1,
    <enchantment:minecraft:sweeping>: <minecraft:blaze_rod>*16,
    <enchantment:minecraft:thorns>: <minecraft:cactus>*16,
    <enchantment:minecraft:unbreaking>: <enderio:block_reinforced_obsidian>*1,
    <enchantment:minecraft:vanishing_curse>: <minecraft:ghast_tear>*4,
    // For some *unknown* reason, both of these have absurdly high experience costs in the EIO Enchanter via this way
    // <enchantment:abyssalcraft:coralium>: <abyssalcraft:ccluster9>*8,
    // <enchantment:abyssalcraft:dread>: <abyssalcraft:dreadfragment>*8,
    <enchantment:abyssalcraft:iron_wall>: <minecraft:iron_bars>*64,
    <enchantment:abyssalcraft:light_pierce>: <aether_legacy:holystone>*12,
    <enchantment:abyssalcraft:multi_rend>: <abyssalcraft:oblivionshard>*4,
    <enchantment:abyssalcraft:sapping>: <abyssalcraft:shadowgem>*1,
    <enchantment:astralsorcery:enchantment.as.nightvision>: <minecraft:golden_carrot>*8,
    <enchantment:astralsorcery:enchantment.as.smelting>: <minecraft:furnace>*64,
    <enchantment:bewitchment:magic_protection>: <extrautils2:magicapple>*8,
    <enchantment:bibliocraft:bibliocraft.deathcompassench>: <bibliocraft:compass>*1,
    <enchantment:bibliocraft:bibliocraft.readingench>: <bibliocraft:biblioglasses>*1,
    <enchantment:cofhcore:holding>: <actuallyadditions:block_giant_chest>*4,
    <enchantment:cofhcore:insight>: <minecraft:experience_bottle>*16,
    <enchantment:cofhcore:leech>: <roots:baffle_cap_mushroom>*2,
    <enchantment:cofhcore:multishot>: <enderio:item_capacitor_melodic>*1,
    <enchantment:cofhcore:smashing>: <actuallyadditions:block_breaker>*16,
    <enchantment:cofhcore:smelting>: <actuallyadditions:block_furnace_double>*16,
    <enchantment:cofhcore:soulbound>: <minecraft:nether_star>*1,
    <enchantment:cofhcore:vorpal>: <industrialforegoing:mob_relocator>*8,
    <enchantment:divinerpg:aftershock>: <enderio:block_killer_joe>*4,
    <enchantment:divinerpg:rive>: <actuallyadditions:item_drill_upgrade_five_by_five>*1,
    <enchantment:draconicevolution:enchant_reaper>: <mekanism:electrolyticcore>*1,
    <enchantment:endercore:autosmelt>: <tconstruct:seared_furnace_controller>*16,
    <enchantment:endercore:xpboost>: <actuallyadditions:item_solidified_experience>*16,
    <enchantment:enderio:repellent>: <minecraft:ender_pearl>*12,
    <enchantment:enderio:shimmer>: <extrautils2:ingredients:12>*1,
    <enchantment:enderio:witherarrow>: <quark:black_ash>*16,
    <enchantment:enderio:witherweapon>: <mysticalagradditions:stuff:1>*2,
    <enchantment:evilcraft:breaking>: <minecraft:gold_nugget>*1,
    <enchantment:evilcraft:life_stealing>: <bhc:orange_heart>*1,
    <enchantment:evilcraft:poison_tip>: <betternether:egg_plant>*16,
    <enchantment:evilcraft:unusing>: <evilcraft:blood_waxed_coal>*1,
    <enchantment:evilcraft:vengeance>: <evilcraft:vengeance_essence>*1,
    <enchantment:extrautils2:xu.bladerang>: <actuallyadditions:item_damage_lens>*4,
    <enchantment:extrautils2:xu.boomereaperang>: <contenttweaker:hyper_diamond_block>*1,
    <enchantment:extrautils2:xu.burnerang>: <contenttweaker:dark_ingot>*32,
    <enchantment:extrautils2:xu.kaboomerang>: <minecraft:tnt>*16,
    <enchantment:extrautils2:xu.zoomerang>: <minecraft:sugar>*16,
    <enchantment:lightningcraft:elec_aura>: <contenttweaker:compressed_obsidian2>*16,
    <enchantment:lightningcraft:hand_of_thor>: <minecraft:end_rod>*16,
    <enchantment:openblocks:explosive>: <mekanism:obsidiantnt>*8,
    <enchantment:openblocks:flim_flam>: <minecraft:fish:2>*16,
    <enchantment:openblocks:last_stand>: <quantumflux:craftingpiece>*4,
    <enchantment:simplyjetpacks:fuel_efficiency>: <mekanism:energyupgrade>*8,
    <enchantment:spartanshields:ssenchspikes>: <evilcraft:dark_spike>*2,
} as IItemStack[IEnchantmentDefinition];

// We remove from EIO via enchantments
for ench in eioRemoveList {
    EIO.removeRecipe(ench);
}

// We remove from Thermal via inputs - book is in all, by default
for item in thermalRemoveList {
    Thermal.removeRecipe(<minecraft:book>, item);
}

for ench, item in additionList {
    val max as int = ench.maxLevel;
    val mult as int = (max == 1) ? 100 : (item.amount * max);
    val book as IItemStack = <minecraft:enchanted_book>.withTag(ench.makeEnchantment(ench.minLevel).makeBookTag());

    EIO.addRecipe(ench, item.definition.makeStack(item.metadata), item.amount, 2);
    Thermal.addRecipe(book, <minecraft:book>, item, 1000 * mult, 100 * mult, false);
}


// As before, coralium and dread enchantments (and seemingly only these two?)
// don't calculate level required properly via the normal way
EIO.addRecipe(<enchantment:abyssalcraft:coralium>, <abyssalcraft:ccluster9>, 8, 0);
EIO.addRecipe(<enchantment:abyssalcraft:dread>, <abyssalcraft:dreadfragment>, 8, 0);
Thermal.addRecipe(<minecraft:enchanted_book>.withTag(<enchantment:abyssalcraft:coralium>.makeEnchantment(1).makeBookTag()), <minecraft:book>, <abyssalcraft:ccluster9>*8, 10000, 10000, false);
Thermal.addRecipe(<minecraft:enchanted_book>.withTag(<enchantment:abyssalcraft:dread>.makeEnchantment(1).makeBookTag()), <minecraft:book>, <abyssalcraft:dreadfragment>*8, 10000, 10000, false);


print("ENDING Enchantments.zs");
