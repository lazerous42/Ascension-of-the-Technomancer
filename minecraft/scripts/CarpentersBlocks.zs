//////////////////////////////////////////////////////////////////////////////////////////////
// Name: CarpentersBlocks.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'CarpentersBlocks.zs'...");
##  Val Deinitions
val stick = <ore:stickWood>;
val woodPlanks = <ore:plankWood>;

val carpentersBlock = <CarpentersBlocks:blockCarpentersBlock>;

## Carpenters Block
recipes.remove(carpentersBlock);
recipes.addShaped(carpentersBlock * 6, [[stick, woodPlanks, stick], [woodPlanks, stick, woodPlanks], [stick, woodPlanks, stick]]);

print("Initialized 'CarpentersBlocks.zs'");
