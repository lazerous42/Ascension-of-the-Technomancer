//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Moar Signs.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Moar Signs.zs'...");

## Allow converting of Minecraft signs into Moar Signs Oak Sign
recipes.addShapeless(<minecraft:sign>, [<MoarSigns:MoarSignsItem>.withTag({Sign_Texture: "oak_sign"})]);
recipes.addShapeless(<MoarSigns:MoarSignsItem>.withTag({Sign_Texture: "oak_sign"}), [<minecraft:sign>]);
    
print("Initialized 'Moar Signs.zs'");
