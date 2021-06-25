# Author: Atricos
print("STARTING PackagedAuto.zs");

# Packaging Component
recipes.remove(<packagedauto:package_component>);
recipes.addShaped(<packagedauto:package_component>, [[<plustic:mirioningot>,<draconicevolution:draconic_ingot>,<plustic:mirioningot>],[<draconicevolution:draconic_ingot>,<contenttweaker:scheduling_processor>,<draconicevolution:draconic_ingot>],[<plustic:mirioningot>,<draconicevolution:draconic_ingot>,<plustic:mirioningot>]]);

# ME Packaging Component
recipes.remove(<packagedauto:me_package_component>);
recipes.addShapedMirrored(<packagedauto:me_package_component>, [[<galacticraftplanets:item_basic_asteroids:5>,<appliedenergistics2:quartz_glass>,<galacticraftplanets:item_basic_asteroids:5>],[<appliedenergistics2:material:44>,<packagedauto:package_component>,<appliedenergistics2:material:43>],[<galacticraftplanets:item_basic_asteroids:5>,<appliedenergistics2:quartz_glass>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Package Recipe Holder
recipes.remove(<packagedauto:recipe_holder>);
recipes.addShaped(<packagedauto:recipe_holder> * 2, [[<draconicevolution:draconic_ingot>,<appliedenergistics2:material:52>,<draconicevolution:draconic_ingot>],[<appliedenergistics2:material:52>,<packagedauto:package_component>,<appliedenergistics2:material:52>],[<draconicevolution:draconic_ingot>,<appliedenergistics2:material:52>,<draconicevolution:draconic_ingot>]]);

# Package Recipe Encoder
recipes.remove(<packagedauto:encoder>);
recipes.addShaped(<packagedauto:encoder>, [[<galacticraftplanets:item_basic_asteroids:5>,<packagedauto:package_component>,<galacticraftplanets:item_basic_asteroids:5>],[<galacticraftcore:basic_item:9>,<contenttweaker:draconic_machine_frame>,<galacticraftcore:basic_item:9>],[<galacticraftplanets:item_basic_asteroids:5>,<packagedauto:package_component>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Packager
recipes.remove(<packagedauto:packager>);
recipes.addShaped(<packagedauto:packager>, [[<galacticraftplanets:item_basic_asteroids:5>,<packagedauto:me_package_component>,<galacticraftplanets:item_basic_asteroids:5>],[<bloodmagic:component:14>,<contenttweaker:draconic_machine_frame>,<bloodmagic:component:14>],[<galacticraftplanets:item_basic_asteroids:5>,<packagedauto:me_package_component>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Unpackager
recipes.remove(<packagedauto:unpackager>);
recipes.addShaped(<packagedauto:unpackager>, [[<galacticraftplanets:item_basic_asteroids:5>,<packagedauto:me_package_component>,<galacticraftplanets:item_basic_asteroids:5>],[<bloodmagic:component:9>,<contenttweaker:draconic_machine_frame>,<bloodmagic:component:9>],[<galacticraftplanets:item_basic_asteroids:5>,<packagedauto:me_package_component>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Packager Extension
recipes.remove(<packagedauto:packager_extension>);
recipes.addShaped(<packagedauto:packager_extension> * 2, [[<packagedauto:me_package_component>,<packagedauto:packager>,<packagedauto:me_package_component>]]);

print("ENDING PackagedAuto.zs");