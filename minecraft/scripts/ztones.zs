//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Ztones.zs
// Author: Jason_McRay/Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.nei.NEI;

print("Initializing 'Ztones.zs'...");

# Aliases
val gardenSoil = <Ztones:cleanDirt>;
val flatLamp = <Ztones:lampf>;
val ingotIron = <ore:ingotIron>;
val paneGlassColorless = <ore:paneGlassColorless>;
val blockGl = <erebus:glowGemBlock>;
val ofanix = <Ztones:ofanix>;
val steelItemCasing = <IC2:itemCasing:5>;
val eyeEnder = <minecraft:ender_eye>;
val metalGalgadorian = <StevesCarts:ModuleComponents:47>;
val craftingTable = <minecraft:crafting_table>;
val encrustedDiamond = <erebus:encrustedDiamond>;
val singularity = <appliedenergistics2:item.ItemMultiMaterial:47>;

# Recipe tweaks
recipes.remove(gardenSoil);
NEI.hide(gardenSoil);

recipes.remove(flatLamp);
recipes.addShapedMirrored(flatLamp * 8, [[paneGlassColorless, paneGlassColorless, paneGlassColorless],
    							 		 [blockGl, blockGl,  blockGl]]);
recipes.remove(ofanix);
recipes.addShaped(ofanix, [[eyeEnder, steelItemCasing, metalGalgadorian],
    					   [steelItemCasing, singularity, steelItemCasing],
    					   [metalGalgadorian, craftingTable, encrustedDiamond]]);
    
print("Initialized 'Ztones.zs'");
