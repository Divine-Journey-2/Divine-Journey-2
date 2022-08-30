# Author: WaitingIdly
# Inspired by Multiblock Madness [1] and Enigmatica 2 Expert Extended [2]
# 1 https://github.com/Filostorm/Multiblock-Madness
# 2 https://github.com/Krutoy242/Enigmatica2Expert-Extended

import mods.immersiveengineering.Excavator;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;


print("STARTING Excavator.zs");


// Remove existing minerals so they can be re-added to exclusively the overworld, Twilight Forest, and Deep Dark.
Excavator.removeMineral("Cassiterite");
Excavator.removeMineral("Coal");
Excavator.removeMineral("Copper");
Excavator.removeMineral("Cinnabar");
Excavator.removeMineral("Silt");
Excavator.removeMineral("Galena");
Excavator.removeMineral("Gold");
Excavator.removeMineral("Iron");
Excavator.removeMineral("Lapis");
Excavator.removeMineral("Lead");
Excavator.removeMineral("Magnetite");
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Pyrite");
Excavator.removeMineral("Quartzite");
Excavator.removeMineral("Silver");
Excavator.removeMineral("Platinum");
Excavator.removeMineral("Iridium");
Excavator.removeMineral("Uranium");
Excavator.removeMineral("Bauxite");


// List of all relevant dimensions for the excavator, in `id: name` format
static dimensionIdentifier as string[int] = {
    -11325: "Deep Dark",
    -31:    "Venus",
    -30:    "Asteroids",
    -29:    "Mars",
    -28:    "Moon",
    -9:     "Underworld",
    -1:     "Nether",
    0:      "Overworld",
    1:      "End",
    4:      "Aether",
    9:      "Twilight Forest",
    17:     "Atum",
    50:     "Abyssal Wasteland",
    51:     "Dreadlands",
    66:     "Erebus",
    420:    "Eden",
    421:    "Wildwood",
    422:    "Apalachia",
    423:    "Shythern",
    424:    "Mortum",
} as string[int];

// List of names and color codes for the rarities used, in `rarity: [name, color]` format
static rarityTable as string[][int] = {
     5: ["6", "Extremely Rare"],
    10: ["6", "Rare"],
    15: ["2", "Uncommon"],
    20: ["2", "Uncommon"],
    25: ["f", "Common"],
    30: ["f", "Common"],
    35: ["f", "Very Common"],
    50: ["f", "Extremely Common"],
} as string[][int];


// Add item inputs and outputs easily
function addSlots(a as Assembly, way as string, slots as int[][]) {
    for i, pair in slots {
        a.setJEIItemSlot(pair[0], pair[1], way ~ i);
    }
}

var excavator = <assembly:excavator>;
excavator.addJEICatalyst(<immersiveengineering:metal_multiblock:11>);
excavator.addJEICatalyst(<immersiveengineering:metal_multiblock:12>);
excavator.addJEICatalyst(<immersiveengineering:metal_device1:7>);
excavator.setJEIItemSlot(0, 0, "core_sample", SlotVisual.itemSlot());
excavator.setJEIDecoration(1, 0, "indicator_arrow", SlotVisual.arrowRight());
addSlots(excavator, "item_output", [[2,0], [3,0], [4,0], [5,0], [6,0], [7,0], [8,0], [9,0]]); // Adds 8 output slots

// Creates an excavator vein and adds it to JEI via a custom JEI category.
// While ores in a vein are limitless, due to restrictions, JEI can only display a maximum of 8.
function addExcavator(name as string, rarity as int, ores as string[], chances as double[], dims as int[]) as void {
    Excavator.addMineral(name, rarity, 0.005, ores, chances, dims);

    val recipe = AssemblyRecipe.create(function(container) {
        for i, entry in ores {
            val ore = oreDict.get(entry);
            if (!isNull(ore)) {
                // Multiplying the ore allows us to display the item chance
                container.addItemOutput("item_output" ~ i, ore.firstItem * (chances[i] * 100));
            }
        }
    });


    var locations = "Generates in the ";
    var dimNames as string[] = [] as string[];

    for i, dim in dims {
        dimNames += dimensionIdentifier[dim];
    }

    // A basic enumeration function, includes oxford comma
    if (dimNames.length == 1) locations = locations ~ dimNames[0];
    else if (dimNames.length == 2) locations = locations ~ dimNames[0] ~ " and " ~ dimNames[1];
    else {
        for i, dim in dimNames {
            locations = locations ~ dim;
            if (i != dimNames.length - 1) {
                locations = locations ~ ", ";
                if (i == dimNames.length - 2) locations = locations ~ "and ";
            }
        }
    }

    locations = locations ~ " Dimension";
    if (dimNames.length > 1) locations = locations ~ "s";

    recipe.requireItem("core_sample", <immersiveengineering:coresample>.withTag({
        display:{
            // The § symbol indicates special minecraft formatting
            Name: "§r§c" ~ name,
            Lore: [
                "§r§b" ~ locations,
                "§r§" ~ rarityTable[rarity][0] ~ rarityTable[rarity][1]
            ]
        },
        mineral: name,
    }));

    <assembly:excavator>.addJEIRecipe(recipe);
}


// Because the excavator only takes oredict entries, we have to add a unique oredict for every item we want to add
<ore:oreAsteroidsAluminum>.add(<galacticraftplanets:asteroids_block:3>);
<ore:oreAsteroidsIron>.add(<galacticraftplanets:asteroids_block:5>);

<ore:blockVenusVolcanicRock>.add(<galacticraftplanets:venus:2>);
<ore:blockVenusPumice>.add(<galacticraftplanets:venus:3>);
<ore:oreVenusAluminum>.add(<galacticraftplanets:venus:6>);
<ore:oreVenusCopper>.add(<galacticraftplanets:venus:7>);
<ore:oreVenusGalena>.add(<galacticraftplanets:venus:8>);
<ore:oreVenusQuartz>.add(<galacticraftplanets:venus:9>);
<ore:oreVenusSilicon>.add(<galacticraftplanets:venus:10>);
<ore:oreVenusTin>.add(<galacticraftplanets:venus:11>);

<ore:oreMarsCopper>.add(<galacticraftplanets:mars>);
<ore:oreMarsTin>.add(<galacticraftplanets:mars:1>);
<ore:oreMarsIron>.add(<galacticraftplanets:mars:3>);

<ore:oreMoonCopper>.add(<galacticraftcore:basic_block_moon>);
<ore:oreMoonTin>.add(<galacticraftcore:basic_block_moon:1>);
<ore:oreMoonSapphire>.add(<galacticraftcore:basic_block_moon:6>);

<ore:excavatorLavastone>.add(<chisel:lavastone>);
<ore:solidLava>.add(<abyssalcraft:solidlava>);
<ore:aerogel>.add(<aether_legacy:aerogel>);

<ore:oreUnderworldIron>.add(<lightningcraft:ore_block>);
<ore:oreUnderworldGold>.add(<lightningcraft:ore_block:1>);
<ore:oreUnderworldDiamond>.add(<lightningcraft:ore_block:2>);
<ore:oreUnderworldEmerald>.add(<lightningcraft:ore_block:3>);

<ore:oreAbyssalWastelandIron>.add(<abyssalcraft:abyiroore>);
<ore:oreAbyssalWastelandGold>.add(<abyssalcraft:abygolore>);
<ore:oreAbyssalWastelandTin>.add(<abyssalcraft:abytinore>);
<ore:oreAbyssalWastelandCopper>.add(<abyssalcraft:abycopore>);
<ore:oreAbyssalWastelandDiamond>.add(<abyssalcraft:abydiaore>);
<ore:oreAbyssalWastelandCoralium>.add(<abyssalcraft:abycorore>);

<ore:twilightStone>.add(<divinerpg:twilight_stone>);

<ore:oreAtumCoal>.add(<atum:coal_ore>);
<ore:oreAtumIron>.add(<atum:iron_ore>);
<ore:oreAtumGold>.add(<atum:gold_ore>);
<ore:oreAtumRedstone>.add(<atum:redstone_ore>);
<ore:oreAtumLapis>.add(<atum:lapis_ore>);
<ore:oreAtumDiamond>.add(<atum:diamond_ore>);
<ore:oreAtumEmerald>.add(<atum:emerald_ore>);
<ore:strangeSand>.add(<atum:sand>);

<ore:oreErebusCoal>.add(<erebus:ore_coal>);
<ore:oreErebusIron>.add(<erebus:ore_iron>);
<ore:oreErebusGold>.add(<erebus:ore_gold>);
<ore:oreErebusLapis>.add(<erebus:ore_lapis>);
<ore:oreErebusEmerald>.add(<erebus:ore_emerald>);
<ore:oreErebusQuartz>.add(<erebus:ore_quartz>);
<ore:oreErebusPetrifiedQuartz>.add(<erebus:ore_petrified_quartz>);
<ore:oreErebusEncrustedDiamond>.add(<erebus:ore_encrusted_diamond>);
<ore:oreErebusLead>.add(<erebus:ore_lead>);
<ore:oreErebusCopper>.add(<erebus:ore_copper>);
<ore:oreErebusTin>.add(<erebus:ore_tin>);
<ore:oreErebusSilver>.add(<erebus:ore_silver>);
<ore:oreErebusAluminium>.add(<erebus:ore_aluminium>);
<ore:oreErebusTemple>.add(<erebus:ore_temple>);
<ore:blockErebusAmber>.add(<erebus:amber>);
<ore:blockErebusGneiss>.add(<erebus:gneiss>);
<ore:erebusDutchCapMushroom>.add(<erebus:dutch_cap_mushroom>);
<ore:erebusGrandmasShoesMushroom>.add(<erebus:grandmas_shoes_mushroom>);
<ore:erebusDarkCappedMushroom>.add(<erebus:dark_capped_mushroom>);
<ore:erebusKaizersFingersMushroom>.add(<erebus:kaizers_fingers_mushroom>);
<ore:erebusSarcasticCzechMushroom>.add(<erebus:sarcastic_czech_mushroom>);
<ore:glowshroom>.add(<quark:glowshroom>);

<ore:oreEndBiotite>.add(<quark:biotite_ore>);

<ore:oreOverworldQuartz>.add(<mysticalworld:quartz_ore>);


addExcavator("Asteroids Illemite", 25, ["oreIlmenite", "oreAsteroidsAluminum"], [0.8, 0.2], [-30]);
addExcavator("Asteroids Iron", 25, ["oreAsteroidsIron"], [1.0], [-30]);
addExcavator("Asteroids Aluminum", 25, ["oreAsteroidsAluminum", "oreIlmenite"], [0.75, 0.25], [-30]);

addExcavator("Venus Solar", 25, ["oreSolar", "blockVenusVolcanicRock"], [0.8, 0.2], [-31]);
addExcavator("Venus Copper", 25, ["oreVenusCopper", "blockVenusVolcanicRock", "blockVenusPumice"], [0.8, 0.15, 0.05], [-31]);
addExcavator("Venus Aluminum", 25, ["oreVenusAluminum", "oreVenusTin", "blockVenusVolcanicRock"], [0.7, 0.25, 0.05], [-31]);
addExcavator("Venus Galena", 25, ["oreVenusGalena", "blockVenusVolcanicRock"], [0.9, 0.1], [-31]);
addExcavator("Venus Quartz", 25, ["oreVenusQuartz", "oreVenusSilicon", "blockVenusVolcanicRock", "blockVenusPumice"], [0.5, 0.35, 0.1, 0.05], [-31]);
addExcavator("Venus Silicon", 25, ["oreVenusQuartz", "oreVenusSilicon", "blockVenusVolcanicRock"], [0.3, 0.6, 0.1], [-31]);

addExcavator("Mars Desh", 25, ["oreDesh"], [1.0], [-29]);
addExcavator("Mars Copper", 25, ["oreMarsCopper", "oreMarsIron"], [0.7, 0.3], [-29]);
addExcavator("Mars Iron", 25, ["oreMarsIron", "oreMarsTin", "oreDesh"], [0.5, 0.3, 0.2], [-29]);

addExcavator("Moon Cheese", 25, ["oreCheese"], [1.0], [-28]);
addExcavator("Moon Sapphire", 25, ["oreMoonSapphire", "oreCheese"], [0.95, 0.05], [-28]);
addExcavator("Moon Copper", 25, ["oreMoonCopper", "oreMoonTin"], [0.65, 0.35], [-28]);
addExcavator("Moon Copper", 25, ["oreMoonTin", "oreCheese", "oreMoonSapphire"], [0.75, 0.20, 0.05], [-28]);

addExcavator("Aether Ambrosium", 25, ["oreGravitite", "oreZanite", "oreAmbrosium", "icestone"], [0.25, 0.3, 0.3, 0.15], [4]);
addExcavator("Aether Zanite", 25, ["oreZanite", "oreAmbrosium"], [0.5, 0.5], [4]);
addExcavator("Aether Gravitie", 25, ["oreGravitite"], [1.0], [4]);
addExcavator("Aether Aerogel", 25, ["icestone", "aerogel", "solidLava", "excavatorLavastone"], [0.2, 0.5, 0.1, 0.2], [4]);

addExcavator("Underworld Iron", 25, ["oreUnderworldIron"], [1.0], [-9]);
addExcavator("Underworld Gold", 25, ["oreUnderworldGold"], [1.0], [-9]);
addExcavator("Underworld Diamond", 25, ["oreUnderworldDiamond", "oreUnderworldEmerald"], [0.8, 0.2], [-9]);

addExcavator("Dreadlands", 25, ["oreDreadedAbyssalnite", "oreAbyssalnite"], [0.5, 0.5], [51]);

addExcavator("Abyssal Wasteland Iron", 25, ["oreAbyssalWastelandIron", "oreAbyssalWastelandTin", "oreAbyssalWastelandCoralium"], [0.4, 0.4, 0.2], [50]);
addExcavator("Abyssal Wasteland Gold", 25, ["oreAbyssalWastelandGold", "oreAbyssalWastelandCopper"], [0.7, 0.3], [50]);
addExcavator("Abyssal Wasteland Cassiterite", 25, ["oreAbyssalWastelandTin"], [1.0], [50]);
addExcavator("Abyssal Wasteland Diamond", 25, ["oreAbyssalWastelandDiamond", "oreAbyssalWastelandCoralium"], [0.6, 0.4], [50]);
addExcavator("Abyssal Wasteland Coralium", 25, ["oreAbyssalWastelandCoralium"], [1.0], [50]);
addExcavator("Abyssal Wasteland Coralium Pearls", 5, ["oreAbyssalWastelandCoralium", "orePearlescentCoralium"], [0.9, 0.1], [50]);

addExcavator("Twilight", 50, ["twilightStone"], [1.0], [420, 421, 422, 423, 424]);

addExcavator("Eden", 25, ["oreEden"], [1.0], [420]);

addExcavator("Wildwood", 25, ["oreWildwood"], [1.0], [421]);

addExcavator("Apalachia", 25, ["oreApalachia"], [1.0], [422]);

addExcavator("Skythern", 25, ["oreSkythern"], [1.0], [423]);

addExcavator("Mortum", 25, ["oreMortum"], [1.0], [424]);

addExcavator("Atum Coal", 25, ["oreAtumCoal", "oreAtumDiamond", "oreAtumEmerald"], [0.8, 0.15, 0.05], [17]);
addExcavator("Atum Diamond", 25, ["oreAtumDiamond", "oreAtumCoal", "oreAtumEmerald"], [0.7, 0.2, 0.1], [17]);
addExcavator("Atum Magnetite", 25, ["oreAtumIron", "oreAtumGold"], [0.85, 0.15], [17]);
addExcavator("Atum Lapis", 10, ["oreAtumLapis", "oreAtumIron", "oreBone"], [0.6, 0.3, 0.1], [17]);
addExcavator("Atum Redstone", 15, ["oreAtumRedstone", "oreBone", "strangeSand"], [0.75, 0.20, 0.05], [17]);
addExcavator("Atum Gold", 15, ["oreAtumGold", "oreRelic", "strangeSand"], [0.65, 0.25, 0.1], [17]);
addExcavator("Atum Relic", 15, ["oreRelic", "oreBone", "strangeSand"], [0.65, 0.25, 0.1], [17]);
addExcavator("Atum Oil", 15, ["oreClathrateOilSand", "sand"], [0.9, 0.1], [17]);

addExcavator("Erebus Mushrooms", 25, ["erebusDutchCapMushroom", "erebusGrandmasShoesMushroom", "erebusDarkCappedMushroom", "erebusKaizersFingersMushroom", "erebusSarcasticCzechMushroom", "glowshroom", "cropMushroomRed", "cropMushroomBrown"], [0.15, 0.15, 0.15, 0.15, 0.15, 0.05, 0.1, 0.1], [66]);
addExcavator("Erebus Iron", 25, ["oreErebusIron", "oreErebusTin"], [0.65, 0.35], [66]);
addExcavator("Erebus Magnetite", 25, ["oreErebusIron", "oreErebusGold"], [0.85, 0.15], [66]);
addExcavator("Erebus Copper", 30, ["oreErebusCopper", "oreErebusGold", "blockErebusAmber"], [0.65, 0.25, 0.1], [66]);
addExcavator("Erebus Fossil", 30, ["oreFossil", "blockErebusAmber", "oreErebusCoal", "oreErebusQuartz"], [0.65, 0.25, 0.05, 0.05], [66]);
addExcavator("Erebus Cassiterite", 15, ["oreErebusTin"], [1.0], [66]);
addExcavator("Erebus Gold", 20, ["oreErebusGold", "oreErebusCopper"], [0.65, 0.35], [66]);
addExcavator("Erebus Jade", 20, ["oreJade", "oreErebusEmerald"], [0.65, 0.35], [66]);
addExcavator("Erebus Lapis", 20, ["oreErebusLapis", "oreErebusIron", "oreGneiss"], [0.65, 0.3, 0.05], [66]);
addExcavator("Erebus Gneiss", 20, ["blockErebusGneiss", "oreErebusEncrustedDiamond"], [0.65, 0.35], [66]);
addExcavator("Erebus Aluminium", 20, ["oreErebusAluminium", "oreErebusTin"], [0.7, 0.3], [66]);
addExcavator("Erebus Galena", 20, ["oreErebusLead", "oreErebusSilver"], [0.50, 0.50], [66]);
addExcavator("Erebus Coal", 20, ["oreErebusCoal", "orePetrifiedWood", "oreErebusPetrifiedQuartz"], [0.7, 0.15, 0.15], [66]);
addExcavator("Erebus Temple", 20, ["oreErebusTemple", "orePetrifiedWood", "oreErebusPetrifiedQuartz"], [0.5, 0.25, 0.25], [66]);

addExcavator("End Biotite", 25, ["oreEndBiotite", "oreEndProsperity", "oreEndInferium"], [0.75, 0.15, 0.1], [1]);
addExcavator("End Prosperity", 25, ["oreEndProsperity", "oreEndInferium"], [0.5, 0.5], [1]);
addExcavator("End Resonant Clathrate", 25, ["oreEndBiotite", "oreEndProsperity", "oreClathrateEnder"], [0.25, 0.25, 0.5], [1]);

addExcavator("Nether Glowstone", 25, ["blockGlowstone", "oreClathrateGlowstone"], [0.7, 0.3], [-1]);
addExcavator("Nether Quartz", 25, ["oreQuartz", "oreNetherInferium", "oreNetherProsperity"], [0.7, 0.15, 0.15], [-1]);
addExcavator("Nether Iron", 25, ["oreNetherIron", "oreNetherTin", "dustSulfur"], [0.5, 0.25, 0.25], [-1]);
addExcavator("Nether Magnetite", 25, ["oreNetherIron", "oreNetherGold"], [0.85, 0.15], [-1]);
addExcavator("Nether Copper", 30, ["oreNetherCopper", "oreNetherGold", "blockGlowstone"], [0.65, 0.25, 0.1], [-1]);
addExcavator("Nether Cassiterite", 15, ["oreNetherTin"], [1.0], [-1]);
addExcavator("Nether Gold", 20, ["oreNetherGold", "oreNetherCopper", "blockGlowstone"], [0.65, 0.25, 0.1], [-1]);
addExcavator("Nether Coal", 25, ["oreNetherCoal", "oreNetherDiamond", "oreNetherEmerald"], [0.7, 0.25, 0.05], [-1]);
addExcavator("Nether Blood", 25, ["oreNetherRedstone", "oreArdite", "oreBloodgem", "oreNetherite"], [0.4, 0.2, 0.2, 0.2], [-1]);
addExcavator("Nether Lapis", 25, ["oreCobalt", "oreArdite", "oreCincinnasite"], [0.4, 0.3, 0.3], [-1]);
addExcavator("Nether Cobalt", 25, ["oreNetherLapis", "oreCincinnasite", "oreCobalt"], [0.5, 0.3, 0.2], [-1]);
addExcavator("Nether Cincinnasite", 25, ["oreCincinnasite", "dustSulfur"], [0.9, 0.1], [-1]);

addExcavator("Iron", 25, ["oreIron", "oreNickel", "oreTin"], [0.55, 0.25, 0.20], [0, 9, -11325]);
addExcavator("Magnetite", 25, ["oreIron", "oreGold"], [0.85, 0.15], [0, 9, -11325]);
addExcavator("Pyrite", 20, ["oreIron", "dustSulfur"], [0.5, 0.5], [0, 9, -11325]);
addExcavator("Copper", 30, ["oreCopper", "oreGold", "oreNickel"], [0.7, 0.25, 0.05], [0, 9, -11325]);
addExcavator("Cassiterite", 15, ["oreTin"], [1.0], [0, 9, -11325]);
addExcavator("Gold", 20, ["oreGold", "oreCopper", "oreNickel"], [0.65, 0.25, 0.1], [0, 9, -11325]);
addExcavator("Nickel", 20, ["oreNickel", "oreIron"], [0.85, 0.15], [0, 9, -11325]);
addExcavator("Yellorium", 10, ["oreYellorium"], [1.0], [0, 9, -11325]);
addExcavator("Quartzite", 5, ["oreOverworldQuartz", "oreCertusQuartz", "oreChargedCertusQuartz", "oreQuartzBlack"], [0.5, 0.35, 0.05, 0.1], [0, 9, -11325]);
addExcavator("Galena", 15, ["oreLead", "oreSilver"], [0.50, 0.50], [0, 9, -11325]);
addExcavator("Lapis", 10, ["oreLapis", "oreIron", "dustSulfur"], [0.65, 0.3, 0.05], [0, 9, -11325]);
addExcavator("Cinnabar", 15, ["oreRedstone", "oreCinnabar", "oreClathrateRedstone"], [0.65, 0.20, 0.15], [0, 9, -11325]);
addExcavator("Coal", 25, ["oreCoal", "oreDiamond", "oreEmerald"], [0.84, 0.15, 0.01], [0, 9, -11325]);
addExcavator("Silt", 25, ["blockClay", "blockSalt", "oreAquamarine", "sand", "gravel"], [0.3, 0.2, 0.1, 0.2, 0.2], [0, 9, -11325]);
addExcavator("Osmium", 35, ["oreOsmium", "oreIron"], [0.8, 0.2], [0, 9, -11325]);
addExcavator("Aluminum", 10, ["oreAluminum", "oreTin"], [0.7, 0.3], [0, 9, -11325]);
addExcavator("Inferium", 25, ["oreInferium", "oreProsperity"], [0.6, 0.4], [0, 9, -11325]);
addExcavator("Garnet", 25, ["oreGarnet", "oreRedstone", "oreAmethyst"], [0.5, 0.25, 0.25], [0, 9, -11325]);
addExcavator("Opal", 25, ["oreOpal", "oreDark"], [0.6, 0.4], [0, 9, -11325]);
addExcavator("Oilsand", 25, ["oreClathrateOilSand", "sand"], [0.9, 0.1], [0, 9, -11325]);
addExcavator("Oilgravel", 25, ["oreClathrateOilShale", "gravel"], [0.9, 0.1], [0, 9, -11325]);
addExcavator("Divine", 25, ["oreRupee", "oreRealmite", "oreArlemite"], [0.33, 0.33, 0.33], [0, 9, -11325]);
addExcavator("Amethyst", 25, ["oreAmethyst", "oreCinnabar", "oreDiamond"], [0.6, 0.3, 0.1], [0, 9, -11325]);
addExcavator("Coralium", 25, ["oreCoralium"], [1.0], [0, 9, -11325]);


print("ENDING Excavator.zs");
