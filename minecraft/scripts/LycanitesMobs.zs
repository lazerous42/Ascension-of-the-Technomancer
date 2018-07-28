//////////////////////////////////////////////////////////////////////////////////////////////
// Name: LycanitesMobs.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'LycanitesMobs.zs'...");

## Remove recipe for soulgazer (chest loot only)
recipes.remove(<lycanitesmobs:soulgazer>);

##  Soulstone 
recipes.remove(<lycanitesmobs:soulstone>);
recipes.addShaped(<lycanitesmobs:soulstone>, [[<ore:ingotShadow>, <nevermine:IngotJade>, <ore:ingotShadow>], 
											  [<nevermine:IngotJade>, <lycanitesmobs:soulgazer>, <nevermine:IngotJade>], 
											  [<ore:ingotShadow>, <nevermine:IngotJade>, <ore:ingotShadow>]]);

print("Initialized 'LycanitesMobs.zs'");
