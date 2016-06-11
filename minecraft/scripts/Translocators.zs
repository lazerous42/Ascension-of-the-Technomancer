#Name: Translocators.zs
#Author: Feed the Beast

print("Initializing 'Translocators.zs'...");
##  Val Definitions
val ingotGold = <ore:ingotGold>;
val dustRedstone = <ore:dustRedstone>;
val ingotLimonite = <nevermine:IngotLimonite>;
val manaDiamond = <ore:manaDiamond>;

##  Item Translocator
recipes.remove(<Translocator:translocator>);
recipes.addShaped(<Translocator:translocator> * 4, [[dustRedstone, manaDiamond, dustRedstone], [ingotLimonite, <minecraft:piston>, ingotLimonite], [dustRedstone, ingotGold, dustRedstone]]);

##  Fluid Translocator
recipes.remove(<Translocator:translocator:1>);
recipes.addShaped(<Translocator:translocator:1> * 4, [[dustRedstone, manaDiamond, dustRedstone], [ingotLimonite, <minecraft:piston>, ingotLimonite], [dustRedstone, <minecraft:dye:4>, dustRedstone]]);

print("Initialized 'Translocators.zs'");
