#Name: Translocators.zs
#Author: Feed the Beast

print("Initializing 'Translocators.zs'...");
##  Val Definitions
val ingotGold = <ore:ingotGold>;
val dustRedstone = <ore:dustRedstone>;
val dustElectrotine = <ore:dustElectrotine>;
val ingotLimonite = <nevermine:IngotLimonite>;
val manaDiamond = <ore:manaDiamond>;

##  Item Translocator
recipes.remove(<Translocator:translocator>);
recipes.addShaped(<Translocator:translocator> * 4, [[dustRedstone, manaDiamond, dustRedstone], [ingotLimonite, <minecraft:piston>, ingotLimonite], [dustElectrotine, ingotGold, dustElectrotine]]);

##  Fluid Translocator
recipes.remove(<Translocator:translocator:1>);
recipes.addShaped(<Translocator:translocator:1> * 4, [[dustRedstone, manaDiamond, dustRedstone], [ingotLimonite, <minecraft:piston>, ingotLimonite], [<ore:shardPrismarine>, <minecraft:dye:4>, <ore:shardPrismarine>]]);

print("Initialized 'Translocators.zs'");
