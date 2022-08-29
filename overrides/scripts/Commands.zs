# Author: WaitingIdly

import crafttweaker.server.IServer;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.IGetTabCompletion;
import mods.zenutils.command.ZenCommandTree;
import mods.zenutils.command.ZenUtilsCommandSender;



static links as string[][string] = {
    curseforge: ["commands.curseforge.text", "https://www.curseforge.com/minecraft/modpacks/divine-journey-2"],
    discord: ["commands.discord.text", "https://discord.gg/rH9pyS7"],
    issues: ["commands.issues.text", "https://github.com/Divine-Journey-2/Divine-Journey-2/issues"],
    guides: ["commands.guides.text", "https://github.com/Divine-Journey-2/Guides/tree/main/guides"],
} as string[][string];



function printToTarget(server as IServer, sender as ZenUtilsCommandSender, args as string[], type as string) {
    var target as IPlayer;
    if (args.length == 1) {
        target = CommandUtils.getPlayer(server, sender, args[0]);
    } else {
        target = CommandUtils.getCommandSenderAsPlayer(sender);
    }
    if (isNull(target)) {
        // :(
    } else {
        target.sendRichTextMessage(
            ITextComponent.fromData({
                "text": ITextComponent.fromTranslation(links[type][0]).unformattedText,
                "underlined": true,
                "color": "blue",
                "clickEvent": {
                    "action": "open_url",
                    "value": links[type][1]
                }
            })
        );
    }
}

val curseforge as ZenCommand = ZenCommand.create("curseforge");
val discord as ZenCommand = ZenCommand.create("discord");
val issues as ZenCommand = ZenCommand.create("issues");
val bugs as ZenCommand = ZenCommand.create("bugs");
val guides as ZenCommand = ZenCommand.create("guides");
curseforge.getCommandUsage = function(sender) { return "commands.curseforge.usage"; };
discord.getCommandUsage = function(sender) { return "commands.discord.usage"; };
issues.getCommandUsage = function(sender) { return "commands.issues.usage"; };
bugs.getCommandUsage = function(sender) { return "commands.issues.usage"; };
guides.getCommandUsage = function(sender) { return "commands.guides.usage"; };
curseforge.requiredPermissionLevel = 0;
discord.requiredPermissionLevel = 0;
issues.requiredPermissionLevel = 0;
bugs.requiredPermissionLevel = 0;
guides.requiredPermissionLevel = 0;
curseforge.execute = function(command, server, sender, args) { printToTarget(server, sender, args, "curseforge"); };
discord.execute = function(command, server, sender, args) { printToTarget(server, sender, args, "discord"); };
issues.execute = function(command, server, sender, args) { printToTarget(server, sender, args, "issues"); };
bugs.execute = function(command, server, sender, args) { printToTarget(server, sender, args, "issues"); };
guides.execute = function(command, server, sender, args) { printToTarget(server, sender, args, "guides"); };




ZenCommandTree.create("dj2", curseforge, discord, issues, bugs, guides).register();
