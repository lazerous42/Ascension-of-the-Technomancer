//////////////////////////////////////////////////////////////////////////////////////////////
// Name: OpenBlocks.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'OpenBlocks.zs'...");

val ironRoter = <gregtech:gt.metaitem.02:21032>;

val gliderWing = <OpenBlocks:generic>;
val hangGlider = <OpenBlocks:hangglider>;
val fan = <OpenBlocks:fan>;

## Cursor
recipes.remove(<OpenBlocks:cursor>);

## Glider wing
recipes.remove(gliderWing);
recipes.addShaped(gliderWing, [[null, null, <nevermine:AmethystIngot>], [null, <nevermine:AmethystIngot>, <nevermine:RammerheadHide>], [<nevermine:AmethystIngot>, <nevermine:RammerheadHide>, <nevermine:RammerheadHide>]]);

## Hang Glider
recipes.remove(hangGlider);
recipes.addShaped(hangGlider, [[<OpenBlocks:generic>, <nevermine:IngotRosite>, <OpenBlocks:generic>]]);

## Fan
recipes.remove(fan);
recipes.addShaped(fan, [[ironRoter, null, null], [<minecraft:iron_ingot>, null, null], [<minecraft:stone_slab:*>, null, null]]);

print("Initialized 'OpenBlocks.zs'");
