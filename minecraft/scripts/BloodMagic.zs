//////////////////////////////////////////////////////////////////////////////////////////////
// Name: BloodMagic.zs
// Author: Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.bloodmagic.BloodOrb;
import mods.bloodmagic.Binding;
import mods.bloodmagic.Altar;
import mods.bloodmagic.Alchemy;
import mods.botania.ElvenTrade;
import mods.thaumcraft.Infusion;

print("Initializing 'Blood Magic.zs'...");

# - General
##  Blood Altar
recipes.remove(<AWWayofTime:Altar>);
recipes.addShaped(<AWWayofTime:Altar>, [[<ore:compressedCobblestone2x>, <Botania:livingrock0Slab>, <ore:compressedCobblestone2x>], [<ore:compressedCobblestone2x>, <witchery:ingredient:10>, <ore:compressedCobblestone2x>], [<ore:ingotManasteel>, <Thaumcraft:blockStoneDevice>, <ore:ingotManasteel>]]);

##  Blank Slate
Altar.removeRecipe(<AWWayofTime:blankSlate>);
Altar.addRecipe(<AWWayofTime:blankSlate>, <Thaumcraft:blockCosmeticSolid:6>, 1, 1000, 5, 5);

##  Refined Wood Ash (Formely known as Wood Ash)
recipes.remove(<AWWayofTime:bloodMagicIncenseItem>);
furnace.addRecipe(<AWWayofTime:bloodMagicIncenseItem>, <witchery:ingredient:18>, 0.5);
<AWWayofTime:bloodMagicIncenseItem>.displayName = "Refined Wood Ash";

##  Weak Blood Shard
BloodOrb.removeRecipe(<AWWayofTime:weakBloodShard>);
Alchemy.addRecipe(<AWWayofTime:weakBloodShard>*5, [<AWWayofTime:weakBloodShard>, <AWWayofTime:imbuedSlate>], 4, 1500);

##  Blood Stone Blocks
recipes.remove(<AWWayofTime:largeBloodStoneBrick>);
Alchemy.addRecipe(<AWWayofTime:largeBloodStoneBrick>*8, [<AWWayofTime:ritualStone>, <AWWayofTime:ritualStone>, <AWWayofTime:ritualStone>, <AWWayofTime:ritualStone>, <AWWayofTime:weakBloodShard>], 3, 2500);

##  Crystal Cluster
recipes.remove(<AWWayofTime:blockCrystal>);
Infusion.addRecipe("RESEARCH", <AWWayofTime:largeBloodStoneBrick>, [<AWWayofTime:bloodMagicBaseItems:28>, <Botania:manaResource:14>, <AWWayofTime:bloodMagicBaseItems:29>, <witchery:ingredient:130>, <AWWayofTime:bloodMagicBaseItems:28>, <Botania:manaResource:14>, <AWWayofTime:bloodMagicBaseItems:29>, <witchery:ingredient:130>], "permutatio 64, praecantatio 64, fabrico 64, spiritus 64", <AWWayofTime:blockCrystal>, 5);

##  Incense Crucible
recipes.remove(<AWWayofTime:blockCrucible>);
recipes.addShaped(<AWWayofTime:blockCrucible>, [[<ore:nuggetThaumium>, null, <ore:nuggetThaumium>], [<AWWayofTime:blankSlate>, <ore:ingotThaumium>, <AWWayofTime:blankSlate>], [null, <Thaumcraft:blockCandle:*>]]);
##  Alchemical Chemistry Set
BloodOrb.removeRecipe(<AWWayofTime:blockWritingTable>);
Altar.addRecipe(<AWWayofTime:blockWritingTable>, <minecraft:brewing_stand>, 1, 2500);

##  Empty Sockets
recipes.remove(<AWWayofTime:emptySocket>);
recipes.addShaped(<AWWayofTime:emptySocket>, [[<AWWayofTime:weakBloodShard>, <AWWayofTime:bloodMagicBaseItems:4>, <AWWayofTime:weakBloodShard>], [<AWWayofTime:bloodMagicBaseItems:4>, <witchery:ingredient:29>, <AWWayofTime:bloodMagicBaseItems:4>], [<AWWayofTime:weakBloodShard>, <AWWayofTime:bloodMagicBaseItems:4>, <AWWayofTime:weakBloodShard>]]);

##  Spell Table
BloodOrb.removeRecipe(<AWWayofTime:blockHomHeart>);
BloodOrb.addShaped(<AWWayofTime:blockHomHeart>, [[<AWWayofTime:largeBloodStoneBrick>, <AWWayofTime:largeBloodStoneBrick>, <AWWayofTime:largeBloodStoneBrick>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <minecraft:crafting_table>, <AWWayofTime:AlchemicalWizardrybloodRune>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <AWWayofTime:apprenticeBloodOrb>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);

##  Arcane Pedestal
recipes.remove(<AWWayofTime:blockPedestal>);
Altar.addRecipe(<AWWayofTime:blockPedestal>, <Thaumcraft:blockStoneDevice:1>, 4, 20000);

##  Arcane Plinth
recipes.remove(<AWWayofTime:blockPlinth>);
ElvenTrade.addRecipe(<AWWayofTime:blockPlinth>, [<AWWayofTime:blockPedestal>, <witchery:ingredient:130>, <AWWayofTime:blockPedestal>]);
<AWWayofTime:blockPlinth>.addTooltip(format.red("Crafted using the ") + "" + format.green("Alfheim Portal"));

##  Teleposition changes
recipes.remove(<AWWayofTime:blockTeleposer>);
recipes.addShaped(<AWWayofTime:blockTeleposer>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:manaPearl>, <AWWayofTime:telepositionFocus>, <ore:manaPearl>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
Altar.removeRecipe(<AWWayofTime:telepositionFocus>);
Altar.addRecipe(<AWWayofTime:telepositionFocus>, <Botania:manaResource:1>, 4, 2000, 10, 10);
Altar.removeRecipe(<AWWayofTime:enhancedTelepositionFocus>);
Altar.addRecipe(<AWWayofTime:enhancedTelepositionFocus>, <minecraft:nether_star>, 4, 10000);

# - Runes
BloodOrb.removeRecipe(<AWWayofTime:AlchemicalWizardrybloodRune>);
BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune>, [[<minecraft:stone>, <witchery:ingredient:12>, <minecraft:stone>], [<AWWayofTime:blankSlate>, <AWWayofTime:weakBloodOrb>, <AWWayofTime:blankSlate>], [<minecraft:stone>, <Thaumcraft:ItemShard:*>, <minecraft:stone>]]);
BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:1>, [[null, <AWWayofTime:reinforcedSlate>], [<minecraft:bucket>, <AWWayofTime:apprenticeBloodOrb>, <minecraft:bucket>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <minecraft:bucket>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
BloodOrb.removeRecipe(<AWWayofTime:AlchemicalWizardrybloodRune:2>);
BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:2>, [[null, <AWWayofTime:imbuedSlate>], [<AWWayofTime:aquasalus>, <AWWayofTime:magicianBloodOrb>, <AWWayofTime:aquasalus>], [<AWWayofTime:AlchemicalWizardrybloodRune>, null, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
BloodOrb.removeRecipe(<AWWayofTime:AlchemicalWizardrybloodRune:3>);
BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:3>, [[null, <AWWayofTime:imbuedSlate>], [<AWWayofTime:weakBloodOrb>, <AWWayofTime:magicianBloodOrb>, <AWWayofTime:weakBloodOrb>], [<AWWayofTime:AlchemicalWizardrybloodRune>, null, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:4>, [[null, <AWWayofTime:demonicSlate>], [<minecraft:cauldron>, <AWWayofTime:archmageBloodOrb>, <minecraft:cauldron>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <AWWayofTime:AlchemicalWizardrybloodRune>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:5>, [[null, <AWWayofTime:demonicSlate>], [<minecraft:potion:8226>, <AWWayofTime:archmageBloodOrb>, <minecraft:potion:8226>], [<AWWayofTime:AlchemicalWizardrybloodRune>, <AWWayofTime:AlchemicalWizardrybloodRune>, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
recipes.remove(<AWWayofTime:speedRune>);
BloodOrb.addShaped(<AWWayofTime:speedRune>, [[null, <AWWayofTime:reinforcedSlate>], [<minecraft:sugar>, <AWWayofTime:apprenticeBloodOrb>, <minecraft:sugar>], [<AWWayofTime:AlchemicalWizardrybloodRune>, null, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
BloodOrb.removeRecipe(<AWWayofTime:runeOfSelfSacrifice>);
BloodOrb.addShaped(<AWWayofTime:runeOfSelfSacrifice>, [[null, <AWWayofTime:reinforcedSlate>], [<AWWayofTime:sacrificialKnife>, <AWWayofTime:magicianBloodOrb>, <AWWayofTime:sacrificialKnife>], [<AWWayofTime:AlchemicalWizardrybloodRune>, null, <AWWayofTime:AlchemicalWizardrybloodRune>]]);
BloodOrb.removeRecipe(<AWWayofTime:runeOfSacrifice>);
BloodOrb.addShaped(<AWWayofTime:runeOfSacrifice>, [[null, <AWWayofTime:imbuedSlate>], [<AWWayofTime:daggerOfSacrifice>, <AWWayofTime:magicianBloodOrb>, <AWWayofTime:daggerOfSacrifice>], [<AWWayofTime:AlchemicalWizardrybloodRune>, null, <AWWayofTime:AlchemicalWizardrybloodRune>]]);

# - Misc Components
recipes.remove(<AWWayofTime:bloodMagicBaseItems:1>);
recipes.addShaped(<AWWayofTime:bloodMagicBaseItems:1>, [[<Botania:manaGlass>, <ore:ingotManasteel>, <Botania:manaGlass>], [<ore:ingotGold>, <AWWayofTime:simpleCatalyst>, <ore:ingotGold>], [<Botania:manaGlass>, <ore:ingotManasteel>, <Botania:manaGlass>]]);
recipes.remove(<AWWayofTime:bloodMagicBaseItems:2>);
recipes.addShaped(<AWWayofTime:bloodMagicBaseItems:2>*5, [[<ore:manaString>, <ore:manaString>, <ore:manaString>], [<AWWayofTime:magicales>, <AWWayofTime:magicales>, <AWWayofTime:magicales>], [<ore:manaString>, <ore:manaString>, <ore:manaString>]]);
recipes.remove(<AWWayofTime:bloodMagicBaseItems:3>);
recipes.addShaped(<AWWayofTime:bloodMagicBaseItems:3>, [[null, <ore:manaString>, <ore:logWood>], [<ore:manaString>, <ore:logWood>, <ore:manaString>], [<ore:logWood>, <ore:manaString>]]);
recipes.remove(<AWWayofTime:bloodMagicBaseItems:4>);
recipes.addShaped(<AWWayofTime:bloodMagicBaseItems:4>, [[null, <Thaumcraft:blockCosmeticSolid:6>, <AWWayofTime:reinforcedSlate>], [<Thaumcraft:blockCosmeticSolid:6>, <AWWayofTime:bloodMagicBaseItems:3>, <Thaumcraft:blockCosmeticSolid:6>], [<AWWayofTime:reinforcedSlate>, <Thaumcraft:blockCosmeticSolid:6>]]);
Alchemy.removeRecipe(<AWWayofTime:bloodMagicBaseItems:30>);
Alchemy.addRecipe(<AWWayofTime:bloodMagicBaseItems:30>, [<AWWayofTime:bloodMagicBaseItems:17>, <AWWayofTime:bloodMagicBaseItems:29>,  <AWWayofTime:bloodMagicBaseItems:28>, <AWWayofTime:weakBloodShard>, <Botania:manaResource:2>], 6, 15000);

# - Equiptment
##  Dagger of Sacrifice
Altar.removeRecipe(<AWWayofTime:daggerOfSacrifice>);
Altar.addRecipe(<AWWayofTime:daggerOfSacrifice>, <witchery:arthana>, 2, 2500);

##  Lava Crystal
BloodOrb.removeRecipe(<AWWayofTime:lavaCrystal>);
recipes.addShaped(<AWWayofTime:lavaCrystal>, [[<Thaumcraft:blockCosmeticOpaque:2>, <minecraft:lava_bucket>, <Thaumcraft:blockCosmeticOpaque:2>], [<minecraft:lava_bucket>, <AWWayofTime:bloodMagicBaseItems:1>, <minecraft:lava_bucket>], [<ore:obsidian>, <ore:manaDiamond>, <ore:obsidian>]]);

##  Ritual Deviner
recipes.remove(<AWWayofTime:itemRitualDiviner>);
recipes.addShaped(<AWWayofTime:itemRitualDiviner>, [[<ore:manaDiamond>, <AWWayofTime:airScribeTool>, <ore:manaDiamond>], [<AWWayofTime:waterScribeTool>, <witchery:chalkritual>, <AWWayofTime:fireScribeTool>], [<ore:manaDiamond>, <AWWayofTime:earthScribeTool>, <ore:manaDiamond>]]);

##  Blood Letter's Pack
recipes.remove(<AWWayofTime:itemBloodPack>);
recipes.addShaped(<AWWayofTime:itemBloodPack>, [[<Botania:manaGlass>, <Thaumcraft:blockJar>, <Botania:manaGlass>], [<witchery:ingredient:12>, <minecraft:leather_chestplate>, <witchery:ingredient:12>], [<Botania:manaGlass>, <AWWayofTime:blankSlate>, <Botania:manaGlass>]]);

##  Spell Crystals
Altar.removeRecipe(<AWWayofTime:blankSpell>);
Altar.addRecipe(<AWWayofTime:blankSpell>, <witchery:ingredient:92>, 2, 1000);
Alchemy.removeRecipe(<AWWayofTime:itemComplexSpellCrystal>);
Alchemy.addRecipe(<AWWayofTime:itemComplexSpellCrystal>, [<AWWayofTime:blankSpell>, <AWWayofTime:weakBloodShard>, <AWWayofTime:weakBloodShard>, <Botania:manaResource:2>, <witchery:ingredient:80>], 3, 5000);

##  Elemental Inscription Tools
Altar.removeRecipe(<AWWayofTime:waterScribeTool>);
Altar.addRecipe(<AWWayofTime:waterScribeTool>, <Botania:rune>, 3, 1000, 5, 5);
Altar.removeRecipe(<AWWayofTime:fireScribeTool>);
Altar.addRecipe(<AWWayofTime:fireScribeTool>, <Botania:rune:1>, 3, 1000, 5, 5);
Altar.removeRecipe(<AWWayofTime:earthScribeTool>);
Altar.addRecipe(<AWWayofTime:earthScribeTool>, <Botania:rune:2>, 3, 1000, 5, 5);
Altar.removeRecipe(<AWWayofTime:airScribeTool>);
Altar.addRecipe(<AWWayofTime:airScribeTool>, <Botania:rune:3>, 3, 1000, 5, 5);

##  Sigils
BloodOrb.removeRecipe(<AWWayofTime:divinationSigil>);
BloodOrb.addShaped(<AWWayofTime:divinationSigil>, [[<Botania:manaGlass>, <Thaumcraft:ItemResource:1>, <Botania:manaGlass>], [<Botania:manaGlass>, <AWWayofTime:blankSlate>, <Botania:manaGlass>], [<Botania:manaGlass>, <AWWayofTime:weakBloodOrb>, <Botania:manaGlass>]]);
BloodOrb.removeRecipe(<AWWayofTime:waterSigil>);
BloodOrb.addShaped(<AWWayofTime:waterSigil>, [[<AWWayofTime:aquasalus>, <witchery:divinerwater>, <AWWayofTime:aquasalus>], [<minecraft:water_bucket>, <AWWayofTime:imbuedSlate>, <minecraft:water_bucket>], [<minecraft:water_bucket>, <AWWayofTime:magicianBloodOrb>, <minecraft:water_bucket>]]);
recipes.remove(<AWWayofTime:lavaSigil>);
BloodOrb.addShaped(<AWWayofTime:lavaSigil>, [[<AWWayofTime:incendium>, <AWWayofTime:lavaCrystal>, <AWWayofTime:incendium>], [<minecraft:lava_bucket>, <AWWayofTime:demonicSlate>, <minecraft:lava_bucket>], [<minecraft:lava_bucket>, <AWWayofTime:masterBloodOrb>, <minecraft:lava_bucket>]]);
BloodOrb.removeRecipe(<AWWayofTime:airSigil>);
BloodOrb.addShaped(<AWWayofTime:airSigil>, [[<AWWayofTime:aether>, <ore:bEnderAirBottle>, <AWWayofTime:aether>], [<AWWayofTime:aether>, <AWWayofTime:demonicSlate>, <AWWayofTime:aether>], [<AWWayofTime:aether>, <AWWayofTime:masterBloodOrb>, <AWWayofTime:aether>]]);
BloodOrb.removeRecipe(<AWWayofTime:sigilOfTheFastMiner>);
BloodOrb.addShaped(<AWWayofTime:sigilOfTheFastMiner>, [[<Thaumcraft:blockCosmeticSolid:6>, <Botania:manasteelPick>, <Thaumcraft:blockCosmeticSolid:6>], [<Botania:manasteelShovel>, <AWWayofTime:reinforcedSlate>, <Botania:manasteelAxe>], [<Thaumcraft:blockCosmeticSolid:6>, <AWWayofTime:apprenticeBloodOrb>, <Thaumcraft:blockCosmeticSolid:6>]]);
BloodOrb.removeRecipe(<AWWayofTime:growthSigil>);
BloodOrb.addShaped(<AWWayofTime:growthSigil>, [[<Thaumcraft:blockCustomPlant>, <Botania:grassSeeds>, <witchery:witchsapling>], [<Botania:grassSeeds:1>, <AWWayofTime:reinforcedSlate>, <Botania:grassSeeds:2>], [<witchery:witchsapling:1>, <AWWayofTime:apprenticeBloodOrb>, <Thaumcraft:blockCustomPlant:1>]]);
BloodOrb.removeRecipe(<AWWayofTime:voidSigil>);
BloodOrb.addShaped(<AWWayofTime:voidSigil>, [[<ore:ingotVoid>, <ore:manaString>, <ore:ingotVoid>], [<minecraft:bucket>, <AWWayofTime:reinforcedSlate>, <minecraft:bucket>], [<minecraft:bucket>, <AWWayofTime:apprenticeBloodOrb>, <minecraft:bucket>]]);
BloodOrb.removeRecipe(<AWWayofTime:seerSigil>);
BloodOrb.addShaped(<AWWayofTime:seerSigil>, [[<Thaumcraft:blockCosmeticOpaque:2>, <AWWayofTime:bucketLife>, <Thaumcraft:blockCosmeticOpaque:2>], [<Thaumcraft:blockCosmeticOpaque:2>, <AWWayofTime:divinationSigil>, <Thaumcraft:blockCosmeticOpaque:2>], [<Thaumcraft:blockCosmeticOpaque:2>, <AWWayofTime:apprenticeBloodOrb>, <Thaumcraft:blockCosmeticOpaque:2>]]);

##  Bound Tools
Binding.removeRecipe(<AWWayofTime:energySword>);
Binding.addRecipe(<Thaumcraft:ItemSwordElemental>, <AWWayofTime:energySword>);
Binding.removeRecipe(<AWWayofTime:boundAxe>);
Binding.addRecipe(<Thaumcraft:ItemAxeElemental>, <AWWayofTime:boundAxe>);
Binding.removeRecipe(<AWWayofTime:boundShovel>);
Binding.addRecipe(<Thaumcraft:ItemShovelElemental>, <AWWayofTime:boundShovel>);
Binding.removeRecipe(<AWWayofTime:boundPickaxe>);
Binding.addRecipe(<Thaumcraft:ItemPickaxeElemental>, <AWWayofTime:boundPickaxe>);

##  Orbs
Altar.removeRecipe(<AWWayofTime:weakBloodOrb>);
Altar.addRecipe(<AWWayofTime:weakBloodOrb>, <Botania:manaResource:2>, 1, 2000, 2, 1);
Altar.removeRecipe(<AWWayofTime:apprenticeBloodOrb>);
Altar.addRecipe(<AWWayofTime:apprenticeBloodOrb>, <Botania:prismarine>, 2, 5000, 5, 5);
Altar.addRecipe(<AWWayofTime:apprenticeBloodOrb>, <Botania:prismarine:1>, 2, 5000, 5, 5);
Altar.removeRecipe(<AWWayofTime:magicianBloodOrb>);
Altar.addRecipe(<AWWayofTime:magicianBloodOrb>, <Thaumcraft:blockCosmeticSolid:4>, 3, 25000);
Altar.removeRecipe(<AWWayofTime:masterBloodOrb>);
Altar.addRecipe(<AWWayofTime:masterBloodOrb>, <Thaumcraft:ItemEldritchObject>, 4, 40000, 30, 50);

print("Initialized 'BloodMagic.zs'");
