//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Natura.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import minetweaker.item.IItemStack;

print("Initializing 'Natura.zs'...");

## Val Statements
val mushroomStew = <minecraft:mushroom_stew>;

## OreDict Entries
<ore:listAllberry>.add(<Natura:berry>);
<ore:listAllfruit>.add(<Natura:berry>);
<ore:listAllfruit>.add(<Natura:berry:2>);
<ore:listAllberry>.add(<Natura:berry:2>);
<ore:listAllfruit>.add(<Natura:berry:1>);
<ore:listAllberry>.add(<Natura:berry:1>);

##  Log Fixes
var logs = [<Natura:tree>, 
	    <Natura:tree:1>, 
	    <Natura:tree:2>, 
	    <Natura:redwood:1>, 
	    <Natura:bloodwood>, 
	    <Natura:tree:3>, 
	    <Natura:Rare Tree>, 
	    <Natura:Rare Tree:1>, 
	    <Natura:Rare Tree:2>, 
	    <Natura:Rare Tree:3>, 
	    <Natura:willow>, 
	    <Natura:Dark Tree>, 
	    <Natura:Dark Tree:1>] as IItemStack[];
for meta, log in logs {
    recipes.remove(<Natura:planks>.definition.makeStack(meta));
    recipes.addShapeless(<Natura:planks>.definition.makeStack(meta) * 2, [log]);
    recipes.addShapedMirrored(<Natura:planks>.definition.makeStack(meta) * 4, [[<ore:craftingToolSaw>, null], [log, null]]);
}

##  Stick Fixes
var stickMeta = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] as int[];
for meta in stickMeta {
    recipes.remove(<Natura:natura.stick>.definition.makeStack(meta));
    recipes.addShapedMirrored(<Natura:natura.stick>.definition.makeStack(meta) * 2, [[<Natura:planks>.definition.makeStack(meta), null], [<Natura:planks>.definition.makeStack(meta), null]]);
    recipes.addShapedMirrored(<Natura:natura.stick>.definition.makeStack(meta) * 4, [[<ore:craftingToolSaw>, null, null], [<Natura:planks>.definition.makeStack(meta), null, null], [<Natura:planks>.definition.makeStack(meta), null, null]]);
}


##  Remove Broken Mushroom Stew (incompatible with Spice of Life)
recipes.removeShapeless(<Natura:natura.stewbowl>);
recipes.removeShapeless(mushroomStew, [<ore:listAllmushroom>, <ore:listAllmushroom>, <minecraft:bowl>]);
recipes.addShapeless(mushroomStew, [<ore:listAllmushroom>, <ore:listAllmushroom>, <minecraft:bowl>]);
recipes.addShapeless(mushroomStew, [<Natura:Glowshroom>, <Natura:Glowshroom:1>, <Natura:Glowshroom:2>, <minecraft:bowl>]);

##  Flint and Blaze Recipe
recipes.addShaped(<Natura:natura.flintandblaze>, [[<minecraft:blaze_rod>, null], [null, <minecraft:flint>]]);

print("Initialized 'Natura.zs'");
