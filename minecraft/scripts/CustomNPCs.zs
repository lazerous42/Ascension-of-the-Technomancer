//////////////////////////////////////////////////////////////////////////////////////////////
// Name: CustomNPCs.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'CustomNPCs.zs'...");

##  Val Deinitions
val bulletWood = <customnpcs:npcWoodenBullet>;
val bulletStone = <customnpcs:npcStoneBullet>;
val bulletIron = <customnpcs:npcIronBullet>;
val bulletGold = <customnpcs:npcGoldenBullet>;
val bulletDiamond = <customnpcs:npcDiamondBullet>;
val bulletEmerald = <customnpcs:npcEmeraldBullet>;

val buttonWood = <minecraft:wooden_button>;
val buttonStone = <minecraft:stone_button>;
val nuggetIron = <ore:nuggetIron>;
val nuggetGold = <ore:nuggetGold>;
val nuggetDiamond = <ore:nuggetDiamond>;
val nuggetEmerald = <ore:nuggetEmerald>;

## Remove bullet recipes that collide with nugget making
recipes.removeShaped(bulletWood);
recipes.addShapeless(bulletWood, [buttonWood]);
recipes.removeShaped(bulletStone);
recipes.addShapeless(bulletStone, [buttonStone]);

recipes.removeShaped(bulletIron);
recipes.addShapeless(bulletIron, [nuggetIron]);
recipes.removeShaped(bulletGold);
recipes.addShapeless(bulletGold, [nuggetGold]);

recipes.removeShaped(bulletDiamond);
recipes.addShapeless(bulletDiamond, [nuggetDiamond]);
recipes.removeShaped(bulletEmerald);
recipes.addShapeless(bulletEmerald, [nuggetEmerald]);

print("Initialized 'CustomNPCs.zs'");
