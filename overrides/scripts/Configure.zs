# Author: WaitingIdly

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;

print("STARTING Configure.zs");

var configure = <assembly:configure>;
configure.addJEICatalyst(<thermalfoundation:material:288>.withTag({display:{Name:"§r§dConfigure Block"}}));
configure.setJEIItemSlot(0, 0, "input", SlotVisual.itemSlot());
configure.setJEIDecoration(1, 0, "indicator_arrow", SlotVisual.arrowRight());
configure.setJEIItemSlot(2, 0, "output", SlotVisual.itemSlot());

function addConfiguration(user as IItemStack, target as IIngredient) as void {
    val recipe = AssemblyRecipe.create(function(container) {
        container.addItemOutput("input", user);
    });
    recipe.requireItem("output", target);
    <assembly:configure>.addJEIRecipe(recipe);
}

val reconstructor = <actuallyadditions:block_atomic_reconstructor>.withTag({display:{Lore:["§r§bToggles between Deactivation and Pulse mode."]}});

val lasers = <actuallyadditions:block_laser_relay_item_whitelist> | <actuallyadditions:block_laser_relay_item> | <actuallyadditions:block_laser_relay_fluids> | <actuallyadditions:block_laser_relay_extreme> | <actuallyadditions:block_laser_relay_advanced> | <actuallyadditions:block_laser_relay>;

val drawers = <framedcompactdrawers:framed_compact_drawer> | <framedcompactdrawers:framed_drawer_controller> | <framedcompactdrawers:framed_slave> | <storagedrawers:controller> | <storagedrawers:compdrawers> | <storagedrawers:controllerslave> | <storagedrawers:basicdrawers>.withTag({material: "oak"}) | <storagedrawers:trim>;

val jar = <thaumcraft:jar_normal> | <thaumcraft:jar_void>;

val golem = <thaumcraft:golem>.withTag({props: 0 as long});

val cropSticks = <agricraft:crop_sticks>;

val starlightTransfer = <astralsorcery:blockcollectorcrystal> | <astralsorcery:blockcelestialcollectorcrystal> | <astralsorcery:blocklens> | <astralsorcery:blockprism>;

val ritual = <bloodmagic:ritual_controller>;

val energyCrystal = <draconicevolution:energy_crystal:*>;

val gauntletConfigures = <thaumcraft:tube> | <thaumcraft:tube_valve> | <thaumcraft:tube_restrict> | <thaumcraft:tube_oneway> | <thaumcraft:tube_filter> | <thaumcraft:tube_buffer> | <thaumcraft:infusion_matrix> | <thaumicaugmentation:glass_tube>;

val p2pTunnels = <appliedenergistics2:part:460> | <appliedenergistics2:part:461> | <appliedenergistics2:part:462> | <appliedenergistics2:part:463> | <appliedenergistics2:part:467> | <appliedenergistics2:part:469>;

val conduits =  <enderio:item_item_conduit> | <enderio:item_liquid_conduit:*> | <enderio:item_power_conduit:*> | <enderio:item_me_conduit:*> | <enderio:item_gas_conduit:2> | <enderio:item_redstone_conduit> | <enderio:item_endergy_conduit:5> | <enderio:item_endergy_conduit:6> | <enderio:item_endergy_conduit:7> | <enderio:item_endergy_conduit:8> | <enderio:item_endergy_conduit:9> | <enderio:item_endergy_conduit:10> | <enderio:item_endergy_conduit:11>;

val generatingFlowers =  <botania:specialflower>.withTag({type: "endoflame"}) | <botania:specialflower>.withTag({type: "hydroangeas"}) | <botania:specialflower>.withTag({type: "thermalily"}) | <botania:specialflower>.withTag({type: "arcanerose"}) | <botania:specialflower>.withTag({type: "munchdew"}) | <botania:specialflower>.withTag({type: "entropinnyum"}) | <botania:specialflower>.withTag({type: "kekimurus"}) | <botania:specialflower>.withTag({type: "gourmaryllis"}) | <botania:specialflower>.withTag({type: "narslimmus"}) | <botania:specialflower>.withTag({type: "spectrolus"}) | <botania:specialflower>.withTag({type: "rafflowsia"}) | <botania:specialflower>.withTag({type: "shulk_me_not"}) | <botania:specialflower>.withTag({type: "dandelifeon"});

val wires = <immersiveengineering:connector> | <immersiveengineering:connector:1> | <immersiveengineering:connector:2> | <immersiveengineering:connector:3> | <immersiveengineering:connector:4> | <immersiveengineering:connector:5> | <immersiveengineering:connector:12> | <immersiveengineering:wirecoil> | <immersiveengineering:wirecoil:1> | <immersiveengineering:wirecoil:2> | <immersiveengineering:wirecoil:5> | <immersiveengineering:wirecoil:6> | <immersiveengineering:wirecoil:7>;

val variable = <integrateddynamics:variable>;

val bambooPipes = <erebus:bamboo_pipe_extract_active> | <erebus:bamboo_pipe> | <erebus:bamboo_pipe_extract>;

val wandUses = generatingFlowers | <botania:pool> | <botania:spark> | <botania:spreader> | <botania:spreader:1> | <botania:spreader:2> | <botania:spreader:3> | <botania:hourglass> | <botania:platform:*> | <botania:animatedtorch> | <botania:turntable> | <botania:pistonrelay> | <botania:lightrelay:*>;

val redprintUses = <thermaldynamics:servo:*> | <thermaldynamics:filter:*> | <thermaldynamics:retriever:*> | <thermaldynamics:relay:*> | <thermalexpansion:machine:*> | <thermalexpansion:device:*> | <thermalexpansion:dynamo:*> | <thermalexpansion:cell:*>;

val configurationCardUses = <mekanism:machineblock:*>;

val totemicBase = <totemic:totem_base>;

val illuminator = <astralsorcery:blockworldilluminator>;

val fluix = <appliedenergistics2:part:16>;

val hammer = <immersiveengineering:stone_decoration> | <immersiveengineering:stone_decoration:1> | <immersiveengineering:stone_decoration:2> | <immersiveengineering:metal_decoration0:3> | <immersiveengineering:metal_decoration0:4> | <immersiveengineering:metal_decoration0:5> | <immersiveengineering:metal_decoration0:6> | <immersiveengineering:metal_decoration0:7>;

val chest = <minecraft:chest>;

addConfiguration(<actuallyadditions:item_laser_wrench>, lasers);
addConfiguration(<agricraft:clipper>, cropSticks);
addConfiguration(<appliedenergistics2:certus_quartz_wrench>, fluix);
addConfiguration(<appliedenergistics2:memory_card>, p2pTunnels);
addConfiguration(<appliedenergistics2:nether_quartz_wrench>, fluix);
addConfiguration(<appliedenergistics2:network_tool>, fluix);
addConfiguration(<astralsorcery:itemilluminationwand>, illuminator);
addConfiguration(<astralsorcery:itemlinkingtool>, starlightTransfer);
addConfiguration(<base:wrench>, chest);
addConfiguration(<betterp2p:advanced_memory_card>, p2pTunnels);
addConfiguration(<bigreactors:wrench>, chest);
addConfiguration(<bloodmagic:ritual_dismantler>, ritual);
addConfiguration(<bloodmagic:ritual_diviner:1>, ritual);
addConfiguration(<bloodmagic:ritual_diviner>, ritual);
addConfiguration(<bloodmagic:ritual_reader>, ritual);
addConfiguration(<botania:obediencestick>, generatingFlowers);
addConfiguration(<botania:twigwand>, wandUses);
addConfiguration(<chiselsandbits:wrench_wood>, chest);
addConfiguration(<contenttweaker:hand_framing_tool>, drawers);
addConfiguration(<draconicevolution:crystal_binder>, energyCrystal);
addConfiguration(<enderio:item_conduit_probe>, conduits);
addConfiguration(<enderio:item_yeta_wrench>, conduits);
addConfiguration(<erebus:materials:73>, bambooPipes);
addConfiguration(<extrautils2:wrench>, chest);
addConfiguration(<galacticraftcore:standard_wrench>, chest);
addConfiguration(<immersiveengineering:tool:1>, wires);
addConfiguration(<immersiveengineering:tool>, hammer);
addConfiguration(<integrateddynamics:labeller>, variable);
addConfiguration(<integrateddynamics:portable_logic_programmer>, variable);
addConfiguration(<integrateddynamics:wrench>, chest);
addConfiguration(<mekanism:configurationcard>, configurationCardUses);
addConfiguration(<mekanism:configurator>, chest);
addConfiguration(<minecraft:compass>, lasers);
addConfiguration(<minecraft:redstone_torch>, reconstructor);
addConfiguration(<rftools:smartwrench>, chest);
addConfiguration(<storagedrawers:drawer_key>, drawers);
addConfiguration(<storagedrawers:personal_key>, drawers);
addConfiguration(<storagedrawers:quantify_key>, drawers);
addConfiguration(<storagedrawers:shroud_key>, drawers);
addConfiguration(<teslacorelib:wrench>, chest);
addConfiguration(<thaumcraft:caster_basic>, gauntletConfigures);
addConfiguration(<thaumcraft:golem_bell>, golem);
addConfiguration(<thaumcraft:label>, jar);
addConfiguration(<thaumcraft:seal>, golem);
addConfiguration(<thaumicaugmentation:gauntlet:1>, gauntletConfigures);
addConfiguration(<thaumicaugmentation:gauntlet>, gauntletConfigures);
addConfiguration(<thermalfoundation:diagram_redprint>, redprintUses);
addConfiguration(<thermalfoundation:wrench>, chest);
addConfiguration(<totemic:totemic_staff>, totemicBase);



print("ENDING Configure.zs");
