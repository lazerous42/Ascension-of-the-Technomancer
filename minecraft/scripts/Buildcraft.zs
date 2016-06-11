//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Buildcraft.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Buildcraft.zs'...");

## Val Definitions
val woodPlanks = <ore:plankWood>;
val ingotIron = <ore:ingotIron>;
val ingotGold = <ore:ingotGold>;
val obsidian = <ore:blockObsidian>;
val dustRedstone = <ore:dustRedstone>;
val stickyPiston = <minecraft:sticky_piston>;

val ingotNickel = <ore:ingotNickel>;
val gearCopper = <ore:gearCopper>;
val gearSilver = <ore:gearSilver>;
val gearInvar = <ore:gearInvar>;
val capacitorOctadic = <EnderIO:itemBasicCapacitor:2>;
val tubeDiamond = <Forestry:thermionicTubes:5>;
val tubeLapis = <Forestry:thermionicTubes:11>;
val chipsetIron = <ore:chipsetIron>;
val chipsetDiamond = <ore:chipsetDiamond>;
val circuitBoardBasic = <Forestry:chipsets:0>;
val circuitBoardEnhanced = <Forestry:chipsets:1>;
val circuitBoardRefined = <Forestry:chipsets:2>;
val circuitBoardIntricate = <Forestry:chipsets:3>;

val miningWell = <BuildCraft|Factory:miningWellBlock>;
val pump = <BuildCraft|Factory:pumpBlock>;
val floodGate = <BuildCraft|Factory:floodGateBlock>;
val marker = <BuildCraft|Core:markerBlock>;
val filler = <BuildCraft|Builders:fillerBlock>;

##  Remove non-GregTech gears
recipes.remove(<BuildCraft|Core:woodenGearItem>);
recipes.remove(<BuildCraft|Core:stoneGearItem>);
recipes.remove(<BuildCraft|Core:ironGearItem>);
recipes.remove(<BuildCraft|Core:goldGearItem>);

##  Engines
recipes.remove(<BuildCraft|Core:engineBlock:2>);
recipes.remove(<BuildCraft|Core:engineBlock:1>);
recipes.remove(<BuildCraft|Core:engineBlock>);
recipes.addShaped(<BuildCraft|Core:engineBlock>, [[woodPlanks, woodPlanks, woodPlanks], [null, circuitBoardBasic, null], [gearCopper, stickyPiston, gearCopper]]);
recipes.addShaped(<BuildCraft|Core:engineBlock:1>, [[ingotIron, ingotIron, ingotIron], [null, circuitBoardRefined, null], [<ore:thermalexpansion:machineSilver>, stickyPiston, <ore:thermalexpansion:machineSilver>]]);
recipes.addShaped(<BuildCraft|Core:engineBlock:2>, [[ingotGold, ingotGold, ingotGold], [null, circuitBoardIntricate, null], [<ore:thermalexpansion:machineNickel>, stickyPiston, <ore:thermalexpansion:machineNickel>]]);

##  Laser
recipes.remove(<BuildCraft|Silicon:laserBlock>);
recipes.addShaped(<BuildCraft|Silicon:laserBlock>, [[obsidian, dustRedstone, dustRedstone], [tubeDiamond, tubeDiamond, dustRedstone], [obsidian, dustRedstone, dustRedstone]]);

##  Machines
recipes.remove(miningWell);
recipes.remove(marker);
recipes.remove(filler);
recipes.remove(floodGate);
recipes.remove(pump);
recipes.addShaped(miningWell, [[<ore:plateDenseIron>, <ore:chipsetDiamond>, <ore:plateDenseIron>], [<ore:thermalexpansion:machineGold>, <ore:oc:srever1>, <ore:thermalexpansion:machineGold>], [null, <IC2:itemToolDrill:*>, null]]);
recipes.addShaped(filler, [[marker, <ore:ingotTin>, marker], [<ore:ingotTin>, miningWell, <ore:ingotTin>], [<ore:gearGold>, null, <ore:gearGold>]]);
recipes.addShaped(floodGate, [[ingotNickel, gearSilver, ingotNickel], [gearSilver, pump, gearSilver], [ingotNickel, gearSilver, ingotNickel]]);
recipes.addShapeless(marker, [tubeLapis, <minecraft:redstone_torch>]);
recipes.addShaped(pump, [[<OpenBlocks:tank>, chipsetIron, <OpenBlocks:tank>], [gearInvar, <IC2:blockMachine:8>, gearInvar], [null, <BuildCraft|Transport:item.buildcraftPipe.pipefluidsquartz>, null]]);

##  Quarry
recipes.remove(<BuildCraft|Builders:machineBlock>);
recipes.addShaped(<BuildCraft|Builders:machineBlock>, [[chipsetDiamond, <IC2:itemToolMiningLaser:*>, tubeDiamond], [<ThermalExpansion:Frame:11>, <MineFactoryReloaded:machine.2:1>, <IC2:blockElectric:2>], [capacitorOctadic, miningWell, capacitorOctadic]]);

print("Initialized 'Buildcraft.zs'");
