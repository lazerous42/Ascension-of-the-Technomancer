//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Magneticraft.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Magneticraft.zs'...");

recipes.remove(<Magneticraft:item.magnet>);
recipes.addShaped(<Magneticraft:item.magnet>, [[<ore:dustElectrotine>, <ore:dustRedstone>, <ore:dustElectrotine>], 
						    					[<ore:dustRedstone>, <ore:ingotNeodymium>, <ore:dustRedstone>], 
						    					[<ore:dustElectrotine>, <ore:dustRedstone>, <ore:dustElectrotine>]]);

print("Initialized 'Magneticraft.zs'");