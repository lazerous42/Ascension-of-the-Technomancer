//////////////////////////////////////////////////////////////////////////////////////////////
// Name: PortalGun.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'PortalGun.zs'...");

## Mini-black Hole
recipes.remove(<PortalGun:MiniBlackHole>);

recipes.addShaped(<PortalGun:MiniBlackHole>, [[<HardcoreEnderExpansion:auricion>, <appliedenergistics2:item.ItemMultiMaterial:48>, <HardcoreEnderExpansion:auricion>],
											  [<HardcoreEnderExpansion:endium_ingot>, <rftools:dimensionalShardItem>, <HardcoreEnderExpansion:endium_ingot>],
											  [<HardcoreEnderExpansion:auricion>, <appliedenergistics2:item.ItemMultiMaterial:48>, <HardcoreEnderExpansion:auricion>]]);

## Default Portal Gun
recipes.remove(<PortalGun:PortalGunBlue>);
recipes.addShaped(<PortalGun:PortalGunBlue>, [[<RotaryCraft:rotarycraft_item_compacts:5>, <rftools:dimensionalShardItem>, <RotaryCraft:rotarycraft_item_compacts:5>],
											  [<PneumaticCraft:ingotIronCompressed>, <PortalGun:MiniBlackHole>, <PneumaticCraft:ingotIronCompressed>],
											  [<PneumaticCraft:ingotIronCompressed>, <ExtraUtilities:decorativeBlock1:1>, <PneumaticCraft:ingotIronCompressed>]]);

## PotatOS
recipes.remove(<PortalGun:PortalPotato>);
recipes.addShaped(<PortalGun:PortalPotato>, [[<ProjRed|Core:projectred.core.part:7>, <ProjRed|Transmission:projectred.transmission.wire>, <ProjRed|Core:projectred.core.part:8>], 
							 				 [<ProjRed|Transmission:projectred.transmission.wire>, <minecraft:jukebox>, <ProjRed|Transmission:projectred.transmission.wire>], 
							 				 [<PneumaticCraft:advancedPCB>, <ore:circuitBasic>, <minecraft:poisonous_potato>]]);

## Portal Spawner
recipes.remove(<PortalGun:PortalGunSpawner>);
recipes.addShaped(<PortalGun:PortalGunSpawner> * 2, [[<PneumaticCraft:ingotIronCompressed>, <rftools:dimensionalShardItem>, <PneumaticCraft:ingotIronCompressed>], 
												 	 [<gregtech:gt.metaitem.01:17317>, <PortalGun:MiniBlackHole>, <gregtech:gt.metaitem.01:17317>], 
												 	 [<PneumaticCraft:ingotIronCompressed>, <ore:circuitGood>, <PneumaticCraft:ingotIronCompressed>]]);

## Portal Gun Pedestal
recipes.remove(<PortalGun:PortalGunPedestal>);
recipes.addShaped(<PortalGun:PortalGunPedestal>, [[null, <ExtraUtilities:decorativeBlock1:1>, null],
												  [null, <PneumaticCraft:ingotIronCompressed>, null],
												  [<PneumaticCraft:ingotIronCompressed>, <ore:dustRedstone>, <PneumaticCraft:ingotIronCompressed>]]);
    
print("Initialized 'PortalGun.zs'");
