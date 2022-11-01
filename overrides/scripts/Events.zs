#loader crafttweaker reloadable
# Author: WaitingIdly

import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.CommandEvent;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.zenutils.command.CommandUtils;

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
        server.commandManager.executeCommandSilent(server, "/astralsorcery research " + player.name + " " + astralTiers[level]);
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
    if (e.player.world.isRemote()) {
        return;
    }

    // The Uncrafting Table should never be openable, to prevent a duplication bug
    if (e.block.definition.id == <twilightforest:uncrafting_table>.definition.id) {
        e.cancel();
    }

    // Grant the user the Astral Sorcery Knowledge to use the table they just right clicked on.
    if (e.block.definition.id == <astralsorcery:blockaltar>.definition.id) {
        progressAstral(e.player, e.block.meta);
    }

    // Disable individual Elemental Inscription Tools
    // Without the `whatHand` part and just using `e.item` it constantly caused NPEs.
    if (whatHand(e.player, <bloodmagic:inscription_tool>) != crafttweaker.entity.IEntityEquipmentSlot.head())  {
        e.player.sendStatusMessage(format.lightPurple("Elemental Inscription Tools cannot be used outside of an Elemental Diviner!") +
        format.gold("\nDurability not actually consumed, just a desync."));
        e.cancel();
    }

    // Activate the held ender core if the target block was a stabilized end crystal
    if (e.block.definition.id == <contenttweaker:stabilized_end_crystal>.definition.id) {
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
        #e.player.sendChat("What's a fallen angel doing trying to make a deal with such a foul creature?");
    }

    // Activate the held ender core if the target entity was an end crystal
    if (id == "minecraft:ender_crystal") {
        activateEnderCore(e.player);
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
