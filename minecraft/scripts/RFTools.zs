//////////////////////////////////////////////////////////////////////////////////////////////
// Name: RFTools.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'RFTools.zs'...");

##  Val Definitions
val stone = <ore:stone>;
val slabStone = <ore:slabStone>;
val tesseractFull = <ThermalExpansion:Frame:11>;
val rtgPellet = <IC2:itemRTGPellet>;
val iridiumReinforcedPlate = <IC2:itemPartIridium>;
val plateTungstenSteel = <ore:plateTungstenSteel>;


##  Machine Frame and Base
recipes.remove(<rftools:machineBase>);
recipes.remove(<rftools:machineFrame>);
recipes.addShaped(<rftools:machineBase>, [[slabStone, slabStone, slabStone], [slabStone, <ThermalExpansion:Frame:3>, slabStone], [slabStone, slabStone, slabStone]]);
recipes.addShaped(<rftools:machineFrame>, [[stone, stone, stone], [stone, <ThermalExpansion:Frame:3>, stone], [stone, stone, stone]]);

##  Dimension Builder
recipes.remove(<rftools:dimensionBuilderBlock>);
recipes.addShaped(<rftools:dimensionBuilderBlock>, [[tesseractFull, rtgPellet, tesseractFull], [iridiumReinforcedPlate, <rftools:machineFrame>, iridiumReinforcedPlate], [plateTungstenSteel, rtgPellet, plateTungstenSteel]]);

##  Shape Card
recipes.remove(<rftools:shapeCardItem:2>);
recipes.addShaped(<rftools:shapeCardItem:2>, [[<ore:dustRedstone>, <ExtraUtilities:enderQuarry>, <ore:dustRedstone>], [<ore:ingotIron>, <rftools:shapeCardItem>, <ore:ingotIron>], [<ore:dustRedstone>, <BuildCraft|Builders:machineBlock>, <ore:dustRedstone>]]);

print("Initialized 'RFTools.zs'");
