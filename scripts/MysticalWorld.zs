# Author: Atricos

import mods.roots.RunicShears;

print("STARTING MysticalWorld.zs");

# Removing Mixed Seeds and Toasted Seeds, because they just clog up JEI
recipes.remove(<mysticalworld:assorted_seeds>);
furnace.remove(<mysticalworld:cooked_seeds>);

# Silver Nuggets
RunicShears.removeRecipe(<mysticalworld:silver_nugget>);

print("ENDING MysticalWorld.zs");
