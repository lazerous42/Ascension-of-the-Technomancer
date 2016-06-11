//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Chisel2.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Chisel2.zs'...");
##  Val Deinitions
val stone = <ore:stone>;
val enderPearl = <minecraft:ender_pearl>;

val voidStone = <chisel:voidstone:1>;

## Void Stone
recipes.remove(voidStone);
recipes.addShaped(voidStone *8, [[stone, enderPearl, stone], [stone, stone, stone], [stone, stone, stone]]);

print("Initialized 'Chisel2.zs'");
