//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Nature's Compass.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Nature's Compass.zs'...");

recipes.remove(<naturescompass:NaturesCompass>);
recipes.addShaped(<naturescompass:NaturesCompass>, [[<witchery:witchsapling:*>, <Botania:dreamwood>, <witchery:witchsapling:*>], 
						    [<Botania:dreamwood>, <minecraft:compass>, <Botania:dreamwood>], 
						    [<witchery:witchsapling:*>, <Botania:dreamwood>, <witchery:witchsapling:*>]]);

print("Initialized 'Nature's Compass.zs'");