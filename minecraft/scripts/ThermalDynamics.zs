//////////////////////////////////////////////////////////////////////////////////////////////
// Name: ThermalDynamics.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'ThermalDynamics.zs'...");

##  Val Definitions
val plateCopper = <ore:plateCopper>;
val plateTin = <ore:plateTin>;
val plateLead = <ore:plateLead>;
val plateSteel = <ore:plateSteel>;

##  Itemducts
recipes.removeShaped(<ThermalDynamics:ThermalDynamics_32>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_32> * 6, [[null, <ThermalExpansion:Glass>, null], [plateTin, <ore:blockGlassColorless>, plateTin], [null, <ThermalExpansion:Glass>, null]]);
recipes.removeShaped(<ThermalDynamics:ThermalDynamics_32:1>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_32:1> * 6, [[null, <ThermalExpansion:Glass>, null], [plateTin, <ore:ingotLead>, plateTin], [null, <ThermalExpansion:Glass>, null]]);

##  Fluiducts
recipes.removeShaped(<ThermalDynamics:ThermalDynamics_16>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_16> * 6, [[null, <ThermalExpansion:Glass>, null], [plateCopper, <ore:blockGlassColorless>, plateCopper], [null, <ThermalExpansion:Glass>, null]]);
recipes.removeShaped(<ThermalDynamics:ThermalDynamics_16:1>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_16:1> * 6, [[null, <ThermalExpansion:Glass>, null], [plateCopper, <ore:ingotLead>, plateCopper], [null, <ThermalExpansion:Glass>, null]]);
recipes.removeShaped(<ThermalDynamics:ThermalDynamics_16:2>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_16:2> * 6, [[null, <ThermalExpansion:Glass:1>, null], [<ore:dustInvar>, <ore:blockGlassHardened>, <ore:dustInvar>], [null, <ThermalExpansion:Glass:1>, null]]);
recipes.removeShaped(<ThermalDynamics:ThermalDynamics_16:3>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_16:3> * 6, [[null, <ThermalExpansion:Glass:1>, null], [<ore:dustInvar>, <ore:ingotLead>, <ore:dustInvar>], [null, <ThermalExpansion:Glass:1>, null]]);
recipes.remove(<ThermalDynamics:ThermalDynamics_16:6>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_16:6> * 3, [[<ThermalDynamics:ThermalDynamics_16:2>, <ExtraUtilities:etherealglass>, <ThermalDynamics:ThermalDynamics_16:2>], [<ThermalDynamics:ThermalDynamics_16:2>, <ore:ingotPlatinum>, <ThermalDynamics:ThermalDynamics_16:2>], [<ThermalDynamics:ThermalDynamics_16:2>, <ExtraUtilities:etherealglass>, <ThermalDynamics:ThermalDynamics_16:2>]]);
recipes.remove(<ThermalDynamics:ThermalDynamics_16:7>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_16:7> * 3, [[<ThermalDynamics:ThermalDynamics_16:3>, <ExtraUtilities:etherealglass>, <ThermalDynamics:ThermalDynamics_16:3>], [<ThermalDynamics:ThermalDynamics_16:3>, <ore:ingotPlatinum>, <ThermalDynamics:ThermalDynamics_16:3>], [<ThermalDynamics:ThermalDynamics_16:3>, <ExtraUtilities:etherealglass>, <ThermalDynamics:ThermalDynamics_16:3>]]);

##  Fluxducts
recipes.remove(<ThermalDynamics:ThermalDynamics_0>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_0> * 6, [[<ore:dustRedstone>, <ore:chipsetRed>, <ore:dustRedstone>], [plateLead, <ore:blockGlassColorless>, plateLead], [<ore:dustRedstone>, <ore:chipsetRed>, <ore:dustRedstone>]]);
recipes.remove(<ThermalDynamics:ThermalDynamics_0:1>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_0:1> * 6, [[<ore:dustElectrotine>, <ore:chipsetRed>, <ore:dustElectrotine>], [plateSteel, <ThermalExpansion:Glass>, plateSteel], [<ore:dustElectrotine>, <ore:chipsetRed>, <ore:dustElectrotine>]]);
recipes.remove(<ThermalDynamics:ThermalDynamics_0:3>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_0:3> * 6, [[<ore:dustAerotheum>, <ore:nuggetSignalum>, <ore:dustAerotheum>], [<ore:dustElectrumFlux>, <ThermalExpansion:Glass:1>, <ore:dustElectrumFlux>], [<ore:dustAerotheum>, <ore:nuggetSignalum>, <ore:dustAerotheum>]]);
recipes.remove(<ThermalDynamics:ThermalDynamics_0:5>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_0:4> * 6, [[<ThermalDynamics:ThermalDynamics_0:2>, <ore:dustPetrotheum>, <ThermalDynamics:ThermalDynamics_0:2>], [<ThermalDynamics:ThermalDynamics_0:2>, <ore:gearEnderium>, <ThermalDynamics:ThermalDynamics_0:2>], [<ThermalDynamics:ThermalDynamics_0:2>, <ore:dustPetrotheum>, <ThermalDynamics:ThermalDynamics_0:2>]]);
recipes.remove(<ThermalDynamics:ThermalDynamics_0:4>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_0:5> * 6, [[<ThermalDynamics:ThermalDynamics_0:3>, <ore:dustPetrotheum>, <ThermalDynamics:ThermalDynamics_0:3>], [<ThermalDynamics:ThermalDynamics_0:3>, <ore:gearEnderium>, <ThermalDynamics:ThermalDynamics_0:3>], [<ThermalDynamics:ThermalDynamics_0:3>, <ore:dustPetrotheum>, <ThermalDynamics:ThermalDynamics_0:3>]]);
recipes.remove(<ThermalDynamics:ThermalDynamics_0:7>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_0:7> * 3, [[<ThermalDynamics:ThermalDynamics_0:4>, <ExtraUtilities:etherealglass>, <ThermalDynamics:ThermalDynamics_0:4>], [<ThermalDynamics:ThermalDynamics_0:4>, <ore:ingotPlatinum>, <ThermalDynamics:ThermalDynamics_0:4>], [<ThermalDynamics:ThermalDynamics_0:4>, <ExtraUtilities:etherealglass>, <ThermalDynamics:ThermalDynamics_0:4>]]);

##  MultiMode ducts
recipes.remove(<ThermalDynamics:ThermalDynamics_16:4>);
recipes.addShapeless(<ThermalDynamics:ThermalDynamics_16:4> * 2, [<ThermalDynamics:ThermalDynamics_0:2>, <ThermalDynamics:ThermalDynamics_16:2>]);
recipes.remove(<ThermalDynamics:ThermalDynamics_16:5>);
recipes.addShapeless(<ThermalDynamics:ThermalDynamics_16:5> * 2, [<ThermalDynamics:ThermalDynamics_0:2>, <ThermalDynamics:ThermalDynamics_16:3>]);

print("Initialized 'ThermalDynamics.zs'");
