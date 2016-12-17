//////////////////////////////////////////////////////////////////////////////////////////////
// Name: WarpDrive.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.extraUtils.QED;

print("Initializing 'WarpDrive.zs'...");

## Val Statements
val ghastTear = <minecraft:ghast_tear>;
val plateDeshDouble = <gregtech:gt.metaitem.01:18884>;
val machineCasingMV = <gregtech:gt.blockcasings:2>;
val enderTunedCrystal = <WarpDrive:itemComponent:1>;
val powerInterface = <WarpDrive:itemComponent:6>;
val capacitiveCrystal = <WarpDrive:itemComponent:7>;
val shipCore = <WarpDrive:blockShipCore>;

## Ship Core
recipes.removeShaped(shipCore);
QED.addShapedRecipe(shipCore, [[plateDeshDouble, ghastTear, plateDeshDouble], 
			       [enderTunedCrystal, machineCasingMV, enderTunedCrystal], 
			       [capacitiveCrystal, powerInterface, capacitiveCrystal]]);
			       
print("Initialized 'WarpDrive.zs'...");