//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Botany.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'BiomesOPenty.zs'...");

<ore:listAllBerry>.add(<BiomesOPlenty:food>);

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

print("Initialized 'BiomesOPlenty.zs'");
