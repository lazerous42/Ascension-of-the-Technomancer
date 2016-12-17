//////////////////////////////////////////////////////////////////////////////////////////////
// Name: RandomThings.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'RandomThings.zs'...");

## Val Statements
val ingotVoidMetal = <Thaumcraft:ItemResource:16>;
val ingotSpectreIron = <RandomThings:ingredient:4>;
val keySpectre = <RandomThings:spectreKey>;
val stick = <ore:stickWood>;

## Spectre Key
recipes.remove(keySpectre);
recipes.addShaped(keySpectre, [[null, ingotSpectreIron, null], [ingotSpectreIron, ingotVoidMetal, null], [null, stick, null]]);

print("Initialized 'RandomThings.zs'...");