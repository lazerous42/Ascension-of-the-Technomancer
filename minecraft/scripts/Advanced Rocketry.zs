//////////////////////////////////////////////////////////////////////////////////////////////
// Name: AdvancedRocketry.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

# Imports
import mods.ic2.Compressor;
import mods.immersiveengineering.MetalPress;
import mods.gregtech.AlloySmelter;
import mods.gregtech.Extruder;
import mods.nei.NEI;

print("Initializing 'AdvancedRocketry.zs'...");

## Val Definitions
val moldGear = <ImmersiveEngineering:mold:1>;

# DiLithium oredict unification and Compression
<ore:crystalDilithium>.addAll(<ore:gemDilithium>);
<ore:gemDilithium>.mirror(<ore:crystalDilithium>);
Compressor.addRecipe(<gregtech:gt.blockgem1:6>, <ore:crystalDilithium> * 9);

# Heatproof Brick
recipes.remove(<advancedRocketry:utilBlock>);
recipes.addShaped(<advancedRocketry:utilBlock> * 2, [[<nevermine:IngotEmberstone>, <nevermine:IngotEmberstone>, <nevermine:IngotEmberstone>], 
													 [<nevermine:IngotEmberstone>, <minecraft:brick_block>, <nevermine:IngotEmberstone>], 
													 [<nevermine:IngotEmberstone>, <nevermine:IngotEmberstone>, <nevermine:IngotEmberstone>]]);

## Coils
# Gold
recipes.remove(<libVulpes:libVulpescoil0:2>);
recipes.addShaped(<libVulpes:libVulpescoil0:2>, [[<ore:wireFineGold>, <ore:wireFineGold>, <ore:wireFineGold>], 
												 [<ore:wireFineGold>, <ore:logWood>, <ore:wireFineGold>], 
												 [<ore:wireFineGold>, <ore:wireFineGold>, <ore:wireFineGold>]]);
# Copper
recipes.remove(<libVulpes:libVulpescoil0:4>);
recipes.addShaped(<libVulpes:libVulpescoil0:4>, [[<ore:wireFineAnyCopper>, <ore:wireFineAnyCopper>, <ore:wireFineAnyCopper>], 
												 [<ore:wireFineAnyCopper>, <ore:logWood>, <ore:wireFineAnyCopper>], 
												 [<ore:wireFineAnyCopper>, <ore:wireFineAnyCopper>, <ore:wireFineAnyCopper>]]);
# Titanium
recipes.remove(<libVulpes:libVulpescoil0:7>);
recipes.addShaped(<libVulpes:libVulpescoil0:7>, [[<ore:wireFineTitanium>, <ore:wireFineTitanium>, <ore:wireFineTitanium>], 
												 [<ore:wireFineTitanium>, <ore:logWood>, <ore:wireFineTitanium>], 
												 [<ore:wireFineTitanium>, <ore:wireFineTitanium>, <ore:wireFineTitanium>]]);
# Aluminium
recipes.remove(<libVulpes:libVulpescoil0:9>);
recipes.addShaped(<libVulpes:libVulpescoil0:9>, [[<ore:wireFineAluminium>, <ore:wireFineAluminium>, <ore:wireFineAluminium>], 
												 [<ore:wireFineAluminium>, <ore:logWood>, <ore:wireFineAluminium>], 
												 [<ore:wireFineAluminium>, <ore:wireFineAluminium>, <ore:wireFineAluminium>]]);
# Iridium
recipes.remove(<libVulpes:libVulpescoil0:10>);
recipes.addShaped(<libVulpes:libVulpescoil0:10>, [[<ore:wireFineIridium>, <ore:wireFineIridium>, <ore:wireFineIridium>], 
												 [<ore:wireFineIridium>, <ore:logWood>, <ore:wireFineIridium>], 
												 [<ore:wireFineIridium>, <ore:wireFineIridium>, <ore:wireFineIridium>]]);

## Motors
# Normal
recipes.remove(<libVulpes:tile.motor>);
recipes.addShaped(<libVulpes:tile.motor>, [[null, <libVulpes:libVulpescoil0:4>, <ore:plateSteel>], 
										   [<ore:stickSteel>, <ore:stickSteel>, <gregtech:gt.metaitem.01:32600>], 
										   [null, <libVulpes:libVulpescoil0:4>, <ore:plateSteel>]]);
# Advanced
recipes.remove(<libVulpes:tile.advancedMotor>);
recipes.addShaped(<libVulpes:tile.advancedMotor>, [[null, <libVulpes:libVulpescoil0:2>, <ore:plateSteel>], 
										   		   [<ore:stickSteel>, <ore:stickSteel>, <gregtech:gt.metaitem.01:32601>], 
										   		   [null, <libVulpes:libVulpescoil0:2>, <ore:plateSteel>]]);
# Enhanced
recipes.remove(<libVulpes:tile.enhancedMotor>);
recipes.addShaped(<libVulpes:tile.enhancedMotor>, [[null, <libVulpes:libVulpescoil0:9>, <ore:plateTitanium>], 
												   [<ore:stickTitanium>, <ore:stickTitanium>, <gregtech:gt.metaitem.01:32602>], 
												   [null, <libVulpes:libVulpescoil0:9>, <ore:plateTitanium>]]);
# Elite
recipes.remove(<libVulpes:tile.eliteMotor>);
recipes.addShaped(<libVulpes:tile.eliteMotor>, [[null, <libVulpes:libVulpescoil0:7>, <ore:plateIridium>], 
												[<ore:stickIridium>, <ore:stickIridium>, <gregtech:gt.metaitem.01:32603>], 
												[null, <libVulpes:libVulpescoil0:7>, <ore:plateIridium>]]);

## Circuits
# Control Circuit
recipes.remove(<advancedRocketry:circuitIC:3>);
recipes.addShaped(<advancedRocketry:circuitIC:3>, [[<ore:dustRedstone>, <PneumaticCraft:printedCircuitBoard>, <ore:dustRedstone>],
						   						   [<ore:dustCopper>, <gregtech:gt.metaitem.03:32080>, <ore:dustCopper>],
						   						   [<ore:dustCopper>, <ore:plateAluminium>, <ore:dustCopper>]]);
# Item Circuit
recipes.remove(<advancedRocketry:circuitIC:4>);
recipes.addShaped(<advancedRocketry:circuitIC:4>, [[<ore:dustRedstone>, <PneumaticCraft:printedCircuitBoard>, <ore:dustRedstone>],
						   						   [<ore:dustGold>, <gregtech:gt.metaitem.03:32080>, <ore:dustGold>],
						   						   [<ore:dustGold>, <ore:plateAluminium>, <ore:dustGold>]]);
# Liquid Circuit
recipes.remove(<advancedRocketry:circuitIC:5>);
recipes.addShaped(<advancedRocketry:circuitIC:5>, [[<ore:dustRedstone>, <PneumaticCraft:printedCircuitBoard>, <ore:dustRedstone>],
						   						   [<minecraft:dye:4>, <gregtech:gt.metaitem.03:32080>, <minecraft:dye:4>],
						   						   [<minecraft:dye:4>, <ore:plateAluminium>, <minecraft:dye:4>]]);

## Space Suit
# Helmet
recipes.remove(<advancedRocketry:item.spaceHelmet>);
recipes.addShaped(<advancedRocketry:item.spaceHelmet>, [[<ore:plateIron>, <ore:stickIron>, <ore:plateIron>], 
	                 								    [<ore:stickIron>, <minecraft:glass_pane>, <ore:stickIron>], 
	                 									[<ore:plateRubber>, <ore:plateRubber>, <ore:plateRubber>]]);
# Chest
recipes.remove(<advancedRocketry:item.spaceChest>);
recipes.addShaped(<advancedRocketry:item.spaceChest>, [[<ore:plateRubber>, <ore:stickIron>, <ore:plateRubber>], 
	                 								   [<ore:plateRubber>, <advancedRocketry:fuelTank>, <ore:plateRubber>], 
	                 								   [<ore:plateRubber>, <libVulpes:libVulpesproductfan:6>, <ore:plateRubber>]]);
# Leggings
recipes.remove(<advancedRocketry:item.spaceLeggings>);
recipes.addShaped(<advancedRocketry:item.spaceLeggings>, [[<ore:plateRubber>, <ore:stickIron>, <ore:plateRubber>], 
	                 									  [<ore:plateRubber>, null, <ore:plateRubber>], 
	                 									  [<ore:plateRubber>, null, <ore:plateRubber>]]);
# Boots
recipes.remove(<advancedRocketry:item.spaceBoots>);
recipes.addShaped(<advancedRocketry:item.spaceBoots>, [[null, <ore:stickIron>, null], 
	                 								   [<ore:plateRubber>, null, <ore:plateRubber>], 
	                   								   [<ore:plateIron>, null, <ore:plateIron>]]);
# Jetpack
recipes.remove(<advancedRocketry:item.jetPack>);
recipes.addShaped(<advancedRocketry:item.jetPack>, [[<advancedRocketry:pressureTank>, <ore:plateSteel>, <advancedRocketry:pressureTank>], 
													[<minecraft:lever>, <simplyjetpacks:jetpacks:3>, <minecraft:lever>], 
													[<minecraft:fire_charge>, null, <minecraft:fire_charge>]]);
recipes.addShaped(<advancedRocketry:item.jetPack>, [[<advancedRocketry:pressureTank>, <ore:plateSteel>, <advancedRocketry:pressureTank>], 
													[<minecraft:lever>, <simplyjetpacks:jetpacksEIO:3>, <minecraft:lever>], 
													[<minecraft:fire_charge>, null, <minecraft:fire_charge>]]);

# Machine Structure Block
recipes.remove(<libVulpes:blockStructureBlock>);
recipes.addShaped(<libVulpes:blockStructureBlock> * 8, [[<ore:stickAluminium>, <ore:plateAluminium>, <ore:stickAluminium>],
                                                        [<ore:plateAluminium>, <ore:ingotAluminium>, <ore:plateAluminium>],
                                                        [<ore:stickAluminium>, <ore:plateAluminium>, <ore:stickAluminium>]]);

# Advanced Machine Structure Block
recipes.remove(<libVulpes:tile.advStructureMachine>);
recipes.addShaped(<libVulpes:tile.advStructureMachine> * 8, [[<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>],
                                                        	 [<ore:plateTitanium>, <ore:ingotTitanium>, <ore:plateTitanium>],
                                                        	 [<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>]]);

# Battery
recipes.remove(<libVulpes:battery>);
recipes.addShaped(<libVulpes:battery>, [[null, <ore:craftingWireTin>, null], 
									   [<ore:plateBatteryAlloy>, <ore:dustElectrotine>, <ore:plateBatteryAlloy>],
									   [<ore:plateBatteryAlloy>, <ore:dustElectrotine>, <ore:plateBatteryAlloy>]]);

## Solar Panel
# Item
recipes.remove(<advancedRocketry:satellitePowerSource>);
recipes.addShaped(<advancedRocketry:satellitePowerSource>, [[null, <ProjRed|Expansion:projectred.expansion.solar_panel>, null], 
														    [<ore:ingotRedAlloy>, <ore:ingotRedAlloy>, null], 
														    [null, <ProjRed|Expansion:projectred.expansion.solar_panel>, null]]);
# Block
recipes.remove(<advancedRocketry:tile.solarPanel>);
recipes.addShapeless(<advancedRocketry:tile.solarPanel>, [<libVulpes:blockStructureBlock>, <advancedRocketry:satellitePowerSource>]);

# Steel Gear
recipes.remove(<libVulpes:libVulpesproductgear:6>);

# Titanium Gear
recipes.remove(<libVulpes:libVulpesproductgear:7>);

# Titanium Aluminide Gear
recipes.remove(<advancedRocketry:advancedRocketryproductgear>);
MetalPress.addRecipe(<advancedRocketry:advancedRocketryproductgear>, <ore:ingotTitaniumAluminide>, moldGear, 6400, 6);
AlloySmelter.addRecipe(<advancedRocketry:advancedRocketryproductgear>, <ore:ingotTitaniumAluminide> * 8, <gregtech:gt.metaitem.01:32303> * 0, 760, 32);
Extruder.addRecipe(<advancedRocketry:advancedRocketryproductgear>, <ore:ingotTitaniumAluminide> * 4, <gregtech:gt.metaitem.01:32372> * 0, 300, 128);
recipes.addShaped(<advancedRocketry:advancedRocketryproductgear>, [[<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>], 
																   [<ore:plateTitaniumAluminide>, <ore:craftingToolWrench>, <ore:plateTitaniumAluminide>], 
																   [<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>]]);

# Titanium Iridium Alloy Gear
recipes.remove(<advancedRocketry:advancedRocketryproductgear:1>);
MetalPress.addRecipe(<advancedRocketry:advancedRocketryproductgear:1>, <ore:ingotTitaniumIridium>, moldGear, 6400, 6);
AlloySmelter.addRecipe(<advancedRocketry:advancedRocketryproductgear:1>, <ore:ingotTitaniumIridium> * 8, <gregtech:gt.metaitem.01:32303> * 0, 760, 32);
Extruder.addRecipe(<advancedRocketry:advancedRocketryproductgear:1>, <ore:ingotTitaniumAluminide> * 4, <gregtech:gt.metaitem.01:32372> * 0, 300, 128);
recipes.addShaped(<advancedRocketry:advancedRocketryproductgear:1>, [[<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>], 
																     [<ore:plateTitaniumIridium>, <ore:craftingToolWrench>, <ore:plateTitaniumIridium>], 
																     [<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>]]);

# Remove Coal Generator
recipes.remove(<libVulpes:tile.coalGenerator>);
NEI.hide(<libVulpes:tile.coalGenerator>);

# Remove Energy Pipe
recipes.remove(<advancedRocketry:tile.energyPipe>);
NEI.hide(<advancedRocketry:tile.energyPipe>);

# Remove Liquid Pipe
recipes.remove(<advancedRocketry:tile.liquidPipe>);
NEI.hide(<advancedRocketry:tile.liquidPipe>);

print("Initialized 'AdvancedRocketry.zs'");
