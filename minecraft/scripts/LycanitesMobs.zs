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

print("Initialized 'LycanitesMobs.zs'");
