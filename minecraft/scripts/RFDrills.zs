//////////////////////////////////////////////////////////////////////////////////////////////
// Name: RFDrills.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'RFDrills.zs'...");

##  Val Definitions
val silicon = <EnderIO:itemMaterial>;
val dustRedstone = <ore:dustRedstone>;
val gearNickel = <ore:gearNickel>;
val machineChassis = <EnderIO:itemMachinePart>;
val basicCapacitor = <EnderIO:itemBasicCapacitor>;

val basicElectricMotor = <rfdrills:motor_eio>;

##  Basic Electric Motor
recipes.remove(basicElectricMotor);
recipes.addShaped(basicElectricMotor,[[silicon,basicCapacitor,silicon],[gearNickel,machineChassis,gearNickel],[silicon,dustRedstone,silicon]]);

print("Initialized 'RFDrills.zs'");
