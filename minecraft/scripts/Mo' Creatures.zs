//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Mo' Creatures.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Mo' Creatures.zs'...");

## Val Definitions
val mcTurkeyRaw = <MoCreatures:turkeyraw>;
val mcTurkeyCooked = <MoCreatures:turkeycooked>;

##  OreDict Entries
<ore:listAllmeatraw>.add(mcTurkeyRaw);
<ore:listAllmeatcooked>.add(mcTurkeyCooked);
<ore:listAllturkeyraw>.add(mcTurkeyRaw);
<ore:listAllturkeycooked>.add(mcTurkeyCooked);
<ore:listAllfishraw>.add(<MoCreatures:crabraw>);
<ore:listAllfishcooked>.add(<MoCreatures:crabcooked>);
<ore:listAllmeatraw>.add(<MoCreatures:ratraw>);
<ore:listAllmeatcooked>.add(<MoCreatures:ratcooked>);

print("Initialized 'Mo' Creatures.zs'");
