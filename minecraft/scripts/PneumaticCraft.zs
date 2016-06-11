//////////////////////////////////////////////////////////////////////////////////////////////
// Name: PneumaticCraft.zs
// Author: Lazerous/Jason McRay
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.gregtech.Assembler;
import mods.gregtech.Extruder;

print("Initializing 'PneumaticCraft.zs'...");

##  Val Statements
var dustRedstone = <minecraft:redstone>;
var moltenGlass = <liquid:molten.glass>;
var shapeSmallPipe = <gregtech:gt.metaitem.01:32359>;

var plasticBlack = <PneumaticCraft:plastic>;
var plasticRed = <PneumaticCraft:plastic:1>;
var plasticGreen = <PneumaticCraft:plastic:2>;
var plasticBrown = <PneumaticCraft:plastic:3>;
var plasticBlue = <PneumaticCraft:plastic:4>;
var plasticPurple = <PneumaticCraft:plastic:5>;
var plasticCyan = <PneumaticCraft:plastic:6>;
var plasticGray = <PneumaticCraft:plastic:8>;
var plasticPink = <PneumaticCraft:plastic:9>;
var plasticLime = <PneumaticCraft:plastic:10>;
var plasticYellow = <PneumaticCraft:plastic:11>;
var plasticLBlue = <PneumaticCraft:plastic:12>;
var plasticOrange = <PneumaticCraft:plastic:14>;
var plasticWhite = <PneumaticCraft:plastic:15>;
var tubeBurst = <PneumaticCraft:plasticElectronTube:8>;
var tubeChopper = <PneumaticCraft:plasticElectronTube:12>;
var tubeCreeper = <PneumaticCraft:plasticElectronTube:2>;
var tubeEnder = <PneumaticCraft:plasticElectronTube:5>;
var tubeFire = <PneumaticCraft:plasticElectronTube:1>;
var tubeFlying = <PneumaticCraft:plasticElectronTube:15>;
var tubeHelium = <PneumaticCraft:plasticElectronTube:11>;
var tubeLightning = <PneumaticCraft:plasticElectronTube:6>;
var tubePotion = <PneumaticCraft:plasticElectronTube:9>;
var tubePropulsion = <PneumaticCraft:plasticElectronTube:14>;
var tubeRain = <PneumaticCraft:plasticElectronTube:4>;
var tubeRepulsion = <PneumaticCraft:plasticElectronTube:10>;
var tubeSlime = <PneumaticCraft:plasticElectronTube:3>;
var tubeSquid = <PneumaticCraft:plasticElectronTube>;
var tubePressure = <PneumaticCraft:pressureTube>;
var ingotCompressedIron = <PneumaticCraft:ingotIronCompressed>;

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

print("Initialized 'PneumaticCraft.zs'");
