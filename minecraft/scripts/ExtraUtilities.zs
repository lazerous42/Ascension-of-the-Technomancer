//////////////////////////////////////////////////////////////////////////////////////////////
// Name: ExtraUtilities.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.extraUtils.QED;
import mods.ic2.Compressor;
import mods.thaumcraft.Infusion;
import mods.thermalexpansion.Furnace;

print("Initializing 'ExtraUtilities.zs'...");

##  Val Definitions
val furnace = <minecraft:furnace>;
val enderPearl = <minecraft:ender_pearl>;
val dustRedstone = <ore:dustRedstone>;
val blockRedstone = <ore:blockRedstone>;
val dustElectrotine = <ore:dustElectrotine>;
val piston = <minecraft:piston>;
val chest = <minecraft:chest>;
val lapis = <minecraft:dye:4>;
val eyeEnder = <minecraft:ender_eye>;
val blockGlass = <minecraft:glass>;
val ingotIron = <ore:ingotIron>;
val ingotConstantan = <ore:ingotConstantan>;
val ingotGold = <ore:ingotGold>;
val ingotBrass = <ore:ingotBrass>;
val nuggetBrass = <ore:nuggetBrass>;
val ingotSteel = <ore:ingotSteel>;
val ingotLumium = <ore:ingotLumium>;
val ingotSignalum = <ore:ingotSignalum>;
val ingotPlatinum = <ore:ingotPlatinum>;
val ingotKoboldite = <witchery:ingredient:150>;
val ingotAngelSteel11 = <aura:ingotAngelSteel:10>;
val tubeEmerald = <Forestry:thermionicTubes:9>;
val firestoneRaw = <Railcraft:firestone.raw>;
val gearIron = <ore:gearIron>;
val gearBronze = <ore:gearBronze>;
val gearInvar = <ore:gearInvar>;
val gearElectrum = <ore:gearElectrum>;
val gearSignalum = <ore:gearSignalum>;
val gearNickel = <ore:gearNickel>;
val gearSilver = <ore:gearSilver>;
val gearLumium = <ore:gearLumium>;
val gearSteel = <ore:gearSteel>;
val gearMithril = <ore:gearMithril>;
val gearPlatinum = <ore:gearPlatinum>;
val gearEnderium = <ore:gearEnderium>;
val chipsetRedstone = <ore:chipsetRed>;
val chipsetIron = <ore:chipsetIron>;
val chipsetGold = <ore:chipsetGold>;
val chipsetDiamond = <ore:chipsetDiamond>;
val chipsetPulsating = <ore:chipsetPulsating>;
val chipsetQuartz = <ore:chipsetQuartz>;
val chipsetComp = <ore:chipsetComp>;
val chipsetEmerald = <ore:chipsetEmerald>;
val crystalRedstone = <ore:redstoneCrystal>;
val capacitorOctadic = <EnderIO:itemBasicCapacitor:2>;
val ingotIridium = <IC2:itemPartIridium>;
val blazingPyrothium = <ThermalFoundation:material:512>;
val ingotIchorium = <ThaumicTinkerer:kamiResource:2>;
val blockNetherStar = <ForbiddenMagic:StarBlock>;
val blockEnhancedGalgadorian = <StevesCarts:BlockMetalStorage:2>;
val bloodOrbTranscendent = <AWWayofTime:transcendentBloodOrb>;
val leonardsUrn = <witchery:leonardsurn>;
val ingotMobius = <ExtraUtilities:unstableingot:2>;
val ingotBedrockium = <ExtraUtilities:bedrockiumIngot>;
val blockBedrockium = <ExtraUtilities:block_bedrockium>;
val primordialPearl = <Thaumcraft:ItemEldritchObject:3>;
val blackAurem = <arsmagica2:blackAurem>;
val dustBedrock = <RotaryCraft:rotarycraft_item_powders:4>;

val quadCompressedCobblestone = <ExtraUtilities:cobblestone_compressed:3>;
val drum = <ExtraUtilities:drum>;
val obsidianEnderInfused = <ore:blockEnderObsidian>;
val pumpEnderThermic = <ExtraUtilities:enderThermicPump>;
val pipeTransfer = <ExtraUtilities:pipes>;
val pipeSorting = <ExtraUtilities:pipes:8>;
val pipeRationing = <ExtraUtilities:pipes:10>;
val pipeEnergy = <ExtraUtilities:pipes:11>;
val pipeHyperRationing = <ExtraUtilities:pipes.1>;
val transferNode = <ExtraUtilities:extractor_base>;
val transferNodeLiquid = <ExtraUtilities:extractor_base:6>;
val worldInteractionUpgrade = <ExtraUtilities:nodeUpgrade:2>;

## Bedrockium
recipes.removeShaped(ingotBedrockium);
recipes.removeShaped(blockBedrockium);
recipes.addShapeless(ingotBedrockium * 9, [blockBedrockium]);
recipes.addShaped(blockBedrockium, [[null, dustBedrock, null], [dustBedrock, <ExtraUtilities:cobblestone_compressed:7>, dustBedrock], [null, dustBedrock, null]]);

## Unstable Ingot Block Compressor fix
recipes.remove(<ExtraUtilities:decorativeBlock1:5>);
recipes.addShapeless(<ExtraUtilities:decorativeBlock1:5>, [<ExtraUtilities:unstableingot>, <ExtraUtilities:unstableingot>, <ExtraUtilities:unstableingot>,
														   <ExtraUtilities:unstableingot>, <ExtraUtilities:unstableingot>, <ExtraUtilities:unstableingot>,
														   <ExtraUtilities:unstableingot>, <ExtraUtilities:unstableingot>, <ExtraUtilities:unstableingot>]);
Compressor.addRecipe(<ExtraUtilities:decorativeBlock1:5>, <ExtraUtilities:unstableingot:2> * 9);

##  Custom Generators
recipes.remove(<ExtraUtilities:generator>);
recipes.addShaped(<ExtraUtilities:generator>, [[<ore:blockCoal>, <ore:blockCoal>, <ore:blockCoal>], [furnace, piston, furnace], [dustRedstone, gearIron, dustRedstone]]);
recipes.remove(<ExtraUtilities:generator:1>);
recipes.addShaped(<ExtraUtilities:generator:1>, [[<ore:blockCoal>, <IC2:itemPartCoalChunk>, <ore:blockCoal>], [furnace, piston, furnace], [chipsetRedstone, gearBronze, chipsetRedstone]]);
recipes.remove(<ExtraUtilities:generator:2>);
recipes.addShaped(<ExtraUtilities:generator:2>, [[blazingPyrothium, firestoneRaw, blazingPyrothium], [furnace, piston, furnace], [chipsetIron, gearInvar, chipsetIron]]);
recipes.remove(<ExtraUtilities:generator:3>);
recipes.addShaped(<ExtraUtilities:generator:3>, [[eyeEnder, eyeEnder,eyeEnder], [furnace, piston, furnace], [chipsetPulsating, gearElectrum, chipsetPulsating]]);
recipes.remove(<ExtraUtilities:generator:4>);
recipes.addShaped(<ExtraUtilities:generator:4>, [[ingotSignalum, crystalRedstone, ingotSignalum], [furnace, piston, furnace], [chipsetComp, gearSignalum, chipsetComp]]);
recipes.remove(<ExtraUtilities:generator:5>);
recipes.addShaped(<ExtraUtilities:generator:5>, [[<harvestcraft:firmtofuItem>, <harvestcraft:firmtofuItem>, <harvestcraft:firmtofuItem>], [furnace, piston, furnace], [chipsetGold, gearSilver, chipsetGold]]);
recipes.remove(<ExtraUtilities:generator:6>);
recipes.addShaped(<ExtraUtilities:generator:6>, [[ingotKoboldite, <minecraft:enchanting_table>, ingotKoboldite], [furnace, piston, furnace], [chipsetGold, gearMithril, chipsetGold]]);
recipes.remove(<ExtraUtilities:generator:7>);
recipes.addShaped(<ExtraUtilities:generator:7>, [[ingotLumium, ingotLumium,ingotLumium], [furnace, piston, furnace], [chipsetQuartz, gearLumium, chipsetQuartz]]);
recipes.remove(<ExtraUtilities:generator:8>);
recipes.addShaped(<ExtraUtilities:generator:8>, [[<IC2:blockITNT>, <IC2:blockITNT>,<IC2:blockITNT>], [furnace, piston, furnace], [chipsetQuartz, gearSteel, chipsetQuartz]]);
recipes.remove(<ExtraUtilities:generator:9>);
recipes.addShaped(<ExtraUtilities:generator:9>, [[<MineFactoryReloaded:pinkslime:1>, <MineFactoryReloaded:pinkslime:1>,<MineFactoryReloaded:pinkslime:1>], [furnace, piston, furnace], [chipsetPulsating, gearNickel, chipsetPulsating]]);
recipes.remove(<ExtraUtilities:generator:10>);
recipes.addShaped(<ExtraUtilities:generator:10>, [[ingotPlatinum, ingotPlatinum, ingotPlatinum], [furnace, piston, furnace], [chipsetDiamond, gearPlatinum, chipsetDiamond]]);
recipes.remove(<ExtraUtilities:generator:11>);
recipes.addShaped(<ExtraUtilities:generator:11>, [[<ExtraUtilities:decorativeBlock1:5>, <minecraft:nether_star>, <ExtraUtilities:decorativeBlock1:5>], [furnace, piston, furnace], [chipsetEmerald, gearEnderium, chipsetEmerald]]);

##  Creative Builders Wand
recipes.remove(<ExtraUtilities:creativebuilderswand>);
QED.addShapedRecipe(<ExtraUtilities:creativebuilderswand>, [[<NotEnoughWands:BuildingWand>, <ExtraUtilities:unstableingot:2>, null],
															[<ExtraUtilities:unstableingot:2>, <ore:ingotIronCompressed>, null],
															[null, null, <ore:ingotIronCompressed>]]);

##  Pipes
# Transfer
recipes.remove(pipeTransfer);
recipes.addShaped(pipeTransfer * 8, [[ingotConstantan, ingotConstantan, ingotConstantan], [blockGlass, dustRedstone, blockGlass], [ingotConstantan, ingotConstantan, ingotConstantan]]);
# Sorting
recipes.remove(pipeSorting);
recipes.addShaped(pipeSorting * 2, [[ingotBrass, ingotBrass, ingotBrass], [blockGlass, ingotGold, blockGlass], [ingotBrass, ingotBrass, ingotBrass]]);
# Rationing
recipes.remove(pipeRationing);
recipes.addShaped(pipeRationing * 2, [[ingotBrass, ingotBrass, ingotBrass], [blockGlass, lapis, blockGlass], [ingotBrass, ingotBrass, ingotBrass]]);
# Energy
recipes.remove(pipeEnergy);
recipes.addShaped(pipeEnergy * 8, [[ingotConstantan, ingotConstantan, ingotConstantan], [dustElectrotine, dustElectrotine, dustElectrotine], [ingotConstantan, ingotConstantan, ingotConstantan]]);
# HyperRationing
recipes.remove(pipeHyperRationing);
recipes.addShaped(pipeHyperRationing * 2, [[nuggetBrass, nuggetBrass, nuggetBrass], [blockGlass, lapis, blockGlass], [nuggetBrass, nuggetBrass, nuggetBrass]]);

##  Transfer Nodes
# Items
recipes.remove(transferNode);
recipes.addShaped(transferNode, [[ingotConstantan, pipeTransfer, ingotConstantan], [dustRedstone, blockRedstone, dustRedstone], [ingotConstantan, chest, ingotConstantan]]);
# Liquids
recipes.remove(transferNodeLiquid);
recipes.addShaped(transferNodeLiquid, [[ingotBrass, pipeTransfer, ingotBrass], [dustRedstone, blockRedstone, dustRedstone], [ingotBrass, chest, ingotBrass]]);

##  World Interaction Upgrade
recipes.removeShaped(worldInteractionUpgrade);
recipes.addShaped(worldInteractionUpgrade, [[<minecraft:dye:4>, <ore:ingotElectrotineAlloy>, <minecraft:dye:4>], [<ore:ingotElectrotineAlloy>, <minecraft:diamond_pickaxe>, <ore:ingotElectrotineAlloy>], [<minecraft:dye:4>, <ore:ingotElectrotineAlloy>, <minecraft:dye:4>]]);

##  Quarry
recipes.remove(<ExtraUtilities:enderQuarry>);
recipes.addShaped(<ExtraUtilities:enderQuarry>, [[chipsetEmerald, <IC2:itemToolMiningLaser:*>, tubeEmerald], [<ThermalExpansion:Frame:11>, <MineFactoryReloaded:machine.2:1>, <IC2:blockElectric:2>], [capacitorOctadic, <BuildCraft|Builders:machineBlock>, capacitorOctadic]]);

##  Remove normal crafting of ender infused obsidian (use fluid transposer)
recipes.remove(obsidianEnderInfused);

##  Enderthermic pump
recipes.remove(pumpEnderThermic);
recipes.addShaped(pumpEnderThermic, [[<OpenBlocks:tank>, chipsetIron, <OpenBlocks:tank>], [gearInvar, <IC2:blockMachine:8>, gearInvar], [obsidianEnderInfused, <BuildCraft|Transport:item.buildcraftPipe.pipefluidsquartz>, obsidianEnderInfused]]);

##  Drum
recipes.remove(drum);
recipes.addShaped(drum, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, <minecraft:cauldron>, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
  
##  Watering Can
recipes.remove(<ExtraUtilities:watering_can:1>);
recipes.addShaped(<ExtraUtilities:watering_can:1>, [[ingotSteel, <minecraft:dye:15>, null],  [ingotSteel, <minecraft:bowl>, ingotSteel], [null, ingotSteel, null]]);

##  Ender transmitter
recipes.remove(<ExtraUtilities:nodeUpgrade:5>);
recipes.addShaped(<ExtraUtilities:nodeUpgrade:5>, [[null, <minecraft:quartz>, null], [<minecraft:redstone_torch>, <ThermalExpansion:Frame:8>, <minecraft:redstone_torch>], [null, <minecraft:quartz>, null]]);
  
##  Ender reciever
recipes.remove(<ExtraUtilities:nodeUpgrade:6>);
recipes.addShaped(<ExtraUtilities:nodeUpgrade:6>, [[null, <minecraft:quartz>, null], [<minecraft:redstone>, <ThermalExpansion:Frame:8>, <minecraft:redstone>], [null, <minecraft:quartz>, null]]);

##  Angel Rings
recipes.remove(<ExtraUtilities:angelRing>);
recipes.remove(<ExtraUtilities:angelRing:1>);
recipes.remove(<ExtraUtilities:angelRing:2>);
recipes.remove(<ExtraUtilities:angelRing:3>);
recipes.remove(<ExtraUtilities:angelRing:4>);
Infusion.addRecipe("RESEARCH", ingotAngelSteel11, [<minecraft:glass>, blockNetherStar, ingotIchorium, blockEnhancedGalgadorian, bloodOrbTranscendent, ingotIchorium, leonardsUrn, ingotMobius, ingotIchorium, primordialPearl, blackAurem, ingotIchorium], "volatus 50, alienis 50, iter 50, praecantatio 50", <ExtraUtilities:angelRing>, 10);
Infusion.addRecipe("RESEARCH", ingotAngelSteel11, [<minecraft:feather>, blockNetherStar, ingotIchorium, blockEnhancedGalgadorian, bloodOrbTranscendent, ingotIchorium, leonardsUrn, ingotMobius, ingotIchorium, primordialPearl, blackAurem, ingotIchorium], "volatus 50, alienis 50, iter 50, praecantatio 50", <ExtraUtilities:angelRing:1>, 10);
Infusion.addRecipe("RESEARCH", ingotAngelSteel11, [<minecraft:dye:9>, blockNetherStar, ingotIchorium, blockEnhancedGalgadorian, bloodOrbTranscendent, ingotIchorium, leonardsUrn, ingotMobius, ingotIchorium, primordialPearl, blackAurem, ingotIchorium], "volatus 50, alienis 50, iter 50, praecantatio 50", <ExtraUtilities:angelRing:2>, 10);
Infusion.addRecipe("RESEARCH", ingotAngelSteel11, [<minecraft:leather>, blockNetherStar, ingotIchorium, blockEnhancedGalgadorian, bloodOrbTranscendent, ingotIchorium, leonardsUrn, ingotMobius, ingotIchorium, primordialPearl, blackAurem, ingotIchorium], "volatus 50, alienis 50, iter 50, praecantatio 50", <ExtraUtilities:angelRing:3>, 10);
Infusion.addRecipe("RESEARCH", ingotAngelSteel11, [<minecraft:gold_nugget>, blockNetherStar, ingotIchorium, blockEnhancedGalgadorian, bloodOrbTranscendent, ingotIchorium, leonardsUrn, ingotMobius, ingotIchorium, primordialPearl, blackAurem, ingotIchorium], "volatus 50, alienis 50, iter 50, praecantatio 50", <ExtraUtilities:angelRing:4>, 10);

##  Spikes
recipes.remove(<ExtraUtilities:spike_base_wood>);
recipes.addShaped(<ExtraUtilities:spike_base_wood>, [[null, <ExtraUtilities:decorativeBlock1:8>, null], [<ExtraUtilities:decorativeBlock1:8>, <ExtraUtilities:ethericsword>, <ExtraUtilities:decorativeBlock1:8>]]);
recipes.remove(<ExtraUtilities:spike_base>);
recipes.addShaped(<ExtraUtilities:spike_base>, [[null, <minecraft:iron_sword>, null], [<minecraft:iron_sword>, <minecraft:iron_block>, <minecraft:iron_sword>], [<minecraft:iron_block>, null, <minecraft:iron_block>]]);
recipes.remove(<ExtraUtilities:spike_base_gold>);
recipes.addShaped(<ExtraUtilities:spike_base_gold>, [[null, <minecraft:golden_sword>, null], [<minecraft:golden_sword>, <ExtraUtilities:decorativeBlock1:8>, <minecraft:golden_sword>], [<ExtraUtilities:decorativeBlock1:8>, <ExtraUtilities:spike_base>, <ExtraUtilities:decorativeBlock1:8>]]);
recipes.remove(<ExtraUtilities:spike_base_diamond>);
QED.addShapedRecipe(<ExtraUtilities:spike_base_diamond>, [[null, <minecraft:diamond_sword>, null], [<minecraft:diamond_sword>, <minecraft:diamond_block>, <minecraft:diamond_sword>], [<minecraft:diamond_block>, <ExtraUtilities:spike_base_gold>, <minecraft:diamond_block>]]);

##  Ender Flux Crystal
recipes.remove(<ExtraUtilities:endConstructor:2>);
recipes.addShaped(<ExtraUtilities:endConstructor:2>, [[null, <ExtraUtilities:decorativeBlock1:12>, null], [<BuildCraft|Transport:pipeGate>, obsidianEnderInfused, <BuildCraft|Transport:pipeGate>], [obsidianEnderInfused, quadCompressedCobblestone, obsidianEnderInfused]]);

##  Qed
recipes.remove(<ExtraUtilities:endConstructor>);
recipes.addShaped(<ExtraUtilities:endConstructor>, [[obsidianEnderInfused, <ore:pearlEnderEye>, obsidianEnderInfused], [<EnderIO:itemBasicCapacitor:1>, <ThermalExpansion:Frame:3>, <EnderIO:itemBasicCapacitor:1>], [obsidianEnderInfused, chipsetRedstone, obsidianEnderInfused]]);

##  Magnum torch
QED.removeRecipe(<ExtraUtilities:magnumTorch>);
QED.addShapedRecipe(<ExtraUtilities:magnumTorch>, [[<minecraft:potion:8229>, <ExtraUtilities:chandelier>, <minecraft:potion:8225>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>]]);
QED.addShapedRecipe(<ExtraUtilities:magnumTorch>, [[<minecraft:potion:8225>, <ExtraUtilities:chandelier>, <minecraft:potion:8229>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>]]);

print("Initialized 'ExtraUtilities.zs'");
