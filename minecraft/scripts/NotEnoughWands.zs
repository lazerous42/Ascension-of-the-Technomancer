//////////////////////////////////////////////////////////////////////////////////////////////
// Name: NotEnoughWands.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.auraCascade.Pylon;
import mods.extraUtils.QED;
import mods.thaumcraft.Infusion;

print("Initializing 'NotEnoughWands.zs'...");

##  Val Statements
val wandCoreBasic = <NotEnoughWands:WandCore>;
val wandCoreAdvanced = <NotEnoughWands:AdvancedWandCore>;

# ~  Wand Cores
##  Basic Wand Cores
recipes.remove(<NotEnoughWands:WandCore>);
Pylon.addRecipe(<NotEnoughWands:WandCore>, <aura:GREEN_AURA> * 3000, <Botania:manaResource:10>, <aura:VIOLET_AURA> * 5000, <etfuturum:end_rod>, <aura:BLUE_AURA> * 2000, <HardcoreEnderExpansion:endium_ingot>, <aura:YELLOW_AURA> * 2000, <HardcoreEnderExpansion:stardust>);
##  Advanced Wand Core
recipes.remove(<NotEnoughWands:AdvancedWandCore>);
Pylon.addRecipe(<NotEnoughWands:AdvancedWandCore>, <aura:YELLOW_AURA> * 7000, <NotEnoughWands:WandCore>, <aura:WHITE_AURA> * 2500, <HardcoreEnderExpansion:spectral_tear>, <aura:BLACK_AURA> * 2500, <Thaumcraft:ItemResource:17>, <aura:VIOLET_AURA> * 4000, <arsmagica2:itemOre:3>);

# ~ Wands
##  Protection Wand   
recipes.remove(<NotEnoughWands:ProtectionWand>);
QED.addShapedRecipe(<NotEnoughWands:ProtectionWand>, [[<ExtraUtilities:bedrockiumIngot>, <RotaryCraft:rotarycraft_item_compacts:3>, <HardcoreEnderExpansion:stardust>], 
											    	  [<RotaryCraft:rotarycraft_item_compacts:3>, wandCoreAdvanced, null], 
											    	  [<HardcoreEnderExpansion:stardust>, null, wandCoreAdvanced]]);
##  Teleportation Wand
recipes.remove(<NotEnoughWands:TeleportationWand>);
Infusion.addRecipe("RESEARCH", <EnderIO:itemTravelStaff>, [wandCoreBasic, <HardcoreEnderExpansion:spatial_dash_gem>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:6>, wandCoreBasic, <HardcoreEnderExpansion:spatial_dash_gem>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:7>], "Iter 40, Instrumentum 20, Desidia 24", <NotEnoughWands:TeleportationWand>, 5);
##  Capturing Wand
recipes.remove(<NotEnoughWands:CapturingWand>);
Infusion.addRecipe("RESEARCH", <ExtraUtilities:golden_lasso>, [wandCoreBasic, <HardcoreEnderExpansion:living_matter>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:6>, wandCoreBasic, <HardcoreEnderExpansion:living_matter>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:7>], "Vinculum 40, Instrumentum 20, Gula 24", <NotEnoughWands:CapturingWand>, 5);
##  Moving Wand
recipes.remove(<NotEnoughWands:MovingWand>);
QED.addShapedRecipe(<NotEnoughWands:MovingWand>, [[<AWWayofTime:demonicTelepositionFocus>, <ExtraUtilities:golden_bag>, <HardcoreEnderExpansion:stardust>], 
											      [<ExtraUtilities:golden_bag>, wandCoreAdvanced, null], 
											      [<HardcoreEnderExpansion:stardust>, null, wandCoreAdvanced]]);
##  Displacement Wand
recipes.remove(<NotEnoughWands:DisplacementWand>);
Infusion.addRecipe("RESEARCH", <Botania:pistonRelay>, [wandCoreBasic, <funkylocomotion:frame>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:6>, wandCoreBasic, <funkylocomotion:frame>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:7>], "Motus 40, Instrumentum 20, Machina 24", <NotEnoughWands:DisplacementWand>, 5);
##  Acceleration Wand
recipes.remove(<NotEnoughWands:AccelerationWand>);
QED.addShapedRecipe(<NotEnoughWands:AccelerationWand>, [[<fossil:ancientClock>, <TwilightForest:tile.TFMagicLogSpecial>, <HardcoreEnderExpansion:stardust>], 
											    	    [<TwilightForest:tile.TFMagicLogSpecial>, wandCoreAdvanced, null], 
											    	    [<HardcoreEnderExpansion:stardust>, null, wandCoreAdvanced]]);
##  Building Wand
recipes.remove(<NotEnoughWands:BuildingWand>);
Infusion.addRecipe("RESEARCH", <ExtraUtilities:builderswand>, [wandCoreBasic, <ThermalFoundation:material:75>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:6>, wandCoreBasic, <ThermalFoundation:material:75>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:7>], "Fabrico 40, Instrumentum 20, Superbia 24", <ExtraUtilities:builderswand>, 5);
##  Illumination Wand
recipes.remove(<NotEnoughWands:IlluminationWand>);
Infusion.addRecipe("RESEARCH", <ThaumicTinkerer:brightNitor>, [wandCoreBasic, <ThermalFoundation:material:75>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:6>, wandCoreBasic, <ThermalFoundation:material:75>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:7>], "Lux 40, Instrumentum 20, Sensus 24", <NotEnoughWands:IlluminationWand>, 5);
##  Swapping Wand
recipes.remove(<NotEnoughWands:SwappingWand>);
Infusion.addRecipe("RESEARCH", <Thaumcraft:FocusTrade>, [wandCoreBasic, <ThermalFoundation:material:75>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:6>, wandCoreBasic, <ThermalFoundation:material:75>, <HardcoreEnderExpansion:stardust>, <arsmagica2:itemOre:7>], "Permutatio 40, Instrumentum 20, Perfodio 24", <NotEnoughWands:SwappingWand>, 5);

print("Initialized 'NotEnoughWands.zs'");