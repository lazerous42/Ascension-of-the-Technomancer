//////////////////////////////////////////////////////////////////////////////////////////////
// Name: GraviSuite.zs
// Author: Lazerous/Pyure/Jason McRay
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'GraviSuite.zs'...");

## Val Definitions
val advancedElectricJetpack = <GraviSuite:advJetpack:27>.withTag({charge: 0});
val advancedElectricJetpack2 = <GraviSuite:advJetpack:*>;
val advancedLappack = <GraviSuite:advLappack:*>;
val advancedNanoChestPlate = <GraviSuite:advNanoChestPlate:27>.withTag({charge: 0});
val advancedNanoChestPlate2 = <GraviSuite:advNanoChestPlate:*>;
val cablePlatinum = <gregtech:gt.blockmachines:1646>;
val carbonPlate = <IC2:itemPartCarbonPlate>;
val circuitAdvanced = <ore:circuitAdvanced>;
val electricJetpack = <IC2:itemArmorJetpackElectric:*>;
val engineBooster = <GraviSuite:itemSimpleItem:6>;
val ingotGold = <minecraft:gold_ingot>;
val nanoBodyArmor = <IC2:itemArmorNanoChestplate:*>;
val superconductor = <GraviSuite:itemSimpleItem:1>;
val superconductorCover = <GraviSuite:itemSimpleItem>;
val coolingCore = <GraviSuite:itemSimpleItem:2>;
val cell60k = <IC2:reactorCoolantSix:1>;
val advHeatExchanger = <IC2:reactorHeatSwitchDiamond:1>;
val heatReactorPlating = <IC2:reactorPlatingHeat>;
val plateAlloyIridium = <ore:plateAlloyIridium>;

recipes.remove(superconductor);
recipes.addShaped(superconductor, [[superconductorCover, superconductorCover, superconductorCover], [cablePlatinum, ingotGold, cablePlatinum], [superconductorCover, superconductorCover, superconductorCover]]);

recipes.remove(advancedElectricJetpack2);
recipes.addShaped(advancedElectricJetpack, [[carbonPlate, electricJetpack, carbonPlate], [engineBooster, advancedLappack, engineBooster], [cablePlatinum, circuitAdvanced, cablePlatinum]]);
		
recipes.remove(advancedNanoChestPlate2);
recipes.addShaped(advancedNanoChestPlate, [[carbonPlate, advancedElectricJetpack2, carbonPlate], [carbonPlate, nanoBodyArmor, carbonPlate],[cablePlatinum, circuitAdvanced, cablePlatinum]]);
        
recipes.remove(coolingCore);
recipes.addShaped(coolingCore, [[cell60k, advHeatExchanger, cell60k], [heatReactorPlating, plateAlloyIridium, heatReactorPlating], [cell60k, advHeatExchanger, cell60k]]);
        
recipes.remove(engineBooster);
recipes.addShaped(engineBooster, [[<minecraft:glowstone_dust>, <IC2:itemPartAlloy>, <minecraft:glowstone_dust>], [<ore:circuitAdvanced>, <IC2:upgradeModule>, <ore:circuitAdvanced>], [<IC2:itemPartAlloy>, <IC2:reactorVentDiamond:1>, <IC2:itemPartAlloy>]]);

print("Initialized 'GraviSuite.zs'");
