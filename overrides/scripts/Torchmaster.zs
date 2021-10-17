# Author: Atricos
print("STARTING Torchmaster.zs");

# Terrain Lighter
recipes.remove(<torchmaster:terrain_lighter>);
recipes.addShaped(<torchmaster:terrain_lighter>, [[<ore:torch>,<ore:torch>,<ore:torch>],[<ore:logWood>,<ironchest:iron_chest>,<ore:logWood>],[<thermalfoundation:material:352>,<thermalfoundation:material:352>,<thermalfoundation:material:352>]]);

# Mega Torch
recipes.remove(<torchmaster:mega_torch>);
recipes.addShaped(<torchmaster:mega_torch>, [[<openblocks:tank>.withTag({tank: {FluidName: "glowstone", Amount: 16000}})],[<contenttweaker:crystalline_brown_slime_block>],[<contenttweaker:crystalline_brown_slime_block>]]);

# Feral Flare Lantern
recipes.remove(<torchmaster:feral_flare_lantern>);
recipes.addShaped(<torchmaster:feral_flare_lantern>, [[<thermalfoundation:material:161>,<immersiveengineering:metal_decoration2:4>,<thermalfoundation:material:161>],[<thermalfoundation:material:161>,<torchmaster:terrain_lighter>,<thermalfoundation:material:161>],[<thermalfoundation:material:161>,<immersiveengineering:metal_decoration2:4>,<thermalfoundation:material:161>]]);

# Dread Lamp
recipes.remove(<torchmaster:dread_lamp>);
recipes.addShaped(<torchmaster:dread_lamp>, [[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>],[<ore:blockGlassColorless>,<openblocks:tank>.withTag({tank: {FluidName: "petrotheum", Amount: 16000}}),<ore:blockGlassColorless>],[<contenttweaker:crystalline_brown_slime_ingot>,<ore:blockGlassColorless>,<contenttweaker:crystalline_brown_slime_ingot>]]);

print("ENDING Torchmaster.zs");