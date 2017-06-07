//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Chococraft.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Chococraft.zs'...");
##  Val Deinitions
val chocopedia = <chococraft:Chocopedia>;
val chocoboFeather = <chococraft:Chocobo_Feather>;

##  OreDict
<ore:craftingFeather>.add(chocoboFeather);

## Chocopedia
recipes.remove(chocopedia);
recipes.addShaped(chocopedia, [[chocoboFeather, <ore:nuggetGold>, chocoboFeather], [<ore:dyeBlack>, <minecraft:book>, <ore:dyeBlack>], [chocoboFeather, <ore:gemLapis>, chocoboFeather]]);

print("Initialized 'Chococraft.zs'");
