//////////////////////////////////////////////////////////////////////////////////////////////
// Name: OpenBlocks.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'OpenBlocks.zs'...");

## Glider wing
recipes.remove(<OpenBlocks:generic>);
recipes.addShaped(<OpenBlocks:generic>, [[null, null, <nevermine:AmethystIngot>], [null, <nevermine:AmethystIngot>, <nevermine:RammerheadHide>], [<nevermine:AmethystIngot>, <nevermine:RammerheadHide>, <nevermine:RammerheadHide>]]);

## Hang Glider
recipes.remove(<OpenBlocks:hangglider>);
recipes.addShaped(<OpenBlocks:hangglider>, [[<OpenBlocks:generic>, <nevermine:IngotRosite>, <OpenBlocks:generic>]]);

print("Initialized 'OpenBlocks.zs'");
