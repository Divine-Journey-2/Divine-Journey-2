# Author: Atricos, WaitingIdly

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.formatting.IFormattedText;

print("STARTING BuildingGadgets.zs");

# Building Gadget
recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped(<buildinggadgets:buildingtool>.withTag({blockstate: {Name: "minecraft:air"}}), [[<thermalfoundation:material:322>,<mekanism:controlcircuit:3>,<thermalfoundation:material:322>],[<appliedenergistics2:material:24>,<plustic:osgloglasblock>,<appliedenergistics2:material:24>],[<thermalfoundation:material:322>,<extrautils2:itembuilderswand>,<thermalfoundation:material:322>]]);

# Destruction Gadget
recipes.remove(<buildinggadgets:destructiontool>);
recipes.addShaped(<buildinggadgets:destructiontool>.withTag({overlay: 1 as byte, fuzzy: 1 as byte}), [[<thermalfoundation:material:359>,<extrautils2:itemdestructionwand>,<thermalfoundation:material:359>],[<contenttweaker:estimation_processor>,<enderio:block_alloy:3>,<contenttweaker:estimation_processor>],[<thermalfoundation:material:359>,<mekanism:controlcircuit:3>,<thermalfoundation:material:359>]]);

# Exchanging Gadget
recipes.remove(<buildinggadgets:exchangertool>);
recipes.addShaped(<buildinggadgets:exchangertool>.withTag({blockstate: {Name: "minecraft:air"}}), [[<quantumflux:craftingpiece:6>,<extrautils2:itemdestructionwand>,<quantumflux:craftingpiece:6>],[<contenttweaker:operation_processor>,<enderio:block_alloy:2>,<contenttweaker:operation_processor>],[<quantumflux:craftingpiece:6>,<extrautils2:itembuilderswand>,<quantumflux:craftingpiece:6>]]);

# Copy-Paste Gadget
recipes.remove(<buildinggadgets:copypastetool>);
recipes.addShaped(<buildinggadgets:copypastetool>.withTag({mode: "Copy"}), [[<thermalfoundation:material:327>,<enderio:item_conduit_probe>,<thermalfoundation:material:327>],[<contenttweaker:methodology_processor>,<actuallyadditions:block_crystal_empowered:4>,<contenttweaker:methodology_processor>],[<thermalfoundation:material:327>,<contenttweaker:cosmic_alloy>,<thermalfoundation:material:327>]]);

# Template Manager
recipes.remove(<buildinggadgets:templatemanager>);
recipes.addShaped(<buildinggadgets:templatemanager>, [[<buildinggadgets:constructionblock_dense>,<thermalfoundation:diagram_redprint>,<buildinggadgets:constructionblock_dense>],[<thermalfoundation:storage:7>,<buildinggadgets:copypastetool>,<thermalfoundation:storage:7>],[<buildinggadgets:constructionblock_dense>,<thermalfoundation:diagram_redprint>,<buildinggadgets:constructionblock_dense>]]);

# Construction Block Powder
recipes.remove(<buildinggadgets:constructionblockpowder>);
recipes.addShaped(<buildinggadgets:constructionblockpowder> * 4, [[<minecraft:concrete_powder>,<minecraft:concrete_powder>,<minecraft:concrete_powder>],[<minecraft:concrete_powder>,<thermalfoundation:material:864>,<minecraft:concrete_powder>],[<minecraft:concrete_powder>,<minecraft:concrete_powder>,<minecraft:concrete_powder>]]);
recipes.addShaped(<buildinggadgets:constructionblockpowder> * 8, [[<minecraft:concrete_powder>,<minecraft:concrete_powder>,<minecraft:concrete_powder>],[<minecraft:concrete_powder>,<thermalfoundation:material:865>,<minecraft:concrete_powder>],[<minecraft:concrete_powder>,<minecraft:concrete_powder>,<minecraft:concrete_powder>]]);

# Dense Construction Chunk & Construction Paste: more recipes in OreProcessingAdditions.zs

# Paste Container
recipes.remove(<buildinggadgets:constructionpastecontainer>);
recipes.addShaped(<buildinggadgets:constructionpastecontainer>, [[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>],[<contenttweaker:energized_dark_ingot>,<buildinggadgets:constructionpaste>,<contenttweaker:energized_dark_ingot>],[<contenttweaker:energized_dark_ingot>,<buildinggadgets:constructionpaste>,<contenttweaker:energized_dark_ingot>]]);

function pasteContainerTierIncrease(
		name as string,
		output as IItemStack,
		priorContainer as IItemStack,
		outsideItems as IItemStack,
		centerItem as IItemStack
	) {
    recipes.remove(output);
    recipes.addShaped(name, output, [
		[priorContainer.marked("container1"),outsideItems,priorContainer.marked("container2")],
		[outsideItems,centerItem,outsideItems],
		[priorContainer.marked("container3"),outsideItems,priorContainer.marked("container4")]
	], function(out, ins, cInfo) {

        var amount = 0 as IData;

        if (ins.container1.tag has "amount") {
            amount += ins.container1.tag.amount;
        }
        if (ins.container2.tag has "amount") {
            amount += ins.container2.tag.amount;
        }
        if (ins.container3.tag has "amount") {
            amount += ins.container3.tag.amount;
        }
        if (ins.container4.tag has "amount") {
            amount += ins.container4.tag.amount;
        }

        return out.withTag({"amount": amount});
    }, null);
}

# Paste Container T2
pasteContainerTierIncrease("paste_container_T2", <buildinggadgets:constructionpastecontainert2>, <buildinggadgets:constructionpastecontainer>, <thermalfoundation:material:33>, <industrialforegoing:plastic>);

# Paste Container T3
pasteContainerTierIncrease("paste_container_T3", <buildinggadgets:constructionpastecontainert3>, <buildinggadgets:constructionpastecontainert2>, <avaritia:resource>, <contenttweaker:hyper_diamond_block>);

# Paste Container Tooltips
function pasteTooltip(amount as string) as IFormattedText {
    return format.white("This Paste Container can store a maximum of ") + format.red(amount) + format.white(" Paste.");
}
<buildinggadgets:constructionpastecontainer>.addTooltip(pasteTooltip(512));
<buildinggadgets:constructionpastecontainert2>.addTooltip(pasteTooltip(2048));
<buildinggadgets:constructionpastecontainert3>.addTooltip(pasteTooltip(8192));

# Creative Paste Container
recipes.remove(<buildinggadgets:constructionpastecontainercreative>);
recipes.addShaped(<buildinggadgets:constructionpastecontainercreative>, [[<buildinggadgets:constructionpastecontainert3>,<alchemistry:ingot:118>,<buildinggadgets:constructionpastecontainert3>],[<alchemistry:ingot:118>,<galacticraftcore:infinite_oxygen>,<alchemistry:ingot:118>],[<buildinggadgets:constructionpastecontainert3>,<alchemistry:ingot:118>,<buildinggadgets:constructionpastecontainert3>]]);

print("ENDING BuildingGadgets.zs");
