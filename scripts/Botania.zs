# Author: Atricos

import crafttweaker.item.IItemStack;
import mods.bloodmagic.TartaricForge;
import mods.botania.Apothecary;
import mods.roots.Fey;
import mods.botania.PureDaisy;

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
# 100% =? 1,000,000
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <thermalfoundation:material:136>, 5000);

# Mana Pearl
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:1>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:1>, <appliedenergistics2:material:9>, 10000);

# Mana Diamond
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:2>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:2>, <quantumflux:craftingpiece:6>, 15000);

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

print("ENDING Botania.zs");