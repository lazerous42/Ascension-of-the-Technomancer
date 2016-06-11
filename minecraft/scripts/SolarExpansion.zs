//////////////////////////////////////////////////////////////////////////////////////////////
// Name: SolarExpansion.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'SolarExpansion.zs'...");

recipes.remove(<SolarExpansion:photovoltaicCell>);
recipes.addShaped(<SolarExpansion:photovoltaicCell>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [null, <ore:dustElectrotine>, null], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]]);

print("Initialized 'SolarExpansion.zs'");
