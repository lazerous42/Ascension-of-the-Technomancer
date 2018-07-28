//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Backlytra.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Backlytra.zs'...");

# Harder recipe for Elytra
recipes.remove(<backlytra:elytra>);
recipes.addShaped(<backlytra:elytra>, [[<WitchingGadgets:item.WG_Material:2>, <minecraft:dragon_egg>, <WitchingGadgets:item.WG_Material:2>],
									   [<witchery:ingredient:72>, <Thaumcraft:ItemBaubleBlanks:2>, <witchery:ingredient:72>],
									   [<TwilightForest:item.tfFeather>, null, <TwilightForest:item.tfFeather>]]);
    
print("Initialized 'Backlytra.zs'");
