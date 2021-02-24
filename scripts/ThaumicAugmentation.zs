# Author: Atricos
# Research Strings can be found in ThaumicAugmentation.jar/thecodex6824/thaumicaugmentation/init/RecipeHandler.class

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;

print("STARTING ThaumicAugmentation.zs");

# Warding Sigil
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:material:1>);
mods.thaumcraft.Infusion.registerRecipe("thaumicaugmentation:warding_sigil", "", <thaumicaugmentation:material:1>, 5, [<aspect:vinculum> * 100,<aspect:auram> * 50,<aspect:praecantatio> * 50,<aspect:instrumentum> * 20], <thaumcraft:seal>, [<thaumcraft:plate:2>,<thaumcraft:plate:2>,<thaumcraft:tallow>,<thaumcraft:plate:2>,<thaumcraft:plate:2>,<contenttweaker:infused_magical_core>]);

# Fortified Glass
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumicaugmentation:fortified_glass>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumicaugmentation:fortified_glass", "", 40, [<aspect:ordo> * 8,<aspect:aer> * 8,<aspect:aqua> * 8,<aspect:terra> * 8], <thaumicaugmentation:fortified_glass> * 8, [[<botania:elfglass>,<botania:elfglass>,<botania:elfglass>],[<botania:elfglass>,<thaumicaugmentation:material:1>,<botania:elfglass>],[<botania:elfglass>,<botania:elfglass>,<botania:elfglass>]]);

print("ENDING ThaumicAugmentation.zs");