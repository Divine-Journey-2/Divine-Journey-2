# Author: Atricos

import mods.tconstruct.Casting;

print("STARTING TinkersConstruct.zs");

# Blank Pattern
recipes.remove(<tconstruct:pattern>);
recipes.addShaped(<tconstruct:pattern>, [[<ore:plankWood>,<ore:plankWood>,<ore:stickWood>],[<ore:plankWood>,<ore:ingotIron>,<ore:plankWood>],[<ore:stickWood>,<ore:plankWood>,<ore:plankWood>]]);

# Pattern Chest
recipes.remove(<tconstruct:tooltables:4>);
recipes.addShaped(<tconstruct:tooltables:4>, [[<tconstruct:pattern>],[<ore:chestWood>]]);

# Smeltery Parts
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>, [[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,<ore:blockRedstone>,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>]]);
recipes.remove(<tconstruct:seared_tank:0>);
recipes.addShaped(<tconstruct:seared_tank:0>, [[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,<ore:blockGlass>,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>]]);
recipes.remove(<tconstruct:seared_tank:1>);
recipes.addShaped(<tconstruct:seared_tank:1>, [[<tconstruct:seared:3>,<ore:blockGlass>,<tconstruct:seared:3>],[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],[<tconstruct:seared:3>,<ore:blockGlass>,<tconstruct:seared:3>]]);
recipes.remove(<tconstruct:smeltery_io>);
recipes.addShaped(<tconstruct:smeltery_io>, [[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<tconstruct:faucet>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>]]);
recipes.remove(<tconstruct:casting:1>);
recipes.addShaped(<tconstruct:casting:1>, [[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<minecraft:cauldron>,<tconstruct:seared:3>]]);
recipes.remove(<tconstruct:casting:0>);
recipes.addShaped(<tconstruct:casting:0>, [[<tconstruct:seared:3>,<thermalfoundation:material:32>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>]]);
recipes.remove(<tconstruct:channel>);
recipes.addShaped(<tconstruct:channel>, [[<ore:ingotBrickSeared>,null,<ore:ingotBrickSeared>],[<ore:ingotBrickSeared>,<ore:ingotBrickSeared>,<ore:ingotBrickSeared>]]);
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.addShaped(<tconstruct:seared_furnace_controller>, [[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>],[<ore:ingotBrickSeared>,<minecraft:furnace>,<ore:ingotBrickSeared>],[<tconstruct:seared:3>,<ore:ingotBrickSeared>,<tconstruct:seared:3>]]);

# Wooden Hopper
recipes.remove(<tconstruct:wooden_hopper>);

# Slime Boots and Slimslings are OP
recipes.remove(<tconstruct:slime_boots:*>);
recipes.addShaped(<tconstruct:slime_boots:0>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<minecraft:slime_ball>,null,<minecraft:slime_ball>],[<tconstruct:slime_congealed:0>,null,<tconstruct:slime_congealed:0>]]);
recipes.addShaped(<tconstruct:slime_boots:1>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:1>,null,<tconstruct:edible:1>],[<tconstruct:slime_congealed:1>,null,<tconstruct:slime_congealed:1>]]);
recipes.addShaped(<tconstruct:slime_boots:2>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:2>,null,<tconstruct:edible:2>],[<tconstruct:slime_congealed:2>,null,<tconstruct:slime_congealed:2>]]);
recipes.addShaped(<tconstruct:slime_boots:3>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:3>,null,<tconstruct:edible:3>],[<tconstruct:slime_congealed:3>,null,<tconstruct:slime_congealed:3>]]);
recipes.addShaped(<tconstruct:slime_boots:4>, [[<contenttweaker:industrial_slime_ball>,null,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:4>,null,<tconstruct:edible:4>],[<tconstruct:slime_congealed:4>,null,<tconstruct:slime_congealed:4>]]);
recipes.remove(<tconstruct:slimesling:*>);
recipes.addShaped(<tconstruct:slimesling:0>, [[<ore:string>,<tconstruct:slime_congealed:0>,<contenttweaker:industrial_slime_ball>],[<minecraft:slime_ball>,<minecraft:slime_ball>,<minecraft:slime_ball>],[null,<contenttweaker:industrial_slime_ball>,null]]);
recipes.addShaped(<tconstruct:slimesling:1>, [[<ore:string>,<tconstruct:slime_congealed:1>,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:1>,<tconstruct:edible:1>,<tconstruct:edible:1>],[null,<contenttweaker:industrial_slime_ball>,null]]);
recipes.addShaped(<tconstruct:slimesling:2>, [[<ore:string>,<tconstruct:slime_congealed:2>,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:2>,<tconstruct:edible:2>,<tconstruct:edible:2>],[null,<contenttweaker:industrial_slime_ball>,null]]);
recipes.addShaped(<tconstruct:slimesling:3>, [[<ore:string>,<tconstruct:slime_congealed:3>,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:3>,<tconstruct:edible:3>,<tconstruct:edible:3>],[null,<contenttweaker:industrial_slime_ball>,null]]);
recipes.addShaped(<tconstruct:slimesling:4>, [[<ore:string>,<tconstruct:slime_congealed:4>,<contenttweaker:industrial_slime_ball>],[<tconstruct:edible:4>,<tconstruct:edible:4>,<tconstruct:edible:4>],[null,<contenttweaker:industrial_slime_ball>,null]]);

# Additional Necrotic Bone recipe
recipes.addShaped(<tconstruct:materials:17>, [[<quark:black_ash>,<quark:black_ash>,<quark:black_ash>],[<quark:black_ash>,<minecraft:bone>,<quark:black_ash>],[<quark:black_ash>,<quark:black_ash>,<quark:black_ash>]]);

# Plate Cast
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);

# Creative Modifier
mods.extendedcrafting.TableCrafting.addShaped(<tconstruct:materials:50>,
[[<extendedcrafting:singularity:5>,<alchemistry:ingot:91>,<divinerpg:golden_fury>,<alchemistry:ingot:91>,<extendedcrafting:singularity:5>],
[<alchemistry:ingot:91>,<divinerpg:golden_fury>,<tconstruct:materials:16>,<divinerpg:golden_fury>,<alchemistry:ingot:91>],
[<divinerpg:golden_fury>,<tconstruct:materials:16>,<extendedcrafting:singularity_custom:104>,<tconstruct:materials:16>,<divinerpg:golden_fury>],
[<alchemistry:ingot:91>,<divinerpg:golden_fury>,<tconstruct:materials:16>,<divinerpg:golden_fury>,<alchemistry:ingot:91>],
[<extendedcrafting:singularity:5>,<alchemistry:ingot:91>,<divinerpg:golden_fury>,<alchemistry:ingot:91>,<extendedcrafting:singularity:5>]]);

print("ENDING TinkersConstruct.zs");