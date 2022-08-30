# Author: Atricos, WaitingIdly

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.bloodmagic.TartaricForge;
import mods.botania.Apothecary;
import mods.roots.Fey;
import mods.botania.PureDaisy;
import mods.thermalexpansion.Transposer;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.botania.RuneAltar;
import mods.botania.ElvenTrade;
import mods.bloodmagic.AlchemyTable;
import mods.botania.Orechid;
import dj2addons.botania.Brews;
import dj2addons.botania.Brew;

print("STARTING Botania.zs");

# Floral Fertilizer
recipes.remove(<botania:fertilizer>);
mods.bloodmagic.TartaricForge.addRecipe(<botania:fertilizer> * 4, [<bloodmagic:component:5>, <contenttweaker:wizards_reagent>, <minecraft:dye:15>, <minecraft:slime_ball>], 8, 8);

# Petal Apothecary
recipes.remove(<botania:altar>);
mods.extendedcrafting.EnderCrafting.addShaped(<botania:altar>, [[<contenttweaker:clean_runic_plate>,<botania:petal:*>,<contenttweaker:clean_runic_plate>],[null,<contenttweaker:tempest_core>,null],[<contenttweaker:clean_runic_plate>,<contenttweaker:clean_runic_plate>,<contenttweaker:clean_runic_plate>]]);

# Pure Daisy
mods.botania.Apothecary.removeRecipe("puredaisy");
Fey.addRecipe("pure_daisy", <botania:specialflower>.withTag({type: "puredaisy"}), [<contenttweaker:petal_of_the_daisy>,<contenttweaker:petal_of_the_daisy>,<bloodmagic:component:5>,<contenttweaker:dirty_reagent>,<contenttweaker:orbis_terrae>]);

# Hydroangeas
mods.botania.Apothecary.removeRecipe("hydroangeas");
Fey.addRecipe("hydroangeas", <botania:specialflower>.withTag({type: "hydroangeas"}), [<contenttweaker:hydrating_petal>,<contenttweaker:hydrating_petal>,<bloodmagic:component>,<contenttweaker:tempest_reagent>,<contenttweaker:aquasalus>]);

# Endoflame
mods.botania.Apothecary.removeRecipe("endoflame");
Fey.addRecipe("endoflame", <botania:specialflower>.withTag({type: "endoflame"}), [<contenttweaker:petal_of_the_inner_flame>,<contenttweaker:petal_of_the_inner_flame>,<contenttweaker:strength_reagent>,<contenttweaker:dirty_reagent>,<contenttweaker:virtus>]);

# Livingrock
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
for dim_stone in dimensional_stones {
	mods.botania.PureDaisy.addRecipe(dim_stone, <botania:livingrock>, 75);
}
<botania:livingrock>.addTooltip(format.white(format.italic("It seems only certain Dimensional Stones")));
<botania:livingrock>.addTooltip(format.white(format.italic("have the ability to be transformed")));
<botania:livingrock>.addTooltip(format.white(format.italic("into Livingrock... How peculiar.")));

# Livingwood
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
val dimensionalLogs = [<divinerpg:frozen_log>,<divinerpg:divine_log>,<divinerpg:eden_log>,<divinerpg:wildwood_log>,<divinerpg:apalachia_log>,<divinerpg:skythern_log>,<divinerpg:mortum_log>,<divinerpg:dreamwood_log>,<divinerpg:firewood_log>,<divinerpg:hyrewood_log>,<divinerpg:mintwood_log>,<atum:palm_log>,<atum:deadwood_log>,<aether_legacy:aether_log:2>,<aether_legacy:aether_log:3>,<erebus:log_baobab>,<erebus:log_eucalyptus>,<erebus:log_mahogany>,<erebus:log_mossbark>,<erebus:log_asper>,<erebus:log_cypress>,<erebus:log_balsam>,<erebus:log_rotten>,<erebus:log_marshwood>,<erebus:log_scorched>,<abyssalcraft:dreadlog>,<twilightforest:twilight_log:0>,<twilightforest:twilight_log:1>,<twilightforest:twilight_log:2>,<twilightforest:twilight_log:3>,<twilightforest:magic_log:0>,<twilightforest:magic_log:1>,<twilightforest:magic_log:2>,<twilightforest:magic_log:3>] as IItemStack[];
for dim_log in dimensionalLogs {
	mods.botania.PureDaisy.addRecipe(dim_log, <botania:livingwood>, 75);
}
<botania:livingwood>.addTooltip(format.white(format.italic("It seems only certain Dimensional Logs")));
<botania:livingwood>.addTooltip(format.white(format.italic("have the ability to be transformed")));
<botania:livingwood>.addTooltip(format.white(format.italic("into Livingwood... How peculiar.")));

# Mana Pool
recipes.remove(<botania:pool>);
recipes.addShaped(<botania:pool>, [[<botania:livingrock>,<contenttweaker:aquasalus>,<botania:livingrock>],[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>]]);

# Mana Spreader
recipes.remove(<botania:spreader>);
recipes.addShapedMirrored(<botania:spreader>, [[<botania:livingwood>,<botania:livingwood>,<botania:livingwood>],[<botania:livingwood>,glod_crystal_block,<contenttweaker:magical_core>],[<botania:livingwood>,<botania:livingwood>,<botania:livingwood>]]);

# Wand of the Forest
recipes.remove(<botania:twigwand>);
recipes.addShapedMirrored("wand_of_the_forest", <botania:twigwand>, [[<botania:petal:*>.marked("petal1"),null,<botania:petal:*>.marked("petal2")],[null,<botania:manaresource:3>,<contenttweaker:environmental_core>],[<botania:manaresource:3>,null,null]],
function(out, ins, cInfo) {
	return out.withTag({color1: ins.petal1.damage, color2: ins.petal2.damage, boundTileZ: 0, boundTileX: 0, boundTileY: -1});
}, null);

# Manasteel Ingot
# 100% = 1,000,000
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <thermalfoundation:material:136>, 5000);

# Block of Manasteel
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <thermalfoundation:storage:8>, 45000);

# Mana Pearl
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:1>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:1>, <appliedenergistics2:material:9>, 10000);

# Mana Diamond
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:2>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:2>, <quantumflux:craftingpiece:6>, 15000);

# Block of Mana Diamond
mods.botania.ManaInfusion.removeRecipe(<botania:storage:3>);
mods.botania.ManaInfusion.addInfusion(<botania:storage:3>, <contenttweaker:hyper_diamond_block>, 135000);

# Managlass
mods.botania.ManaInfusion.removeRecipe(<botania:managlass>);
mods.botania.ManaInfusion.addInfusion(<botania:managlass>, <thermalfoundation:glass_alloy:7>, 5000);

# Mana Infused String
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:16>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:16>, <evilcraft:golden_string>, 3000);

# Spellbinding Cloth
<botania:spellcloth>.maxStackSize = 64;
<botania:spellcloth>.maxDamage = 0;

# Runic Altar
recipes.remove(<botania:runealtar>);
mods.extendedcrafting.TableCrafting.addShaped(<botania:runealtar>,
[[<botania:livingrock>,<contenttweaker:earthen_core>,<contenttweaker:earthen_core>,<contenttweaker:earthen_core>,<botania:livingrock>],
[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],
[null,<contenttweaker:livingmatter>,<bloodmagic:incense_altar>,<contenttweaker:livingmatter>,null],
[null,<contenttweaker:livingmatter>,<bloodmagic:incense_altar>,<contenttweaker:livingmatter>,null],
[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>,<botania:livingrock>,<botania:livingrock>]]);

# Mana Powder
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:23>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <enderio:item_material:38>, 3000);

# Rune of Water
mods.botania.RuneAltar.removeRecipe(<botania:rune>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_water>, [<contenttweaker:aquatic_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered:1>,<botania:manaresource:23>], 10000);

# Rune of Fire
mods.botania.RuneAltar.removeRecipe(<botania:rune:1>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_fire>, [<contenttweaker:fire_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered>,<botania:manaresource:23>], 10000);

# Rune of Earth
mods.botania.RuneAltar.removeRecipe(<botania:rune:2>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_earth>, [<contenttweaker:earthen_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered:4>,<botania:manaresource:23>], 10000);

# Rune of Air
mods.botania.RuneAltar.removeRecipe(<botania:rune:3>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_air>, [<contenttweaker:gusty_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered:2>,<botania:manaresource:23>], 10000);

# Manasteel Sword
recipes.remove(<botania:manasteelsword>);
recipes.addShaped(<botania:manasteelsword>, [[<botania:manaresource>],[<botania:manaresource>],[<bloodmagic:sentient_sword>]]);

# Manasteel Pickaxe
recipes.remove(<botania:manasteelpick>);
recipes.addShaped(<botania:manasteelpick>, [[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>],[null,<bloodmagic:sentient_pickaxe>,null],[null,<botania:manaresource:3>,null]]);

# Manasteel Shovel
recipes.remove(<botania:manasteelshovel>);
recipes.addShaped(<botania:manasteelshovel>, [[<botania:manaresource>],[<bloodmagic:sentient_shovel>],[<botania:manaresource:3>]]);

# Manasteel Axe
recipes.remove(<botania:manasteelaxe>);
recipes.addShapedMirrored(<botania:manasteelaxe>, [[<botania:manaresource>,<botania:manaresource>],[<botania:manaresource>,<bloodmagic:sentient_axe>],[null,<botania:manaresource:3>]]);

# Rune of Mana
mods.botania.RuneAltar.removeRecipe(<botania:rune:8>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_mana>, [<botania:storage>,<botania:storage>,<botania:storage:3>,<botania:storage:3>], 25000);

# Rune of Spring
mods.botania.RuneAltar.removeRecipe(<botania:rune:4>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_spring>, [<contenttweaker:rune_of_air>,<contenttweaker:rune_of_earth>,<contenttweaker:livingmatter>,<contenttweaker:environmental_core>], 15000);

# Rune of Summer
mods.botania.RuneAltar.removeRecipe(<botania:rune:5>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_summer>, [<contenttweaker:rune_of_fire>,<contenttweaker:rune_of_air>,<contenttweaker:livingmatter>,<contenttweaker:power_core>], 15000);

# Rune of Autumn
mods.botania.RuneAltar.removeRecipe(<botania:rune:6>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_autumn>, [<contenttweaker:rune_of_fire>,<contenttweaker:rune_of_water>,<contenttweaker:livingmatter>,<contenttweaker:tempest_core>], 15000);

# Rune of Winter
mods.botania.RuneAltar.removeRecipe(<botania:rune:7>);
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_winter>, [<contenttweaker:rune_of_water>,<contenttweaker:rune_of_earth>,<contenttweaker:livingmatter>,<contenttweaker:icy_core>], 15000);

# Manastorm Charge
recipes.remove(<botania:manabomb>);

# Manastar
mods.botania.Apothecary.removeRecipe("manastar");
Fey.addRecipe("manastar", <botania:specialflower>.withTag({type: "manastar"}), [<contenttweaker:manastar_petal>,<contenttweaker:manastar_petal>,<botania:manaresource>,<botania:manaresource>,<botania:manaresource:2>]);

# Thermalily
mods.botania.Apothecary.removeRecipe("thermalily");
Fey.addRecipe("thermalily", <botania:specialflower>.withTag({type: "thermalily"}), [<contenttweaker:thermal_petal>,<contenttweaker:thermal_petal>,<contenttweaker:rune_of_fire>,<contenttweaker:rune_of_earth>,<contenttweaker:strength_reagent>]);

# Rosa Arcana
mods.botania.Apothecary.removeRecipe("arcanerose");
Fey.addRecipe("arcanerose", <botania:specialflower>.withTag({type: "arcanerose"}), [<contenttweaker:petal_of_the_arcane_rose>,<contenttweaker:petal_of_the_arcane_rose>,<contenttweaker:rune_of_mana>,<actuallyadditions:block_xp_solidifier>,<enderio:item_material:18>]);

# Gourmaryllis
mods.botania.Apothecary.removeRecipe("gourmaryllis");
Fey.addRecipe("gourmaryllis", <botania:specialflower>.withTag({type: "gourmaryllis"}), [<contenttweaker:petal_of_the_gourmaryllis>,<contenttweaker:petal_of_the_gourmaryllis>,<contenttweaker:rune_of_gluttony>,<abyssalcraft:mre>,<botania:manaresource:9>]);

# Narslimmus
mods.botania.Apothecary.removeRecipe("narslimmus");
Fey.addRecipe("narslimmus", <botania:specialflower>.withTag({type: "narslimmus"}), [<contenttweaker:petal_of_the_narslimmus>,<contenttweaker:petal_of_the_narslimmus>,<contenttweaker:rune_of_summer>,<minecraft:slime>,<minecraft:slime>]);

# Jaded Amaranthus
mods.botania.Apothecary.removeRecipe("jadedAmaranthus");
Fey.addRecipe("jadedAmaranthus", <botania:specialflower>.withTag({type: "jadedAmaranthus"}), [<contenttweaker:jaded_petal>,<contenttweaker:jaded_petal>,<contenttweaker:rune_of_spring>,<botania:fertilizer>,<botania:fertilizer>]);

# Bellethorne
mods.botania.Apothecary.removeRecipe("bellethorn");
Fey.addRecipe("bellethorn", <botania:specialflower>.withTag({type: "bellethorn"}), [<contenttweaker:thorny_belle_petal>,<contenttweaker:thorny_belle_petal>,<contenttweaker:damage_reagent>,<contenttweaker:rune_of_fire>,<extrautils2:spike_iron>]);

# Dreadthorn
mods.botania.Apothecary.removeRecipe("dreadthorn");
Fey.addRecipe("dreadthorn", <botania:specialflower>.withTag({type: "dreadthorn"}), [<contenttweaker:thorny_dread_petal>,<contenttweaker:thorny_dread_petal>,<contenttweaker:damage_reagent>,<abyssalcraft:ingotblock:2>,<extrautils2:spike_iron>]);

# Tigerseye
mods.botania.Apothecary.removeRecipe("tigerseye");
Fey.addRecipe("tigerseye", <botania:specialflower>.withTag({type: "tigerseye"}), [<contenttweaker:tigerseye_petal>,<contenttweaker:tigerseye_petal>,<contenttweaker:rune_of_autumn>,<contenttweaker:sanctus>,<contenttweaker:neutral_reagent>]);

# Exoflame
mods.botania.Apothecary.removeRecipe("exoflame");
Fey.addRecipe("exoflame", <botania:specialflower>.withTag({type: "exoflame"}), [<contenttweaker:petal_of_the_exoflame>,<contenttweaker:petal_of_the_exoflame>,<contenttweaker:rune_of_fire>,<immersiveengineering:metal_device1:1>,<immersiveengineering:metal_device1:1>]);

# Agricarnation
mods.botania.Apothecary.removeRecipe("agricarnation");
Fey.addRecipe("agricarnation", <botania:specialflower>.withTag({type: "agricarnation"}), [<contenttweaker:agricarnatic_petal>,<contenttweaker:agricarnatic_petal>,<contenttweaker:rune_of_spring>,<contenttweaker:rune_of_summer>,<mysticalagriculture:growth_accelerator>]);

# Hopperhock
mods.botania.Apothecary.removeRecipe("hopperhock");
Fey.addRecipe("hopperhock", <botania:specialflower>.withTag({type: "hopperhock"}), [<contenttweaker:hopping_petal>,<contenttweaker:hopping_petal>,<contenttweaker:rune_of_air>,<openblocks:vacuum_hopper>,<bloodmagic:component:31>]);

# Rannuncarpus
mods.botania.Apothecary.removeRecipe("rannuncarpus");
Fey.addRecipe("rannuncarpus", <botania:specialflower>.withTag({type: "rannuncarpus"}), [<contenttweaker:petal_of_the_rannuncarpus>,<contenttweaker:petal_of_the_rannuncarpus>,<contenttweaker:rune_of_earth>,<openblocks:block_breaker>,<contenttweaker:damage_reagent>]);

# Tangleberry
mods.botania.Apothecary.removeRecipe("tangleberrie");
Fey.addRecipe("tangleberrie", <botania:specialflower>.withTag({type: "tangleberrie"}), [<contenttweaker:tangled_petals>,<contenttweaker:tangled_petals>,<contenttweaker:rune_of_earth>,<enderio:item_material:17>,<contenttweaker:crepitous>]);

# Jiyuulia
mods.botania.Apothecary.removeRecipe("jiyuulia");
Fey.addRecipe("jiyuulia", <botania:specialflower>.withTag({type: "jiyuulia"}), [<contenttweaker:petal_of_the_jiyuulia>,<contenttweaker:petal_of_the_jiyuulia>,<contenttweaker:rune_of_air>,<mob_grinding_utils:fan>,<contenttweaker:aether>]);

# Clayconia
mods.botania.Apothecary.removeRecipe("clayconia");
Fey.addRecipe("clayconia", <botania:specialflower>.withTag({type: "clayconia"}), [<contenttweaker:clay_cone_petal>,<contenttweaker:clay_cone_petal>,<contenttweaker:rune_of_earth>,<contenttweaker:neutral_reagent>,<minecraft:clay>]);

# Daffomill
mods.botania.Apothecary.removeRecipe("daffomill");
Fey.addRecipe("daffomill", <botania:specialflower>.withTag({type: "daffomill"}), [<contenttweaker:daffomill_petal>,<contenttweaker:daffomill_petal>,<contenttweaker:rune_of_air>,<openblocks:fan>,<contenttweaker:aether>]);

# Solegnolia
mods.botania.Apothecary.removeRecipe("solegnolia");
Fey.addRecipe("solegnolia", <botania:specialflower>.withTag({type: "solegnolia"}), [<contenttweaker:petal_of_the_solegnolia>,<contenttweaker:petal_of_the_solegnolia>,<contenttweaker:rune_of_air>,<enderio:item_material:15>,<enderio:block_alloy:1>]);

# Bergamute
mods.botania.Apothecary.removeRecipe("bergamute");
Fey.addRecipe("bergamute", <botania:specialflower>.withTag({type: "bergamute"}), [<contenttweaker:petal_of_the_bergamute>,<contenttweaker:petal_of_the_bergamute>,<contenttweaker:rune_of_air>,<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}),<betternether:agave>]);

# Munchdew
mods.botania.Apothecary.removeRecipe("munchdew");
Fey.addRecipe("munchdew", <botania:specialflower>.withTag({type: "munchdew"}), [<contenttweaker:munching_petal>,<contenttweaker:munching_petal>,<contenttweaker:rune_of_gluttony>,<contenttweaker:rune_of_spring>,<botania:grasshorn:1>]);

# Entropinnyum
mods.botania.Apothecary.removeRecipe("entropinnyum");
Fey.addRecipe("entropinnyum", <botania:specialflower>.withTag({type: "entropinnyum"}), [<contenttweaker:petal_of_the_entropinnyum>,<contenttweaker:petal_of_the_entropinnyum>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_fire>,<minecraft:tnt>]);

# Spectrolus
mods.botania.Apothecary.removeRecipe("spectrolus");
Fey.addRecipe("spectrolus", <botania:specialflower>.withTag({type: "spectrolus"}), [<contenttweaker:spectacular_petal>,<contenttweaker:spectacular_petal>,<botania:manaresource:8>,<botania:quartz:3>,<contenttweaker:rune_of_deception>]);

# Rafflowsia
mods.botania.Apothecary.removeRecipe("rafflowsia");
Fey.addRecipe("rafflowsia", <botania:specialflower>.withTag({type: "rafflowsia"}), [<contenttweaker:petal_of_the_rafflowsia>,<contenttweaker:petal_of_the_rafflowsia>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_gluttony>,<botania:quartz:3>]);

# Dandelifeon
mods.botania.Apothecary.removeRecipe("dandelifeon");
Fey.addRecipe("dandelifeon", <botania:specialflower>.withTag({type: "dandelifeon"}), [<contenttweaker:petal_of_the_game_of_life>,<contenttweaker:petal_of_the_game_of_life>,<botania:manaresource:5>,<abyssalcraft:lifecrystal>,<contenttweaker:rune_of_greed>]);

# Kekimurus
mods.botania.Apothecary.removeRecipe("kekimurus");
Fey.addRecipe("kekimurus", <botania:specialflower>.withTag({type: "kekimurus"}), [<contenttweaker:petal_of_a_slice_o_cake>,<contenttweaker:petal_of_a_slice_o_cake>,<minecraft:cake>,<contenttweaker:rune_of_gluttony>,<botania:manaresource:8>]);

# Shulk Me Not
mods.botania.Apothecary.removeRecipe("shulk_me_not");
Fey.addRecipe("shulk_me_not", <botania:specialflower>.withTag({type: "shulk_me_not"}), [<contenttweaker:petal_me_not>,<contenttweaker:petal_me_not>,<minecraft:shulker_shell>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_envy>]);

# Heisei Dream
mods.botania.Apothecary.removeRecipe("heiseiDream");
Fey.addRecipe("heiseiDream", <botania:specialflower>.withTag({type: "heiseiDream"}), [<contenttweaker:dreaming_petal>,<contenttweaker:dreaming_petal>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_deception>,<contenttweaker:dreammatter>]);

# Marimorphosis
mods.botania.Apothecary.removeRecipe("marimorphosis");
Fey.addRecipe("marimorphosis", <botania:specialflower>.withTag({type: "marimorphosis"}), [<contenttweaker:morphing_petal>,<contenttweaker:morphing_petal>,<contenttweaker:rune_of_greed>,<contenttweaker:rune_of_summer>,<botania:quartz:3>]);

# Orechid
mods.botania.Apothecary.removeRecipe("orechid");
Fey.addRecipe("orechid", <botania:specialflower>.withTag({type: "orechid"}), [<contenttweaker:orechid_petallius>,<contenttweaker:orechid_petallius>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_greed>,<botania:manaresource:6>]);

# Orechid Inglem
mods.botania.Apothecary.removeRecipe("orechidIgnem");
Fey.addRecipe("orechidIgnem", <botania:specialflower>.withTag({type: "orechidIgnem"}), [<contenttweaker:orechid_ignem_petallius>,<contenttweaker:orechid_ignem_petallius>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_greed>,<botania:manaresource:6>]);

# Hyacidus
mods.botania.Apothecary.removeRecipe("hyacidus");
Fey.addRecipe("hyacidus", <botania:specialflower>.withTag({type: "hyacidus"}), [<contenttweaker:petal_of_the_hyacidus>,<contenttweaker:petal_of_the_hyacidus>,<minecraft:splash_potion>.withTag({Potion: "cofhcore:poison4"}),<minecraft:poisonous_potato>,<contenttweaker:rune_of_wrath>]);

# Pollidisiac
mods.botania.Apothecary.removeRecipe("pollidisiac");
Fey.addRecipe("pollidisiac", <botania:specialflower>.withTag({type: "pollidisiac"}), [<contenttweaker:pollinating_petal>,<contenttweaker:pollinating_petal>,<contenttweaker:rune_of_lust>,<contenttweaker:rune_of_fire>,<botania:quartz:4>]);

# Medomune
mods.botania.Apothecary.removeRecipe("medumone");
Fey.addRecipe("medumone", <botania:specialflower>.withTag({type: "medumone"}), [<contenttweaker:medumone_petal>,<contenttweaker:medumone_petal>,<minecraft:lingering_potion>.withTag({Potion: "minecraft:long_slowness"}),<contenttweaker:rune_of_earth>,<botania:manaresource:6>]);

# Fallen Kanade
mods.botania.Apothecary.removeRecipe("fallenKanade");
Fey.addRecipe("fallenKanade", <botania:specialflower>.withTag({type: "fallenKanade"}), [<contenttweaker:petal_of_the_fallen_kanade>,<contenttweaker:petal_of_the_fallen_kanade>,<minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_regeneration"}),<contenttweaker:rune_of_lust>,<contenttweaker:rune_of_spring>]);

# Loonium
mods.botania.Apothecary.removeRecipe("loonium");
Fey.addRecipe("loonium", <botania:specialflower>.withTag({type: "loonium"}), [<contenttweaker:loonium_petal>,<contenttweaker:loonium_petal>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_envy>,<botania:manaresource:5>]);

# Vinculotus
mods.botania.Apothecary.removeRecipe("vinculotus");
Fey.addRecipe("vinculotus", <botania:specialflower>.withTag({type: "vinculotus"}), [<contenttweaker:petal_of_the_vinculotus>,<contenttweaker:petal_of_the_vinculotus>,<mob_grinding_utils:ender_inhibitor_on>,<contenttweaker:rune_of_greed>,<botania:manaresource:6>]);

# Spectranthemum
mods.botania.Apothecary.removeRecipe("spectranthemum");
Fey.addRecipe("spectranthemum", <botania:specialflower>.withTag({type: "spectranthemum"}), [<contenttweaker:spectralight_petal>,<contenttweaker:spectralight_petal>,<thermalexpansion:device:5>,<contenttweaker:rune_of_envy>,<botania:manaresource:6>]);

# Bubbell
mods.botania.Apothecary.removeRecipe("bubbell");
Fey.addRecipe("bubbell", <botania:specialflower>.withTag({type: "bubbell"}), [<contenttweaker:blubbing_petal>,<contenttweaker:blubbing_petal>,<contenttweaker:suppression_core>,<contenttweaker:rune_of_envy>,<botania:manaresource:8>]);

# Mushrooms
<ore:petalWhite>.remove(<botania:mushroom>);
<ore:petalOrange>.remove(<botania:mushroom:1>);
<ore:petalMagenta>.remove(<botania:mushroom:2>);
<ore:petalLightBlue>.remove(<botania:mushroom:3>);
<ore:petalYellow>.remove(<botania:mushroom:4>);
<ore:petalLime>.remove(<botania:mushroom:5>);
<ore:petalPink>.remove(<botania:mushroom:6>);
<ore:petalGray>.remove(<botania:mushroom:7>);
<ore:petalLightGray>.remove(<botania:mushroom:8>);
<ore:petalCyan>.remove(<botania:mushroom:9>);
<ore:petalPurple>.remove(<botania:mushroom:10>);
<ore:petalBlue>.remove(<botania:mushroom:11>);
<ore:petalBrown>.remove(<botania:mushroom:12>);
<ore:petalGreen>.remove(<botania:mushroom:13>);
<ore:petalRed>.remove(<botania:mushroom:14>);
<ore:petalBlack>.remove(<botania:mushroom:15>);

# Mana Lens
recipes.remove(<botania:lens>);
recipes.addShaped(<botania:lens>.withTag({}), [[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>],[<botania:manaresource>,<botania:managlass>,<botania:manaresource>],[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>]]);

# Mana Lens: Bore
recipes.remove(<botania:lens:7>);
recipes.addShapeless(<botania:lens:7>.withTag({}), [<botania:lens>,<openblocks:block_breaker>,<extrautils2:interactionproxy>,<contenttweaker:rune_of_wrath>]);

# Mana Lens: Phantom
recipes.remove(<botania:lens:9>);
recipes.addShapeless(<botania:lens:9>.withTag({}), [<botania:lens>,<actuallyadditions:block_phantomface>,<botania:platform>,<contenttweaker:rune_of_lust>]);

# Mana Lens: Magnetizing
recipes.remove(<botania:lens:10>);
recipes.addShapeless(<botania:lens:10>.withTag({}), [<botania:lens>,<botania:magnetring>,<enderio:item_material:17>,<contenttweaker:rune_of_sloth>]);

# Mana Lens: Kindle
recipes.remove(<botania:lens:15>);
recipes.addShapeless(<botania:lens:15>.withTag({}), [<botania:lens>,<minecraft:fire_charge>,<abyssalcraft:crystalcluster:15>,<contenttweaker:rune_of_wrath>]);

# Mana Lens: Messenger
recipes.remove(<botania:lens:22>);
recipes.addShapeless(<botania:lens:22>.withTag({}), [<botania:lens>,<extrautils2:interactionproxy>,<ore:bookshelf>,<contenttweaker:rune_of_greed>]);

# Pasture Seeds
mods.botania.ManaInfusion.removeRecipe(<botania:grassseeds>);
mods.botania.ManaInfusion.addInfusion(<botania:grassseeds>, <mysticalagriculture:nature_essence>, 5000);

# Dry Pasture Seeds
recipes.remove(<botania:grassseeds:3>);
recipes.addShaped(<botania:grassseeds:3>, [[null,<roots:stalicripe>,null],[<minecraft:deadbush>,<botania:grassseeds>,<minecraft:deadbush>],[null,<roots:stalicripe>,null]]);

# Golden Pasture Seeds
recipes.remove(<botania:grassseeds:4>);
recipes.addShaped(<botania:grassseeds:4>, [[null,<roots:wildewheet>,null],[glod_crystal,<botania:grassseeds>,glod_crystal],[null,<roots:wildewheet>,null]]);

# Vivid Pasture Seeds
recipes.remove(<botania:grassseeds:5>);
recipes.addShaped(<botania:grassseeds:5>, [[null,<roots:cloud_berry>,null],[<enderio:item_alloy_endergy_ingot:6>,<botania:grassseeds>,<enderio:item_alloy_endergy_ingot:6>],[null,<roots:cloud_berry>,null]]);

# Scorched Pasture Seeds
recipes.remove(<botania:grassseeds:6>);
recipes.addShaped(<botania:grassseeds:6>, [[null,<roots:infernal_bulb>,null],[<divinerpg:purple_blaze>,<botania:grassseeds>,<divinerpg:purple_blaze>],[null,<roots:infernal_bulb>,null]]);

# Infused Pasture Seeds
recipes.remove(<botania:grassseeds:7>);
recipes.addShaped(<botania:grassseeds:7>, [[null,<roots:spirit_herb>,null],[<simplyjetpacks:metaitemmods:12>,<botania:grassseeds>,<simplyjetpacks:metaitemmods:12>],[null,<roots:spirit_herb>,null]]);

# Mutated Pasture Seeds
recipes.remove(<botania:grassseeds:8>);
recipes.addShaped(<botania:grassseeds:8>, [[null,<roots:baffle_cap_mushroom>,null],[<rftools:syringe>,<botania:grassseeds>,<rftools:syringe>],[null,<roots:baffle_cap_mushroom>,null]]);

# Horn of the Wild
recipes.remove(<botania:grasshorn>);
recipes.addShaped(<botania:grasshorn>, [[null,<botania:livingwood>,null],[<botania:livingwood>,<contenttweaker:rune_of_autumn>,<botania:livingwood>],[<botania:livingwood>,<botania:livingwood>,null]]);

# Horn of the Canopy
recipes.remove(<botania:grasshorn:1>);
recipes.addShaped(<botania:grasshorn:1>, [[null,<contenttweaker:arboreal_essence>,null],[<contenttweaker:arboreal_essence>,<botania:grasshorn>,<contenttweaker:arboreal_essence>],[null,<contenttweaker:arboreal_essence>,null]]);

# Horn of the Covering
recipes.remove(<botania:grasshorn:2>);
recipes.addShaped(<botania:grasshorn:2>, [[null,<contenttweaker:crystallos>,null],[<contenttweaker:crystallos>,<botania:grasshorn>,<contenttweaker:crystallos>],[null,<contenttweaker:crystallos>,null]]);

# Manasteel Helmet
recipes.remove(<botania:manasteelhelm>);
recipes.addShaped(<botania:manasteelhelm>, [[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>],[<botania:manaresource>,<abyssalcraft:dreadiumhelmet>,<botania:manaresource>]]);

# Manasteel Chestplate
recipes.remove(<botania:manasteelchest>);
recipes.addShaped(<botania:manasteelchest>, [[<botania:manaresource>,<abyssalcraft:dreadiumplate>,<botania:manaresource>],[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>],[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>]]);

# Manasteel Leggings
recipes.remove(<botania:manasteellegs>);
recipes.addShaped(<botania:manasteellegs>, [[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>],[<botania:manaresource>,<abyssalcraft:dreadiumlegs>,<botania:manaresource>],[<botania:manaresource>,null,<botania:manaresource>]]);

# Manasteel Boots
recipes.remove(<botania:manasteelboots>);
recipes.addShaped(<botania:manasteelboots>, [[<botania:manaresource>,null,<botania:manaresource>],[<botania:manaresource>,<abyssalcraft:dreadiumboots>,<botania:manaresource>]]);

# Ring of Magnetization
recipes.remove(<botania:magnetring>);
recipes.addShapedMirrored(<botania:magnetring>.withTag({}), [[<botania:storage:2>,<botania:storage>,null],[<botania:storage>,<bloodmagic:sigil_magnetism>,<botania:storage>],[null,<botania:storage>,null]]);

# Terrestrial Agglomeration Plate
recipes.remove(<botania:terraplate>);
recipes.addShapedMirrored(<botania:terraplate>, [[<contenttweaker:potency_core>,<contenttweaker:potency_core>,<contenttweaker:potency_core>],[<contenttweaker:rune_of_spring>,<contenttweaker:dark_realm_soul_block>,<contenttweaker:rune_of_winter>],[<contenttweaker:rune_of_summer>,<contenttweaker:dark_realm_soul_block>,<contenttweaker:rune_of_autumn>]]);

# Spark
recipes.remove(<botania:spark>);
recipes.addShaped(<botania:spark>, [[null,<abyssalcraft:methane>,null],[<abyssalcraft:methane>,<contenttweaker:soul_of_the_dark_realm>,<abyssalcraft:methane>],[null,<abyssalcraft:methane>,null]]);

# Terrasteel
<botania:manaresource:4>.addShiftTooltip(format.white("To obtain, setup a ") + format.blue("Terrestrial Agglomeration Plate"));
<botania:manaresource:4>.addShiftTooltip(format.white("according to your ") + format.yellow("Lexica Botania") + format.white(" on top of ") + format.blue("Lapis Blocks"));
<botania:manaresource:4>.addShiftTooltip(format.white("and Livingrock, place a ") + format.yellow("Spark") + format.white(" on top and also on a"));
<botania:manaresource:4>.addShiftTooltip(format.white("nearby Mana Pool, then throw or Right Click a piece of"));
<botania:manaresource:4>.addShiftTooltip(format.aqua("Manasteel, Mana Pearl") + format.white(" and ") + format.aqua("Mana Diamond") + format.white(" on top of the"));
<botania:manaresource:4>.addShiftTooltip(format.white("Plate! The Spark will take a half a pool of Mana and"));
<botania:manaresource:4>.addShiftTooltip(format.white("create an Ingot of ") + format.green("Terrasteel") + format.white("."));

# Glimmering Livingwood
recipes.remove(<botania:livingwood:5>);
recipes.addShaped(<botania:livingwood:5>, [[null,<contenttweaker:sanctus>,null],[<botania:manaresource:18>,<botania:livingwood>,<botania:manaresource:18>],[null,<contenttweaker:sanctus>,null]]);

# Elven Gateway Core
recipes.remove(<botania:alfheimportal>);
recipes.addShaped(<botania:alfheimportal>, [[<botania:livingwood>,<botania:livingwood:5>,<botania:livingwood>],[<botania:livingwood:5>,<botania:manaresource:4>,<botania:livingwood:5>],[<botania:livingwood>,<botania:livingwood:5>,<botania:livingwood>]]);

# Mana Pylon
recipes.remove(<botania:pylon>);
recipes.addShaped(<botania:pylon>, [[<actuallyadditions:item_crystal_empowered:2>,<contenttweaker:crystallized_mana>,<actuallyadditions:item_crystal_empowered:2>],[empowered_glod_crystal,<botania:storage:3>,empowered_glod_crystal],[<actuallyadditions:item_crystal_empowered:2>,<contenttweaker:crystallized_mana>,<actuallyadditions:item_crystal_empowered:2>]]);

# Natura Pylon
recipes.remove(<botania:pylon:1>);
recipes.addShaped(<botania:pylon:1>, [[<botania:manaresource:18>,null,<botania:manaresource:18>],[<botania:livingwood:5>,<botania:manaresource:4>,<botania:livingwood:5>],[<botania:livingwood>,<botania:pylon>,<botania:livingwood>]]);

function addBotaniaTier3RuneRecipe(output as IItemStack, new_rune as IItemStack, input_rune1 as IItemStack, input_rune2 as IItemStack) {
	mods.botania.RuneAltar.removeRecipe(output);
	mods.botania.RuneAltar.addRecipe(new_rune, [input_rune1, input_rune2, <botania:manaresource:8>, <contenttweaker:dreammatter>, <botania:storage:3>], 20000);
}

# Rune of Lust
addBotaniaTier3RuneRecipe(<botania:rune:9>,<contenttweaker:rune_of_lust>,<contenttweaker:rune_of_spring>,<contenttweaker:rune_of_fire>);

# Rune of Gluttony
addBotaniaTier3RuneRecipe(<botania:rune:10>,<contenttweaker:rune_of_gluttony>,<contenttweaker:rune_of_autumn>,<contenttweaker:rune_of_earth>);

# Rune of Greed
addBotaniaTier3RuneRecipe(<botania:rune:11>,<contenttweaker:rune_of_greed>,<contenttweaker:rune_of_winter>,<contenttweaker:rune_of_air>);

# Rune of Sloth
addBotaniaTier3RuneRecipe(<botania:rune:12>,<contenttweaker:rune_of_sloth>,<contenttweaker:rune_of_winter>,<contenttweaker:rune_of_earth>);

# Rune of Wrath
addBotaniaTier3RuneRecipe(<botania:rune:13>,<contenttweaker:rune_of_wrath>,<contenttweaker:rune_of_summer>,<contenttweaker:rune_of_fire>);

# Rune of Envy
addBotaniaTier3RuneRecipe(<botania:rune:14>,<contenttweaker:rune_of_envy>,<contenttweaker:rune_of_summer>,<contenttweaker:rune_of_water>);

# Rune of Pride
addBotaniaTier3RuneRecipe(<botania:rune:15>,<contenttweaker:rune_of_pride>,<contenttweaker:rune_of_autumn>,<contenttweaker:rune_of_air>);

# Mana Tablet
recipes.remove(<botania:manatablet>);
recipes.addShaped(<botania:manatablet>.withTag({}), [[<botania:livingrock>,<contenttweaker:purified_tablet>,<botania:livingrock>],[<contenttweaker:purified_tablet>,<botania:storage:3>,<contenttweaker:purified_tablet>],[<botania:livingrock>,<contenttweaker:purified_tablet>,<botania:livingrock>]]);

# Greater Ring of Magnetization
recipes.remove(<botania:magnetringgreater>);
recipes.addShapedMirrored(<botania:magnetringgreater>.withTag({}), [[<contenttweaker:purified_tablet>,<botania:manaresource:4>,null],[<botania:manaresource:4>,<botania:magnetring>,<botania:manaresource:4>],[null,<botania:manaresource:4>,null]]);

# Mana Blaster
recipes.remove(<botania:managun>);
recipes.addShapedMirrored(<botania:managun>.withTag({}), [[<contenttweaker:rune_of_wrath>,<contenttweaker:purified_tablet>,<botania:manaresource:4>],[<botania:livingwood>,<botania:livingwood>,<botania:manaresource:4>],[null,null,<botania:livingwood>]]);

# Mana Mirror
recipes.remove(<botania:manamirror>);
recipes.addShaped(<botania:manamirror>.withTag({mana: 0}), [[<contenttweaker:purified_tablet>,<botania:manatablet>,<contenttweaker:purified_tablet>],[null,<contenttweaker:purified_tablet>,null],[null,<botania:manaresource:3>,null]]);

# Band of Mana
recipes.remove(<botania:manaring>);
recipes.addShapedMirrored("band_of_mana", <botania:manaring>, [[<botania:manatablet>.marked("tablet"),<botania:storage>,null],[<botania:storage>,<contenttweaker:purified_tablet>,<botania:storage>],[null,<botania:storage>,null]],
	function(out,ins,cInfo) {
			if(ins.tablet.tag has "mana" && ins.tablet.tag.mana > 0) {
				return out.withTag({mana: ins.tablet.tag.mana});
			} else {
				return out.withTag({});
			}
		}, null);

# Greater Band of Mana
recipes.remove(<botania:manaringgreater>);
recipes.addShaped("greater_ring_of_mana", <botania:manaringgreater>, [[<contenttweaker:purified_tablet>,<botania:manaresource:4>,null],[<botania:manaresource:4>,<botania:manaring>.marked("ring"),<botania:manaresource:4>],[null,<botania:manaresource:4>,null]],
	function(out,ins,cInfo) {
			if(ins.ring.tag has "mana" && ins.ring.tag.mana > 0) {
				return out.withTag({mana: ins.ring.tag.mana});
			} else {
				return out.withTag({});
			}
		}, null);

# Soujourner's Sash
recipes.remove(<botania:travelbelt>);
recipes.addShapedMirrored(<botania:travelbelt>, [[<contenttweaker:rune_of_greed>,<contenttweaker:blood_infused_leather>,<botania:manaresource:4>],[<contenttweaker:blood_infused_leather>,null,<contenttweaker:blood_infused_leather>],[<botania:manaresource:4>,<contenttweaker:blood_infused_leather>,<contenttweaker:rune_of_air>]]);

# Elementium Sword
recipes.remove(<botania:elementiumsword>);
recipes.addShaped(<botania:elementiumsword>, [[<botania:manaresource:7>],[<botania:manaresource:7>],[<bloodmagic:bound_sword>]]);

# Elementium Pickaxe
recipes.remove(<botania:elementiumpick>);
recipes.addShaped(<botania:elementiumpick>, [[<botania:manaresource:7>,<botania:manaresource:7>,<botania:manaresource:7>],[null,<bloodmagic:bound_pickaxe>,null],[null,<botania:manaresource:13>,null]]);

# Elementium Shovel
recipes.remove(<botania:elementiumshovel>);
recipes.addShaped(<botania:elementiumshovel>, [[<botania:manaresource:7>],[<bloodmagic:bound_shovel>],[<botania:manaresource:13>]]);

# Elementium Axe
recipes.remove(<botania:elementiumaxe>);
recipes.addShapedMirrored(<botania:elementiumaxe>, [[<botania:manaresource:7>,<botania:manaresource:7>],[<botania:manaresource:7>,<bloodmagic:bound_axe>],[null,<botania:manaresource:13>]]);

# Terra Blade
recipes.remove(<botania:terrasword>);
recipes.addShaped(<botania:terrasword>, [[<botania:manaresource:4>],[<botania:manaresource:4>],[<botania:elementiumsword>]]);

# Terra Truncator
recipes.remove(<botania:terraaxe>);
recipes.addShapedMirrored(<botania:terraaxe>, [[<botania:manaresource:4>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumaxe>],[null,<botania:manaresource:3>]]);

# Terra Shatterer
recipes.removeShaped(<botania:terrapick>);
recipes.addShaped("terra_shatterer", <botania:terrapick>, [[<botania:manaresource:4>,<botania:manatablet>.marked("tablet"),<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumpick>,<botania:manaresource:4>],[null,<botania:manaresource:3>,null]],
	function(out,ins,cInfo) {
			if(ins.tablet.tag has "mana" && ins.tablet.tag.mana > 0) {
				return out.withTag({mana: ins.tablet.tag.mana});
			} else {
				return out.withTag({});
			}
		}, null);

# Elementium Helmet
recipes.remove(<botania:elementiumhelm>);
recipes.addShaped(<botania:elementiumhelm>, [[<botania:manaresource:7>,<contenttweaker:rune_of_deception>,<botania:manaresource:7>],[<botania:manaresource:7>,<bloodmagic:living_armour_helmet>,<botania:manaresource:7>]]);

# Elementium Chestplate
recipes.remove(<botania:elementiumchest>);
recipes.addShaped(<botania:elementiumchest>, [[<botania:manaresource:7>,<contenttweaker:rune_of_gluttony>,<botania:manaresource:7>],[<botania:manaresource:7>,<bloodmagic:living_armour_chest>,<botania:manaresource:7>],[<botania:manaresource:7>,<botania:manaresource:7>,<botania:manaresource:7>]]);

# Elementium Leggings
recipes.remove(<botania:elementiumlegs>);
recipes.addShaped(<botania:elementiumlegs>, [[<botania:manaresource:7>,<contenttweaker:rune_of_lust>,<botania:manaresource:7>],[<botania:manaresource:7>,<bloodmagic:living_armour_leggings>,<botania:manaresource:7>],[<botania:manaresource:7>,null,<botania:manaresource:7>]]);

# Elementium Boots
recipes.remove(<botania:elementiumboots>);
recipes.addShaped(<botania:elementiumboots>, [[<botania:manaresource:7>,<contenttweaker:rune_of_pride>,<botania:manaresource:7>],[<botania:manaresource:7>,<bloodmagic:living_armour_boots>,<botania:manaresource:7>]]);

# Terrasteel Helmet
recipes.removeShaped(<botania:terrasteelhelm>, [[<*>,<*>,<*>],[<*>,<*>,<*>],[null,<*>,null]]);
recipes.addShaped(<botania:terrasteelhelm>, [[<botania:manaresource:4>,<botania:livingwood:5>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumhelm>,<botania:manaresource:4>]]);
recipes.removeShaped(<botania:terrasteelhelmreveal>, [[<*>,<*>,<*>],[<*>,<*>,<*>],[null,<*>,null]]);

# Terrasteel Chestplate
recipes.remove(<botania:terrasteelchest>);
recipes.addShaped(<botania:terrasteelchest>, [[<botania:manaresource:4>,<botania:livingwood:5>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumchest>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:manaresource:4>,<botania:manaresource:4>]]);

# Terrasteel Leggings
recipes.remove(<botania:terrasteellegs>);
recipes.addShaped(<botania:terrasteellegs>, [[<botania:manaresource:4>,<botania:livingwood:5>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumlegs>,<botania:manaresource:4>],[<botania:manaresource:4>,null,<botania:manaresource:4>]]);

# Terrasteel Boots
recipes.remove(<botania:terrasteelboots>);
recipes.addShaped(<botania:terrasteelboots>, [[<botania:manaresource:4>,<botania:livingwood:5>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumboots>,<botania:manaresource:4>]]);

# Tectonic Girdle
recipes.remove(<botania:knockbackbelt>);
recipes.addShapedMirrored(<botania:knockbackbelt>, [[<contenttweaker:purified_tablet>,<contenttweaker:blood_infused_leather>,null],[<contenttweaker:blood_infused_leather>,null,<contenttweaker:blood_infused_leather>],[<contenttweaker:rune_of_sloth>,<contenttweaker:blood_infused_leather>,<contenttweaker:purified_tablet>]]);

# Tiny Planet
recipes.remove(<botania:tinyplanet>);
recipes.addShaped(<botania:tinyplanet>.withTag({}), [[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],[<botania:livingrock>,<contenttweaker:purified_tablet>,<botania:livingrock>],[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>]]);

# Charm of the Diva
recipes.remove(<botania:divacharm>);
recipes.addShaped(<botania:divacharm>, [[<botania:manaresource:5>,<botania:manaresource:5>,<contenttweaker:holy_core>],[<botania:manaresource:5>,<botania:tinyplanet>.withTag({}),<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<contenttweaker:rune_of_pride>]]);

# Flügel Tiara
recipes.remove(<botania:flighttiara>);
recipes.addShapedMirrored(<botania:flighttiara>, [[<botania:manaresource:5>,<botania:manaresource:5>,<botania:manaresource:5>],[<bloodmagic:decorative_brick:2>,<contenttweaker:perfect_slate>,<bloodmagic:decorative_brick:2>],[<simplyjetpacks:itemjetpack:24>,<botania:manaresource:5>,<simplyjetpacks:itemjetpack:15>]]);

# Smokey Quartz
recipes.remove(<botania:quartz>);
furnace.addRecipe(<botania:quartz>, <botania:quartz:1>);

# Mana Quartz
mods.botania.ManaInfusion.removeRecipe(<botania:quartz:1>);
mods.botania.ManaInfusion.addInfusion(<botania:quartz:1>, <minecraft:quartz>, 2500);
mods.botania.ManaInfusion.addInfusion(<botania:quartztypemana>, <minecraft:quartz_block>, 10000);

# Blaze Quartz
recipes.remove(<botania:quartz:2>);
mods.thermalexpansion.Transposer.addFillRecipe(<botania:quartz:2>, <botania:quartz:1>, <liquid:fire_water> * 200, 2400);

# Red Quartz
recipes.remove(<botania:quartz:4>);
mods.immersiveengineering.ArcFurnace.addRecipe(<botania:quartz:4>, <botania:quartz:2>, null, 80, 256, [<contenttweaker:virtus>], "Alloying");
EIOAlloySmelter.addRecipe(<botania:quartz:4>, [<botania:quartz:2>, <contenttweaker:virtus>], 4000);
IEAlloySmelter.addRecipe(<botania:quartz:4>, <botania:quartz:2>, <contenttweaker:virtus>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<botania:quartz:4>, <botania:quartz:2>, <contenttweaker:virtus>, 4000);

# Sunny Quartz
recipes.remove(<botania:quartz:6>);
mods.thermalexpansion.Transposer.addFillRecipe(<botania:quartz:6>, <botania:quartz:4>, <liquid:liquid_sunshine> * 200, 2400);

# Elven Quartz
mods.botania.ElvenTrade.removeRecipe(<botania:quartz:5>);
mods.botania.ElvenTrade.addRecipe([<botania:quartz:5>], [<botania:quartz:6>,<botania:manaresource:18>]);

# Lavender Quartz
recipes.remove(<botania:quartz:3>);
mods.immersiveengineering.ArcFurnace.addRecipe(<botania:quartz:3>, <botania:quartz:5>, null, 80, 256, [<minecraft:red_flower:2>], "Alloying");
EIOAlloySmelter.addRecipe(<botania:quartz:3>, [<botania:quartz:5>, <minecraft:red_flower:2>], 4000);
IEAlloySmelter.addRecipe(<botania:quartz:3>, <botania:quartz:5>, <minecraft:red_flower:2>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<botania:quartz:3>, <botania:quartz:5>, <minecraft:red_flower:2>, 4000);

# Gaia Pylon
recipes.remove(<botania:pylon:2>);
recipes.addShaped(<botania:pylon:2>, [[<botania:storage:4>,null,<botania:storage:4>],[<contenttweaker:magical_tablet>,<botania:pylon:1>,<contenttweaker:magical_tablet>],[<contenttweaker:magical_tablet>,<contenttweaker:rune_of_envy>,<contenttweaker:magical_tablet>]]);

# Extrapolated Bucket
recipes.remove(<botania:openbucket>);
recipes.addShaped(<botania:openbucket>, [[<botania:manaresource:7>,<quantumflux:voidbucket>,<botania:manaresource:7>],[null,<botania:manaresource:7>,null]]);

# Life Aggregator
recipes.remove(<botania:spawnermover>);

# Great Fairy Ring
recipes.remove(<botania:pixiering>);
recipes.addShapedMirrored(<botania:pixiering>, [[<botania:manaresource:8>,<botania:manaresource:7>,null],[<botania:manaresource:7>,<botania:spark>,<botania:manaresource:7>],[null,<botania:manaresource:7>,null]]);

# Globetrotter's Sash
recipes.remove(<botania:supertravelbelt>);
recipes.addShapedMirrored(<botania:supertravelbelt>, [[<botania:manaresource:7>,<botania:manaresource:7>,<botania:manaresource:5>],[<botania:manaresource:7>,<botania:travelbelt>,<botania:manaresource:7>],[<botania:manaresource:4>,<botania:manaresource:7>,<botania:manaresource:7>]]);

# Ring of Far Reach
recipes.remove(<botania:reachring>);
recipes.addShapedMirrored(<botania:reachring>, [[<contenttweaker:rune_of_greed>,<botania:manaresource:7>,<botania:manaresource:5>],[<botania:manaresource:7>,null,<botania:manaresource:7>],[<botania:manaresource:5>,<botania:manaresource:7>,<contenttweaker:rune_of_deception>]]);

# Ring of Dexterous Motion
recipes.remove(<botania:dodgering>);
recipes.addShapedMirrored(<botania:dodgering>, [[<actuallyadditions:item_crystal_empowered:4>,<botania:manaresource>,null],[<botania:manaresource>,null,<botania:manaresource>],[null,<botania:manaresource>,<contenttweaker:rune_of_air>]]);

# The Spectator
recipes.remove(<botania:itemfinder>);
recipes.addShaped(<botania:itemfinder>, [[<botania:manaresource>,<botania:manaresource:8>,<botania:manaresource>],[<botania:manaresource>,<minecraft:ender_eye>,<botania:manaresource>]]);

# Hand of Ender
recipes.remove(<botania:enderhand>);

function addBotaniaSparkAugmentRecipe(output as IItemStack, input_rune as IItemStack) {
	recipes.remove(output);
	recipes.addShaped(output, [[null,<botania:manaresource>,null],[<botania:manaresource>,<botania:manaresource:8>,<botania:manaresource>],[null,input_rune,null]]);
}

# Spark Augment: Dispersive
addBotaniaSparkAugmentRecipe(<botania:sparkupgrade:0>, <contenttweaker:rune_of_spring>);

# Spark Augment: Dominant
addBotaniaSparkAugmentRecipe(<botania:sparkupgrade:1>, <contenttweaker:rune_of_summer>);

# Spark Augment: Recessive
addBotaniaSparkAugmentRecipe(<botania:sparkupgrade:2>, <contenttweaker:rune_of_autumn>);

# Spark Augment: Isolated
addBotaniaSparkAugmentRecipe(<botania:sparkupgrade:3>, <contenttweaker:rune_of_winter>);

# Cloak of Virtue
recipes.remove(<botania:holycloak>);
recipes.addShaped(<botania:holycloak>.withTag({}), [[<contenttweaker:holy_core>,<contenttweaker:rune_of_pride>,<contenttweaker:holy_core>],[<botania:manaresource:5>,<contenttweaker:magical_tablet>,<botania:manaresource:5>],[<botania:manaresource:5>,<contenttweaker:magical_tablet>,<botania:manaresource:5>]]);

# Cloak of Sin
recipes.remove(<botania:unholycloak>);
recipes.addShaped(<botania:unholycloak>.withTag({}), [[<contenttweaker:offensive_core>,<contenttweaker:rune_of_wrath>,<contenttweaker:offensive_core>],[<botania:manaresource:5>,<contenttweaker:magical_tablet>,<botania:manaresource:5>],[<botania:manaresource:5>,<contenttweaker:magical_tablet>,<botania:manaresource:5>]]);

# Cloak of Balance
recipes.remove(<botania:balancecloak>);
recipes.addShaped(<botania:balancecloak>.withTag({}), [[<contenttweaker:gusty_core>,<contenttweaker:rune_of_greed>,<contenttweaker:gusty_core>],[<botania:manaresource:5>,<contenttweaker:magical_tablet>,<botania:manaresource:5>],[<botania:manaresource:5>,<contenttweaker:magical_tablet>,<botania:manaresource:5>]]);

# Assembly Halo
recipes.remove(<botania:craftinghalo>);
recipes.addShaped(<botania:craftinghalo>, [[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>],[<botania:manaresource>,<actuallyadditions:item_crafter_on_a_stick>,<botania:manaresource>],[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>]]);

# Manufactory Halo
recipes.remove(<botania:autocraftinghalo>);
recipes.addShaped(<botania:autocraftinghalo>, [[null,<botania:manaresource:4>,null],[<botania:storage:3>,<botania:craftinghalo>,<botania:storage:3>],[null,<botania:manaresource:4>,null]]);

# Manaseer Monocle
recipes.remove(<botania:monocle>);
recipes.addShaped(<botania:monocle>, [[null,<botania:manaresource>,null],[<botania:manaresource>,<actuallyadditions:item_engineer_goggles_advanced>,<botania:manaresource>],[null,empowered_glod_crystal,null]]);

# Lens Clip
recipes.remove(<botania:clip>);
recipes.addShapedMirrored(<botania:clip>, [[null,<botania:dreamwood>,<botania:dreamwood>],[<botania:dreamwood>,<contenttweaker:purified_tablet>,<botania:dreamwood>],[<botania:dreamwood>,<botania:dreamwood>,null]]);

# World Seed
recipes.remove(<botania:worldseed>);
recipes.addShaped(<botania:worldseed> * 4, [[null,<minecraft:grass>,null],[<botania:manaresource:9>,<enderutilities:enderpart:17>,<botania:manaresource:9>],[null,<botania:manaresource:9>,null]]);

# Overgrowth Seed
recipes.addShapeless(<botania:overgrowthseed>, [<minecraft:wheat_seeds>,<botania:manaresource:5>,<mysticalagriculture:mystical_fertilizer>]);

# Livingwood Bow
recipes.remove(<botania:livingwoodbow>);
recipes.addShapedMirrored(<botania:livingwoodbow>, [[null,<botania:manaresource:3>,<botania:manaresource:16>],[<contenttweaker:rune_of_fire>,<minecraft:bow>,<botania:manaresource:16>],[null,<botania:manaresource:3>,<botania:manaresource:16>]]);

# Crystal Bow
recipes.remove(<botania:crystalbow>);
recipes.addShapedMirrored(<botania:crystalbow>, [[null,<botania:manaresource:9>,<botania:manaresource:16>],[<contenttweaker:purified_tablet>,<botania:livingwoodbow>,<botania:manaresource:16>],[null,<botania:manaresource:9>,<botania:manaresource:16>]]);

# Ring of Correction
recipes.remove(<botania:swapring>);
recipes.addShaped(<botania:swapring>.withTag({}), [[null,<botania:manaresource>,null],[<botania:manaresource>,<bloodmagic:component:3>,<botania:manaresource>],[null,<botania:manaresource>,null]]);

# Phantom Ink
recipes.remove(<botania:phantomink>);
mods.bloodmagic.AlchemyTable.addRecipe(<botania:phantomink> * 2, [<contenttweaker:intensive_catalyst>,<minecraft:lingering_potion>.withTag({Potion: "minecraft:long_invisibility"}),<botania:manaresource:8>,<botania:manaresource:5>,<contenttweaker:rune_of_deception>], 12000, 400, 4);

# Resolute Ivy
recipes.remove(<botania:keepivy>);
recipes.addShaped(<botania:keepivy>, [[<botania:manaresource:8>,<botania:manaresource:15>,<botania:manaresource:8>],[<ore:vine>,<contenttweaker:earthen_core>,<ore:vine>],[null,<ore:vine>,null]]);

# Black Hole Talisman
recipes.remove(<botania:blackholetalisman>);
recipes.addShaped(<botania:blackholetalisman>.withTag({}), [[<botania:manaresource:7>,<botania:manaresource:5>,<botania:manaresource:7>],[<botania:manaresource:15>,<danknull:dank_null_panel_2>,<botania:manaresource:15>],[<botania:manaresource:8>,<botania:manaresource:7>,<botania:manaresource:8>]]);

# Floral Obedience Stick
recipes.remove(<botania:obediencestick>);
recipes.addShapedMirrored(<botania:obediencestick>, [[null,null,<botania:storage>],[null,<botania:manaresource:3>,null],[<botania:manaresource:3>,null,null]]);

# Cacophonium
recipes.remove(<botania:cacophonium>);
recipes.addShapedMirrored(<botania:cacophonium>.withTag({}), [[null,glod_crystal,<botania:manaresource>],[glod_crystal,<minecraft:noteblock>,glod_crystal],[null,glod_crystal,glod_crystal]]);

# Rod of the Shifting Crust
recipes.remove(<botania:exchangerod>);
recipes.addShapedMirrored(<botania:exchangerod>.withTag({}), [[null,<botania:manaresource:5>,<contenttweaker:rune_of_sloth>],[null,<botania:manaresource:3>,<botania:manaresource:5>],[<botania:manaresource:3>,null,null]]);

# Planetstirder's Sash
recipes.remove(<botania:speedupbelt>);
recipes.addShapedMirrored(<botania:speedupbelt>.withTag({}), [[<contenttweaker:blood_infused_leather>,<bloodmagic:slate:2>,<contenttweaker:blood_infused_leather>],[<bloodmagic:slate:2>,<botania:travelbelt>,<bloodmagic:slate:2>],[<contenttweaker:rune_of_sloth>,<bloodmagic:slate:2>,<contenttweaker:blood_infused_leather>]]);

# Bauble Case
recipes.remove(<botania:baublebox>);
recipes.addShaped(<botania:baublebox>, [[<botania:manaresource>,<botania:manaresource>,<botania:manaresource>],[<botania:manaresource>,<simplybackpacks:commonbackpack>.withTag({inv: {Size: 18, Items: []}, filter: {Size: 16, Items: []}}),<botania:manaresource>],[<botania:manaresource>,<minecraft:gold_ingot>,<botania:manaresource>]]);
<botania:baublebox>.addTooltip(format.darkRed(format.italic("Requires a Common Backpack you've just crafted.")));

# Invisibility Cloak
recipes.remove(<botania:invisibilitycloak>);
recipes.addShaped(<botania:invisibilitycloak>, [[<contenttweaker:dark_core>,<contenttweaker:rune_of_deception>,<contenttweaker:dark_core>],[<botania:manaresource:5>,<contenttweaker:magical_tablet>,<botania:manaresource:5>],[<botania:manaresource:5>,<contenttweaker:magical_tablet>,<botania:manaresource:5>]]);

# Worldshaper's Astrolabe
recipes.remove(<botania:astrolabe>);
recipes.addShapedMirrored(<botania:astrolabe>.withTag({}), [[null,<contenttweaker:magical_tablet>,<botania:manaresource:5>],[<botania:manaresource:5>,<betterbuilderswands:wanddiamond>,<contenttweaker:magical_tablet>],[null,<contenttweaker:magical_tablet>,<botania:manaresource:5>]]);

# Teru Teru Bozu
recipes.remove(<botania:teruterubozu>);

# Pulse Mana Spreader
recipes.remove(<botania:spreader:1>);
recipes.addShaped(<botania:spreader:1>, [[<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:3>,<botania:spreader>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>,<enderio:item_alloy_ingot:3>]]);

# Elven Mana Spreader
recipes.remove(<botania:spreader:2>);
recipes.addShapedMirrored(<botania:spreader:2>, [[<botania:dreamwood>,<botania:dreamwood>,<botania:dreamwood>],[<botania:dreamwood>,<botania:spreader>,<contenttweaker:rune_of_lust>],[<botania:dreamwood>,<botania:dreamwood>,<botania:dreamwood>]]);

# Gaia Mana Spreader
recipes.remove(<botania:spreader:3>);
recipes.addShapedMirrored(<botania:spreader:3>, [[<botania:dreamwood>,<botania:dreamwood>,<botania:dreamwood>],[<contenttweaker:magical_tablet>,<botania:spreader:2>,<botania:manaresource:5>],[<botania:dreamwood>,<botania:dreamwood>,<botania:dreamwood>]]);

# Diluted Mana Pool
recipes.remove(<botania:pool:2>);
recipes.addShapeless(<botania:pool:2> * 2, [<botania:pool>]);

# Fabulous Mana Pool
recipes.remove(<botania:pool:3>);
recipes.addShaped(<botania:pool:3>, [[<botania:shimmerrock>,<contenttweaker:aquasalus>,<botania:shimmerrock>],[<botania:shimmerrock>,<botania:shimmerrock>,<botania:shimmerrock>]]);

# Force Relay
mods.botania.ManaInfusion.removeRecipe(<botania:pistonrelay>);
mods.botania.ManaInfusion.addInfusion(<botania:pistonrelay>, <extrautils2:interactionproxy>, 10000);

# Mana Splitter
recipes.remove(<botania:distributor>);
recipes.addShaped(<botania:distributor>, [[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],[<botania:manaresource>,<contenttweaker:aquasalus>,<botania:manaresource>],[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>]]);

# Mana Void
recipes.remove(<botania:manavoid>);
recipes.addShaped(<botania:manavoid>, [[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],[<botania:livingrock>,<extrautils2:trashcanfluid>,<botania:livingrock>],[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>]]);

# Spreader Turntable
recipes.remove(<botania:turntable>);
recipes.addShaped(<botania:turntable>, [[<botania:livingwood>,<thermalfoundation:material:263>,<botania:livingwood>],[<thermalfoundation:material:263>,<contenttweaker:rune_of_sloth>,<thermalfoundation:material:263>],[<botania:livingwood>,<thermalfoundation:material:263>,<botania:livingwood>]]);

# Alchemy Catalyst
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped(<botania:alchemycatalyst>, [[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],[<botania:livingrock>,<bloodmagic:alchemy_table>,<botania:livingrock>],[<botania:livingrock>,<contenttweaker:rune_of_envy>,<botania:livingrock>]]);

# Conjuration Catalyst
recipes.remove(<botania:conjurationcatalyst>);
recipes.addShaped(<botania:conjurationcatalyst>, [[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],[<botania:livingrock>,<botania:alchemycatalyst>,<botania:livingrock>],[<botania:livingrock>,<contenttweaker:rune_of_greed>,<botania:livingrock>]]);

# Gaia Spirit Ingot
recipes.remove(<botania:manaresource:14>);
recipes.addShaped(<botania:manaresource:14>, [[<botania:manaresource:5>,<contenttweaker:mystical_tablet>,<botania:manaresource:5>],[<contenttweaker:mystical_tablet>,<botania:manaresource:4>,<contenttweaker:mystical_tablet>],[<botania:manaresource:5>,<contenttweaker:mystical_tablet>,<botania:manaresource:5>]]);

# Open Crate
recipes.remove(<botania:opencrate>);
recipes.addShaped(<botania:opencrate>, [[<botania:livingwood>,<botania:livingwood>,<botania:livingwood>],[<botania:livingwood>,<openblocks:item_dropper>,<botania:livingwood>],[<botania:livingwood>,null,<botania:livingwood>]]);

# Eye of the Ancients
recipes.remove(<botania:foresteye>);
recipes.addShapedMirrored(<botania:foresteye>, [[<botania:livingrock>,<botania:manaresource>,<botania:livingrock>],[<botania:livingrock>,<rftools:counter_block>,<minecraft:ender_eye>],[<botania:livingrock>,<botania:manaresource>,<botania:livingrock>]]);

# Drum of the Wild
recipes.remove(<botania:forestdrum>);
recipes.addShaped(<botania:forestdrum>, [[<botania:livingwood>,<botania:livingrock>,<botania:livingwood>],[<contenttweaker:blood_infused_leather>,<botania:grasshorn>,<contenttweaker:blood_infused_leather>],[<botania:livingwood>,<botania:livingrock>,<botania:livingwood>]]);

# Drum of the Gathering
recipes.remove(<botania:forestdrum:1>);
recipes.addShaped(<botania:forestdrum:1>, [[<botania:livingwood>,<botania:livingrock>,<botania:livingwood>],[<contenttweaker:blood_infused_leather>,<openblocks:vacuum_hopper>,<contenttweaker:blood_infused_leather>],[<botania:livingwood>,<botania:livingrock>,<botania:livingwood>]]);

# Drum of the Canopy
recipes.remove(<botania:forestdrum:2>);
recipes.addShaped(<botania:forestdrum:2>, [[<botania:livingwood>,<botania:livingrock>,<botania:livingwood>],[<contenttweaker:blood_infused_leather>,<botania:grasshorn:1>,<contenttweaker:blood_infused_leather>],[<botania:livingwood>,<botania:livingrock>,<botania:livingwood>]]);

# Life Imbuer
recipes.remove(<botania:spawnerclaw>);

# Ender Overseer
recipes.remove(<botania:endereyeblock>);
recipes.addShaped(<botania:endereyeblock>, [[<botania:manaresource>,<minecraft:ender_eye>,<botania:manaresource>],[<minecraft:ender_eye>,<minecraft:ender_eye>,<minecraft:ender_eye>],[<botania:manaresource>,<minecraft:ender_eye>,<botania:manaresource>]]);

# Mana Fluxfield
recipes.remove(<botania:rfgenerator>);

# Spark Tinkerer
recipes.remove(<botania:sparkchanger>);
recipes.addShaped(<botania:sparkchanger>, [[<botania:manaresource:7>,<botania:livingrock>,<botania:manaresource:7>],[<botania:livingrock>,<enderio:item_alloy_ingot:3>,<botania:livingrock>]]);

# Fel Pumpkin
recipes.remove(<botania:felpumpkin>);

# Cocoon of Caprice
recipes.remove(<botania:cocoon>);

# Luminizer
recipes.remove(<botania:lightrelay>);
recipes.addShaped(<botania:lightrelay>, [[null,<botania:manaresource>,null],[<botania:manaresource:12>,<botania:spark>,<botania:manaresource:12>],[null,<botania:manaresource>,null]]);

# Detector Luminizer
recipes.remove(<botania:lightrelay:1>);
recipes.addShapeless(<botania:lightrelay:1>, [<botania:lightrelay>,<enderio:item_alloy_ingot:3>]);

# Fork Luminizer
recipes.remove(<botania:lightrelay:2>);
recipes.addShapeless(<botania:lightrelay:2>, [<botania:lightrelay>,<enderio:item_alloy_ingot:3>,<botania:manaresource:18>]);

# Toggle Luminizer
recipes.remove(<botania:lightrelay:3>);
recipes.addShapeless(<botania:lightrelay:3>, [<botania:lightrelay>,<enderio:item_alloy_ingot:3>,<minecraft:piston>]);

# Red String
recipes.remove(<botania:manaresource:12>);
recipes.addShaped(<botania:manaresource:12>, [[<enderio:item_alloy_ingot:3>,<botania:manaresource:15>,<enderio:item_alloy_ingot:3>],[<botania:manaresource:8>,<botania:manaresource:16>,<botania:manaresource:8>],[<enderio:item_alloy_ingot:3>,<botania:manaresource:15>,<enderio:item_alloy_ingot:3>]]);

# Manatide Bellows
recipes.remove(<botania:bellows>);
recipes.addShaped(<botania:bellows>, [[<botania:livingwood0slab>,<botania:livingwood0slab>,<botania:livingwood0slab>],[<contenttweaker:blood_infused_leather>,<contenttweaker:rune_of_air>,<contenttweaker:blood_infused_leather>],[<botania:livingwood0slab>,<botania:livingwood0slab>,<botania:livingwood0slab>]]);

# Cellular Block
recipes.remove(<botania:cellblock>);
recipes.addShaped(<botania:cellblock> * 4, [[<mysticalagriculture:nature_essence>,<mysticalagriculture:crafting:6>,<mysticalagriculture:nature_essence>],[<mysticalagriculture:crafting:6>,<mysticalagriculture:crafting:6>,<mysticalagriculture:crafting:6>],[<mysticalagriculture:nature_essence>,<mysticalagriculture:crafting:6>,<mysticalagriculture:nature_essence>]]);

# Botanical Brewery
recipes.remove(<botania:brewery>);
recipes.addShaped(<botania:brewery>, [[<contenttweaker:purified_tablet>,null,<contenttweaker:purified_tablet>],[<botania:livingrock>,<contenttweaker:rune_of_mana>,<botania:livingrock>],[<botania:livingrock>,<botania:alchemycatalyst>,<botania:livingrock>]]);

# Tainted Blood Pendant
recipes.remove(<botania:bloodpendant>);
recipes.addShapedMirrored(<botania:bloodpendant>.withTag({}), [[<botania:manaresource:16>,<botania:manaresource:16>,<botania:manaresource:16>],[<botania:manaresource:16>,<contenttweaker:rune_of_envy>,<botania:manaresource:16>],[<botania:manaresource:16>,<botania:manaresource:16>,<contenttweaker:steaming_restonia_crystal_block>]]);

# Incense Stick
recipes.remove(<botania:incensestick>);
recipes.addShapedMirrored(<botania:incensestick>.withTag({}), [[null,null,<botania:livingrock>],[null,<contenttweaker:purified_tablet>,null],[<botania:livingrock>,null,null]]);

# Incense Plate
recipes.remove(<botania:incenseplate>);
recipes.addShaped(<botania:incenseplate>, [[null,<botania:manaresource:5>,null],[<botania:livingwood>,<minecraft:beacon>,<botania:livingwood>]]);

# Saturation Brew
Brews.addBrewRecipe(
    Brews.makeBrew(
        "dj2addons.saturegen",
        "dj2addons.brew.saturegen",
        100000,
        16262179,
        <potion:dj2addons:saturegen>.makePotionEffect(20 * 60 * 10, 1) // brew will last 10 minutes
    ),
    [<minecraft:nether_wart>, <totemic:cooked_buffalo_meat>, <contenttweaker:chicken_nugget>, <contenttweaker:burger>, <contenttweaker:taco>]
);

# Warp Ward Brew
mods.botania.Brew.removeRecipe("warpWard");
Brews.addBrewRecipe(
    Brews.makeBrew(
        "thaumcraft:warpward",
        "Sane Thoughts",
        100000,
        16503291,
        <potion:thaumcraft:warpward>.makePotionEffect(20 * 60 * 60 * 2, 0) // brew will last an hour
    ),
    [<minecraft:nether_wart>, <thaumcraft:salis_mundus>, <thaumcraft:bath_salts>, <thaumcraft:sanity_soap>, <contenttweaker:conducted_impetus>, <thaumcraft:sanity_checker>]
);

# Corporea Spark
recipes.remove(<botania:corporeaspark>);
recipes.addShaped(<botania:corporeaspark>, [[null,<botania:manaresource:15>,null],[<botania:manaresource:8>,<botania:spark>,<botania:manaresource:8>],[null,<botania:manaresource:15>,null]]);

# Master Corporea Spark
recipes.remove(<botania:corporeaspark:1>);
recipes.addShaped(<botania:corporeaspark:1>, [[<botania:storage:4>,<appliedenergistics2:controller>,<botania:storage:4>],[<appliedenergistics2:controller>,<botania:corporeaspark>,<appliedenergistics2:controller>],[<botania:storage:4>,<appliedenergistics2:controller>,<botania:storage:4>]]);

# Corporea Interceptor
recipes.remove(<botania:corporeainterceptor>);
recipes.addShaped(<botania:corporeainterceptor>, [[<botania:manaresource>,<enderio:item_alloy_ingot:3>,<botania:manaresource>],[<enderio:item_alloy_ingot:3>,<botania:corporeaspark>,<enderio:item_alloy_ingot:3>],[<botania:manaresource>,<enderio:item_alloy_ingot:3>,<botania:manaresource>]]);

# Corporea Retainer
recipes.remove(<botania:corporearetainer>);
recipes.addShaped(<botania:corporearetainer>, [[<botania:manaresource>,<appliedenergistics2:material:24>,<botania:manaresource>],[<appliedenergistics2:material:24>,<botania:corporeaspark>,<appliedenergistics2:material:24>],[<botania:manaresource>,<appliedenergistics2:material:24>,<botania:manaresource>]]);

# Crafty Crate
recipes.remove(<botania:opencrate:1>);
recipes.addShaped(<botania:opencrate:1>, [[<botania:dreamwood>,<botania:dreamwood>,<botania:dreamwood>],[<botania:dreamwood>,<mekanism:machineblock3:5>,<botania:dreamwood>],[<botania:dreamwood>,<botania:dreamwood>,<botania:dreamwood>]]);

# Corporea Crystal Cube
recipes.remove(<botania:corporeacrystalcube>);
recipes.addShaped(<botania:corporeacrystalcube>, [[<botania:elfglass>],[<botania:corporeaspark>],[<botania:storage:3>]]);

# Redstone Root
recipes.remove(<botania:manaresource:6>);
recipes.addShaped(<botania:manaresource:6>, [[<enderio:item_alloy_ingot:3>,<minecraft:tallgrass:1>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:3>,<roots:wildroot>,<enderio:item_alloy_ingot:3>],[<enderio:item_alloy_ingot:3>,<minecraft:tallgrass:1>,<enderio:item_alloy_ingot:3>]]);

# Metamorphic Stone oredict and tooptips
for i in 0 to 8 {
	<ore:stoneBotaniaMetamorphic>.add(<botania:biomestonea>.withDamage(i));
	<botania:biomestonea>.withDamage(i).addTooltip(format.white("Generated by the ") + format.gray("Marimorphosis") + format.white(" Flower."));
}

# Orechid Mithril Ore removal
mods.botania.Orechid.removeOre("oreMithril");

# Lexica Botania tooltip
<botania:lexicon>.addTooltip(format.red(format.bold("Warning:")) + format.white(format.bold(" Recipes shown may be incorrect.")));
<botania:lexicon>.addTooltip(format.white(format.bold("Always refer to JEI when crafting.")));

# Rod of the Seas
recipes.remove(<botania:waterrod>);
recipes.addShapedMirrored(<botania:waterrod>, [[null,null,<minecraft:potion>.withTag({Potion: "minecraft:water"})],[null,<botania:manaresource:3>,null],[<contenttweaker:rune_of_water>,null,null]]);

# Ring of Chordata
recipes.remove(<botania:waterring>);
recipes.addShapedMirrored(<botania:waterring>.withTag({}), [[<contenttweaker:rune_of_water>,<botania:manaresource>,<minecraft:fish:3>],[<botania:manaresource>,null,<botania:manaresource>],[<minecraft:fish:3>,<botania:manaresource>,null]]);

# Mana Lens: Efficiency
recipes.removeShapeless(<botania:lens:4>, [<*>,<*>]);
recipes.addShapeless(<botania:lens:4>.withTag({}), [<botania:lens>,<contenttweaker:rune_of_water>]);

# Mana Lens: Weight
recipes.remove(<botania:lens:13>);
recipes.addShaped(<botania:lens:13>.withTag({}), [[<minecraft:prismarine_shard>,<minecraft:prismarine_shard>,<minecraft:prismarine_shard>],[<minecraft:prismarine_shard>,<botania:lens>,<minecraft:prismarine_shard>],[<minecraft:prismarine_shard>,<contenttweaker:rune_of_water>,<minecraft:prismarine_shard>]]);

# Snowflake Pendant
recipes.remove(<botania:icependant>);
recipes.addShapedMirrored(<botania:icependant>, [[<contenttweaker:rune_of_winter>,<botania:manaresource:16>,null],[<botania:manaresource:16>,null,<botania:manaresource:16>],[<botania:manaresource>,<botania:manaresource:16>,<contenttweaker:rune_of_water>]]);

# Benevolent Goddess' Charm
recipes.remove(<botania:goddesscharm>);
recipes.addShapedMirrored(<botania:goddesscharm>, [[null,<botania:petal:6>,null],[null,<botania:petal:6>,null],[<contenttweaker:rune_of_water>,<botania:manaresource:2>,<contenttweaker:rune_of_fire>]]);

# Rod of the Depths
recipes.remove(<botania:cobblerod>);
recipes.addShapedMirrored(<botania:cobblerod>, [[null,<contenttweaker:rune_of_fire>,<extrautils2:compressedcobblestone>],[null,<botania:manaresource:3>,<contenttweaker:rune_of_water>],[<botania:manaresource:3>,null,null]]);

# Rod the the Molten Core
recipes.remove(<botania:smeltrod>);
recipes.addShapedMirrored(<botania:smeltrod>, [[null,<contenttweaker:incendium>,<contenttweaker:rune_of_fire>],[null,<botania:manaresource:3>,<contenttweaker:incendium>],[<botania:manaresource:3>,null,null]]);

# Mana Lens: Potency
recipes.removeShapeless(<botania:lens:2>, [<*>,<*>]);
recipes.addShapeless(<botania:lens:2>.withTag({}), [<botania:lens>,<contenttweaker:rune_of_fire>]);

# Rod of the Hells
recipes.remove(<botania:firerod>);
recipes.addShapedMirrored(<botania:firerod>, [[null,null,<contenttweaker:incendium>],[null,<botania:manaresource:3>,null],[<contenttweaker:rune_of_fire>,null,null]]);

# Pyroclast Pendant
recipes.remove(<botania:lavapendant>);
recipes.addShapedMirrored(<botania:lavapendant>, [[<contenttweaker:rune_of_summer>,<botania:manaresource:16>,null],[<botania:manaresource:16>,null,<botania:manaresource:16>],[<botania:manaresource>,<botania:manaresource:16>,<contenttweaker:rune_of_fire>]]);

# Third Eye
recipes.remove(<botania:thirdeye>);
recipes.addShaped(<botania:thirdeye>, [[<contenttweaker:sanctus>,<contenttweaker:rune_of_earth>,<contenttweaker:sanctus>],[<minecraft:quartz_block>,<minecraft:ender_eye>,<minecraft:quartz_block>],[<contenttweaker:sanctus>,<botania:manaresource:2>,<contenttweaker:sanctus>]]);

# Stone Temperance
recipes.remove(<botania:temperancestone>);
recipes.addShaped(<botania:temperancestone>, [[null,<ore:stone>,null],[<ore:stone>,<contenttweaker:rune_of_earth>,<ore:stone>],[null,<ore:stone>,null]]);

# Ring of the Mantle
recipes.remove(<botania:miningring>);
recipes.addShapedMirrored(<botania:miningring>.withTag({}), [[<minecraft:potion>.withTag({Potion: "cofhcore:haste4"}),<botania:manaresource>,<contenttweaker:rune_of_earth>],[<botania:manaresource>,null,<botania:manaresource>],[null,<botania:manaresource>,null]]);

# Mana Lens: Resistance
recipes.removeShapeless(<botania:lens:3>, [<*>,<*>]);
recipes.addShapeless(<botania:lens:3>.withTag({}), [<botania:lens>,<contenttweaker:rune_of_earth>]);

# Shard of Laputa I-XX (1-20)
recipes.remove(<botania:laputashard:*>);
recipes.addShapedMirrored(<botania:laputashard:0>, [[<contenttweaker:rune_of_air>,<botania:lightrelay:0>,<contenttweaker:rune_of_air>],[<contenttweaker:crystallized_mana_shard>,<botania:worldseed>,<contenttweaker:crystallized_mana_shard>],[<contenttweaker:rune_of_earth>,<botania:manaresource:5>,<contenttweaker:rune_of_earth>]]);

for i in 0 to 19 {
    recipes.addShapedMirrored(<botania:laputashard>.withDamage(i + 1), [[<contenttweaker:rune_of_air>,<botania:lightrelay:0>,<contenttweaker:rune_of_air>],[<contenttweaker:crystallized_mana_shard>,<botania:laputashard>.withDamage(i),<contenttweaker:crystallized_mana_shard>],[<contenttweaker:rune_of_earth>,<botania:manaresource:5>,<contenttweaker:rune_of_earth>]]);
}

# Rod of the Lands
recipes.remove(<botania:dirtrod>);
recipes.addShapedMirrored(<botania:dirtrod>, [[null,null,<extrautils2:compresseddirt>],[null,<botania:manaresource:3>,null],[<contenttweaker:rune_of_earth>,null,null]]);

# Rod of the Skies
recipes.remove(<botania:tornadorod>);
recipes.addShapedMirrored(<botania:tornadorod>.withTag({}), [[null,null,<contenttweaker:aether>],[null,<botania:manaresource:3>,null],[<contenttweaker:rune_of_air>,null,null]]);

# Livingwood Slingshot
recipes.remove(<botania:slingshot>);
recipes.addShapedMirrored(<botania:slingshot>, [[null,<botania:manaresource:3>,<contenttweaker:rune_of_air>],[null,<botania:manaresource:3>,<botania:manaresource:3>],[<botania:manaresource:3>,null,null]]);

# Rod of the Highlands
recipes.remove(<botania:skydirtrod>);
recipes.addShapeless(<botania:skydirtrod>, [<botania:dirtrod>,<botania:manaresource:8>,<contenttweaker:rune_of_air>]);

# Mana Lens: Influence
recipes.removeShaped(<botania:lens:12>, [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]]);
recipes.addShaped(<botania:lens:12>.withTag({}), [[<minecraft:prismarine_shard>,<contenttweaker:rune_of_air>,<minecraft:prismarine_shard>],[<minecraft:prismarine_shard>,<botania:lens>,<minecraft:prismarine_shard>],[<minecraft:prismarine_shard>,<minecraft:prismarine_shard>,<minecraft:prismarine_shard>]]);

# Cirrus Amulet
recipes.remove(<botania:cloudpendant>);
recipes.addShapedMirrored(<botania:cloudpendant>.withTag({}), [[<contenttweaker:rune_of_autumn>,<botania:manaresource:16>,null],[<botania:manaresource:16>,null,<botania:manaresource:16>],[<botania:manaresource>,<botania:manaresource:16>,<contenttweaker:rune_of_air>]]);

# Mana Lens: Velocity
recipes.removeShapeless(<botania:lens:1>, [<*>,<*>]);
recipes.addShapeless(<botania:lens:1>.withTag({}), [<botania:lens>,<contenttweaker:rune_of_air>]);

# Rod of the Terra Firma
recipes.remove(<botania:terraformrod>);
recipes.addShapedMirrored(<botania:terraformrod>, [[null,<contenttweaker:rune_of_winter>,<botania:manaresource:4>],[<contenttweaker:rune_of_autumn>,<botania:dirtrod>,<contenttweaker:rune_of_spring>],[<botania:grassseeds>,<contenttweaker:rune_of_summer>,null]]);

# Mana Lens: Bounce
recipes.removeShapeless(<botania:lens:5>, [<*>,<*>]);
recipes.addShapeless(<botania:lens:5>.withTag({}), [<botania:lens>,<contenttweaker:rune_of_summer>]);

# Mana Lens: Gravity
recipes.removeShapeless(<botania:lens:6>, [<*>,<*>]);
recipes.addShapeless(<botania:lens:6>.withTag({}), [<botania:lens>,<contenttweaker:rune_of_winter>]);

# Band of Aura
recipes.remove(<botania:auraring>);
recipes.addShapedMirrored(<botania:auraring>, [[<contenttweaker:rune_of_mana>,<botania:manaresource>,null],[<botania:manaresource>,null,<botania:manaresource>],[null,<botania:manaresource>,null]]);

# Mana Lens: Damaging
recipes.removeShapeless(<botania:lens:8>, [<*>,<*>]);
recipes.addShapeless(<botania:lens:8>.withTag({}), [<botania:lens>,<contenttweaker:rune_of_wrath>]);

# Mana Lens: Entropic
recipes.removeShapeless(<botania:lens:11>, [<*>,<*>]);
recipes.addShapeless(<botania:lens:11>.withTag({}), [<botania:lens>,<contenttweaker:rune_of_envy>]);

# Shears
recipes.remove(<botania:manasteelshears>);
recipes.addShaped(<botania:manasteelshears>, [[null,<botania:manaresource:0>,null],[<ore:plankWood>,<minecraft:string>,<botania:manaresource:0>],[<immersiveengineering:material:1>,<ore:plankWood>,null]]);
recipes.remove(<botania:elementiumshears>);
recipes.addShaped(<botania:elementiumshears>, [[null,<botania:manaresource:7>,null],[<ore:plankWood>,<minecraft:string>,<botania:manaresource:7>],[<immersiveengineering:material:1>,<ore:plankWood>,null]]);

# Mana Tablet (Creative)
mods.extendedcrafting.TableCrafting.addShaped(<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}),
[[<contenttweaker:crystallized_mana_cluster>, <contenttweaker:crystallized_mana_cluster>, <contenttweaker:crystallized_mana_cluster>, <contenttweaker:crystallized_mana_cluster>, <contenttweaker:crystallized_mana_cluster>],
[<contenttweaker:crystallized_mana_cluster>, <botania:manatablet>, <botania:manatablet>, <botania:manatablet>, <contenttweaker:crystallized_mana_cluster>],
[<contenttweaker:crystallized_mana_cluster>, <botania:manatablet>, <thaumicenergistics:essentia_cell_creative>, <botania:manatablet>, <contenttweaker:crystallized_mana_cluster>],
[<contenttweaker:crystallized_mana_cluster>, <botania:manatablet>, <avaritia:resource:6>, <botania:manatablet>, <contenttweaker:crystallized_mana_cluster>],
[<contenttweaker:crystallized_mana_cluster>, <contenttweaker:crystallized_mana_cluster>, <contenttweaker:crystallized_mana_cluster>, <contenttweaker:crystallized_mana_cluster>, <contenttweaker:crystallized_mana_cluster>]]);

# Everlasting Guilty Mana Pool
mods.extendedcrafting.TableCrafting.addShaped(<botania:pool:1>,
[[null, null, null, null, null, null, null, null, null],
[null, null, null, null, null, null, null, null, null],
[null, null, null, null, null, null, null, null, null],
[<botania:pool:3>, <avaritia:block_resource>, <avaritia:resource:4>, <contenttweaker:natures_blessing>, <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}), <contenttweaker:natures_blessing>, <avaritia:resource:4>, <avaritia:block_resource>, <botania:pool:3>],
[<botania:pool:3>, <avaritia:block_resource>, <avaritia:resource:4>, <contenttweaker:natures_blessing>, <contenttweaker:neutronium_singularity>, <contenttweaker:natures_blessing>, <avaritia:resource:4>, <avaritia:block_resource>, <botania:pool:3>],
[<botania:pool:3>, <avaritia:block_resource>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:block_resource>, <botania:pool:3>],
[<botania:pool:3>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <botania:pool:3>],
[<botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>],
[null, null, null, null, null, null, null, null, null]]);

print("ENDING Botania.zs");
