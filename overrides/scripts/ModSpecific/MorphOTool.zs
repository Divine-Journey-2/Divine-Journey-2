// Author: Atricos
print("STARTING MorphOTool.zs");

// Morphing Tool
recipes.remove(<morphtool:tool>);
// recipes.addShapedMirrored(<morphtool:tool>, [[null,<ore:dyeGreen>,<ore:dyeBlue>],[null,<immersiveengineering:material:2>,<ore:dyeRed>],[<immersiveengineering:material:2>,null,null]]);

recipes.addHiddenShapeless("morphtool_to_omniwand_conversion", <omniwand:wand>, [<morphtool:tool>.marked("tool")],
function(out, ins, cInfo) {
    if (isNull(ins.tool.tag.memberGet("morphtool:data"))) return out;
    return out.withTag({"omniwand:data": ins.tool.tag.memberGet("morphtool:data")});
});

<morphtool:tool>.addTooltip(game.localize("dj2.deprecated.deprecated.desc"));
<morphtool:tool>.addTooltip(game.localize("dj2.deprecated.convert.desc"));

print("ENDING MorphOTool.zs");
