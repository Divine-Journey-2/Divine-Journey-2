# Author: Atricos

import mods.thermalexpansion.Transposer;

print("STARTING AetherLegacy.zs");

# Golden Feather shouldn't be in the Feather OreDict
<ore:feather>.remove(<aether_legacy:golden_feather>);

# Treasure Chest and Mimic Chest shouldn't be in the Chest OreDict
<ore:chest>.removeItems([<aether_legacy:treasure_chest>, <aether_legacy:chest_mimic>]);

# Enchanter
recipes.remove(<aether_legacy:enchanter>);
recipes.addShaped(<aether_legacy:enchanter>, [[<aether_legacy:holystone_brick>,<aether_legacy:zanite_block>,<aether_legacy:holystone_brick>],[<aether_legacy:holystone_brick>,<contenttweaker:aether_power_core>.anyDamage().transformDamage(1),<aether_legacy:holystone_brick>],[<ore:ingotValkyrie>,<ore:ingotValkyrie>,<ore:ingotValkyrie>]]);

# Freezer
recipes.remove(<aether_legacy:freezer>);
recipes.addShaped(<aether_legacy:freezer>, [[<aether_legacy:icestone>,<aether_legacy:icestone>,<aether_legacy:icestone>],[<aether_legacy:icestone>,<aether_legacy:zanite_block>,<aether_legacy:icestone>],[<aether_legacy:aether_log>,<aether_legacy:aether_log>,<aether_legacy:aether_log>]]);

# Steel Ring
<aether_legacy:iron_ring>.displayName = "Steel Ring";
recipes.remove(<aether_legacy:iron_ring>);
recipes.addShaped(<aether_legacy:iron_ring>, [[<thermalfoundation:material:352>,<immersiveengineering:material:2>,<thermalfoundation:material:352>],[<immersiveengineering:material:2>,null,<immersiveengineering:material:2>],[<thermalfoundation:material:352>,<immersiveengineering:material:2>,<thermalfoundation:material:352>]]);

# Golden Ring
recipes.remove(<aether_legacy:golden_ring>);
recipes.addShaped(<aether_legacy:golden_ring>, [[<thermalfoundation:material:33>,<lightningcraft:rod:5>,<thermalfoundation:material:33>],[<lightningcraft:rod:5>,null,<lightningcraft:rod:5>],[<thermalfoundation:material:33>,<lightningcraft:rod:5>,<thermalfoundation:material:33>]]);

# Steel Pendant
<aether_legacy:iron_pendant>.displayName = "Steel Pendant";
recipes.remove(<aether_legacy:iron_pendant>);
recipes.addShaped(<aether_legacy:iron_pendant>, [[<atum:linen_thread>,<atum:linen_thread>,<immersiveengineering:material:2>],[<atum:linen_thread>,null,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<immersiveengineering:material:2>,<thermalfoundation:material:352>]]);

# Golden Pendant
recipes.remove(<aether_legacy:golden_pendant>);
recipes.addShaped(<aether_legacy:golden_pendant>, [[<atum:linen_thread>,<atum:linen_thread>,<lightningcraft:rod:5>],[<atum:linen_thread>,null,<lightningcraft:rod:5>],[<lightningcraft:rod:5>,<lightningcraft:rod:5>,<thermalfoundation:material:33>]]);

# Skyroot Poison Bucket fill recipes (buggy)
#mods.thermalexpansion.Transposer.removeFillRecipe(<aether_legacy:skyroot_bucket:2>, <liquid:water>);
#mods.thermalexpansion.Transposer.removeFillRecipe(<aether_legacy:skyroot_bucket:2>, <liquid:milk>);
#mods.thermalexpansion.Transposer.removeFillRecipe(<aether_legacy:skyroot_bucket:2>, <liquid:remedy>);

# Disable bugged slabs
recipes.remove(<aether_legacy:skyroot_slab>);
recipes.remove(<aether_legacy:carved_slab>);
recipes.remove(<aether_legacy:angelic_slab>);
recipes.remove(<aether_legacy:hellfire_slab>);
recipes.remove(<aether_legacy:holystone_slab>);
recipes.remove(<aether_legacy:mossy_holystone_slab>);
recipes.remove(<aether_legacy:holystone_brick_slab>);
recipes.remove(<aether_legacy:aerogel_slab>);
<ore:slabWood>.remove(<aether_legacy:skyroot_slab>);

# Moa Egg removal from Egg OreDict
<ore:egg>.remove(<aether_legacy:moa_egg>);

# Aerogel recipe with Mystical Agriculture Essences
recipes.addShaped(<aether_legacy:aerogel>, [[<mysticalagriculture:ice_essence>,<mysticalagriculture:fire_essence>,<mysticalagriculture:ice_essence>],[<mysticalagriculture:fire_essence>,<mysticalagriculture:saltpeter_essence>,<mysticalagriculture:fire_essence>],[<mysticalagriculture:ice_essence>,<mysticalagriculture:fire_essence>,<mysticalagriculture:ice_essence>]]);

# Warning for servers with TickProfiler
<aether_legacy:aerogel>.addTooltip(format.red(format.bold("On servers with TickProfiler, attemting to automate this will cause crashes.")));

# Skyroot Plank to plankWood OreDict (breaks the Skyroot Bucket recipe among others)
#<ore:plankWood>.add(<aether_legacy:skyroot_plank>);

print("ENDING AetherLegacy.zs");
