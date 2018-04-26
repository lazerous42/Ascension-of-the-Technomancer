//////////////////////////////////////////////////////////////////////////////////////////////
// Name: MineFactoryReloaded.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.extraUtils.QED;

print("Initializing 'MineFactoryReloaded.zs'...");

##  Val Deinitions
val ingotIron = <ore:ingotIron>;
val piston = <minecraft:piston>;
val gearNickel = <ore:gearNickel>;
val machineChassis = <EnderIO:itemMachinePart>;
val combustionGenerator = <EnderIO:blockCombustionGenerator>;
val processorLogic = <appliedenergistics2:item.ItemMultiMaterial:22>;
val tubeRubberized = <Forestry:thermionicTubes:8>;
val tubeApatine = <Forestry:thermionicTubes:10>;
val server = <ore:oc:server3>;
val monitor = <ore:oc:screen3>;

val plasticSheets = <MineFactoryReloaded:plastic.sheet>;
val rednetCable = <MineFactoryReloaded:cable.redstone>;
val rednetEnergyCable = <MineFactoryReloaded:cable.redstone:2>;

##  Plastic Sheets
recipes.remove(plasticSheets);
recipes.addShaped(plasticSheets * 2, [[<ThermalExpansion:material:513>, <ore:dustPlastic>, <ThermalExpansion:material:513>], [<ore:dustPlastic>, <EnderIO:bucketRocket_fuel>.giveBack(<minecraft:bucket>), <ore:dustPlastic>], [<ThermalExpansion:material:513>, <ore:dustPlastic>, <ThermalExpansion:material:513>]]);

##  Remove Reusable Saffari Net (use capture wand)
# NOTE:  The only way to get this item is to grab it for two AE2 singularities via PneumaticCraft armadron traiding, or from the MFR villager
recipes.remove(<MineFactoryReloaded:safarinet.reusable>);

##  Rednet Energy Cables
recipes.remove(rednetEnergyCable);
recipes.addShaped(rednetEnergyCable,[[<ore:ingotLumium>,<ore:ingotLumium>,rednetCable],[<minecraft:redstone_block>,rednetCable,rednetCable],[rednetCable,rednetCable,rednetCable]]);

##  Programable RedNet Controller
recipes.remove(<MineFactoryReloaded:rednet.logic>);
recipes.addShaped(<MineFactoryReloaded:rednet.logic>,[[<ore:chipsetComp>,processorLogic,<ore:chipsetComp>],[<Forestry:chipsets:3>,server,<Forestry:chipsets:3>],[plasticSheets,<MineFactoryReloaded:machineblock:1>,plasticSheets]]);

##  Rednet Historian
recipes.remove(<MineFactoryReloaded:rednet.panel>);
recipes.addShaped(<MineFactoryReloaded:rednet.panel>,[[plasticSheets,tubeRubberized,plasticSheets],[plasticSheets,monitor,plasticSheets],[tubeApatine,tubeRubberized,tubeApatine]]);

##  Remove Rediculously Expensive Chunk Loader
recipes.remove(<MineFactoryReloaded:machine.2:10>);

##  Change Ender IO Steam Turbine Recipe
val steamTurbine = <MineFactoryReloaded:machine.2:9>;
recipes.removeShaped(steamTurbine,[[plasticSheets, combustionGenerator, plasticSheets],[piston, machineChassis, piston],[ingotIron, <EnderIO:itemMachinePart:1>, ingotIron]]);
recipes.addShaped(steamTurbine,[[plasticSheets, combustionGenerator, plasticSheets],[piston, machineChassis, piston],[ingotIron, gearNickel, ingotIron]]);

print("Initialized 'MineFactoryReloaded.zs'");
