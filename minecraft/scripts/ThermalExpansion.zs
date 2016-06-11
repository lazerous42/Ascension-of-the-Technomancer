//////////////////////////////////////////////////////////////////////////////////////////////
// Name: ThermalExpansion.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.buildcraft.AssemblyTable;
import mods.thermalexpansion.Crucible;

print("Initializing 'ThermalExpansion.zs'...");

## Val Definitions
val crushedObsidian = <Railcraft:cube:4>;
val firestoneRaw = <Railcraft:firestone.raw>;
val ingotInvar = <ore:ingotInvar>;
val gearIron = <ore:gearIron>;
val gearGold = <ore:gearGold>;
val gearCopper = <ore:gearCopper>;
val gearTin = <ore:gearTin>;
val gearSilver = <ore:gearSilver>;
val gearLead = <ore:gearLead>;
val gearNickel = <ore:gearNickel>;
val gearPlatinum = <ore:gearPlatinum>;
val gearMithril = <ore:gearMithril>;
val gearElectrum = <ore:gearElectrum>;
val gearInvar = <ore:gearInvar>;
val gearBronze = <ore:gearBronze>;
val gearSignalum = <ore:gearSignalum>;
val gearLumium = <ore:gearLumium>;
val gearEnderium = <ore:gearEnderium>;

val chipsetRedstone = <ore:chipsetRed>;
val chipsetIron = <ore:chipsetIron>;
val chipsetGold = <ore:chipsetGold>;
val chipsetDiamond = <ore:chipsetDiamond>;
val chipsetPulsating = <ore:chipsetPulsating>;
val chipsetQuartz = <ore:chipsetQuartz>;
val chipsetEmerald = <ore:chipsetEmerald>;
val chipsetComp = <ore:chipsetComp>;

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

val circuitBoardBasic = <Forestry:chipsets:0>;
val circuitBoardEnhanced = <Forestry:chipsets:1>;
val circuitBoardRefined = <Forestry:chipsets:2>;
val circuitBoardIntricate = <Forestry:chipsets:3>;

val blazingPyrothium = <ThermalFoundation:material:512>;

##  Remove Non-Casted Gears
recipes.remove(<ThermalFoundation:material:12>);
recipes.remove(<ThermalFoundation:material:13>);
recipes.remove(<ThermalFoundation:material:128>);
recipes.remove(<ThermalFoundation:material:129>);
recipes.remove(<ThermalFoundation:material:130>);
recipes.remove(<ThermalFoundation:material:131>);
recipes.remove(<ThermalFoundation:material:132>);
recipes.remove(<ThermalFoundation:material:133>);
recipes.remove(<ThermalFoundation:material:134>);
//recipes.remove(<ThermalFoundation:material:135>);
//recipes.remove(<ThermalFoundation:material:136>);
//recipes.remove(<ThermalFoundation:material:137>);

##  Machine Frames
recipes.remove(<ThermalExpansion:Frame>);
recipes.remove(<ThermalExpansion:Frame:1>);
recipes.remove(<ThermalExpansion:Frame:2>);
recipes.remove(<ThermalExpansion:Frame:3>);
AssemblyTable.addRecipe(<ThermalExpansion:Frame>, 400000, [<ore:plateDenseSteel>, crushedObsidian * 2, gearTin, chipsetIron, circuitBoardBasic]);
AssemblyTable.addRecipe(<ThermalExpansion:Frame:1>, 2000000, [<ore:plateDenseSteel>, crushedObsidian * 2, gearElectrum, chipsetGold, circuitBoardRefined]);
AssemblyTable.addRecipe(<ThermalExpansion:Frame:2>, 10000000, [<ore:plateDenseSteel>, crushedObsidian * 2, gearSignalum, chipsetDiamond, circuitBoardIntricate]);
AssemblyTable.addRecipe(<ThermalExpansion:Frame:3>, 50000000, [<ore:plateDenseSteel>, crushedObsidian * 2, gearEnderium, chipsetEmerald, circuitBoardIntricate]);

##  Dyanmos
recipes.remove(<ThermalExpansion:Dynamo:4>);
recipes.remove(<ThermalExpansion:Dynamo:3>);
recipes.remove(<ThermalExpansion:Dynamo:2>);
recipes.remove(<ThermalExpansion:Dynamo:1>);
recipes.remove(<ThermalExpansion:Dynamo>);
recipes.addShaped(<ThermalExpansion:Dynamo:4>, [[null, <ore:dustElectrumFlux>, null], [<ore:ingotElectrum>, chipsetRedstone, <ore:ingotElectrum>], [gearElectrum, <ThermalExpansion:material:2>, gearElectrum]]);
recipes.addShaped(<ThermalExpansion:Dynamo:3>, [[null, <IC2:itemUran238>, null], [<ore:ingotBronze>, chipsetRedstone, <ore:ingotBronze>], [gearBronze, <ThermalExpansion:material:2>, gearBronze]]);
recipes.addShaped(<ThermalExpansion:Dynamo:2>, [[null, <IC2:itemCellEmpty:5>, null], [<ore:ingotTin>, chipsetRedstone, <ore:ingotTin>], [gearTin, <ThermalExpansion:material:2>, gearTin]]);
recipes.addShaped(<ThermalExpansion:Dynamo:1>, [[null, firestoneRaw, null], [ingotInvar, chipsetRedstone, ingotInvar], [gearInvar, <ThermalExpansion:material:2>, gearInvar]]);
recipes.addShaped(<ThermalExpansion:Dynamo>, [[null, <IC2:itemPartCoalChunk>, null], [<ore:ingotCopper>, chipsetRedstone, <ore:ingotCopper>], [gearCopper, <ThermalExpansion:material:2>, gearCopper]]);

##  Energy Cells
recipes.remove(<ThermalExpansion:Frame:6>);
recipes.remove(<ThermalExpansion:Frame:8>);
recipes.remove(<ThermalExpansion:Frame:9>);
recipes.remove(<ThermalExpansion:Cell:4>);
recipes.remove(<ThermalExpansion:Cell:2>);
recipes.remove(<ThermalExpansion:Cell:1>);
recipes.remove(<ThermalExpansion:Cell:3>);
recipes.addShaped(<ThermalExpansion:Frame:8>, [[<ore:ingotEnderium>, <ore:blockGlassHardened>, <ore:ingotEnderium>], [<ore:blockGlassHardened>, <ore:gemEmerald>, <ore:blockGlassHardened>], [<ore:ingotEnderium>, <ore:blockGlassHardened>, <ore:ingotEnderium>]]);
recipes.addShaped(<ThermalExpansion:Frame:6>, [[<ore:ingotElectrum>, <ore:blockGlassHardened>, <ore:ingotElectrum>], [<ore:blockGlassHardened>, <ore:gemDiamond>, <ore:blockGlassHardened>], [<ore:ingotElectrum>, <ore:blockGlassHardened>, <ore:ingotElectrum>]]);
recipes.addShaped(<ThermalExpansion:Cell:2>, [[null, <IC2:itemPartCircuit>, null], [tubeBronze, <ThermalExpansion:Frame:5>, tubeBronze], [null, <ThermalExpansion:material:3>, null]]);
recipes.addShaped(<ThermalExpansion:Cell:2>, [[<ore:ingotInvar>, <ore:circuitBasic>, <ore:ingotInvar>], [tubeBronze, <ThermalExpansion:Cell:1>, tubeBronze], [<ore:ingotInvar>, <ThermalExpansion:material:3>, <ore:ingotInvar>]]);
recipes.addShaped(<ThermalExpansion:Cell:1>, [[<ore:ingotLead>, <ore:circuitBasic>, <ore:ingotLead>], [<Forestry:thermionicTubes:1>, <ThermalExpansion:Frame:4>, <Forestry:thermionicTubes:1>], [<ore:ingotLead>, <ThermalExpansion:material:3>, <ore:ingotLead>]]);
recipes.addShaped(<ThermalExpansion:Cell:4>, [[null, <ore:circuitAdvanced>, null], [tubeEmerald, <ThermalExpansion:Frame:9>, tubeEmerald], [null, <EnderIO:itemBasicCapacitor:2>, null]]);
recipes.addShaped(<ThermalExpansion:Cell:3>, [[null, <ore:circuitAdvanced>, null], [tubeDiamond, <ThermalExpansion:Frame:7>, tubeDiamond], [null, <EnderIO:itemBasicCapacitor:1>, null]]);
recipes.addShaped(<ThermalExpansion:Cell:4>, [[<ore:ingotEnderium>, <ore:circuitAdvanced>, <ore:ingotEnderium>], [tubeEmerald, <ThermalExpansion:Cell:3>, tubeEmerald], [<ore:ingotEnderium>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotEnderium>]]);

##  Tesseract
recipes.remove(<ThermalExpansion:Frame:10>);
recipes.addShaped(<ThermalExpansion:Frame:10>, [[<ore:ingotEnderium>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotEnderium>], [<Forestry:thermionicTubes:12>, <IC2:blockMachine2>, <Forestry:thermionicTubes:12>], [<ore:ingotEnderium>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotEnderium>]]);

##  Pyrotheum/Cryotheum
recipes.remove(<ThermalFoundation:material:513>);
recipes.remove(blazingPyrothium);
recipes.addShapeless(<ThermalFoundation:material:513>, [<minecraft:snowball>, <ore:dustSaltpeter>, <ore:dustElectrotine>, <ore:dustBlizz>]);
recipes.addShapeless(blazingPyrothium, [<ore:dustCoal>, <ore:dustSulfur>, <ore:itemBlazePowder>, <ore:dustElectrotine>]);

##  Augments
recipes.remove(<ThermalExpansion:augment:65>);
recipes.remove(<ThermalExpansion:augment:66>);
recipes.remove(<ThermalExpansion:augment:81>);
recipes.remove(<ThermalExpansion:augment:82>);
recipes.remove(<ThermalExpansion:augment:313>);
recipes.remove(<ThermalExpansion:augment:314>);
recipes.remove(<ThermalExpansion:augment:113>);
recipes.remove(<ThermalExpansion:augment:114>);
recipes.remove(<ThermalExpansion:augment:129>);
recipes.remove(<ThermalExpansion:augment:130>);
recipes.remove(<ThermalExpansion:augment:112>);
recipes.remove(<ThermalExpansion:augment:312>);
recipes.remove(<ThermalExpansion:augment:128>);
recipes.remove(<ThermalExpansion:augment:64>);
recipes.remove(<ThermalExpansion:augment:80>);
recipes.addShaped(<ThermalExpansion:augment:66>, [[null, <ore:ingotLead>, null], [<ore:ingotLead>, chipsetDiamond, <ore:ingotLead>], [<ore:dustCryotheum>, <ore:ingotLead>, <ore:dustCryotheum>]]);
recipes.addShaped(<ThermalExpansion:augment:65>, [[null, <ore:ingotLead>, null], [<ore:ingotLead>, chipsetGold, <ore:ingotLead>], [<ore:dustPyrotheum>, <ore:ingotLead>, <ore:dustPyrotheum>]]);
recipes.addShaped(<ThermalExpansion:augment:130>, [[null, <ore:ingotBronze>, null], [<ore:ingotBronze>, chipsetDiamond, <ore:ingotBronze>], [<ore:dustCryotheum>, <ore:ingotBronze>, <ore:dustCryotheum>]]);
recipes.addShaped(<ThermalExpansion:augment:129>, [[null, <ore:ingotBronze>, null], [<ore:ingotBronze>, chipsetGold, <ore:ingotBronze>], [<ore:dustPyrotheum>, <ore:ingotBronze>, <ore:dustPyrotheum>]]);
recipes.addShaped(<ThermalExpansion:augment:314>, [[null, <ore:blockObsidian>, null], [<ore:blockObsidian>, chipsetDiamond, <ore:blockObsidian>], [<ore:dustCryotheum>, <ore:blockObsidian>, <ore:dustCryotheum>]]);
recipes.addShaped(<ThermalExpansion:augment:313>, [[null, <ore:stone>, null], [<ore:stone>, chipsetGold, <ore:stone>], [<ore:dustPyrotheum>, <ore:stone>, <ore:dustPyrotheum>]]);
recipes.addShaped(<ThermalExpansion:augment:113>, [[null, <ore:blockClothRock>, null], [<ore:blockClothRock>, chipsetGold, <ore:blockClothRock>], [<ore:dustPyrotheum>, <ore:blockClothRock>, <ore:dustPyrotheum>]]);
recipes.addShaped(<ThermalExpansion:augment:82>, [[null, <ore:ingotCopper>, null], [<ore:ingotCopper>, chipsetDiamond, <ore:ingotCopper>], [<ore:dustCryotheum>, <ore:ingotCopper>, <ore:dustCryotheum>]]);
recipes.addShaped(<ThermalExpansion:augment:81>, [[null, <ore:ingotCopper>, null], [<ore:ingotCopper>, chipsetGold, <ore:ingotCopper>], [<ore:dustPyrotheum>, <ore:ingotCopper>, <ore:dustPyrotheum>]]);
recipes.addShaped(<ThermalExpansion:augment:64>, [[null, <ore:ingotLead>, null], [<ore:ingotLead>, chipsetRedstone, <ore:ingotLead>], [<ThermalExpansion:material:1>, <ore:ingotLead>, <ThermalExpansion:material:1>]]);
recipes.addShaped(<ThermalExpansion:augment:80>, [[null, <ore:ingotCopper>, null], [<ore:ingotCopper>, chipsetRedstone, <ore:ingotCopper>], [<ThermalExpansion:material:1>, <ore:ingotCopper>, <ThermalExpansion:material:1>]]);
recipes.addShaped(<ThermalExpansion:augment:312>, [[null, <ore:cobblestone>, null], [<ore:cobblestone>, chipsetRedstone, <ore:cobblestone>], [<ThermalExpansion:material:1>, <ore:cobblestone>, <ThermalExpansion:material:1>]]);
recipes.addShaped(<ThermalExpansion:augment:112>, [[null, <ore:blockClothRock>, null], [<ore:blockClothRock>, chipsetRedstone, <ore:blockClothRock>], [<ThermalExpansion:material:1>, <ore:blockClothRock>, <ThermalExpansion:material:1>]]);
recipes.addShaped(<ThermalExpansion:augment:128>, [[null, <ore:ingotBronze>, null], [<ore:ingotBronze>, chipsetRedstone, <ore:ingotBronze>], [<ThermalExpansion:material:1>, <ore:ingotBronze>, <ThermalExpansion:material:1>]]);
recipes.addShaped(<ThermalExpansion:augment:114>, [[null, <ore:blockClothRock>, null], [<ore:blockClothRock>, chipsetDiamond, <ore:blockClothRock>], [<ore:dustCryotheum>, <ore:blockClothRock>, <ore:dustCryotheum>]]);

## Flux Capacitors
recipes.remove(<ThermalExpansion:capacitor:5>);
recipes.remove(<ThermalExpansion:capacitor:4>);
recipes.remove(<ThermalExpansion:capacitor:3>);
recipes.remove(<ThermalExpansion:capacitor:2>);
recipes.addShaped(<ThermalExpansion:capacitor:5>, [[null, <ore:dustElectrotine>, null], [<ore:ingotEnderium>, <ThermalExpansion:capacitor:4>, <ore:ingotEnderium>], [<ore:dustElectrotine>, <ore:dustPyrotheum>, <ore:dustElectrotine>]]);
recipes.addShaped(<ThermalExpansion:capacitor:4>, [[null, <ore:dustElectrotine>, null], [<ore:ingotElectrum>, <ThermalExpansion:capacitor:3>, <ore:ingotElectrum>], [<ore:dustElectrotine>, <ore:gemDiamond>, <ore:dustElectrotine>]]);
recipes.addShaped(<ThermalExpansion:capacitor:3>, [[null, <ore:dustElectrotine>, null], [<ore:ingotInvar>, <ThermalExpansion:capacitor:2>, <ore:ingotInvar>], [<ore:dustElectrotine>, <ore:ingotTin>, <ore:dustElectrotine>]]);
recipes.addShaped(<ThermalExpansion:capacitor:2>, [[null, <ore:dustElectrotine>, null], [<ore:ingotCopper>, <ore:ingotLead>, <ore:ingotCopper>], [<ore:dustElectrotine>, <ore:dustSulfur>, <ore:dustElectrotine>]]);

##  Rename Ferrous -> Nickel
<ThermalFoundation:Ore:4>.displayName = "Nickel Ore";
<ThermalFoundation:material:68>.displayName = "Nickel Ingot";
<ThermalFoundation:material:36>.displayName = "Pulverized Nickel";
<ThermalFoundation:material:100>.displayName = "Nickel Nugget";
<ThermalFoundation:material:132>.displayName = "Nickel Gear";
<ThermalFoundation:Storage:4>.displayName = "Nickel Block";
<ThermalFoundation:armor.bootsNickel>.displayName = "Nickel Boots";
<ThermalFoundation:armor.helmetNickel>.displayName = "Nickel Helmet";
<ThermalFoundation:armor.legsNickel>.displayName = "Nickel Leggings";
<ThermalFoundation:armor.plateNickel>.displayName = "Nickel Chestplate";
<ThermalFoundation:tool.axeNickel>.displayName = "Nickel Axe";
<ThermalFoundation:tool.bowNickel>.displayName = "Nickel Reinforced Bow";
<ThermalFoundation:tool.fishingRodNickel>.displayName = "Nickel Fishing Rod";
<ThermalFoundation:tool.hoeNickel>.displayName = "Nickel Hoe";
<ThermalFoundation:tool.pickaxeNickel>.displayName = "Nickel Pickaxe";
<ThermalFoundation:tool.shearsNickel>.displayName = "Nickel Shears";
<ThermalFoundation:tool.shovelNickel>.displayName = "Nickel Shovel";
<ThermalFoundation:tool.sickleNickel>.displayName = "Nickel Sickle";
<ThermalFoundation:tool.swordNickel>.displayName = "Nickel Sword";
## Rename Shiny -> Platinum
<ThermalFoundation:Ore:5>.displayName = "Platinum Ore";
<ThermalFoundation:material:69>.displayName = "Platinum Ingot";
<ThermalFoundation:material:37>.displayName = "Pulverized Platinum";
<ThermalFoundation:material:101>.displayName = "Platinum Nugget";
<ThermalFoundation:material:133>.displayName = "Platinum Gear";
<ThermalFoundation:Storage:5>.displayName = "Platinum Block";
<ThermalFoundation:armor.bootsPlatinum>.displayName = "Platinum Boots";
<ThermalFoundation:armor.helmetPlatinum>.displayName = "Platinum Helmet";
<ThermalFoundation:armor.legsPlatinum>.displayName = "Platinum Leggings";
<ThermalFoundation:armor.platePlatinum>.displayName = "Platinum Chestplate";
<ThermalFoundation:tool.axePlatinum>.displayName = "Platinum Axe";
<ThermalFoundation:tool.bowPlatinum>.displayName = "Platinum Reinforced Bow";
<ThermalFoundation:tool.fishingRodPlatinum>.displayName = "Platinum Fishing Rod";
<ThermalFoundation:tool.hoePlatinum>.displayName = "Platinum Hoe";
<ThermalFoundation:tool.pickaxePlatinum>.displayName = "Platinum Pickaxe";
<ThermalFoundation:tool.shearsPlatinum>.displayName = "Platinum Shears";
<ThermalFoundation:tool.shovelPlatinum>.displayName = "Platinum Shovel";
<ThermalFoundation:tool.sicklePlatinum>.displayName = "Platinum Sickle";
<ThermalFoundation:tool.swordPlatinum>.displayName = "Platinum Sword";

print("Initialized 'ThermalExpansion.zs'");
