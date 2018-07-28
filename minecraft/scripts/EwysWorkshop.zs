//////////////////////////////////////////////////////////////////////////////////////////////
// Name: EwysWorkshop.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'EwysWorkshop.zs'...");

val ingotCupronickel = <ore:ingotCupronickel>;
val ingotBrass = <ore:ingotBrass>;

val blankUpgrade = <ewysworkshop:WorkshopTableUpgrade>;
val autoCrafterUpgrade = <ewysworkshop:WorkshopTableUpgrade:1>;
val chargerUpgrade = <ewysworkshop:WorkshopTableUpgrade:3>;
val speedUpgrade = <ewysworkshop:WorkshopTableUpgrade:4>;
val inputQueueUpgrade = <ewysworkshop:WorkshopTableUpgrade:5>;
val efficiencyUpgrade = <ewysworkshop:WorkshopTableUpgrade:6>;
val lavaUpgrade = <ewysworkshop:WorkshopTableUpgrade:7>;
val rfUpgrade = <ewysworkshop:WorkshopTableUpgrade:8>;
val solarUpgrade = <ewysworkshop:WorkshopTableUpgrade:9>;
val autoTransferUpgrade = <ewysworkshop:WorkshopTableUpgrade:10>;
val filterUpgrade = <ewysworkshop:WorkshopTableUpgrade:11>;
val transferCapacityUpgrade = <ewysworkshop:WorkshopTableUpgrade:12>;
val productionTable = <ewysworkshop:WorkshopTable>;

##  Blank Upgrade
recipes.remove(blankUpgrade);
recipes.addShaped(blankUpgrade, [[ingotCupronickel, <ore:plankWood>], [<ore:plankWood>, ingotCupronickel]]);

##  Production Table
recipes.remove(productionTable);
recipes.addShaped(productionTable, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [ingotCupronickel, blankUpgrade, ingotCupronickel], [ingotCupronickel, ingotCupronickel, ingotCupronickel]]);

##  Auto-Crafter
recipes.remove(autoCrafterUpgrade);
recipes.addShaped(autoCrafterUpgrade, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [ingotCupronickel, <minecraft:piston>, ingotCupronickel], [ingotCupronickel, blankUpgrade, ingotCupronickel]]);

##  Charger Upgrade
recipes.remove(chargerUpgrade);
recipes.addShaped(chargerUpgrade, [[ingotCupronickel, <ore:dustRedstone>, ingotCupronickel], [ingotCupronickel, blankUpgrade, ingotCupronickel], [ingotCupronickel, <ore:dustRedstone>, ingotCupronickel]]);

##  Speed Uprgade
recipes.remove(speedUpgrade);
recipes.addShaped(speedUpgrade, [[ingotCupronickel, <ore:dustRedstone>, ingotCupronickel], [<ore:gemLapis>, blankUpgrade, <ore:gemLapis>], [ingotCupronickel, <ore:dustRedstone>, ingotCupronickel]]);

##  Input Queue Uprgade
recipes.remove(inputQueueUpgrade);
recipes.addShaped(inputQueueUpgrade, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [ingotCupronickel, blankUpgrade, ingotCupronickel], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

##  Efficiency Upgrade
recipes.remove(efficiencyUpgrade);
recipes.addShaped(efficiencyUpgrade, [[ingotCupronickel, ingotCupronickel, ingotCupronickel], [<minecraft:furnace>, blankUpgrade, <minecraft:furnace>], [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]]);

##  Lava Upgrade
recipes.remove(lavaUpgrade);
recipes.addShaped(lavaUpgrade, [[ingotCupronickel, <Railcraft:firestone.raw>, ingotCupronickel], [<magmaox:RedNetherBrick>, blankUpgrade, <magmaox:RedNetherBrick>], [<nevermine:IngotEmberstone>, <nevermine:IngotEmberstone>, <nevermine:IngotEmberstone>]]);

##  RF Upgrade
recipes.remove(rfUpgrade);
recipes.addShaped(rfUpgrade, [[ingotCupronickel, <ore:circuitBasic>, ingotCupronickel], [<ThermalExpansion:material:3>, blankUpgrade, <ThermalExpansion:material:3>], [ingotCupronickel, <ThermalExpansion:material:2>, ingotCupronickel]]);

##  Solar Upgrade
recipes.remove(solarUpgrade);
recipes.addShaped(solarUpgrade, [[ingotBrass, <ore:blockGlass>, ingotBrass], [ingotBrass, <ore:dustGlowstone>, ingotBrass], [ingotBrass, blankUpgrade, ingotBrass]]);

## Auto Transfer Upgrade
recipes.remove(autoTransferUpgrade);
recipes.addShaped(autoTransferUpgrade, [[ingotBrass, ingotBrass, ingotBrass], [<minecraft:hopper>, blankUpgrade, <minecraft:hopper>], [ingotBrass, ingotBrass, ingotBrass]]);

## Fliter Upgrade
recipes.remove(filterUpgrade);
recipes.addShaped(filterUpgrade, [[ingotCupronickel, ingotCupronickel, ingotCupronickel], [ingotBrass, <minecraft:iron_bars>, ingotBrass], [ingotCupronickel, blankUpgrade, ingotCupronickel]]);

## Capacity Upgrade
recipes.remove(transferCapacityUpgrade);
recipes.addShaped(transferCapacityUpgrade, [[ingotCupronickel, ingotCupronickel, ingotCupronickel], [ingotBrass, <ore:blockRedstone>, ingotBrass], [ingotBrass, blankUpgrade, ingotBrass]]);

print("Initialized 'EwysWorkshop.zs'");
