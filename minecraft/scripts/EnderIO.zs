//////////////////////////////////////////////////////////////////////////////////////////////
// Name: EnderIO.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.thaumcraft.Crucible;

print("Initializing 'EnderIO.zs'...");

##  Val Definitions
val glass = <minecraft:glass>;
val glassPane = <minecraft:glass_pane>;
val furnace = <minecraft:furnace>;
val comparator = <minecraft:comparator>;
val ingotIron = <ore:ingotIron>;
val ingotSteel = <ore:ingotSteel>;
val piston = <minecraft:piston>;
val bookEnchanted = <minecraft:enchanted_book>;
val crushedObsidian = <Railcraft:cube:4>;
val ingotNickel = <ore:ingotNickel>;
val ingotLumium = <ore:ingotLumium>;
val gearIron = <ore:gearIron>;
val gearNickel = <ore:gearNickel>;
val chipsetRedstone = <ore:chipsetRed>;
val chipsetIron = <ore:chipsetIron>;
val tubeCopper = <Forestry:thermionicTubes>;
val tubeTin = <Forestry:thermionicTubes:1>;
val tubeBronze = <Forestry:thermionicTubes:2>;
val tubeIron = <Forestry:thermionicTubes:3>;
val tubeGold = <Forestry:thermionicTubes:4>;
val tubeDiamond = <Forestry:thermionicTubes:5>;
val tubeObsidian = <Forestry:thermionicTubes:6>;
val tubeBlazing = <Forestry:thermionicTubes:7>;
val tubeRubberized = <Forestry:thermionicTubes:8>;
val tubeEmerald = <Forestry:thermionicTubes:9>;
val tubeApatine = <Forestry:thermionicTubes:10>;
val tubeLapis = <Forestry:thermionicTubes:11>;
val tubeEnder = <Forestry:thermionicTubes:12>;
val tubeCertus = <Quadrum:tubeCertus>;
val ingotDarkSoularium = <simplyjetpacks:components:70>;
val diamondMana = <Botania:manaResource:2>;
val plateSilicon = <ore:plateSilicon>;
val rammerheadHide = <nevermine:RammerheadHide>;

val silicon = <EnderIO:itemMaterial>;
val probeConduit = <EnderIO:itemConduitProbe>;
val conduitEnergy = <EnderIO:itemPowerConduit>;
val conduitRedstoneInsulated = <EnderIO:itemRedstoneConduit:2>;
val ironBarsDark = <EnderIO:blockDarkIronBars>;
val basicCapacitor = <EnderIO:itemBasicCapacitor>;
val fluidTank = <EnderIO:blockTank>;
val machineChassis = <EnderIO:itemMachinePart>;
val stirlingGenerator = <EnderIO:blockStirlingGenerator>;
val combustionGenerator = <EnderIO:blockCombustionGenerator>;
val yetaWrench = <EnderIO:itemYetaWrench>;
val conduitBinder = <EnderIO:itemMaterial:1>;
val enchanter = <EnderIO:blockEnchanter>;
val gliderWing = <EnderIO:itemGliderWing>;
val ingotDarkSteel = <ore:ingotDarkSteel>;

##  Conduit Probe
recipes.remove(probeConduit);
recipes.addShaped(probeConduit, [[ingotSteel, conduitEnergy, ingotSteel], [glassPane, comparator, glassPane], [plateSilicon, conduitRedstoneInsulated, plateSilicon]]);

##  Glider Wing
recipes.remove(gliderWing);
recipes.addShaped(gliderWing, [[null, null, ingotDarkSteel], [null, ingotDarkSteel, rammerheadHide], [ingotDarkSteel, rammerheadHide, rammerheadHide]]);

##  Facades
recipes.remove(<EnderIO:itemConduitFacade>);
recipes.addShaped(<EnderIO:itemConduitFacade> * 8, [[conduitBinder, conduitBinder, conduitBinder], [conduitBinder, null, conduitBinder], [conduitBinder, conduitBinder, conduitBinder]]);

##  Weather Obelisk
recipes.remove(<EnderIO:itemMaterial:10>);
recipes.addShaped(<EnderIO:itemMaterial:10>, [[null, <Forestry:craftingMaterial:4>, null], [null, <Forestry:craftingMaterial:4>, null], [<appliedenergistics2:tile.BlockSkyStone>, <appliedenergistics2:tile.BlockSkyStone>, <appliedenergistics2:tile.BlockSkyStone>]]);

## Remove dark iron bars from OreDict
<ore:barsIron>.remove(ironBarsDark);

##  Fluid Tank
recipes.remove(fluidTank);
recipes.addShaped(fluidTank, [[ingotNickel, ironBarsDark, ingotNickel], [ironBarsDark, glass, ironBarsDark], [ingotNickel, ironBarsDark, ingotNickel]]);

##  Glider Wing
recipes.remove(<EnderIO:itemGliderWing>);
recipes.addShaped(<EnderIO:itemGliderWing>,[[null, null, <EnderIO:itemAlloy:6>], [null, <EnderIO:itemAlloy:6>, <nevermine:RammerheadHide>], [<EnderIO:itemAlloy:6>, <nevermine:RammerheadHide>, <nevermine:RammerheadHide>]]);

##  Machine Chassis
recipes.remove(machineChassis);
recipes.addShaped(machineChassis, [[ingotLumium, ingotNickel, ingotLumium], [basicCapacitor, <ThermalExpansion:Frame>, basicCapacitor], [ingotNickel, ironBarsDark, ingotNickel]]);

##  Stirling Generator
recipes.remove(stirlingGenerator);
recipes.addShaped(stirlingGenerator, [[<minecraft:stonebrick:*>, <minecraft:stonebrick:*>, <minecraft:stonebrick:*>], [furnace, machineChassis, furnace], [gearNickel, piston, gearNickel]]);

##  Combustion Generator
recipes.remove(combustionGenerator);
recipes.addShaped(combustionGenerator, [[ingotIron, ingotIron, ingotIron], [fluidTank, machineChassis, fluidTank], [gearNickel, piston, gearNickel]]);

##  Yeta Wrench
recipes.remove(yetaWrench);
recipes.addShaped(yetaWrench, [[ingotIron, null, ingotIron], [null, gearNickel, null], [null, ingotIron, null]]);

##  Sag Mill
recipes.remove(<EnderIO:blockSagMill>);
recipes.addShaped(<EnderIO:blockSagMill>, [[crushedObsidian, crushedObsidian, crushedObsidian], [piston, machineChassis, piston], [ingotIron, ingotIron, ingotIron]]);

##  Capacitors
recipes.remove(<EnderIO:itemBasicCapacitor:2>);
recipes.remove(<EnderIO:itemBasicCapacitor:1>);
recipes.remove(basicCapacitor);
recipes.addShaped(<EnderIO:itemBasicCapacitor:2>, [[null, <EnderIO:itemAlloy:2>, null], [<EnderIO:itemBasicCapacitor:1>, tubeEnder, <EnderIO:itemBasicCapacitor:1>], [null, <EnderIO:itemAlloy:2>, null]]);
recipes.addShaped(<EnderIO:itemBasicCapacitor:1>, [[null, <EnderIO:itemAlloy:1>, null], [basicCapacitor, tubeBlazing, basicCapacitor], [null, <EnderIO:itemAlloy:1>, null]]);
recipes.addShaped(basicCapacitor, [[null, <ore:nuggetSignalum>, chipsetRedstone], [<ore:nuggetSignalum>, tubeLapis, <ore:nuggetSignalum>], [chipsetRedstone, <ore:nuggetSignalum>, null]]);

##  Alloy Furnance
recipes.remove(<EnderIO:blockAlloySmelter>);
recipes.addShaped(<EnderIO:blockAlloySmelter>, [[crushedObsidian, <IC2:blockMachine:13>, crushedObsidian], [<IC2:blockMachine:2>, machineChassis, <IC2:blockMachine:2>], [crushedObsidian, basicCapacitor, crushedObsidian]]);

##  Reinforced Obsidian
recipes.remove(<EnderIO:blockReinforcedObsidian>);
recipes.addShaped(<EnderIO:blockReinforcedObsidian> * 4, [[<IC2:blockAlloy>, crushedObsidian, <IC2:blockAlloy>], [crushedObsidian, <StevesCarts:ModuleComponents:22>, crushedObsidian], [<IC2:blockAlloy>, crushedObsidian, <IC2:blockAlloy>]]);

##  Remove Enchanter
recipes.remove(enchanter);
recipes.addShaped(enchanter, [[diamondMana, bookEnchanted, diamondMana], [ingotDarkSoularium, ingotDarkSoularium, ingotDarkSoularium], [null, ingotDarkSoularium, null]]);

##  Crystals
recipes.remove(<EnderIO:itemMaterial:5>);
recipes.remove(<EnderIO:itemMaterial:6>);
recipes.remove(<EnderIO:itemMaterial:10>);
recipes.addShaped(<EnderIO:itemMaterial:5>, [[<ThermalFoundation:material:106>, <EnderIO:itemMaterial:3>, <ThermalFoundation:material:106>], [<EnderIO:itemMaterial:3>, tubeDiamond, <EnderIO:itemMaterial:3>], [<ThermalFoundation:material:106>, <EnderIO:itemMaterial:3>, <ThermalFoundation:material:106>]]);
recipes.addShaped(<EnderIO:itemMaterial:6>, [[<ore:nuggetEnderium>, <ore:nuggetVibrantAlloy>, <ore:nuggetEnderium>], [<ore:nuggetVibrantAlloy>, tubeEmerald, <ore:nuggetVibrantAlloy>], [<ore:nuggetEnderium>, <ore:nuggetVibrantAlloy>, <ore:nuggetEnderium>]]);
Crucible.addRecipe("WEATHERCRYSTAL", <EnderIO:itemMaterial:10>, <minecraft:diamond>, "tempestas 24, vitreus 8, praecantatio 8, machina 16");

#
##  Conduits
recipes.remove(<EnderIO:itemItemConduit>);
recipes.remove(<EnderIO:itemPowerConduit:2>);
recipes.remove(<EnderIO:itemPowerConduit:1>);
recipes.remove(<EnderIO:itemPowerConduit>);
recipes.remove(<EnderIO:itemLiquidConduit:2>);
recipes.remove(<EnderIO:itemLiquidConduit:1>);
recipes.remove(<EnderIO:itemLiquidConduit>);
recipes.remove(<EnderIO:itemMaterial:2>);
recipes.addShaped(<EnderIO:itemItemConduit> * 3, [[conduitBinder, <ThermalDynamics:servo:4>, conduitBinder], [<ThermalDynamics:ThermalDynamics_32:4>, <ThermalDynamics:ThermalDynamics_32:4>, <ThermalDynamics:ThermalDynamics_32:4>], [conduitBinder, <ThermalDynamics:servo:4>, conduitBinder]]);
recipes.addShaped(<EnderIO:itemPowerConduit:2> * 3, [[conduitBinder, <ThermalDynamics:servo:2>, conduitBinder], [<ThermalDynamics:ThermalDynamics_0:4>, <ThermalDynamics:ThermalDynamics_0:4>, <ThermalDynamics:ThermalDynamics_0:4>], [conduitBinder, <ThermalDynamics:servo:2>, conduitBinder]]);
recipes.addShaped(<EnderIO:itemPowerConduit:1> * 3, [[conduitBinder, <ThermalDynamics:servo:1>, conduitBinder], [<ThermalDynamics:ThermalDynamics_0:2>, <ThermalDynamics:ThermalDynamics_0:2>, <ThermalDynamics:ThermalDynamics_0:2>], [conduitBinder, <ThermalDynamics:servo:1>, conduitBinder]]);
recipes.addShaped(<EnderIO:itemPowerConduit> * 3, [[conduitBinder, <ThermalDynamics:servo>, conduitBinder], [<ThermalDynamics:ThermalDynamics_0:1>, <ThermalDynamics:ThermalDynamics_0:1>, <ThermalDynamics:ThermalDynamics_0:1>], [conduitBinder, <ThermalDynamics:servo>, conduitBinder]]);
recipes.addShaped(<EnderIO:itemLiquidConduit:2> * 3, [[conduitBinder, <ThermalDynamics:servo:2>, conduitBinder], [<ThermalDynamics:ThermalDynamics_16:2>, <ThermalDynamics:ThermalDynamics_16:2>, <ThermalDynamics:ThermalDynamics_16:2>], [conduitBinder, <ThermalDynamics:servo:2>, conduitBinder]]);
recipes.addShaped(<EnderIO:itemLiquidConduit:1> * 3, [[conduitBinder, <ThermalDynamics:servo:1>, conduitBinder], [<ThermalDynamics:ThermalDynamics_16>, <ThermalDynamics:ThermalDynamics_16>, <ThermalDynamics:ThermalDynamics_16>], [conduitBinder, <ThermalDynamics:servo:1>, conduitBinder]]);
recipes.addShaped(<EnderIO:itemLiquidConduit> * 3, [[conduitBinder, <ThermalDynamics:servo>, conduitBinder], [<ThermalDynamics:ThermalDynamics_16>, <ThermalDynamics:ThermalDynamics_16>, <ThermalDynamics:ThermalDynamics_16>], [conduitBinder, <ThermalDynamics:servo>, conduitBinder]]);
recipes.addShaped(<EnderIO:itemMaterial:2> * 8, [[<ore:dustStone>, <ore:dustStone>, <ore:dustStone>], [<ThermalExpansion:material:513>, <ore:ingotElectricalSteel>, <ThermalExpansion:material:513>], [<ore:dustStone>, <ore:dustStone>, <ore:dustStone>]]);

print("Initialized 'EnderIO.zs'");
