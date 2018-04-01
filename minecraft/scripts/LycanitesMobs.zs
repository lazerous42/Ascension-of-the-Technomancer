//////////////////////////////////////////////////////////////////////////////////////////////
// Name: LycanitesMobs.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'LycanitesMobs.zs'...");
##  Val Definitions
val silexRaw = <freshwatermobs:silexmeatraw>;
val silexCooked = <freshwatermobs:silexmeatcooked>;
val cephignisCooked = <infernomobs:cephignismeatcooked>;

## Raw Silex
<ore:listAllfishraw>.add(silexRaw);

## Cooked Silex
<ore:listAllfishcooked>.add(silexCooked);

## Cooked Cephignis
<ore:listAllfishcooked>.add(cephignisCooked);

## Remove recipe for soulgazer (chest loot only)
recipes.remove(<lycanitesmobs:soulgazer>);

##  Soulstone 
recipes.remove(<lycanitesmobs:soulstone>);
recipes.addShaped(<lycanitesmobs:soulstone>, [[<ore:ingotShadow>, <nevermine:IngotJade>, <ore:ingotShadow>], 
											  [<nevermine:IngotJade>, <lycanitesmobs:soulgazer>, <nevermine:IngotJade>], 
											  [<ore:ingotShadow>, <nevermine:IngotJade>, <ore:ingotShadow>]]);

print("Initialized 'LycanitesMobs.zs'");
