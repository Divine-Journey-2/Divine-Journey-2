# Author: Atricos
print("STARTING MysticalWorld.zs");

# Removing Mixed Seeds and Toasted Seeds, because they just clog up JEI
recipes.remove(<mysticalworld:assorted_seeds>);
furnace.remove(<mysticalworld:cooked_seeds>);

print("ENDING MysticalWorld.zs");