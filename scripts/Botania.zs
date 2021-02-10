# Author: Atricos

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
import mods.botania.ElvenTrade;

print("STARTING Botania.zs");

# Floral Fertilizer
recipes.remove(<botania:fertilizer>);
mods.bloodmagic.TartaricForge.addRecipe(<botania:fertilizer> * 4, [<bloodmagic:component:5>, <contenttweaker:wizards_reagent>, <minecraft:dye:15>, <minecraft:slime_ball>], 0, 8);

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
val dimensionalLogs = [<divinerpg:frozen_log>,<divinerpg:divine_log>,<divinerpg:eden_log>,<divinerpg:wildwood_log>,<divinerpg:apalachia_log>,<divinerpg:skythern_log>,<divinerpg:mortum_log>,<divinerpg:dreamwood_log>,<divinerpg:firewood_log>,<divinerpg:hyrewood_log>,<divinerpg:mintwood_log>,<atum:palm_log>,<atum:deadwood_log>,<aether_legacy:aether_log:*>,<erebus:log_baobab>,<erebus:log_eucalyptus>,<erebus:log_mahogany>,<erebus:log_mossbark>,<erebus:log_asper>,<erebus:log_cypress>,<erebus:log_balsam>,<erebus:log_rotten>,<erebus:log_marshwood>,<erebus:log_scorched>,<abyssalcraft:dreadlog>,<twilightforest:twilight_log:0>,<twilightforest:twilight_log:1>,<twilightforest:twilight_log:2>,<twilightforest:twilight_log:3>,<twilightforest:magic_log:0>,<twilightforest:magic_log:1>,<twilightforest:magic_log:2>,<twilightforest:magic_log:3>] as IItemStack[];
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
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:16>, <evilcraft:golden_string>, 10000);

# Spellbinding Cloth
<botania:spellcloth>.maxStackSize = 64;

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
mods.botania.RuneAltar.addRecipe(<botania:rune>, [<contenttweaker:aquatic_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered:1>,<botania:manaresource:23>], 10000);

# Rune of Fire
mods.botania.RuneAltar.removeRecipe(<botania:rune:1>);
mods.botania.RuneAltar.addRecipe(<botania:rune:1>, [<contenttweaker:fire_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered>,<botania:manaresource:23>], 10000);

# Rune of Earth
mods.botania.RuneAltar.removeRecipe(<botania:rune:2>);
mods.botania.RuneAltar.addRecipe(<botania:rune:2>, [<contenttweaker:earthen_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered:4>,<botania:manaresource:23>], 10000);

# Rune of Air
mods.botania.RuneAltar.removeRecipe(<botania:rune:3>);
mods.botania.RuneAltar.addRecipe(<botania:rune:3>, [<contenttweaker:gusty_core>,<botania:manaresource>,<actuallyadditions:item_crystal_empowered:2>,<botania:manaresource:23>], 10000);

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
mods.botania.RuneAltar.addRecipe(<botania:rune:8>, [<botania:storage>,<botania:storage>,<botania:storage:3>,<botania:storage:3>], 25000);

# Rune of Spring
mods.botania.RuneAltar.removeRecipe(<botania:rune:4>);
mods.botania.RuneAltar.addRecipe(<botania:rune:4>, [<botania:rune:3>,<botania:rune:2>,<contenttweaker:livingmatter>,<contenttweaker:environmental_core>], 15000);

# Rune of Summer
mods.botania.RuneAltar.removeRecipe(<botania:rune:5>);
mods.botania.RuneAltar.addRecipe(<botania:rune:5>, [<botania:rune:1>,<botania:rune:3>,<contenttweaker:livingmatter>,<contenttweaker:power_core>], 15000);

# Rune of Autumn
mods.botania.RuneAltar.removeRecipe(<botania:rune:6>);
mods.botania.RuneAltar.addRecipe(<botania:rune:6>, [<botania:rune:1>,<botania:rune:0>,<contenttweaker:livingmatter>,<contenttweaker:tempest_core>], 15000);

# Rune of Winter
mods.botania.RuneAltar.removeRecipe(<botania:rune:7>);
mods.botania.RuneAltar.addRecipe(<botania:rune:7>, [<botania:rune:0>,<botania:rune:2>,<contenttweaker:livingmatter>,<contenttweaker:icy_core>], 15000);

# Manastorm Charge
recipes.remove(<botania:manabomb>);

# Manastar
mods.botania.Apothecary.removeRecipe("manastar");
Fey.addRecipe("manastar", <botania:specialflower>.withTag({type: "manastar"}), [<contenttweaker:manastar_petal>,<contenttweaker:manastar_petal>,<botania:manaresource>,<botania:manaresource>,<botania:manaresource:2>]);

# Thermalily
mods.botania.Apothecary.removeRecipe("thermalily");
Fey.addRecipe("thermalily", <botania:specialflower>.withTag({type: "thermalily"}), [<contenttweaker:thermal_petal>,<contenttweaker:thermal_petal>,<botania:rune:1>,<botania:rune:2>,<contenttweaker:strength_reagent>]);

# Rosa Arcana
mods.botania.Apothecary.removeRecipe("arcanerose");
Fey.addRecipe("arcanerose", <botania:specialflower>.withTag({type: "arcanerose"}), [<contenttweaker:petal_of_the_arcane_rose>,<contenttweaker:petal_of_the_arcane_rose>,<botania:rune:8>,<actuallyadditions:block_xp_solidifier>,<enderio:item_material:18>]);

# Gourmaryllis
mods.botania.Apothecary.removeRecipe("gourmaryllis");
Fey.addRecipe("gourmaryllis", <botania:specialflower>.withTag({type: "gourmaryllis"}), [<contenttweaker:petal_of_the_gourmaryllis>,<contenttweaker:petal_of_the_gourmaryllis>,<botania:rune:10>,<abyssalcraft:mre>,<botania:manaresource:9>]);

# Narslimmus
mods.botania.Apothecary.removeRecipe("narslimmus");
Fey.addRecipe("narslimmus", <botania:specialflower>.withTag({type: "narslimmus"}), [<contenttweaker:petal_of_the_narslimmus>,<contenttweaker:petal_of_the_narslimmus>,<botania:rune:5>,<minecraft:slime>,<minecraft:slime>]);

# Jaded Amaranthus
mods.botania.Apothecary.removeRecipe("jadedAmaranthus");
Fey.addRecipe("jadedAmaranthus", <botania:specialflower>.withTag({type: "jadedAmaranthus"}), [<contenttweaker:jaded_petal>,<contenttweaker:jaded_petal>,<botania:rune:4>,<botania:fertilizer>,<botania:fertilizer>]);

# Bellethorne
mods.botania.Apothecary.removeRecipe("bellethorn");
Fey.addRecipe("bellethorn", <botania:specialflower>.withTag({type: "bellethorn"}), [<contenttweaker:thorny_belle_petal>,<contenttweaker:thorny_belle_petal>,<contenttweaker:damage_reagent>,<botania:rune:1>,<extrautils2:spike_iron>]);

# Dreadthorn
mods.botania.Apothecary.removeRecipe("dreadthorn");
Fey.addRecipe("dreadthorn", <botania:specialflower>.withTag({type: "dreadthorn"}), [<contenttweaker:thorny_dread_petal>,<contenttweaker:thorny_dread_petal>,<contenttweaker:damage_reagent>,<abyssalcraft:ingotblock:2>,<extrautils2:spike_iron>]);

# Tigerseye
mods.botania.Apothecary.removeRecipe("tigerseye");
Fey.addRecipe("tigerseye", <botania:specialflower>.withTag({type: "tigerseye"}), [<contenttweaker:tigerseye_petal>,<contenttweaker:tigerseye_petal>,<botania:rune:6>,<contenttweaker:sanctus>,<contenttweaker:neutral_reagent>]);

# Exoflame
mods.botania.Apothecary.removeRecipe("exoflame");
Fey.addRecipe("exoflame", <botania:specialflower>.withTag({type: "exoflame"}), [<contenttweaker:petal_of_the_exoflame>,<contenttweaker:petal_of_the_exoflame>,<botania:rune:1>,<immersiveengineering:metal_device1:1>,<immersiveengineering:metal_device1:1>]);

# Agricarnation
mods.botania.Apothecary.removeRecipe("agricarnation");
Fey.addRecipe("agricarnation", <botania:specialflower>.withTag({type: "agricarnation"}), [<contenttweaker:agricarnatic_petal>,<contenttweaker:agricarnatic_petal>,<botania:rune:4>,<botania:rune:5>,<mysticalagriculture:growth_accelerator>]);

# Hopperhock
mods.botania.Apothecary.removeRecipe("hopperhock");
Fey.addRecipe("hopperhock", <botania:specialflower>.withTag({type: "hopperhock"}), [<contenttweaker:hopping_petal>,<contenttweaker:hopping_petal>,<botania:rune:3>,<openblocks:vacuum_hopper>,<bloodmagic:component:31>]);

# Rannuncarpus
mods.botania.Apothecary.removeRecipe("rannuncarpus");
Fey.addRecipe("rannuncarpus", <botania:specialflower>.withTag({type: "rannuncarpus"}), [<contenttweaker:petal_of_the_rannuncarpus>,<contenttweaker:petal_of_the_rannuncarpus>,<botania:rune:2>,<openblocks:block_breaker>,<contenttweaker:damage_reagent>]);

# Tangleberry
mods.botania.Apothecary.removeRecipe("tangleberrie");
Fey.addRecipe("tangleberrie", <botania:specialflower>.withTag({type: "tangleberrie"}), [<contenttweaker:tangled_petals>,<contenttweaker:tangled_petals>,<botania:rune:2>,<enderio:item_material:17>,<contenttweaker:crepitous>]);

# Jiyuulia
mods.botania.Apothecary.removeRecipe("jiyuulia");
Fey.addRecipe("jiyuulia", <botania:specialflower>.withTag({type: "jiyuulia"}), [<contenttweaker:petal_of_the_jiyuulia>,<contenttweaker:petal_of_the_jiyuulia>,<botania:rune:3>,<mob_grinding_utils:fan>,<contenttweaker:aether>]);

# Clayconia
mods.botania.Apothecary.removeRecipe("clayconia");
Fey.addRecipe("clayconia", <botania:specialflower>.withTag({type: "clayconia"}), [<contenttweaker:clay_cone_petal>,<contenttweaker:clay_cone_petal>,<botania:rune:2>,<contenttweaker:neutral_reagent>,<minecraft:clay>]);

# Daffomill
mods.botania.Apothecary.removeRecipe("daffomill");
Fey.addRecipe("daffomill", <botania:specialflower>.withTag({type: "daffomill"}), [<contenttweaker:daffomill_petal>,<contenttweaker:daffomill_petal>,<botania:rune:3>,<openblocks:fan>,<contenttweaker:aether>]);

# Solegnolia
mods.botania.Apothecary.removeRecipe("solegnolia");
Fey.addRecipe("solegnolia", <botania:specialflower>.withTag({type: "solegnolia"}), [<contenttweaker:petal_of_the_solegnolia>,<contenttweaker:petal_of_the_solegnolia>,<botania:rune:3>,<enderio:item_material:15>,<enderio:block_alloy:1>]);

# Bergamute
mods.botania.Apothecary.removeRecipe("bergamute");
Fey.addRecipe("bergamute", <botania:specialflower>.withTag({type: "bergamute"}), [<contenttweaker:petal_of_the_bergamute>,<contenttweaker:petal_of_the_bergamute>,<botania:rune:3>,<extrautils2:soundmuffler>,<betternether:agave>]);

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
recipes.addShapeless(<botania:lens:7>.withTag({}), [<botania:lens>,<openblocks:block_breaker>,<extrautils2:interactionproxy>,<botania:rune:13>]);

# Mana Lens: Phantom
recipes.remove(<botania:lens:9>);
recipes.addShapeless(<botania:lens:9>.withTag({}), [<botania:lens>,<actuallyadditions:block_phantomface>,<botania:platform>,<botania:rune:9>]);

# Mana Lens: Magnetizing
recipes.remove(<botania:lens:10>);
recipes.addShapeless(<botania:lens:10>.withTag({}), [<botania:lens>,<botania:magnetring>,<enderio:item_material:17>,<botania:rune:12>]);

# Mana Lens: Kindle
recipes.remove(<botania:lens:15>);
recipes.addShapeless(<botania:lens:15>.withTag({}), [<botania:lens>,<minecraft:fire_charge>,<abyssalcraft:crystalcluster:15>,<botania:rune:13>]);

# Mana Lens: Messenger
recipes.remove(<botania:lens:22>);
recipes.addShapeless(<botania:lens:22>.withTag({}), [<botania:lens>,<extrautils2:interactionproxy>,<ore:bookshelf>,<botania:rune:11>]);

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
recipes.addShaped(<botania:grasshorn>, [[null,<botania:livingwood>,null],[<botania:livingwood>,<botania:rune:6>,<botania:livingwood>],[<botania:livingwood>,<botania:livingwood>,null]]);

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
recipes.addShapedMirrored(<botania:terraplate>, [[<contenttweaker:potency_core>,<contenttweaker:potency_core>,<contenttweaker:potency_core>],[<botania:rune:4>,<contenttweaker:dark_realm_soul_block>,<botania:rune:7>],[<botania:rune:5>,<contenttweaker:dark_realm_soul_block>,<botania:rune:6>]]);

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
recipes.addShaped(<botania:pylon>, [[<actuallyadditions:item_crystal_empowered:2>,null,<actuallyadditions:item_crystal_empowered:2>],[empowered_glod_crystal,<botania:storage:3>,empowered_glod_crystal],[<actuallyadditions:item_crystal_empowered:2>,null,<actuallyadditions:item_crystal_empowered:2>]]);

# Natura Pylon
recipes.remove(<botania:pylon:1>);
recipes.addShaped(<botania:pylon:1>, [[<botania:manaresource:18>,null,<botania:manaresource:18>],[<botania:livingwood:5>,<botania:manaresource:4>,<botania:livingwood:5>],[<botania:livingwood>,<botania:pylon>,<botania:livingwood>]]);

function addBotaniaTier3RuneRecipe(output as IItemStack, input_rune1 as IItemStack, input_rune2 as IItemStack) {
	mods.botania.RuneAltar.removeRecipe(output);
	mods.botania.RuneAltar.addRecipe(output, [input_rune1, input_rune2, <botania:manaresource:8>, <contenttweaker:dreammatter>, <botania:storage:3>], 20000);
}

# Rune of Lust
addBotaniaTier3RuneRecipe(<botania:rune:9>,<botania:rune:4>,<botania:rune:1>);

# Rune of Gluttony
addBotaniaTier3RuneRecipe(<botania:rune:10>,<botania:rune:6>,<botania:rune:2>);

# Rune of Greed
addBotaniaTier3RuneRecipe(<botania:rune:11>,<botania:rune:7>,<botania:rune:3>);

# Rune of Sloth
addBotaniaTier3RuneRecipe(<botania:rune:12>,<botania:rune:7>,<botania:rune:2>);

# Rune of Wrath
addBotaniaTier3RuneRecipe(<botania:rune:13>,<botania:rune:5>,<botania:rune:1>);

# Rune of Envy
addBotaniaTier3RuneRecipe(<botania:rune:14>,<botania:rune:5>,<botania:rune:0>);

# Rune of Pride
addBotaniaTier3RuneRecipe(<botania:rune:15>,<botania:rune:6>,<botania:rune:3>);

# Mana Tablet
recipes.remove(<botania:manatablet>);
recipes.addShaped(<botania:manatablet>.withTag({}), [[<botania:livingrock>,<contenttweaker:purified_slate>,<botania:livingrock>],[<contenttweaker:purified_slate>,<botania:storage:3>,<contenttweaker:purified_slate>],[<botania:livingrock>,<contenttweaker:purified_slate>,<botania:livingrock>]]);

# Greater Ring of Magnetization
recipes.remove(<botania:magnetringgreater>);
recipes.addShapedMirrored(<botania:magnetringgreater>.withTag({}), [[<contenttweaker:purified_slate>,<botania:manaresource:4>,null],[<botania:manaresource:4>,<botania:magnetring>,<botania:manaresource:4>],[null,<botania:manaresource:4>,null]]);

# Mana Blaster
recipes.remove(<botania:managun>);
recipes.addShapedMirrored(<botania:managun>.withTag({}), [[<botania:rune:13>,<contenttweaker:purified_slate>,<botania:manaresource:4>],[<botania:livingwood>,<botania:livingwood>,<botania:manaresource:4>],[null,null,<botania:livingwood>]]);

# Mana Mirror
recipes.remove(<botania:manamirror>);
recipes.addShaped(<botania:manamirror>.withTag({mana: 0}), [[<contenttweaker:purified_slate>,<botania:manatablet>,<contenttweaker:purified_slate>],[null,<contenttweaker:purified_slate>,null],[null,<botania:manaresource:3>,null]]);

# Band of Mana
recipes.remove(<botania:manaring>);
recipes.addShapedMirrored("band_of_mana", <botania:manaring>, [[<botania:manatablet>.marked("tablet"),<botania:storage>,null],[<botania:storage>,<contenttweaker:purified_slate>,<botania:storage>],[null,<botania:storage>,null]],
	function(out,ins,cInfo) {
			if(ins.tablet.tag has "mana" && ins.tablet.tag.mana > 0) {
				return out.withTag({mana: ins.tablet.tag.mana});
			} else {
				return out.withTag({});
			}
		}, null);

# Greater Band of Mana
recipes.remove(<botania:manaringgreater>);
recipes.addShaped("greater_ring_of_mana", <botania:manaringgreater>, [[<contenttweaker:purified_slate>,<botania:manaresource:4>,null],[<botania:manaresource:4>,<botania:manaring>.marked("ring"),<botania:manaresource:4>],[null,<botania:manaresource:4>,null]],
	function(out,ins,cInfo) {
			if(ins.ring.tag has "mana" && ins.ring.tag.mana > 0) {
				return out.withTag({mana: ins.ring.tag.mana});
			} else {
				return out.withTag({});
			}
		}, null);

# Soujourner's Sash
recipes.remove(<botania:travelbelt>);
recipes.addShapedMirrored(<botania:travelbelt>, [[<botania:rune:11>,<contenttweaker:blood_infused_leather>,<botania:manaresource:4>],[<contenttweaker:blood_infused_leather>,null,<contenttweaker:blood_infused_leather>],[<botania:manaresource:4>,<contenttweaker:blood_infused_leather>,<botania:rune:3>]]);

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
recipes.addShaped(<botania:elementiumchest>, [[<botania:manaresource:7>,<botania:rune:10>,<botania:manaresource:7>],[<botania:manaresource:7>,<bloodmagic:living_armour_chest>,<botania:manaresource:7>],[<botania:manaresource:7>,<botania:manaresource:7>,<botania:manaresource:7>]]);

# Elementium Leggings
recipes.remove(<botania:elementiumlegs>);
recipes.addShaped(<botania:elementiumlegs>, [[<botania:manaresource:7>,<botania:rune:9>,<botania:manaresource:7>],[<botania:manaresource:7>,<bloodmagic:living_armour_leggings>,<botania:manaresource:7>],[<botania:manaresource:7>,null,<botania:manaresource:7>]]);

# Elementium Boots
recipes.remove(<botania:elementiumboots>);
recipes.addShaped(<botania:elementiumboots>, [[<botania:manaresource:7>,<botania:rune:15>,<botania:manaresource:7>],[<botania:manaresource:7>,<bloodmagic:living_armour_boots>,<botania:manaresource:7>]]);

# Terrasteel Helmet
recipes.removeShaped(<botania:terrasteelhelm>, [[<*>,<*>,<*>],[<*>,<*>,<*>],[null,<*>,null]]);
recipes.addShaped(<botania:terrasteelhelm>, [[<botania:manaresource:4>,<botania:livingwood>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumhelm>,<botania:manaresource:4>]]);
recipes.removeShaped(<botania:terrasteelhelmreveal>, [[<*>,<*>,<*>],[<*>,<*>,<*>],[null,<*>,null]]);

# Terrasteel Chestplate
recipes.remove(<botania:terrasteelchest>);
recipes.addShaped(<botania:terrasteelchest>, [[<botania:manaresource:4>,<botania:livingwood>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumchest>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:manaresource:4>,<botania:manaresource:4>]]);

# Terrasteel Leggings
recipes.remove(<botania:terrasteellegs>);
recipes.addShaped(<botania:terrasteellegs>, [[<botania:manaresource:4>,<botania:livingwood>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumlegs>,<botania:manaresource:4>],[<botania:manaresource:4>,null,<botania:manaresource:4>]]);

# Terrasteel Boots
recipes.remove(<botania:terrasteelboots>);
recipes.addShaped(<botania:terrasteelboots>, [[<botania:manaresource:4>,<botania:livingwood>,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:elementiumboots>,<botania:manaresource:4>]]);

# Tectonic Girdle
recipes.remove(<botania:knockbackbelt>);
recipes.addShapedMirrored(<botania:knockbackbelt>, [[<contenttweaker:purified_slate>,<contenttweaker:blood_infused_leather>,null],[<contenttweaker:blood_infused_leather>,null,<contenttweaker:blood_infused_leather>],[<botania:rune:12>,<contenttweaker:blood_infused_leather>,<contenttweaker:purified_slate>]]);

# Tiny Planet
recipes.remove(<botania:tinyplanet>);
recipes.addShaped(<botania:tinyplanet>.withTag({}), [[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],[<botania:livingrock>,<contenttweaker:purified_slate>,<botania:livingrock>],[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>]]);

# Charm of the Diva
recipes.remove(<botania:divacharm>);
recipes.addShaped(<botania:divacharm>, [[<botania:manaresource:5>,<botania:manaresource:5>,<contenttweaker:holy_core>],[<botania:manaresource:5>,<botania:tinyplanet>.withTag({}),<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<botania:rune:15>]]);

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
mods.thermalexpansion.Transposer.addFillRecipe(<botania:quartztypeblaze>, <botania:quartztypemana:0>, <liquid:fire_water> * 800, 9600);

# Red Quartz
recipes.remove(<botania:quartz:4>);
mods.immersiveengineering.ArcFurnace.addRecipe(<botania:quartz:4>, <botania:quartz:2>, null, 80, 256, [<contenttweaker:virtus>], "Alloying");
EIOAlloySmelter.addRecipe(<botania:quartz:4>, [<botania:quartz:2>, <contenttweaker:virtus>], 4000);
IEAlloySmelter.addRecipe(<botania:quartz:4>, <botania:quartz:2>, <contenttweaker:virtus>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<botania:quartz:4>, <botania:quartz:2>, <contenttweaker:virtus>, 4000);

# Sunny Quartz
recipes.remove(<botania:quartz:6>);
mods.thermalexpansion.Transposer.addFillRecipe(<botania:quartz:6>, <botania:quartz:4>, <liquid:liquid_sunshine> * 200, 2400);
mods.thermalexpansion.Transposer.addFillRecipe(<botania:quartztypesunny>, <botania:quartztypered:0>, <liquid:liquid_sunshine> * 800, 9600);

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
recipes.addShaped(<botania:pylon:2>, [[<botania:storage:4>,null,<botania:storage:4>],[<contenttweaker:magical_slate>,<botania:pylon:1>,<contenttweaker:magical_slate>],[<contenttweaker:magical_slate>,<botania:rune:14>,<contenttweaker:magical_slate>]]);

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
recipes.addShapedMirrored(<botania:reachring>, [[<botania:rune:11>,<botania:manaresource:7>,<botania:manaresource:5>],[<botania:manaresource:7>,null,<botania:manaresource:7>],[<botania:manaresource:5>,<botania:manaresource:7>,<contenttweaker:rune_of_deception>]]);

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
addBotaniaSparkAugmentRecipe(<botania:sparkupgrade:0>, <botania:rune:4>);

# Spark Augment: Dominant
addBotaniaSparkAugmentRecipe(<botania:sparkupgrade:1>, <botania:rune:5>);

# Spark Augment: Recessive
addBotaniaSparkAugmentRecipe(<botania:sparkupgrade:2>, <botania:rune:6>);

# Spark Augment: Isolated
addBotaniaSparkAugmentRecipe(<botania:sparkupgrade:3>, <botania:rune:7>);

# Cloak of Virtue
recipes.remove(<botania:holycloak>);
recipes.addShaped(<botania:holycloak>.withTag({}), [[<contenttweaker:holy_core>,<botania:rune:15>,<contenttweaker:holy_core>],[<botania:manaresource:5>,<contenttweaker:magical_slate>,<botania:manaresource:5>],[<botania:manaresource:5>,<contenttweaker:magical_slate>,<botania:manaresource:5>]]);

# Cloak of Sin
recipes.remove(<botania:unholycloak>);
recipes.addShaped(<botania:unholycloak>.withTag({}), [[<contenttweaker:offensive_core>,<botania:rune:13>,<contenttweaker:offensive_core>],[<botania:manaresource:5>,<contenttweaker:magical_slate>,<botania:manaresource:5>],[<botania:manaresource:5>,<contenttweaker:magical_slate>,<botania:manaresource:5>]]);

# Cloak of Balance
recipes.remove(<botania:balancecloak>);
recipes.addShaped(<botania:balancecloak>.withTag({}), [[<contenttweaker:gusty_core>,<contenttweaker:rune_of_deception>,<contenttweaker:gusty_core>],[<botania:manaresource:5>,<contenttweaker:magical_slate>,<botania:manaresource:5>],[<botania:manaresource:5>,<contenttweaker:magical_slate>,<botania:manaresource:5>]]);

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
recipes.addShapedMirrored(<botania:clip>, [[null,<botania:dreamwood>,<botania:dreamwood>],[<botania:dreamwood>,<contenttweaker:purified_slate>,<botania:dreamwood>],[<botania:dreamwood>,<botania:dreamwood>,null]]);

# World Seed
recipes.remove(<botania:worldseed>);
recipes.addShaped(<botania:worldseed> * 4, [[null,<minecraft:grass>,null],[<botania:manaresource:9>,<enderutilities:enderpart:17>,<botania:manaresource:9>],[null,<botania:manaresource:9>,null]]);

# Overgrowth Seed
recipes.addShapeless(<botania:overgrowthseed>, [<minecraft:wheat_seeds>,<botania:manaresource:5>,<mysticalagriculture:mystical_fertilizer>]);

print("ENDING Botania.zs");