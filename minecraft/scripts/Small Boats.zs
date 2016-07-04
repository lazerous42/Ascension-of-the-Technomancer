//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Small Boats.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Small Boats.zs'...");
##  Val Deinitions
val boat = <minecraft:boat>;
val stick = <ore:stickWood>;
val toughFabric = <ImmersiveEngineering:material:4>;

val punt = <punt:item.punt>;
val whitehall = <whitehall:item.whitehall>;

## Punt
recipes.remove(punt);
recipes.addShaped(punt, [[stick, toughFabric, null], [stick, toughFabric, toughFabric], [boat, boat, boat]]);

print("Initialized 'Small Boats.zs'");
