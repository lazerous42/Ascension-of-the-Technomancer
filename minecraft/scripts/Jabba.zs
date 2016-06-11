//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Jabba.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Jabba.zs'...");

recipes.remove(<JABBA:moverDiamond>);
recipes.remove(<JABBA:mover>);
recipes.addShaped(<JABBA:mover>, [[null, null, <ore:treatedStick>], [null, <JABBA:barrel>, <ore:treatedStick>], [<minecraft:heavy_weighted_pressure_plate>, <minecraft:heavy_weighted_pressure_plate>, <StevesCarts:ModuleComponents:23>]]);
recipes.addShaped(<JABBA:moverDiamond>, [[null, null, <IC2:itemPartIridium>], [null, <JABBA:barrel>, <IC2:itemPartIridium>], [<Railcraft:slab:8>, <Railcraft:slab:8>, <StevesCarts:ModuleComponents:82>]]);

print("Initialized 'Jabba.zs'");
