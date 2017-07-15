//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Railcraft.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.railcraft.RockCrusher;
import mods.railcraft.Rolling;
import mods.thaumcraft.Infusion;
import mods.ic2.Compressor;

print("Initializing 'Railcraft.zs'...");

##  Val Definitions
val glass = <minecraft:glass>;
val ingotIron = <ore:ingotIron>;
val ingotGold = <ore:ingotGold>;
val piston = <minecraft:piston>;
val pickaxeDiamond = <minecraft:diamond_pickaxe>;
val blockRedstone = <minecraft:redstone_block>;
val bucketLava = <minecraft:lava_bucket>;

val ingotBrass = <ore:ingotBrass>;
val ingotEnderium = <ore:ingotEnderium>;
val gearIron = <ore:gearIron>;
val gearGoldPlated = <Railcraft:part.gear:0>;
val gearGold = <ore:gearGold>;
val gearSteel = <ore:gearSteel>;
val gearMithril = <ore:gearMithril>;
val gearEnderium = <ore:gearEnderium>;
val chipsetIron = <ore:chipsetIron>;
val chipsetGold = <ore:chipsetGold>;
val tubeTin = <Forestry:thermionicTubes:1>;
val circuitBoardRefined = <Forestry:chipsets:2>;
val circuitBoardIntricate = <Forestry:chipsets:3>;

val itemCoalCoke = <Railcraft:fuel.coke>;
val blockCoalCoke = <Railcraft:cube>;
val bottleCreosote = <Railcraft:fluid.creosote.bottle>;
val crushedObsidian = <Railcraft:cube:4>;
val hobbyistSteamEngine = <Railcraft:machine.beta:7>;
val commercialSteamEngine = <Railcraft:machine.beta:8>;
val industrialSteamEngine = <Railcraft:machine.beta:9>;
val firestoneOre = <Railcraft:ore:5>;
val firestoneRaw = <Railcraft:firestone.raw>;
val firestoneCut = <Railcraft:firestone.cut>;
val firestoneRefined = <Railcraft:firestone.refined:5000>;

##  OreDict Entries
<ore:gearSteel>.add(<Railcraft:part.gear:2>);
<ore:bottleCreosote>.add(bottleCreosote);

##  Remove Non-GregTech Gears
recipes.remove(<Railcraft:part.gear>);
recipes.remove(<Railcraft:part.gear:1>);
recipes.remove(<Railcraft:part.gear:2>);

## Coal Coke Block
recipes.remove(blockCoalCoke);
Compressor.addRecipe(blockCoalCoke, itemCoalCoke * 9);

## Firestone Fix (Disabling Railcraft firestone oregen in favor of CoFH oregen causes recipes not to generate)
RockCrusher.addRecipe(firestoneOre, false, false, [firestoneRaw], [1.0]);
recipes.remove(firestoneCut);
recipes.remove(firestoneRefined);
recipes.addShaped(firestoneCut,[[null, pickaxeDiamond, null], [pickaxeDiamond, firestoneRaw, pickaxeDiamond], [null, pickaxeDiamond, null]]);
recipes.addShaped(firestoneRefined, [[bucketLava, blockRedstone, bucketLava], [blockRedstone, firestoneCut, blockRedstone], [bucketLava, blockRedstone, bucketLava]]);

##  Anchors
recipes.remove(<Railcraft:machine.alpha>);
recipes.remove(<Railcraft:machine.alpha:2>);
recipes.remove(<Railcraft:machine.alpha:13>);
recipes.remove(<Railcraft:machine.beta:10>);

Infusion.addRecipe("RESEARCH", <Railcraft:machine.alpha:13>, [<Thaumcraft:blockCosmeticSolid:1>, <Botania:manaResource:4>, <Thaumcraft:blockCosmeticSolid:1>, <Botania:manaResource:4>, <Thaumcraft:blockCosmeticSolid:1>, <Botania:manaResource:4>, <Thaumcraft:blockCosmeticSolid:1>, <Botania:manaResource:4>], "tempus 16, machina 16, alienis 16, metallum 16", <Railcraft:machine.alpha>, 4);
recipes.addShaped(<Railcraft:machine.alpha:2>, [[crushedObsidian, gearMithril, crushedObsidian], [ingotEnderium, <minecraft:dye:4>, ingotEnderium], [crushedObsidian, <ore:dimensionalGem>, crushedObsidian]]);
recipes.addShaped(<Railcraft:machine.alpha:13>, [[crushedObsidian, gearMithril, crushedObsidian], [ingotEnderium, <ore:gemDiamond>, ingotEnderium], [crushedObsidian, <ore:dimensionalGem>, crushedObsidian]]);
recipes.addShaped(<Railcraft:machine.beta:10>,[[null,<minecraft:ender_pearl>,null],[null,<Thaumcraft:blockCosmeticSolid:1>,null],[crushedObsidian,<arsmagica2:vinteumOre:7>,crushedObsidian]]);

##  Engines
recipes.remove(hobbyistSteamEngine);
recipes.remove(commercialSteamEngine);
recipes.remove(industrialSteamEngine);
recipes.addShaped(hobbyistSteamEngine,[[ingotBrass, ingotBrass, ingotBrass], [null, glass, null], [gearGold, piston, gearGold]]);
recipes.addShaped(commercialSteamEngine, [[ingotBrass, ingotBrass, ingotBrass], [circuitBoardRefined, chipsetIron, circuitBoardRefined], [gearIron, piston, gearIron]]);
recipes.addShaped(industrialSteamEngine, [[ingotBrass, ingotBrass, ingotBrass], [circuitBoardIntricate, chipsetGold, circuitBoardIntricate], [gearSteel, piston, gearSteel]]);

##  Rolling machine
recipes.remove(<Railcraft:machine.alpha:8>);
recipes.addShaped(<Railcraft:machine.alpha:8>, [[piston, gearIron, piston], [gearIron, tubeTin, gearIron], [piston, gearIron, piston]]);

##  Remove Wooden Tie Crafting
recipes.remove(<Railcraft:part.tie>);

##  Wooden Tracks
recipes.remove(<Railcraft:part.rail:2>);
Rolling.addShapeless(<Railcraft:part.rail:2> * 6, [<Railcraft:part.tie>, ingotIron]);

print("Initialized 'Railcraft.zs'");
