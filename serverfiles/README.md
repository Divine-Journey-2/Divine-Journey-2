# Divine Journey 2 Server Info:

Written by WaitingIdly, for the pack Divine Journey 2 (DJ2).
Also visible on GitHub at https://github.com/Divine-Journey-2/Divine-Journey-2/tree/main/serverfiles/README.md.

---

## WARNING:

Never run an executable file without knowing what it will do.
You should check the code inside the respective files before running to confirm
it does not make undesired modifications to your computer.

---


## Launching the pack:

To launch the pack, you can either use the command line or run one of the preset launch files.
- `.bat` files can only be used on Windows (and may not work on pre-Windows 7).
- `.sh` files can be run on Linux, MacOS, any other Unix-like OSes, or on Windows via any method allowing use of Bash.

To run a `.sh` file you may need to enable execution, either editing the properties via GUI or the command line `# chmod +x ./[filename.sh]`.
In this case, that would be either `# chmod +x ./launch.sh` or `# chmod +x ./autolaunch.sh`.
On the first launch, it will require that you accept the EULA and restart the launch process.


### Auto-launching the pack:

Running the `autolaunch.bat` or `autolaunch.sh` files will cause the server to automatically restart after a few seconds when shut down.
Combined with enabling the `auto_shutdown` feature in `config/ftbutilities.cfg`, you will be able to easily restart the server at specific times.
This has a number of benefits, as servers will frequently perform worse as time goes on.

**Warning**: This may make a crashloop harder to identify.


## Configuring the pack:

DJ2 uses a few custom files to allow easier use for launching the pack.
There are four helper files for launching the pack, called `launch.sh`, `autolaunch.sh`, `launch.bat`, and `autolaunch.bat`.
These helper files should generally ***not*** be edited.

There is also a configuration file, `launch_config.ini`. This file **should** be edited.
Modifying the `launch_config.ini` file can be done in any text editor.
This will change the settings used to launch the pack in any of the helper files.
Launching the pack through any of these helper scripts is *optional*, but you may find it easier than the command line.

Note that the `launch_config.ini` file should have no other line breaks, comments, or anything else within it, only containing `KEY=VALUE` entries.
Modifying it in any other way is not supported.


### Java:

To change the version of Java used, change line 2 of `launch_config.ini` from `JAVA_VERSION="java"` to `JAVA_VERSION="C:\direct\path\to\java"` or `JAVA_VERSION="/direct/path/to/java"`.
Since the path must be wrapped in quotes if it contains any spaces, the path has preemptively placed within quotes.

The file targeted used should be inside the `bin` folder, and the file name should be `java`.
While there is also a file called `javaw`, this makes the console not print any text,
which may lead to incorrect assumptions about the state of the server.

Divine Journey 2 is a forge modpack for 1.12.2.
This means it requires specifically Java 1.8 64-bit.
If you get an error involving `launcher.java.lang.reflect.InvocationTargetException`, you are using the wrong Java version, and need to use Java 1.8.
If you get an error involving `Could not reserve enough space for object heap`, you are using the wrong Java architecture, and need to use 64-bit.

If you do not have that version of Java installed, I suggest installing from [Adoptium](https://adoptium.net/temurin/releases/?version=8&os=windows&arch=x64&package=jre), although any distribution will work.
You should filter the search to your specific platform, which by default presumes Windows.


### RAM:

By default the `MIN_RAM` and `MAX_RAM` params are set to `8192M` (8gb).
The suggested memory requirements are 2gb + 1 gb per concurrent player.
Having `MIN_RAM` and `MAX_RAM` be equal improves performance slightly.


### Java Arguments:

By default the `JAVA_PARAMETERS` param is set to `-Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+DisableExplicitGC`.
These arguments make the garbage collector only trigger when needed.

The "best" Java arguments vary based on Java Version, Minecraft Version, Modpack, server usage, Operating System, time of day, and phase of the moon.
Test arguments to evaluate their actual performance on your machine. Do your own research.
Some suggested (and untested!) sets of javaargs are:
- `-XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M`
- `-XX:+UseG1GC -XX:ParallelGCThreads=2 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10 -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M`
- `-XX:+AggressiveOpts -XX:+UnlockExperimentalVMOptions -XX:+OptimizeStringConcat -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dfml.readTimeout=90 -Dfml.queryResult=confirm -Dfml.doNotBackup=true -noverify -Dnet.glease.healer.patch_stage=PREINIT`
- `-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1`
- `-XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -XX:ParallelGCThreads=8`
- `-XX:+AggressiveOpts -XX:+TieredCompilation -XX:+DisableExplicitGC -XX:MaxGCPauseMillis=100 -XX:+UseConcMarkSweepGC -XX:-UseGCOverheadLimit`


## Updating:

In order to ensure you do not lose data, you should take certain steps when updating your server.
Failure to properly do any one of these steps may result in errors.

1. Shut down your server.
2. Make a backup of your server, in particular the files deleted in step 4, in case things go wrong.
3. Download the latest server pack files from CurseForge https://www.curseforge.com/minecraft/modpacks/divine-journey-2/files or GitHub https://github.com/Divine-Journey-2/Divine-Journey-2/releases.
4. Delete the `config`, `mods`, `scripts`, and `structures` folders.
5. Copy those same folders from the server pack downloaded from CurseForge into the server instance.
6. Apply any unique changes (new mods or custom configs) made that were deleted by step 4.
7. Start your server.
8. If a block, entity, item, etc. was removed, the server will make a backup before loading the game with those blocks/entities/items removed. This process may take a significant amount of time.
9. Run the command `/bq_admin default load` to update the questbook to the new version.
10. Enjoy the updated server!


## Transferring to Singleplayer:

Copy the world folder from the server into the client saves folder, such that `[server]/world` -> `[client]/saves/world/[world_name]`.


## Transferring from Singleplayer:

Copy the desired client save into the server, and rename the copied folder to `world`, such that `[client]/saves/[world_name]` -> `[server]/world`.
Accept the missing resources on startup. This appears because the client needs to register sounds, but the server doesn't, allowing some mods to only register music clientside.


## Server Host:

You can host Divine Journey 2 on many different server hosts.
Tech support for issues with DJ2 while using one should first be directed to their support,
as server hosts frequently control settings that impact the normal launching of DJ2.


## Customizing the Pack

Divine Journey 2 does not have every mod in it *[citation needed]*.
If you and your players want to customize the pack and add a mod, you should feel absolutely free to do so.
However, you do this at your own risk, as modifying the pack is not and will not be officially supported.
Before reporting any errors with the pack, ensure that it is unmodified.


## Troubleshooting:

0. Visit the Discord for tech support https://discord.gg/rH9pyS7 and upload the relevant `crash-reports` file or the `logs/latest.log` file.
1. If you get an `launcher.java.lang.reflect.InvocationTargetException` error, you are using the wrong java version.
2. If you are otherwise crashing on startup, make sure you have allocated enough RAM and are using 64-bit Java.
3. If the server is crashing due to `Watching Server` or `ServerHangWatchdog`, change the `max-tick-time` entry in `server.properties` to be `-1`.
4. If the crash is `net.minecraftforge.fml.common.LoaderExceptionModCrash: Caught exception from EvilCraft-Compat (evilcraftcompat)`, the correct config files were not installed/are broken, and you should reinstall the pack.
5. If you get an `ENDER IO FATAL RECIPE ERROR` that blames `Could not find a crafting ingredient for 'contenttweaker:energized_dark_dust' in <recipe> 'Dark Steel Upgrade'`, crafttweaker scripts were not installed/are broken, and you should reinstall the pack
6. If the machine running the server lost power or shut down abruptly and now does not start, your worlddata has likely been corrupted, and you should restore a backup. This may also require reinstalling the pack, as files may have been corrupted and are broken.
7. If you get a crash `java.lang.NoClassDefFoundError: amu` (or similar), the vanilla jar has been corrupted, typically due to an unsafe shutdown (see point 6), and you should reinstall the pack.
8. If the server stops on the line `[main/INFO] [minecraft/MinecraftServer]: You need to agree to the EULA in order to run the server. Go to the eula.txt for more info.`, you need to accept the EULA.
9. If the server stops doing anything shortly after a large number of `[THAUMCRAFT]: Stopping aura thread` messages - **the server should be up and running properly, waiting for you to join**.

