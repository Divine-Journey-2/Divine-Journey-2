# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.thermalexpansion.Transposer;
import mods.bloodmagic.TartaricForge;
import mods.appliedenergistics2.Grinder;

print("STARTING AbyssalCraft.zs");

# Iron Plate recipe conflicted with Immersive Engineering Iron Rod
recipes.removeShaped(<abyssalcraft:ironp>, [[<ore:ingotIron>],[<ore:ingotIron>]]);
recipes.addShapeless(<abyssalcraft:ironp>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1), <thermalfoundation:material:32>]);

# Wooden Crate
recipes.remove(<abyssalcraft:crate>);
recipes.addShaped(<abyssalcraft:crate>, [[<ore:logWood>,<ore:plankWood>,<ore:logWood>],[<ore:plankWood>,<ore:chestWood>,<ore:plankWood>],[<ore:logWood>,<ore:plankWood>,<ore:logWood>]]);

# Monolith Stone
recipes.addShaped(<abyssalcraft:stone:7> * 32, [[<enderio:item_alloy_ingot:6>,<quantumflux:darkstone>,<enderio:item_alloy_ingot:6>],[<quantumflux:darkstone>,<extrautils2:decorativesolid:8>,<quantumflux:darkstone>],[<enderio:item_alloy_ingot:6>,<quantumflux:darkstone>,<enderio:item_alloy_ingot:6>]]);
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

# Coralium Gem Cluster itemstack amounts
<abyssalcraft:ccluster2>.maxStackSize = 64;
<abyssalcraft:ccluster3>.maxStackSize = 64;
<abyssalcraft:ccluster4>.maxStackSize = 64;
<abyssalcraft:ccluster5>.maxStackSize = 64;
<abyssalcraft:ccluster6>.maxStackSize = 64;
<abyssalcraft:ccluster7>.maxStackSize = 64;
<abyssalcraft:ccluster8>.maxStackSize = 64;
<abyssalcraft:ccluster9>.maxStackSize = 64;

# ODB Core
recipes.remove(<abyssalcraft:odbcore>);

# Oblivion Deathbomb
recipes.remove(<abyssalcraft:odb>);

# Coralium Infused Stone
recipes.remove(<abyssalcraft:coraliumstone>);
recipes.addShaped(<abyssalcraft:coraliumstone> * 4, [[<quantumflux:darkstone>,<abyssalcraft:ccluster9>,<quantumflux:darkstone>],[<abyssalcraft:ccluster9>,<ore:ingot_dark_soularium>,<abyssalcraft:ccluster9>],[<quantumflux:darkstone>,<abyssalcraft:ccluster9>,<quantumflux:darkstone>]]);

# Monolith Stone Pillar
recipes.remove(<abyssalcraft:monolithpillar>);
recipes.addShaped(<abyssalcraft:monolithpillar>, [[<abyssalcraft:stone:7>],[<abyssalcraft:stone:7>],[<abyssalcraft:stone:7>]]);

# Shoggoth Flesh
mods.thermalexpansion.Transposer.addFillRecipe(<abyssalcraft:shoggothflesh>, <minecraft:rotten_flesh>, <liquid:empoweredoil> * 500, 8000);

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
mods.abyssalcraft.InfusionRitual.addRitual("oblivionCatalyst", 0, -1, 5000, true, <abyssalcraft:oc>, <enderutilities:enderpart:17>, [<enderio:item_capacitor_melodic>,<abyssalcraft:oblivionshard>,<enderio:item_capacitor_melodic>,<abyssalcraft:oblivionshard>,<enderio:item_capacitor_melodic>,<abyssalcraft:oblivionshard>,<enderio:item_capacitor_melodic>,<abyssalcraft:oblivionshard>], true);

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
mods.immersiveengineering.ArcFurnace.addRecipe(<abyssalcraft:cchunk> * 4, <abyssalcraft:ccluster9> * 9, null, 40, 512, [<abyssalcraft:stone:1> * 48, <enderutilities:enderpart> * 8], "Alloying");
#EIOAlloySmelter.addRecipe(<abyssalcraft:cchunk> * 4, [<abyssalcraft:ccluster9> * 9, <abyssalcraft:stone:1> * 48, <enderutilities:enderpart> * 8], 16000);
# Alloy Smelter recipe in config/enderio/recipes/user/user_recipes.xml

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
<abyssalcraft:stone:4>.addTooltip(format.white("Coralium Cobblestone can be found in the Abyssal Wasteland."));
<abyssalcraft:stone:4>.addTooltip(format.white("You can also obtain this by dumping Liquid Antimatter"));
<abyssalcraft:stone:4>.addTooltip(format.white("over ") + format.aqua("Liquid Coralium") + format.white(", and mining up the resulting Stone!"));
<abyssalcraft:stone:4>.addTooltip(format.white("(If you can't find any Liquid Antimatter, use the"));
<abyssalcraft:stone:4>.addTooltip(format.white("Anti Milking Ritual in the Abyssal Wasteland.)"));

# Transmutator
recipes.remove(<abyssalcraft:transmutator>);
mods.extendedcrafting.TableCrafting.addShaped(<abyssalcraft:transmutator>,
[[<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>],
[<abyssalcraft:cstonebrick>,<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<abyssalcraft:cstonebrick>],
[<abyssalcraft:cstonebrick>,<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<abyssalcraft:cstonebrick>],
[<abyssalcraft:ingotblock:1>,<abyssalcraft:ingotblock:1>,<abyssalcraft:transmutationgem:*>,<abyssalcraft:ingotblock:1>,<abyssalcraft:ingotblock:1>],
[<abyssalcraft:ingotblock:1>,<abyssalcraft:ingotblock:1>,<enderutilities:enderpart:17>,<abyssalcraft:ingotblock:1>,<abyssalcraft:ingotblock:1>]]);

# Abyssal Wasteland Necronomicon
recipes.remove(<abyssalcraft:necronomicon_cor>);
/*
recipes.addShaped("abyssalcraft_necronomicon_upgrade1", <abyssalcraft:necronomicon_cor>, [[<abyssalcraft:platec>,<abyssalcraft:cstonebrick>,<abyssalcraft:platec>],[<abyssalcraft:cstonebrick>,<abyssalcraft:necronomicon>.marked("necronomicon"),<abyssalcraft:cstonebrick>],[<abyssalcraft:platec>,<abyssalcraft:skin>,<abyssalcraft:platec>]],
function(out, ins, cInfo) {
	return out.withTag(ins.necronomicon.tag);
}, null);
*/
recipes.addShaped(<abyssalcraft:necronomicon_cor>, [[<abyssalcraft:platec>,<abyssalcraft:cstonebrick>,<abyssalcraft:platec>],[<abyssalcraft:cstonebrick>,<abyssalcraft:necronomicon>,<abyssalcraft:cstonebrick>],[<abyssalcraft:platec>,<abyssalcraft:skin>,<abyssalcraft:platec>]]);


# Eye of the Abyss
<abyssalcraft:eoa>.addTooltip(format.white("To obtain, summon and defeat Asorah,"));
<abyssalcraft:eoa>.addTooltip(format.white("the Fallen in the ") + format.darkGreen("Abyssal Wasteland") + format.white("."));
<abyssalcraft:eoa>.addTooltip(format.white("(You first need an Abyssal Wasteland  "));
<abyssalcraft:eoa>.addTooltip(format.white("Necronomicon. Open it, and read the "));
<abyssalcraft:eoa>.addTooltip(format.white("Rituals/Abyssal Wasteland/Ritual of "));
<abyssalcraft:eoa>.addTooltip(format.white("The Sleeper section.)"));

# Asorah, the Fallen
mods.abyssalcraft.SummonRitual.removeRitual("abyssalcraft:dragonboss");
mods.abyssalcraft.SummonRitual.addRitual("summonAsorah", 1, 50, 10000 as float, true, "abyssalcraft:dragonboss", [<enderutilities:enderpart:17>,<abyssalcraft:corflesh>,<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<abyssalcraft:corflesh>,<abyssalcraft:transmutationgem:*>,<abyssalcraft:corflesh>,<openblocks:tank>.withTag({tank: {FluidName: "liquidcoralium", Amount: 16000}}),<abyssalcraft:corflesh>] as IIngredient[], true);
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
	mods.abyssalcraft.InfusionRitual.addRitual(name, 1, 50, 2400 as float, false, cur_tier, prev_tier, [<abyssalcraft:shadowshard>,<abyssalcraft:cstonebrick>,<abyssalcraft:ccluster5>,<abyssalcraft:cingot>,<abyssalcraft:shadowshard>,<abyssalcraft:cstonebrick>,<abyssalcraft:ccluster5>,<abyssalcraft:cingot>] as IIngredient[], false, ["PotEnergy"]);
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
mods.abyssalcraft.InfusionRitual.addRitual("asorahGatewayKey", 1, 50, 10000, false, <abyssalcraft:gatewaykeydl>, <abyssalcraft:gatewaykey>, [<divinerpg:wildwood_heart>,<abyssalcraft:powerstonetracker>,<divinerpg:wildwood_heart>,<contenttweaker:feather_of_the_wild_woods>,<contenttweaker:feather_of_the_wild_woods>,<contenttweaker:steaming_restonia_crystal_block>,<contenttweaker:feather_of_the_wild_woods>,<contenttweaker:feather_of_the_wild_woods>]);

# Dreaded Shard of Abyssalnite
<abyssalcraft:dreadshard>.addTooltip(format.white("Dropped by ") + format.red("Dreadguards") + format.white(" in the Dreadlands."));

# Dread Fragment
<abyssalcraft:dreadfragment>.addTooltip(format.white("Dropped by Zombies in the Dreadlands."));

# Dread Cloth
recipes.remove(<abyssalcraft:dreadcloth>);
recipes.addShaped(<abyssalcraft:dreadcloth>, [[<ore:string>,<abyssalcraft:dreadfragment>,<ore:string>],[<abyssalcraft:dreadfragment>,<contenttweaker:industrial_leather>,<abyssalcraft:dreadfragment>],[<ore:string>,<abyssalcraft:dreadfragment>,<ore:string>]]);

# Dreadlands Necronomicon
recipes.remove(<abyssalcraft:necronomicon_dre>);
/*
recipes.addShaped("abyssalcraft_necronomicon_upgrade2", <abyssalcraft:necronomicon_dre>, [[<abyssalcraft:dreadplate>,<abyssalcraft:dreadbrick>,<abyssalcraft:dreadplate>],[<abyssalcraft:dreadbrick>,<abyssalcraft:necronomicon_cor>.marked("necronomicon"),<abyssalcraft:dreadbrick>],[<abyssalcraft:dreadplate>,<abyssalcraft:skin:1>,<abyssalcraft:dreadplate>]],
function(out, ins, cInfo) {
	return out.withTag(ins.necronomicon.tag);
}, null);
*/
recipes.addShaped(<abyssalcraft:necronomicon_dre>, [[<abyssalcraft:dreadplate>,<abyssalcraft:dreadbrick>,<abyssalcraft:dreadplate>],[<abyssalcraft:dreadbrick>,<abyssalcraft:necronomicon_cor>,<abyssalcraft:dreadbrick>],[<abyssalcraft:dreadplate>,<abyssalcraft:skin:1>,<abyssalcraft:dreadplate>]]);


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

# Removing Materializer Sapling recipes
val non_materializable_saplings = [<totemic:cedar_sapling>,<traverse:red_autumnal_sapling>,<traverse:brown_autumnal_sapling>,<traverse:orange_autumnal_sapling>,<traverse:yellow_autumnal_sapling>] as IItemStack[];
for sapling in <ore:treeSapling>.items {
	if(!(non_materializable_saplings has sapling)) {
		mods.abyssalcraft.Materializer.removeMaterialization(sapling);
	}
}

# Dreadlands Infused Powerstone tooltip
<abyssalcraft:psdl>.addTooltip(format.white("To obtain, craft a ") + format.darkAqua("Refined Coralium Pickaxe") + format.white(" and about 6"));
<abyssalcraft:psdl>.addTooltip(format.darkAqua("Powerstone Trackers") + format.white(", then enter the ") + format.darkAqua("Abyssal Wasteland") + format.white(", find"));
<abyssalcraft:psdl>.addTooltip(format.white("the ") + format.darkAqua("Abyssal Stronghold") + format.white(" with your ") + format.darkAqua("Powerstone Trackers") + format.white(","));
<abyssalcraft:psdl>.addTooltip(format.white("and in the center mine up your ") + format.red("Dreadlands Infused Powerstone") + format.white("!"));

# Chunk of Abyssalnite
<abyssalcraft:abychunk>.addTooltip(format.white("Dropped by ") + format.red("Abyssalnite Golems") + format.white(" in the Dreadlands."));

# Dreaded Chunk of Abyssalnite
<abyssalcraft:dreadchunk>.addTooltip(format.white("Dropped by ") + format.red("Dreaded Abyssalnite Golems") + format.white(" in the Dreadlands."));

# Altar of Cha'garoth (bottom)
mods.abyssalcraft.CreationRitual.removeRitual(<abyssalcraft:dreadaltarbottom>);
mods.abyssalcraft.InfusionRitual.addRitual("altarOfChagarothBottom", 2, 51, 20000, true, <abyssalcraft:dreadaltarbottom>, <divinerpg:apalachia_heart>, [<contenttweaker:effulgent_apalachian_spike_crown>,<contenttweaker:hybrid_abyssalium_block>,<contenttweaker:dark_core>,<contenttweaker:hybrid_abyssalium_block>,<abyssalcraft:gatewaykeydl>,<contenttweaker:hybrid_abyssalium_block>,<contenttweaker:suppression_core>,<contenttweaker:hybrid_abyssalium_block>], false);

# Altar of Cha'garoth (top)
mods.abyssalcraft.CreationRitual.removeRitual(<abyssalcraft:dreadaltartop>);
mods.abyssalcraft.InfusionRitual.addRitual("altarOfChagarothTop", 2, 51, 20000, true, <abyssalcraft:dreadaltartop>, <divinerpg:apalachia_heart>, [<divinerpg:apalachia_chunk>,<divinerpg:apalachia_chunk>,<contenttweaker:hybrid_abyssalium_block>,<abyssalcraft:dreadcloth>,<abyssalcraft:dreadcloth>,<abyssalcraft:dreadcloth>,<contenttweaker:hybrid_abyssalium_block>,<divinerpg:apalachia_chunk>], false);

# Crystallizer
recipes.remove(<abyssalcraft:crystallizer>);
mods.extendedcrafting.TableCrafting.addShaped(<abyssalcraft:crystallizer>,
[[<abyssalcraft:ingotblock:2>,<abyssalcraft:ingotblock:2>,<abyssalcraft:ingotblock:2>,<abyssalcraft:ingotblock:2>,<abyssalcraft:ingotblock:2>],
[<abyssalcraft:ingotblock:2>,<bloodmagic:item_demon_crystal:3>,<bloodmagic:item_demon_crystal:2>,<bloodmagic:item_demon_crystal:3>,<abyssalcraft:ingotblock:2>],
[<abyssalcraft:ingotblock:2>,<extrautils2:drum:3>,<bloodmagic:demon_crystallizer>,<extrautils2:drum:3>,<abyssalcraft:ingotblock:2>],
[<abyssalcraft:ingotblock:2>,<bloodmagic:item_demon_crystal:3>,<bloodmagic:item_demon_crystal:2>,<bloodmagic:item_demon_crystal:3>,<abyssalcraft:ingotblock:2>],
[<abyssalcraft:ingotblock:2>,<abyssalcraft:ingotblock:2>,<abyssalcraft:ingotblock:2>,<abyssalcraft:ingotblock:2>,<abyssalcraft:ingotblock:2>]]);

# Dread-plagued Gateway Key
<abyssalcraft:dreadkey>.maxStackSize = 1;
<abyssalcraft:dreadkey>.addTooltip(format.white("Dropped by ") + format.red("Cha'garoth") + format.white(" at the end of the ") + format.red("Dreadlands"));
<abyssalcraft:dreadkey>.addTooltip(format.white("dungeon. You can enter it by placing down the "));
<abyssalcraft:dreadkey>.addTooltip(format.red("Altar of Cha'garoth (bottom & top)") + format.white(" at Y=40 in"));
<abyssalcraft:dreadkey>.addTooltip(format.white("in a Dreadlands Mountains biome."));

# Cha'garoth's R'lyehian Gateway Key
mods.abyssalcraft.Transmutator.removeTransmutationInput(<abyssalcraft:dreadkey>);
mods.bloodmagic.TartaricForge.addRecipe(<abyssalcraft:gatewaykeyjzh>, [<abyssalcraft:dreadkey>,<contenttweaker:angelic_silicon_crystal_block>,<contenttweaker:crystallized_mana_cluster>,<abyssalcraft:platec>], 2048, 2048);

# Fixing some Crystallizer recipes
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:nitreore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<minecraft:lapis_ore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<minecraft:coal_ore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<minecraft:redstone_ore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:abynitore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:abycorore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:abylcorore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:coraliumore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:cchunk>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<abyssalcraft:cchunk>, <abyssalcraft:crystal:13>, 0.1);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:coralium>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:corbone>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<abyssalcraft:corbone>, <abyssalcraft:crystalshard:7> * 12, 0.2);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:shoggothflesh:1>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<abyssalcraft:shoggothflesh:1>, <abyssalcraft:crystalshard:7> * 8, 0.2);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:corflesh>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<abyssalcraft:corflesh>, <abyssalcraft:crystalshard:7> * 8, 0.2);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:dreadore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:charcoal>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:shoggothflesh:2>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<abyssalcraft:shoggothflesh:2>, <abyssalcraft:crystalshard:7> * 8, 0.2);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:abydreadore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:abyore>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<thaumcraft:nugget>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<agricraft:agri_nugget:3>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<immersiveengineering:metal:29>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<enderio:item_material:23>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<actuallyadditions:item_dust:6>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<bloodmagic:component:21>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<actuallyadditions:block_misc:5>, <abyssalcraft:crystalcluster:3>, 0.9);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<minecraft:blaze_rod>, <abyssalcraft:crystalshard:15> * 20, 0.5);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<botania:blazeblock>, <abyssalcraft:crystal:15> * 20, 1.0);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<thermalfoundation:material:129>, <abyssalcraft:crystal:16>, 0.1);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<mekanism:nugget:6>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<thaumcraft:nugget:2>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<agricraft:agri_nugget:5>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<mekanism:nugget:2>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<galacticraftcore:basic_block_core:9>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<thaumcraft:nugget:1>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<mekanism:nugget:5>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<agricraft:agri_nugget:4>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<galacticraftcore:basic_block_core:13>, <abyssalcraft:crystalcluster2:2>, 0.9);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<appliedenergistics2:material:5>, <abyssalcraft:crystal:18>, 0.1);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<galacticraftcore:basic_block_core:7>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<immersiveengineering:ore:1>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<thermalfoundation:ore:4>);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<erebus:ore_aluminium>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<thermalfoundation:storage:4>, <abyssalcraft:crystalcluster2:4>, 0.9);
mods.abyssalcraft.Crystallizer.removeCrystallizationOutput(<mekanism:crystal:3>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<thermalfoundation:material:128>, <abyssalcraft:crystal:17>, 0.1);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<thermalfoundation:material:64>, <abyssalcraft:crystal:17>, 0.1);
mods.abyssalcraft.Crystallizer.removeCrystallizationOutput(<mekanism:crystal>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<minecraft:iron_ingot>, <abyssalcraft:crystal>, 0.1);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<thermalfoundation:material>, <abyssalcraft:crystal>, 0.1);
mods.abyssalcraft.Crystallizer.removeCrystallizationOutput(<mekanism:crystal:1>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<thermalfoundation:material:1>, <abyssalcraft:crystal:1>, 0.1);
mods.abyssalcraft.Crystallizer.removeCrystallizationOutput(<mekanism:crystal:4>);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<thermalfoundation:material:65>, <abyssalcraft:crystal:16>, 0.1);
mods.abyssalcraft.Crystallizer.addCrystallization(<thermalfoundation:storage_alloy:3>, <abyssalcraft:crystal:17> * 6, <abyssalcraft:crystal:16> * 2, 0.9);
mods.abyssalcraft.Crystallizer.addCrystallization(<thaumcraft:ingot:2>, <abyssalcraft:crystalshard:17> * 6, <contenttweaker:crystallized_sodium_shard> * 2, 0.1);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<thaumcraft:nugget:8>);
mods.abyssalcraft.Crystallizer.addCrystallization(<thaumcraft:nugget:8>, <abyssalcraft:crystalfragment:17> * 6, <contenttweaker:crystallized_sodium_fragment> * 2, 0.1);
mods.abyssalcraft.Crystallizer.addCrystallization(<thermalfoundation:material:163>, <abyssalcraft:crystalshard:17> * 6, <abyssalcraft:crystalshard:16> * 2, 0.1);
mods.abyssalcraft.Crystallizer.addCrystallization(<thermalfoundation:material:99>, <abyssalcraft:crystalshard:17> * 6, <abyssalcraft:crystalshard:16> * 2, 0.1);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<thermalfoundation:material:227>);
mods.abyssalcraft.Crystallizer.addCrystallization(<thermalfoundation:material:227>, <abyssalcraft:crystalfragment:17> * 6, <abyssalcraft:crystalfragment:16> * 2, 0.1);
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<alchemistry:ingot:4>, <abyssalcraft:crystal:26>, 0.1);
mods.abyssalcraft.Crystallizer.removeCrystallizationInput(<abyssalcraft:methane>);
mods.abyssalcraft.Crystallizer.addCrystallization(<abyssalcraft:methane>, <abyssalcraft:crystal:3> * 9, <abyssalcraft:crystal:5> * 36, 0.1);

# Additional Methane recipe
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<roots:unending_bowl>, <abyssalcraft:crystal:10> * 32, 0.1);

# Transmutator recipes
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystal:2>, <thermalfoundation:material:771>, 0.1);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystal:3>, <minecraft:coal>, 0.1);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystalcluster:3>, <minecraft:coal_block>, 0.9);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystal:18>, <appliedenergistics2:material:5>, 0.1);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystalcluster2:2>, <galacticraftcore:basic_block_core:13>, 0.9);

# Quartz Gindstone Crystal output removal
Grinder.removeRecipe(<abyssalcraft:crystal>);
Grinder.removeRecipe(<abyssalcraft:crystal:1>);
Grinder.removeRecipe(<abyssalcraft:crystal:17>);
Grinder.removeRecipe(<abyssalcraft:crystal:20>);

# Chemical Injection Chamber output removal
mods.mekanism.chemical.injection.removeRecipe(<mekanism:shard>, <abyssalcraft:crystal>);
mods.mekanism.chemical.injection.removeRecipe(<mekanism:shard:1>, <abyssalcraft:crystal:1>);
mods.mekanism.chemical.injection.removeRecipe(<mekanism:shard:4>, <abyssalcraft:crystal:16>);
mods.mekanism.chemical.injection.removeRecipe(<mekanism:shard:3>, <abyssalcraft:crystal:17>);

# Materializer
recipes.remove(<abyssalcraft:materializer>);

# OP Transmutator recipes
mods.abyssalcraft.Transmutator.removeTransmutationOutput(<alchemistry:ingot:12>);
mods.abyssalcraft.Transmutator.removeTransmutationOutput(<alchemistry:ingot:20>);
mods.abyssalcraft.Transmutator.removeTransmutationOutput(<alchemistry:ingot:30>);
mods.abyssalcraft.Transmutator.removeTransmutationOutput(<minecraft:ice>);

# Refined Coralium Helmet
recipes.remove(<abyssalcraft:corhelmet>);
recipes.addShaped(<abyssalcraft:corhelmet>, [[<abyssalcraft:cingot>,<abyssalcraft:cingot>,<abyssalcraft:cingot>],[<abyssalcraft:cingot>,<actuallyadditions:item_helm_crystal_green>,<abyssalcraft:cingot>]]);

# Refined Coralium Chestplate
recipes.remove(<abyssalcraft:corplate>);
recipes.addShaped(<abyssalcraft:corplate>, [[<abyssalcraft:cingot>,<actuallyadditions:item_chest_crystal_green>,<abyssalcraft:cingot>],[<abyssalcraft:cingot>,<abyssalcraft:cingot>,<abyssalcraft:cingot>],[<abyssalcraft:cingot>,<abyssalcraft:cingot>,<abyssalcraft:cingot>]]);

# Refined Coralium Leggings
recipes.remove(<abyssalcraft:corlegs>);
recipes.addShaped(<abyssalcraft:corlegs>, [[<abyssalcraft:cingot>,<abyssalcraft:cingot>,<abyssalcraft:cingot>],[<abyssalcraft:cingot>,<actuallyadditions:item_pants_crystal_green>,<abyssalcraft:cingot>],[<abyssalcraft:cingot>,null,<abyssalcraft:cingot>]]);

# Refined Coralium Boots
recipes.remove(<abyssalcraft:corboots>);
recipes.addShaped(<abyssalcraft:corboots>, [[<abyssalcraft:cingot>,null,<abyssalcraft:cingot>],[<abyssalcraft:cingot>,<actuallyadditions:item_boots_crystal_green>,<abyssalcraft:cingot>]]);

# Dreadium Helmet
recipes.remove(<abyssalcraft:dreadiumhelmet>);
recipes.addShaped(<abyssalcraft:dreadiumhelmet>, [[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>,<abyssalcraft:corhelmet>,<abyssalcraft:dreadiumingot>]]);

# Dreadium Chestplate
recipes.remove(<abyssalcraft:dreadiumplate>);
recipes.addShaped(<abyssalcraft:dreadiumplate>, [[<abyssalcraft:dreadiumingot>,<abyssalcraft:corplate>,<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>]]);

# Dreadium Leggings
recipes.remove(<abyssalcraft:dreadiumlegs>);
recipes.addShaped(<abyssalcraft:dreadiumlegs>, [[<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>,<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>,<abyssalcraft:corlegs>,<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>,null,<abyssalcraft:dreadiumingot>]]);

# Dreadium Boots
recipes.remove(<abyssalcraft:dreadiumboots>);
recipes.addShaped(<abyssalcraft:dreadiumboots>, [[<abyssalcraft:dreadiumingot>,null,<abyssalcraft:dreadiumingot>],[<abyssalcraft:dreadiumingot>,<abyssalcraft:corboots>,<abyssalcraft:dreadiumingot>]]);

# Eldritch Scale
<abyssalcraft:eldritchscale>.addTooltip(format.white("Dropped by ") + format.gray("Remnants") + format.white(" and ") + format.gray("Minions of The Gatekeeper") + format.white(" in ") + format.gray("Omothol") + format.white("."));

# Omothol Ghoul Flesh
<abyssalcraft:omotholflesh>.addTooltip(format.white("Dropped by Omothol Ghouls in... Omothol."));
<abyssalcraft:omotholflesh>.addTooltip(format.white(format.italic("Incredible, I know.")));

# Ethaxium <-> End Stone conversion removal
mods.abyssalcraft.Transmutator.removeTransmutationOutput(<minecraft:end_stone>);
mods.abyssalcraft.Transmutator.removeTransmutationInput(<minecraft:end_stone>);
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:end_stone>, <liquid:liquidcoralium>);
mods.thermalexpansion.Transposer.removeFillRecipe(<abyssalcraft:stone:5>, <liquid:liquidcoralium>);

# Blank Coin Engraving
recipes.remove(<abyssalcraft:engraving_blank>);
recipes.addShaped(<abyssalcraft:engraving_blank>, [[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],[<minecraft:paper>,<contenttweaker:neutral_reagent>,<minecraft:paper>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

# Engraver
recipes.remove(<abyssalcraft:engraver>);
recipes.addShapedMirrored(<abyssalcraft:engraver>, [[<abyssalcraft:stone:5>,<abyssalcraft:engraving_blank>,null],[<abyssalcraft:stone:5>,<abyssalcraft:engraving_blank>,null],[<enderio:block_dark_steel_anvil>,<abyssalcraft:stone:5>,<abyssalcraft:stone:5>]]);

# C'thulu Coin Engraving
recipes.remove(<abyssalcraft:engraving_cthulhu>);
recipes.addShaped(<abyssalcraft:engraving_cthulhu>, [[<abyssalcraft:shoggothflesh>,<abyssalcraft:shoggothflesh>,<abyssalcraft:shoggothflesh>],[<abyssalcraft:shoggothflesh>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh>],[<abyssalcraft:shoggothflesh>,<abyssalcraft:shoggothflesh>,<abyssalcraft:shoggothflesh>]]);

# Elder Coin Engraving
recipes.remove(<abyssalcraft:engraving_elder>);
recipes.addShaped(<abyssalcraft:engraving_elder>, [[<abyssalcraft:ethaxiumingot>,<abyssalcraft:ethaxiumingot>,<abyssalcraft:ethaxiumingot>],[<abyssalcraft:ethaxiumingot>,<abyssalcraft:engraving_blank>,<abyssalcraft:ethaxiumingot>],[<abyssalcraft:ethaxiumingot>,<abyssalcraft:ethaxiumingot>,<abyssalcraft:ethaxiumingot>]]);

# J'zahar Coin Engraving
recipes.remove(<abyssalcraft:engraving_jzahar>);
recipes.addShaped(<abyssalcraft:engraving_jzahar>, [[<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>],[<abyssalcraft:eldritchscale>,<abyssalcraft:engraving_blank>,<abyssalcraft:eldritchscale>],[<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>,<abyssalcraft:eldritchscale>]]);

# Hastur Coin Engraving
recipes.remove(<abyssalcraft:engraving_hastur>);
recipes.addShaped(<abyssalcraft:engraving_hastur>, [[<abyssalcraft:shoggothflesh:1>,<abyssalcraft:shoggothflesh:1>,<abyssalcraft:shoggothflesh:1>],[<abyssalcraft:shoggothflesh:1>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh:1>],[<abyssalcraft:shoggothflesh:1>,<abyssalcraft:shoggothflesh:1>,<abyssalcraft:shoggothflesh:1>]]);

# Azathoth Coin Engraving
recipes.remove(<abyssalcraft:engraving_azathoth>);
recipes.addShaped(<abyssalcraft:engraving_azathoth>, [[<abyssalcraft:shadowgem>,<abyssalcraft:shadowgem>,<abyssalcraft:shadowgem>],[<abyssalcraft:shadowgem>,<abyssalcraft:engraving_blank>,<abyssalcraft:shadowgem>],[<abyssalcraft:shadowgem>,<abyssalcraft:shadowgem>,<abyssalcraft:shadowgem>]]);

# Nyralothep Coin Engraving
recipes.remove(<abyssalcraft:engraving_nyarlathotep>);
recipes.addShaped(<abyssalcraft:engraving_nyarlathotep>, [[<abyssalcraft:shoggothflesh:2>,<abyssalcraft:shoggothflesh:2>,<abyssalcraft:shoggothflesh:2>],[<abyssalcraft:shoggothflesh:2>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh:2>],[<abyssalcraft:shoggothflesh:2>,<abyssalcraft:shoggothflesh:2>,<abyssalcraft:shoggothflesh:2>]]);

# Yog-Sothoth Coin Engraving
recipes.remove(<abyssalcraft:engraving_yogsothoth>);
recipes.addShaped(<abyssalcraft:engraving_yogsothoth>, [[<abyssalcraft:shoggothflesh:3>,<abyssalcraft:shoggothflesh:3>,<abyssalcraft:shoggothflesh:3>],[<abyssalcraft:shoggothflesh:3>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh:3>],[<abyssalcraft:shoggothflesh:3>,<abyssalcraft:shoggothflesh:3>,<abyssalcraft:shoggothflesh:3>]]);

# Sub-Niggurath Coin Engraving
recipes.remove(<abyssalcraft:engraving_shubniggurath>);
recipes.addShaped(<abyssalcraft:engraving_shubniggurath>, [[<abyssalcraft:shoggothflesh:4>,<abyssalcraft:shoggothflesh:4>,<abyssalcraft:shoggothflesh:4>],[<abyssalcraft:shoggothflesh:4>,<abyssalcraft:engraving_blank>,<abyssalcraft:shoggothflesh:4>],[<abyssalcraft:shoggothflesh:4>,<abyssalcraft:shoggothflesh:4>,<abyssalcraft:shoggothflesh:4>]]);

# Coin
recipes.remove(<abyssalcraft:coin>);
recipes.addShaped(<abyssalcraft:coin> * 4, [[null,<thermalfoundation:coin:*>,null],[<thermalfoundation:coin:*>,<contenttweaker:praesidium>,<thermalfoundation:coin:*>],[null,<thermalfoundation:coin:*>,null]]);

# Remove Coin -> Iron in Furnace
furnace.remove(<minecraft:iron_ingot> * 4, <abyssalcraft:coin>);

# Small Crystal bag
recipes.remove(<abyssalcraft:crystalbag_small>);
recipes.addShaped(<abyssalcraft:crystalbag_small>, [[<evilcraft:golden_string>,<contenttweaker:blood_infused_leather>,<evilcraft:golden_string>],[<contenttweaker:blood_infused_leather>,glod_crystal_block,<contenttweaker:blood_infused_leather>],[<contenttweaker:blood_infused_leather>,<contenttweaker:blood_infused_leather>,<contenttweaker:blood_infused_leather>]]);

# Essence of The Gatekeeper
<abyssalcraft:gatekeeperessence>.addTooltip(format.white("Dropped by ") + format.gray("J'zahar") + format.white(", the final boss of Omothol."));

function add_abyssalcraft_dreadlands_PE_transfer_item_recipe(cur_tier as IItemStack, prev_tier as IItemStack, name as string) {
	mods.abyssalcraft.InfusionRitual.removeRitual(cur_tier);
	mods.abyssalcraft.InfusionRitual.addRitual(name, 2, 51, 3600 as float, false, cur_tier, prev_tier, [<abyssalcraft:shadowshard>,<abyssalcraft:dreadiumingot>,<abyssalcraft:ccluster7>,<abyssalcraft:abyingot>,<abyssalcraft:shadowshard>,<abyssalcraft:dreadiumingot>,<abyssalcraft:ccluster7>,<abyssalcraft:abyingot>] as IIngredient[], false, ["PotEnergy"]);
}

# Dreadlands Energy Collector
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredenergycollector:2>, <abyssalcraft:tieredenergycollector:1>, "ecolDLupgrade");

# Dreadlands Energy Pedestal
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredenergypedestal:2>, <abyssalcraft:tieredenergypedestal:1>, "epDLupgrade");

# Dreadlands Energy Relay
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredenergyrelay:2>, <abyssalcraft:tieredenergyrelay:1>, "erDLupgrade");

# Dreadlands Sacrificial Altar
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredsacrificialaltar:2>, <abyssalcraft:tieredsacrificialaltar:1>, "saDLupgrade");

# Dreadlands Energy Container
add_abyssalcraft_dreadlands_PE_transfer_item_recipe(<abyssalcraft:tieredenergycontainer:2>, <abyssalcraft:tieredenergycontainer:1>, "econDLupgrade");

# Omothol Necronomicon
recipes.remove(<abyssalcraft:necronomicon_omt>);
/*
recipes.addShaped("abyssalcraft_necronomicon_upgrade3", <abyssalcraft:necronomicon_omt>, [[<ore:engravedAbyssalCoin>,<abyssalcraft:stone:5>,<ore:engravedAbyssalCoin>],[<abyssalcraft:stone:5>,<abyssalcraft:necronomicon_dre>.marked("necronomicon"),<abyssalcraft:stone:5>],[<ore:engravedAbyssalCoin>,<abyssalcraft:skin:2>,<ore:engravedAbyssalCoin>]],
function(out, ins, cInfo) {
	return out.withTag(ins.necronomicon.tag);
}, null);
*/
recipes.addShaped(<abyssalcraft:necronomicon_omt>, [[<ore:engravedAbyssalCoin>,<abyssalcraft:stone:5>,<ore:engravedAbyssalCoin>],[<abyssalcraft:stone:5>,<abyssalcraft:necronomicon_dre>,<abyssalcraft:stone:5>],[<ore:engravedAbyssalCoin>,<abyssalcraft:skin:2>,<ore:engravedAbyssalCoin>]]);

function add_abyssalcraft_omothol_PE_transfer_item_recipe(cur_tier as IItemStack, prev_tier as IItemStack, name as string) {
	mods.abyssalcraft.InfusionRitual.removeRitual(cur_tier);
	mods.abyssalcraft.InfusionRitual.addRitual(name, 3, 52, 4800 as float, false, cur_tier, prev_tier, [<abyssalcraft:shadowgem>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ccluster9>,<abyssalcraft:darkethaxiumbrick>,<abyssalcraft:shadowgem>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ccluster9>,<abyssalcraft:darkethaxiumbrick>] as IIngredient[], false, ["PotEnergy"]);
}

# Omothol Energy Collector
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredenergycollector:3>, <abyssalcraft:tieredenergycollector:2>, "ecolOMTupgrade");

# Omothol Energy Pedestal
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredenergypedestal:3>, <abyssalcraft:tieredenergypedestal:2>, "epOMTupgrade");

# Omothol Energy Relay
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredenergyrelay:3>, <abyssalcraft:tieredenergyrelay:2>, "erOMTupgrade");

# Omothol Sacrificial Altar
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredsacrificialaltar:3>, <abyssalcraft:tieredsacrificialaltar:2>, "saOMTupgrade");

# Omothol Energy Container
add_abyssalcraft_omothol_PE_transfer_item_recipe(<abyssalcraft:tieredenergycontainer:3>, <abyssalcraft:tieredenergycontainer:2>, "econOMTupgrade");

# Abyssalnomicon
recipes.remove(<abyssalcraft:abyssalnomicon>);
/*
recipes.addShaped("abyssalcraft_necronomicon_upgrade4", <abyssalcraft:abyssalnomicon>, [[<abyssalcraft:ingotblock:3>,<abyssalcraft:gatekeeperessence>,<abyssalcraft:ingotblock:3>],[<abyssalcraft:eldritchscale>,<abyssalcraft:necronomicon_omt>.marked("necronomicon"),<abyssalcraft:eldritchscale>],[<abyssalcraft:ingotblock:3>,<abyssalcraft:eldritchscale>,<abyssalcraft:ingotblock:3>]],
function(out, ins, cInfo) {
	return out.withTag(ins.necronomicon.tag);
}, null);
*/
recipes.addShaped(<abyssalcraft:abyssalnomicon>, [[<abyssalcraft:ingotblock:3>,<abyssalcraft:gatekeeperessence>,<abyssalcraft:ingotblock:3>],[<abyssalcraft:eldritchscale>,<abyssalcraft:necronomicon_omt>,<abyssalcraft:eldritchscale>],[<abyssalcraft:ingotblock:3>,<abyssalcraft:eldritchscale>,<abyssalcraft:ingotblock:3>]]);

# Ritual of Shadows
mods.abyssalcraft.SummonRitual.removeRitual("abyssalcraft:shadowboss");
mods.abyssalcraft.SummonRitual.addRitual("summonSacthoth", 4, 53, 100000 as float, false, "abyssalcraft:shadowboss", [<abyssalcraft:oc>,<bloodmagic:item_demon_crystal:1>,<evilcraft:inverted_potentia:1>,<bloodmagic:item_demon_crystal:1>,<contenttweaker:rune_of_winter>,<bloodmagic:item_demon_crystal:1>,<abyssalcraft:ingotblock:3>,<bloodmagic:item_demon_crystal:1>] as IIngredient[], false);
game.setLocalization("ac.ritual.summonSacthoth", "Ritual of Shadows");
game.setLocalization("ac.ritual.summonSacthoth.desc", "Summons Sacthoth, Harbinger of Doom, from the Dark Realm. Offer him your most valuable items and as much PE as you can hold... Maybe he'll appear...");

# Sacthoth's Soul Reaper Blade
<abyssalcraft:soulreaper>.addTooltip(format.white("Dropped by ") + format.gray("Sacthoth, Harbinger of Doom") + format.white(", the final boss of AbyssalCraft."));

# Summoning an Anti Cow in the Abyssal Wasteland
mods.abyssalcraft.SummonRitual.addRitual("summonAntiCow", 1, 50, 2500, false, "abyssalcraft:anticow", [<abyssalcraft:ingotblock:1>,<minecraft:beef>,<forge:bucketfilled>.withTag({FluidName: "liquidcoralium", Amount: 1000}),<minecraft:leather>,<abyssalcraft:powerstonetracker>,<minecraft:beef>,<forge:bucketfilled>.withTag({FluidName: "liquidcoralium", Amount: 1000}),<minecraft:leather>]);
game.setLocalization("ac.ritual.summonAntiCow", "Anti Milking");
game.setLocalization("ac.ritual.summonAntiCow.desc", "Summon an Anti Cow in the Abyssal Wasteland. Milking this Cow will yield a bucket of Antimatter.");

# Removing the Mass Enchantment Ritual
mods.abyssalcraft.Rituals.removeRitual("massEnchantment");

# Crystallized Cluster tooltips
#<abyssalcraft:crystalcluster:*>.addTooltip(format.white("Can only be mined with a pickaxe of Mining Level at least 8."));
#<abyssalcraft:crystalcluster2:*>.addTooltip(format.white("Can only be mined with a pickaxe of Mining Level at least 10."));

# Evoker from Woodland Mansion Locator Token
mods.abyssalcraft.SummonRitual.addRitual("summonEvoker_from_WMLT", 0, 0, 2000, false, "minecraft:evocation_illager", [<contenttweaker:woodland_mansion_locator_token>,<abyssalcraft:corflesh>,<minecraft:emerald>,<abyssalcraft:corflesh>]);
game.setLocalization("ac.ritual.summonEvoker_from_WMLT", "Summon Evoker");
game.setLocalization("ac.ritual.summonEvoker_from_WMLT.desc", "No luck finding a Woodland Mansion...? Dark Magic might be able to help with that.");

# Removing Cha'rcoal
<ore:coal>.remove(<abyssalcraft:charcoal>);
furnace.remove(<abyssalcraft:charcoal>);
furnace.addRecipe(<minecraft:coal:1>, <abyssalcraft:dreadlog>);
recipes.removeShaped(<minecraft:torch> * 4, [[<abyssalcraft:charcoal>],[<minecraft:stick>]]);
recipes.removeShapeless(<minecraft:fire_charge> *3, [<minecraft:gunpowder>,<minecraft:blaze_powder>,<abyssalcraft:charcoal>]);

# SAG Mill shouldn't produce Crystallized Redstone
<ore:crystalRedstone>.remove(<abyssalcraft:crystal:11>);

print("ENDING AbyssalCraft.zs");
