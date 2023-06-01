// Author: Atricos, WaitingIdly

import mods.initialinventory.InvHandler.addStartingItem as add;

print("STARTING InitialInventory.zs");

add(<contenttweaker:bag_of_truth_locked>.withTag({display: {Name:game.localize("dj2.bag_of_truth_locked.name")}}));
add(<minecraft:written_book>.withTag({pages: [
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc0") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc1") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc2") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc3") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc4") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc5") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc6") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc7") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc8") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc9") + "\"}",
    "{\"text\":\"" + game.localize("dj2.introduction.book.desc10") + "\"}",
], author: "Atricos", title: game.localize("dj2.introduction.book.name"), resolved: 1 as byte}));
add(<minecraft:paper>.withTag({display: {Name: game.localize("dj2.introduction.paper.name"), Lore:[game.localize("dj2.introduction.paper.desc0"), game.localize("dj2.introduction.paper.desc1"), game.localize("dj2.introduction.paper.desc2")]}}));

print("ENDING InitialInventory.zs");
