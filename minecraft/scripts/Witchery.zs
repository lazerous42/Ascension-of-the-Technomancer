//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Witchery.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.bloodmagic.Alchemy;
import mods.thaumcraft.Crucible;
import mods.botania.ManaInfusion;

print("Initializing 'Witchery.zs'...");

## Anointing Paste
recipes.remove(<witchery:ingredient:153>);
recipes.addShaped(<witchery:ingredient:153>, [[<witchery:seedsartichoke>, <ore:petalCyan>, <witchery:seedsmandrake>], [<ore:petalCyan>, <minecraft:potion>, <ore:petalCyan>], [<witchery:seedsbelladonna>, <ore:petalCyan>, <witchery:seedssnowbell>]]);
recipes.addShaped(<witchery:ingredient:153>, [[<witchery:seedssnowbell>, <ore:petalCyan>, <witchery:seedsartichoke>], [<ore:petalCyan>, <minecraft:potion>, <ore:petalCyan>], [<witchery:seedsmandrake>, <ore:petalCyan>, <witchery:seedsbelladonna>]]);
recipes.addShaped(<witchery:ingredient:153>, [[<witchery:seedsbelladonna>, <ore:petalCyan>, <witchery:seedssnowbell>], [<ore:petalCyan>, <minecraft:potion>, <ore:petalCyan>], [<witchery:seedsartichoke>, <ore:petalCyan>, <witchery:seedsmandrake>]]);
recipes.addShaped(<witchery:ingredient:153>, [[<witchery:seedsmandrake>, <ore:petalCyan>, <witchery:seedsbelladonna>], [<ore:petalCyan>, <minecraft:potion>, <ore:petalCyan>], [<witchery:seedssnowbell>, <ore:petalCyan>, <witchery:seedsartichoke>]]);

##  Broooooom
recipes.remove(<witchery:ingredient:8>);
recipes.addShaped(<witchery:ingredient:8>, [[null, <ore:livingwoodTwig>], [null, <ore:livingwoodTwig>], [<witchery:witchsapling>, <witchery:witchsapling:1>, <witchery:witchsapling:2>]]);

##  Attuned Stone
recipes.remove(<witchery:ingredient:10>);
recipes.addShaped(<witchery:ingredient:10>, [[<witchery:ingredient:34>],[<ore:manaDiamond>],[<minecraft:lava_bucket>]]);

##  Waystone
recipes.remove(<witchery:ingredient:12>);
ManaInfusion.addInfusion(<witchery:ingredient:12>*4, <minecraft:flint>, 1500);

##  Fume Filter
recipes.remove(<witchery:ingredient:73>);
recipes.addShaped(<witchery:ingredient:73>, [[<Botania:manaGlass>, <Thaumcraft:ItemResource:8>, <Botania:manaGlass>], [<ore:ingotElvenElementium>, <witchery:ingredient:11>, <ore:ingotElvenElementium>], [<Botania:manaGlass>, <Thaumcraft:ItemResource:8>, <Botania:manaGlass>]]);

##  Quartz Sphere 
recipes.remove(<witchery:ingredient:92>);
recipes.addShaped(<witchery:ingredient:92>, [[<ore:gemQuartz>, <ore:blockQuartz>, <ore:gemQuartz>], [<ore:blockQuartz>, <Botania:manaGlass>, <ore:blockQuartz>], [<ore:gemQuartz>, <ore:blockQuartz>, <ore:gemQuartz>]]);

##  Null Catalyst
recipes.remove(<witchery:ingredient:130>);
Crucible.addRecipe("RESEARCH", <witchery:ingredient:130>, <minecraft:nether_star>, "ordo 8, praecantatio 8, mortuus 8, alienis 8");
Alchemy.addRecipe(<witchery:ingredient:130>*2, [<witchery:ingredient:130>, <AWWayofTime:bloodMagicBaseAlchemyItems:3>, <minecraft:blaze_powder>, <minecraft:magma_cream>], 4, 2500);

##  Pentacle
recipes.remove(<witchery:ingredient:151>);
recipes.addShaped(<witchery:ingredient:151>, [[<witchery:ingredient:149>, <witchery:ingredient:150>, <witchery:ingredient:149>], [<witchery:ingredient:150>, <ore:manaDiamond>, <witchery:ingredient:150>], [<witchery:ingredient:149>, <witchery:ingredient:150>, <witchery:ingredient:149>]]);

# - General
##  Altar
recipes.remove(<witchery:altar>);
recipes.addShaped(<witchery:altar>*3, [[<witchery:ingredient:32>, <minecraft:potion>, <witchery:ingredient:31>], [<minecraft:stonebrick>, <witchery:ingredient:10>, <minecraft:stonebrick>], [<minecraft:stonebrick>, <AWWayofTime:Altar>, <minecraft:stonebrick>]]);

##  Arthana
recipes.remove(<witchery:arthana>);
recipes.addShaped(<witchery:arthana>, [[null, <ore:ingotGold>, null], [<ore:nuggetGold>, <ore:manaPearl>, <ore:nuggetGold>], [null, <ore:livingwoodTwig>]]);

##  Circle Talisman
recipes.remove(<witchery:circletalisman>);
recipes.addShaped(<witchery:circletalisman>, [[<ore:nuggetGold>, <ore:ingotGold>, <ore:nuggetGold>], [<ore:ingotGold>, <ore:manaDiamond>, <ore:ingotGold>], [<ore:nuggetGold>, <ore:ingotGold>, <ore:nuggetGold>]]);

##  Deviner
recipes.remove(<witchery:divinerwater>);
recipes.addShaped(<witchery:divinerwater>, [[<ore:shardWater>, <ore:livingwoodTwig>, <ore:shardWater>], [<AWWayofTime:aquasalus>, <ore:livingwoodTwig>, <AWWayofTime:aquasalus>], [<ore:livingwoodTwig>, <witchery:ingredient:37>, <ore:livingwoodTwig>]]);
recipes.remove(<witchery:divinerlava>);
recipes.addShaped(<witchery:divinerlava>, [[<ore:shardFire>, <ore:rodBlaze>, <ore:shardFire>], [<AWWayofTime:incendium>, <witchery:divinerwater>, <AWWayofTime:incendium>], [<ore:rodBlaze>, <AWWayofTime:incendium>, <ore:rodBlaze>]]);

##  Distillery
recipes.remove(<witchery:distilleryidle>);
recipes.addShaped(<witchery:distilleryidle>, [[<witchery:ingredient:34>, <ore:ingotManasteel>, <witchery:ingredient:36>], [<ore:ingotManasteel>, <Thaumcraft:blockMetalDevice:1>, <ore:ingotManasteel>], [<ore:ingotGold>, <witchery:ingredient:10>, <ore:ingotGold>]]);

##  Earmuffs
recipes.remove(<witchery:earmuffs>);
recipes.addShaped(<witchery:earmuffs>, [[<witchery:ingredient:72>, <witchery:ingredient:72>, <witchery:ingredient:72>], [<witchery:ingredient:72>, null, <witchery:ingredient:72>], [<ore:blockWool>, null, <ore:blockWool>]]);

##  Kettle
recipes.remove(<witchery:kettle>);
recipes.addShaped(<witchery:kettle>, [[<ore:livingwoodTwig>, <ore:manaString>, <ore:livingwoodTwig>], [<ore:manaString>, <witchery:ingredient:10>, <ore:manaString>], [null, <minecraft:cauldron>]]);

##  Taglock Kits
recipes.remove(<witchery:taglockkit>);
recipes.addShaped(<witchery:taglockkit>, [[<Botania:vial:1>, <witchery:ingredient:7>], [<Thaumcraft:ItemResource:14>, <ore:itemSkull>]]);

##  Poppet Shelf Compass
recipes.remove(<witchery:shelfcompass>);
recipes.addShaped(<witchery:shelfcompass>, [[<ore:ingotGold>, <ore:manaDiamond>, <ore:ingotGold>], [<ore:manaDiamond>, <minecraft:clock>, <ore:manaDiamond>], [<ore:ingotGold>, <witchery:ingredient:130>, <ore:ingotGold>]]);

##  Witches Oven
recipes.remove(<witchery:witchesovenidle>);
recipes.addShaped(<witchery:witchesovenidle>, [[null, <ore:barsIron>], [<ore:ingotManasteel>, <Thaumcraft:blockStoneDevice>, <ore:ingotManasteel>], [<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCrystal:1>, <Thaumcraft:blockCosmeticSolid:6>]]);

##  Wolf's Altar
recipes.remove(<witchery:wolfaltar>);
recipes.addShaped(<witchery:wolfaltar>, [[null, <witchery:wolfhead:*>], [<witchery:wolfhead:*>, <Thaumcraft:blockStoneDevice:2>, <witchery:wolfhead:*>], [<Thaumcraft:blockStoneDevice:2>, <witchery:ingredient:156>, <Thaumcraft:blockStoneDevice:2>]]);

print("Initialized 'Witchery.zs'");
