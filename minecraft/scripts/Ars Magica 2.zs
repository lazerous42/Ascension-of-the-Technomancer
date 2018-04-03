//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Ars Magica 2.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

import minetweaker.item.IItemStack;
import mods.ic2.Compressor;
import mods.bloodmagic.Alchemy;
import mods.auraCascade.Pylon;

print("Initializing 'Ars Magica 2.zs'...");

val craftingTable = <minecraft:crafting_table>;
val sugar = <minecraft:sugar>;
val gunpowder = <minecraft:gunpowder>;
val brownWool = <minecraft:wool:12>;
val ingotSilver = <ore:ingotSilver>;
val nuggetGold = <ore:nuggetGold>;
val ingotGold = <ore:ingotGold>;
val dragonstone = <Botania:manaResource:9>;
val ingotEmberstone = <nevermine:IngotEmberstone>;
val ingotMithril = <ore:ingotMithril>;
val ingotManasteel = <Botania:manaResource>;
val ingotTerrasteel = <Botania:manaResource:4>;
val stringMana = <Botania:manaResource:16>;
val ingotThaumium = <Thaumcraft:ItemResource:2>;
val diamondMana = <Botania:manaResource:2>;
val glassMana = <Botania:manaGlass>;
val livingRock = <Botania:livingrock>;
val clothManaweave = <Botania:manaResource:22>;
val glassPaneMana = <Botania:manaGlassPane>;
val obsidianEnder = <ExtraUtilities:decorativeBlock1:1>;
val woodMagical = <ExtraUtilities:decorativeBlock1:8>;
val cobblestoneTripleComp = <ExtraUtilities:cobblestone_compressed:2>;
val slateBlank = <AWWayofTime:blankSlate>;
val slateReinforced = <AWWayofTime:reinforcedSlate>;
val bloodRune = <AWWayofTime:AlchemicalWizardrybloodRune>;
val quicksilver = <Thaumcraft:ItemResource:3>;
val batWool = <witchery:ingredient:24>;
val amber = <Thaumcraft:ItemResource:6>;
val table = <Thaumcraft:blockTable>;
val waystone = <witchery:ingredient:12>;
val chalkRitual = <witchery:chalkritual>;
val chalkGolden = <witchery:chalkheart>;
val fabricEnchanted = <Thaumcraft:ItemResource:7>;
val ingotVoidMetal = <Thaumcraft:ItemResource:16>;
val scribingTools = <Thaumcraft:ItemInkwell>;
val shardBalance = <Thaumcraft:ItemShard:6>;
val stoneArcane = <Thaumcraft:blockCosmeticSolid:6>;
val runicMatrix = <Thaumcraft:blockStoneDevice:2>;
val salisMundus = <Thaumcraft:ItemResource:14>;
val diamondEtchedComputationalMarix = <ExtraUtilities:decorativeBlock1:12>;
val firestoneRaw = <Railcraft:firestone.raw>;
val chestHungry = <Thaumcraft:blockChestHungry>;

val planksWitchwood = <arsmagica2:planksWitchwood>;
val torchVinteum = <arsmagica2:VinteumTorch>;
val spellParchment = <arsmagica2:spellParchment>;
val desertNova = <arsmagica2:desertNova>;
val blueOrchid = <arsmagica2:blueOrchid>;
val chimerite = <arsmagica2:itemOre:4>;
val gemTopazBlue = <arsmagica2:itemOre:5>;
val oreTopazBlue = <arsmagica2:vinteumOre:2>;
val blockTopazBlue = <arsmagica2:vinteumOre:7>;
val moonstone = <arsmagica2:itemOre:7>;
val blockVinteum = <arsmagica2:vinteumOre:6>;
val blockChimerite = <arsmagica2:vinteumOre:9>;
val ashArcane = <arsmagica2:itemOre:2>;
val dustVinteum = <arsmagica2:itemOre>;
val dustPurifiedVinteum = <arsmagica2:itemOre:3>;
val chalkWizard = <arsmagica2:blueChalk>;
val inlayGold = <arsmagica2:goldInlay>;
val magicWall = <arsmagica2:magicWall>;
val summoner = <arsmagica2:Summoner>;
val craftingAltar = <arsmagica2:CraftingAltar>;
val occulus = <arsmagica2:occulus>;
val wrenchCrystal = <arsmagica2:crystal_wrench>;
val flickerJar = <arsmagica2:flickerJar>;
val crystalPhylactery = <arsmagica2:Crystal Phylactery>;
val tableInscription = <arsmagica2:InscriptionTable>;
val flickerLure = <arsmagica2:flickerLure>;
val manaBattery = <arsmagica2:manaBattery>;
val obelisk = <arsmagica2:obelisk>;
val essenceBag = <arsmagica2:essenceBag>;
val mageHood = <arsmagica2:mageHood>;
val mageArmor = <arsmagica2:mageArmor>;
val mageLeggings = <arsmagica2:mageLeggings>;
val mageBoots = <arsmagica2:mageBoots>;
val etheriumConduit = <arsmagica2:essenceConduit>;
val magitechStaff = <arsmagica2:magitechStaff>;
val essenceRefiner = <arsmagica2:essenceRefiner>;
val calefactor = <arsmagica2:calefactor>;
val keystone = <arsmagica2:keystone>;
val armorInfuser = <arsmagica2:armorInfuser>;
val magiciansWorkbench = <arsmagica2:magiciansWorkbench>;
val flickerHabitat = <arsmagica2:elementalAttuner>;

val battlemageHood = <arsmagica2:battlemageHood>;
val battlemageArmor = <arsmagica2:battlemageArmor>;
val battlemageLeggings = <arsmagica2:battlemageLeggings>;
val battlemageBoots = <arsmagica2:battlemageBoots>;

val lesserManaPotion = <arsmagica2:lesserManaPotion>;
val standardManaPotion = <arsmagica2:standardManaPotion>;
val greaterManaPotion = <arsmagica2:greaterManaPotion>;
val epicManaPotion = <arsmagica2:epicManaPotion>;
val legendaryManaPotion = <arsmagica2:legendaryManaPotion>;
val manaPotions = [lesserManaPotion,
                   standardManaPotion,
                   greaterManaPotion,
                   epicManaPotion,
                   legendaryManaPotion] as IItemStack[];
val lesserManaPotionBundle = <arsmagica2:manaPotionBundle:3>;
val standardManaPotionBundle = <arsmagica2:manaPotionBundle:259>;
val greaterManaPotionBundle = <arsmagica2:manaPotionBundle:515>;
val epicManaPotionBundle = <arsmagica2:manaPotionBundle:771>;
val legendaryManaPotionBundle = <arsmagica2:manaPotionBundle:1027>;
val manaPotionBundles = [lesserManaPotionBundle,
                         standardManaPotionBundle,
                         greaterManaPotionBundle,
                         epicManaPotionBundle,
                         legendaryManaPotionBundle] as IItemStack[];

val runeBlack = <arsmagica2:rune>;
val runeBlank = <arsmagica2:rune:1>;
val runeBlue = <arsmagica2:rune:2>;
val runeBrown = <arsmagica2:rune:3>;
val runeCyan = <arsmagica2:rune:4>;
val runeGrey = <arsmagica2:rune:5>;
val runeGreen = <arsmagica2:rune:6>;
val runeLightBlue = <arsmagica2:rune:7>;
val runeLightGrey = <arsmagica2:rune:8>;
val runeLime = <arsmagica2:rune:9>;
val runeMagenta = <arsmagica2:rune:10>;
val runeOrange = <arsmagica2:rune:11>;
val runePink = <arsmagica2:rune:12>;
val runePurple = <arsmagica2:rune:13>;
val runeRed = <arsmagica2:rune:14>;
val runeWhite = <arsmagica2:rune:15>;
val runeYellow = <arsmagica2:rune:16>;

val runes = [runeBlack,
	     runeBlank,
	     runeBlue,
	     runeBrown,
	     runeCyan,
	     runeGrey,
	     runeGreen,
	     runeLightBlue,
	     runeLightGrey,
	     runeLime,
	     runeMagenta,
	     runeOrange,
	     runePink,
	     runePurple,
	     runeRed,
	     runeWhite,
	     runeYellow] as IItemStack[];

##  Blue Topaz Compressor Fix
recipes.remove(blockTopazBlue);
Compressor.addRecipe(blockTopazBlue, gemTopazBlue * 9);

##  Mana Potions
#   Potions
var last = 0;
for i, manaPotion in manaPotions {
	recipes.remove(manaPotion);
	if i == 0 {
		var inputStack = [desertNova, blueOrchid, sugar] as IItemStack[];
		Alchemy.addRecipe(manaPotion, inputStack, 1, 1000);
	}
	if i == 1 {
		var inputStack = [manaPotions[last], gunpowder] as IItemStack[];
		Alchemy.addRecipe(manaPotion, inputStack, 2, 2000);
	}
	if i == 2 {
		var inputStack = [manaPotions[last], dustVinteum] as IItemStack[];
		Alchemy.addRecipe(manaPotion, inputStack, 3, 3000);
	}
	if i == 3 {
		var inputStack = [manaPotions[last], ashArcane] as IItemStack[];
		Alchemy.addRecipe(manaPotion, inputStack, 4, 4000);
	}
	if i == 4 {
		var inputStack = [manaPotions[last], dustPurifiedVinteum] as IItemStack[];
		Alchemy.addRecipe(manaPotion, inputStack, 5, 5000);
	}
	last += 1;
}
#   Potion Bundles
for j, manaPotionBundle in manaPotionBundles {
	var manaPotion = manaPotions[j];
	recipes.remove(manaPotionBundle);
	recipes.addShaped(manaPotionBundle, [[manaPotion, manaPotion], [manaPotion, stringMana]]);
}

##  Remove blue topaz from ore dict to prevent making GregTech tools
<ore:gemBlueTopaz>.remove(gemTopazBlue);
<ore:oreBlueTopaz>.remove(oreTopazBlue);
<ore:blockBlueTopaz>.remove(blockTopazBlue);

##  Runes
for i, rune in runes {
	recipes.remove(rune);
}
recipes.addShaped(runeBlank * 3, [[null, waystone, null], [dustVinteum, slateBlank, gemTopazBlue], [quicksilver, chimerite, null]]);
Pylon.addRecipe(runeBlack *3, <aura:BLACK_AURA> * 5000, runeBlank, <aura:BLACK_AURA> * 5000, runeBlank, <aura:BLACK_AURA> * 5000, runeBlank, <aura:BLACK_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard>);
Pylon.addRecipe(runeBlue * 3, <aura:BLUE_AURA> * 5000, runeBlank, <aura:BLUE_AURA> * 5000, runeBlank, <aura:BLUE_AURA> * 5000, runeBlank, <aura:BLUE_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:4>);
Pylon.addRecipe(runeBrown * 3, <aura:ORANGE_AURA> * 5000, runeBlank, <aura:ORANGE_AURA> * 5000, runeBlank, <aura:ORANGE_AURA> * 5000, runeBlank, <aura:ORANGE_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:3>);
Pylon.addRecipe(runeCyan * 3, <aura:YELLOW_AURA> * 5000, runeBlank, <aura:YELLOW_AURA> * 5000, runeBlank, <aura:YELLOW_AURA> * 5000, runeBlank, <aura:YELLOW_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:6>);
Pylon.addRecipe(runeGrey * 3, <aura:BLACK_AURA> * 5000, runeBlank, <aura:BLACK_AURA> * 5000, runeBlank, <aura:BLACK_AURA> * 5000, runeBlank, <aura:BLACK_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:8>);
Pylon.addRecipe(runeGreen * 3, <aura:GREEN_AURA> * 5000, runeBlank, <aura:GREEN_AURA> * 5000, runeBlank, <aura:GREEN_AURA> * 5000, runeBlank, <aura:GREEN_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:2>);
Pylon.addRecipe(runeLightBlue * 3, <aura:BLUE_AURA> * 5000, runeBlank, <aura:BLUE_AURA> * 5000, runeBlank, <aura:BLUE_AURA> * 5000, runeBlank, <aura:BLUE_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:12>);
Pylon.addRecipe(runeLightGrey * 3, <aura:WHITE_AURA> * 5000, runeBlank, <aura:WHITE_AURA> * 5000, runeBlank, <aura:WHITE_AURA> * 5000, runeBlank, <aura:WHITE_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:7>);
Pylon.addRecipe(runeLime * 3, <aura:GREEN_AURA> * 5000, runeBlank, <aura:GREEN_AURA> * 5000, runeBlank, <aura:GREEN_AURA> * 5000, runeBlank, <aura:GREEN_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:10>);
Pylon.addRecipe(runeMagenta * 3, <aura:VIOLET_AURA> * 5000, runeBlank, <aura:VIOLET_AURA> * 5000, runeBlank, <aura:VIOLET_AURA> * 5000, runeBlank, <aura:VIOLET_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:13>);
Pylon.addRecipe(runeOrange * 3, <aura:ORANGE_AURA> * 5000, runeBlank, <aura:ORANGE_AURA> * 5000, runeBlank, <aura:ORANGE_AURA> * 5000, runeBlank, <aura:ORANGE_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:14>);
Pylon.addRecipe(runePink * 3, <aura:RED_AURA> * 5000, runeBlank, <aura:RED_AURA> * 5000, runeBlank, <aura:RED_AURA> * 5000, runeBlank, <aura:RED_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:9>);
Pylon.addRecipe(runePurple * 3, <aura:VIOLET_AURA> * 5000, runeBlank, <aura:VIOLET_AURA> * 5000, runeBlank, <aura:VIOLET_AURA> * 5000, runeBlank, <aura:VIOLET_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:5>);
Pylon.addRecipe(runeRed * 3, <aura:RED_AURA> * 5000, runeBlank, <aura:RED_AURA> * 5000, runeBlank, <aura:RED_AURA> * 5000, runeBlank, <aura:RED_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:1>);
Pylon.addRecipe(runeWhite * 3, <aura:WHITE_AURA> * 5000, runeBlank, <aura:WHITE_AURA> * 5000, runeBlank, <aura:WHITE_AURA> * 5000, runeBlank, <aura:WHITE_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:15>);
Pylon.addRecipe(runeYellow * 3, <aura:YELLOW_AURA> * 5000, runeBlank, <aura:YELLOW_AURA> * 5000, runeBlank, <aura:YELLOW_AURA> * 5000, runeBlank, <aura:YELLOW_AURA> * 5000, <ChromatiCraft:chromaticraft_item_shard:11>);

##  Crystal Phylactery
recipes.remove(crystalPhylactery);
recipes.addShaped(crystalPhylactery, [[null, moonstone, null], [glassMana, null, glassMana], [null, magicWall, null]]);

##  Armor Infuser
recipes.remove(armorInfuser);
recipes.addShaped(armorInfuser, [[ingotManasteel, fabricEnchanted, ingotManasteel], [slateReinforced, craftingAltar, slateReinforced], [chimerite, obsidianEnder, chimerite]]);

##  Etherium Conduit
recipes.remove(etheriumConduit);
recipes.addShaped(etheriumConduit, [[null, blockChimerite, null], [dustVinteum, livingRock, dustVinteum], [ingotSilver, livingRock, ingotSilver]]);

##  Magitech Staff
recipes.remove(magitechStaff);
recipes.addShaped(magitechStaff, [[null, ingotGold, gemTopazBlue], [ingotMithril, null, ingotGold], [ingotThaumium, ingotMithril, null]]);

##  Flicker Habitat
recipes.remove(flickerHabitat);
recipes.addShaped(flickerHabitat, [[ingotSilver, dustVinteum, ingotSilver], [dustVinteum, blockChimerite, dustVinteum], [ingotSilver, dustVinteum, ingotSilver]]);

##  Magicians Workbench
recipes.remove(magiciansWorkbench);
recipes.addShaped(magiciansWorkbench, [[craftingTable, clothManaweave, craftingTable], [planksWitchwood, woodMagical, planksWitchwood], [woodMagical, chestHungry, woodMagical]]);

##  Essence Refiner
recipes.remove(essenceRefiner);
recipes.addShaped(essenceRefiner, [[planksWitchwood, diamondMana, planksWitchwood], [obsidianEnder, ashArcane, obsidianEnder], [salisMundus, diamondEtchedComputationalMarix, quicksilver]]);

##  Calefactor
recipes.remove(calefactor);
recipes.addShaped(calefactor, [[ingotEmberstone, null, ingotEmberstone], [stoneArcane, firestoneRaw, stoneArcane], [livingRock, dustVinteum, livingRock]]);

##  Keystone
recipes.remove(keystone);
recipes.addShaped(keystone, [[ingotGold, ingotSilver, ingotGold], [ingotSilver, dustVinteum, ingotSilver], [ingotGold, quicksilver, ingotGold]]);

## Crafting Altar
recipes.remove(craftingAltar);
recipes.addShaped(craftingAltar, [[salisMundus, chalkGolden, salisMundus], [dustPurifiedVinteum, runicMatrix, dustPurifiedVinteum], [quicksilver, dustPurifiedVinteum, quicksilver]]);

##  Obelisk
recipes.remove(obelisk);
recipes.addShaped(obelisk, [[dustVinteum, shardBalance, dustVinteum], [dustVinteum, stoneArcane, dustVinteum], [slateReinforced, stoneArcane, slateReinforced]]);

##  Inscription Table
recipes.remove(tableInscription);
recipes.addShaped(tableInscription, [[torchVinteum, spellParchment, scribingTools], [woodMagical, woodMagical, woodMagical], [table, null, table]]);

##  Summoner
recipes.remove(summoner);
recipes.addShaped(summoner, [[ingotGold, dustPurifiedVinteum, ingotGold], [dragonstone, diamondEtchedComputationalMarix, dragonstone], [bloodRune, blockChimerite, bloodRune]]);

##  Essence Bag
recipes.remove(essenceBag);
recipes.addShaped(essenceBag, [[clothManaweave, clothManaweave, clothManaweave], [batWool, nuggetGold, batWool], [clothManaweave, clothManaweave, clothManaweave]]);

##  Mana Battery
recipes.remove(manaBattery);
recipes.addShaped(manaBattery, [[ingotSilver, blockVinteum, ingotSilver], [salisMundus, blockChimerite, salisMundus], [ingotTerrasteel, ingotTerrasteel, ingotTerrasteel]]);

## Flicker Lure
recipes.remove(flickerLure);
recipes.addShaped(flickerLure, [[dustVinteum, ingotSilver, dustVinteum], [ingotSilver, cobblestoneTripleComp, ingotSilver], [blockChimerite, ingotSilver, blockTopazBlue]]);

##  Occulus
recipes.remove(occulus);
recipes.addShaped(occulus, [[ingotSilver, diamondMana, ingotSilver], [chimerite, blockTopazBlue, chimerite], [obsidianEnder, dustPurifiedVinteum, obsidianEnder]]);

##  Crystal Wrench
recipes.remove(wrenchCrystal);
recipes.addShaped(wrenchCrystal, [[ingotSilver, chimerite, ingotSilver], [dustVinteum, ingotSilver, dustVinteum], [null, ingotSilver, null]]);

##  Wizards Chalk
recipes.remove(chalkWizard);
recipes.addShapeless(chalkWizard, [quicksilver, dustVinteum, chalkRitual]);

##  Flicker Jar
recipes.remove(flickerJar);
recipes.addShaped(flickerJar, [[nuggetGold, amber, nuggetGold], [glassPaneMana, magicWall, glassPaneMana], [null, glassPaneMana, null]]);

## Magitech Goggles
recipes.remove(<arsmagica2:magitechGoggles>);
recipes.addShaped(<arsmagica2:magitechGoggles>, [[<witchery:ingredient:72>, <WitchingGadgets:item.WG_Material:2>, <witchery:ingredient:72>], 
												 [<ore:gemChimerite>, <ore:ingotGold>, <ore:gemChimerite>], 
												 [<ore:gemBlueTopaz>, <ore:ingotShadow>, <ore:gemBlueTopaz>]]);

## Spellbook
recipes.remove(<arsmagica2:spellBook>);
recipes.addShaped(<arsmagica2:spellBook>, [[<WitchingGadgets:item.WG_Material:1>, <witchery:ingredient:72>, <witchery:ingredient:72>], 
										   [stringMana, <Automagy:enchantedPaper>, <Automagy:enchantedPaper>], 
										   [<WitchingGadgets:item.WG_Material:1>, <witchery:ingredient:72>, <witchery:ingredient:72>]]);

##  Mage Robes
recipes.remove(mageHood);
recipes.addShaped(mageHood, [[brownWool, fabricEnchanted, brownWool], [brownWool, <arsmagica2:rune:13>, brownWool], [null, <minecraft:potion>, null]]);
recipes.remove(mageArmor);
recipes.addShaped(mageArmor, [[<arsmagica2:rune:15>, <minecraft:coal>, <arsmagica2:rune:15>], [brownWool, fabricEnchanted, brownWool], [brownWool, brownWool, brownWool]]);
recipes.remove(mageLeggings);
recipes.addShaped(mageLeggings, [[brownWool, <arsmagica2:rune:16>, brownWool], [brownWool, <minecraft:gunpowder>, brownWool], [fabricEnchanted, null, fabricEnchanted]]);
recipes.remove(mageBoots);
recipes.addShaped(mageBoots, [[<arsmagica2:rune>, null, <arsmagica2:rune>], [fabricEnchanted, null, fabricEnchanted], [brownWool, <minecraft:feather>, brownWool]]);

##  Battlemage Armor
recipes.remove(battlemageHood);
recipes.addShaped(battlemageHood, [[ingotVoidMetal, inlayGold, ingotVoidMetal], [ingotVoidMetal, runeBlank, ingotVoidMetal], [null, <arsmagica2:essence:4>, null]]);
recipes.remove(battlemageArmor);
recipes.addShaped(battlemageArmor, [[runeBlank, <arsmagica2:essence:1>, runeBlank], [ingotVoidMetal, inlayGold, ingotVoidMetal], [ingotVoidMetal, ingotVoidMetal, ingotVoidMetal]]);
recipes.remove(battlemageLeggings);
recipes.addShaped(battlemageLeggings, [[ingotVoidMetal, runeBlank, ingotVoidMetal], [inlayGold, <arsmagica2:essence:3>, inlayGold], [ingotVoidMetal, null, ingotVoidMetal]]);
recipes.remove(battlemageBoots);
recipes.addShaped(battlemageBoots, [[runeBlank, null, runeBlank], [ingotVoidMetal, <arsmagica2:essence:2>, ingotVoidMetal], [ingotVoidMetal, inlayGold, ingotVoidMetal]]);

print("Initialized 'Ars Magica 2.zs'");
