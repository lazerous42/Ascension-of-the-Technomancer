//////////////////////////////////////////////////////////////////////////////////////////////
// Name: 1-InitialScripts.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.bloodmagic.Alchemy;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;

print("Initializing '1-InitialScripts.zs'...");

##  Ore Dict dimensional gems
<ore:dimensionalGem>.add(<nevermine:CoinsNether>);
<ore:dimensionalGem>.add(<nevermine:CoinsHaven>);
<ore:dimensionalGem>.add(<nevermine:CoinsAbyss>);
<ore:dimensionalGem>.add(<nevermine:CoinsPrecasian>);
<ore:dimensionalGem>.add(<nevermine:DustopiaGems>);
<ore:dimensionalGem>.add(<nevermine:LboreanGems>);
<ore:dimensionalGem>.add(<nevermine:DeeplandsGems>);
<ore:dimensionalGem>.add(<nevermine:MysteriumGems>);
<ore:dimensionalGem>.add(<nevermine:GreckonGems>);
<ore:dimensionalGem>.add(<nevermine:BarathosGems>);
<ore:dimensionalGem>.add(<nevermine:RunandorGems>);
<ore:dimensionalGem>.add(<nevermine:VoxPondsGems>);
<ore:dimensionalGem>.add(<nevermine:GardenciaGems>);
<ore:dimensionalGem>.add(<nevermine:IromineGems>);
<ore:dimensionalGem>.add(<nevermine:LunalusGems>);
<ore:dimensionalGem>.add(<nevermine:CoinsLelyetia>);

<ore:flowerMystical>.add(<Botania:flower:*>);
<ore:petalMystical>.add(<Botania:petal:*>);
<ore:shardBalance>.add(<Thaumcraft:ItemShard:6>);
<ore:nuggetManasteel>.remove(<ForbiddenMagic:FMResource:2>);
<ore:nuggetElvenElementium>.remove(<ForbiddenMagic:FMResource:4>);

# - Ore Dictionary
# -- Remove botania dye
val dyeWhite = <ore:dyeWhite>;
val dyeOrange = <ore:dyeOrange>;
val dyeMagenta = <ore:dyeMagenta>;
val dyeLightBlue = <ore:dyeLightBlue>;
val dyeYellow = <ore:dyeYellow>;
val dyeLime = <ore:dyeLime>;
val dyePink = <ore:dyePink>;
val dyeGray = <ore:dyeGray>;
val dyeLightGray = <ore:dyeLightGray>;
val dyeCyan = <ore:dyeCyan>;
val dyePurple = <ore:dyePurple>;
val dyeBlue = <ore:dyeBlue>;
val dyeBrown = <ore:dyeBrown>;
val dyeGreen = <ore:dyeGreen>;
val dyeRed = <ore:dyeRed>;
val dyeBlack = <ore:dyeBlack>;
dyeWhite.remove(<Botania:dye>);
dyeOrange.remove(<Botania:dye:1>);
dyeMagenta.remove(<Botania:dye:2>);
dyeLightBlue.remove(<Botania:dye:3>);
dyeYellow.remove(<Botania:dye:4>);
dyeLime.remove(<Botania:dye:5>);
dyePink.remove(<Botania:dye:6>);
dyeGray.remove(<Botania:dye:7>);
dyeLightGray.remove(<Botania:dye:8>);
dyeCyan.remove(<Botania:dye:9>);
dyePurple.remove(<Botania:dye:10>);
dyeBlue.remove(<Botania:dye:11>);
dyeBrown.remove(<Botania:dye:12>);
dyeGreen.remove(<Botania:dye:13>);
dyeRed.remove(<Botania:dye:14>);
dyeBlack.remove(<Botania:dye:15>);

##  Convert Three Gravel to One Flint
recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]);

##  Make Boania and Havestcraft mortar and pestle as Oreict equivalent
<ore:toolMortarandpestle>.add(<Botania:pestleAndMortar>);
<ore:pestleAndMortar>.add(<harvestcraft:mortarandpestleItem>);

##  Sugar should allow food mortar and pestals, not just the GregTech ones
recipes.addShapeless(<minecraft:sugar>, [<ore:toolMortarandpestle>, <minecraft:reeds>]);
recipes.addShapeless(<minecraft:sugar>, [<ore:pestleAndMortar>, <minecraft:reeds>]);

##  BoP Flesh Block OD entry Removal to prevent exploit with MRF Meat Block crafting into 9 meat ingots
val entry = <ore:blockMeatRaw>;
entry.remove(<BiomesOPlenty:flesh>);

##   Brewing Stand
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped(<minecraft:brewing_stand>, [[null], [null, <ore:rodBlaze>], [<ore:slabStone>, <ore:slabStone>, <ore:slabStone>]]);

##  Remove Crafted Bronze
recipes.remove(<ThermalFoundation:material:41>);
recipes.removeShapeless(<Forestry:ingotBronze>);
recipes.remove(<IC2:itemIngot:2>);

##   Web (Only obtainable via Spinning wheel from witchery)
recipes.remove(<minecraft:web>);
Crucible.removeRecipe(<minecraft:web>);
Alchemy.removeRecipe(<minecraft:web>);

##   Blood stained blocks
recipes.removeShapeless(<Railcraft:brick.bloodstained:2>);
recipes.addShapeless(<Railcraft:brick.bloodstained:2>, [<minecraft:sandstone:2>, <minecraft:beef>]);
recipes.addShapeless(<Railcraft:brick.bloodstained:2>, [<minecraft:sandstone:2>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>]);

##   Minor things
Arcane.addShapeless("RESEARCH", <minecraft:fire_charge>*3, "ignis 10", [<ore:coal>, <ore:dustGunpowder>, <ore:shardFire>]);

print("Initialized '1-InitialScripts.zs'");
