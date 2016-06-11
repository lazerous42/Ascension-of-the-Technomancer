//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Gendustry.zs
// Author: BeyondReality Team
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.gregtech.Autoclave;

print("Initializing 'Gendustry.zs'...");

##  Val Statements
val apiaryIndustrial = <gendustry:IndustrialApiary>;
val beeReceptacle = <gendustry:BeeReceptacle>;
val blockRedstone = <ore:blockRedstone>;
val capsuleWaxBiomass = <Forestry:waxCapsuleBiomass>;
val chipNAND = <gregtech:gt.metaitem.01:32700>;
val diamond = <minecraft:diamond>;
val dropHoneyRed = <gendustry:HoneyDrop:11>;
val extractor = <gendustry:Extractor>;
val frameCobalt = <gregtech:gt.blockmachines:4129>;
val frameUpgrade = <gendustry:UpgradeFrame>;
val gearAluminium = <ore:gearAluminium>;
val glassPane = <ore:paneGlass>;
val hullMachineHV = <gregtech:gt.blockmachines:13>;
val imprinter = <gendustry:Imprinter>;
val ingotAluminium = <ore:ingotAluminium>;
val ingotGold = <ore:ingotGold>;
val ingotTin = <ore:ingotTin>;
val liquifier = <gendustry:Liquifier>;
val modulePower = <gendustry:PowerModule>;
val mutagen = <gendustry:HoneyComb:141>;
val mutagenProducer = <gendustry:MutagenProducer>;
val mutatron = <gendustry:Mutatron>;
val pipeSmallBronze = <gregtech:gt.blockmachines:5121>;
val plateAluminium = <ore:plateAluminium>;
val pressurePlateLightWeighted = <minecraft:light_weighted_pressure_plate>;
val processorGenetics = <gendustry:GeneticsProcessor>;
val replicator = <gendustry:Replicator>;
val royalJelly = <Forestry:royalJelly>;
val scoop = <ore:craftingToolScoop>;
val scoopator = <gendustry:IndustrialScoop:100>;
val swarmer = <Forestry:alveary:2>;
val tankMutagen = <gendustry:MutagenTank>;
val tin = <ore:ingotTin>;
val transposer = <gendustry:Transposer>;
val uranium238 = <IC2:itemUran238>;
val biomass = <liquid:ic2biomass>;

##  Remove power module (aquired from Ascended Bee)
recipes.remove(<gendustry:PowerModule>);

recipes.remove(scoopator);
recipes.addShaped(scoopator, [[null, null, scoop.noReturn()], [null, diamond, null], [modulePower, null, null]]);
recipes.addShaped(dropHoneyRed, [[royalJelly, royalJelly, royalJelly], [royalJelly, uranium238, royalJelly], [royalJelly, royalJelly, royalJelly]]);
recipes.addShaped(mutagen, [[dropHoneyRed, dropHoneyRed, dropHoneyRed], [dropHoneyRed, capsuleWaxBiomass, dropHoneyRed], [dropHoneyRed, dropHoneyRed, dropHoneyRed]]);
Autoclave.addRecipe(mutagen, dropHoneyRed * 6, biomass * 3000, 10000, 300, 24);

recipes.remove(frameUpgrade);
recipes.addShaped(frameUpgrade, [[ingotAluminium, ingotGold, ingotAluminium], [blockRedstone, frameCobalt, blockRedstone], [ingotAluminium, ingotGold, ingotAluminium]]);

recipes.remove(tankMutagen);
recipes.addShaped(tankMutagen, [[plateAluminium,glassPane, plateAluminium], [plateAluminium,glassPane, plateAluminium], [plateAluminium,glassPane, plateAluminium]]);

recipes.remove(beeReceptacle);	
recipes.addShaped(beeReceptacle, [[ingotAluminium, ingotAluminium, ingotAluminium], [ingotAluminium, glassPane, ingotAluminium], [blockRedstone, pressurePlateLightWeighted, blockRedstone]]);

recipes.remove(tankMutagen);
recipes.addShaped(tankMutagen, [[plateAluminium, glassPane, plateAluminium], [plateAluminium, glassPane, plateAluminium], [plateAluminium, glassPane, plateAluminium]]);													

recipes.remove(mutagenProducer);
recipes.addShaped(mutagenProducer, [[plateAluminium, pipeSmallBronze, plateAluminium], [modulePower, hullMachineHV, modulePower], [gearAluminium, tankMutagen, gearAluminium]]);

recipes.remove(apiaryIndustrial);	
recipes.addShaped(apiaryIndustrial, [[swarmer, processorGenetics, swarmer], [modulePower, hullMachineHV, modulePower], [gearAluminium, beeReceptacle, gearAluminium]]);		

recipes.remove(imprinter);
recipes.addShaped(imprinter, [[gearAluminium, processorGenetics, gearAluminium], [beeReceptacle, hullMachineHV, beeReceptacle], [gearAluminium, modulePower, gearAluminium]]);	

recipes.remove(liquifier);
recipes.addShaped(liquifier, [[gearAluminium, tankMutagen, gearAluminium], [ingotAluminium, hullMachineHV, gearAluminium], [gearAluminium, modulePower, gearAluminium]]);	

recipes.remove(extractor);
recipes.addShaped(extractor, [[gearAluminium, tankMutagen, gearAluminium], [processorGenetics, hullMachineHV, processorGenetics], [gearAluminium, modulePower, gearAluminium]]);	

recipes.remove(transposer);
recipes.addShaped(transposer, [[pipeSmallBronze, tankMutagen, pipeSmallBronze], [processorGenetics, hullMachineHV, processorGenetics], [gearAluminium, modulePower, gearAluminium]]);

recipes.remove(replicator);
recipes.addShaped(replicator, [[gearAluminium, processorGenetics, gearAluminium], [modulePower, hullMachineHV, modulePower], [gearAluminium, processorGenetics, gearAluminium]]);			

recipes.remove(mutatron);
recipes.addShaped(mutatron, [[beeReceptacle, processorGenetics, gearAluminium], [modulePower, hullMachineHV, beeReceptacle], [beeReceptacle, tankMutagen, gearAluminium]]);				

print("Initialized 'Gendustry.zs'");