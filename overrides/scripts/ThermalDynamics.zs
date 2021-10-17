# Author: Atricos

import mods.thermalexpansion.Transposer;
import mods.thaumcraft.Infusion;

print("STARTING ThermalDynamics.zs");

# Leadstone Fluxduct
recipes.remove(<thermaldynamics:duct_0>);
recipes.addShaped(<thermaldynamics:duct_0> * 6, [[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],[<ore:ingotLead>,<contenttweaker:rf_powder>,<ore:ingotLead>],[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>]]);

# Hardened Fluxduct
recipes.remove(<thermaldynamics:duct_0:1>);
recipes.addShaped(<thermaldynamics:duct_0:1> * 3, [[<ore:ingotInvar>,<minecraft:redstone>,<ore:ingotInvar>],[<thermaldynamics:duct_0>,<thermaldynamics:duct_0>,<thermaldynamics:duct_0>],[<ore:ingotInvar>,<minecraft:redstone>,<ore:ingotInvar>]]);

# Redstone Energy Fluxduct (Empty)
recipes.remove(<thermaldynamics:duct_0:6>);
recipes.addShaped(<thermaldynamics:duct_0:6> * 3, [[<ore:ingotElectrum>,<thermalfoundation:glass:3>,<ore:ingotElectrum>],[<thermaldynamics:duct_0:1>,<thermaldynamics:duct_0:1>,<thermaldynamics:duct_0:1>],[<ore:ingotElectrum>,<thermalfoundation:glass:3>,<ore:ingotElectrum>]]);

# Redstone Energy Fluxduct
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_0:6>, <liquid:redstone>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_0:2>, <thermaldynamics:duct_0:6>, <liquid:redstone> * 400, 800);

# Signalum Fluxduct (Empty)
recipes.remove(<thermaldynamics:duct_0:7>);
recipes.addShaped(<thermaldynamics:duct_0:7> * 3, [[<ore:ingotSignalum>,<ore:ingotRedAlloy>,<ore:ingotSignalum>],[<thermaldynamics:duct_0:6>,<thermaldynamics:duct_0:6>,<thermaldynamics:duct_0:6>],[<ore:ingotSignalum>,<ore:ingotRedAlloy>,<ore:ingotSignalum>]]);

# Signalum Fluxduct
recipes.remove(<thermaldynamics:duct_0:3>);
recipes.addShaped(<thermaldynamics:duct_0:3> * 3, [[<ore:ingotSignalum>,<ore:ingotRedAlloy>,<ore:ingotSignalum>],[<thermaldynamics:duct_0:2>,<thermaldynamics:duct_0:2>,<thermaldynamics:duct_0:2>],[<ore:ingotSignalum>,<ore:ingotRedAlloy>,<ore:ingotSignalum>]]);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_0:7>, <liquid:redstone>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_0:3>, <thermaldynamics:duct_0:7>, <liquid:redstone> * 400, 800);

# Resonant Fluxduct (Empty)
recipes.remove(<thermaldynamics:duct_0:8>);
recipes.addShaped(<thermaldynamics:duct_0:8> * 3, [[<ore:ingotEnderium>,<ore:ingotRedAlloy>,<ore:ingotEnderium>],[<thermaldynamics:duct_0:7>,<thermaldynamics:duct_0:7>,<thermaldynamics:duct_0:7>],[<ore:ingotEnderium>,<ore:ingotRedAlloy>,<ore:ingotEnderium>]]);

# Resonant Fluxduct
recipes.remove(<thermaldynamics:duct_0:4>);
recipes.addShaped(<thermaldynamics:duct_0:4> * 3, [[<ore:ingotEnderium>,<ore:ingotRedAlloy>,<ore:ingotEnderium>],[<thermaldynamics:duct_0:3>,<thermaldynamics:duct_0:3>,<thermaldynamics:duct_0:3>],[<ore:ingotEnderium>,<ore:ingotRedAlloy>,<ore:ingotEnderium>]]);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_0:8>, <liquid:redstone>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_0:4>, <thermaldynamics:duct_0:8>, <liquid:redstone> * 400, 800);

# Fluiduct
recipes.remove(<thermaldynamics:duct_16>);
recipes.addShaped(<thermaldynamics:duct_16> * 6, [[<thermalfoundation:material:320>,<ore:blockGlass>,<thermalfoundation:material:320>],[<lightningcraft:rod:6>,<immersiveengineering:metal_device1:6>,<lightningcraft:rod:6>],[<thermalfoundation:material:320>,<ore:blockGlass>,<thermalfoundation:material:320>]]);
recipes.addShapeless(<thermaldynamics:duct_16> * 6, [<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16:1>,<ore:blockGlass>,<ore:blockGlass>]);

# Fluiduct (Opaque)
recipes.remove(<thermaldynamics:duct_16:1>);
recipes.addShaped(<thermaldynamics:duct_16:1> * 6, [[<thermalfoundation:material:320>,<thermalfoundation:material:323>,<thermalfoundation:material:320>],[<lightningcraft:rod:6>,<immersiveengineering:metal_device1:6>,<lightningcraft:rod:6>],[<thermalfoundation:material:320>,<thermalfoundation:material:323>,<thermalfoundation:material:320>]]);
recipes.addShapeless(<thermaldynamics:duct_16:1> * 6, [<thermaldynamics:duct_16>,<thermaldynamics:duct_16>,<thermaldynamics:duct_16>,<thermaldynamics:duct_16>,<thermaldynamics:duct_16>,<thermaldynamics:duct_16>,<thermalfoundation:material:323>,<thermalfoundation:material:323>]);

# Hardened Fluiduct
recipes.remove(<thermaldynamics:duct_16:2>);
recipes.addShaped(<thermaldynamics:duct_16:2> * 6, [[<thermalfoundation:material:354>,<ore:blockGlassColorless>,<thermalfoundation:material:354>],[<contenttweaker:rf_powder>,<immersiveengineering:metal_device1:6>,<contenttweaker:rf_powder>],[<thermalfoundation:material:354>,<ore:blockGlassColorless>,<thermalfoundation:material:354>]]);
recipes.addShapeless(<thermaldynamics:duct_16:2> * 6, [<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>,<ore:blockGlassColorless>,<ore:blockGlassColorless>]);

# Hardened Fluiduct (Opaque)
recipes.remove(<thermaldynamics:duct_16:3>);
recipes.addShaped(<thermaldynamics:duct_16:3> * 6, [[<thermalfoundation:material:354>,<thermalfoundation:material:323>,<thermalfoundation:material:354>],[<contenttweaker:rf_powder>,<immersiveengineering:metal_device1:6>,<contenttweaker:rf_powder>],[<thermalfoundation:material:354>,<thermalfoundation:material:323>,<thermalfoundation:material:354>]]);
recipes.addShapeless(<thermaldynamics:duct_16:3> * 6, [<thermaldynamics:duct_16:2>,<thermaldynamics:duct_16:2>,<thermaldynamics:duct_16:2>,<thermaldynamics:duct_16:2>,<thermaldynamics:duct_16:2>,<thermaldynamics:duct_16:2>,<thermalfoundation:material:323>,<thermalfoundation:material:323>]);

# Signalum-Plated Fluiduct
recipes.remove(<thermaldynamics:duct_16:4>);
recipes.addShaped(<thermaldynamics:duct_16:4> * 3, [[<thermalfoundation:material:357>,<thermalfoundation:material:353>,<thermalfoundation:material:357>],[<thermaldynamics:duct_16:2>,<thermaldynamics:duct_16:2>,<thermaldynamics:duct_16:2>],[<thermalfoundation:material:357>,<thermalfoundation:material:353>,<thermalfoundation:material:357>]]);
recipes.addShapeless(<thermaldynamics:duct_16:4> * 6, [<thermaldynamics:duct_16:5>,<thermaldynamics:duct_16:5>,<thermaldynamics:duct_16:5>,<thermaldynamics:duct_16:5>,<thermaldynamics:duct_16:5>,<thermaldynamics:duct_16:5>,<ore:blockGlassColorless>,<ore:blockGlassColorless>]);

# Signalum-Plated Fluiduct (Opaque)
recipes.remove(<thermaldynamics:duct_16:5>);
recipes.addShaped(<thermaldynamics:duct_16:5> * 3, [[<thermalfoundation:material:357>,<thermalfoundation:material:353>,<thermalfoundation:material:357>],[<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>],[<thermalfoundation:material:357>,<thermalfoundation:material:353>,<thermalfoundation:material:357>]]);
recipes.addShapeless(<thermaldynamics:duct_16:5> * 6, [<thermaldynamics:duct_16:4>,<thermaldynamics:duct_16:4>,<thermaldynamics:duct_16:4>,<thermaldynamics:duct_16:4>,<thermaldynamics:duct_16:4>,<thermaldynamics:duct_16:4>,<thermalfoundation:material:323>,<thermalfoundation:material:323>]);

# Super-Laminar Fluiduct
recipes.remove(<thermaldynamics:duct_16:6>);
recipes.addShaped(<thermaldynamics:duct_16:6>, [[<thermalfoundation:material:355>,<thermalfoundation:glass:3>,<thermalfoundation:material:355>],[<thermalfoundation:glass:3>,<thermaldynamics:duct_16:2>,<thermalfoundation:glass:3>],[<thermalfoundation:material:355>,<thermalfoundation:glass:3>,<thermalfoundation:material:355>]]);
recipes.addShapeless(<thermaldynamics:duct_16:6> * 6, [<thermaldynamics:duct_16:7>,<thermaldynamics:duct_16:7>,<thermaldynamics:duct_16:7>,<thermaldynamics:duct_16:7>,<thermaldynamics:duct_16:7>,<thermaldynamics:duct_16:7>,<ore:blockGlassColorless>,<ore:blockGlassColorless>]);

# Super-Laminar Fluiduct (Opaque)
recipes.remove(<thermaldynamics:duct_16:7>);
recipes.addShaped(<thermaldynamics:duct_16:7>, [[<thermalfoundation:material:355>,<thermalfoundation:glass:3>,<thermalfoundation:material:355>],[<thermalfoundation:glass:3>,<thermaldynamics:duct_16:3>,<thermalfoundation:glass:3>],[<thermalfoundation:material:355>,<thermalfoundation:glass:3>,<thermalfoundation:material:355>]]);
recipes.addShapeless(<thermaldynamics:duct_16:7> * 6, [<thermaldynamics:duct_16:6>,<thermaldynamics:duct_16:6>,<thermaldynamics:duct_16:6>,<thermaldynamics:duct_16:6>,<thermaldynamics:duct_16:6>,<thermaldynamics:duct_16:6>,<thermalfoundation:material:323>,<thermalfoundation:material:323>]);

# Itemduct
recipes.remove(<thermaldynamics:duct_32>);
recipes.addShaped(<thermaldynamics:duct_32> * 6, [[<mekanism:enrichedalloy>,<ore:blockGlassColorless>,<mekanism:enrichedalloy>]]);
recipes.addShapeless(<thermaldynamics:duct_32> * 6, [<thermaldynamics:duct_32:1>,<thermaldynamics:duct_32:1>,<thermaldynamics:duct_32:1>,<thermaldynamics:duct_32:1>,<thermaldynamics:duct_32:1>,<thermaldynamics:duct_32:1>,<ore:blockGlassColorless>]);

# Vacuum Itemduct
recipes.addShapeless(<thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32>,<thermalfoundation:material:322>]);

# Dense Itemduct
recipes.addShapeless(<thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32>,<thermalfoundation:material:323>]);

# Itemduct (Opaque)
recipes.remove(<thermaldynamics:duct_32:1>);
recipes.addShaped(<thermaldynamics:duct_32:1> * 6, [[<mekanism:enrichedalloy>,<thermalfoundation:material:323>,<mekanism:enrichedalloy>]]);
recipes.addShapeless(<thermaldynamics:duct_32:1> * 6, [<thermaldynamics:duct_32>,<thermaldynamics:duct_32>,<thermaldynamics:duct_32>,<thermaldynamics:duct_32>,<thermaldynamics:duct_32>,<thermaldynamics:duct_32>,<thermalfoundation:material:323>]);

# Vacuum Itemduct (Opaque)
recipes.addShapeless(<thermaldynamics:duct_32:1>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32:1>,<thermalfoundation:material:322>]);

# Dense Itemduct (Opaque)
recipes.addShapeless(<thermaldynamics:duct_32:1>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32:1>,<thermalfoundation:material:323>]);

# Impulse Itemduct
recipes.remove(<thermaldynamics:duct_32>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_32>, <liquid:glowstone>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_32:2>, <thermaldynamics:duct_32>, <liquid:glowstone> * 400, 800);
recipes.addShapeless(<thermaldynamics:duct_32:2> * 6, [<thermaldynamics:duct_32:3>,<thermaldynamics:duct_32:3>,<thermaldynamics:duct_32:3>,<thermaldynamics:duct_32:3>,<thermaldynamics:duct_32:3>,<thermaldynamics:duct_32:3>,<ore:blockGlassColorless>]);

# Vacuum Impulse Itemduct
recipes.removeShapeless(<thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32:2>,<*>,<*>,<*>]);
recipes.addShapeless(<thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32:2>,<thermalfoundation:material:322>]);

# Dense Impulse Itemduct
recipes.removeShapeless(<thermaldynamics:duct_32:2>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32:2>,<*>,<*>,<*>]);
recipes.addShapeless(<thermaldynamics:duct_32:2>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32:2>,<thermalfoundation:material:323>]);

# Impulse Itemduct (Opaque)
recipes.remove(<thermaldynamics:duct_32:3>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_32:1>, <liquid:glowstone>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:1>, <liquid:glowstone> * 400, 800);

# Vacuum Impulse Itemduct (Opaque)
recipes.addShapeless(<thermaldynamics:duct_32:3>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32:3>,<thermalfoundation:material:322>]);

# Dense Impulse Itemduct (Opaque)
recipes.addShapeless(<thermaldynamics:duct_32:3>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32:3>,<thermalfoundation:material:323>]);

# Signalum-Plated Itemduct
recipes.remove(<thermaldynamics:duct_32:4>);
recipes.addShapedMirrored(<thermaldynamics:duct_32:4>, [[<thermaldynamics:duct_32>,<thermalfoundation:material:357>,<thermaldynamics:duct_0:1>]]);
recipes.addShapeless(<thermaldynamics:duct_32:4> * 3, [<thermaldynamics:duct_32:5>,<thermaldynamics:duct_32:5>,<thermaldynamics:duct_32:5>,<ore:blockGlassColorless>]);

# Vacuum Signalum-Plated Itemduct
recipes.addShapeless(<thermaldynamics:duct_32:4>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32:4>,<thermalfoundation:material:322>]);

# Dense Signalum-Plated Itemduct
recipes.addShapeless(<thermaldynamics:duct_32:4>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32:4>,<thermalfoundation:material:323>]);

# Signalum-Plated Itemduct (Opaque)
recipes.remove(<thermaldynamics:duct_32:5>);
recipes.addShapedMirrored(<thermaldynamics:duct_32:5>, [[<thermaldynamics:duct_32:1>,<thermalfoundation:material:357>,<thermaldynamics:duct_0:1>]]);
recipes.addShapeless(<thermaldynamics:duct_32:5> * 3, [<thermaldynamics:duct_32:4>,<thermaldynamics:duct_32:4>,<thermaldynamics:duct_32:4>,<thermalfoundation:material:323>]);

# Vacuum Signalum-Plated Itemduct (Opaque)
recipes.addShapeless(<thermaldynamics:duct_32:5>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32:5>,<thermalfoundation:material:322>]);

# Dense Signalum-Plated Itemduct (Opaque)
recipes.addShapeless(<thermaldynamics:duct_32:5>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32:5>,<thermalfoundation:material:323>]);

# Signalum-Plated Impulse Itemduct
recipes.remove(<thermaldynamics:duct_32:6>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_32:4>, <liquid:glowstone>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_32:6>, <thermaldynamics:duct_32:4>, <liquid:glowstone> * 400, 800);
recipes.addShapeless(<thermaldynamics:duct_32:6> * 3, [<thermaldynamics:duct_32:7>,<thermaldynamics:duct_32:7>,<thermaldynamics:duct_32:7>,<ore:blockGlassColorless>]);

# Vacuum Signalum-Plated Impulse Itemduct
recipes.addShapeless(<thermaldynamics:duct_32:6>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32:6>,<thermalfoundation:material:322>]);

# Dense Signalum-Plated Impulse Itemduct
recipes.addShapeless(<thermaldynamics:duct_32:6>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32:6>,<thermalfoundation:material:323>]);

# Signalum-Plated Impulse Itemduct (Opaque)
recipes.remove(<thermaldynamics:duct_32:7>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_32:5>, <liquid:glowstone>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_32:7>, <thermaldynamics:duct_32:5>, <liquid:glowstone> * 400, 800);
recipes.addShapeless(<thermaldynamics:duct_32:7> * 3, [<thermaldynamics:duct_32:6>,<thermaldynamics:duct_32:6>,<thermaldynamics:duct_32:6>,<thermalfoundation:material:323>]);

# Vacuum Signalum-Plated Impulse Itemduct (Opaque)
recipes.addShapeless(<thermaldynamics:duct_32:7>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32:7>,<thermalfoundation:material:322>]);

# Dense Signalum-Plated Impulse Itemduct (Opaque)
recipes.addShapeless(<thermaldynamics:duct_32:7>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32:7>,<thermalfoundation:material:323>]);

# Structuralduct
recipes.remove(<thermaldynamics:duct_48>);
recipes.addShaped(<thermaldynamics:duct_48> * 6, [[<thermalfoundation:material:321>,<thermalfoundation:material:323>,<thermalfoundation:material:321>]]);

# Viaduct (Untreated)
recipes.remove(<thermaldynamics:duct_64:3>);
recipes.addShaped(<thermaldynamics:duct_64:3> * 4, [[<thermalfoundation:material:355>,<thermalfoundation:glass:3>,<thermalfoundation:material:355>],[<thermalfoundation:glass:3>,<contenttweaker:rf_powder>,<thermalfoundation:glass:3>],[<thermalfoundation:material:355>,<thermalfoundation:glass:3>,<thermalfoundation:material:355>]]);

# Viaduct
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_64:3>, <liquid:aerotheum>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_64>, <thermaldynamics:duct_64:3>, <liquid:aerotheum> * 200, 800);

# Long Range Viaduct
recipes.remove(<thermaldynamics:duct_64:1>);
recipes.addShaped(<thermaldynamics:duct_64:1> * 4, [[<thermalfoundation:material:323>,<thermalfoundation:glass:3>,<thermalfoundation:material:323>],[<thermalfoundation:glass:3>,<contenttweaker:rf_powder>,<thermalfoundation:glass:3>],[<thermalfoundation:material:323>,<thermalfoundation:glass:3>,<thermalfoundation:material:323>]]);

# Long Range Linking Viaduct
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_64>, <liquid:ender>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_64:2>, <thermaldynamics:duct_64>, <liquid:ender> * 2000, 8000);

# Servo
recipes.remove(<thermaldynamics:servo>);
recipes.addShaped(<thermaldynamics:servo>, [[<thermalfoundation:material:32>,<ore:ingotRedAlloy>,<thermalfoundation:material:32>],[<ore:blockGlass>,<thermalfoundation:material:32>,<ore:blockGlass>]]);

# Hardened Servo
recipes.remove(<thermaldynamics:servo:1>);
recipes.addShaped(<thermaldynamics:servo:1>, [[<thermalfoundation:material:354>,<ore:ingotRedAlloy>,<thermalfoundation:material:354>],[<ore:blockGlass>,<thermalfoundation:material:354>,<ore:blockGlass>]]);

# Reinforced Servo
recipes.remove(<thermaldynamics:servo:2>);
recipes.addShaped(<thermaldynamics:servo:2>, [[<thermalfoundation:material:353>,<contenttweaker:rf_powder>,<thermalfoundation:material:353>],[<ore:ingotRedAlloy>,<thermalfoundation:material:353>,<ore:ingotRedAlloy>]]);

# Signalum Servo
recipes.remove(<thermaldynamics:servo:3>);
recipes.addShaped(<thermaldynamics:servo:3>, [[<thermalfoundation:material:357>,<contenttweaker:rf_powder>,<thermalfoundation:material:357>],[<ore:ingotRedAlloy>,<thermalfoundation:material:357>,<ore:ingotRedAlloy>]]);

# Resonant Servo
recipes.remove(<thermaldynamics:servo:4>);
recipes.addShaped(<thermaldynamics:servo:4>, [[<thermalfoundation:material:359>,<contenttweaker:rf_powder>,<thermalfoundation:material:359>],[<ore:ingotRedAlloy>,<thermalfoundation:material:359>,<ore:ingotRedAlloy>]]);

# Filter
recipes.remove(<thermaldynamics:filter>);
recipes.addShaped(<thermaldynamics:filter>, [[<thermalfoundation:material:32>,<contenttweaker:rf_powder>,<thermalfoundation:material:32>],[<minecraft:paper>,<thermalfoundation:material:32>,<minecraft:paper>]]);

# Hardened Filter
recipes.remove(<thermaldynamics:filter:1>);
recipes.addShaped(<thermaldynamics:filter:1>, [[<thermalfoundation:material:354>,<contenttweaker:rf_powder>,<thermalfoundation:material:354>],[<minecraft:paper>,<thermalfoundation:material:354>,<minecraft:paper>]]);

# Reinforced Filter
recipes.remove(<thermaldynamics:filter:2>);
recipes.addShaped(<thermaldynamics:filter:2>, [[<thermalfoundation:material:353>,<contenttweaker:rf_powder>,<thermalfoundation:material:353>],[<minecraft:paper>,<thermalfoundation:material:353>,<minecraft:paper>]]);

# Signalum Filter
recipes.remove(<thermaldynamics:filter:3>);
recipes.addShaped(<thermaldynamics:filter:3>, [[<thermalfoundation:material:357>,<contenttweaker:rf_powder>,<thermalfoundation:material:357>],[<minecraft:paper>,<thermalfoundation:material:357>,<minecraft:paper>]]);

# Resonant Filter
recipes.remove(<thermaldynamics:filter:4>);
recipes.addShaped(<thermaldynamics:filter:4>, [[<thermalfoundation:material:359>,<contenttweaker:rf_powder>,<thermalfoundation:material:359>],[<minecraft:paper>,<thermalfoundation:material:359>,<minecraft:paper>]]);

# Retriever
recipes.remove(<thermaldynamics:retriever>);
recipes.addShaped(<thermaldynamics:retriever>, [[<thermalfoundation:material:32>,<minecraft:ender_eye>,<thermalfoundation:material:32>],[<ore:ingotRedAlloy>,<thermalfoundation:material:32>,<ore:ingotRedAlloy>]]);

# Hardened Retriever
recipes.remove(<thermaldynamics:retriever:1>);
recipes.addShaped(<thermaldynamics:retriever:1>, [[<thermalfoundation:material:354>,<minecraft:ender_eye>,<thermalfoundation:material:354>],[<ore:ingotRedAlloy>,<thermalfoundation:material:354>,<ore:ingotRedAlloy>]]);

# Reinforced Retriever
recipes.remove(<thermaldynamics:retriever:2>);
recipes.addShaped(<thermaldynamics:retriever:2>, [[<thermalfoundation:material:353>,<minecraft:ender_eye>,<thermalfoundation:material:353>],[<ore:ingotRedAlloy>,<thermalfoundation:material:353>,<ore:ingotRedAlloy>]]);

# Signalum Retriever
recipes.remove(<thermaldynamics:retriever:3>);
recipes.addShaped(<thermaldynamics:retriever:3>, [[<thermalfoundation:material:357>,<minecraft:ender_eye>,<thermalfoundation:material:357>],[<ore:ingotRedAlloy>,<thermalfoundation:material:357>,<ore:ingotRedAlloy>]]);

# Resonant Retriever
recipes.remove(<thermaldynamics:retriever:4>);
recipes.addShaped(<thermaldynamics:retriever:4>, [[<thermalfoundation:material:359>,<minecraft:ender_eye>,<thermalfoundation:material:359>],[<ore:ingotRedAlloy>,<thermalfoundation:material:359>,<ore:ingotRedAlloy>]]);

# Redstone Relay
recipes.remove(<thermaldynamics:relay>);
recipes.addShaped(<thermaldynamics:relay>, [[<thermalfoundation:material:357>,<contenttweaker:rf_powder>,<thermalfoundation:material:357>],[<ore:ingotRedAlloy>,<ore:ingotRedAlloy>,<ore:ingotRedAlloy>]]);

# Cryo-Stabilized Fluxduct (Empty)
recipes.remove(<thermaldynamics:duct_0:9>);
mods.thaumcraft.Infusion.registerRecipe("thermaldynamics:cryo_stabilized_fluxduct_empty", "", <thermaldynamics:duct_0:9>, 5, [<aspect:gelum> * 100,<aspect:potentia> * 100,<aspect:motus> * 50,<aspect:machina> * 20], <thermaldynamics:duct_0:4>, [<botania:elfglass>,<simplyjetpacks:metaitemmods:26>,<botania:elfglass>,<evilcraft:potentia_sphere>,<botania:elfglass>,<simplyjetpacks:metaitemmods:26>,<botania:elfglass>,<alchemistry:ingot:11>]);

# Cryo-Stabilized Fluxduct
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_0:9>, <liquid:cryotheum>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermaldynamics:duct_0:5>, <thermaldynamics:duct_0:9>, <liquid:cryotheum> * 10000, 40000);

print("ENDING ThermalDynamics.zs");