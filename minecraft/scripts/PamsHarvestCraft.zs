//////////////////////////////////////////////////////////////////////////////////////////////
// Name: PamsHarvestCraft.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'PamsHarvestCraft.zs'...");
##  Val Definitions
val ingotIron = <ore:ingotIron>;
val piston = <minecraft:piston>;
val stick = <ore:stickWood>;
val woodPlanks = <ore:plankWood>;
val emerald = <ore:gemEmerald>;

val ingotAluminum = <ore:ingotAluminum>;
val ingotCopper = <ore:ingotCopper>;
val ingotSteel = <ore:ingotSteel>;
val plateAluminium = <ore:plateAluminium>;
val plateTitanium = <ore:plateTitanium>;

val blueberry = <ore:cropBlueberry>;
val raspberry = <ore:cropRaspberry>;
val blackberry = <ore:cropBlackberry>;
val candleberry = <ore:cropCandleberry>;

val pot = <harvestcraft:potItem>;
val skillet = <harvestcraft:skilletItem>;
val saucepan = <harvestcraft:saucepanItem>;
val cuttingBoard = <harvestcraft:cuttingboardItem>;
val juicer = <harvestcraft:juicerItem>;
val presser = <harvestcraft:presser>;

## Cooking Utensils
#  Saucepan
recipes.remove(saucepan);
recipes.addShaped(saucepan, [[ingotIron, ingotIron, null], [ingotIron, ingotIron, null], [stick, null, null]]);
recipes.addShaped(saucepan, [[ingotCopper, ingotCopper, null], [ingotCopper, ingotCopper, null], [stick, null, null]]);
recipes.addShaped(saucepan, [[ingotAluminum, ingotAluminum, null], [ingotAluminum, ingotAluminum, null], [stick, null, null]]);
recipes.addShaped(saucepan, [[ingotSteel, ingotSteel, null], [ingotSteel, ingotSteel, null], [stick, null, null]]);
#  Skillet
recipes.remove(skillet);
recipes.addShaped(skillet, [[stick, null, null], [null, ingotIron, ingotIron], [null, ingotIron, ingotIron]]);
recipes.addShaped(skillet, [[stick, null, null], [null, ingotCopper, ingotCopper], [null, ingotCopper, ingotCopper]]);
recipes.addShaped(skillet, [[stick, null, null], [null, ingotAluminum, ingotAluminum], [null, ingotAluminum, ingotAluminum]]);
recipes.addShaped(skillet, [[stick, null, null], [null, ingotSteel, ingotSteel], [null, ingotSteel, ingotSteel]]);
#  Pot
recipes.remove(pot);
recipes.addShaped(pot, [[stick, ingotIron, ingotIron], [null, ingotIron, ingotIron], [null, null, null]]);
recipes.addShaped(pot, [[stick, ingotCopper, ingotCopper], [null, ingotCopper, ingotCopper], [null, null, null]]);
recipes.addShaped(pot, [[stick, ingotAluminum, ingotAluminum], [null, ingotAluminum, ingotAluminum], [null, null, null]]);
recipes.addShaped(pot, [[stick, ingotSteel, ingotSteel], [null, ingotSteel, ingotSteel], [null, null, null]]);
#  Cutting Board
recipes.remove(cuttingBoard);
recipes.addShaped(cuttingBoard, [[ingotIron, null, null], [null, stick, null], [null, null, woodPlanks]]);
recipes.addShaped(cuttingBoard, [[ingotCopper, null, null], [null, stick, null], [null, null, woodPlanks]]);
recipes.addShaped(cuttingBoard, [[ingotAluminum, null, null], [null, stick, null], [null, null, woodPlanks]]);
recipes.addShaped(cuttingBoard, [[ingotSteel, null, null], [null, stick, null], [null, null, woodPlanks]]);

## Cooking Oil
recipes.remove(<harvestcraft:oliveoilItem>);
recipes.addShapeless(<harvestcraft:oliveoilItem>, [juicer, <ore:cropOlive>, <ore:cropOlive>]);
recipes.addShapeless(<harvestcraft:oliveoilItem>, [juicer, <ore:cropSunflower>, <ore:cropSunflower>]);
recipes.addShapeless(<harvestcraft:oliveoilItem>, [juicer, <ore:cropWalnut>, <ore:cropWalnut>]);
recipes.addShapeless(<harvestcraft:oliveoilItem> * 2, [juicer, <RotaryCraft:rotarycraft_item_canola>, <RotaryCraft:rotarycraft_item_canola>, 
															   <RotaryCraft:rotarycraft_item_canola>, <RotaryCraft:rotarycraft_item_canola>, 
															   <RotaryCraft:rotarycraft_item_canola>, <RotaryCraft:rotarycraft_item_canola>, 
															   <RotaryCraft:rotarycraft_item_canola>, <RotaryCraft:rotarycraft_item_canola>]);

##  Presser
recipes.remove(presser);
recipes.addShaped(presser, [[plateAluminium, piston, plateAluminium], [plateAluminium, null, plateAluminium], [plateAluminium, piston, plateAluminium]]);
	
## Market
recipes.remove(<harvestcraft:market>);
recipes.addShaped(<harvestcraft:market>, [[plateAluminium, emerald, plateAluminium], [emerald, <ExtraUtilities:watering_can:1>, emerald], [plateAluminium, emerald, plateAluminium]]);

print("Initialized 'PamsHarvestCraft.zs'");
