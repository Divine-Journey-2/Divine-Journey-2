#priority 100
# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.WeightedItemStack;

print("STARTING GlobalVariables.zs");

global relicDust as IItemStack = <contenttweaker:relic_dust>;
global relicIngot as IItemStack = <contenttweaker:relic_ingot>;
global relicOre as IItemStack = <atum:relic_ore>;
global relicBlock as IItemStack = <contenttweaker:relic_block>;

<ore:blockCharcoal>.removeItems([<mekanism:basicblock:3>,<actuallyadditions:block_misc:5>]);
global allCoalBlocks as IOreDictEntry = <ore:allCoalBlocks>;
allCoalBlocks.addAll(<ore:blockCoal>);
allCoalBlocks.addAll(<ore:blockCharcoal>);

<ore:dustCoal>.removeItems([<actuallyadditions:item_dust:6>,<enderio:item_material:23>,<bloodmagic:component:21>]);
global allCoalDusts as IOreDictEntry = <ore:allCoalDusts>;
allCoalDusts.addAll(<ore:dustCoal>);
allCoalDusts.addAll(<ore:dustCharcoal>);

global allDyes as IIngredient[] = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>];

<ore:plankWood>.addItems([<contenttweaker:planks_hyrewood>, <contenttweaker:planks_mintwood>, <contenttweaker:planks_firewood>]);
global vetheaPlanks as IOreDictEntry = <ore:vetheaPlankWood>;
vetheaPlanks.addItems([<contenttweaker:planks_hyrewood>, <contenttweaker:planks_mintwood>, <contenttweaker:planks_firewood>]);

global divinerpg_dimension_names_lower as string[] = ["eden", "wildwood", "apalachia", "skythern", "mortum"];
global divinerpg_galacticraft_dimension_names_upper as string[] = ["Eden", "Wildwood", "Apalachia", "Skythern", "Mortum", "Moon", "Venus Treasure", "Asteroids"];
# itemUtils.getItem("minecraft:apple");

global dimensional_stones as IItemStack[] = [<divinerpg:frozen_stone>,<divinerpg:twilight_stone>,<divinerpg:dream_stone>,<aether_legacy:holystone:*>,<atum:limestone>,<erebus:umberstone>,<abyssalcraft:stone:1>,<abyssalcraft:stone:2>,<abyssalcraft:stone:3>];

# Blood Orb Variables
global blood_orb_at_least_tier_1 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_2 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_3 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_4 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_5 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}) | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});
global blood_orb_at_least_tier_6 as IIngredient = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"});

# Custom Quartz Dust & Fluix references
global oreAE2Dust as IIngredient = <appliedenergistics2:material:2> | <appliedenergistics2:material:3>;
global allFluix as IIngredient = <appliedenergistics2:material:7> | <appliedenergistics2:material:12>;
global allCertus as IIngredient = <appliedenergistics2:material> | <appliedenergistics2:material:1> | <appliedenergistics2:material:10>;

# Thaumcraft aspects
global allThaumcraftAspects as string[] = ["aer", "terra", "ignis", "aqua", "ordo", "perditio", "vacuos", "lux", "motus", "gelum", "vitreus", "metallum", "victus", "mortuus", "potentia", "permutatio", "praecantatio", "auram", "alkimia", "vitium", "tenebrae", "alienis", "volatus", "herba", "instrumentum", "fabrico", "machina", "vinculum", "spiritus", "cognitio", "sensus", "aversio", "praemunio", "desiderium", "exanimis", "bestia", "humanus", "sol", "luna", "stellae", "diabolus"];

# AbyssalCraft Engraved Coins
<ore:engravedAbyssalCoin>.addItems([<abyssalcraft:cthulhucoin>,<abyssalcraft:eldercoin>,<abyssalcraft:jzaharcoin>,<abyssalcraft:hasturcoin>,<abyssalcraft:azathothcoin>,<abyssalcraft:nyarlathotepcoin>,<abyssalcraft:yogsothothcoin>,<abyssalcraft:shubniggurathcoin>]);

# Astral Sorcery Crystals
global as_crystal as IIngredient = <astralsorcery:itemrockcrystalsimple> | <astralsorcery:itemtunedrockcrystal> | <astralsorcery:itemcelestialcrystal> | <astralsorcery:itemtunedcelestialcrystal>;

# EnderIO regular or configued Basic Tank
global EIOFluidTank as IIngredient = <enderio:block_tank> | <enderio:block_tank>.withTag({"enderio:data": {tank: {Empty: "", Capacity: 16000}}});
global EIOPressurizedFluidTank as IIngredient = <enderio:block_tank:1> | <enderio:block_tank:1>.withTag({"enderio:data": {tank: {Empty: "", Capacity: 32000}}});

print("ENDING GlobalVariables.zs");
