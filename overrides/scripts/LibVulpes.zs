# Author: Atricos
print("STARTING LibVulpes.zs");

# This mod is useful I swear

# Motors
recipes.remove(<libvulpes:enhancedmotor>);
recipes.remove(<libvulpes:advancedmotor>);
recipes.remove(<libvulpes:motor>);
recipes.remove(<libvulpes:elitemotor>);

# Batteries
recipes.remove(<libvulpes:battery:*>);

# Coal Generator
recipes.remove(<libvulpes:coalgenerator>);

# Hatches
recipes.remove(<libvulpes:hatch:*>);

# Machine Structure
recipes.remove(<libvulpes:structuremachine>);

# Power Plugs
recipes.remove(<libvulpes:forgepowerinput>);
recipes.remove(<libvulpes:forgepoweroutput>);

# Linker
recipes.remove(<libvulpes:linker>);

print("ENDING LibVulpes.zs");