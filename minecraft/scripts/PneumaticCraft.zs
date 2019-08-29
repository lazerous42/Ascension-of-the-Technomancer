//////////////////////////////////////////////////////////////////////////////////////////////
// Name: PneumaticCraft.zs
// Author: Lazerous/Jason McRay
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.gregtech.AlloySmelter;
import mods.gregtech.Assembler;
import mods.gregtech.Extruder;
import mods.gregtech.FluidSolidifier;
import mods.immersiveengineering.MetalPress;

print("Initializing 'PneumaticCraft.zs'...");

##  Val Statements
val dustRedstone = <minecraft:redstone>;
val moltenGlass = <liquid:molten.glass>;
val shapeSmallPipe = <gregtech:gt.metaitem.01:32359>;

val plasticBlack = <PneumaticCraft:plastic>;
val plasticRed = <PneumaticCraft:plastic:1>;
val plasticGreen = <PneumaticCraft:plastic:2>;
val plasticBrown = <PneumaticCraft:plastic:3>;
val plasticBlue = <PneumaticCraft:plastic:4>;
val plasticPurple = <PneumaticCraft:plastic:5>;
val plasticCyan = <PneumaticCraft:plastic:6>;
val plasticGray = <PneumaticCraft:plastic:8>;
val plasticPink = <PneumaticCraft:plastic:9>;
val plasticLime = <PneumaticCraft:plastic:10>;
val plasticYellow = <PneumaticCraft:plastic:11>;
val plasticLBlue = <PneumaticCraft:plastic:12>;
val plasticOrange = <PneumaticCraft:plastic:14>;
val plasticWhite = <PneumaticCraft:plastic:15>;
val tubeBurst = <PneumaticCraft:plasticElectronTube:8>;
val tubeChopper = <PneumaticCraft:plasticElectronTube:12>;
val tubeCreeper = <PneumaticCraft:plasticElectronTube:2>;
val tubeEnder = <PneumaticCraft:plasticElectronTube:5>;
val tubeFire = <PneumaticCraft:plasticElectronTube:1>;
val tubeFlying = <PneumaticCraft:plasticElectronTube:15>;
val tubeHelium = <PneumaticCraft:plasticElectronTube:11>;
val tubeLightning = <PneumaticCraft:plasticElectronTube:6>;
val tubePotion = <PneumaticCraft:plasticElectronTube:9>;
val tubePropulsion = <PneumaticCraft:plasticElectronTube:14>;
val tubeRain = <PneumaticCraft:plasticElectronTube:4>;
val tubeRepulsion = <PneumaticCraft:plasticElectronTube:10>;
val tubeSlime = <PneumaticCraft:plasticElectronTube:3>;
val tubeSquid = <PneumaticCraft:plasticElectronTube>;
val tubePressure = <PneumaticCraft:pressureTube>;
val ingotCompressedIron = <PneumaticCraft:ingotIronCompressed>;
val gearCompressedIron = <PneumaticCraft:compressedIronGear>;

##  Electron Tubes
Assembler.addRecipe(tubeSquid, dustRedstone * 2, plasticBlack * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeFire, dustRedstone * 2, plasticRed * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeCreeper, dustRedstone * 2, plasticGreen * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeSlime, dustRedstone * 2, plasticBrown * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeRain, dustRedstone * 2, plasticBlue * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeEnder, dustRedstone * 2, plasticPurple * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeLightning, dustRedstone * 2, plasticCyan * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeBurst, dustRedstone * 2, plasticGray * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubePotion, dustRedstone * 2, plasticPink * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeRepulsion, dustRedstone * 2, plasticLime * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeHelium, dustRedstone * 2, plasticYellow * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeChopper, dustRedstone * 2, plasticLBlue * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubePropulsion, dustRedstone * 2, plasticOrange * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeFlying, dustRedstone * 2, plasticWhite * 5, moltenGlass * 72, 64, 32);

##  Pressure Tube
recipes.remove(tubePressure);    
Extruder.addRecipe(tubePressure, ingotCompressedIron, shapeSmallPipe * 0, 8, 128);

##  Compressed Iron Gear
recipes.remove(gearCompressedIron);
MetalPress.addRecipe(gearCompressedIron, ingotCompressedIron, <ImmersiveEngineering:mold:1>, 6400, 6);
AlloySmelter.addRecipe(gearCompressedIron, ingotCompressedIron * 8, <gregtech:gt.metaitem.01:32303> * 0, 760, 32);
Extruder.addRecipe(gearCompressedIron, ingotCompressedIron * 4, <gregtech:gt.metaitem.01:32372> * 0, 300, 128);
FluidSolidifier.addRecipe(gearCompressedIron, <gregtech:gt.metaitem.01:32303> * 0, <liquid:molten.ironcompressed> * 576, 120, 8);

print("Initialized 'PneumaticCraft.zs'");
