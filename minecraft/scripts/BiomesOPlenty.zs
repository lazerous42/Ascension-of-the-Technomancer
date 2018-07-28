//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Botany.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'BiomesOPenty.zs'...");

val Saw = <ore:craftingToolSaw>;
val HHammer = <ore:craftingToolHardHammer>;
val SHammer = <ore:craftingToolSoftHammer>;
val Wrench = <ore:craftingToolWrench>;
val File = <ore:craftingToolFile>;
val Screwdriver = <ore:craftingToolScrewdriver>;
val Mortar = <ore:craftingToolMortar>;
val Knife = <ore:craftingToolKnife>;

val Cattail = <BiomesOPlenty:plants:7>;

## Remove Gem Blocks that match other mods gem blocks
recipes.remove(<BiomesOPlenty:gemOre:1>);
recipes.remove(<BiomesOPlenty:gemOre:3>);
recipes.remove(<BiomesOPlenty:gemOre:5>);
recipes.remove(<BiomesOPlenty:gemOre:13>);
recipes.remove(<BiomesOPlenty:gemOre:15>);

##  Remove BoP ores from Oreict to prevent the Botania orechid from spawning them
<ore:oreRuby>.remove(<BiomesOPlenty:gemOre:2>);
<ore:orePeridot>.remove(<BiomesOPlenty:gemOre:4>);
<ore:oreTopaz>.remove(<BiomesOPlenty:gemOre:6>);
<ore:oreTanzanite>.remove(<BiomesOPlenty:gemOre:8>);
<ore:oreMalachite>.remove(<BiomesOPlenty:gemOre:10>);
<ore:oreSapphire>.remove(<BiomesOPlenty:gemOre:12>);
<ore:oreAmber>.remove(<BiomesOPlenty:gemOre:14>);

##  Emty Jar
recipes.remove(<BiomesOPlenty:jar Empty>);
recipes.addShapeless(<BiomesOPlenty:jarEmpty>, [<ore:bottleEmpty>]);
##  Glass Bottle
recipes.addShapeless(<minecraft:glass_bottle>, [<BiomesOPlenty:jarEmpty>]);
##  Dart Blower
recipes.remove(<BiomesOPlenty:dartBlower>);
recipes.addShaped(<BiomesOPlenty:dartBlower>, [[<BiomesOPlenty:plants:8>, <ore:ringWood>, <BiomesOPlenty:plants:8>], [<BiomesOPlenty:plants:8>, null, <BiomesOPlenty:plants:8>], [<BiomesOPlenty:plants:8>, <ore:ringWood>, <BiomesOPlenty:plants:8>]]);
##  Dart
recipes.remove(<BiomesOPlenty:dart>);
recipes.addShaped(<BiomesOPlenty:dart>, [[<BiomesOPlenty:plants:5>, null, null], [<BiomesOPlenty:plants:8>, null, null], [<minecraft:feather>, null, null]]);
##  Diamond Scythe
recipes.remove(<BiomesOPlenty:scytheDiamond>);
recipes.addShaped(<BiomesOPlenty:scytheDiamond>, [[<ore:gemDiamond>, <ore:plateDiamond>, HHammer], [<ore:stickWood>, File, <ore:plateDiamond>], [<ore:stickWood>, null, null]]);

##  Wool
recipes.addShaped(<minecraft:wool>, [[Cattail, Cattail, Cattail], [Cattail, Cattail, Cattail], [Cattail, Cattail, Cattail]]);

print("Initialized 'BiomesOPlenty.zs'");
