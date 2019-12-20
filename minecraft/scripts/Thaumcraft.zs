//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Thaumcraft.zs
// Author: Feed the Beast/Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.ic2.Compressor;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Research;
import mods.botania.Orechid;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;

print("Initializing 'Thaumcraft.zs'...");

##  Val Statements
val nuggetIron = <gregtech:gt.metaitem.01:9032>;
val ingotIron = <minecraft:iron_ingot>;
val ingotSteel = <gregtech:gt.metaitem.01:11305>;
val blockSteel = <gregtech:gt.blockmetal6:13>;

# - General
##  Remove Greatwood and Silver Wood from OreDict
val entry = <ore:plankWood>;
entry.remove(<Thaumcraft:blockWoodenDevice:6>);
entry.remove(<Thaumcraft:blockWoodenDevice:7>);

##  Thaumium Compressor Fix
recipes.remove(<Thaumcraft:blockCosmeticSolid:4>);
Compressor.addRecipe(<Thaumcraft:blockCosmeticSolid:4>, <ore:ingotThaumium> * 9);

##  Arcane Stone
Arcane.removeRecipe(<Thaumcraft:blockCosmeticSolid:6>);
Arcane.addShaped("ARCANESTONE", <Thaumcraft:blockCosmeticSolid:6>*8, "ignis 2, terra 2", [[<ore:stone>, <ore:livingrock>, <ore:stone>], [<ore:livingrock>, <Thaumcraft:ItemShard:*>, <ore:livingrock>], [<ore:stone>, <ore:livingrock>, <ore:stone>]]);
ManaInfusion.addConjuration(<Thaumcraft:blockCosmeticSolid:6>*2, <Thaumcraft:blockCosmeticSolid:6>, 1000);

##  Warded Glass
Arcane.removeRecipe(<Thaumcraft:blockCosmeticOpaque:2>);
Arcane.addShaped("WARDEDARCANA", <Thaumcraft:blockCosmeticOpaque:2>*4, "ordo 10, aqua 5, terra 5, ignis 5", [[<Botania:manaGlass>, <AWWayofTime:magicales>, <Botania:manaGlass>], [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:ItemZombieBrain>, <Thaumcraft:blockWoodenDevice:6>], [<Botania:manaGlass>, <AWWayofTime:crystallos>, <Botania:manaGlass>]]);

##  Paving Stone of Travel
Arcane.removeRecipe(<Thaumcraft:blockCosmeticSolid:2>);
Arcane.addShaped("PAVETRAVEL", <Thaumcraft:blockCosmeticSolid:2>*4, "aer 10, terra 10, iter 10", [[<Thaumcraft:blockCosmeticSolid:7>, <ore:runeAirB>, <Thaumcraft:blockCosmeticSolid:7>], [<minecraft:sugar>, null, <minecraft:sugar>], [<Thaumcraft:blockCosmeticSolid:7>, <ore:runeEarthB>, <Thaumcraft:blockCosmeticSolid:7>]]);

##  Paving Stone of Warding
Arcane.removeRecipe(<Thaumcraft:blockCosmeticSolid:3>);
Arcane.addShaped("PAVEWARD", <Thaumcraft:blockCosmeticSolid:3>*4, "ignis 10, ordo 10", [[<Thaumcraft:blockCosmeticSolid:7>, <ore:runeFireB>, <Thaumcraft:blockCosmeticSolid:7>], [<minecraft:fence>, null, <minecraft:fence>], [<Thaumcraft:blockCosmeticSolid:7>, <ore:runeEarthB>, <Thaumcraft:blockCosmeticSolid:7>]]);

##  Runic Matrix
Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:2>);
RuneAltar.addRecipe(<Thaumcraft:blockStoneDevice:2>, [<witchery:ingredient:10>, <AWWayofTime:AlchemicalWizardrybloodRune>, <AWWayofTime:AlchemicalWizardrybloodRune>, <AWWayofTime:AlchemicalWizardrybloodRune>, <AWWayofTime:AlchemicalWizardrybloodRune>, <ore:runeWaterB>, <ore:runeFireB>, <ore:runeEarthB>, <ore:runeAirB>, <ore:runeManaB>], 1000000);

##  Vis Relay
Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:14>);
Arcane.addShaped("BASICARTIFACE", <Thaumcraft:blockMetalDevice:14> * 2, "ignis 8, ordo 8", [[<ore:quicksilver>, <ore:ingotMithril>, <ore:quicksilver>],
													  				   						[<ore:ingotMithril>, <ore:shardBalance>, <ore:ingotMithril>],
													  				   						[<ore:quicksilver>, <ore:ingotHeeEndium>, <ore:quicksilver>]]);

## Vis Charge Relay
Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:2>);
Arcane.addShaped("BASICARTIFACE", <Thaumcraft:blockMetalDevice:2>, "ignis 16, ordo 16, aer 16", [[<ore:ingotSilver>, <Thaumcraft:blockMetalDevice:14>, <ore:ingotSilver>],
													  				   							 [<Thaumcraft:WandRod>, <ore:ingotTerrasteel>, <Thaumcraft:WandRod>],
													  				   							 [<ore:ingotMithril>, null, <ore:ingotMithril>]]);

##  Primal Charm
Arcane.removeRecipe(<Thaumcraft:ItemResource:15>);
Arcane.addShaped("BASICARTIFACE", <Thaumcraft:ItemResource:15>, "aer 25, terra 25, ignis 25, aqua 25, ordo 25, perditio 25", [[<ore:shardAir>, <ore:shardFire>, <ore:shardWater>], [<AWWayofTime:demonicSlate>, <ore:shardBalance>, <ThermalFoundation:bucket:5>], [<ore:shardEarth>, <ore:shardOrder>, <ore:shardEntropy>]]);

##  Mirrored Glass
Arcane.removeRecipe(<Thaumcraft:ItemResource:10>);
Arcane.addShapeless("BASICARTIFACE", <Thaumcraft:ItemResource:10>, "terra 10, ignis 10", [<Thaumcraft:ItemResource:3>, <Botania:manaGlassPane>]);

##  Deconstruction Table
Arcane.removeRecipe(<Thaumcraft:blockTable:14>);
Arcane.addShaped("DECONSTRUCTOR", <Thaumcraft:blockTable:14>, "perditio 20", [[null, <Thaumcraft:ItemThaumometer>], [<Botania:manasteelAxe>, <Thaumcraft:blockTable>, <Botania:manasteelPick>]]);

##  Scribing Tools
recipes.remove(<ThaumicTinkerer:infusedInkwell>);
recipes.remove(<Thaumcraft:ItemInkwell>);
recipes.addShapeless(<Thaumcraft:ItemInkwell>, [<Thaumcraft:ItemEssence>, <minecraft:feather>, <ore:dyeBlack>]);
recipes.addShapeless(<Thaumcraft:ItemInkwell>, [<Thaumcraft:ItemInkwell:*>, <ore:dyeBlack>]);

##  Arcane Bellows
Arcane.removeRecipe(<Thaumcraft:blockWoodenDevice>);
Arcane.addShaped("BELLOWS", <Thaumcraft:blockWoodenDevice>, "aer 10, ordo 5", [[null, <ore:shardAir>], [<Thaumcraft:blockWoodenDevice:6>, <Botania:bellows>, <Thaumcraft:blockWoodenDevice:6>], [null, <ore:shardAir>]]);

##  Enchanted Fabric
Arcane.removeRecipe(<Thaumcraft:ItemResource:7>);
Arcane.addShaped("ENCHFABRIC", <Thaumcraft:ItemResource:7>, "aer 1, ignis 1, aqua 1, ordo 1, perditio 1, terra 1", [[null, <witchery:ingredient:102>], [<minecraft:string>, <minecraft:wool:*>, <minecraft:string>], [null, <witchery:ingredient:102>]]);

##  Candle
recipes.remove(<Thaumcraft:blockCandle>);
Arcane.addShaped("TALLOW", <Thaumcraft:blockCandle>*4, "ignis 2, terra 2", [[<ore:manaString>], [<Thaumcraft:ItemResource:4>], [<Thaumcraft:ItemResource:4>]]);

##  Thaumometer
recipes.remove(<Thaumcraft:ItemThaumometer>);
recipes.addShaped(<Thaumcraft:ItemThaumometer>,[[null, <Thaumcraft:ItemShard:*>], [<ore:ingotGold>, <Botania:manaGlass>, <ore:ingotGold>], [null, <Thaumcraft:ItemShard:*>]]);

##  Goggles of Revealing
Arcane.removeRecipe(<Thaumcraft:ItemGoggles>);
Arcane.addShaped("GOGGLES", <Thaumcraft:ItemGoggles>, "aer 5, ignis 5, aqua 5, terra 5, perditio 5, ordo 5", [[<witchery:ingredient:72>, <ore:ingotGold>, <witchery:ingredient:72>], [<witchery:ingredient:72>, null, <witchery:ingredient:72>], [<Thaumcraft:ItemThaumometer>, <ore:ingotGold>, <Thaumcraft:ItemThaumometer>]]);

##  Wand Foci
Arcane.removeRecipe(<Thaumcraft:FocusExcavation>);
RuneAltar.addRecipe(<Thaumcraft:FocusExcavation>, [<Botania:lens:7>, <ore:shardEarth>, <Botania:quartz:5>, <ore:shardEarth>, <Botania:quartz:5>, <ore:shardEarth>, <Botania:quartz:5>, <ore:shardEarth>], 25000);
Arcane.removeRecipe(<Thaumcraft:FocusFire>);
RuneAltar.addRecipe(<Thaumcraft:FocusFire>, [<Botania:lens:15>, <ore:shardFire>, <Botania:quartz:2>, <ore:shardFire>, <Botania:quartz:2>, <ore:shardFire>, <Botania:quartz:2>, <ore:shardFire>], 25000);
Arcane.removeRecipe(<Thaumcraft:FocusTrade>);
RuneAltar.addRecipe(<Thaumcraft:FocusTrade>, [<Botania:specialFlower>.withTag({type: "puredaisy"}), <ore:shardBalance>, <Botania:quartz:3>, <ore:shardBalance>, <Botania:quartz:3>, <ore:shardBalance>, <Botania:quartz:3>, <ore:shardBalance>], 25000);
Arcane.removeRecipe(<Thaumcraft:FocusShock>);
RuneAltar.addRecipe(<Thaumcraft:FocusShock>, [<Botania:lens:17>, <ore:shardAir>, <Botania:quartz:6>, <ore:shardAir>, <Botania:quartz:6>, <ore:shardAir>, <Botania:quartz:6>, <ore:shardAir>], 25000);
Arcane.removeRecipe(<Thaumcraft:FocusFrost>);
RuneAltar.addRecipe(<Thaumcraft:FocusFrost>, [<Botania:lens:4>, <ore:shardWater>, <Botania:quartz:1>, <ore:shardWater>, <Botania:quartz:1>, <ore:shardWater>, <Botania:quartz:1>, <ore:shardWater>], 25000);

##  Thaumium
Crucible.removeRecipe(<Thaumcraft:ItemResource:2>);
Crucible.addRecipe("THAUMIUM", <Thaumcraft:ItemResource:2>, <Botania:manaResource>, "praecantatio 4");

##  Glass Phial
recipes.remove(<Thaumcraft:ItemEssence>);
recipes.addShaped(<Thaumcraft:ItemEssence>*8, [[null, <ore:itemClay>], [<Botania:manaGlass>, null, <Botania:manaGlass>], [null, <Botania:manaGlass>]]);

##  Warded Jar
Arcane.removeRecipe(<Thaumcraft:blockJar>);
Arcane.addShaped("JARLABEL", <Thaumcraft:blockJar>, "aqua 1", [[<Botania:manaGlassPane>, <Thaumcraft:blockCosmeticSlabWood>, <Botania:manaGlassPane>], [<Botania:manaGlassPane>, null, <Botania:manaGlassPane>], [<Botania:manaGlassPane>, <Botania:manaGlassPane>, <Botania:manaGlassPane>]]);

##  Void Jar
Arcane.removeRecipe(<Thaumcraft:blockJar:3>);
Arcane.addShaped("JARVOID", <Thaumcraft:blockJar:3>, "perditio 5, aqua 5", [[<ore:obsidian>], [<Thaumcraft:blockJar>], [<ore:bEnderAirBottle>]]);

##  Greatwood & Silverwood
Arcane.addShapeless("RESEARCH", <Thaumcraft:blockWoodenDevice:6>*2, "terra 2, ordo 2", [<Thaumcraft:blockMagicalLog>]);
Arcane.addShapeless("RESEARCH", <Thaumcraft:blockWoodenDevice:7>*2, "terra 2, ordo 2", [<Thaumcraft:blockMagicalLog:1>]);

##  Table
recipes.remove(<Thaumcraft:blockTable>);
recipes.addShaped(<Thaumcraft:blockTable>,[[<Thaumcraft:blockCosmeticSlabWood>, <Thaumcraft:blockCosmeticSlabWood>, <Thaumcraft:blockCosmeticSlabWood>], [<Thaumcraft:blockWoodenDevice:6>, null, <Thaumcraft:blockWoodenDevice:6>]]);

##  Hungry Chest
Arcane.removeRecipe(<Thaumcraft:blockChestHungry>);
Arcane.addShaped("HUNGRYCHEST", <Thaumcraft:blockChestHungry>, "aer 5, ordo 3, perditio 3",[[<Thaumcraft:blockWoodenDevice:6>, <minecraft:trapdoor>, <Thaumcraft:blockWoodenDevice:6>], [<Thaumcraft:blockWoodenDevice:6>, null, <Thaumcraft:blockWoodenDevice:6>], [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>]]);

##  Golems
Crucible.removeRecipe(<Thaumcraft:ItemGolemPlacer:*>);
Arcane.addShaped("GOLEMSTRAW", <Thaumcraft:ItemGolemPlacer>, "aer 2, terra 2, ignis 2, aqua 2, ordo 2, perditio 2", [[<minecraft:hay_block>, <minecraft:hay_block>, <minecraft:hay_block>], [<AWWayofTime:blankSlate>, <minecraft:hay_block>, <AWWayofTime:blankSlate>], [<minecraft:hay_block>, <minecraft:hay_block>, <minecraft:hay_block>]]);
Arcane.addShaped("GOLEMWOOD", <Thaumcraft:ItemGolemPlacer:1>, "aer 4, terra 4, ignis 4, aqua 4, ordo 4, perditio 4", [[<Thaumcraft:blockMagicalLog>, <Thaumcraft:blockMagicalLog>, <Thaumcraft:blockMagicalLog>], [<AWWayofTime:reinforcedSlate>, <Thaumcraft:blockMagicalLog>, <AWWayofTime:reinforcedSlate>], [<Thaumcraft:blockMagicalLog>, <Thaumcraft:blockMagicalLog>, <Thaumcraft:blockMagicalLog>]]);
Infusion.addRecipe("GOLEMFLESH", <Thaumcraft:ItemGolemPlacer:1>, [<Thaumcraft:blockTaint:2>, <Thaumcraft:blockTaint:2>, <Thaumcraft:blockTaint:2>, <Thaumcraft:blockTaint:2>], "humanus 8, motus 8, spiritus 8", <Thaumcraft:ItemGolemPlacer:4>, 2);
Arcane.addShaped("GOLEMCLAY", <Thaumcraft:ItemGolemPlacer:3>, "aer 6, terra 6, ignis 6, aqua 6, ordo 6, perditio 6", [[<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>], [<AWWayofTime:imbuedSlate>, <minecraft:hardened_clay>, <AWWayofTime:imbuedSlate>], [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);
Infusion.addRecipe("GOLEMTALLOW", <Thaumcraft:ItemGolemPlacer:3>, [<Thaumcraft:blockCosmeticSolid:5>, <Thaumcraft:blockCosmeticSolid:5>, <Thaumcraft:blockCosmeticSolid:5>, <Thaumcraft:blockCosmeticSolid:5>], "humanus 8, motus 8, spiritus 8", <Thaumcraft:ItemGolemPlacer:2>, 2);
Arcane.addShaped("GOLEMSTONE", <Thaumcraft:ItemGolemPlacer:5>, "aer 8, terra 8, ignis 8, aqua 8, ordo 8, perditio 8", [[<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>], [<AWWayofTime:demonicSlate>, <Thaumcraft:blockCosmeticSolid:6>, <AWWayofTime:demonicSlate>], [<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>]]);
Arcane.addShaped("GOLEMIRON", <Thaumcraft:ItemGolemPlacer:6>, "aer 10, terra 10, ignis 10, aqua 10, ordo 10, perditio 10", [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<AWWayofTime:bloodMagicBaseItems:27>, <ore:blockIron>, <AWWayofTime:bloodMagicBaseItems:27>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
Infusion.addRecipe("GOLEMTHAUMIUM", <Thaumcraft:ItemGolemPlacer:6>, [<Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>, <Thaumcraft:ItemResource:2>], "humanus 8, motus 8, spiritus 8", <Thaumcraft:ItemGolemPlacer:7>, 2);

##  Arcane Bore
Infusion.removeRecipe(<Thaumcraft:blockWoodenDevice:5>);
Infusion.addRecipe("ARCANEBORE", <Thaumcraft:FocusExcavation>, [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <Thaumcraft:ItemPickVoid>, <Thaumcraft:ItemShovelVoid>, <Thaumcraft:ItemShard>, <Thaumcraft:ItemShard:3>], "perfodio 32, machina 32, potentia 16, vacuos 16, motus 16", <Thaumcraft:blockWoodenDevice:5>, 5);

Arcane.removeRecipe(<Thaumcraft:blockWoodenDevice:4>);
Infusion.addRecipe("ARCANEBORE", <Thaumcraft:blockWoodenDevice:6>, [<AWWayofTime:bloodSocket>, <AWWayofTime:bloodSocket>, <Botania:manaResource:4>, <Botania:manaResource:4>, <AWWayofTime:boundPickaxe>, <AWWayofTime:boundShovel>, <witchery:ingredient:39>, <witchery:ingredient:80>], "perfodio 32, machina 32, potentia 16, vacuos 16, motus 16", <Thaumcraft:blockWoodenDevice:4>, 5);

##  Thaumostatic Harness
Infusion.removeRecipe(<Thaumcraft:HoverHarness>);
Infusion.addRecipe("HOVERHARNESS", <Thaumcraft:ItemChestplateVoid>, [<Botania:flightTiara>, <AWWayofTime:airSigil>, <witchery:ingredient:41>], "aer 64, iter 64, volatus 64, praecantatio 64", <Thaumcraft:HoverHarness>, 5);

## Steel (Magical Alternative)
#  Steel Ingots from iron nuggets
Infusion.addRecipe("RESEARCH", nuggetIron, [nuggetIron, nuggetIron, nuggetIron, <minecraft:coal:1>, nuggetIron, nuggetIron, nuggetIron, <minecraft:coal:1>], "ignis 8, permutatio 16, metallum 2", <Railcraft:ingot>, 2);
#  Steel Blocks
Infusion.addRecipe("RESEARCH", ingotIron, [ingotIron, ingotIron, ingotIron, <minecraft:coal:1>, ingotIron, ingotIron, ingotIron, <minecraft:coal:1>], "ignis 8, permutatio 16, metallum 2", blockSteel, 2);

##########################################################################################
## --------------------------------------------------------------- ## Script Line Break ##
##########################################################################################

# - Research (WIP)
##  Arcane Stone
Research.clearPages("ARCANESTONE");
Research.addPage("ARCANESTONE", "tc.research_page.ARCANESTONE.1");
Research.addArcanePage("ARCANESTONE", <Thaumcraft:blockCosmeticSolid:6>);
Research.addCraftingPage("ARCANESTONE", <Thaumcraft:blockCosmeticSolid:7>);
Research.addCraftingPage("ARCANESTONE", <Thaumcraft:blockStairsArcaneStone>);
Research.addCraftingPage("ARCANESTONE", <Thaumcraft:blockCosmeticSlabStone>);

##  Warded Glass
Research.clearPages("WARDEDARCANA");
Research.addPage("WARDEDARCANA", "tc.research_page.WARDEDARCANA.1");
Research.addArcanePage("WARDEDARCANA", <Thaumcraft:ItemArcaneDoor>);
Research.addPage("WARDEDARCANA", "tc.research_page.WARDEDARCANA.2");
Research.addArcanePage("WARDEDARCANA", <Thaumcraft:ArcaneDoorKey>);
Research.addArcanePage("WARDEDARCANA", <Thaumcraft:ArcaneDoorKey:1>);
Research.addPage("WARDEDARCANA", "tc.research_page.WARDEDARCANA.3");
Research.addArcanePage("WARDEDARCANA", <Thaumcraft:blockWoodenDevice:2>);
Research.addPage("WARDEDARCANA", "tc.research_page.WARDEDARCANA.4");
Research.addArcanePage("WARDEDARCANA", <Thaumcraft:blockCosmeticOpaque:2>);

##  Paving Stone of Travel
Research.clearPages("PAVETRAVEL");
Research.addPage("PAVETRAVEL", "tc.research_page.PAVETRAVEL.1");
Research.addArcanePage("PAVETRAVEL", <Thaumcraft:blockCosmeticSolid:2>);

##  Paving Stone of Warding
Research.clearPages("PAVEWARD");
Research.addPage("PAVEWARD", "tc.research_page.PAVEWARD.1");
Research.addArcanePage("PAVEWARD", <Thaumcraft:blockCosmeticSolid:3>);

##  Primal Charm
Research.clearPages("BASICARTIFACE");
Research.addPage("BASICARTIFACE", "tc.research_page.BASICARTIFACE.1");
Research.addArcanePage("BASICARTIFACE", <Thaumcraft:ItemResource:15>);
Research.addCraftingPage("BASICARTIFACE", <Thaumcraft:ItemBaubleBlanks>);
Research.addCraftingPage("BASICARTIFACE", <Thaumcraft:ItemBaubleBlanks:1>);
Research.addCraftingPage("BASICARTIFACE", <Thaumcraft:ItemBaubleBlanks:2>);
Research.addArcanePage("BASICARTIFACE", <Thaumcraft:ItemResource:10>);

##  Deconstruction Table
Research.clearPages("DECONSTRUCTOR");
Research.addPage("DECONSTRUCTOR", "tc.research_page.DECONSTRUCTOR.1");
Research.addArcanePage("DECONSTRUCTOR", <Thaumcraft:blockTable:14>);

##  Scribing Tools
Research.clearPages("RESEARCH");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.1");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.2");
Research.addCraftingPage("RESEARCH", <Thaumcraft:ItemThaumometer>);
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.3");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.4");
Research.addCraftingPage("RESEARCH", <Thaumcraft:ItemInkwell>);
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.5");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.6");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.7");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.8");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.9");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.10");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.11");
Research.addPage("RESEARCH", "tc.research_page.RESEARCH.12");

##  Greatwood + Silverwood
Research.clearPages("PLANTS");
Research.addPage("PLANTS", "tc.research_page.PLANTS.1");
Research.addArcanePage("PLANTS", <Thaumcraft:blockWoodenDevice:6>);
Research.addPage("PLANTS", "tc.research_page.PLANTS.2");
Research.addArcanePage("PLANTS", <Thaumcraft:blockWoodenDevice:7>);
Research.addPage("PLANTS", "tc.research_page.PLANTS.3");
Research.addPage("PLANTS", "tc.research_page.PLANTS.4");
Research.addPage("PLANTS", "tc.research_page.PLANTS.5");
Research.addPage("PLANTS", "tc.research_page.PLANTS.6");

##  Arcane Bellows
Research.clearPages("BELLOWS");
Research.addPage("BELLOWS", "tc.research_page.BELLOWS.1");
Research.addArcanePage("BELLOWS", <Thaumcraft:blockWoodenDevice>);
Research.addPage("BELLOWS", "tc.research_page.BELLOWS.2");

##  Enchanted Fabric
Research.clearPages("ENCHFABRIC");
Research.addPage("ENCHFABRIC", "tc.research_page.ENCHFABRIC.1");
Research.addArcanePage("ENCHFABRIC", <Thaumcraft:ItemResource:7>);

##  Candle
Research.clearPages("TALLOW");
Research.addPage("TALLOW", "tc.research_page.TALLOW.1");
Research.addCruciblePage("TALLOW", <Thaumcraft:ItemResource:4>);
Research.addArcanePage("TALLOW", <Thaumcraft:blockCandle>);

##  Thaumometer
Research.clearPages("THAUMOMETER");
Research.addPage("THAUMOMETER", "tc.research_page.THAUMOMETER.1");
Research.addCraftingPage("THAUMOMETER", <Thaumcraft:ItemThaumometer>);

##  Revealing
Research.clearPages("GOGGLES");
Research.addPage("GOGGLES", "tc.research_page.GOGGLES.1");
Research.addArcanePage("GOGGLES", <Thaumcraft:ItemGoggles>);

##  Wand Foci
Research.clearPages("FOCUSEXCAVATION");
Research.addPage("FOCUSEXCAVATION", "tc.research_page.FOCUSEXCAVATION.1");
Research.clearPages("FOCUSFIRE");
Research.addPage("FOCUSFIRE", "tc.research_page.FOCUSFIRE.1");
Research.clearPages("FOCUSTRADE");
Research.addPage("FOCUSTRADE", "tc.research_page.FOCUSTRADE.1");
Research.clearPages("FOCUSSHOCK");
Research.addPage("FOCUSSHOCK", "tc.research_page.FOCUSSHOCK.1");
Research.clearPages("FOCUSFROST");
Research.addPage("FOCUSFROST", "tc.research_page.FOCUSFROST.1");

##  Thaumium
Research.clearPages("THAUMIUM");
Research.addPage("THAUMIUM", "tc.research_page.THAUMIUM.1");
Research.addCruciblePage("THAUMIUM", <Thaumcraft:ItemResource:2>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemBootsThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemLeggingsThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemChestplateThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemHelmetThaumium>);

##  Phial
Research.clearPages("PHIAL");
Research.addPage("PHIAL", "tc.research_page.PHIAL.1");
Research.addCraftingPage("PHIAL", <Thaumcraft:ItemEssence>);

##  Warded Jars & Jar Labels
Research.clearPages("JARLABEL");
Research.addPage("JARLABEL", "tc.research_page.JARLABEL.1");
Research.addArcanePage("JARLABEL", <Thaumcraft:blockJar>);
Research.addPage("JARLABEL", "tc.research_page.JARLABEL.2");
Research.addCraftingPage("JARLABEL", <Thaumcraft:ItemResource:13>);
Research.addPage("JARLABEL", "tc.research_page.JARLABEL.3");

##  Void Jar
Research.clearPages("JARVOID");
Research.addPage("JARVOID", "tc.research_page.JARVOID.1");
Research.addArcanePage("JARVOID", <Thaumcraft:blockJar:3>);

##  Table
Research.clearPages("TABLE");
Research.addPage("TABLE", "tc.research_page.TABLE.1");
Research.addCraftingPage("TABLE", <Thaumcraft:blockTable>);

##  Hungry Chest
Research.clearPages("HUNGRYCHEST");
Research.addPage("HUNGRYCHEST", "tc.research_page.HUNGRYCHEST.1");
Research.addArcanePage("HUNGRYCHEST", <Thaumcraft:blockChestHungry>);

##  Golems
Research.clearPages("GOLEMSTRAW");
Research.addPage("GOLEMSTRAW", "tc.research_page.GOLEMSTRAW.1");
Research.addPage("GOLEMSTRAW", "tc.research_page.GOLEMSTRAW.2");
Research.addArcanePage("GOLEMSTRAW", <Thaumcraft:ItemGolemPlacer>);
Research.addPage("GOLEMSTRAW", "tc.research_page.GOLEMSTRAW.3");

Research.clearPages("GOLEMWOOD");
Research.addPage("GOLEMWOOD", "tc.research_page.GOLEMWOOD.1");
Research.addArcanePage("GOLEMWOOD", <Thaumcraft:ItemGolemPlacer:1>);

Research.clearPages("GOLEMFLESH");
Research.addPage("GOLEMFLESH", "tc.research_page.GOLEMFLESH.1");
Research.addCraftingPage("GOLEMFLESH", <Thaumcraft:blockTaint:2>);
Research.addInfusionPage("GOLEMFLESH", <Thaumcraft:ItemGolemPlacer:4>);

Research.clearPages("GOLEMCLAY");
Research.addPage("GOLEMCLAY", "tc.research_page.GOLEMCLAY.1");
Research.addArcanePage("GOLEMCLAY", <Thaumcraft:ItemGolemPlacer:3>);

Research.clearPages("GOLEMTALLOW");
Research.addPage("GOLEMTALLOW", "tc.research_page.GOLEMTALLOW.1");
Research.addCraftingPage("GOLEMTALLOW", <Thaumcraft:blockCosmeticSolid:5>);
Research.addInfusionPage("GOLEMTALLOW", <Thaumcraft:ItemGolemPlacer:2>);

Research.clearPages("GOLEMSTONE");
Research.addPage("GOLEMSTONE", "tc.research_page.GOLEMSTONE.1");
Research.addArcanePage("GOLEMSTONE", <Thaumcraft:ItemGolemPlacer:5>);

Research.clearPages("GOLEMIRON");
Research.addPage("GOLEMIRON", "tc.research_page.GOLEMIRON.1");
Research.addArcanePage("GOLEMIRON", <Thaumcraft:ItemGolemPlacer:6>);

Research.clearPages("GOLEMTHAUMIUM");
Research.addPage("GOLEMTHAUMIUM", "tc.research_page.GOLEMTHAUMIUM.1");
Research.addCruciblePage("GOLEMTHAUMIUM", <Thaumcraft:ItemResource:2>);
Research.addInfusionPage("GOLEMTHAUMIUM", <Thaumcraft:ItemGolemPlacer:7>);

##  Arcane Bore
Research.clearPages("ARCANEBORE");
Research.addPage("ARCANEBORE", "tc.research_page.ARCANEBORE.1");
Research.addInfusionPage("ARCANEBORE", <Thaumcraft:blockWoodenDevice:5>);
Research.addPage("ARCANEBORE", "tc.research_page.ARCANEBORE.2");
Research.addInfusionPage("ARCANEBORE", <Thaumcraft:blockWoodenDevice:4>);
Research.addPage("ARCANEBORE", "tc.research_page.ARCANEBORE.3");

##  Thaumostatic Harness
Research.clearPages("HOVERHARNESS");
Research.addPage("HOVERHARNESS", "tc.research_page.HOVERHARNESS.1");
Research.addInfusionPage("HOVERHARNESS", <Thaumcraft:HoverHarness>);
Research.addPage("HOVERHARNESS", "tc.research_page.HOVERHARNESS.2");

## Add Thaumcraft ores to botania orechid
Orechid.addOre(<ore:oreCinnabar>, 3958);
Orechid.addOre(<ore:oreInfusedAir>, 1248);
Orechid.addOre(<ore:oreInfusedFire>, 1248);
Orechid.addOre(<ore:oreInfusedWater>, 1248);
Orechid.addOre(<ore:oreInfusedEarth>, 1248);
Orechid.addOre(<ore:oreInfusedOrder>, 1248);
Orechid.addOre(<ore:oreInfusedEntropy>, 1248);
Orechid.addOre(<ore:oreAmber>, 2345);

##  WIP Message
<Thaumcraft:ItemThaumonomicon>.addTooltip(format.red("[WIP] Not 100% accurate!"));

print("Initialized 'Thaumcraft.zs'");
