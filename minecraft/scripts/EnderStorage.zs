//////////////////////////////////////////////////////////////////////////////////////////////
// Name: EnderStorage.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'EnderStorage.zs'...");

##  Val Definiitions
val crushedObsidian = <Railcraft:cube:4>;
val chestIron = <IronChest:BlockIronChest>;
val ingotLimonite = <nevermine:IngotLimonite>;
val gemDimensional = <ore:dimensionalGem>;

##  Ender Chest
recipes.remove(<EnderStorage:enderChest:*>);
recipes.addShaped(<EnderStorage:enderChest>, [[ingotLimonite, <minecraft:wool:0>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:273>, [[ingotLimonite, <minecraft:wool:1>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:546>, [[ingotLimonite, <minecraft:wool:2>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:819>, [[ingotLimonite, <minecraft:wool:3>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:1092>, [[ingotLimonite, <minecraft:wool:4>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:1365>, [[ingotLimonite, <minecraft:wool:5>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:1638>, [[ingotLimonite, <minecraft:wool:6>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:1911>, [[ingotLimonite, <minecraft:wool:7>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:2184>, [[ingotLimonite, <minecraft:wool:8>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:2457>, [[ingotLimonite, <minecraft:wool:9>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:2730>, [[ingotLimonite, <minecraft:wool:10>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:3003>, [[ingotLimonite, <minecraft:wool:11>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:3276>, [[ingotLimonite, <minecraft:wool:12>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:3549>, [[ingotLimonite, <minecraft:wool:13>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:3822>, [[ingotLimonite, <minecraft:wool:14>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:4095>, [[ingotLimonite, <minecraft:wool:15>, ingotLimonite], [crushedObsidian, chestIron, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);

##  Ender Pouch
recipes.remove(<EnderStorage:enderPouch:*>);
recipes.addShaped(<EnderStorage:enderPouch>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:0>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:273>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:1>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:546>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:2>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:819>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:3>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:1092>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:4>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:1365>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:5>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:1638>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:6>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:1911>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:7>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:2184>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:8>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:2457>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:9>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:2730>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:10>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:3003>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:11>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:3276>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:12>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:3549>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:13>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:3822>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:14>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderPouch:4095>, [[ingotLimonite, <minecraft:leather>, ingotLimonite], [<minecraft:leather>, gemDimensional, <minecraft:leather>], [ingotLimonite, <minecraft:wool:15>, ingotLimonite]]);

##  Ender Tank
recipes.addShaped(<EnderStorage:enderChest:4096>, [[ingotLimonite, <minecraft:wool:0>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:4369>, [[ingotLimonite, <minecraft:wool:1>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:4642>, [[ingotLimonite, <minecraft:wool:2>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:4915>, [[ingotLimonite, <minecraft:wool:3>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:5188>, [[ingotLimonite, <minecraft:wool:4>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:5461>, [[ingotLimonite, <minecraft:wool:5>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:5734>, [[ingotLimonite, <minecraft:wool:6>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:6007>, [[ingotLimonite, <minecraft:wool:7>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:6280>, [[ingotLimonite, <minecraft:wool:8>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:6553>, [[ingotLimonite, <minecraft:wool:9>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:6826>, [[ingotLimonite, <minecraft:wool:10>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:7099>, [[ingotLimonite, <minecraft:wool:11>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:7372>, [[ingotLimonite, <minecraft:wool:12>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:7645>, [[ingotLimonite, <minecraft:wool:13>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:7918>, [[ingotLimonite, <minecraft:wool:14>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);
recipes.addShaped(<EnderStorage:enderChest:8191>, [[ingotLimonite, <minecraft:wool:15>, ingotLimonite], [crushedObsidian, <minecraft:cauldron>, crushedObsidian], [ingotLimonite, <nevermine:Moonstone>, ingotLimonite]]);

print("Initialized 'EnderStorage.zs'");
