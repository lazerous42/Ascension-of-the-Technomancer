//////////////////////////////////////////////////////////////////////////////////////////////
// Name: SimplyJetpacks.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'SimplyJetpacks.zs'...");

## Val Definitions
val dustRedstone = <ore:dustRedstone>;
val ingotConductiveIron = <EnderIO:itemAlloy:4>;
val basicCapacitor = <EnderIO:itemBasicCapacitor>;
val insulatedRedstoneConduit = <EnderIO:itemRedstoneConduit:2>;
val gearNickel = <ore:gearNickel>;
val gearInvar = <ore:gearInvar>;
val ingotInvar = <ore:ingotInvar>;
val ingotElectrum = <ore:ingotElectrum>;
val ingotEnderium = <ore:ingotEnderium>;
val conductiveIronThruster = <simplyjetpacks:components:21>;

## Conductive Iron Thruster
recipes.remove(conductiveIronThruster);
recipes.addShaped(conductiveIronThruster,[[ingotConductiveIron,basicCapacitor,ingotConductiveIron],[insulatedRedstoneConduit,basicCapacitor,insulatedRedstoneConduit],[gearNickel,dustRedstone,gearNickel]]);

# Replace Thruster with diff TE dynamos
recipes.remove(<simplyjetpacks:components:12>);
recipes.addShaped(<simplyjetpacks:components:12>, [[ingotInvar, <ThermalExpansion:material:1>, ingotInvar], [<ThermalDynamics:ThermalDynamics_0:1>, <ThermalExpansion:Dynamo:1>, <ThermalDynamics:ThermalDynamics_0:1>], [ingotInvar, <ore:bucketRedstone>.giveBack(<minecraft:bucket>), ingotInvar]]);

recipes.remove(<simplyjetpacks:components:13>);
recipes.addShaped(<simplyjetpacks:components:13>, [[ingotElectrum, <ThermalExpansion:material:3>, ingotElectrum], [<ThermalDynamics:ThermalDynamics_0:2>, <ThermalExpansion:Dynamo:3>, <ThermalDynamics:ThermalDynamics_0:2>], [ingotElectrum, <ore:bucketRedstone>.giveBack(<minecraft:bucket>), ingotElectrum]]);

recipes.remove(<simplyjetpacks:components:14>);
recipes.addShaped(<simplyjetpacks:components:14>, [[ingotEnderium, <ThermalExpansion:material:3>, ingotEnderium], [<ThermalDynamics:ThermalDynamics_0:4>, <ThermalExpansion:Dynamo:4>, <ThermalDynamics:ThermalDynamics_0:4>], [ingotEnderium, <ore:bucketRedstone>.giveBack(<minecraft:bucket>), ingotEnderium]]);

print("Initialized 'SimplyJetpacks.zs'");
