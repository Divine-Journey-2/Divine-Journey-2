// Author: Atricos, WaitingIdly

import mods.initialinventory.InvHandler.addStartingItem as add;

print("STARTING InitialInventory.zs");

// Cannot use localization in this section, as it will prevent the book from working properly on servers.
// As such, english is used as the default, and the first page has instructions to send a command (which can be localized).
val dj2bag_of_truth_lockedname = "§d§lBag of Truth (Locked)";
val dj2introductionpapername = "§r§lRead the tooltip for important keybind information!";
val dj2introductionpaperdesc0 = "§r§5- Press §6K§r§5 to open your quests";
val dj2introductionpaperdesc1 = "§r§5- Press §6`§r§5 while breaking blocks to veinmine";
val dj2introductionpaperdesc2 = "§r§5- Press §6.§r§5 to place an item in-world";
val dj2introductionbookname = "Welcome";
val dj2introductionbookdesc0 = "§4§n§lWelcome to Divine Journey 2!§r\n\n§8§0You are a Fallen Angel that has one purpose in this world: Find the Meaning of Life! Fortunately however, it's already in your inventory, locked up in a convenient bag... So there isn't too much to do, huh...?";
val dj2introductionbookdesc1 = "Hold on, you seem to need a key to open the bag, a Key to Infinity! Well that makes things a bit more complicated... Actually, WAY more complicated! So much so, that you'll have to beat an entire expert mode pack to find out what your bag contains!";
val dj2introductionbookdesc2 = "In Divine Journey 2, you need to progress through all the available mods in order, since recipes are highly gated. A bunch of the recipes are also much more challenging, so you need a large amount of automation to obtain all materials necessary; and";
val dj2introductionbookdesc3 = "you've been given the tools to set up all the automation your heart desires.\n\nTo succeed in this pack, you need to have a good understanding of Modded Minecraft in general, or at least have played some other modpacks that";
val dj2introductionbookdesc4 = "give you a feel on how to autocraft, autoprocess, automate every aspect of any tech or magic mod, and so on.\n\nDon't be discouraged however, since along the way, you'll be exploring wonderous dimensions added by DivineRPG, Twilight Forest,";
val dj2introductionbookdesc5 = "Aether, Atum 2, AbyssalCraft, The Erebus, Galacticraft, and more. There is plenty of fun to be had with those, especially since you'll have access to them quite early on.\n\nThe main progression line consists of the following:";
val dj2introductionbookdesc6 = "§l1.§r Early Exploration with Tinkers' Tools and Totemic / Roots spells and gadgets.\n§l2.§r Tech Mods for all your automation needs.\n§l3.§r Magic Mods: Blood Magic, EvilCraft, AbyssalCraft, Botania, Thaumcraft, Thaumic Augmentation, Bewitchment, and";
val dj2introductionbookdesc7 = "Astral Sorcery.\n§l4.§r Lategame OPness: Mystical Agriculture, RFTools Dimensions, Draconic Evolution, Alchemistry, ProjectE, and Avaritia.\n\n§nNote:§r This pack is different from Divine Journey 1 in many aspects. If you want to play a port of Divine Journey 1";
val dj2introductionbookdesc8 = "in 1.12.2, I highly suggest checking out Celestial Journey by Unhook.\n\nThis pack however, expands the mods offered by Divine Journey 1, makes quality of life changes such as way less grinding and waiting for recipes to complete in the";
val dj2introductionbookdesc9 = "lategame, much fewer recipes that involve instability (like Thaumcraft Infusion), and much less grind in general. For example, you no longer have to setup the Demon Invasion a trillion times, you no longer need to defeat every Witchery (or Bewitchment) boss";
val dj2introductionbookdesc10 = "a quadrillion times, and quest rewards tend to be a bit more generous this time.\n\nNow go ahead, §lpress K to open your quests§r, and I hope you'll have fun in Divine Journey 2!";


add(<contenttweaker:bag_of_truth_locked>.withTag({display: {Name:dj2bag_of_truth_lockedname}}));
add(<minecraft:written_book>.withTag({pages: [
    "{\"text\":\"" + "Run /dj2 introduction_book to view translations" + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc0 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc1 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc2 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc3 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc4 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc5 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc6 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc7 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc8 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc9 + "\"}",
    "{\"text\":\"" + dj2introductionbookdesc10 + "\"}",
], author: "Atricos", title: dj2introductionbookname, resolved: 1 as byte}));
add(<minecraft:paper>.withTag({display: {Name: dj2introductionpapername, Lore:[dj2introductionpaperdesc0, dj2introductionpaperdesc1, dj2introductionpaperdesc2]}}));

print("ENDING InitialInventory.zs");
