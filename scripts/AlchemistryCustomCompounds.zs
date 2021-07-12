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

mods.alchemistry.Util.createCompound(1008, "erbid_gallium_telluride_polychlorid_phosphate", 176, 184, 64, [["erbium", 48],["gallium", 4],["tellurium", 2],["polyvinyl_chloride", 2],["diammonium_phosphate", 4]]);
mods.alchemistry.Util.createCompound(1009, "neptunit_germanium_butamide", 17, 178, 184, [["neptunium", 1],["germanium", 4],["butane", 8],["amide", 1]]);
mods.alchemistry.Util.createCompound(1010, "gerbutil_erbid_radiqvatic_curiopolychloriphosphate", 252, 151, 236, [["curium", 1],["erbid_gallium_telluride_polychlorid_phosphate", 1],["neptunit_germanium_butamide", 1]]);

mods.alchemistry.Util.createCompound(1011, "neodymit_calcium_carbonate", 238, 245, 42, [["neodymium", 2],["calcium_carbonate", 4]]);
mods.alchemistry.Util.createCompound(1012, "hafnium_sulfate", 51, 117, 158, [["hafnium", 4],["sulfur", 2]]);

print("ENDING AlchemistryCustomCompounds.zs");