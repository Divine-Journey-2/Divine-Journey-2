#loader crafttweaker reloadableevents
# Author: WaitingIdly

import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.CommandEvent;
import crafttweaker.world.IBlockPos;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.I18n;

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

// Add Ender Core activations to all dimensions
function activateEnderCore(player as IPlayer) as void {
    val goal = <enderutilities:enderpart>.definition;

    var target as IEntityEquipmentSlot;
    var item as IItemStack;

    if (!isNull(player.mainHandHeldItem) && player.mainHandHeldItem.definition.id == goal.id) {
        item = player.mainHandHeldItem;
        target = crafttweaker.entity.IEntityEquipmentSlot.mainHand();
    } else if (!isNull(player.offHandHeldItem) && player.offHandHeldItem.definition.id == goal.id) {
        item = player.offHandHeldItem;
        target = crafttweaker.entity.IEntityEquipmentSlot.offhand();
    } else {
        return;
    }

    val meta as int = item.metadata;

    // 10, 11, and 12 are the valid meta values for Inactive Ender Cores.
    if (meta >= 10 && meta <= 12) {
        // Change the item from uncharged to charged
        player.setItemToSlot(target, goal.makeStack(meta + 5) * item.amount);
    }
}

function removeItemFromHand(player as IPlayer, item as IItemStack) {
    if (!isNull(player.mainHandHeldItem) && item.matches(player.mainHandHeldItem)) {
        player.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.mainHand(), null);
    } else if (!isNull(player.offHandHeldItem) && item.matches(player.offHandHeldItem)) {
        player.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.offhand(), null);
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

    // Activate the held ender core if the target block was a stabilized end crystal
    if (e.block.definition.id == <contenttweaker:stabilized_end_crystal>.definition.id) {
        activateEnderCore(e.player);
    }

    // DivineRPG always removes an item from the main hand when using one of these boss spawning items.
    // https://github.com/DivineRPG/DivineRPG/blob/1a3b87972f9a0ccf7686723541d9cae2ae2b6d24/src/main/java/divinerpg/objects/items/twilight/ItemBossSpawner.java#L61
    // This contains code which does virtually the same thing, but removes the correct item.
    if (<divinerpg:horde_horn>.matches(e.item)) {
        if (e.dimension == 1) {
            val spawnLocation as IBlockPos = e.position.getOffset(crafttweaker.world.IFacing.up(), 1);
            if (e.world.isAirBlock(spawnLocation)) {
                // Sounds aren't accessible via crafttweaker, so we run a command instead
                // Note that this command is modified from the original - the original is on channel `master` and with a volume of 20
                server.commandManager.executeCommandSilent(server, "/playsound divinerpg:ayeraco_spawn hostile " + e.player.name + " " + e.x + " " + e.y + " " + e.z + " 5 1");
                e.world.setBlockState(<blockstate:divinerpg:ayeraco_spawn>, spawnLocation);
                removeItemFromHand(e.player, <divinerpg:horde_horn>);
            } else {
                e.player.sendChat("§bFailed to spawn - please use in open air.");
            }
        } else {
            e.player.sendChat("§b" + I18n.format("message.ayeraco_horde"));
        }
        e.cancel();
    } else if (<divinerpg:call_of_the_watcher>.matches(e.item)) {
        if (e.dimension == -1) {
            <entity:divinerpg:the_watcher>.spawnEntity(e.world, e.position);
            removeItemFromHand(e.player, <divinerpg:call_of_the_watcher>);
        } else {
            e.player.sendChat("§b" + I18n.format("message.watcher"));
        }
        e.cancel();
    } else if (<divinerpg:infernal_flame>.matches(e.item)) {
        if (e.dimension == -1) {
            <entity:divinerpg:king_of_scorchers>.spawnEntity(e.world, e.position);
            removeItemFromHand(e.player, <divinerpg:infernal_flame>);
        } else {
            e.player.sendChat("§b" + I18n.format("message.king_of_scorchers"));
        }
        e.cancel();
    } else if (<divinerpg:mysterious_clock>.matches(e.item)) {
        if (e.dimension == 0) {
            <entity:divinerpg:ancient_entity>.spawnEntity(e.world, e.position);
            removeItemFromHand(e.player, <divinerpg:mysterious_clock>);
        } else {
            e.player.sendChat("§b" + I18n.format("message.ancient_entity"));
        }
        e.cancel();
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
