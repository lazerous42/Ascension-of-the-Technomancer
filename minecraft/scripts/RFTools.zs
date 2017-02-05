//////////////////////////////////////////////////////////////////////////////////////////////
// Name: RFTools.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

import mods.extraUtils.QED;

print("Initializing 'RFTools.zs'...");

##  Val Definitions
val stone = <ore:stone>;
val slabStone = <ore:slabStone>;
val tesseractFull = <ThermalExpansion:Frame:11>;
val rtgPellet = <IC2:itemRTGPellet>;
val iridiumReinforcedPlate = <IC2:itemPartIridium>;
val plateTungstenSteel = <ore:plateTungstenSteel>;
val plateRedAlloy = <ore:plateRedAlloy>;
val rockWool = <ore:blockClothRock>;

val dialingDevice = <rftools:dialingDeviceBlock>;
val matterReceiver = <rftools:matterReceiverBlock>;
val matterTransmitter = <rftools:matterTransmitterBlock>;

##  Machine Frame and Base
recipes.remove(<rftools:machineBase>);
QED.addShapedRecipe(<rftools:machineBase>, [[slabStone, slabStone, slabStone], [slabStone, <ThermalExpansion:Frame:3>, slabStone], [slabStone, slabStone, slabStone]]);
recipes.remove(<rftools:machineFrame>);
QED.addShapedRecipe(<rftools:machineFrame>, [[rockWool, rockWool, rockWool], [rockWool, <ThermalExpansion:Frame:3>, rockWool], [rockWool, rockWool, rockWool]]);

##  Dimension Builder
recipes.remove(<rftools:dimensionBuilderBlock>);
recipes.addShaped(<rftools:dimensionBuilderBlock>, [[tesseractFull, rtgPellet, tesseractFull], [iridiumReinforcedPlate, <rftools:machineFrame>, iridiumReinforcedPlate], [plateTungstenSteel, rtgPellet, plateTungstenSteel]]);

##  Shape Card
recipes.remove(<rftools:shapeCardItem:2>);
recipes.addShaped(<rftools:shapeCardItem:2>, [[<ore:dustRedstone>, <ExtraUtilities:enderQuarry>, <ore:dustRedstone>], [<ore:ingotIron>, <rftools:shapeCardItem>, <ore:ingotIron>], [<ore:dustRedstone>, <BuildCraft|Builders:machineBlock>, <ore:dustRedstone>]]);

## Dialing Device
recipes.remove(dialingDevice);
recipes.addShaped(dialingDevice, [[plateRedAlloy, plateRedAlloy, plateRedAlloy], [<minecraft:redstone_torch>, <rftools:machineFrame>, <minecraft:redstone_torch>], [plateRedAlloy, plateRedAlloy, plateRedAlloy]]);

## Matter Receiver
recipes.remove(matterReceiver);
recipes.addShaped(matterReceiver, [[plateTungstenSteel, plateTungstenSteel, plateTungstenSteel], [<ore:ingotElectrotineAlloy>, <rftools:machineFrame>, <ore:ingotElectrotineAlloy>], [<ore:pearlEnder>, <ore:pearlEnder>, <ore:pearlEnder>]]);

## Matter Transmitter
recipes.remove(matterTransmitter);
recipes.addShaped(matterTransmitter, [[<ore:pearlEnder>, <ore:pearlEnder>, <ore:pearlEnder>], [<ore:ingotElectrotineAlloy>, <rftools:machineFrame>, <ore:ingotElectrotineAlloy>], [plateTungstenSteel, plateTungstenSteel, plateTungstenSteel]]);

print("Initialized 'RFTools.zs'");
