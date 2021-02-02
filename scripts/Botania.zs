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
val dimensionalStones = [<divinerpg:frozen_stone>,<divinerpg:twilight_stone>,<minecraft:end_stone>,<aether_legacy:holystone:*>,<atum:limestone>,<erebus:umberstone>,<abyssalcraft:stone:1>,<abyssalcraft:stone:2>,<abyssalcraft:stone:3>] as IItemStack[];
for dim_stone in dimensionalStones {
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
recipes.addShapedMirrored(<botania:spreader>, [[<botania:livingwood>,<botania:livingwood>,<botania:livingwood>],[<contenttweaker:magical_core>,glod_crystal_block,<botania:livingwood>],[<botania:livingwood>,<botania:livingwood>,<botania:livingwood>]]);

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

print("ENDING Botania.zs");