//////////////////////////////////////////////////////////////////////////////////////////////
// Name: NVLSimpleBlocks.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'NVLSimpleBlocks.zs'...");

# Diorite
recipes.remove(<NVLSimpleBlocks:stone_diorite>);
<ore:stoneDiorite>.add(<NVLSimpleBlocks:stone_diorite>);
<ore:blockDiorite>.add(<NVLSimpleBlocks:stone_diorite>);
recipes.remove(<NVLSimpleBlocks:stone_diorite_smooth>);
<ore:stoneDioritePolished>.add(<NVLSimpleBlocks:stone_diorite_smooth>);

# Andesite
recipes.remove(<NVLSimpleBlocks:stone_andesite>);
<ore:stoneAndesite>.add(<NVLSimpleBlocks:stone_andesite>);
<ore:blockAndesite>.add(<NVLSimpleBlocks:stone_andesite>);
recipes.remove(<NVLSimpleBlocks:stone_andesite_smooth>);
<ore:stoneAndesitePolished>.add(<NVLSimpleBlocks:stone_andesite_smooth>);

# Granite
recipes.remove(<NVLSimpleBlocks:stone_granite>);
<ore:stoneGranite>.add(<NVLSimpleBlocks:stone_granite>);
<ore:blockGranite>.add(<NVLSimpleBlocks:stone_granite>);
recipes.remove(<NVLSimpleBlocks:stone_granite_smooth>);
<ore:stoneGranitePolished>.add(<NVLSimpleBlocks:stone_granite_smooth>);

# Marble
recipes.remove(<NVLSimpleBlocks:NVLMarble>);
<ore:blockMarble>.add(<NVLSimpleBlocks:NVLMarble>);

# Slopes
recipes.remove(<NVLSimpleBlocks:Slope_1>);
recipes.addShaped(<NVLSimpleBlocks:Slope_1>, [[null, null, null], 
											  [null, null, <ore:blockMarble>], 
											  [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>]]);
recipes.addShaped(<NVLSimpleBlocks:Slope_2>, [[null, null, <ore:blockMarble>], 
											  [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>],
											  [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>]]);
recipes.addShaped(<NVLSimpleBlocks:Slope_3>, [[null, null, null], 
											  [null, <ore:blockMarble>, null], 
											  [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>]]);
recipes.addShaped(<NVLSimpleBlocks:Slope_4>, [[null, <ore:blockMarble>, null], 
											  [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>],
											  [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>]]);

# Columns
recipes.remove(<NVLSimpleBlocks:Column_small>);
recipes.addShaped(<NVLSimpleBlocks:Column_small>, [[<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>], 
											  	   [null, <ore:blockMarble>, null], 
											  	   [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>]]);
recipes.remove(<NVLSimpleBlocks:Column_top>);
recipes.addShaped(<NVLSimpleBlocks:Column_top>, [[<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>], 
											  	 [null, <ore:blockMarble>, null], 
											  	 [null, <ore:blockMarble>, null]]);
recipes.remove(<NVLSimpleBlocks:Column_1>);
recipes.addShaped(<NVLSimpleBlocks:Column_1>, [[null, <ore:blockMarble>, null], 
											   [null, <ore:blockMarble>, null], 
											   [null, <ore:blockMarble>, null]]);
recipes.remove(<NVLSimpleBlocks:Column_bottom>);
recipes.addShaped(<NVLSimpleBlocks:Column_bottom>, [[null, <ore:blockMarble>, null], 
											   		[null, <ore:blockMarble>, null], 
											   		[<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>]]);

print("Initialized 'NVLSimpleBlocks.zs'");
