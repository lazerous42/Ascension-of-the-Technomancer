//////////////////////////////////////////////////////////////////////////////////////////////
// Name: GregTech.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'GregTech.zs'...");

##  Val Definitions
val flour = <gregtech:gt.metaitem.01:2881>;
val dough = <gregtech:gt.metaitem.02:32559>;
val rodIron = <gregtech:gt.metaitem.01:23032>;

##  OreDict
#   Nikolite <-> Electrotine
<ore:dustElectrotine>.add(<gregtech:gt.metaitem.01:2812>);
<ore:dustNikolite>.addAll(<ore:dustElectrotine>);
<ore:dustNikolite>.mirror(<ore:dustElectrotine>);
<ore:dustElectrotine>.addAll(<ore:dustNikolite>);
<ore:dustElectrotine>.mirror(<ore:dustNikolite>);

#   Constantan <-> Cupronickel
<ore:dustConstantan>.addAll(<ore:dustCupronickel>);
<ore:dustConstantan>.mirror(<ore:dustCupronickel>);
<ore:dustCupronickel>.addAll(<ore:dustConstantan>);
<ore:dustCupronickel>.mirror(<ore:dustConstantan>);
<ore:ingotConstantan>.addAll(<ore:ingotCupronickel>);
<ore:ingotConstantan>.mirror(<ore:ingotCupronickel>);
<ore:ingotCupronickel>.addAll(<ore:ingotConstantan>);
<ore:ingotCupronickel>.mirror(<ore:ingotConstantan>);
<ore:blockConstantan>.addAll(<ore:blockCupronickel>);
<ore:blockConstantan>.mirror(<ore:blockCupronickel>);
<ore:blockCupronickel>.addAll(<ore:blockConstantan>);
<ore:blockCupronickel>.mirror(<ore:blockConstantan>);

#   Coal/Charcoal Dust as black dye
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2535>);
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2536>);

##  Iron Rod ~ Remove toolless crafting
recipes.removeShaped(rodIron,[[<ore:ingotIron>],[<ore:ingotIron>]]);

##  Dough
recipes.addShapeless(dough, [flour, <minecraft:potion>.giveBack(<minecraft:glass_bottle>)]);
recipes.addShapeless(dough, [flour, <harvestcraft:freshwaterItem>]);

print("Initialized 'GregTech.zs'");
