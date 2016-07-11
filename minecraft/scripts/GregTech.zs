//////////////////////////////////////////////////////////////////////////////////////////////
// Name: GregTech.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'GregTech.zs'...");

##  Val Definitions
val flour = <ore:foodFlour>;
val dough = <gregtech:gt.metaitem.02:32559>;
val rodIron = <gregtech:gt.metaitem.01:23032>;

#   Constantan <-> Cupronickel
<ore:dustConstantan>.addAll(<ore:dustCupronickel>);
<ore:dustCupronickel>.mirror(<ore:dustConstantan>);
<ore:ingotConstantan>.addAll(<ore:ingotCupronickel>);
<ore:ingotCupronickel>.mirror(<ore:ingotConstantan>);
<ore:blockConstantan>.addAll(<ore:blockCupronickel>);
<ore:blockCupronickel>.mirror(<ore:blockConstantan>);

#   Coal/Charcoal Dust as black dye
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2535>);
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2536>);

##  Iron Rod ~ Remove toolless crafting
recipes.removeShaped(rodIron * 4, [[<ore:ingotIron>, null, null],[<ore:ingotIron>, null, null], [null, null, null]]);

##  Dough
recipes.remove(dough);
recipes.addShapeless(dough, [flour, <minecraft:water_bucket>.giveBack(<minecraft:bucket>)]);
recipes.addShapeless(dough, [flour, <minecraft:potion>.giveBack(<minecraft:glass_bottle>)]);
recipes.addShapeless(dough, [flour, <harvestcraft:freshwaterItem>]);

print("Initialized 'GregTech.zs'");
