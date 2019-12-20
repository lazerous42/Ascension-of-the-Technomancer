//////////////////////////////////////////////////////////////////////////////////////////////
// Name: CompactMachines.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'CompactMachines.zs'...");

recipes.remove(<CompactMachines:shrinker>);
recipes.addShaped(<CompactMachines:shrinker>, [[<ore:ingotOctine>, <ore:ingotOctine>, <ore:ingotOctine>], 
											   [, , ],
											   [<ore:ingotOctine>, <ore:ingotOctine>, <ore:ingotOctine>]]);

recipes.remove(<CompactMachines:enlarger>);
recipes.addShaped(<CompactMachines:enlarger>, [[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
											   [, , ],
											   [<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]]);

print("Initialized 'CompactMachines.zs'");
