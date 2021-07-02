#loader contenttweaker
# Author: Atricos

import mods.alchemistry.Util.createCompound;

print("STARTING AlchemistryCustomCompounds.zs");

mods.alchemistry.Util.createCompound(1001, "barium_calcite", 70, 130, 97, [["barium", 1],["calcium", 1]]);
mods.alchemistry.Util.createCompound(1002, "copper_carbonate", 112, 82, 0, [["copper", 1],["carbonate", 4]]);
mods.alchemistry.Util.createCompound(1003, "beryllium_alumide", 112, 196, 33, [["beryllium", 1],["aluminum", 1]]);
mods.alchemistry.Util.createCompound(1004, "silicon_trioxide", 99, 105, 83, [["silicon", 1],["oxygen", 3]]);
mods.alchemistry.Util.createCompound(1005, "han_calcite", 166, 36, 84, [["barium_calcite", 1],["copper_carbonate", 1],["silicon", 2],["oxygen", 4]]);
mods.alchemistry.Util.createCompound(1006, "beryl_zincite", 176, 186, 125, [["beryllium_alumide", 4],["silicon_trioxide", 6],["zinc_oxide", 1],["beryllium", 2],["silicon", 6],["oxygen", 18]]);

mods.alchemistry.Util.createCompound(1007, "zircyttrid_beryllium_alumide", 204, 190, 122, [["zirconium", 32],["yttrium", 32],["beryllium_alumide", 4]]);

print("ENDING AlchemistryCustomCompounds.zs");