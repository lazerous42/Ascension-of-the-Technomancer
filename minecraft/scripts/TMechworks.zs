//////////////////////////////////////////////////////////////////////////////////////////////
// Name: TMechworks.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

import mods.gregtech.Assembler;
import mods.nei.NEI;

print("Initializing 'TMechworks.zs'...");

## Val Definitions
val drawbridge = <TMechworks:RedstoneMachine>;
val igniter = <TMechworks:RedstoneMachine:1>;
val drawbridgeAdvanced  = <TMechworks:RedstoneMachine:2>;
val drawbridgeExtended = <TMechworks:RedstoneMachine:3>;

## Disable Items
# Lenght of Wire
recipes.remove(<TMechworks:LengthWire>);
NEI.hide(<TMechworks:LengthWire>);
# Spool of Wire
recipes.remove(<TMechworks:SpoolWire>);
NEI.hide(<TMechworks:SpoolWire>);
# Dynamo
recipes.remove(<TMechworks:Dynamo>);
NEI.hide(<TMechworks:Dynamo>);
# Signal Bus
recipes.remove(<TMechworks:SignalBus>);
NEI.hide(<TMechworks:SignalBus>);
# Signal Terminal
recipes.remove(<TMechworks:SignalTerminal>);
NEI.hide(<TMechworks:SignalTerminal>);
# Mesh Filters
recipes.remove(<TMechworks:MeshFilter:*>);
NEI.hide(<TMechworks:MeshFilter:*>);

## Drawbridges (Why the fuck is it impossible to create new vanilla recipes for the higher tier drawbridges, I am forced to use the assembler)
recipes.remove(drawbridge);
recipes.addShaped(drawbridge, [[<ore:ingotBrass>, <ore:plateBrass>, <ore:ingotBrass>], [<ore:ingotBrass>, <minecraft:dispenser>, <ore:ingotBrass>], [<ore:ingotBrass>, <ore:dustRedstone>, <ore:ingotBrass>]]);
recipes.remove(drawbridgeAdvanced);
Assembler.addRecipe(drawbridgeAdvanced, drawbridge, <gregtech:gt.metaitem.01:17019> * 4, 32, 32);
recipes.remove(drawbridgeExtended);
Assembler.addRecipe(drawbridgeExtended, drawbridge, <gregtech:gt.metaitem.01:17033> * 4, 32, 32);

## Igniter
recipes.remove(igniter);
recipes.addShaped(igniter, [[<ore:ingotBrass>, <minecraft:netherrack>, <ore:ingotBrass>], [<ore:ingotBrass>, <minecraft:flint_and_steel>, <ore:ingotBrass>], [<ore:ingotBrass>, <ore:dustRedstone>, <ore:ingotBrass>]]);

print("Initialized 'TMechworks.zs'");