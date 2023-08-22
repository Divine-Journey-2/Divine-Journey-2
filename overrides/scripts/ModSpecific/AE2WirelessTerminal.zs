// Author: Atricos
print("STARTING AE2WirelessTerminal.zs");

// Infinity Booster Card
recipes.remove(<ae2wtlib:infinity_booster_card>);
recipes.addHiddenShapeless("infinity_booster_card", <appliedenergistics2:material:59>, [<ae2wtlib:infinity_booster_card>]);
<ae2wtlib:infinity_booster_card>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<ae2wtlib:infinity_booster_card>.addTooltip(game.localize("dj2.deprecated.convert.desc"));

print("ENDING AE2WirelessTerminal.zs");
