#loader contenttweaker
# Author: Atricos

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

print("STARTING ContentTweakerFluids.zs");

var remedyFluid = VanillaFactory.createFluid("remedy", Color.fromHex("F7EA34"));
remedyFluid.density = 2200;
remedyFluid.luminosity = 3;
remedyFluid.temperature = 350;
remedyFluid.register();

var coldIronFluid = VanillaFactory.createFluid("cold_iron", Color.fromHex("6F7475"));
coldIronFluid.density = 2500;
coldIronFluid.luminosity = 10;
coldIronFluid.temperature = 769;
coldIronFluid.viscosity = 10000;
coldIronFluid.material = <blockmaterial:lava>;
coldIronFluid.register();

var mercuryFluid = VanillaFactory.createFluid("mercury", Color.fromHex("D8D9D4"));
mercuryFluid.density = 2400;
mercuryFluid.luminosity = 12;
mercuryFluid.temperature = 350;
mercuryFluid.viscosity = 7000;
mercuryFluid.material = <blockmaterial:lava>;
mercuryFluid.register();

var impureMercuryIodineMixtureFluid = VanillaFactory.createFluid("impure_mercury_iodine_mixture", Color.fromHex("959993"));
impureMercuryIodineMixtureFluid.density = 2500;
impureMercuryIodineMixtureFluid.luminosity = 6;
impureMercuryIodineMixtureFluid.temperature = 360;
impureMercuryIodineMixtureFluid.viscosity = 8500;
impureMercuryIodineMixtureFluid.material = <blockmaterial:lava>;
impureMercuryIodineMixtureFluid.register();

var IodineFluid = VanillaFactory.createFluid("liquid_iodine", Color.fromHex("3C423B"));
IodineFluid.density = 5000;
IodineFluid.luminosity = 2;
IodineFluid.temperature = 400;
IodineFluid.viscosity = 15000;
IodineFluid.material = <blockmaterial:lava>;
IodineFluid.register();

var FluidGrowthInfusion = VanillaFactory.createFluid("growth_infusion_liquid", Color.fromHex("A3FF33"));
FluidGrowthInfusion.density = 2000;
FluidGrowthInfusion.luminosity = 2;
FluidGrowthInfusion.temperature = 350;
FluidGrowthInfusion.viscosity = 1500;
FluidGrowthInfusion.register();

var FluidBromine = VanillaFactory.createFluid("bromine", Color.fromHex("B54A26"));
FluidBromine.density = 100;
FluidBromine.temperature = 350;
FluidBromine.viscosity = 600;
FluidBromine.register();

var LiquidSpaceFluid = VanillaFactory.createFluid("space", Color.fromHex("010014"));
LiquidSpaceFluid.density = 50;
LiquidSpaceFluid.luminosity = 0;
LiquidSpaceFluid.temperature = 0;
LiquidSpaceFluid.viscosity = 50;
LiquidSpaceFluid.material = <blockmaterial:lava>;
LiquidSpaceFluid.register();

print("ENDING ContentTweakerFluids.zs");