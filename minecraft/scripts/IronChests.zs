//////////////////////////////////////////////////////////////////////////////////////////////
// Name: IronChests.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

## Imports
import mods.buildcraft.AssemblyTable;

print("Initializing 'IronChests.zs'...");

##  Val Statements
val copperPlate = <gregtech:gt.metaitem.01:17035>;
val ironPlate = <gregtech:gt.metaitem.01:17032>;
val silverPlate = <gregtech:gt.metaitem.01:17054>;
val goldPlate = <gregtech:gt.metaitem.01:17086>;

##  Upgrades
recipes.remove(<IronChest:diamondObsidianUpgrade>);
recipes.remove(<IronChest:diamondCrystalUpgrade>);
recipes.remove(<IronChest:goldDiamondUpgrade>);
recipes.remove(<IronChest:silverGoldUpgrade>);
recipes.remove(<IronChest:ironGoldUpgrade>);
recipes.remove(<IronChest:copperSilverUpgrade>);
recipes.remove(<IronChest:copperIronUpgrade>);
recipes.remove(<IronChest:woodIronUpgrade>);
recipes.remove(<IronChest:woodCopperUpgrade>);
AssemblyTable.addRecipe(<IronChest:woodIronUpgrade>, 10000, [<ore:plankWood>, ironPlate * 8]);
AssemblyTable.addRecipe(<IronChest:woodCopperUpgrade>, 5000, [<ore:plankWood>, copperPlate * 8]);
AssemblyTable.addRecipe(<IronChest:copperIronUpgrade>, 10000, [copperPlate, ironPlate * 8]);
AssemblyTable.addRecipe(<IronChest:copperSilverUpgrade>, 20000, [copperPlate, silverPlate * 8]);
AssemblyTable.addRecipe(<IronChest:ironGoldUpgrade>, 40000, [ironPlate, goldPlate * 8]);
AssemblyTable.addRecipe(<IronChest:silverGoldUpgrade>, 40000, [silverPlate, goldPlate * 8]);
AssemblyTable.addRecipe(<IronChest:goldDiamondUpgrade>, 80000, [goldPlate, <minecraft:diamond> * 2, <minecraft:glass> * 6]);
AssemblyTable.addRecipe(<IronChest:diamondCrystalUpgrade>, 80000, [<minecraft:diamond>, <minecraft:glass> * 8]);
AssemblyTable.addRecipe(<IronChest:diamondObsidianUpgrade>, 80000, [<minecraft:diamond>, <minecraft:obsidian> * 8]);

##  Chests
recipes.remove(<IronChest:BlockIronChest:1>);
recipes.remove(<IronChest:BlockIronChest:4>);
recipes.remove(<IronChest:BlockIronChest>);
recipes.remove(<IronChest:BlockIronChest:3>);
recipes.addShaped(<IronChest:BlockIronChest:1>, [[goldPlate, goldPlate, goldPlate], [goldPlate, <IronChest:BlockIronChest:4>, goldPlate], [goldPlate, goldPlate, goldPlate]]);
recipes.addShaped(<IronChest:BlockIronChest:4>, [[silverPlate, silverPlate, silverPlate], [silverPlate, <IronChest:BlockIronChest:3>, silverPlate], [silverPlate, silverPlate, silverPlate]]);
recipes.addShaped(<IronChest:BlockIronChest:1>, [[goldPlate, goldPlate, goldPlate], [goldPlate, <IronChest:BlockIronChest>, goldPlate], [goldPlate, goldPlate, goldPlate]]);
recipes.addShaped(<IronChest:BlockIronChest:3>, [[copperPlate, copperPlate, copperPlate], [copperPlate, <minecraft:chest>, copperPlate], [copperPlate, copperPlate, copperPlate]]);
recipes.addShaped(<IronChest:BlockIronChest>, [[ironPlate, ironPlate, ironPlate], [ironPlate, <ore:chestWood>, ironPlate], [ironPlate, ironPlate, ironPlate]]);

print("Initialized 'IronChests.zs'");
