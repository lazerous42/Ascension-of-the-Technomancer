//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Botania.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.botania.ElvenTrade;
import mods.botania.Lexicon;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;

print("Initializing 'Botania.zs'...");
##  Val Definitions
val nuggetMithril = <ore:nuggetMithril>;
val ingotMithril = <ore:ingotMithril>;
val blockMithril = <ore:blockMithril>;
val nuggetGold = <ore:nuggetGold>;
val blockIron = <ore:blockIron>;
val toughFabric = <ImmersiveEngineering:material:4>;
val dustRedstone = <minecraft:redstone>;
val dustGlowstone = <minecraft:glowstone_dust>;
val dustElectrotine = <ProjRed|Core:projectred.core.part:56>;

val manaCookie = <Botania:manaCookie>;
val flowerMystical = <ore:flowerMystical>;
val ingotManaSteel = <ore:ingotManasteel>;
val manaweaveCloth = <Botania:manaResource:22>;
val manaPowder = <Botania:manaResource:23>;

##  Dark Quartz OreDict
#-  Use Thaumic Tinkerer recipe for Flugel Tiara 
<ore:quartzDark>.add(<ThaumicTinkerer:darkQuartzItem>);
recipes.remove(<Botania:quartz>);

##  Manasteel
ManaInfusion.removeRecipe(<Botania:manaResource>);
ManaInfusion.removeRecipe(<Botania:storage>);
ManaInfusion.addInfusion(<Botania:manaResource>, ingotMithril, 850);
ManaInfusion.addInfusion(<Botania:manaResource:17>, nuggetMithril, 82);
ManaInfusion.addInfusion(<Botania:storage>, blockMithril, 6750);

# - General
##  Lexica Botania
recipes.remove(<Botania:lexicon>);
recipes.addShaped(<Botania:lexicon>, [[nuggetGold, flowerMystical, nuggetGold], [flowerMystical, <minecraft:book>, flowerMystical], [nuggetGold, flowerMystical, nuggetGold]]);

##  Manaweave Cloth
recipes.remove(manaweaveCloth);
ManaInfusion.addInfusion(manaweaveCloth, toughFabric, 1000);

##  Electrotine -> Redstone -> Glowstone loop
ManaInfusion.removeRecipe(dustRedstone);
ManaInfusion.addAlchemy(dustRedstone, dustElectrotine, 500);
ManaInfusion.addAlchemy(dustElectrotine, dustGlowstone, 500);

##  Mana Powder
ManaInfusion.addInfusion(manaPowder, dustElectrotine, 1000);

##  Petal Apothocary
recipes.remove(<Botania:altar>);
recipes.addShaped(<Botania:altar>, [[<ore:slabCobblestone>, <Botania:petal:*>, <ore:slabCobblestone>], [null, <minecraft:cauldron>], [<ore:compressedCobblestone2x>, <ore:compressedCobblestone2x>, <ore:compressedCobblestone2x>]]);

##  Glimmering Livingwood
recipes.remove(<Botania:livingwood:5>);
recipes.addShaped(<Botania:livingwood:5>, [[<ore:nuggetTerrasteel>, <ore:dustGlowstone>, <ore:nuggetTerrasteel>], [<ore:dustGlowstone>, <Botania:livingwood>, <ore:dustGlowstone>], [<ore:nuggetTerrasteel>, <ore:dustGlowstone>, <ore:nuggetTerrasteel>]]);

##  Elven Gateway Core
recipes.remove(<Botania:alfheimPortal>);
recipes.addShaped(<Botania:alfheimPortal>, [[<ore:livingwood>, <Thaumcraft:ItemResource:15>, <ore:livingwood>], [<witchery:ingredient:67>, <Botania:storage:1>, <witchery:ingredient:43>], [<ore:livingwood>, <AWWayofTime:masterBloodOrb>, <ore:livingwood>]]);

##  Mana Lenses
recipes.remove(<Botania:lens>);
recipes.addShaped(<Botania:lens>, [[<ore:nuggetManasteel>, ingotManaSteel, <ore:nuggetManasteel>], [ingotManaSteel, <witchery:ingredient:92>, ingotManaSteel], [<ore:nuggetManasteel>, ingotManaSteel, <ore:nuggetManasteel>]]);
recipes.remove(<Botania:lens:10>);
recipes.addShaped(<Botania:lens:10>, [[dustRedstone, blockIron, dustRedstone], [<ore:ingotGold>, <Botania:lens>, <ore:ingotGold>], [dustRedstone, blockIron, dustRedstone]]);

##  Redstring
recipes.remove(<Botania:manaResource:12>);
recipes.addShapeless(<Botania:manaResource:12>, [<ore:manaString>, <ore:elvenPixieDust>, <ore:bEnderAirBottle>, <ore:redstoneRoot>, <witchery:ingredient:40>, <Thaumcraft:ItemZombieBrain>]);

# - Spark Augments
recipes.remove(<Botania:sparkUpgrade:*>);
recipes.addShaped(<Botania:sparkUpgrade>, [[null, <ore:elvenPixieDust>], [ingotManaSteel, <AWWayofTime:imbuedSlate>, ingotManaSteel], [null, <ore:runeWaterB>]]);
recipes.addShaped(<Botania:sparkUpgrade:1>, [[null, <ore:elvenPixieDust>], [ingotManaSteel, <AWWayofTime:imbuedSlate>, ingotManaSteel], [null, <ore:runeFireB>]]);
recipes.addShaped(<Botania:sparkUpgrade:2>, [[null, <ore:elvenPixieDust>], [ingotManaSteel, <AWWayofTime:imbuedSlate>, ingotManaSteel], [null, <ore:runeEarthB>]]);
recipes.addShaped(<Botania:sparkUpgrade:3>, [[null, <ore:elvenPixieDust>], [ingotManaSteel, <AWWayofTime:imbuedSlate>, ingotManaSteel], [null, <ore:runeAirB>]]);

##  Pylons
recipes.remove(<Botania:pylon>);
recipes.addShaped(<Botania:pylon>, [[<ore:nuggetManasteel>, <ore:ingotGold>, <ore:nuggetManasteel>], [ingotManaSteel, <ore:manaDiamond>, ingotManaSteel], [<ore:nuggetManasteel>, <ore:ingotGold>, <ore:nuggetManasteel>]]);
recipes.remove(<Botania:pylon:1>);
recipes.addShaped(<Botania:pylon:1>, [[<ore:nuggetTerrasteel>, <witchery:ingredient:67>, <ore:nuggetTerrasteel>], [<ore:ingotTerrasteel>, <Botania:pylon>, <ore:ingotTerrasteel>], [<ore:nuggetTerrasteel>, <ore:pearlEnderEye>, <ore:nuggetTerrasteel>]]);
recipes.remove(<Botania:pylon:2>);
mods.thaumcraft.Infusion.addRecipe("RESEARCH", <Botania:pylon:1>, [<Botania:manaResource:9>, <Botania:manaResource:7>, <AWWayofTime:bloodMagicBaseItems:27>, <Botania:manaResource:7>, <Botania:manaResource:8>, <Botania:manaResource:7>, <AWWayofTime:bloodMagicBaseItems:27>, <Botania:manaResource:7>], "praecantatio 32, fabrico 32, metallum 32, motus 32", <Botania:pylon:2>, 4);

##  Catalysts
recipes.remove(<Botania:alchemyCatalyst>);
recipes.addShaped(<Botania:alchemyCatalyst>, [[<ore:livingrock>, <witchery:chalkheart>, <ore:livingrock>], [<AWWayofTime:blockWritingTable>, <Thaumcraft:ItemResource:14>, <AWWayofTime:blockWritingTable>], [<ore:livingrock>, <ore:blockBlaze>, <ore:livingrock>]]);
recipes.remove(<Botania:conjurationCatalyst>);
recipes.addShaped(<Botania:conjurationCatalyst>, [[<ore:livingrock>, <witchery:ingredient:130>, <ore:livingrock>], [<Botania:pylon:1>, <Botania:alchemyCatalyst>, <Botania:pylon:1>], [<ore:livingrock>, <witchery:ingredient:113>, <ore:livingrock>]]);

# - Runes
##  Tier 1
RuneAltar.removeRecipe(<Botania:rune>);
RuneAltar.addRecipe(<Botania:rune>*3, [ingotManaSteel, ingotManaSteel, ingotManaSteel, <minecraft:dye:15>, <ore:cropSugarcane>, <minecraft:fishing_rod>, <ore:shardWater>], 8500);
RuneAltar.removeRecipe(<Botania:rune:1>);
RuneAltar.addRecipe(<Botania:rune:1>*3, [ingotManaSteel, ingotManaSteel, ingotManaSteel, <minecraft:nether_brick>, <ore:blockBlaze>, <minecraft:nether_wart>, <ore:shardFire>], 8500);
RuneAltar.removeRecipe(<Botania:rune:2>);
RuneAltar.addRecipe(<Botania:rune:2>*3, [ingotManaSteel, ingotManaSteel, ingotManaSteel, <ore:stone>, <ore:blockCoal>, <ore:listAllmushroom>, <ore:shardEarth>], 8500);
RuneAltar.removeRecipe(<Botania:rune:3>);
RuneAltar.addRecipe(<Botania:rune:3>*3, [ingotManaSteel, ingotManaSteel, ingotManaSteel, <minecraft:carpet>, <minecraft:feather>, <minecraft:string>, <ore:shardAir>], 8500);
RuneAltar.removeRecipe(<Botania:rune:8>);
RuneAltar.addRecipe(<Botania:rune:8>, [ingotManaSteel, ingotManaSteel, ingotManaSteel, <ore:manaDiamond>, <ore:manaPearl>, <Botania:quartz:1>, <Thaumcraft:ItemShard:6>], 8500);

##  Tier 2
RuneAltar.removeRecipe(<Botania:rune:4>);
RuneAltar.addRecipe(<Botania:rune:4>, [<ore:runeWaterB>, <ore:runeFireB>, <witchery:witchsapling>, <witchery:witchsapling:1>, <witchery:witchsapling:2>, <minecraft:wheat>, <AWWayofTime:imbuedSlate>], 4000);
RuneAltar.removeRecipe(<Botania:rune:5>);
RuneAltar.addRecipe(<Botania:rune:5>, [<ore:runeEarthB>, <ore:runeAirB>, <ore:sand>, <ore:sand>, <ore:slimeball>, <ore:cropMelon>, <AWWayofTime:imbuedSlate>], 4000);
RuneAltar.removeRecipe(<Botania:rune:6>);
RuneAltar.addRecipe(<Botania:rune:6>, [<ore:runeFireB>, <ore:runeAirB>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <minecraft:spider_eye>, <AWWayofTime:imbuedSlate>], 4000);
RuneAltar.removeRecipe(<Botania:rune:7>);
RuneAltar.addRecipe(<Botania:rune:7>, [<ore:runeWaterB>, <ore:runeEarthB>, <ore:blockSnow>, <ore:blockSnow>, <ore:blockWool>, <minecraft:cake>, <AWWayofTime:imbuedSlate>], 4000);

##  Tier 3
RuneAltar.removeRecipe(<Botania:rune:9>);
RuneAltar.addRecipe(<Botania:rune:9>*2, [<ore:runeAirB>, <ore:runeSummerB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
RuneAltar.removeRecipe(<Botania:rune:10>);
RuneAltar.addRecipe(<Botania:rune:10>*2, [<ore:runeFireB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
RuneAltar.removeRecipe(<Botania:rune:11>);
RuneAltar.addRecipe(<Botania:rune:11>*2, [<ore:runeWaterB>, <ore:runeSpringB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
RuneAltar.removeRecipe(<Botania:rune:12>);
RuneAltar.addRecipe(<Botania:rune:12>*2, [<ore:runeAirB>, <ore:runeAutumnB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
RuneAltar.removeRecipe(<Botania:rune:13>);
RuneAltar.addRecipe(<Botania:rune:13>*2, [<ore:runeEarthB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
RuneAltar.removeRecipe(<Botania:rune:14>);
RuneAltar.addRecipe(<Botania:rune:14>*2, [<ore:runeWaterB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);
RuneAltar.removeRecipe(<Botania:rune:15>);
RuneAltar.addRecipe(<Botania:rune:15>*2, [<ore:runeFireB>, <ore:runeSummerB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>], 6500);

# - Equiptment
##  Manaweave Armor
recipes.remove(<Botania:manaweaveHelm>);
recipes.addShaped(<Botania:manaweaveHelm>, [[<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_helmet>, <ore:clothManaweave>]]);
recipes.remove(<Botania:manaweaveChest>);
recipes.addShaped(<Botania:manaweaveChest>, [[<ore:clothManaweave>, <minecraft:leather_chestplate>, <ore:clothManaweave>], [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>]]);
recipes.remove(<Botania:manaweaveLegs>);
recipes.addShaped(<Botania:manaweaveLegs>, [[<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_leggings>, <ore:clothManaweave>], [<ore:clothManaweave>, null, <ore:clothManaweave>]]);
recipes.remove(<Botania:manaweaveBoots>);
recipes.addShaped(<Botania:manaweaveBoots>, [[<ore:clothManaweave>, null, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_boots>, <ore:clothManaweave>]]);

##  Manasteel Armor
recipes.remove(<Botania:manasteelHelm>);
recipes.addShaped(<Botania:manasteelHelm>, [[ingotManaSteel, ingotManaSteel, ingotManaSteel], [ingotManaSteel, <Botania:manaweaveHelm>, ingotManaSteel]]);
recipes.remove(<Botania:manasteelChest>);
recipes.addShaped(<Botania:manasteelChest>, [[ingotManaSteel, <Botania:manaweaveChest>, ingotManaSteel], [ingotManaSteel, ingotManaSteel, ingotManaSteel], [ingotManaSteel, ingotManaSteel, ingotManaSteel]]);
recipes.remove(<Botania:manasteelLegs>);
recipes.addShaped(<Botania:manasteelLegs>, [[ingotManaSteel, ingotManaSteel, ingotManaSteel], [ingotManaSteel, <Botania:manaweaveLegs>, ingotManaSteel], [ingotManaSteel, null, ingotManaSteel]]);
recipes.remove(<Botania:manasteelBoots>);
recipes.addShaped(<Botania:manasteelBoots>, [[ingotManaSteel, null, ingotManaSteel], [ingotManaSteel, <Botania:manaweaveBoots>, ingotManaSteel]]);

##  Mana Tablet
recipes.remove(<Botania:manaTablet:1000>);
RuneAltar.addRecipe(<Botania:manaTablet>.withTag({mana: 500000}), [<Thaumcraft:blockJar>, <AWWayofTime:reinforcedSlate>, <ore:runeAirB>, <ore:runeEarthB>, <ore:runeManaB>, <ore:runeFireB>, <ore:runeWaterB>, <AWWayofTime:reinforcedSlate>], 500000);

##  Mana Cookie Cost
ManaInfusion.removeRecipe(manaCookie);
mods.botania.ManaInfusion.addInfusion(manaCookie, <minecraft:cookie>, 10000);

##  Baubles
recipes.remove(<Botania:bloodPendant>);
recipes.addShaped(<Botania:bloodPendant>, [[null, <nevermine:IngotSapphire>, null], [<nevermine:IngotSapphire>, <Botania:manaResource:5>, <nevermine:IngotSapphire>], [<Botania:manaResource:1>, <nevermine:IngotSapphire>, null]]);
recipes.remove(<Botania:flightTiara>);
recipes.addShaped(<Botania:flightTiara>, [[<Botania:manaResource:5>, <Botania:manaResource:5>, <Botania:manaResource:5>], [<Botania:manaResource:7>, <Botania:manaResource:5>, <Botania:manaResource:7>], [<nevermine:CrystalliteStone>, <Botania:manaResource:15>, <nevermine:CrystalliteStone>]]);
recipes.remove(<Botania:travelBelt>);
recipes.addShaped(<Botania:travelBelt>, [[<ore:runeEarthB>, <witchery:ingredient:72>], [<witchery:ingredient:72>, <Thaumcraft:BootsTraveller>, <witchery:ingredient:72>], [ingotManaSteel, <witchery:ingredient:72>, <ore:runeAirB>]]);
recipes.remove(<Botania:tinyPlanet>);
recipes.addShaped(<Botania:tinyPlanet>, [[<ore:livingrock>, <Thaumcraft:blockCosmeticSolid:6>, <ore:livingrock>], [<Thaumcraft:blockCosmeticSolid:6>, <ore:manaPearl>, <Thaumcraft:blockCosmeticSolid:6>], [<ore:livingrock>, <Thaumcraft:blockCosmeticSolid:6>, <ore:livingrock>]]);
recipes.remove(<Botania:icePendant>);
recipes.addShaped(<Botania:icePendant>, [[<ore:runeWinterB>, <ore:manaString>], [<ore:manaString>, null, <ore:manaString>], [ingotManaSteel, <ore:manaString>, <ore:runeWaterB>]]);
recipes.remove(<Botania:knockbackBelt>);
recipes.addShaped(<Botania:knockbackBelt>, [[<ore:runeFireB>, <witchery:ingredient:72>], [<witchery:ingredient:72>, null, <witchery:ingredient:72>], [ingotManaSteel, <witchery:ingredient:72>, <ore:runeEarthB>]]);

# - Miscellaneous
##  Greatwood/Silverwood Planks
ManaInfusion.addInfusion(<Thaumcraft:blockWoodenDevice:6>*2, <Thaumcraft:blockMagicalLog>, 1000);
ManaInfusion.addInfusion(<Thaumcraft:blockWoodenDevice:7>*2, <Thaumcraft:blockMagicalLog:1>, 1000);
ElvenTrade.addRecipe(<Thaumcraft:blockWoodenDevice:6>*6, [<Thaumcraft:blockMagicalLog>]);
ElvenTrade.addRecipe(<Thaumcraft:blockWoodenDevice:7>*6, [<Thaumcraft:blockMagicalLog:1>]);

##########################################################################################
## --------------------------------------------------------------- ## Script Line Break ##
##########################################################################################

# - Lexica Botania

##  Lexica Botania
Lexicon.removePage("botania.entry.lexicon", 2);
Lexicon.addCraftingPage("botania.page.lexicon1", "botania.entry.lexicon", 2, [<Botania:lexicon>], [[[nuggetGold, flowerMystical, nuggetGold], [flowerMystical, <minecraft:book>, flowerMystical], [nuggetGold, flowerMystical, nuggetGold]]]);

##  Petal Apothocary
Lexicon.removePage("botania.entry.apothecary", 6);
Lexicon.addCraftingPage("botania.page.apothecary1", "botania.entry.apothecary", 5, [<Botania:altar>], [[[<ore:slabCobblestone>, <ore:petalMystical>, <ore:slabCobblestone>], [null, <minecraft:cauldron>], [<ore:compressedCobblestone2x>, <ore:compressedCobblestone2x>, <ore:compressedCobblestone2x>]]]);

##  Manasteel
Lexicon.removePage("botania.entry.pool", 6);
Lexicon.addInfusionPage("botania.page.pool3", "botania.entry.pool", 6, [<Botania:manaResource>, <Botania:manaResource:17>, <Botania:storage>], [ingotMithril, nuggetMithril, blockMithril], [850, 82, 6750]);
//Lexicon.removePage("botania.entry.pool", 13);

##  Glimmering Living Wood
Lexicon.removePage("botania.entry.decorativeBlocks", 9);
Lexicon.addCraftingPage("botania.page.decorativeBlocks9", "botania.entry.decorativeBlocks", 9, [<Botania:livingwood:5>], [[[<ore:nuggetTerrasteel>, <ore:dustGlowstone>, <ore:nuggetTerrasteel>], [<ore:dustGlowstone>, <ore:livingwood>, <ore:dustGlowstone>], [<ore:nuggetTerrasteel>, <ore:dustGlowstone>, <ore:nuggetTerrasteel>]]]);

##  Alfheim Portal
Lexicon.removePage("botania.entry.aIntro", 2);
Lexicon.addCraftingPage("botania.page.aIntro2", "botania.entry.aIntro", 2, [<Botania:alfheimPortal>], [[[<ore:livingwood>, <Thaumcraft:ItemResource:15>, <ore:livingwood>], [<witchery:ingredient:67>, <Botania:storage:1>, <witchery:ingredient:43>], [<ore:livingwood>, <AWWayofTime:masterBloodOrb>, <ore:livingwood>]]]);

##  Lens
Lexicon.removePage("botania.entry.lens", 1);
Lexicon.addCraftingPage("botania.page.lens1", "botania.entry.lens", 3, [<Botania:lens>], [[[<ore:nuggetManasteel>, ingotManaSteel, <ore:nuggetManasteel>], [ingotManaSteel, <witchery:ingredient:92>, ingotManaSteel], [<ore:nuggetManasteel>, ingotManaSteel, <ore:nuggetManasteel>]]]);
Lexicon.removePage("botania.entry.lens", 23);
Lexicon.addCraftingPage("botania.page.lens25", "botania.entry.lens", 23, [<Botania:lens:10>], [[[dustRedstone, blockIron, dustRedstone], [<ore:ingotGold>, <Botania:lens>, <ore:ingotGold>], [dustRedstone, blockIron, dustRedstone]]]);

##  Redstring
Lexicon.removePage("botania.entry.redString", 2);
Lexicon.addCraftingPage("botania.page.redString2", "botania.entry.redString", 2, [<Botania:manaResource:12>], [[[<ore:manaString>, <ore:elvenPixieDust>, <ore:bEnderAirBottle>], [<ore:redstoneRoot>, <witchery:ingredient:40>, <Thaumcraft:ItemZombieBrain>], [null, null, null]]]);

##  Spark Augments
Lexicon.removePage("botania.entry.sparkUpgrades", 5);
Lexicon.addCraftingPage("botania.page.sparkUpgrades5", "botania.entry.sparkUpgrades", 5, [<Botania:sparkUpgrade>], [[[null, <ore:elvenPixieDust>], [ingotManaSteel, <AWWayofTime:imbuedSlate>, ingotManaSteel], [null, <ore:runeWaterB>]]]);
Lexicon.addCraftingPage("botania.page.sparkUpgrades5", "botania.entry.sparkUpgrades", 5, [<Botania:sparkUpgrade:2>], [[[null, <ore:elvenPixieDust>], [ingotManaSteel, <AWWayofTime:imbuedSlate>, ingotManaSteel], [null, <ore:runeEarthB>]]]);
Lexicon.addCraftingPage("botania.page.sparkUpgrades5", "botania.entry.sparkUpgrades", 5, [<Botania:sparkUpgrade:1>], [[[null, <ore:elvenPixieDust>], [ingotManaSteel, <AWWayofTime:imbuedSlate>, ingotManaSteel], [null, <ore:runeFireB>]]]);
Lexicon.addCraftingPage("botania.page.sparkUpgrades5", "botania.entry.sparkUpgrades", 5, [<Botania:sparkUpgrade:3>], [[[null, <ore:elvenPixieDust>], [ingotManaSteel, <AWWayofTime:imbuedSlate>, ingotManaSteel], [null, <ore:runeAirB>]]]);

##  Pylons
Lexicon.removePage("botania.entry.pylon", 1);
Lexicon.removePage("botania.entry.aIntro", 3);
Lexicon.removePage("botania.entry.gaiaRitual", 1);
Lexicon.addCraftingPage("botania.page.pylon1", "botania.entry.pylon", 1, [<Botania:pylon>], [[[<ore:nuggetManasteel>, <ore:ingotGold>, <ore:nuggetManasteel>], [ingotManaSteel, <ore:manaDiamond>, ingotManaSteel], [<ore:nuggetManasteel>, <ore:ingotGold>, <ore:nuggetManasteel>]]]);
Lexicon.addCraftingPage("botania.page.aIntro3", "botania.entry.aIntro", 3, [<Botania:pylon:1>], [[[<ore:nuggetTerrasteel>, <ore:gemEmerald>, <ore:nuggetTerrasteel>], [<ore:ingotTerrasteel>, <Botania:pylon>, <ore:ingotTerrasteel>], [<ore:nuggetTerrasteel>, <ore:pearlEnderEye>, <ore:nuggetTerrasteel>]]]);
Lexicon.addTextPage("botania.page.gaiaRitual.alt", "botania.entry.gaiaRitual", 1);
game.setLocalization("en_US", "botania.page.gaiaRitual.alt", "Crafting &1Gaia Pylons&0 is a task only for a great Thaumaturge to tackle in one's infusion altar. Acquiring the recipe for such a task requires the help of a magical interface... known as NEI (Not Enough Items).");

##  Catalysts
Lexicon.removePage("botania.entry.manaAlchemy", 1);
Lexicon.addCraftingPage("botania.page.manaAlchemy1", "botania.entry.manaAlchemy", 1, [<Botania:alchemyCatalyst>], [[[<ore:livingrock>, <witchery:chalkheart>, <ore:livingrock>], [<AWWayofTime:blockWritingTable>, <Thaumcraft:ItemResource:14>, <AWWayofTime:blockWritingTable>], [<ore:livingrock>, <ore:blockBlaze>, <ore:livingrock>]]]);
Lexicon.removePage("botania.entry.manaConjuration", 1);
Lexicon.addCraftingPage("botania.page.manaConjuration1", "botania.entry.manaConjuration", 1, [<Botania:conjurationCatalyst>], [[[<ore:livingrock>, <witchery:ingredient:130>, <ore:livingrock>], [<Botania:pylon:1>, <Botania:alchemyCatalyst>, <Botania:pylon:1>], [<ore:livingrock>, <Botania:storage:1>, <ore:livingrock>]]]);

##  Runes
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.removePage("botania.entry.runeAltar", 7);
Lexicon.addRunePage("botania.page.runeAltar4", "botania.entry.runeAltar", 7, [<Botania:rune>*3], [[ingotManaSteel, ingotManaSteel, ingotManaSteel, <minecraft:dye:15>, <ore:cropSugarcane>, <minecraft:fishing_rod>, <ore:shardWater>]], [8500]);
Lexicon.addRunePage("botania.page.runeAltar5", "botania.entry.runeAltar", 8, [<Botania:rune:2>*3], [[ingotManaSteel, ingotManaSteel, ingotManaSteel, <ore:stone>, <ore:blockCoal>, <ore:listAllmushroom>, <ore:shardEarth>]], [8500]);
Lexicon.addRunePage("botania.page.runeAltar6", "botania.entry.runeAltar", 9, [<Botania:rune:3>*3], [[ingotManaSteel, ingotManaSteel, ingotManaSteel, <minecraft:carpet>, <minecraft:feather>, <minecraft:string>, <ore:shardAir>]], [8500]);
Lexicon.addRunePage("botania.page.runeAltar7", "botania.entry.runeAltar", 10, [<Botania:rune:1>*3], [[ingotManaSteel, ingotManaSteel, ingotManaSteel, <minecraft:nether_brick>, <ore:blockBlaze>, <minecraft:nether_wart>, <ore:shardFire>]], [8500]);
Lexicon.addRunePage("botania.page.runeAltar8", "botania.entry.runeAltar", 11, [<Botania:rune:8>], [[ingotManaSteel, ingotManaSteel, ingotManaSteel, <ore:manaDiamond>, <ore:manaPearl>, <Botania:quartz:1>, <Thaumcraft:ItemShard:6>]], [8500]);
Lexicon.addRunePage("botania.page.runeAltar9", "botania.entry.runeAltar", 12, [<Botania:rune:4>], [[<ore:runeWaterB>, <ore:runeFireB>, <witchery:witchsapling>, <witchery:witchsapling:1>, <witchery:witchsapling:2>, <minecraft:wheat>, <AWWayofTime:imbuedSlate>]], [4000]);
Lexicon.addRunePage("botania.page.runeAltar10", "botania.entry.runeAltar", 13, [<Botania:rune:5>], [[<ore:runeEarthB>, <ore:runeAirB>, <ore:sand>, <ore:sand>, <ore:slimeball>, <ore:cropMelon>, <AWWayofTime:imbuedSlate>]], [4000]);
Lexicon.addRunePage("botania.page.runeAltar11", "botania.entry.runeAltar", 14, [<Botania:rune:6>], [[<ore:runeFireB>, <ore:runeAirB>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <minecraft:spider_eye>, <AWWayofTime:imbuedSlate>]], [4000]);
Lexicon.addRunePage("botania.page.runeAltar12", "botania.entry.runeAltar", 15, [<Botania:rune:7>], [[<ore:runeWaterB>, <ore:runeEarthB>, <ore:blockSnow>, <ore:blockSnow>, <ore:blockWool>, <minecraft:cake>, <AWWayofTime:imbuedSlate>]], [4000]);
Lexicon.addRunePage("botania.page.runeAltar13", "botania.entry.runeAltar", 16, [<Botania:rune:9>*2], [[<ore:runeAirB>, <ore:runeSummerB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
Lexicon.addRunePage("botania.page.runeAltar14", "botania.entry.runeAltar", 17, [<Botania:rune:10>*2], [[<ore:runeFireB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
Lexicon.addRunePage("botania.page.runeAltar15", "botania.entry.runeAltar", 18, [<Botania:rune:11>*2], [[<ore:runeWaterB>, <ore:runeSpringB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
Lexicon.addRunePage("botania.page.runeAltar16", "botania.entry.runeAltar", 19, [<Botania:rune:12>*2], [[<ore:runeAirB>, <ore:runeAutumnB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
Lexicon.addRunePage("botania.page.runeAltar17", "botania.entry.runeAltar", 20, [<Botania:rune:13>*2], [[<ore:runeEarthB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
Lexicon.addRunePage("botania.page.runeAltar18", "botania.entry.runeAltar", 21, [<Botania:rune:14>*2], [[<ore:runeWaterB>, <ore:runeWinterB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);
Lexicon.addRunePage("botania.page.runeAltar19", "botania.entry.runeAltar", 22, [<Botania:rune:15>*2], [[<ore:runeFireB>, <ore:runeSummerB>, <ore:manaDiamond>, <ore:manaDiamond>, <AWWayofTime:demonicSlate>]], [6500]);

##  Equiptment
# --- Manaweave Armour
Lexicon.removePage("botania.entry.manaweave", 3);
Lexicon.removePage("botania.entry.manaweave", 3);
Lexicon.removePage("botania.entry.manaweave", 3);
Lexicon.removePage("botania.entry.manaweave", 3);
Lexicon.addCraftingPage("botania.page.manaweave3", "botania.entry.manaweave", 3, [<Botania:manaweaveHelm>], [[[<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_helmet>, <ore:clothManaweave>]]]);
Lexicon.addCraftingPage("botania.page.manaweave4", "botania.entry.manaweave", 4, [<Botania:manaweaveChest>], [[[<ore:clothManaweave>, <minecraft:leather_chestplate>, <ore:clothManaweave>], [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>]]]);
Lexicon.addCraftingPage("botania.page.manaweave5", "botania.entry.manaweave", 5, [<Botania:manaweaveLegs>], [[[<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_leggings>, <ore:clothManaweave>], [<ore:clothManaweave>, null, <ore:clothManaweave>]]]);
Lexicon.addCraftingPage("botania.page.manaweave6", "botania.entry.manaweave", 6, [<Botania:manaweaveBoots>], [[[<ore:clothManaweave>, null, <ore:clothManaweave>], [<ore:clothManaweave>, <minecraft:leather_boots>, <ore:clothManaweave>]]]);

# --- Manasteel Armour
Lexicon.removePage("botania.entry.manaGear", 7);
Lexicon.removePage("botania.entry.manaGear", 7);
Lexicon.removePage("botania.entry.manaGear", 7);
Lexicon.removePage("botania.entry.manaGear", 7);
Lexicon.addCraftingPage("botania.page.manaGear6", "botania.entry.manaGear", 2, [<Botania:manasteelHelm>], [[[ingotManaSteel, ingotManaSteel, ingotManaSteel], [ingotManaSteel, <Botania:manaweaveHelm>, ingotManaSteel]]]);
Lexicon.addCraftingPage("botania.page.manaGear7", "botania.entry.manaGear", 3, [<Botania:manasteelChest>], [[[ingotManaSteel, <Botania:manaweaveChest>, ingotManaSteel], [ingotManaSteel, ingotManaSteel, ingotManaSteel], [ingotManaSteel, ingotManaSteel, ingotManaSteel]]]);
Lexicon.addCraftingPage("botania.page.manaGear8", "botania.entry.manaGear", 4, [<Botania:manasteelLegs>], [[[ingotManaSteel, ingotManaSteel, ingotManaSteel], [ingotManaSteel, <Botania:manaweaveLegs>, ingotManaSteel], [ingotManaSteel, null, ingotManaSteel]]]);
Lexicon.addCraftingPage("botania.page.manaGear9", "botania.entry.manaGear", 5, [<Botania:manasteelBoots>], [[[ingotManaSteel, null, ingotManaSteel], [ingotManaSteel, <Botania:manaweaveBoots>, ingotManaSteel]]]);

# --- Mana Tablet
Lexicon.removePage("botania.entry.manaTablet", 2);
Lexicon.addRunePage("botania.page.manaTablet2", "botania.entry.manaTablet", 2, [<Botania:manaTablet>.withTag({mana: 500000})], [[<Thaumcraft:blockJar>, <AWWayofTime:reinforcedSlate>, <ore:runeAirB>, <ore:runeEarthB>, <ore:runeManaB>, <ore:runeFireB>, <ore:runeWaterB>, <AWWayofTime:reinforcedSlate>]], [500000]);

# --- Baubles
Lexicon.removePage("botania.entry.travelBelt", 1);
Lexicon.addCraftingPage("botania.page.travelBelt1", "botania.entry.travelBelt", 1, [<Botania:travelBelt>], [[[<ore:runeEarthB>, <witchery:ingredient:72>], [<witchery:ingredient:72>, <Thaumcraft:BootsTraveller>, <witchery:ingredient:72>], [ingotManaSteel, <witchery:ingredient:72>, <ore:runeAirB>]]]);
Lexicon.removePage("botania.entry.tinyPlanet", 1);
Lexicon.addCraftingPage("botania.page.tinyPlanet1", "botania.entry.tinyPlanet", 1, [<Botania:tinyPlanet>], [[[<ore:livingrock>, <Thaumcraft:blockCosmeticSolid:6>, <ore:livingrock>], [<Thaumcraft:blockCosmeticSolid:6>, <ore:manaPearl>, <Thaumcraft:blockCosmeticSolid:6>], [<ore:livingrock>, <Thaumcraft:blockCosmeticSolid:6>, <ore:livingrock>]]]);
Lexicon.removePage("botania.entry.icePendant", 1);
Lexicon.addCraftingPage("botania.page.icePendant1", "botania.entry.icePendant", 1, [<Botania:icePendant>], [[[<ore:runeWinterB>, <ore:manaString>], [<ore:manaString>, null, <ore:manaString>], [ingotManaSteel, <ore:manaString>, <ore:runeWaterB>]]]);
Lexicon.removePage("botania.entry.knockbackBelt", 1);
Lexicon.addCraftingPage("botania.page.knockbackBelt1", "botania.entry.knockbackBelt", 1, [<Botania:knockbackBelt>], [[[<ore:runeFireB>, <witchery:ingredient:72>], [<witchery:ingredient:72>, null, <witchery:ingredient:72>], [ingotManaSteel, <witchery:ingredient:72>, <ore:runeEarthB>]]]);

##  WIP Message
<Botania:lexicon>.addTooltip(format.red("[WIP] Not 100% accurate!"));

print("Initialized 'Botania.zs'");
