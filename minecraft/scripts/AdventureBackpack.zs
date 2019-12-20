//////////////////////////////////////////////////////////////////////////////////////////////
// Name: AdventureBackpack.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'AdventureBackpack.zs'...");

## Removing non-functional 
#  Components
recipes.remove(<adventurebackpack:backpackComponent:5>);
recipes.remove(<adventurebackpack:backpackComponent:6>);
recipes.remove(<adventurebackpack:backpackComponent:7>);
recipes.remove(<adventurebackpack:backpackComponent:8>);
recipes.remove(<adventurebackpack:backpackComponent:9>);
#  Packs
recipes.remove(<adventurebackpack:copterPack>);
recipes.remove(<adventurebackpack:steamJetpack>);
#  Clockwork Crossbow
recipes.remove(<adventurebackpack:clockworkCrossbow>);

## Consolidating sleeping bags
recipes.remove(<adventurebackpack:backpackComponent:1>);
recipes.addShapeless(<adventurebackpack:backpackComponent:1>, [<OpenBlocks:sleepingBag>]);
recipes.addShapeless(<OpenBlocks:sleepingBag>, [<adventurebackpack:backpackComponent:1>]);

print("Initialized 'AdventureBackpack.zs'");
