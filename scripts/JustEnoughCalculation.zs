# Author: Atricos
print("STARTING JustEnoughCalculation.zs");

# Warning tooltip
<jecalculation:item_calculator>.addTooltip(format.red(format.bold("Warning: ")) + format.white("Including certain machines in your calculations might crash the game!"));
<jecalculation:item_calculator>.addTooltip(format.white("So far we could only find the Arc Furnace that does this, but there might be more."));
<jecalculation:item_calculator>.addTooltip(format.red(format.bold("Use with care!")));


print("ENDING JustEnoughCalculation.zs");