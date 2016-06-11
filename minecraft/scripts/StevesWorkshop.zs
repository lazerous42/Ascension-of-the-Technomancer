//////////////////////////////////////////////////////////////////////////////////////////////
// Name: StevesWorkshop.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'StevesWorkshop.zs'...");

val ingotCupronickel = <ore:ingotCupronickel>;
val ingotBrass = <ore:ingotBrass>;

val blankUpgrade = <StevesWorkshop:production_table_upgrade>;
val autoCrafterUpgrade = <StevesWorkshop:production_table_upgrade:1>;
val chargerUpgrade = <StevesWorkshop:production_table_upgrade:3>;
val speedUpgrade = <StevesWorkshop:production_table_upgrade:4>;
val inputQueueUpgrade = <StevesWorkshop:production_table_upgrade:5>;
val efficiencyUpgrade = <StevesWorkshop:production_table_upgrade:6>;
val solarUpgrade = <StevesWorkshop:production_table_upgrade:8>;
val autoTransferUpgrade = <StevesWorkshop:production_table_upgrade:9>;
val filterUpgrade = <StevesWorkshop:production_table_upgrade:10>;
val capacityUpgrade = <StevesWorkshop:production_table_upgrade:11>;
val productionTable = <StevesWorkshop:production_table>;

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
recipes.addShaped(efficiencyUpgrade, [[ingotCupronickel, ingotCupronickel, ingotCupronickel], [<minecraft:furnace>, <minecraft:piston>, <minecraft:furnace>], [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]]);

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
recipes.remove(capacityUpgrade);
recipes.addShaped(capacityUpgrade, [[ingotCupronickel, ingotCupronickel, ingotCupronickel], [ingotBrass, <ore:blockRedstone>, ingotBrass], [ingotBrass, blankUpgrade, ingotBrass]]);

print("Initialized 'StevesWorkshop.zs'");
