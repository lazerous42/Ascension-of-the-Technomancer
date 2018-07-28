//////////////////////////////////////////////////////////////////////////////////////////////
// Name: NaturesCompass.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'NaturesCompass.zs'...");

recipes.remove(<naturescompass:NaturesCompass>);
recipes.addShaped(<naturescompass:NaturesCompass>, [[<witchery:witchsapling:*>, <Botania:dreamwood>, <witchery:witchsapling:*>], 
						    						[<Botania:dreamwood>, <minecraft:compass>, <Botania:dreamwood>], 
						    						[<witchery:witchsapling:*>, <Botania:dreamwood>, <witchery:witchsapling:*>]]);

print("Initialized 'NaturesCompass.zs'");