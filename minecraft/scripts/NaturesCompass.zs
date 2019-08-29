//////////////////////////////////////////////////////////////////////////////////////////////
// Name: NaturesCompass.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'NaturesCompass.zs'...");

recipes.remove(<naturescompass:NaturesCompass>);
recipes.addShaped(<naturescompass:NaturesCompass>, [[<witchery:witchsapling:*>, <Botania:manaResource:5>, <witchery:witchsapling:*>], 
						    						[<Botania:manaResource:5>, <minecraft:compass>, <Botania:manaResource:5>], 
						    						[<witchery:witchsapling:*>, <Botania:manaResource:5>, <witchery:witchsapling:*>]]);

print("Initialized 'NaturesCompass.zs'");