# Author: Atricos, WaitingIdly

import crafttweaker.item.IItemStack;
import crafttweaker.item.ITooltipFunction;
import crafttweaker.data.IData;

print("STARTING StorageDrawers.zs");

# Framing Table
<storagedrawers:framingtable>.addTooltip(format.gold("Consider using the Hand Framing Tool instead!"));

# Upgrade Template from Framed Drawers
recipes.addShaped(<storagedrawers:upgrade_template> * 2, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<ore:stickWood>,<storagedrawers:customdrawers:*>,<ore:stickWood>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);

# Upgrades
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped(<storagedrawers:upgrade_storage:1>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:iron_ingot>,<storagedrawers:upgrade_storage>,<minecraft:iron_ingot>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped(<storagedrawers:upgrade_storage:2>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:gold_ingot>,<storagedrawers:upgrade_storage:1>,<minecraft:gold_ingot>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:diamond>,<storagedrawers:upgrade_storage:2>,<minecraft:diamond>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],[<minecraft:emerald>,<storagedrawers:upgrade_storage:3>,<minecraft:emerald>],[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_conversion>);

# Compacting Drawer
recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped(<storagedrawers:compdrawers>, [[<ore:stone>,<ore:stone>,<ore:stone>],[<minecraft:piston>,<ore:drawerBasic>,<minecraft:piston>],[<ore:stone>,<thermalfoundation:material:32>,<ore:stone>]]);

# Drawer Controller
recipes.remove(<storagedrawers:controller>);
recipes.addShaped(<storagedrawers:controller>, [[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],[<draconicevolution:potentiometer>,<ore:drawerBasic>,<draconicevolution:potentiometer>],[<ore:ingotSteel>,<avaritia:resource>,<ore:ingotSteel>]]);

# Controller Slave
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped(<storagedrawers:controllerslave>, [[<ore:stone>,<ore:stone>,<ore:stone>],[<ore:dustDraconium>,<ore:drawerBasic>,<ore:dustDraconium>],[<ore:stone>,<minecraft:diamond>,<ore:stone>]]);

# Ore Dictionaries
<ore:drawerBasic>.add(<storagedrawersextra:extra_drawers:*>);
<ore:drawerTrim>.add(<storagedrawersextra:extra_trim_0:*>);

# Creative Storage Upgrade
recipes.addShaped(<storagedrawers:upgrade_creative>, [[<contenttweaker:white_matter>,<storagedrawers:upgrade_storage:4>,<contenttweaker:white_matter>],[<tconstruct:materials:50>,<projecte:condenser_mk2>,<tconstruct:materials:50>],[<contenttweaker:white_matter>,<storagedrawers:upgrade_storage:4>,<contenttweaker:white_matter>]]);

# Creative Vending Upgrade
mods.extendedcrafting.TableCrafting.addShaped(<storagedrawers:upgrade_creative:1>,
[[<storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <alchemistry:ingot:71>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <alchemistry:ingot:71>],
[<storagedrawers:upgrade_creative>, <thaumicenergistics:essentia_cell_creative>, <thaumicenergistics:essentia_cell_creative>, <thaumicenergistics:essentia_cell_creative>, <thaumicenergistics:essentia_cell_creative>, <alchemistry:ingot:71>, <alchemistry:ingot:71>, <alchemistry:ingot:71>, <alchemistry:ingot:71>],
[<storagedrawers:upgrade_creative>, <enderio:block_cap_bank>, <enderio:block_cap_bank>, <enderio:block_cap_bank>, <contenttweaker:singularity_singularity>, <alchemistry:ingot:71>, <alchemistry:ingot:71>, <alchemistry:ingot:71>, <alchemistry:ingot:71>],
[<storagedrawers:upgrade_creative>, <bigreactors:turbinecreativesteamgenerator>, <bigreactors:turbinecreativesteamgenerator>, <contenttweaker:singularity_singularity>, <mysticalagradditions:stuff:69>, <alchemistry:ingot:71>, <bigreactors:turbinecreativesteamgenerator>, <bigreactors:turbinecreativesteamgenerator>, <alchemistry:ingot:71>],
[<storagedrawers:upgrade_creative>, <rftools:powercell_creative>, <contenttweaker:singularity_singularity>, <mysticalagradditions:stuff:69>, <extrautils2:creativechest>, <mysticalagradditions:stuff:69>, <contenttweaker:singularity_singularity>, <rftools:powercell_creative>, <storagedrawers:upgrade_creative>],
[<storagedrawers:upgrade_creative>, <bigreactors:reactorcreativecoolantport>, <bigreactors:reactorcreativecoolantport>, <contenttweaker:singularity_singularity>, <mysticalagradditions:stuff:69>, <contenttweaker:singularity_singularity>, <bigreactors:reactorcreativecoolantport>, <bigreactors:reactorcreativecoolantport>, <storagedrawers:upgrade_creative>],
[<storagedrawers:upgrade_creative>, <bibliocraft:bookcasecreative>, <bibliocraft:bookcasecreative>, <bibliocraft:bookcasecreative>, <contenttweaker:singularity_singularity>, <bibliocraft:bookcasecreative>, <bibliocraft:bookcasecreative>, <bibliocraft:bookcasecreative>, <storagedrawers:upgrade_creative>],
[<storagedrawers:upgrade_creative>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <divinerpg:dungeon_bookshelf>, <storagedrawers:upgrade_creative>],
[<storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>, <storagedrawers:upgrade_creative>]]);

# Remove recipes for all Storage Drawers Extras
recipes.removeByMod("storagedrawersextra");

for x in [
    <storagedrawersextra:extra_trim_3>,
    <storagedrawersextra:extra_trim_0>,
    <storagedrawersextra:extra_drawers>,
    <storagedrawersextra:extra_drawers:1>,
    <storagedrawersextra:extra_drawers:2>,
    <storagedrawersextra:extra_drawers:3>,
    <storagedrawersextra:extra_drawers:4>,
] as IItemStack[] {
    x.addTooltip("Storage Drawers Extras is planned to be §4§lremoved§r in an upcoming update! (Likely ~2.22.0)");
    x.addTooltip("Use the §6\"Hand Framing Tool\"§r to convert these into Framed Drawers to prevent anything they contain from being deleted!");
}


# Drawer Tooltips
function getNested(inTag as IData, keys as string[], alt as IData) as IData {
    var tag = inTag;
    for key in keys {
        if (isNull(tag)) return alt;
        tag = tag.memberGet(key);
    }
    return isNull(tag) ? alt : tag;
}

# Indicate materials framing Framed Drawers
function makeTagFunc(name as string) as ITooltipFunction {
    val matTag = "Mat" + name[0];
    return function(stack as IItemStack) as string {
        if (isNull(stack) || isNull(stack.tag) || isNull(stack.tag.memberGet(matTag))) return "§e" + name + ": §r§c-§r";
        val data as IData = stack.tag.memberGet(matTag);
        val item as IItemStack = itemUtils.getItem(data.id, data.Damage);
        return "§e" + name + ": §r" + (isNull(item) ? "§c-§r" : item.displayName);
    } as ITooltipFunction;
}

# Format item & amount
function contents(name as string, count as int) as string {
    return "§c" + count + "§r §6" + name + "§r";
}

# Convert an array of strings into a comma separated string, with a custom joiner if >2 entries. Uses an Oxford Comma
function arrayToList(list as string[], joiner as string) as string {
    var output as string = "";
    for index, entry in list {
        output += entry;
        if (index == list.length - 1) output += ".";
        else if (index == list.length - 2 && list.length > 2) output += ", §b" + joiner + "§r ";
        else if (index == list.length - 2) output += " §b" + joiner + "§r ";
        else output += ", ";
    }
    return output;
}

# Metadata to Multiplier for Drawer Upgrades
static upgradeMultiplier as int[int] = {
    0:  2,
    1:  4,
    2:  8,
    3: 16,
    4: 32,
} as int[int];

# Determine the current capacity of a drawer using its current upgrades based on an input base.
function capacity(passBase as int) as ITooltipFunction {
    return function(drawer as IItemStack) as string {
        val g as IData = getNested(drawer.tag, ["tile", "Upgrades"], []);

        var base = passBase;
        var total = 0;
        for x in g.asList() {
            if (isNull(x)) continue;
            if (x.id == "storagedrawers:upgrade_storage") total += upgradeMultiplier[x.Damage];
            else if (x.id == "storagedrawers:upgrade_one_stack") base = 1;
            else if (x.id == "storagedrawers:upgrade_creative" && x.Damage == 0) return "Infinite Storage";
            else if (x.id == "storagedrawers:upgrade_creative" && x.Damage == 1) return "Vending";
        }
        val capacity = (base * (total > 0 ? total : 1));
        return "Capacity: §c" + capacity + "§r stack" + (capacity == 1 ? "" : "s");
    } as ITooltipFunction;
}

# Convert a non-compacting drawer into a comma separated list containing all its items.
# Note that multiple of the same type of item are *not* combined.
function normalDrawer() as ITooltipFunction {
    return function(drawer as IItemStack) as string {
        val items as IData = getNested(drawer.tag, ["tile", "Drawers"], []);
        if (isNull(items)) return "";
        var end as string[] = [];
        for i, x in items.asList() {
            if (isNull(x) || isNull(x.Item)) continue;
            val item as IItemStack = itemUtils.getItem(x.Item.id, x.Item.Damage);
            end += contents(item.displayName, x.Count);
        }
        if (end.length == 0) return "§6Contains nothing§r";
        return arrayToList(end, "and");
    } as ITooltipFunction;
}

# Convert a compacting drawer into a comma separated list containing its items, indicating that the quantity is exclusive between types.
function compactingDrawer() as ITooltipFunction {
    return function(drawer as IItemStack) as string {
        val count as IData = getNested(drawer.tag, ["tile", "Drawers", "Count"], "0");

        val items as IData = getNested(drawer.tag, ["tile", "Drawers", "Items"], []);
        if (isNull(items) || isNull(count)) return "";
        var end as string[] = [];
        for i, x in items.asList() {
            if (isNull(x) || isNull(x.Item)) continue;
            val item as IItemStack = itemUtils.getItem(x.Item.id, x.Item.Damage);
            end += contents(item.displayName, count / x.Conv);
        }
        if (end.length == 0) return "§6Contains nothing§r";
        return arrayToList(end, "or");
    } as ITooltipFunction;
}

# Setup the drawer tooltips
function setupDrawerTooltip(drawer as IItemStack, trim as bool, slots as int, stack as int) {
    if (trim) {
        drawer.addAdvancedTooltip(makeTagFunc("Side"));
        drawer.addAdvancedTooltip(makeTagFunc("Front"));
        drawer.addAdvancedTooltip(makeTagFunc("Trim"));
    }
    if (stack > 0) {
        drawer.removeTooltip("stacks per drawer");
        drawer.addAdvancedTooltip(capacity(stack));
    }
    if (slots == 3) {
        drawer.addAdvancedTooltip(compactingDrawer());
    } else if (slots > 0) {
        drawer.addAdvancedTooltip(normalDrawer());
    }
}

setupDrawerTooltip(<storagedrawers:basicdrawers>, false, 1, 32);
setupDrawerTooltip(<storagedrawers:basicdrawers:1>, false, 2, 16);
setupDrawerTooltip(<storagedrawers:basicdrawers:2>, false, 4, 8);
setupDrawerTooltip(<storagedrawers:basicdrawers:3>, false, 2, 8);
setupDrawerTooltip(<storagedrawers:basicdrawers:4>, false, 4, 4);
setupDrawerTooltip(<storagedrawers:customdrawers>, true, 1, 32);
setupDrawerTooltip(<storagedrawers:customdrawers:1>, true, 2, 16);
setupDrawerTooltip(<storagedrawers:customdrawers:2>, true, 4, 8);
setupDrawerTooltip(<storagedrawers:customdrawers:3>, true, 2, 8);
setupDrawerTooltip(<storagedrawers:customdrawers:4>, true, 4, 4);
setupDrawerTooltip(<storagedrawers:compdrawers>, false, 3, 16);
setupDrawerTooltip(<framedcompactdrawers:framed_compact_drawer>, true, 3, 16);
setupDrawerTooltip(<framedcompactdrawers:framed_drawer_controller>, true, 0, 0);
setupDrawerTooltip(<framedcompactdrawers:framed_slave>, true, 0, 0);

<storagedrawers:customtrim>.addAdvancedTooltip(makeTagFunc("Side"));
<storagedrawers:customtrim>.addAdvancedTooltip(makeTagFunc("Trim"));

print("ENDING StorageDrawers.zs");
