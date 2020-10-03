# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;

print("STARTING AbyssalCraft.zs");

# Iron Plate recipe conflicted with Immersive Engineering Iron Rod
recipes.removeShaped(<abyssalcraft:ironp>, [[<ore:ingotIron>],[<ore:ingotIron>]]);
recipes.addShapeless(<abyssalcraft:ironp>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <thermalfoundation:material:32>]);

# Monolith Stone
recipes.addShaped(<abyssalcraft:stone:7> * 4, [[<enderio:item_alloy_ingot:6>,<quantumflux:darkstone>,<enderio:item_alloy_ingot:6>],[<quantumflux:darkstone>,<extrautils2:decorativesolid:8>,<quantumflux:darkstone>],[<enderio:item_alloy_ingot:6>,<quantumflux:darkstone>,<enderio:item_alloy_ingot:6>]]);
<abyssalcraft:stone:7>.addTooltip(format.gray("Can be obtained by mining the walls of "));
<abyssalcraft:stone:7>.addTooltip(format.gray("Shoggoth dens, but can also be crafted."));

function add_abyssalcraft_statue_recipe(output as IItemStack, main_input as IItemStack) {
	recipes.addShaped(output, [[main_input,<abyssalcraft:shoggothflesh>,main_input],[main_input,<contenttweaker:unholy_essence>,main_input],[<abyssalcraft:stone:7>,<abyssalcraft:stone:7>,<abyssalcraft:stone:7>]]);
}

# Cthulu Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue>, <mysticalworld:raw_squid>);

# Hastur Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:1>, empowered_glod_crystal);

# J'zahar Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:2>, <enderutilities:enderpart:1>);

# Azathoth Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:3>, <appliedenergistics2:material:9>);

# Nyarlathotep Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:4>, <enderutilities:enderpart:2>);

# Yog-Sothoth Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:5>, <contenttweaker:steaming_restonia_crystal>);

# Shub-Niggurath Statue
add_abyssalcraft_statue_recipe(<abyssalcraft:statue:6>, <actuallyadditions:item_crystal_empowered:3>);

# Necronomicon
recipes.remove(<abyssalcraft:necronomicon>);
recipes.addShapeless(<abyssalcraft:necronomicon>.withTag({PotEnergy: 0.0 as float}), [<abyssalcraft:statue:2>.reuse(),<abyssalcraft:statue:3>.reuse(),<abyssalcraft:statue:4>.reuse(),<abyssalcraft:statue:1>.reuse(),<minecraft:book>,<abyssalcraft:statue:5>.reuse(),<abyssalcraft:statue:0>.reuse(),<abyssalcraft:shadowgem>,<abyssalcraft:statue:6>.reuse()]);
<abyssalcraft:necronomicon>.addTooltip(format.gray("Crafting doesn't consume the input Statues."));

# Ore Tooltips
<abyssalcraft:coraliumore>.addTooltip(format.white("Generates in Ocean and Swamp biomes."));
<abyssalcraft:abyore>.addTooltip(format.white("Generates in Darklands biomes."));

# ODB Core
recipes.remove(<abyssalcraft:odbcore>);

# Oblivion Deathbomb
recipes.remove(<abyssalcraft:odb>);

# Coralium Infused Stone
recipes.remove(<abyssalcraft:coraliumstone>);
recipes.addShaped(<abyssalcraft:coraliumstone>, [[<quantumflux:darkstone>,<abyssalcraft:ccluster9>,<quantumflux:darkstone>],[<abyssalcraft:ccluster9>,<ore:ingot_dark_soularium>,<abyssalcraft:ccluster9>],[<quantumflux:darkstone>,<abyssalcraft:ccluster9>,<quantumflux:darkstone>]]);

# Monolith Stone Pillar
recipes.remove(<abyssalcraft:monolithpillar>);
recipes.addShaped(<abyssalcraft:monolithpillar>, [[<abyssalcraft:stone:7>],[<abyssalcraft:stone:7>],[<abyssalcraft:stone:7>]]);

# Energy Collector
recipes.remove(<abyssalcraft:energycollector>);
mods.extendedcrafting.TableCrafting.addShaped(<abyssalcraft:energycollector>.withTag({PotEnergy: 0.0 as float}),
[[<abyssalcraft:stone:7>,<abyssalcraft:shadowgem>,<abyssalcraft:stone:7>],
[<enderutilities:enderpart:1>,<enderutilities:enderpart:1>,<enderutilities:enderpart:1>],
[<abyssalcraft:stone:7>,<abyssalcraft:monolithpillar>,<abyssalcraft:stone:7>],
[<abyssalcraft:stone:7>,<abyssalcraft:monolithpillar>,<abyssalcraft:stone:7>],
[<abyssalcraft:stone:7>,<abyssalcraft:monolithpillar>,<abyssalcraft:stone:7>]]);

# Energy Pedestal
recipes.remove(<abyssalcraft:energypedestal>);
mods.extendedcrafting.TableCrafting.addShaped(<abyssalcraft:energypedestal>.withTag({PotEnergy: 0.0 as float}),
[[<abyssalcraft:stone:7>,<enderutilities:enderpart:2>,<abyssalcraft:cpearl>,<enderutilities:enderpart:2>,<abyssalcraft:stone:7>],
[<abyssalcraft:stone:7>,<enderutilities:enderpart:2>,<abyssalcraft:cpearl>,<enderutilities:enderpart:2>,<abyssalcraft:stone:7>],
[null,<abyssalcraft:stone:7>,<enderutilities:enderpart:2>,<abyssalcraft:stone:7>,null],
[null,<abyssalcraft:stone:7>,<abyssalcraft:monolithpillar>,<abyssalcraft:stone:7>,null],
[null,<abyssalcraft:stone:7>,<abyssalcraft:monolithpillar>,<abyssalcraft:stone:7>,null]]);

# Energy Relay
recipes.remove(<abyssalcraft:energyrelay>);
mods.extendedcrafting.TableCrafting.addShaped(<abyssalcraft:energyrelay>.withTag({PotEnergy: 0.0 as float}),
[[<abyssalcraft:stone:7>,<abyssalcraft:stone:7>,<enderutilities:enderpart:1>,<abyssalcraft:shadowshard>,null],
[<abyssalcraft:stone:7>,<abyssalcraft:stone:7>,null,null,null],
[<abyssalcraft:stone:7>,<abyssalcraft:stone:7>,<abyssalcraft:shadowgem>,<enderutilities:enderpart:1>,<abyssalcraft:shadowshard>],
[<abyssalcraft:stone:7>,<abyssalcraft:stone:7>,null,null,null],
[<abyssalcraft:stone:7>,<abyssalcraft:stone:7>,<enderutilities:enderpart:1>,<abyssalcraft:shadowshard>,null]]);

# Sacrificial Altar
recipes.remove(<abyssalcraft:sacrificialaltar>);
mods.extendedcrafting.TableCrafting.addShaped(<abyssalcraft:sacrificialaltar>.withTag({PotEnergy: 0.0 as float}),
[[<abyssalcraft:stone:7>,<enderutilities:enderpart:2>,<enderutilities:enderpart:2>,<enderutilities:enderpart:2>,<abyssalcraft:stone:7>],
[<abyssalcraft:stone:7>,<abyssalcraft:shadowgem>,<abyssalcraft:cpearl>,<abyssalcraft:shadowgem>,<abyssalcraft:stone:7>],
[null,<abyssalcraft:stone:7>,<abyssalcraft:shadowgem>,<abyssalcraft:stone:7>,null],
[null,<abyssalcraft:stone:7>,<abyssalcraft:monolithpillar>,<abyssalcraft:stone:7>,null],
[null,<abyssalcraft:stone:7>,<abyssalcraft:monolithpillar>,<abyssalcraft:stone:7>,null]]);

# Energy Container
mods.abyssalcraft.InfusionRitual.removeRitual(<abyssalcraft:energycontainer>);
mods.abyssalcraft.InfusionRitual.addRitual("energyContainer", 0, -1, 800, false, <abyssalcraft:energycontainer>, <abyssalcraft:energypedestal>, [<abyssalcraft:energycollector>,<enderutilities:enderpart:2>,<abyssalcraft:energycollector>,<enderutilities:enderpart:2>,<abyssalcraft:energycollector>,<enderutilities:enderpart:2>,<abyssalcraft:energycollector>,<enderutilities:enderpart:2>], false, ["PotEnergy"]);
game.setLocalization("ac.ritual.energyContainer", "Energy Container");
game.setLocalization("ac.ritual.energyContainer.desc", "Create your first PE Storage multiblock!");

# Transmutation Gem
mods.abyssalcraft.InfusionRitual.removeRitual(<abyssalcraft:transmutationgem>);
mods.abyssalcraft.InfusionRitual.addRitual("transmutationGem", 0, -1, 1500, false, <abyssalcraft:transmutationgem>, <abyssalcraft:cpearl>, [<contenttweaker:empowered_crystal_bundle>,<actuallyadditions:item_crystal_empowered:1>,<contenttweaker:empowered_crystal_bundle>,<actuallyadditions:item_crystal_empowered:5>,<contenttweaker:empowered_crystal_bundle>,<actuallyadditions:item_crystal_empowered:1>,<contenttweaker:empowered_crystal_bundle>,<actuallyadditions:item_crystal_empowered:5>]);
game.setLocalization("ac.ritual.transmutationGem", "Transmutation Gem");
game.setLocalization("ac.ritual.transmutationGem.desc", "The Transmutation Gem is an essential ingredient with 10 durability that can transform various materials into more AbyssalCraft items.");

# Shard of Oblivion
recipes.remove(<abyssalcraft:oblivionshard>);
recipes.addShaped(<abyssalcraft:oblivionshard>, [[<abyssalcraft:shadowgem>,<contenttweaker:steaming_restonia_crystal>,<abyssalcraft:shadowgem>],[<contenttweaker:steaming_restonia_crystal>,<abyssalcraft:transmutationgem>.anyDamage().transformDamage(1),<contenttweaker:steaming_restonia_crystal>],[<abyssalcraft:shadowgem>,<contenttweaker:steaming_restonia_crystal>,<abyssalcraft:shadowgem>]]);

# Oblivion Catalyst
mods.abyssalcraft.InfusionRitual.removeRitual(<abyssalcraft:oc>);
mods.abyssalcraft.InfusionRitual.addRitual("oblivionCatalyst", 0, -1, 5000, true, <abyssalcraft:oc>, <enderutilities:enderpart:17>, [<enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}),<abyssalcraft:oblivionshard>,<enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}),<abyssalcraft:oblivionshard>,<enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}),<abyssalcraft:oblivionshard>,<enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}),<abyssalcraft:oblivionshard>], true);

# Gateway Key
recipes.remove(<abyssalcraft:gatewaykey>);
mods.extendedcrafting.TableCrafting.addShaped(<abyssalcraft:gatewaykey>,
[[null,<enderutilities:enderpart:17>,<abyssalcraft:cpearl>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:steaming_restonia_crystal_block>],
[null,null,<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:oc>,<contenttweaker:steaming_restonia_crystal_block>],
[null,empowered_glod_crystal_block,empowered_glod_crystal_block,<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:cpearl>],
[empowered_glod_crystal_block,empowered_glod_crystal_block,empowered_glod_crystal_block,null,<enderutilities:enderpart:17>],
[empowered_glod_crystal_block,empowered_glod_crystal_block,null,null,null]]);

# Staff of Rending
recipes.remove(<abyssalcraft:drainstaff>);
mods.extendedcrafting.TableCrafting.addShaped(<abyssalcraft:drainstaff>,
[[null,null,<abyssalcraft:shadowshard>,<abyssalcraft:oblivionshard>,null],
[null,null,<abyssalcraft:shadowgem>,<abyssalcraft:oblivionshard>,<abyssalcraft:oblivionshard>],
[null,null,<abyssalcraft:stone:7>,<abyssalcraft:shadowgem>,<abyssalcraft:shadowshard>],
[null,<abyssalcraft:stone:7>,null,null,null],
[<abyssalcraft:stone:7>,null,null,null,null]]);

# Powerstone Tracker
recipes.remove(<abyssalcraft:powerstonetracker>);
mods.immersiveengineering.ArcFurnace.addRecipe(<abyssalcraft:powerstonetracker>, <minecraft:ender_eye>, null, 40, 512, [<abyssalcraft:ccluster9>, <ore:blockOsmiridium>], "Alloying");
EIOAlloySmelter.addRecipe(<abyssalcraft:powerstonetracker>, [<minecraft:ender_eye>, <abyssalcraft:ccluster9>, <ore:blockOsmiridium>], 16000);

# Chunk of Coralium
recipes.remove(<abyssalcraft:cchunk>);
mods.immersiveengineering.ArcFurnace.addRecipe(<abyssalcraft:cchunk>, <abyssalcraft:ccluster9> * 9, null, 40, 512, [<abyssalcraft:stone:1> * 48, <enderutilities:enderpart> * 8], "Alloying");
EIOAlloySmelter.addRecipe(<abyssalcraft:cchunk>, [<abyssalcraft:ccluster9> * 9, <abyssalcraft:stone:1> * 48, <enderutilities:enderpart> * 8], 16000);

# Refined Coralium Sword
recipes.remove(<abyssalcraft:corsword>);
recipes.addShaped(<abyssalcraft:corsword>, [[<abyssalcraft:cingot>],[<abyssalcraft:cingot>],[<actuallyadditions:item_sword_crystal_green>]]);

# Refined Coralium Pickaxe
recipes.remove(<abyssalcraft:corpick>);
recipes.addShaped(<abyssalcraft:corpick>, [[<abyssalcraft:cingot>,<abyssalcraft:cingot>,<abyssalcraft:cingot>],[null,<actuallyadditions:item_pickaxe_crystal_green>,null],[null,<enderutilities:enderpart:20>,null]]);

# Refined Coralium Shovel
recipes.remove(<abyssalcraft:corshovel>);
recipes.addShaped(<abyssalcraft:corshovel>, [[<abyssalcraft:cingot>],[<actuallyadditions:item_shovel_crystal_green>],[<enderutilities:enderpart:20>]]);

# Refined Coralium Axe
recipes.remove(<abyssalcraft:coraxe>);
recipes.addShapedMirrored(<abyssalcraft:coraxe>, [[<abyssalcraft:cingot>,<abyssalcraft:cingot>],[<abyssalcraft:cingot>,<actuallyadditions:item_axe_crystal_green>],[null,<enderutilities:enderpart:20>]]);

# Refined Coralium Hoe
recipes.remove(<abyssalcraft:corhoe>);
recipes.addShapedMirrored(<abyssalcraft:corhoe>, [[<abyssalcraft:cingot>,<abyssalcraft:cingot>],[null,<actuallyadditions:item_hoe_crystal_green>],[null,<enderutilities:enderpart:20>]]);

# Coralium Bricks
recipes.removeShaped(<abyssalcraft:cstonebrick>);
recipes.addShaped(<abyssalcraft:cstonebrick>, [[null,<abyssalcraft:cbrick>,null],[<abyssalcraft:cbrick>,<abyssalcraft:stone:7>,<abyssalcraft:cbrick>],[null,<abyssalcraft:cbrick>,null]]);

# Coralium Stone
<abyssalcraft:stone:4>.addTooltip(format.white("To obtain, dump Liquid Antimatter over "));
<abyssalcraft:stone:4>.addTooltip(format.aqua("Liquid Coralium") + format.white(", and mine up the resulting Stone!"));

# Transmutator
recipes.remove(<abyssalcraft:transmutator>);
mods.extendedcrafting.TableCrafting.addShaped(<abyssalcraft:transmutator>,
[[<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>],
[<abyssalcraft:cstonebrick>,<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<abyssalcraft:cstonebrick>],
[<abyssalcraft:cstonebrick>,<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<abyssalcraft:cstonebrick>],
[<abyssalcraft:ingotblock:1>,<abyssalcraft:ingotblock:1>,<abyssalcraft:transmutationgem>.noReturn(),<abyssalcraft:ingotblock:1>,<abyssalcraft:ingotblock:1>],
[<abyssalcraft:ingotblock:1>,<abyssalcraft:ingotblock:1>,<enderutilities:enderpart:17>,<abyssalcraft:ingotblock:1>,<abyssalcraft:ingotblock:1>]]);

# Abyssal Waasteland Necronomicon
recipes.remove(<abyssalcraft:necronomicon_cor>);
recipes.addShaped("abyssalcraft_necronomicon_upgrade1", <abyssalcraft:necronomicon_cor>, [[<abyssalcraft:platec>,<abyssalcraft:cstonebrick>,<abyssalcraft:platec>],[<abyssalcraft:cstonebrick>,<abyssalcraft:necronomicon>.marked("necronomicon"),<abyssalcraft:cstonebrick>],[<abyssalcraft:platec>,<abyssalcraft:skin>,<abyssalcraft:platec>]],
function(out, ins, cInfo) {
	if(ins.necronomicon.tag has "PotEnergy") {
		return out.withTag(ins.necronomicon.tag);
	} else {
		return out;
	}
}, null);

# Eye of the Abyss
<abyssalcraft:eoa>.addTooltip(format.white("To obtain, summon and defeat Asorah, the Fallen "));
<abyssalcraft:eoa>.addTooltip(format.white("in the ") + format.darkGreen("Abyssal Wasteland") + format.white("."));
<abyssalcraft:eoa>.addTooltip(format.white("(You first need an Abyssal Wasteland  "));
<abyssalcraft:eoa>.addTooltip(format.white("Necronomicon. Open it, and read the )"));
<abyssalcraft:eoa>.addTooltip(format.white("Rituals/Abyssal Wasteland/Ritual of )"));
<abyssalcraft:eoa>.addTooltip(format.white("The Sleeper section.)"));

# Asorah, the Fallen
mods.abyssalcraft.SummonRitual.removeRitual("abyssalcraft:dragonboss");
mods.abyssalcraft.SummonRitual.addRitual("summonAsorah", 1, 1, 10000 as float, true, "abyssalcraft:dragonboss", [<enderutilities:enderpart:17>,<abyssalcraft:corflesh>,<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<abyssalcraft:corflesh>,<abyssalcraft:transmutationgem>,<abyssalcraft:corflesh>,<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<abyssalcraft:corflesh>] as IIngredient[], true);
game.setLocalization("ac.ritual.summonAsorah", "Ritual of The Sleeper");
game.setLocalization("ac.ritual.summonAsorah.desc", "Summons Asorah, The Fallen, from the Dark Realm. The afterlife is commonly referred to as an eternal slumber, in which a sleeper is an entity beyond life and death. Requires a pristine Transmutation Gem.");

# Coralium Plagued Flesh on a Bone -> Coralium Plagued Flesh and Tooltips
recipes.addShapeless(<abyssalcraft:corflesh>, [<abyssalcraft:corbone>]);
<abyssalcraft:corflesh>.addTooltip(format.white("Drops from Zombies in the Abyssal Wasteland."));
<abyssalcraft:corbone>.addTooltip(format.white("Drops from Skeletal Zombies in the Abyssal Wasteland."));

function add_abyssalcraft_overworld_PE_transfer_item_recipe(cur_tier as IItemStack, prev_tier as IItemStack, name as string) {
	mods.abyssalcraft.InfusionRitual.removeRitual(cur_tier);
	mods.abyssalcraft.InfusionRitual.addRitual(name, 0, -1, 1200 as float, false, cur_tier, prev_tier, [<abyssalcraft:shadowshard>,<extrautils2:compressedcobblestone:2>,<abyssalcraft:ccluster3>,<abyssalcraft:stone>,<abyssalcraft:shadowshard>,<extrautils2:compressedcobblestone:2>,<abyssalcraft:ccluster3>,<abyssalcraft:stone>] as IIngredient[], false, ["PotEnergy"]);
}

# Overworld Energy Collector
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredenergycollector>, <abyssalcraft:energycollector>, "ecolOWupgrade");

# Overworld Energy Pedestal
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredenergypedestal>, <abyssalcraft:energypedestal>, "epOWupgrade");

# Overworld Energy Relay
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredenergyrelay>, <abyssalcraft:energyrelay>, "erOWupgrade");

# Overworld Sacrificial Altar
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredsacrificialaltar>, <abyssalcraft:sacrificialaltar>, "saOWupgrade");

# Overworld Energy Container
add_abyssalcraft_overworld_PE_transfer_item_recipe(<abyssalcraft:tieredenergycontainer>, <abyssalcraft:energycontainer>, "econOWupgrade");

function add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(cur_tier as IItemStack, prev_tier as IItemStack, name as string) {
	mods.abyssalcraft.InfusionRitual.removeRitual(cur_tier);
	mods.abyssalcraft.InfusionRitual.addRitual(name, 1, 1, 2400 as float, false, cur_tier, prev_tier, [<abyssalcraft:shadowshard>,<abyssalcraft:cstonebrick>,<abyssalcraft:ccluster5>,<abyssalcraft:cingot>,<abyssalcraft:shadowshard>,<abyssalcraft:cstonebrick>,<abyssalcraft:ccluster5>,<abyssalcraft:cingot>] as IIngredient[], false, ["PotEnergy"]);
}

# Abyssal Wasteland Energy Collector
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredenergycollector:1>, <abyssalcraft:tieredenergycollector>, "ecolAWupgrade");

# Abyssal Wasteland Energy Pedestal
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredenergypedestal:1>, <abyssalcraft:tieredenergypedestal>, "epAWupgrade");

# Abyssal Wasteland Energy Relay
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredenergyrelay:1>, <abyssalcraft:tieredenergyrelay>, "erAWupgrade");

# Abyssal Wasteland Sacrificial Altar
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredsacrificialaltar:1>, <abyssalcraft:tieredsacrificialaltar>, "saAWupgrade");

# Abyssal Wasteland Energy Container
add_abyssalcraft_abyssal_wasteland_PE_transfer_item_recipe(<abyssalcraft:tieredenergycontainer:1>, <abyssalcraft:tieredenergycontainer>, "econAWupgrade");

# Asorah's Dreaded Gateway Key
mods.abyssalcraft.InfusionRitual.removeRitual(<abyssalcraft:gatewaykeydl>);
mods.abyssalcraft.InfusionRitual.addRitual("asorahGatewayKey", 1, 1, 10000, false, <abyssalcraft:gatewaykeydl>, <abyssalcraft:gatewaykey>, [<divinerpg:wildwood_heart>,<abyssalcraft:powerstonetracker>,<divinerpg:wildwood_heart>,<contenttweaker:feather_of_the_wild_woods>,<contenttweaker:feather_of_the_wild_woods>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:feather_of_the_wild_woods>,<contenttweaker:feather_of_the_wild_woods>]);

# Dreaded Shard of Abyssalnite
<abyssalcraft:dreadshard>.addTooltip(format.white("Dropped by ") + format.red("Dreadguards") + format.white(" in the Dreadlands."));

# Dread Fragment
<abyssalcraft:dreadfragment>.addTooltip(format.white("Dropped by Zombies in the Dreadlands."));

# Dread Cloth
recipes.remove(<abyssalcraft:dreadcloth>);
recipes.addShaped(<abyssalcraft:dreadcloth>, [[<ore:string>,<abyssalcraft:dreadfragment>,<ore:string>],[<abyssalcraft:dreadfragment>,<contenttweaker:industrial_leather>,<abyssalcraft:dreadfragment>],[<ore:string>,<abyssalcraft:dreadfragment>,<ore:string>]]);

# Dreadlands Necronomicon
recipes.remove(<abyssalcraft:necronomicon_dre>);
recipes.addShaped("abyssalcraft_necronomicon_upgrade2", <abyssalcraft:necronomicon_dre>, [[<abyssalcraft:dreadplate>,<abyssalcraft:dreadbrick>,<abyssalcraft:dreadplate>],[<abyssalcraft:dreadbrick>,<abyssalcraft:necronomicon_cor>.marked("necronomicon"),<abyssalcraft:dreadbrick>],[<abyssalcraft:dreadplate>,<abyssalcraft:skin:1>,<abyssalcraft:dreadplate>]],
function(out, ins, cInfo) {
	if(ins.necronomicon.tag has "PotEnergy") {
		return out.withTag(ins.necronomicon.tag);
	} else {
		return out;
	}
}, null);

# Dreadium Sword
recipes.remove(<abyssalcraft:dreadiumsword>);
recipes.addShaped(<abyssalcraft:dreadiumsword>, [[<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>],[<abyssalcraft:corsword>]]);

# Dreadium Pickaxe
recipes.remove(<abyssalcraft:dreadiumpickaxe>);
recipes.addShaped(<abyssalcraft:dreadiumpickaxe>, [[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>],[null,<abyssalcraft:corpick>,null],[null,<immersiveengineering:material:2>,null]]);

# Dreadium Axe
recipes.remove(<abyssalcraft:dreadiumaxe>);
recipes.addShapedMirrored(<abyssalcraft:dreadiumaxe>, [[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>,<abyssalcraft:coraxe>],[null,<immersiveengineering:material:2>]]);

# Dreadium Shovel
recipes.remove(<abyssalcraft:dreadiumshovel>);
recipes.addShaped(<abyssalcraft:dreadiumshovel>, [[<abyssalcraft:dreadiumingot>],[<abyssalcraft:corshovel>],[<immersiveengineering:material:2>]]);

# Dreadium Hoe
recipes.remove(<abyssalcraft:dreadiumhoe>);
recipes.addShapedMirrored(<abyssalcraft:dreadiumhoe>, [[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>],[null,<abyssalcraft:corhoe>],[null,<immersiveengineering:material:2>]]);

print("ENDING AbyssalCraft.zs");