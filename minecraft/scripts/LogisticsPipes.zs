//////////////////////////////////////////////////////////////////////////////////////////////
// Name: LogisticsPipes.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'LogisticsPipes.zs'...");

val ingotElectrotineAlloy = <ore:ingotElectrotineAlloy>;

recipes.remove(<LogisticsPipes:item.PipeItemsBasicLogistics>);
recipes.addShaped(<LogisticsPipes:item.PipeItemsBasicLogistics> * 8, [[<ore:blockGlassHardened>, <minecraft:redstone_torch>, <ore:blockGlassHardened>], [<BuildCraft|Transport:item.buildcraftPipe.pipeitemscobblestone>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemscobblestone>], [ingotElectrotineAlloy, <ore:chipsetGold>, ingotElectrotineAlloy]]);

print("Initialized 'LogisticsPipes.zs'");
