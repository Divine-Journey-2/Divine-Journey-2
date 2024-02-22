
## Mod Changes:

- Add Not Enough Energistics 2.0.1
- Add Universal Tweaks 1.2.0
- Add MixinBooter 7.0
- Update AE2-UEL 0.54.9 -> 0.54.19
- Remove No Recipe Book
- Remove Fast Leaf Decay
- Remove No Night Vision Flashing
- Remove Sweep Through Grass

## Bugfixes:

- Use ContentTweaker instead of Zenutils for event commands due to a Spongeforge-related permission issue
- Fix some stair recipes outputting the incorrect quantity of stairs.
- Fix some duplicate items being required for Enchantment Books.
- Fix unobtainable stacks being required for Enchantment Books.
- Fix a duplication bug for RFTools Button Modules.
- Fix the output being 8 instead of 1 for RFTools Button Modules and Elevator Button Modules.
- Fix recipes sometimes not being able to be moved to the AE2 Crafting Terminal. (NEE)
- Fix health, experience, food, and similar stats being visually (or actually) reset on dimension change/game restart. (UT)
- Fix entities having duplicate UUIDs spamming the log. (UT)
- Fix the Turkish locale from causing localization crashes. (UT)
- Added the missing mod preventing Tinkers Oredict Cache from loading. (MixinBooter)

## Balance Changes:

- Add a Quicksilver -> Cinnabar recipe, allowing Mystical Agriculture to create Cinnabar.
- Add a Mystical Agriculture recipe for Aether Legacy Holystone.
- Nerf Unbreakable Wand being too cheap.
- Nerf Veined Scribing Tools being too cheap.
- Add Mystical Agriculture recipes for Energized and Destabilized Clathrate.
- Convert Abyssalcraft Sapling creation rituals to use the Roots Transmutation Ritual.
- Convert most entity summoning methods to use the Roots Summon Creature Ritual.
- Adjust the cost of the Summon Creatures and Transmutation Rituals.
- Remove the Wildwood Sapling recipe.
- Add summoning via the Roots Summon Creatures Ritual to: Natura Imps, Vanilla Villagers, Thaumcraft Wisps, DivineRPG Scorchers, Abyssalcraft Shadow Creatures (Creature, Monster, Beast), Anti-Cows, Totemic Buffaloes, Totemic Bald Eagles, Vanilla Guardians, Vanilla Evokers. For some, this replaces the preexisting way to summon them.
- Using the Roots Transmutation Ritual, added a way to obtain:
	- Bewitchment Spanish Moss from Vanilla Vines
	- All Vanilla Saplings from other Vanilla Saplings
	- All Vanilla Flowers from other Vanilla Flowers
	- All Vanilla Double-tall Flowers from Vanilla Flowers
	- All Natura Saplings (Maple, Silverbell, Amaranth, Tiger, Willow, Eucalyptus, Hopseed, Sakura, Redwood, Ghostwood, Fusewood, Darkwood, Bloodwood)
	- Both Thaumcraft Saplings (Greatwood, Silverwood)
	- Most Bewitchement Saplings (Cypress, Elder, Juniper)
- Uncap attributes, making things like Astral Sorcery's Perks not get silently nerfed. (UT)

## QoL:

- Add Thaumcraft Research Table to the Activate Block or Entity JEI category.
- Add a Beacon Base category to JEI.
- Add an Enervation Dynamo category to JEI, which only shows the actual recipes (not all the misleading filler discharge ones).
- Hide the original Enervation Dynamo category.
- Add Milk from a Cow, Antimatter from an Anti-Cow, and Poison Bucket from an Aechor Plant to the Activate Block or Entity JEI category.
- Hide the unique Tier 6 crop JEI category, as its features are already in Agricraft's Crop Output JEI category.
- Add Botania's Double-tall Flowers to the Activate Block or Entity JEI category.
- Add helper JEI categories for Summon Creatures and Transmutation.
- Made the hopper have a hitbox matching its actual size. (UT)
- The Infinity enchant no longer requires an arrow. (UT)
- Add a noise when the game finishes starting up and when a player finishes joining a world. (UT)
- Disables the skybox and ground flash when lightning strikes. (UT)
- Add smooth scrolling to GUIs. (UT)
- Keep Thaumcraft's Thaumometer stable when scanning objects. (UT)

## Text and Quest Changes:

- Add a tooltip to Agricraft Crop Sticks to duplicate the tooltip on EnderIO Farming Stations warning about their interaction.
- Make only the Lightningcraft Receiver or Transmitter be required to complete the respective quests.
- Add more items to the "AE2 consumes item!" warning, tweak to indicate it is only autocrafting which does so.
- Fix incorrect name for Supernatural Velocity being used in the questbook.
- Allow all 3 rocket quests to accept rockets of the appropriate tier with any size of storage.
- Add a number of oxford commas to Tips.
- Add quests for both the Roots Transmutation and Summon Creatures Rituals, providing instructions on how they work.
- Alter the Bewitchment chapter's Villager quest for the Summon Creatures Ritual.
- Alter the Woodland Mansion Locator Token quest to allow skipping the Token if a Totem of Undying is already obtained. Instruct about the Summon Creatures Ritual.
- Alter the Anti-Cow quest for the Summon Creatures Ritual.
- Fix a typo in Chapter 29's `Proactive` quest.
- Fix an incorrect item reference in Chapter 19's `Constructing the unconstructable` quest.
- Fix a typo in Chapter 29's `Hope there is no traffic jam` quest.
- Fix a pair of typos in Chapter 19's `Essentially... it's a Smeltery!` quest.
- Fix Chapter 20's `Brrrrrrrrr... Icy!` quest requiring an unobtainable item in some worlds - now accepts either the correct ID or a one-shifted ID.
- Fix a typo in Chapter 20's `Dwelled deep enough...` quest.
- Fix an incorrect item reference in Chapter 23's `Of Deepest Blue` quest.
- Fix an incorrect number in Chapter 22's `Part of the Golden Club` quest.
- Add information that dimension-specific biomes do not work in the Quantum Quarry to its respective quest.
- Add information to Chapter 20's `Itching for more Witching` about the Eternal Water Bucket.
- Add information to Chapter 17's `Will you do this for me?` quest about another video to learn about Demonic Will farming.
- Add information to Chapter 20's `Yet another Altar! Yay!` about requiring a minimum of 1 or 2 thousand Altar Power.
- Add a tooltip to QuantumFlux Ender Crystals about them being dropped by Endermen.
