#loader crafttweaker reloadable
// Author: WaitingIdly

import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerDeathDropsEvent;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.EntityTravelToDimensionEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.CommandEvent;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntityLiving;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.Commands;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.I18n;

static oreConversion as IItemStack[string] = {
    oreAluminum: <thermalfoundation:ore:4>,
    oreAmber: <thaumcraft:ore_amber>,
    oreAmethyst: <mysticalworld:amethyst_ore>,
    oreAquamarine: <astralsorcery:blockcustomsandore>,
    oreArlemite: <divinerpg:arlemite_ore>,
    oreAstralStarmetal: <astralsorcery:blockcustomore:1>,
    oreCertusQuartz: <appliedenergistics2:quartz_ore>,
    oreChargedCertusQuartz: <appliedenergistics2:charged_quartz_ore>,
    oreCinnabar: <thaumcraft:ore_cinnabar>,
    oreClathrateOilSand: <thermalfoundation:ore_fluid>,
    oreClathrateOilShale: <thermalfoundation:ore_fluid:1>,
    oreClathrateRedstone: <thermalfoundation:ore_fluid:2>,
    oreCoal: <minecraft:coal_ore>,
    oreCopper: <thermalfoundation:ore>,
    oreCoralium: <abyssalcraft:coraliumore>,
    oreDark: <evilcraft:dark_ore>,
    oreDiamond: <minecraft:diamond_ore>,
    oreDimensionalShard: <rftools:dimensional_shard_ore>,
    oreDraconium: <draconicevolution:draconium_ore>,
    oreEmerald: <minecraft:emerald_ore>,
    oreGarnet: <bewitchment:garnet_ore>,
    oreGold: <minecraft:gold_ore>,
    oreInferium: <mysticalagriculture:inferium_ore>,
    oreIridium: <thermalfoundation:ore:7>,
    oreIron: <minecraft:iron_ore>,
    oreLapis: <minecraft:lapis_ore>,
    oreLead: <thermalfoundation:ore:3>,
    oreMithril: <thermalfoundation:ore:8>,
    oreNickel: <thermalfoundation:ore:5>,
    oreOpal: <bewitchment:opal_ore>,
    oreOsmium: <mekanism:oreblock>,
    oreOverworldQuartz: <thaumcraft:ore_quartz>,
    orePlatinum: <thermalfoundation:ore:6>,
    oreProsperity: <mysticalagriculture:prosperity_ore>,
    oreQuartzBlack: <actuallyadditions:block_misc:3>,
    oreRealmite: <divinerpg:realmite_ore>,
    oreRedstone: <minecraft:redstone_ore>,
    oreRupee: <divinerpg:rupee_ore>,
    oreSilver: <thermalfoundation:ore:2>,
    oreTin: <thermalfoundation:ore:1>,
    oreUranium: <immersiveengineering:ore:5>,
    oreYellorite: <bigreactors:oreyellorite>,
} as IItemStack[string];

static correctOreDict as string[] = [
    "oreYellorite",
    "oreChargedCertusQuartz"
] as string[];


events.onBlockHarvestDrops(function(e as BlockHarvestDropsEvent) {
    if (e.world.isRemote()) {
        return;
    }

    // Fix Quantum Flux Graphite Ore dropping their Graphite Dust instead of our fixed version
    if (!e.silkTouch && e.block.definition.id == "quantumflux:graphiteore") {
        e.drops = [<contenttweaker:industrial_grade_graphite_dust>] as WeightedItemStack[];
        return;
    }

    // If we aren't a player or aren't harvesting with Silk Touch, return early.
    if (!e.isPlayer || !e.silkTouch) {
        return;
    }
});

static astralTiers as string[] = [
    "BASIC_CRAFT",
    "ATTUNEMENT",
    "CONSTELLATION",
    "RADIANCE"
] as string[];

function progressAstral(player as IPlayer, level as int) {
    val data as IData = player.data.divine_journey_2;

    val progressingFrom = (!isNull(data) && !isNull(data.astral_level)) ? data.astral_level : -1;
    // Only progress them up to the tier once, otherwise it spams the chat.
    // This cannot be done via simply changing the tier in the playerdata because Astral stores its data in its own file
    if (level > progressingFrom) {
        Commands.call("/astralsorcery research " + player.name + " " + astralTiers[level], player, player.world, false, true);
        player.update({ divine_journey_2: { astral_level: level } });
    }
}

// Return the hand the target item is in, ignoring metadata. Returns `head` if in neither hand.
function whatHand(player as IPlayer, target as IItemStack) as IEntityEquipmentSlot {
    if (!isNull(player.mainHandHeldItem) && player.mainHandHeldItem.definition.id == target.definition.id) {
        return crafttweaker.entity.IEntityEquipmentSlot.mainHand();
    }
    if (!isNull(player.offHandHeldItem) && player.offHandHeldItem.definition.id == target.definition.id) {
        return crafttweaker.entity.IEntityEquipmentSlot.offhand();
    }
    // Since Crafttweaker hasn't implemented IAny/multi-typed returns so this could be null, using `head` as a workaround
    // This isn't best practices
    return crafttweaker.entity.IEntityEquipmentSlot.head();
}

// Add Ender Core activations to all dimensions
function activateEnderCore(player as IPlayer) as void {
    val goal = <enderutilities:enderpart>;

    var target as IEntityEquipmentSlot = whatHand(player, goal);
    if (target == crafttweaker.entity.IEntityEquipmentSlot.head()) return;
    var item as IItemStack = player.getItemInSlot(target);

    val meta as int = item.metadata;

    // 10, 11, and 12 are the valid meta values for Inactive Ender Cores.
    if (meta >= 10 && meta <= 12) {
        // Change the item from uncharged to charged
        player.setItemToSlot(target, goal.definition.makeStack(meta + 5) * item.amount);
    }
}

events.onPlayerInteractBlock(function(e as PlayerInteractBlockEvent) {

    val blockID = e.block.definition.id;

    // Prevents the Matter Transporter from duping IF Black Hole stuff.
    if (whatHand(e.player, <quantumflux:mattertransporter>) != crafttweaker.entity.IEntityEquipmentSlot.head() &&
        (blockID == <industrialforegoing:black_hole_unit>.definition.id || blockID == <industrialforegoing:black_hole_tank>.definition.id)) {
        e.cancel();
    }

    // Disable individual Elemental Inscription Tools
    // Without the `whatHand` part and just using `e.item` it constantly caused NPEs.
    if (whatHand(e.player, <bloodmagic:inscription_tool>) != crafttweaker.entity.IEntityEquipmentSlot.head()) {
        if (!e.player.world.isRemote()) e.player.sendStatusMessage(game.localize("dj2.event.elemental_tool.desc0"));
        e.cancel();
    }

    if (e.player.world.isRemote()) {
        return;
    }

    // The Uncrafting Table should never be openable, to prevent a duplication bug
    if (blockID == <twilightforest:uncrafting_table>.definition.id) {
        e.cancel();
    }

    // Grant the user the Astral Sorcery Knowledge to use the table they just right clicked on.
    if (blockID == <astralsorcery:blockaltar>.definition.id) {
        progressAstral(e.player, e.block.meta);
    }

    // Activate the held ender core if the target block was a stabilized end crystal
    if (blockID == <contenttweaker:stabilized_end_crystal>.definition.id) {
        activateEnderCore(e.player);
    }
});

events.onPlayerInteractEntity(function(e as PlayerInteractEntityEvent) {
    if (e.player.world.isRemote()) {
        return;
    }

    if (isNull(e.target.definition)) {
        return;
    }

    val id = e.target.definition.id;

    // Disable Bewitchment Demon Trading
    if (id == "bewitchment:demon" || id == "bewitchment:demoness") {
        e.cancel();
        //e.player.sendChat("What's a fallen angel doing trying to make a deal with such a foul creature?");
    }

    // Activate the held ender core if the target entity was an end crystal
    if (id == "minecraft:ender_crystal") {
        activateEnderCore(e.player);
    }
});


events.onEntityJoinWorld(function(e as EntityJoinWorldEvent) {
    // Ents have a 20% spawn chance for each log break, which is a bit excessive
    // this turns that down to 2%
    if (isNull(e.entity.definition) || isNull(e.world) || isNull(e.world.random)) return;
    if (e.entity.definition.id == "divinerpg:ent" && e.world.random.nextInt(10) != 0) e.cancel();
});


static IE_WORKBENCH as IBlock = <immersiveengineering:wooden_device0:2>.asBlock();

events.onBlockBreak(function(e as BlockBreakEvent) {
    if (e.world.isRemote()) {
        return;
    }

    // Fixing the Immersive Engineering Drill duplicating Solar Flux Solar Panels when filled with Biodiesel.
    // ...and by "fixing" i mean preventing breaking them with the drill entirely. this sledgehammer solves all problems!
    if (e.block.definition.id.startsWith("solarflux") && e.player.currentItem.definition.id == <immersiveengineering:drill>.definition.id) {
        e.player.sendStatusMessage(game.localize("dj2.event.solar_flux_ie_drill.desc0") + "\n" + game.localize("dj2.event.solar_flux_ie_drill.desc1"));
        e.cancel();
        return;
    }

    val block as IBlock = e.world.getBlock(e.position);

    // Fixing Immersive Engineering's Engineers Workbench voiding contents when broken on the wrong side
    if (block.definition.id == IE_WORKBENCH.definition.id && block.meta == IE_WORKBENCH.meta) {
        var target as IBlockPos = e.position;

        // If its not the dummy block, IE already drops it correctly. Otherwise, use its internal facing attribute
        // to figure out which block stores the inventory, and save its position.
        if (!isNull(block.data)) {
            if (block.data.dummy == 0) return;
            else {
                target = e.position.getOffset(
                    crafttweaker.world.IFacing.fromString(
                        // UP and DOWN are the 0 and 1 values of facing, so offset it by -2
                        (["WEST", "EAST", "SOUTH", "NORTH"] as string[])[block.data.facing - 2]
                    ),
                    1
                );
            }
        }

        // Then, run though all the items and drop them in world, with the appropriate quanties and tags.
        for drop in e.world.getBlock(target).data.inventory.asList() {
            var item as IItemStack = itemUtils.getItem(drop.id, drop.Damage) * drop.Count;
            if (!isNull(drop.tag)) item = item.withTag(drop.tag);
            e.world.spawnEntity(item.createEntityItem(e.world, target));
        }
    }
});

events.onCommand(function(e as CommandEvent) {
    val command = e.command;

    if(isNull(command)) {
        return;
    }

    // If its its the Astral Sorcery reset command, we reset the players internal data
    if ((command.name == "astralsorcery") && (e.parameters.length > 0) && (e.parameters[0] == "reset")) {
        val player = e.commandSender.world.getPlayerByName(e.parameters[1]);
        if (!isNull(player)) {
            player.update({ divine_journey_2: { astral_level: -1 } });
        }
    }
});


// Remove the TMG Death List from the inventory and drop it on the ground. This prevents a nested NBT issue.
<tombmanygraves:death_list>.addTooltip(game.localize("dj2.death_list.desc0"));

// Doesnt get called if keepInventory is true, so we dont have to factor that possibility in.
events.onPlayerDeathDrops(function(e as PlayerDeathDropsEvent) {
    var drops = [] as IEntityItem[];
    for item in e.items {
        // If its a Death List, spawn the item as an entity in-world. Otherwise, keep it in the droplist.
        if (item.item.definition.id == "tombmanygraves:death_list") e.player.world.spawnEntity(item);
        else drops += item;
    }
    e.items = drops;
});

// Prevent falling from the Aether Dimension into the Overworld
events.onEntityTravelToDimension(function(e as EntityTravelToDimensionEvent) {
    if (e.dimension == 0 && e.entity.y < 0) {
        e.cancel();
    }
});
