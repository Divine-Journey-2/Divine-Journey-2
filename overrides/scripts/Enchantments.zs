# Author: WaitingIdly

import mods.enderio.Enchanter as EIO;
import mods.thermalexpansion.Enchanter as Thermal;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

print("STARTING Enchantments.zs");

val eioRemoveList as IEnchantmentDefinition[] = [<enchantment:abyssalcraft:iron_wall>, <enchantment:abyssalcraft:light_pierce>, <enchantment:astralsorcery:enchantment.as.nightvision>, <enchantment:cofhcore:holding>, <enchantment:cofhcore:insight>, <enchantment:cofhcore:leech>, <enchantment:cofhcore:multishot>, <enchantment:cofhcore:smelting>, <enchantment:cofhcore:vorpal>, <enchantment:draconicevolution:enchant_reaper>, <enchantment:endercore:autosmelt>, <enchantment:endercore:xpboost>, <enchantment:enderio:repellent>, <enchantment:enderio:soulbound>, <enchantment:enderio:witherarrow>, <enchantment:enderio:witherweapon>, <enchantment:evilcraft:poison_tip>, <enchantment:evilcraft:unusing>, <enchantment:minecraft:aqua_affinity>, <enchantment:minecraft:bane_of_arthropods>, <enchantment:minecraft:blast_protection>, <enchantment:minecraft:depth_strider>, <enchantment:minecraft:efficiency>, <enchantment:minecraft:feather_falling>, <enchantment:minecraft:fire_aspect>, <enchantment:minecraft:fire_protection>, <enchantment:minecraft:flame>, <enchantment:minecraft:fortune>, <enchantment:minecraft:frost_walker>, <enchantment:minecraft:infinity>, <enchantment:minecraft:knockback>, <enchantment:minecraft:looting>, <enchantment:minecraft:luck_of_the_sea>, <enchantment:minecraft:lure>, <enchantment:minecraft:mending>, <enchantment:minecraft:power>, <enchantment:minecraft:projectile_protection>, <enchantment:minecraft:protection>, <enchantment:minecraft:punch>, <enchantment:minecraft:respiration>, <enchantment:minecraft:sharpness>, <enchantment:minecraft:silk_touch>, <enchantment:minecraft:smite>, <enchantment:minecraft:sweeping>, <enchantment:minecraft:thorns>, <enchantment:minecraft:unbreaking>];

val thermalRemoveList as IItemStack[] = [<minecraft:prismarine_crystals>,<minecraft:spider_eye>,<minecraft:chorus_fruit_popped>,<minecraft:gunpowder>,<minecraft:prismarine_shard>,<minecraft:redstone>,<minecraft:feather>,<minecraft:blaze_rod>,<minecraft:magma_cream>,<minecraft:blaze_powder>,<minecraft:emerald>,<minecraft:ice>,<minecraft:ender_eye>,<minecraft:piston>,<minecraft:gold_ingot>,<minecraft:fish:2>,<minecraft:carrot_on_a_stick>,<minecraft:nether_star>,<minecraft:flint>,<minecraft:shield>,<minecraft:iron_ingot>,<minecraft:string>,<minecraft:fish:3>,<minecraft:quartz>,<minecraft:glowstone_dust>,<minecraft:rotten_flesh>,<minecraft:reeds>,<minecraft:double_plant:4>,<minecraft:obsidian>,<minecraft:ghast_tear>,<astralsorcery:itemcraftingcomponent:2>,<minecraft:chest>,<minecraft:experience_bottle >,<minecraft:nether_wart>,<minecraft:arrow>,<thermalfoundation:material:1027>,<thermalfoundation:material:1024>,<minecraft:soul_sand>,<minecraft:skull:1>,<evilcraft:blood_orb:1>,<evilcraft:poison_sac>,<evilcraft:blood_waxed_coal>];

val additionList as IItemStack[IEnchantmentDefinition] = {
    <enchantment:minecraft:aqua_affinity>: <divinerpg:aqua_ball>*12,
    <enchantment:minecraft:bane_of_arthropods>: <mob_grinding_utils:saw_upgrade:4>*1,
    <enchantment:minecraft:binding_curse>: <minecraft:tripwire_hook>*16,
    <enchantment:minecraft:blast_protection>: <minecraft:gunpowder>*16,
    <enchantment:minecraft:depth_strider>: <minecraft:prismarine_crystals>*16,
    <enchantment:minecraft:efficiency>: <minecraft:redstone_block>*12,
    <enchantment:minecraft:feather_falling>: <minecraft:feather>*16,
    <enchantment:minecraft:fire_aspect>: <mob_grinding_utils:saw_upgrade:2>*1,
    <enchantment:minecraft:fire_protection>: <thermalfoundation:material:771>*16,
    <enchantment:minecraft:flame>: <natura:materials:7>*64,
    <enchantment:minecraft:fortune>: <minecraft:lapis_block>*20,
    <enchantment:minecraft:frost_walker>: <minecraft:ice>*32,
    <enchantment:minecraft:infinity>: <enderio:item_material:20>*64,
    <enchantment:minecraft:knockback>: <mob_grinding_utils:fan_upgrade:2>*1,
    <enchantment:minecraft:looting>: <mob_grinding_utils:saw_upgrade:1>*1,
    <enchantment:minecraft:luck_of_the_sea>: <tconstruct:edible:32>*8,
    <enchantment:minecraft:lure>: <minecraft:string>*16,
    <enchantment:minecraft:mending>: <tconstruct:materials:19>*1,
    <enchantment:minecraft:power>: <minecraft:flint>*12,
    <enchantment:minecraft:projectile_protection>: <minecraft:arrow>*16,
    <enchantment:minecraft:protection>: <enderio:item_alloy_ingot:6>*8,
    <enchantment:minecraft:punch>: <minecraft:piston>*16,
    <enchantment:minecraft:respiration>: <minecraft:glass_bottle>*16,
    <enchantment:minecraft:sharpness>: <mob_grinding_utils:saw_upgrade>*1,
    <enchantment:minecraft:silk_touch>: <tconstruct:materials:16>*1,
    <enchantment:minecraft:smite>: <mob_grinding_utils:saw_upgrade:3>*1,
    <enchantment:minecraft:sweeping>: <actuallyadditions:item_misc:2>*4,
    <enchantment:minecraft:thorns>: <minecraft:cactus>*16,
    <enchantment:minecraft:unbreaking>: <tconstruct:materials:14>*1,
    <enchantment:minecraft:vanishing_curse>: <minecraft:ghast_tear>*4,
    // For some *unknown* reason, both of these have absurdly high experience costs in the EIO Enchanter via this way
    // <enchantment:abyssalcraft:coralium>: <abyssalcraft:ccluster9>*8,
    // <enchantment:abyssalcraft:dread>: <abyssalcraft:dreadfragment>*8,
    <enchantment:abyssalcraft:iron_wall>: <minecraft:iron_bars>*64,
    <enchantment:abyssalcraft:light_pierce>: <aether_legacy:holystone>*12,
    <enchantment:abyssalcraft:multi_rend>: <abyssalcraft:oblivionshard>*4,
    <enchantment:abyssalcraft:sapping>: <abyssalcraft:shadowgem>*1,
    <enchantment:astralsorcery:enchantment.as.nightvision>: <minecraft:potion>.withTag({Potion:"minecraft:night_vision"})*1,
    <enchantment:astralsorcery:enchantment.as.smelting>: <minecraft:furnace>*64,
    <enchantment:bewitchment:magic_protection>: <extrautils2:magicapple>*8,
    <enchantment:bibliocraft:bibliocraft.deathcompassench>: <bibliocraft:compass>*1,
    <enchantment:bibliocraft:bibliocraft.readingench>: <bibliocraft:biblioglasses>*1,
    <enchantment:cofhcore:holding>: <actuallyadditions:block_giant_chest>*4,
    <enchantment:cofhcore:insight>: <minecraft:experience_bottle>*16,
    <enchantment:cofhcore:leech>: <tconstruct:materials:17>*2,
    <enchantment:cofhcore:multishot>: <enderio:item_material:71>*1,
    <enchantment:cofhcore:smashing>: <thermalfoundation:material:1027>*16,
    <enchantment:cofhcore:smelting>: <thermalfoundation:material:1024>*16,
    <enchantment:cofhcore:soulbound>: <minecraft:nether_star>*1,
    <enchantment:cofhcore:vorpal>: <enderio:item_material:41>*8,
    <enchantment:divinerpg:aftershock>: <enderio:item_material:42>*4,
    <enchantment:divinerpg:rive>: <quantumflux:craftingpiece:2>*2,
    <enchantment:draconicevolution:enchant_reaper>: <enderio:item_material:44>*1,
    <enchantment:endercore:autosmelt>: <tconstruct:seared_furnace_controller>*16,
    <enchantment:endercore:xpboost>: <actuallyadditions:item_solidified_experience>*16,
    <enchantment:enderio:repellent>: <minecraft:ender_pearl>*12,
    <enchantment:enderio:shimmer>: <extrautils2:ingredients:12>*1,
    <enchantment:enderio:witherarrow>: <quark:black_ash>*16,
    <enchantment:enderio:witherweapon>: <minecraft:skull:1>*2,
    <enchantment:evilcraft:breaking>: <minecraft:gold_nugget>*1,
    <enchantment:evilcraft:life_stealing>: <bhc:orange_heart>*1,
    <enchantment:evilcraft:poison_tip>: <betternether:egg_plant>*16,
    <enchantment:evilcraft:unusing>: <evilcraft:blood_waxed_coal>*1,
    <enchantment:evilcraft:vengeance>: <evilcraft:vengeance_essence>*1,
    <enchantment:extrautils2:xu.bladerang>: <thermalfoundation:material:657>*4,
    <enchantment:extrautils2:xu.boomereaperang>: <quantumflux:craftingpiece:6>*2,
    <enchantment:extrautils2:xu.burnerang>: <thermalfoundation:material:892>*32,
    <enchantment:extrautils2:xu.kaboomerang>: <minecraft:tnt>*16,
    <enchantment:extrautils2:xu.zoomerang>: <minecraft:sugar>*16,
    <enchantment:lightningcraft:elec_aura>: <immersiveengineering:wirecoil:2>*16,
    <enchantment:lightningcraft:hand_of_thor>: <minecraft:end_rod>*16,
    <enchantment:openblocks:explosive>: <mekanism:obsidiantnt>*8,
    <enchantment:openblocks:flim_flam>: <minecraft:fish:2>*16,
    <enchantment:openblocks:last_stand>: <quantumflux:craftingpiece>*4,
    <enchantment:simplyjetpacks:fuel_efficiency>: <thermalexpansion:augment:513>*1,
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
    val book as IItemStack = <minecraft:enchanted_book>.withTag(ench.makeEnchantment(ench.minLevel).makeTag());

    EIO.addRecipe(ench, item.anyAmount(), item.amount, 2);
    Thermal.addRecipe(book, <minecraft:book>, item, 1000 * mult, 100 * mult, false);
}


// As before, coralium and dread enchantments (and seemingly only these two?)
// don't calculate level required properly via the normal way
EIO.addRecipe(<enchantment:abyssalcraft:coralium>, <abyssalcraft:ccluster9>, 8, 0);
EIO.addRecipe(<enchantment:abyssalcraft:dread>, <abyssalcraft:dreadfragment>, 8, 0);
Thermal.addRecipe(<minecraft:enchanted_book>.withTag(<enchantment:abyssalcraft:coralium>.makeEnchantment(1).makeTag()), <minecraft:book>, <abyssalcraft:ccluster9>*8, 10000, 10000, false);
Thermal.addRecipe(<minecraft:enchanted_book>.withTag(<enchantment:abyssalcraft:dread>.makeEnchantment(1).makeTag()), <minecraft:book>, <abyssalcraft:dreadfragment>*8, 10000, 10000, false);


print("ENDING Enchantments.zs");
