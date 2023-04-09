# Author: Atricos, WaitingIdly

import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;

print("STARTING ModularMagic.zs");

# Essentia Input Hatch
recipes.addShaped(<modularmagic:blockaspectproviderinput>, [[null,<thaumcraft:plate>,null],[<thaumcraft:plate>,<modularmachinery:blockcasing>,<thaumcraft:plate>],[null,<thaumcraft:jar_normal>,null]]);

# Life Essence Provider
BloodAltar.addRecipe(<modularmagic:blocklifeessenceprovideroutput>, <modularmachinery:blockcasing>, 5, 240000, 120, 120);

# Demonic Will Output
TartaricForge.addRecipe(<modularmagic:blockwillprovideroutput>, [<bloodmagic:demon_will_gauge>,<modularmachinery:blockcasing>,<contenttweaker:binding_reagent>,<bloodmagic:path:6>], 8192, 4096);

print("ENDING ModularMagic.zs");
