// Author: Atricos
print("STARTING WirelessCraftingTerminal2.zs");

// Magnet Card
recipes.remove(<wct:magnet_card>);
recipes.addShapeless("wct_magnet_card", <appliedenergistics2:material:60>, [<wct:magnet_card>]);
<wct:magnet_card>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<wct:magnet_card>.addTooltip(game.localize("dj2.deprecated.convert.desc"));

// Wireless Crafting Terminal
recipes.remove(<wct:wct>);
recipes.addShapeless("wct_wct", <appliedenergistics2:wireless_crafting_terminal>, [<wct:wct>]);
recipes.addShapeless("wct_wct_creative", <appliedenergistics2:wireless_crafting_terminal>, [<wct:wct_creative>]);
<wct:wct>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<wct:wct>.addTooltip(game.localize("dj2.deprecated.convert.desc"));
<wct:wct_creative>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<wct:wct_creative>.addTooltip(game.localize("dj2.deprecated.convert.desc"));

// Wireless Fluid Terminal
recipes.remove(<wft:wft>);
recipes.addShapeless("wft_wft", <appliedenergistics2:wireless_fluid_terminal>, [<wft:wft>]);
recipes.addShapeless("wft_wft_creative", <appliedenergistics2:wireless_fluid_terminal>, [<wft:wft_creative>]);
<wft:wft>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<wft:wft>.addTooltip(game.localize("dj2.deprecated.convert.desc"));
<wft:wft_creative>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<wft:wft_creative>.addTooltip(game.localize("dj2.deprecated.convert.desc"));

// Wireless Universal Terminal
recipes.remove(<ae2wtlib:wut>);
recipes.remove(<ae2wtlib:wut_creative>);
recipes.addShapeless("wct_wut", <appliedenergistics2:wireless_crafting_terminal>, [<ae2wtlib:wut>.transformReplace(<appliedenergistics2:wireless_fluid_terminal>)]);
recipes.addShapeless("wct_wut_creative", <appliedenergistics2:wireless_crafting_terminal>, [<ae2wtlib:wut_creative>.transformReplace(<appliedenergistics2:wireless_fluid_terminal>)]);
<ae2wtlib:wut>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<ae2wtlib:wut>.addTooltip(game.localize("dj2.deprecated.convert.desc"));
<ae2wtlib:wut_creative>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<ae2wtlib:wut_creative>.addTooltip(game.localize("dj2.deprecated.convert.desc"));

print("ENDING WirelessCraftingTerminal2.zs");
