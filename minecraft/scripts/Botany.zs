//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Botany.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Botany.zs'...");

recipes.remove(<Botany:trowelIron>);
recipes.remove(<Botany:trowelGold>);
recipes.remove(<Botany:trowelDiamond>);
recipes.remove(<Botany:trowelStone>);
recipes.remove(<Botany:trowelWood>);
recipes.addShaped(<Botany:trowelGold>, [[null, null, <minecraft:gold_ingot>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<Botany:trowelDiamond>, [[null, null, <minecraft:diamond>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<Botany:trowelStone>, [[null, null, <ore:cobblestone>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<Botany:trowelIron>, [[null, null, <minecraft:iron_ingot>], [null, <minecraft:stick>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<Botany:trowelWood>, [[null, null, <minecraft:planks>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);

print("Initialized 'Botany.zs'");
