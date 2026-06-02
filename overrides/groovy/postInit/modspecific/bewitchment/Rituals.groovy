
// Tough Purified Paste
mods.bewitchment.ritual.recipeBuilder()
    .name('tough_and_pure')
    .input(item('extrautils2:compresseddirt', 2), item('extrautils2:compresseddirt', 2), item('extrautils2:compresseddirt', 2), item('extrautils2:compresseddirt', 2), item('bewitchment:salt'), item('bewitchment:salt'), item('thaumcraft:bath_salts'), item('thaumcraft:bath_salts'), item('contenttweaker:purified_tablet'))
    .output(item('contenttweaker:tough_purified_paste') * 4)
    .small(1).medium(1).big(-1)
    .startingPower(200).runningPower(20)
    .time(10)
    .register()

// Essence of Cycles
mods.bewitchment.ritual.recipeBuilder()
    .name('cycles')
    .input(item('contenttweaker:essence_of_life'), item('botania:specialflower').withNbt([type: 'dandelifeon']), item('contenttweaker:essence_of_death'), item('contenttweaker:death_core'))
    .output(item('contenttweaker:essence_of_cycles'))
    .small(2).medium(1).big(3)
    .startingPower(10000).runningPower(10000)
    .time(20)
    .register()
