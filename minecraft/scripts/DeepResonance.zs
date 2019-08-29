//////////////////////////////////////////////////////////////////////////////////////////////
// Name: DeepResonance.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.pneumaticcraft.Pressure;

print("Initializing 'DeepResonance.zs'...");

val dispenser = <minecraft:dispenser>;
val emerald = <minecraft:emerald>;
val bricksNether = <minecraft:nether_brick>;
val comparitor = <ProjRed|Integration:projectred.integration.gate:26>;
val glassHardened = <ore:blockGlassHardened>;
val plateIridium = <ore:plateIridium>;
val machineChassis = <EnderIO:itemMachinePart>;
val gearPlatinum = <ore:gearPlatinum>;
val ingotElectrotineAlloy = <ProjRed|Core:projectred.core.part:55>;
val ingotIronCompressed = <PneumaticCraft:ingotIronCompressed>;
val ingotGalgadorian = <StevesCarts:ModuleComponents:49>;
val ingotDarkSolarium = <simplyjetpacks:components:70>;
val ingotEmberstone = <nevermine:IngotEmberstone>;
val redstoneCrystal = <BuildCraft|Silicon:redstoneCrystal>;
val ingotManyullyn = <ore:ingotManyullyn>;
val ingotFluxedElectrum = <RedstoneArsenal:material:32>;
val blockFluxedElectrum = <RedstoneArsenal:Storage>;
val rodBlitz = <ThermalFoundation:material:1026>;
val redstoneTransmissionCoil = <ThermalExpansion:material:2>;
val chipsetComp = <ore:chipsetComp>;
val server = <ore:oc:server3>;
val lensDiamond = <ore:lensDiamond>;
val lensRuby = <ore:lensRuby>;
val lensAmethyst = <ore:lensAmethyst>;
val plateTitanium = <ore:pateTitanium>;

val filterMaterial = <deepresonance:filterMaterialItem>; 
val spentFilterMaterial = <deepresonance:spentFilterMaterialItem>; 
val resonatingPlate = <deepresonance:resonatingPlateItem>;
val machineFrame = <deepresonance:machineFrame>;
val crystalizer = <deepresonance:crystalizerBlock>;
val smelter = <deepresonance:smelterBlock>;
val valve = <deepresonance:valveBlock>;
val pedestal = <deepresonance:pedestalBlock>;
val tank = <deepresonance:tankBlock>;
val laser = <deepresonance:laserBlock>;
val purifier = <deepresonance:purifierBlock>;
val energyCollector = <deepresonance:energyCollectorBlock>;
val generator = <deepresonance:generatorBlock>;
val generatorController = <deepresonance:generatorControllerBlock>;
val denseObsidian = <deepresonance:denseObsidian>;
val denseGlass = <deepresonance:denseGlass>;
val lens = <deepresonance:lensBlock>;

##  Machine Frame
recipes.remove(machineFrame);
recipes.addShaped(machineFrame, [[ingotDarkSolarium, resonatingPlate, ingotDarkSolarium], [resonatingPlate, machineChassis, resonatingPlate], [plateIridium, resonatingPlate, plateIridium]]);

##  Crystalizer
recipes.remove(crystalizer);
recipes.addShaped(crystalizer, [[glassHardened, glassHardened, glassHardened], [lensAmethyst, machineFrame, lensAmethyst], [ingotDarkSolarium, ingotDarkSolarium, ingotDarkSolarium]]);

##  Smelter
recipes.remove(smelter);
recipes.addShaped(smelter, [[resonatingPlate, resonatingPlate, resonatingPlate], [bricksNether, machineFrame, bricksNether], [ingotEmberstone, ingotEmberstone, ingotEmberstone]]);

##  Valve
recipes.remove(valve);
recipes.addShaped(valve, [[plateTitanium, ingotDarkSolarium, plateTitanium], [filterMaterial, machineFrame, filterMaterial], [glassHardened, comparitor, glassHardened]]);

##  Pedestal
recipes.remove(pedestal);
recipes.addShaped(pedestal, [[ingotIronCompressed, dispenser, ingotIronCompressed], [ingotIronCompressed, machineFrame, ingotIronCompressed], [ingotIronCompressed, comparitor, ingotIronCompressed]]);

## Tank
recipes.remove(tank);
recipes.addShaped(tank, [[ingotIronCompressed, glassHardened, ingotIronCompressed], [glassHardened, glassHardened, glassHardened], [ingotIronCompressed, resonatingPlate, ingotIronCompressed]]);

##  Laser
recipes.remove(laser);
recipes.addShaped(laser, [[glassHardened, ingotGalgadorian, glassHardened], [plateIridium, machineFrame, plateIridium], [redstoneCrystal, redstoneCrystal, redstoneCrystal]]);

##  Energy Collector
recipes.remove(energyCollector);
recipes.addShaped(energyCollector, [[null, rodBlitz, null], [redstoneCrystal, machineFrame, redstoneCrystal], [ingotFluxedElectrum, ingotFluxedElectrum, ingotFluxedElectrum]]);

##  Purifier
recipes.remove(purifier);
recipes.addShaped(purifier, [[filterMaterial, filterMaterial, filterMaterial], [ingotIronCompressed, machineFrame, ingotIronCompressed], [filterMaterial, filterMaterial, filterMaterial]]);

##  Generator
recipes.remove(generator);
recipes.addShaped(generator, [[gearPlatinum, blockFluxedElectrum, gearPlatinum], [ingotElectrotineAlloy, machineFrame, ingotElectrotineAlloy], [redstoneTransmissionCoil, blockFluxedElectrum, redstoneTransmissionCoil]]);

##  Generator Controller
recipes.remove(generatorController);
recipes.addShaped(generatorController, [[chipsetComp, comparitor, chipsetComp], [ingotElectrotineAlloy, machineFrame, ingotElectrotineAlloy], [ingotElectrotineAlloy, server, ingotElectrotineAlloy]]);

##  Lens
recipes.remove(lens);
recipes.addShaped(lens, [[lensDiamond, resonatingPlate, lensDiamond], [resonatingPlate, emerald, resonatingPlate], [lensRuby, resonatingPlate, lensRuby]]);

##  Dense Obsidian
recipes.remove(denseObsidian);
Pressure.addRecipe([<minecraft:obsidian> * 4, spentFilterMaterial * 5], 3, [denseObsidian * 4], true);

##  Dense Glass
recipes.remove(denseGlass);
Pressure.addRecipe([<minecraft:glass> * 4, spentFilterMaterial * 5], 3, [denseGlass * 4], true);

print("Initialized 'DeepResonance.zs'");
