#loader contenttweaker
# Author: Atricos

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

print("STARTING ContentTweakerFluids.zs");

var remedyFluid = VanillaFactory.createFluid("remedy", Color.fromHex("07D3FF"));
remedyFluid.density = 2200;
remedyFluid.luminosity = 3;
remedyFluid.temperature = 350;
remedyFluid.material = <blockmaterial:lava>;
remedyFluid.register();

var coldIronFluid = VanillaFactory.createFluid("cold_iron", Color.fromHex("6F7475"));
coldIronFluid.density = 2500;
coldIronFluid.luminosity = 10;
coldIronFluid.temperature = 769;
coldIronFluid.viscosity = 10000;
coldIronFluid.material = <blockmaterial:lava>;
coldIronFluid.register();

print("ENDING ContentTweakerFluids.zs");