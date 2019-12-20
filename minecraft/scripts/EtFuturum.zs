//////////////////////////////////////////////////////////////////////////////////////////////
// Name: etfutrum.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'etfutrum.zs'...");

## Purpur
#  Block
recipes.remove(<etfuturum:purpur_block>);
#  Slab
recipes.remove(<etfuturum:purpur_slab>);
recipes.addShapedMirrored(<etfuturum:purpur_slab> * 6, [[<chisel:purpur>, <chisel:purpur>, <chisel:purpur>]]);
#  Pillar
recipes.remove(<etfuturum:purpur_pillar>);
recipes.addShapedMirrored(<etfuturum:purpur_pillar>, [[<etfuturum:purpur_slab>, null], 
											  		  [<etfuturum:purpur_slab>, null]]);
#  Stairs
recipes.remove(<etfuturum:purpur_stairs>);
recipes.addShapedMirrored(<etfuturum:purpur_stairs> * 4, [[<chisel:purpur>, null, null], 
											  		  	  [<chisel:purpur>, <chisel:purpur>, null],
											  		  	  [<chisel:purpur>, <chisel:purpur>, <chisel:purpur>]]);

print("Initialized 'etfutrum.zs'");
