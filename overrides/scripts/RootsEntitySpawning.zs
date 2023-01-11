# Author: WaitingIdly

import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import mods.roots.SummonCreatures;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.entity.IEntityDefinition;

print("STARTING RootsEntitySpawning.zs");

var roots_entity_spawning = <assembly:roots_entity_spawning>;
roots_entity_spawning.addJEICatalyst(<roots:ritual_summon_creatures>);
roots_entity_spawning.addJEICatalyst(<roots:pyre>);
roots_entity_spawning.addJEICatalyst(<roots:reinforced_pyre>);
roots_entity_spawning.addJEICatalyst(<roots:catalyst_plate>);

for x in 0 to 5 {
    roots_entity_spawning.setJEIItemSlot(x, 0, "input" ~ x, SlotVisual.itemSlot());
    roots_entity_spawning.setJEIItemSlot(x, 1, "input" ~ (x + 5), SlotVisual.itemSlot());
}

roots_entity_spawning.setJEIDecoration(5, 0, "indicator_arrow", SlotVisual.arrowRight());
roots_entity_spawning.setJEIItemSlot(6, 0, "output_entity_soul", SlotVisual.itemSlot());
roots_entity_spawning.setJEIItemSlot(6, 1, "output_entity_egg", SlotVisual.itemSlot());


function addSpawnerJEI(entity as IEntityDefinition, inputs as IIngredient[]) as void {
    val recipe = AssemblyRecipe.create(function(container) {
        container.addItemOutput("output_entity_soul", <draconicevolution:mob_soul>.withTag({EntityName:entity.id}));
        container.addItemOutput("output_entity_egg", <minecraft:spawn_egg>.withTag({EntityTag:{id:entity.id}}));
    });

    for i, input in inputs {
        recipe.requireItem("input" ~ i, input);
    }

    <assembly:roots_entity_spawning>.addJEIRecipe(recipe);
}

function createSpawner(entity as IEntityDefinition, inputs as IIngredient[]) {
    SummonCreatures.addEntity(entity, inputs);
    addSpawnerJEI(entity, inputs);
}

// Remove Witch to readd later
SummonCreatures.removeEntity(<entity:minecraft:witch>);

// Add the default spawning recipes
addSpawnerJEI(<entity:minecraft:cow>, [<minecraft:wheat>, <ore:dye>]);
addSpawnerJEI(<entity:minecraft:spider>, [<roots:glass_eye>, <minecraft:string>, <minecraft:ladder>]);
addSpawnerJEI(<entity:minecraft:donkey>, [<minecraft:carrot>, <ore:chestWood>]);
addSpawnerJEI(<entity:minecraft:pig>, [<minecraft:beetroot>, <mysticalworld:wet_mud_block>]);
addSpawnerJEI(<entity:minecraft:ocelot>, [<ore:tallgrass>, <minecraft:sugar>]);
addSpawnerJEI(<entity:minecraft:rabbit>, [<minecraft:carrot>, <minecraft:string>]);
addSpawnerJEI(<entity:minecraft:mooshroom>, [<minecraft:wheat>, <minecraft:red_mushroom>]);
addSpawnerJEI(<entity:minecraft:chicken>, [<minecraft:egg>, <minecraft:wheat_seeds>]);
addSpawnerJEI(<entity:minecraft:creeper>, [<ore:dirt>, <ore:tallgrass>, <minecraft:gunpowder>]);
addSpawnerJEI(<entity:minecraft:stray>, [<minecraft:snowball>, <minecraft:flint>, <minecraft:bow>]);
addSpawnerJEI(<entity:minecraft:parrot>, [<roots:bark_jungle>, <minecraft:beetroot_seeds>]);
addSpawnerJEI(<entity:minecraft:zombie>, [<minecraft:dye:15>, <minecraft:rotten_flesh>, <minecraft:potato>]);
addSpawnerJEI(<entity:minecraft:squid>, [<minecraft:reeds>, <minecraft:paper>]);
addSpawnerJEI(<entity:minecraft:pigmen>, [<minecraft:gold_nugget>, <minecraft:porkchop>, <minecraft:fishing_rod>]);
addSpawnerJEI(<entity:minecraft:skeleton>, [<minecraft:dye:15>, <minecraft:flint>, <minecraft:bow>]);
addSpawnerJEI(<entity:minecraft:horse>, [<minecraft:wheat>, <minecraft:apple>]);
addSpawnerJEI(<entity:minecraft:wolf>, [<ore:bone>, <minecraft:flint>]);
addSpawnerJEI(<entity:minecraft:sheep>, [<minecraft:wheat_seeds>, <ore:wool>]);
addSpawnerJEI(<entity:minecraft:polar_bear>, [<ore:stone>, <minecraft:snowball>]);
addSpawnerJEI(<entity:minecraft:llama>, [<minecraft:wheat>, <ore:wool>]);
addSpawnerJEI(<entity:minecraft:mule>, [<minecraft:wheat>, <minecraft:coal:*>]);
addSpawnerJEI(<entity:minecraft:husk>, [<minecraft:cactus>, <minecraft:deadbush>, <minecraft:sandstone>]);
addSpawnerJEI(<entity:minecraft:bat>, [<ore:treeSapling>, <minecraft:web>]);
addSpawnerJEI(<entity:mysticalworld:entity_fox>, [<roots:bark_spruce>, <minecraft:redstone>]);
addSpawnerJEI(<entity:mysticalworld:entity_frog>, [<ore:tallgrass>, <minecraft:clay>]);
addSpawnerJEI(<entity:mysticalworld:entity_beetle>, [<ore:tallgrass>, <ore:allFlowers>]);
addSpawnerJEI(<entity:mysticalworld:entity_sprout>, [<roots:bark_birch>, <ore:listAllveggie>]);
addSpawnerJEI(<entity:mysticalworld:entity_owl>, [<ore:treeSapling>, <ore:treeLeaves>]);
addSpawnerJEI(<entity:mysticalworld:entity_deer>, [<roots:petals>, <roots:bark_oak>]);

// Add Witch
createSpawner(<entity:minecraft:witch>, [<minecraft:stick>, <minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:gunpowder>, <minecraft:sugar>,  <minecraft:glass_bottle>]);

// Add Natura Imps and include note on their drops.
createSpawner(<entity:natura:imp>, [<natura:nether_thorn_vines>, <contenttweaker:bloodgem_dust>, <betternether:eye_seed>]);
<natura:materials:6>.addTooltip(format.white("Imps can be spawned by the Roots 'Summon Creatures' ritual."));

// Add a Villager summoning placed in the middle of Bewitchment
createSpawner(<entity:minecraft:villager>, [<bewitchment:heaven_extract>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "humanus"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "cognitio"}]})]);

// Thaumcraft Wisp
createSpawner(<entity:thaumcraft:wisp>, [<thaumcraft:nugget:9>]);

// DivineRPG Scorcher
createSpawner(<entity:divinerpg:scorcher>, [<divinerpg:blaze_pumpkin>, <betternether:black_apple>, <ore:dyePurple>]);

// Abyssalcraft Shadow Creatures
createSpawner(<entity:abyssalcraft:shadowcreature>, [<abyssalcraft:stone:7>, <divinerpg:shadow_stone>, <extendedcrafting:material>]);
createSpawner(<entity:abyssalcraft:shadowmonster>, [<abyssalcraft:stone:7>, <divinerpg:shadow_stone>, <abyssalcraft:shadowfragment>]);
createSpawner(<entity:abyssalcraft:shadowbeast>, [<abyssalcraft:stone:7>, <divinerpg:shadow_stone>, <abyssalcraft:shadowshard>]);

// Summon Anti-cow, which can be milked for Antimatter
createSpawner(<entity:abyssalcraft:anticow>, [<abyssalcraft:powerstonetracker>, <abyssalcraft:ingotblock:1>, <minecraft:beef>, <minecraft:beef>,  <minecraft:leather>, <minecraft:leather>, <forge:bucketfilled>.withTag({FluidName: "liquidcoralium", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "liquidcoralium", Amount: 1000})]);

// Buffalo
createSpawner(<entity:totemic:buffalo>, [<minecraft:wheat>, <totemic:buffalo_items:1>]);

// Bald Eagle
createSpawner(<entity:totemic:bald_eagle>, [<minecraft:fish>, <minecraft:fish:1>, <minecraft:feather>]);

// Guardian
createSpawner(<entity:minecraft:guardian>, [<minecraft:fish>, <minecraft:dye>, <minecraft:potion>.withTag({Potion: "minecraft:water_breathing"})]);

// Evoker
createSpawner(<entity:minecraft:evocation_illager>, [<contenttweaker:empowered_glod_crystal>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:4>, <mob_grinding_utils:saw_upgrade:1>]);


print("ENDING RootsEntitySpawning.zs");
