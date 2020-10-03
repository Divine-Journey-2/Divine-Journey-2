# Author: Atricos

import crafttweaker.item.IItemStack;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;

print("STARTING DivineRPG.zs");

# Ghast Block
<divinerpg:ghast_pumpkin>.displayName = "Ghast Block";
recipes.remove(<divinerpg:ghast_pumpkin>);
recipes.addShaped(<divinerpg:ghast_pumpkin>, [[<minecraft:ghast_tear>,<minecraft:ghast_tear>,<minecraft:ghast_tear>],[<minecraft:ghast_tear>,<minecraft:ghast_tear>,<minecraft:ghast_tear>],[<minecraft:ghast_tear>,<minecraft:ghast_tear>,<minecraft:ghast_tear>]]);
recipes.addShapeless(<minecraft:ghast_tear> * 9, [<divinerpg:ghast_pumpkin>]);

# Slabs are buggy
val allSlabs = <ore:slabWood>;
#allSlabs.removeItems([<divinerpg:eden_double_slab>, <divinerpg:wildwood_double_slab>, <divinerpg:apalachia_double_slab>, <divinerpg:skythern_double_slab>, <divinerpg:mortum_double_slab>, <divinerpg:divine_double_slab>, <divinerpg:frozen_double_slab>, <divinerpg:eucalyptus_double_slab>]);

# Snowflake Shurikens into Snowflakes
mods.immersiveengineering.ArcFurnace.addRecipe(<divinerpg:snowflake>, <divinerpg:snowflake_shuriken> * 16, null, 40, 100, [<minecraft:ice> * 4]);
mods.enderio.AlloySmelter.addRecipe(<divinerpg:snowflake>, [<divinerpg:snowflake_shuriken> * 16, <minecraft:ice> * 4], 2500);
mods.thermalexpansion.InductionSmelter.addRecipe(<divinerpg:snowflake>, <divinerpg:snowflake_shuriken> * 16, <minecraft:ice> * 4, 2500);

# Shadow Stone
recipes.remove(<divinerpg:shadow_stone>);
recipes.addShaped(<divinerpg:shadow_stone>, [[<divinerpg:shadow_bar>,<divinerpg:shadow_bar>,<divinerpg:shadow_bar>],[<divinerpg:shadow_bar>,<divinerpg:shadow_bar>,<divinerpg:shadow_bar>],[<divinerpg:shadow_bar>,<divinerpg:shadow_bar>,<divinerpg:shadow_bar>]]);

# Shadow Coins
recipes.remove(<divinerpg:shadow_coins>);
recipes.addShaped(<divinerpg:shadow_coins> * 10, [[<divinerpg:shadow_stone>,<ore:nuggetGold>,<divinerpg:shadow_stone>],[<ore:nuggetGold>,<divinerpg:shadow_stone>,<ore:nuggetGold>],[<divinerpg:shadow_stone>,<ore:nuggetGold>,<divinerpg:shadow_stone>]]);

# Snow Globe
recipes.remove(<divinerpg:snow_globe>);
recipes.addShaped(<divinerpg:snow_globe>, [[<ore:blockGlassColorless>,<minecraft:snow>,<ore:blockGlassColorless>],[<minecraft:snow>,<contenttweaker:atum_warrior>,<minecraft:snow>],[<divinerpg:shadow_stone>,<divinerpg:shadow_stone>,<divinerpg:shadow_stone>]]);

# Infernal Flame
<divinerpg:infernal_flame>.addTooltip(format.bold(format.white("Used to summon the ")) + format.bold(format.red("King of Scorchers")) + format.bold(format.white(" in the Nether.")));

# Mysterious Clock
recipes.remove(<divinerpg:mysterious_clock>);
recipes.addShaped(<divinerpg:mysterious_clock>, [[<contenttweaker:steaming_restonia_crystal_block>,<minecraft:clock>,<contenttweaker:steaming_restonia_crystal_block>],[<minecraft:clock>,<extrautils2:decorativesolid:8>,<minecraft:clock>],[<divinerpg:corrupted_stone>,<divinerpg:corrupted_stone>,<divinerpg:corrupted_stone>]]);
<divinerpg:mysterious_clock>.addTooltip(format.bold(format.white("Used to summon the ")) + format.bold(format.darkRed("Ancient Entity")) + format.bold(format.white(" in the Overworld.")));

# Call of the Watcher
recipes.remove(<divinerpg:call_of_the_watcher>);
recipes.addShaped(<divinerpg:call_of_the_watcher>, [[<enderutilities:enderpart:2>,<divinerpg:watching_eye>,<enderutilities:enderpart:2>],[<divinerpg:watching_eye>,<extrautils2:decorativesolid:8>,<divinerpg:watching_eye>],[<divinerpg:molten_stone>,<divinerpg:molten_stone>,<divinerpg:molten_stone>]]);
<divinerpg:call_of_the_watcher>.addTooltip(format.bold(format.white("Used to summon ")) + format.bold(format.red("The Watcher")) + format.bold(format.white(" in the Nether.")));

# Horde Horn
recipes.remove(<divinerpg:horde_horn>);
recipes.addShaped(<divinerpg:horde_horn>, [[<thermalfoundation:storage:7>,<actuallyadditions:item_misc:15>,<thermalfoundation:storage:7>],[<actuallyadditions:item_misc:15>,<extrautils2:decorativesolid:8>,<actuallyadditions:item_misc:15>],[<divinerpg:ender_stone>,<divinerpg:ender_stone>,<divinerpg:ender_stone>]]);
<divinerpg:horde_horn>.addTooltip(format.white("Used to summon the ") + format.gray("Ayeraco Horde") + format.white(" in the End."));
<divinerpg:horde_horn>.addTooltip(format.white("It consists of the ") + format.blue("Blue") + format.white(", ") + format.green("Green") + format.white(", ") + format.yellow("Yellow") + format.white(", ") + format.red("Red") + format.white(" & ") + format.lightPurple("Purple") + format.white(" Ayeraco."));

# Angelic Chestplate
recipes.remove(<divinerpg:angelic_chestplate>);
recipes.addShaped(<divinerpg:angelic_chestplate>, [[<divinerpg:bluefire_stone>,<flyringbaublemod:angelring:*>,<divinerpg:bluefire_stone>],[<divinerpg:ice_stone>,<divinerpg:bluefire_stone>,<divinerpg:ice_stone>],[<divinerpg:ice_stone>,<divinerpg:ice_stone>,<divinerpg:ice_stone>]]);

# Divine Rock
recipes.remove(<divinerpg:divine_rock>);
recipes.addShaped(<divinerpg:divine_rock> * 14, [[<divinerpg:divine_shards>,<divinerpg:divine_shards>,<divinerpg:divine_shards>],[<divinerpg:divine_shards>,<contenttweaker:unholy_token>,<divinerpg:divine_shards>],[<divinerpg:divine_shards>,<divinerpg:divine_stone>,<divinerpg:divine_shards>]]);

# Twilight Clock
recipes.remove(<divinerpg:twilight_clock>);
recipes.addShaped(<divinerpg:twilight_clock>, [[<openblocks:tank>.withTag({tank: {FluidName: "cryotheum", Amount: 16000}}),<divinerpg:bluefire_stone>,<openblocks:tank>.withTag({tank: {FluidName: "cryotheum", Amount: 16000}})],[<divinerpg:bluefire_stone>,<enderutilities:enderpart:54>,<divinerpg:bluefire_stone>],[<enderio:block_alloy:6>,<minecraft:clock>,<enderio:block_alloy:6>]]);
<divinerpg:twilight_clock>.addTooltip(format.white("Used to light the portals for ") + format.yellow("Eden") + format.white(", "));
<divinerpg:twilight_clock>.addTooltip(format.blue("Wildwood") + format.white(", ") + format.lightPurple("Apalachia") + format.white(", Skythern & ") + format.darkGray("Mortum") + format.white("."));

function divinerpg_new_gem_and_chunk_recipes(fragments as IItemStack, gem as IItemStack, chunk as IItemStack) {
	recipes.remove(gem);
	recipes.addShaped(gem, [[null,fragments,null],[fragments,fragments,fragments],[null,fragments,null]]);
	recipes.remove(chunk);
	recipes.addShaped(chunk, [[null,gem,null],[gem,gem,gem],[null,gem,null]]);
}

# Eden Gem & Chunk
divinerpg_new_gem_and_chunk_recipes(<divinerpg:eden_fragments>, <divinerpg:eden_gem>, <divinerpg:eden_chunk>);

# Wildwood Gem & Chunk
divinerpg_new_gem_and_chunk_recipes(<divinerpg:wildwood_fragments>, <divinerpg:wildwood_gem>, <divinerpg:wildwood_chunk>);

# Apalachia Gem & Chunk
divinerpg_new_gem_and_chunk_recipes(<divinerpg:apalachia_fragments>, <divinerpg:apalachia_gem>, <divinerpg:apalachia_chunk>);

# Skythern Gem & Chunk
divinerpg_new_gem_and_chunk_recipes(<divinerpg:skythern_fragments>, <divinerpg:skythern_gem>, <divinerpg:skythern_chunk>);

# Mortum Gem & Chunk
divinerpg_new_gem_and_chunk_recipes(<divinerpg:mortum_fragments>, <divinerpg:mortum_gem>, <divinerpg:mortum_chunk>);

# Heart of the Sunstorm
<divinerpg:eden_heart>.addTooltip(format.white("To obtain, find a Sun Altar in Eden!"));
<divinerpg:eden_heart>.addTooltip(format.white("Offer an Eden Chunk and defeat the Sunstorm!"));

# Eden Block
recipes.remove(<divinerpg:eden_block>);
mods.extendedcrafting.TableCrafting.addShaped(<divinerpg:eden_block> * 14,
[[<divinerpg:eden_chunk>,<abyssalcraft:oblivionshard>,<divinerpg:eden_soul>,<abyssalcraft:oblivionshard>,<divinerpg:eden_chunk>],
[<abyssalcraft:oblivionshard>,<divinerpg:eden_heart>,<abyssalcraft:eoa>,<divinerpg:eden_heart>,<abyssalcraft:oblivionshard>],
[<divinerpg:eden_chunk>,<divinerpg:eden_soul>,<divinerpg:eden_heart>,<divinerpg:eden_soul>,<divinerpg:eden_chunk>],
[<abyssalcraft:oblivionshard>,<divinerpg:eden_heart>,<abyssalcraft:psdl>,<divinerpg:eden_heart>,<abyssalcraft:oblivionshard>],
[<divinerpg:eden_chunk>,<abyssalcraft:oblivionshard>,<divinerpg:eden_soul>,<abyssalcraft:oblivionshard>,<divinerpg:eden_chunk>]]);

# Kraken Scale
recipes.remove(<divinerpg:kraken_scale>);
recipes.addShapedMirrored(<divinerpg:kraken_scale>, [[<minecraft:dye>,<minecraft:dye>,<ore:slimeball>],[<minecraft:dye>,<minecraft:fish>,<minecraft:dye>],[<ore:slimeball>,<minecraft:dye>,<minecraft:dye>]]);

# Kraken Skin
recipes.remove(<divinerpg:kraken_skin>);
recipes.addShapedMirrored(<divinerpg:kraken_skin>, [[<contenttweaker:treated_leather>,<divinerpg:kraken_scale>],[<divinerpg:kraken_scale>,<contenttweaker:treated_leather>]]);

# Aqua Ball
recipes.remove(<divinerpg:aqua_ball>);
recipes.addShaped(<divinerpg:aqua_ball>, [[<minecraft:water_bucket>,<ore:slimeball>,<minecraft:water_bucket>],[<minecraft:water_bucket>,<divinerpg:kraken_skin>,<minecraft:water_bucket>],[<minecraft:water_bucket>,<ore:slimeball>,<minecraft:water_bucket>]]);

print("ENDING DivineRPG.zs");