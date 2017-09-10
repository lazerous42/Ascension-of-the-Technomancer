//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Fossils and Archeology Revival.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Fossils and Archeology Revival.zs'...");

recipes.remove(<fossil:cultureVat>);
recipes.addShaped(<fossil:cultureVat>, [[<ThermalExpansion:Glass:1>, <gregtech:gt.metaitem.01:17098>, <ThermalExpansion:Glass:1>], 
                                        [<ThermalExpansion:Glass:1>, <ThermalFoundation:bucket:8>, <ThermalExpansion:Glass:1>], 
                                        [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
                                        
recipes.remove(<fossil:analyzer>);
recipes.addShaped(<fossil:analyzer>, [[<ore:plateAluminium>, <fossil:relicScrap>, <ore:plateAluminium>], 
                                      [<ore:plateAluminium>, <fossil:bioFossil>, <ore:plateAluminium>], 
                                      [<PneumaticCraft:ingotIronCompressed>, <PneumaticCraft:printedCircuitBoard>, <PneumaticCraft:ingotIronCompressed>]]);

print("Initialized 'Fossils and Archeology Revival.zs'");
