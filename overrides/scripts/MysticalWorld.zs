# Author: Atricos, WaitingIdly

import mods.roots.RunicShears;

print("STARTING MysticalWorld.zs");

# Removing Mixed Seeds and Toasted Seeds, because they just clog up JEI
recipes.remove(<mysticalworld:assorted_seeds>);
furnace.remove(<mysticalworld:cooked_seeds>);

# Fix conflicting recipe for uncrafting Pearl blocks
recipes.remove(<mysticalworld:pearl_button>);
recipes.addShapeless(<mysticalworld:pearl_button> * 8, [<mysticalworld:pearl>]);

# Silver Nuggets
RunicShears.removeRecipe(<mysticalworld:silver_nugget>);

print("ENDING MysticalWorld.zs");
