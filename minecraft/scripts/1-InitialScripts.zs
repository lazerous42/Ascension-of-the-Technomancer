//////////////////////////////////////////////////////////////////////////////////////////////
// Name: 1-InitialScripts.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.bloodmagic.Alchemy;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thermalexpansion.Furnace;

print("Initializing '1-InitialScripts.zs'...");

<ore:nuggetManasteel>.remove(<ForbiddenMagic:FMResource:2>);
<ore:nuggetElvenElementium>.remove(<ForbiddenMagic:FMResource:4>);

##  Ore Dictionary
#   Remove botania dye
<ore:dyeWhite>.remove(<Botania:dye>);
<ore:dyeOrange>.remove(<Botania:dye:1>);
<ore:dyeMagenta>.remove(<Botania:dye:2>);
<ore:dyeLightBlue>.remove(<Botania:dye:3>);
<ore:dyeYellow>.remove(<Botania:dye:4>);
<ore:dyeLime>.remove(<Botania:dye:5>);
<ore:dyePink>.remove(<Botania:dye:6>);
<ore:dyeGray>.remove(<Botania:dye:7>);
<ore:dyeLightGray>.remove(<Botania:dye:8>);
<ore:dyeCyan>.remove(<Botania:dye:9>);
<ore:dyePurple>.remove(<Botania:dye:10>);
<ore:dyeBlue>.remove(<Botania:dye:11>);
<ore:dyeBrown>.remove(<Botania:dye:12>);
<ore:dyeGreen>.remove(<Botania:dye:13>);
<ore:dyeRed>.remove(<Botania:dye:14>);
<ore:dyeBlack>.remove(<Botania:dye:15>);
#   BoP Flesh Block OD entry Removal to prevent exploit with MRF Meat Block crafting into 9 meat ingots
<ore:blockMeatRaw>.remove(<BiomesOPlenty:flesh>);

## Bedrockium Furnace Removal
# Not sure why I can't remove these in the ExU script, here it works, there it doesn't
furnace.remove(<*>, <ExtraUtilities:cobblestone_compressed:7>);
Furnace.removeRecipe(<ExtraUtilities:cobblestone_compressed:7>);

##  Convert Three Gravel to One Flint
recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]);

##  Sugar should allow food mortar and pestals, not just the GregTech ones
recipes.addShapeless(<minecraft:sugar>, [<ore:toolMortarandpestle>, <minecraft:reeds>]);
recipes.addShapeless(<minecraft:sugar>, [<ore:pestleAndMortar>, <minecraft:reeds>]);

##  Compass (you will need many for map macking through the Bibliocraft Atlas)
recipes.remove(<minecraft:compass>);
recipes.addShapeless(<minecraft:compass>, [<gregtech:gt.metaitem.01:23354>, <gregtech:gt.metaitem.01:27032>, <minecraft:stone_pressure_plate>, <ore:craftingToolScrewdriver>]);

##   Brewing Stand
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped(<minecraft:brewing_stand>, [[null], [null, <ore:rodBlaze>], [<ore:slabStone>, <ore:slabStone>, <ore:slabStone>]]);

##  Allow powered furnace to create charcoal
Furnace.addRecipe(1600, <minecraft:log:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <minecraft:log2:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <BiomesOPlenty:logs1:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <BiomesOPlenty:logs2:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <BiomesOPlenty:logs3:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <BiomesOPlenty:logs4:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <Forestry:logs:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <Thaumcraft:blockMagicalLog:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <harvestcraft:pamMaple>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <harvestcraft:pamPaperbark>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <harvestcraft:pamCinnamon>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log>.withTag({meta: 0}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:1>.withTag({meta: 1}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:2>.withTag({meta: 2}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:3>.withTag({meta: 3}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:4>.withTag({meta: 4}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:5>.withTag({meta: 5}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:6>.withTag({meta: 6}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:7>.withTag({meta: 7}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:8>.withTag({meta: 8}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:9>.withTag({meta: 9}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:10>.withTag({meta: 10}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:11>.withTag({meta: 11}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:12>.withTag({meta: 12}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:13>.withTag({meta: 13}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:14>.withTag({meta: 14}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:15>.withTag({meta: 15}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:16>.withTag({meta: 16}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:17>.withTag({meta: 17}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:18>.withTag({meta: 18}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:19>.withTag({meta: 19}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:20>.withTag({meta: 20}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:21>.withTag({meta: 21}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:22>.withTag({meta: 22}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:23>.withTag({meta: 23}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:24>.withTag({meta: 24}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:25>.withTag({meta: 25}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:26>.withTag({meta: 26}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:27>.withTag({meta: 27}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:28>.withTag({meta: 28}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:29>.withTag({meta: 29}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:30>.withTag({meta: 30}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:31>.withTag({meta: 31}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:32>.withTag({meta: 32}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:33>.withTag({meta: 33}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:34>.withTag({meta: 34}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:35>.withTag({meta: 35}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:36>.withTag({meta: 36}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:37>.withTag({meta: 37}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:38>.withTag({meta: 38}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <ExtraTrees:log:39>.withTag({meta: 39}), <minecraft:coal:1>);
Furnace.addRecipe(1600, <witchery:witchlog:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <arsmagica2:WitchwoodLog>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <TwilightForest:tile.TFLog:*>, <minecraft:coal:1>);
Furnace.addRecipe(1600, <TwilightForest:tile.TFMagicLog:*>, <minecraft:coal:1>);

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
recipes.addShapeless(<Railcraft:brick.bloodstained:2>, [<minecraft:sandstone:2>, <ore:listAllmeatraw>]);
recipes.addShapeless(<Railcraft:brick.bloodstained:2>, [<minecraft:sandstone:2>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>]);

##   Minor things
Arcane.addShapeless("RESEARCH", <minecraft:fire_charge>*3, "ignis 10", [<ore:coal>, <ore:dustGunpowder>, <ore:shardFire>]);

print("Initialized '1-InitialScripts.zs'");
