//////////////////////////////////////////////////////////////////////////////////////////////
// Name: StorageDrawers.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'StorageDrawers.zs'...");

recipes.remove(<StorageDrawers:controllerSlave>);
recipes.remove(<StorageDrawers:controller>);
recipes.remove(<StorageDrawers:compDrawers>);
recipes.addShaped(<StorageDrawers:compDrawers>, [[<ExtraUtilities:cobblestone_compressed:2>, <Railcraft:machine.alpha:8>, <ExtraUtilities:cobblestone_compressed:2>], [<minecraft:piston>, <StorageDrawers:fullDrawers4:*>, <minecraft:piston>], [<ExtraUtilities:cobblestone_compressed:2>, <Railcraft:machine.beta:12>, <ExtraUtilities:cobblestone_compressed:2>]]);
recipes.addShaped(<StorageDrawers:controller>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<minecraft:comparator>, <StorageDrawers:fullDrawers4:*>, <minecraft:comparator>], [<ore:cobblestone>, <ore:chipsetDiamond>, <ore:cobblestone>]]);
recipes.addShaped(<StorageDrawers:controllerSlave>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<minecraft:comparator>, <StorageDrawers:fullDrawers4:*>, <minecraft:comparator>], [<ore:cobblestone>, <ore:chipsetGold>, <ore:cobblestone>]]);

print("Initialized 'StorageDrawers.zs'");
