//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Ztones.zs
// Author: Jason_McRay/Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Ztones.zs'...");

# Aliases
var flatLamp = <Ztones:lampf>;
var ingotIron = <ore:ingotIron>;
var glass = <ore:blockGlassColorless>;
var blockGlowstone = <minecraft:glowstone>;
var ofanix = <Ztones:ofanix>;
var steelItemCasing = <IC2:itemCasing:5>;
var eyeEnder = <minecraft:ender_eye>;
val ingotEnhancedGalgadorian = <StevesCarts:ModuleComponents:49>;
var craftingTable = <minecraft:crafting_table>;
var industrialDiamond = <IC2:itemPartIndustrialDiamond>;
var singularity = <appliedenergistics2:item.ItemMultiMaterial:47>;

# Recipe tweaks
recipes.remove(flatLamp);
recipes.addShaped(flatLamp * 8, [
    [ingotIron, glass, ingotIron],
    [glass, blockGlowstone, glass],
    [ingotIron, glass,  ingotIron]]);
recipes.remove(ofanix);
recipes.addShaped(ofanix, [
    [eyeEnder, steelItemCasing, ingotEnhancedGalgadorian],
    [steelItemCasing, singularity, steelItemCasing],
    [ingotEnhancedGalgadorian, craftingTable, industrialDiamond]]);
    
print("Initialized 'Ztones.zs'");
