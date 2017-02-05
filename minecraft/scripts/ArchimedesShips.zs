//////////////////////////////////////////////////////////////////////////////////////////////
// Name: ArchimedesShips.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.extraUtils.QED;

print("Initializing 'ArchimedesShips.zs'...");

## Val Definitions
val woodSpooky = <HardcoreEnderExpansion:spooky_log>;
val gearLumium = <ore:gearLumium>;
val gearPlatinum = <ore:gearPlatinum>;
val advancedMachineCasing = <IC2:blockMachine:12>;
val capacitorOctaditic = <EnderIO:itemBasicCapacitor:2>;
val advancedPcb = <StevesCarts:ModuleComponents:16>;
val ingotIridium = <ore:ingotIridium>;
val steamBoiler = <MineFactoryReloaded:machine.1:6>;
val steamTurbine = <MineFactoryReloaded:machine.2:9>;
val steamTank = <Steamcraft:steamTank>;
val pressurizedFluidConduit = <EnderIO:itemLiquidConduit:1>;
val advancedAlloy = <IC2:itemPartAlloy>;
val log = <ore:logWood>;
val rawRubber = <IC2:itemHarz>;
val rubber = <ore:itemRubber>;
val airCell = <IC2:itemCellEmpty:5>;

# For progression gating.  You want the airship, you must beat the Aether
val gravititeEnchanted = <aether:enchantedGravitite>;

val shipsHelm = <ArchimedesShipsPlus:marker>;
val steamEngine = <ArchimedesShipsPlus:engine>;
val floater = <ArchimedesShipsPlus:floater>;

##  Ships Helm
recipes.remove(shipsHelm);
QED.addShapedRecipe(shipsHelm, [[advancedPcb, advancedAlloy, advancedPcb], [gearPlatinum, advancedMachineCasing, gearPlatinum], [capacitorOctaditic, gravititeEnchanted, capacitorOctaditic]]);

##  Ships Engine
recipes.remove(steamEngine);
QED.addShapedRecipe(steamEngine, [[advancedAlloy, gearLumium, advancedAlloy],[pressurizedFluidConduit, steamBoiler, pressurizedFluidConduit],[steamTank, steamTurbine, steamTank]]);

##  Floater
recipes.remove(floater);
recipes.addShapeless(floater, [log, rubber]);

##  Air Balloons
recipes.remove(<ArchimedesShipsPlus:balloon>);
recipes.addShaped(<ArchimedesShipsPlus:balloon>, [[null, rawRubber, null], [rawRubber, <minecraft:wool>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:1>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:1>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:1>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:2>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:2>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:2>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:3>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:3>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:3>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:4>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:4>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:4>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:5>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:5>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:5>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:6>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:6>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:6>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:7>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:7>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:7>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:8>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:8>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:8>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:9>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:9>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:9>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:10>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:10>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:10>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:11>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:11>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:11>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:12>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:12>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:12>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:13>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:13>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:13>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:14>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:14>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:14>, rawRubber], [null, airCell, null]]);
recipes.remove(<ArchimedesShipsPlus:balloon:15>);
recipes.addShaped(<ArchimedesShipsPlus:balloon:15>, [[null, rawRubber, null], [rawRubber, <minecraft:wool:15>, rawRubber], [null, airCell, null]]);

print("Initialized 'ArchimedesShips.zs'");
