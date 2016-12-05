//////////////////////////////////////////////////////////////////////////////////////////////
// Name: AppliedEnergistics.zs
// Author: Lazerous/Feed the Beast/Jason McRay
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.appeng.Inscriber;
import mods.gregtech.Wiremill;
import mods.gregtech.PrecisionLaser;
import mods.gregtech.ChemicalBath;
import mods.gregtech.ChemicalReactor;
import mods.ic2.Compressor;
import mods.ic2.Macerator;

print("Initializing 'AppliedEnergistics.zs'...");

##  Val Statements
val tubeIron = <Forestry:thermionicTubes:3>;
val tubeGold = <Forestry:thermionicTubes:4>;
val tubeDiamond = <Forestry:thermionicTubes:5>;
val tubeCertus = <customthings:item>;
val chipsetIron = <BuildCraft|Silicon:redstoneChipset:1>;
val chipsetGold = <BuildCraft|Silicon:redstoneChipset:2>;
val chipsetDiamond = <BuildCraft|Silicon:redstoneChipset:3>;
val chipsetQuartz = <BuildCraft|Silicon:redstoneChipset:5>;
val printedCircuitBoard = <PneumaticCraft:printedCircuitBoard>;
val moltenChlorine = <liquid:chlorine>;
val plateTitanium = <ore:plateTitanium>;
val ingotEnhancedGalgadorian = <StevesCarts:ModuleComponents:49>;
val galgadorianMetal = <StevesCarts:ModuleComponents:47>;
val server = <OpenComputers:item:40>;

val fluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:7>;
val fluixBlock = <appliedenergistics2:tile.BlockFluix>;
val fluixDust = <appliedenergistics2:item.ItemMultiMaterial:8>;
val certusQuartzSeed = <appliedenergistics2:item.ItemCrystalSeed>;
val netherQuartzSeed = <appliedenergistics2:item.ItemCrystalSeed:600>;
val fluixSeed = <appliedenergistics2:item.ItemCrystalSeed:1200>;
val pressCalculation = <appliedenergistics2:item.ItemMultiMaterial:13>;
val pressEngineering = <appliedenergistics2:item.ItemMultiMaterial:14>;
val pressLogic = <appliedenergistics2:item.ItemMultiMaterial:15>;
val pressSilicon = <appliedenergistics2:item.ItemMultiMaterial:19>;
val processorEngineering = <appliedenergistics2:item.ItemMultiMaterial:24>;
val processorLogic = <appliedenergistics2:item.ItemMultiMaterial:22>;
val processorCalculation = <appliedenergistics2:item.ItemMultiMaterial:23>;
val printedEngineering = <appliedenergistics2:item.ItemMultiMaterial:17>;
val printedLogic = <appliedenergistics2:item.ItemMultiMaterial:18>;
val printedCalculation = <appliedenergistics2:item.ItemMultiMaterial:16>;
val printedSilicon = <appliedenergistics2:item.ItemMultiMaterial:20>;
var pureCertusQuartzCrystal = <appliedenergistics2:item.ItemMultiMaterial:10>;
var pureFluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:12>;
var pureNetherQuartzCrystal = <appliedenergistics2:item.ItemMultiMaterial:11>;

val FluixCoveredC = <appliedenergistics2:item.ItemMultiPart:36>;
val FluixCoveredCBlack = <appliedenergistics2:item.ItemMultiPart:35>;
val FluixCoveredCBlue = <appliedenergistics2:item.ItemMultiPart:31>;
val FluixCoveredCBrown = <appliedenergistics2:item.ItemMultiPart:32>;
val FluixCoveredCCyan = <appliedenergistics2:item.ItemMultiPart:29>;
val FluixCoveredCGray = <appliedenergistics2:item.ItemMultiPart:27>;
val FluixCoveredCGreen = <appliedenergistics2:item.ItemMultiPart:33>;
val FluixCoveredCLightBlue = <appliedenergistics2:item.ItemMultiPart:23>;
val FluixCoveredCLightGray = <appliedenergistics2:item.ItemMultiPart:28>;
val FluixCoveredCLime = <appliedenergistics2:item.ItemMultiPart:25>;
val FluixCoveredCMagenta = <appliedenergistics2:item.ItemMultiPart:22>;
val FluixCoveredCOrange = <appliedenergistics2:item.ItemMultiPart:21>;
val FluixCoveredCPink = <appliedenergistics2:item.ItemMultiPart:26>;
val FluixCoveredCPurple = <appliedenergistics2:item.ItemMultiPart:30>;
val FluixCoveredCRed = <appliedenergistics2:item.ItemMultiPart:34>;
val FluixCoveredCWhite = <appliedenergistics2:item.ItemMultiPart:20>;
val FluixCoveredCYellow = <appliedenergistics2:item.ItemMultiPart:24>;
val FluixDenseCable = <appliedenergistics2:item.ItemMultiPart:76>;
val FluixDenseCableBlack = <appliedenergistics2:item.ItemMultiPart:75>;
val FluixDenseCableBlue = <appliedenergistics2:item.ItemMultiPart:71>;
val FluixDenseCableBrown = <appliedenergistics2:item.ItemMultiPart:72>;
val FluixDenseCableCyan = <appliedenergistics2:item.ItemMultiPart:69>;
val FluixDenseCableGray = <appliedenergistics2:item.ItemMultiPart:67>;
val FluixDenseCableGreen = <appliedenergistics2:item.ItemMultiPart:73>;
val FluixDenseCableLightBlue = <appliedenergistics2:item.ItemMultiPart:63>;
val FluixDenseCableLightGray = <appliedenergistics2:item.ItemMultiPart:68>;
val FluixDenseCableLime = <appliedenergistics2:item.ItemMultiPart:65>;
val FluixDenseCableMagenta = <appliedenergistics2:item.ItemMultiPart:62>;
val FluixDenseCableOrange = <appliedenergistics2:item.ItemMultiPart:61>;
val FluixDenseCablePink = <appliedenergistics2:item.ItemMultiPart:66>;
val FluixDenseCablePurple = <appliedenergistics2:item.ItemMultiPart:70>;
val FluixDenseCableRed = <appliedenergistics2:item.ItemMultiPart:74>;
val FluixDenseCableWhite = <appliedenergistics2:item.ItemMultiPart:60>;
val FluixDenseCableYellow = <appliedenergistics2:item.ItemMultiPart:64>;
val FluixGlassCable = <appliedenergistics2:item.ItemMultiPart:16>;
val FluixGlassCableBlack = <appliedenergistics2:item.ItemMultiPart:15>;
val FluixGlassCableBlue = <appliedenergistics2:item.ItemMultiPart:11>;
val FluixGlassCableBrown = <appliedenergistics2:item.ItemMultiPart:12>;
val FluixGlassCableCyan = <appliedenergistics2:item.ItemMultiPart:9>;
val FluixGlassCableGray = <appliedenergistics2:item.ItemMultiPart:7>;
val FluixGlassCableGreen = <appliedenergistics2:item.ItemMultiPart:13>;
val FluixGlassCableLightBlue = <appliedenergistics2:item.ItemMultiPart:3>;
val FluixGlassCableLightGray = <appliedenergistics2:item.ItemMultiPart:8>;
val FluixGlassCableLime = <appliedenergistics2:item.ItemMultiPart:5>;
val FluixGlassCableMagenta = <appliedenergistics2:item.ItemMultiPart:2>;
val FluixGlassCableOrange = <appliedenergistics2:item.ItemMultiPart:1>;
val FluixGlassCablePink = <appliedenergistics2:item.ItemMultiPart:6>;
val FluixGlassCablePurple = <appliedenergistics2:item.ItemMultiPart:10>;
val FluixGlassCableRed = <appliedenergistics2:item.ItemMultiPart:14>;
val FluixGlassCableWhite = <appliedenergistics2:item.ItemMultiPart>;
val FluixGlassCableYellow = <appliedenergistics2:item.ItemMultiPart:4>;
val FluixSmartCable = <appliedenergistics2:item.ItemMultiPart:56>;
val FluixSmartCableBlack = <appliedenergistics2:item.ItemMultiPart:55>;
val FluixSmartCableBlue = <appliedenergistics2:item.ItemMultiPart:51>;
val FluixSmartCableBrown = <appliedenergistics2:item.ItemMultiPart:52>;
val FluixSmartCableCyan = <appliedenergistics2:item.ItemMultiPart:49>;
val FluixSmartCableGray = <appliedenergistics2:item.ItemMultiPart:47>;
val FluixSmartCableGreen = <appliedenergistics2:item.ItemMultiPart:53>;
val FluixSmartCableLightBlue = <appliedenergistics2:item.ItemMultiPart:43>;
val FluixSmartCableLightGray = <appliedenergistics2:item.ItemMultiPart:48>;
val FluixSmartCableLime = <appliedenergistics2:item.ItemMultiPart:45>;
val FluixSmartCableMagenta = <appliedenergistics2:item.ItemMultiPart:42>;
val FluixSmartCableOrange = <appliedenergistics2:item.ItemMultiPart:41>;
val FluixSmartCablePink = <appliedenergistics2:item.ItemMultiPart:46>;
val FluixSmartCablePurple = <appliedenergistics2:item.ItemMultiPart:50>;
val FluixSmartCableRed = <appliedenergistics2:item.ItemMultiPart:54>;
val FluixSmartCableWhite = <appliedenergistics2:item.ItemMultiPart:40>;
val FluixSmartCableYellow = <appliedenergistics2:item.ItemMultiPart:44>;

##  OreDict Fix
<ore:itemCertusQuartz>.remove(pureNetherQuartzCrystal);
<ore:itemCertusQuartz>.add(pureCertusQuartzCrystal);
<ore:itemNetherQuartz>.remove(pureCertusQuartzCrystal);
<ore:itemNetherQuartz>.add(pureNetherQuartzCrystal);

##  AE2 Grindstone Changes
recipes.remove(<appliedenergistics2:tile.BlockCrank>);
recipes.addShapedMirrored(<appliedenergistics2:tile.BlockCrank>, [[<ImmersiveEngineering:material>, <ImmersiveEngineering:material>, <ImmersiveEngineering:material>], [null, null, <ImmersiveEngineering:material>], [null, null, <ImmersiveEngineering:material>]]);
recipes.remove(<appliedenergistics2:tile.BlockGrinder>);
recipes.addShaped(<appliedenergistics2:tile.BlockGrinder>, [[<ore:stone>, <ore:gearIron>, <ore:stone>], [<ore:crystalCertusQuartz>, <ore:stone>, <ore:crystalCertusQuartz>], [<ore:cobblestone>, <ore:crystalCertusQuartz>, <ore:cobblestone>]]);
recipes.addShaped(<appliedenergistics2:tile.BlockGrinder>, [[<ore:stone>, <ore:gearIron>, <ore:stone>], [<ore:gemQuartz>, <ore:stone>, <ore:gemQuartz>], [<ore:cobblestone>, <ore:gemQuartz>, <ore:cobblestone>]]);

##  Crystal Seeds
ChemicalReactor.addRecipe(certusQuartzSeed * 2, <gregtech:gt.metaitem.01:2516>, <minecraft:sand>, 100);
ChemicalReactor.addRecipe(certusQuartzSeed * 2, <gregtech:gt.metaitem.01:2516>, <minecraft:sand:1>, 100);
ChemicalReactor.addRecipe(netherQuartzSeed * 2, <gregtech:gt.metaitem.01:2522>, <minecraft:sand>, 100);
ChemicalReactor.addRecipe(netherQuartzSeed * 2, <gregtech:gt.metaitem.01:2522>, <minecraft:sand:1>, 100);
ChemicalReactor.addRecipe(fluixSeed * 2, <appliedenergistics2:item.ItemMultiMaterial:8>, <minecraft:sand>, 100);
ChemicalReactor.addRecipe(fluixSeed * 2, <appliedenergistics2:item.ItemMultiMaterial:8>, <minecraft:sand:1>, 100);

##  Fluix Block
recipes.remove(fluixBlock);
Compressor.addRecipe(fluixBlock, fluixCrystal * 4);

##  Fluix Dust
Macerator.addRecipe(fluixDust * 4, <appliedenergistics2:tile.BlockFluix>);

##  Unpainting Cables
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableWhite, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableOrange, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableMagenta, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableLightBlue, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableYellow, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableLime, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCablePink, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableGray, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableLightGray, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableCyan, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCablePurple, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableBrown, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableGreen, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableRed, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixGlassCable], FluixGlassCableBlack, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCWhite, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCOrange, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCMagenta, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCLightBlue, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCYellow, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCLime, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCPink, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCGray, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCLightGray, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCCyan, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCPurple, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCBrown, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCGreen, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCRed, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixCoveredC], FluixCoveredCBlack, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableWhite, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableOrange, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableMagenta, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableLightBlue, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableYellow, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableLime, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCablePink, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableGray, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableLightGray, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableCyan, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCablePurple, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableBrown, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableGreen, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableRed, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixDenseCable], FluixDenseCableBlack, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableWhite, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableOrange, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableMagenta, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableLightBlue, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableYellow, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableLime, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCablePink, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableGray, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableLightGray, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableCyan, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCablePurple, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableBrown, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableGreen, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableRed, moltenChlorine * 50, [10000], 400, 2);
ChemicalBath.addRecipe([FluixSmartCable], FluixSmartCableBlack, moltenChlorine * 50, [10000], 400, 2);

##  Quartz Fiber
Wiremill.addRecipe(<appliedenergistics2:item.ItemMultiPart:140>, <gregtech:gt.metaitem.01:23516> * 2, 200, 120);
Wiremill.addRecipe(<appliedenergistics2:item.ItemMultiPart:140>, <gregtech:gt.metaitem.01:23522> * 8, 200, 120);
Wiremill.addRecipe(<appliedenergistics2:item.ItemMultiPart:140>, <gregtech:gt.metaitem.01:23523>  * 4, 200, 120);

##  Energy Acceptor/Controller
recipes.remove(<appliedenergistics2:tile.BlockController>);
recipes.remove(<appliedenergistics2:tile.BlockEnergyAcceptor>);
recipes.addShaped(<appliedenergistics2:tile.BlockController>, [[plateTitanium, ingotEnhancedGalgadorian, plateTitanium], [<appliedenergistics2:item.ItemMultiMaterial:23>, server, <appliedenergistics2:item.ItemMultiMaterial:23>], [plateTitanium, ingotEnhancedGalgadorian, plateTitanium]]);
recipes.addShaped(<appliedenergistics2:tile.BlockEnergyAcceptor>, [[plateTitanium, galgadorianMetal, plateTitanium], [<appliedenergistics2:item.ItemMultiMaterial:24>, fluixBlock, <appliedenergistics2:item.ItemMultiMaterial:24>], [plateTitanium, galgadorianMetal, plateTitanium]]);

##  Energy Cells
recipes.remove(<appliedenergistics2:tile.BlockEnergyCell>);
recipes.addShaped(<appliedenergistics2:tile.BlockEnergyCell>, [[<appliedenergistics2:tile.BlockQuartzLamp>, <ore:dustFluix>, <appliedenergistics2:tile.BlockQuartzLamp>], [<ore:dustFluix>, <appliedenergistics2:tile.BlockEnergyAcceptor>, <ore:dustFluix>], [<appliedenergistics2:tile.BlockQuartzLamp>, <ore:dustFluix>, <appliedenergistics2:tile.BlockQuartzLamp>]]);

##  Inscriber
recipes.remove(<appliedenergistics2:tile.BlockInscriber>);
recipes.addShaped(<appliedenergistics2:tile.BlockInscriber>, [[<ore:ingotIron>, <minecraft:sticky_piston>, <ore:ingotIron>], [<appliedenergistics2:item.ItemMultiMaterial:10>, <ThermalExpansion:Frame:3>, <IC2:upgradeModule>], [<ore:ingotIron>, <minecraft:sticky_piston>, <ore:ingotIron>]]);

## Me Chest
recipes.remove(<appliedenergistics2:tile.BlockChest>);
recipes.addShaped(<appliedenergistics2:tile.BlockChest>, [[<appliedenergistics2:item.ItemMultiPart:16>, <ore:chestWood>, <appliedenergistics2:item.ItemMultiPart:16>], [null, <appliedenergistics2:tile.BlockEnergyAcceptor>, null], [<appliedenergistics2:item.ItemMultiPart:16>, <ore:chestWood>, <appliedenergistics2:item.ItemMultiPart:16>]]);

##  Engineering
Inscriber.removeRecipe(printedEngineering);
Inscriber.addRecipe([chipsetDiamond], pressEngineering, null, printedEngineering, "Press");
Inscriber.removeRecipe(processorEngineering);
Inscriber.addRecipe([printedCircuitBoard], printedEngineering, printedSilicon, processorEngineering, "Inscribe");

##  Calculation
Inscriber.removeRecipe(printedCalculation);
Inscriber.addRecipe([chipsetQuartz], pressCalculation, null, printedCalculation, "Press");
Inscriber.removeRecipe(processorCalculation);
Inscriber.addRecipe([printedCircuitBoard], printedCalculation, printedSilicon, processorCalculation, "Inscribe");

##  Logic
Inscriber.removeRecipe(printedLogic);
Inscriber.addRecipe([chipsetGold], pressLogic, null, printedLogic, "Press");
Inscriber.removeRecipe(processorLogic);
Inscriber.addRecipe([printedCircuitBoard], printedLogic, printedSilicon, processorLogic, "Inscribe");

print("Initialized 'AppliedEnergistics.zs'");
