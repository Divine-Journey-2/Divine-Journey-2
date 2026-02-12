


// recipes that don't have outputs error and don't display in JEI.
// fix the evilcraft recipes to output a blood shard.
def fixBlood(def input, def amount) {
    mods.immersiveengineering.squeezer.removeByInput(input)
    mods.immersiveengineering.squeezer.recipeBuilder()
        .input(input)
        .output(item('evilcraft:hardened_blood_shard'))
        .fluidOutput(fluid('evilcraftblood') * amount)
        .energy(amount * 100)
        .register()
}

fixBlood(item('evilcraft:undead_log'), 100)
fixBlood(item('evilcraft:undead_leaves'), 50)

