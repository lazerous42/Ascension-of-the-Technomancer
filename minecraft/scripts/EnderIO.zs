//////////////////////////////////////////////////////////////////////////////////////////////
// Name: EnderIO.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.chisel.Groups;
import mods.thaumcraft.Crucible;
import mods.extraUtils.QED;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ChemicalBath;
import mods.gregtech.Assembler;
import mods.gregtech.Autoclave;
import mods.gregtech.ChemicalReactor;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Smelter;

print("Initializing 'EnderIO.zs'...");

##  Val Definitions
var blazePowder = <minecraft:blaze_powder>;
var enderPearl = <minecraft:ender_pearl>;
val glass = <minecraft:glass>;
val glassPane = <minecraft:glass_pane>;
val furnace = <minecraft:furnace>;
val comparator = <minecraft:comparator>;
val nuggetSignalum = <ThermalFoundation:material:106>;
val ingotIron = <ore:ingotIron>;
val ingotSteel = <ore:ingotSteel>;
val piston = <minecraft:piston>;
var netherQuartz = <minecraft:quartz>;
var blockQuartz = <minecraft:quartz_block>;
var batteryHullSmall = <gregtech:gt.metaitem.01:32500>;
val bookEnchanted = <minecraft:enchanted_book>;
val crushedObsidian = <Railcraft:cube:4>;
val ingotNickel = <ore:ingotNickel>;
val ingotLumium = <ore:ingotLumium>;
var soulSand = <minecraft:soul_sand>;
val gearIron = <ore:gearIron>;
val gearNickel = <ore:gearNickel>;
val chipsetRedstone = <ore:chipsetRed>;
val chipsetIron = <ore:chipsetIron>;
val tubeBlazing = <Forestry:thermionicTubes:7>;
val tubeEnder = <Forestry:thermionicTubes:12>;
val ingotDarkSoularium = <simplyjetpacks:components:70>;
val diamondMana = <Botania:manaResource:2>;
val plateSilicon = <ore:plateSilicon>;
val rammerheadHide = <nevermine:RammerheadHide>;
val ingotElectrotineAlloy = <ore:ingotElectrotineAlloy>;
var dustGlass = <gregtech:gt.metaitem.01:2890>;
var itemIngotGold = <minecraft:gold_ingot>;
var itemIngotIron = <minecraft:iron_ingot>;
val itemDustDiamond = <gregtech:gt.metaitem.01:2500>;
val itemDustEmerald = <gregtech:gt.metaitem.01:2501>;
val itemDustEnderium = <gregtech:gt.metaitem.01:2321>;
val itemDustEnderPearl = <gregtech:gt.metaitem.01:2532>;
val itemDustPlatinum = <gregtech:gt.metaitem.01:2085>;
val itemDustSilver = <gregtech:gt.metaitem.01:2054>;
val ingotElectricalSteel = <EnderIO:itemAlloy>;
val itemSilicon = <EnderIO:itemMaterial>;

var liquidDyeBlack = <liquid:dye.watermixed.dyeblack>;
var moltenChlorine = <liquid:chlorine>;
val moltenEnergeticAlloy = <liquid:molten.energeticalloy>;
val moltenEnderiumBase = <liquid:molten.enderiumbase>;
var moltenGlowstone = <liquid:molten.glowstone>;
val moltenPulsatingIron = <liquid:molten.pulsatingiron>;
val moltenRedstone = <liquid:molten.redstone>;
val moltenTin = <liquid:molten.tin>;
val moltenVibrantAlloy = <liquid:molten.vibrantalloy>;

var fusedQuartz = <EnderIO:blockFusedQuartz>;
var fusedQuartzEnlighten = <EnderIO:blockFusedQuartz:2>;
var clearGlass = <EnderIO:blockFusedQuartz:1>;
var clearGlassEnlighten = <EnderIO:blockFusedQuartz:3>;
var darkClearGlass = <EnderIO:blockFusedQuartz:5>;
var darkFusedQuartz = <EnderIO:blockFusedQuartz:4>;
val ingotEnergeticAlloy = <EnderIO:itemAlloy:1>;
var ingotConductiveIron = <EnderIO:itemAlloy:4>;
val ingotPulsatingIron = <EnderIO:itemAlloy:5>;
val ingotSoularium = <EnderIO:itemAlloy:7>;
val ingotVibrantAlloy = <EnderIO:itemAlloy:2>;
val capacitorBasic = <EnderIO:itemBasicCapacitor>;
val capacitorDualLayer = <EnderIO:itemBasicCapacitor:1>;
val capacitorOctadic = <EnderIO:itemBasicCapacitor:2>;
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
val crystalPulsating = <EnderIO:itemMaterial:5>;
val crystalVibrant = <EnderIO:itemMaterial:6>;

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

## Fix GT registering silicon plate instead of raw silicon
# Pulverizer
Pulverizer.removeRecipe(<minecraft:sand>);
Pulverizer.addRecipe(1600, <minecraft:sand>, itemSilicon);
# Induction Smelter
Smelter.removeRecipe(<gregtech:gt.metaitem.01:17020>, <gregtech:gt.metaitem.01:2305>);
Smelter.removeRecipe(<gregtech:gt.metaitem.01:17020>, <ore:ingotSteel>);
Smelter.addRecipe(6000, itemSilicon, <gregtech:gt.metaitem.01:2305>, ingotElectricalSteel);
Smelter.addRecipe(6000, itemSilicon, <gregtech:gt.metaitem.01:11305>, ingotElectricalSteel);

## Alloys
# Enderium
ChemicalReactor.addRecipe(itemDustEnderium, null, itemDustEnderPearl, null, moltenEnderiumBase * 144, 200);
ChemicalReactor.addRecipe(null, moltenEnderiumBase * 576, itemDustSilver, itemDustPlatinum, moltenTin * 288, 100);
# Energetic Alloy
AlloySmelter.addRecipe(ingotEnergeticAlloy, itemIngotGold, blazePowder, 100, 16);
# Vibrant Alloy
AlloySmelter.addRecipe(ingotVibrantAlloy, ingotEnergeticAlloy, enderPearl, 100, 16);
# Pulsating Iron
AlloySmelter.addRecipe(ingotPulsatingIron, itemIngotIron, enderPearl, 100, 16);
# Soularium
AlloySmelter.addRecipe(ingotSoularium, itemIngotGold, soulSand, 100, 16);
# Fused Quartz
AlloySmelter.addRecipe(fusedQuartz, netherQuartz * 4, dustGlass, 200, 8);
AlloySmelter.addRecipe(fusedQuartz, blockQuartz, dustGlass, 100, 16);
# Enlightened Fused Quartz
ChemicalBath.addRecipe([fusedQuartzEnlighten], fusedQuartz, moltenGlowstone * 576, [10000], 100, 8);
# Enlightened Clear Glass
# Conductive Iron
ChemicalBath.addRecipe([ingotConductiveIron], itemIngotIron, moltenRedstone * 144, [10000], 200, 8);
# Clear Glass
ChemicalBath.addRecipe([clearGlass], glass, moltenChlorine * 50, [10000], 400, 2);
# Dark Clear Glass
ChemicalBath.addRecipe([darkClearGlass], clearGlass, liquidDyeBlack * 36, [10000], 400, 2);
# Dark Fused Quartz
ChemicalBath.addRecipe([darkFusedQuartz], fusedQuartz, liquidDyeBlack * 36, [10000], 400, 2);

##  Fluid Tank
recipes.remove(fluidTank);
recipes.addShaped(fluidTank, [[ingotElectrotineAlloy, ironBarsDark, ingotElectrotineAlloy], [ironBarsDark, glass, ironBarsDark], [ingotElectrotineAlloy, ironBarsDark, ingotElectrotineAlloy]]);

##  Glider Wing
recipes.remove(<EnderIO:itemGliderWing>);
recipes.addShaped(<EnderIO:itemGliderWing>,[[null, null, <EnderIO:itemAlloy:6>], [null, <EnderIO:itemAlloy:6>, <nevermine:RammerheadHide>], [<EnderIO:itemAlloy:6>, <nevermine:RammerheadHide>, <nevermine:RammerheadHide>]]);

##  Machine Chassis
recipes.remove(machineChassis);
QED.addShapedRecipe(machineChassis, [[ingotLumium, ingotElectrotineAlloy, ingotLumium], [basicCapacitor, <ThermalExpansion:Frame>, basicCapacitor], [ingotNickel, ironBarsDark, ingotNickel]]);

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
recipes.addShaped(<EnderIO:blockSagMill>, [[crushedObsidian, crushedObsidian, crushedObsidian], [piston, machineChassis, piston], [ingotElectrotineAlloy, ingotElectrotineAlloy, ingotElectrotineAlloy]]);

##  Capacitors
//Assembler.addRecipe(output, input1, input2, liquid, durationTicks, euPerTick);
recipes.remove(capacitorBasic);
Assembler.addRecipe(capacitorBasic, batteryHullSmall, nuggetSignalum * 4, moltenRedstone * 288, 64, 8);
recipes.remove(capacitorDualLayer);
Assembler.addRecipe(capacitorDualLayer, capacitorBasic * 2, tubeEnder, moltenEnergeticAlloy * 864, 50, 40);
recipes.remove(capacitorOctadic);
Assembler.addRecipe(capacitorOctadic, capacitorDualLayer * 2, tubeBlazing, moltenVibrantAlloy * 864, 50, 40);

##  Alloy Furnance
recipes.remove(<EnderIO:blockAlloySmelter>);
recipes.addShaped(<EnderIO:blockAlloySmelter>, [[crushedObsidian, <IC2:blockHeatGenerator:3>, crushedObsidian], [<IC2:blockGenerator>, machineChassis, <IC2:blockGenerator>], [crushedObsidian, basicCapacitor, crushedObsidian]]);

##  Reinforced Obsidian
recipes.remove(<EnderIO:blockReinforcedObsidian>);
recipes.addShaped(<EnderIO:blockReinforcedObsidian> * 4, [[<IC2:blockAlloy>, crushedObsidian, <IC2:blockAlloy>], [crushedObsidian, <StevesCarts:ModuleComponents:22>, crushedObsidian], [<IC2:blockAlloy>, crushedObsidian, <IC2:blockAlloy>]]);

##  Remove Enchanter
recipes.remove(enchanter);
recipes.addShaped(enchanter, [[diamondMana, bookEnchanted, diamondMana], [ingotDarkSoularium, ingotDarkSoularium, ingotDarkSoularium], [null, ingotDarkSoularium, null]]);

##  Crystals
//Autoclave.addRecipe(output, input, liquid, chance, durationTicks, euPerTick);
# Vibrant Crystal
recipes.remove(crystalVibrant);
Autoclave.addRecipe(crystalVibrant, itemDustEmerald, moltenVibrantAlloy * 128, 8500, 1000, 24);
# Pulsating
recipes.remove(crystalPulsating);
Autoclave.addRecipe(crystalPulsating, itemDustDiamond, moltenPulsatingIron * 128, 8500, 1000, 24);
# Weather
recipes.remove(<EnderIO:itemMaterial:10>);
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

# Chisel exploit fix
Groups.removeGroup("glass");
Groups.addGroup("glass2");
Groups.addVariation("glass2", <minecraft:glass>);
Groups.addVariation("glass2", <chisel:glass2>);
Groups.addVariation("glass2", <chisel:glass:1>);
Groups.addVariation("glass2", <chisel:glass:2>);
Groups.addVariation("glass2", <chisel:glass:3>);
Groups.addVariation("glass2", <chisel:glass:4>);
Groups.addVariation("glass2", <chisel:glass:5>);
Groups.addVariation("glass2", <chisel:glass:6>);
Groups.addVariation("glass2", <chisel:glass:7>);
Groups.addVariation("glass2", <chisel:glass:8>);
Groups.addVariation("glass2", <chisel:glass:9>);
Groups.addVariation("glass2", <chisel:glass:10>);
Groups.addVariation("glass2", <chisel:glass:11>);
Groups.addVariation("glass2", <chisel:glass:12>);
Groups.addVariation("glass2", <chisel:glass:13>);
Groups.addVariation("glass2", <chisel:glass:14>);
Groups.addVariation("glass2", <chisel:glass:15>);

print("Initialized 'EnderIO.zs'");
