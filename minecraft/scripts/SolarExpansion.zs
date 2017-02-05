//////////////////////////////////////////////////////////////////////////////////////////////
// Name: SolarExpansion.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'SolarExpansion.zs'...");

val ingotElectrotineAlloy = <ore:ingotElectrotineAlloy>;

recipes.remove(<SolarExpansion:photovoltaicCell>);
recipes.addShaped(<SolarExpansion:photovoltaicCell>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [null, <ore:dustElectrotine>, null], [<ore:nuggetIron>, ingotElectrotineAlloy, <ore:nuggetIron>]]);

print("Initialized 'SolarExpansion.zs'");
