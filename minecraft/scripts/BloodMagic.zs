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
import mods.thaumcraft.Aspects;

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

##  Thaumcraft Aspects
Aspects.set(<AWWayofTime:Altar>, "terra 3, metallum 5, lucrum 3, praecantatio 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrybloodRune>, "terra 4, praecantatio 2, victus 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrybloodRune:1>, "terra 4, praecantatio 3, victus 3,  vacuos 5");
Aspects.set(<AWWayofTime:AlchemicalWizardrybloodRune:2>, "terra 4, aqua 3, praecantatio 3, victus 3");
Aspects.set(<AWWayofTime:AlchemicalWizardrybloodRune:3>, "terra 4, praecantatio 13, victus 10, vitreus 4");
Aspects.set(<AWWayofTime:AlchemicalWizardrybloodRune:4>, "terra 6, praecantatio 8, victus 8, vacuos 8");
Aspects.set(<AWWayofTime:AlchemicalWizardrybloodRune:5>, "metallum 9, praecantatio 11, victus 11, motus 8");
Aspects.set(<AWWayofTime:lifeEssence>, "praecantatio 1, victus 1, aqua 1");
Aspects.set(<AWWayofTime:speedRune>, "terra 4, praecantatio 2, victus 2, motus 3");
Aspects.set(<AWWayofTime:runeOfSacrifice>, "terra 4, praecantatio 3, victus 3, lucrum 3, fames 2");
Aspects.set(<AWWayofTime:runeOfSelfSacrifice>, "terra 4, praecantatio 3, victus 3, lux 3, fames 2");
Aspects.set(<AWWayofTime:ritualStone>, "praecantatio 2, victus 2, tenebrae 1");
Aspects.set(<AWWayofTime:masterStone>, "praecantatio 6, victus 6, tenebrae 4, potentia 5");
Aspects.set(<AWWayofTime:bloodSocket>, "praecantatio 8, victus 10, vitreus 7, lucrum 3");
Aspects.set(<AWWayofTime:imperfectRitualStone>, "terra 6, ignis 2, tenebrae 2");
Aspects.set(<AWWayofTime:armourForge>, "praecantatio 16, victus 20, vitreus 10, lucrum 5");
Aspects.set(<AWWayofTime:emptySocket>, "victus 4, alienis 2, vitreus 7, lucrum 3");
Aspects.set(<AWWayofTime:bloodStoneBrick>, "victus 1, terra 1");
Aspects.set(<AWWayofTime:largeBloodStoneBrick>, "victus 1, terra 1");
Aspects.set(<AWWayofTime:blockWritingTable>, "ignis 3, aqua 2, terra 2, fabrico 1, tenebrae 1, potentia 1");
Aspects.set(<AWWayofTime:blockHomHeart>, "victus 2, terra 2, praecantatio 3");
Aspects.set(<AWWayofTime:blockPedestal>, "victus 1, terra 4, ignis 2, tenebrae 4");
Aspects.set(<AWWayofTime:blockPlinth>, "victus 1, ignis 1, tenebrae 2, metallum 64");
Aspects.set(<AWWayofTime:blockTeleposer>, "alienis 5, iter 5, metallum 12, lucrum 4, praecantatio 2");
Aspects.set(<AWWayofTime:bloodLight>, "lux 9, praecantatio 4" );
Aspects.set(<AWWayofTime:blockConduit>, "praecantatio 3, potentia 4, pannus 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellParadigm>, "terra 2, metallum 6, praecantatio 4, ordo 3, lucrum 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellParadigm:1>, "terra 2, metallum 6, praecantatio 4, ordo 3, humanus 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellParadigm:2>, "terra 2, metallum 6, praecantatio 4, ordo 3, telum 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellParadigm:3>, "terra 2, metallum 6, praecantatio 4, ordo 3, instrumentum 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellEnhancement>, "arbor 2, terra 4, praecantatio 4, ordo 5, potentia 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellEnhancement:1>, "terra 4, metallum 6, praecantatio 9, ordo 5, potentia 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellEnhancement:2>, "terra 6, metallum 9, praecantatio 18, ordo 5, potentia 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellEnhancement:13>, "victus 25, praecantatio 27, metallum 17, ordo 5, potentia 4");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellModifier>, "terra 4, metallum 6, praecantatio 9, ordo 5, permutatio 5");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellModifier:1>, "terra 6, metallum 9, praecantatio 9, ordo 5, permutatio 2, telum 3");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellModifier:2>, "terra 6, metallum 9, praecantatio 9, Ordo 5, permutatio 2, tutamen 3");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellModifier:3>, "terra 9, metallum 9, praecantatio 9, ordo 5, permutatio 2");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellEffect>, "terra 6, metallum 9, praecantatio 7, ordo 5, ignis 3");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellEffect:1>, "terra 6, metallum 9, praecantatio 7, ordo 5, gelum 3");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellEffect:2>, "terra 6, metallum 9, praecantatio 7, ordo 5, aer 3");
Aspects.set(<AWWayofTime:AlchemicalWizardrytile.blockSpellEffect:3>, "terra 9, metallum 9, praecantatio 7, ordo 5");
Aspects.set(<AWWayofTime:demonPortalMain>, "telum 17, alienis 22, terra 9, aqua 9, aer 9, ignis 9");
Aspects.set(<AWWayofTime:blockReagentConduit>, "metallum 4, pannus 4, praecantatio 5, iter 7");
Aspects.set(<AWWayofTime:blockAlchemicCalcinator>, "praecantatio 6, victus 4, ignis 4, permutatio 2, vitreus 3");
Aspects.set(<AWWayofTime:blockCrystalBelljar>, "vitreus 5, arbor 2, vinculum 4");
Aspects.set(<AWWayofTime:blockDemonChest>, "arbor 6, vacuos 4, alienis 2, infernus 2");
Aspects.set(<AWWayofTime:blockCrystal>, "victus 60, potentia 21, ignis 20, praecantatio 60, perditio 3, tenebrae 3, infernus 30, spiritus 42, mortuus 51");
Aspects.set(<AWWayofTime:blockCrystal:1>, "victus 60, potentia 21, ignis 20, praecantatio 60, ordo 3, tenebrae 3, infernus 30, spiritus 42, mortuus 51");
Aspects.set(<AWWayofTime:blockEnchantmentGlyph>, "praecantatio 45, victus 45, potentia 12, vacuos 10");
Aspects.set(<AWWayofTime:blockEnchantmentGlyph:1>, "praecantatio 45, victus 45, potentia 12, spiritus 4, auram 6");
Aspects.set(<AWWayofTime:blockStabilityGlyph>, "praecantatio 45, victus 45, potentia 12, ignis 6, aer 6, aqua 6, terra 6");
Aspects.set(<AWWayofTime:blockCrucible>, "terra 3, metallum 6, ignis 2");
Aspects.set(<AWWayofTime:apprenticeBloodOrb>, "vitreus 4, praecantatio 3, victus 3");
Aspects.set(<AWWayofTime:lavaCrystal>, "ignis 5, terra 2, praecantatio 2, victus 2");
Aspects.set(<AWWayofTime:waterSigil>, "aqua 10, praecantatio 2, victus 2");
Aspects.set(<AWWayofTime:lavaSigil>, "ignis 12, terra 2, praecantatio 2, victus 2");
Aspects.set(<AWWayofTime:voidSigil>, "vacuos 16, praecantatio 3, victus 3");
Aspects.set(<AWWayofTime:blankSlate>, "terra 2, praecantatio 2, victus 2");
Aspects.set(<AWWayofTime:reinforcedSlate>, "terra 2, praecantatio 3, victus 3");
Aspects.add(<AWWayofTime:sacrificialKnife>, "victus 1, telum 2");
Aspects.set(<AWWayofTime:daggerOfSacrifice>, "metallum 6, telum 3, praecantatio 3, victus 3");
Aspects.set( <AWWayofTime:airSigil>, "volatus 3, aer 3, spiritus 1, praecantatio 3, victus 3");
Aspects.set(<AWWayofTime:sigilOfTheFastMiner>, "praecantatio 3, victus 3, instrumentum 6, perfodio 2");
Aspects.set(<AWWayofTime:sigilOfElementalAffinity>, "terra 4, aqua 4, aer 4, ignis 4, praecantatio 4, victus 4");
Aspects.set(<AWWayofTime:sigilOfHaste>, "praecantatio 6, victus 6, iter 9, ");
Aspects.set(<AWWayofTime:sigilOfHolding>, "praecantatio 4, victus 4");
Aspects.set(<AWWayofTime:divinationSigil>, "praecantatio 2, victus 2, ordo 2");
Aspects.set(<AWWayofTime:waterScribeTool>, "praecantatio 2, victus 2, cognito 2, sensus 3, aqua 2");
Aspects.set(<AWWayofTime:fireScribeTool>, "praecantatio 2, victus 2, cognito 2, sensus 3, ignis 2");
Aspects.set(<AWWayofTime:earthScribeTool>, "praecantatio 2, victus 2, cognito 2, sensus 3, terra 2");
Aspects.set(<AWWayofTime:airScribeTool>, "praecantatio 2, victus 2, cognito 2, sensus 3, aer 2");
Aspects.set(<AWWayofTime:activationCrystal>, "praecantatio 6, victus 6, potentia 4, instrumentum 1");
Aspects.set(<AWWayofTime:activationCrystal:1>, "victus 7, potentia 5, ignis 6, praecantatio 13, perditio 3, tenebrae 3");
Aspects.set(<AWWayofTime:boundHelmet>, "praecantatio 9, victus 6, tutamen 5, alienis 2");
Aspects.set(<AWWayofTime:boundPlate>, "praecantatio 11, victus 7, tutamen 7, alienis 3");
Aspects.set(<AWWayofTime:boundLeggings>, "praecantatio 11, victus 7, tutamen 6, alienis 3");
Aspects.set(<AWWayofTime:boundBoots>, "praecantatio 8, victus 5, tutamen 4, alienis 1");
Aspects.set(<AWWayofTime:weakBloodShard>, "praecantatio 2, lucrum 3, alienis 3, perditio 2");
Aspects.set(<AWWayofTime:growthSigil>, "praecantatio 2, victus 2, herba 4, messis 2");
Aspects.set(<AWWayofTime:blankSpell>, "vitreus 1, praecantatio 2, victus 2");
Aspects.set(<AWWayofTime:masterBloodOrb>, "praecantatio 4, victus 4, alienis 2");
Aspects.set(<AWWayofTime:alchemyFlask>, "praecantatio 2, victus 2, vitreus 1");
Aspects.set(<AWWayofTime:standardBindingAgent>, "victus 1, potentia 2, ignis 2, praecantatio 1, aqua 1");
Aspects.set(<AWWayofTime:mundanePowerCatalyst>, "victus 2, potentia 2, ignis 2, praecantatio 2, lux 2");
Aspects.set(<AWWayofTime:averagePowerCatalyst>, "victus 4, potentia 5, ignis 4, praecantatio 4, aqua 1, lux 4, gelum 1");
Aspects.set(<AWWayofTime:greaterPowerCatalyst>, "victus 6, potentia 8, ignis 7, praecantatio 6, aqua 1, lux 7, gelum 1");
Aspects.set(<AWWayofTime:mundaneLengtheningCatalyst>, "victus 2, potentia 4, ignis 2, praecantatio 2");
Aspects.set(<AWWayofTime:averageLengtheningCatalyst>, "victus 4, potentia 9, ignis 4, praecantatio 4, aqua 1, gelum 1");
Aspects.set(<AWWayofTime:greaterLengtheningCatalyst>, "victus 6, potentia 15, ignis 7, praecantatio 6, aqua 1, gelum 1");
Aspects.set(<AWWayofTime:incendium>, "victus 1, potentia 1, ignis 2, praecantatio 1");
Aspects.set(<AWWayofTime:magicales>, "victus 1, potentia 1, praecantatio 3");
Aspects.set(<AWWayofTime:sanctus>, "victus 1, potentia 1, praecantatio 1, lux 2");
Aspects.set(<AWWayofTime:aether>, "victus 1, potentia 1, praecantatio 1, aer 2");
Aspects.set(<AWWayofTime:simpleCatalyst>, "potentia 3, ignis 2, praecantatio 1, victus 1");
Aspects.set(<AWWayofTime:crepitous>, "victus 1, potentia 1, praecantatio 1, perditio 2");
Aspects.set(<AWWayofTime:crystallos>, "victus 1, potentia 1, praecantatio 1, gelum 2");
Aspects.set(<AWWayofTime:terrae>, "victus 1, potentia 1, praecantatio 1, terra 2");
Aspects.set(<AWWayofTime:aquasalus>, "victus 1, potentia 1, praecantatio 1, aqua 2");
Aspects.set(<AWWayofTime:tennebrae>, "victus 1, potentia 1, praecantatio 1, tenebrae 2");
Aspects.set(<AWWayofTime:demonBloodShard>, "alienis 8, praecantatio 8, tenebrae 8, perditio 8, infernus 8, superbia 8");
Aspects.set(<AWWayofTime:archmageBloodOrb>, "victus 13, ignis 3, praecantatio 16, perditio 3, tenebrae, 3, vitreus 4");
Aspects.set(<AWWayofTime:transcendentBloodOrb>,"victus 64, potentia 15, ignis 14, praecantatio 64, spiritus 21, mortuus 38, vitreus 4");
Aspects.set(<AWWayofTime:sigilOfWind>, "volatus 6, aer 6, spiritus 2, praecantatio 8, victus 8");
Aspects.set(<AWWayofTime:telepositionFocus>, "victus 2, praecantatio 3, alienis 3, iter 3");
Aspects.set(<AWWayofTime:enhancedTelepositionFocus>, "victus 5, praecantatio 6, alienis 2, iter 2");
Aspects.set(<AWWayofTime:reinforcedTelepositionFocus>, "victus 5, praecantatio 8, alienis 4, iter 2, perditio 1");
Aspects.set(<AWWayofTime:demonicTelepositionFocus>, "victus 7, praecantatio 9, alienis 4, iter 1, perditio 2, tenebrae 2");
Aspects.set(<AWWayofTime:imbuedSlate>, "victus 4, praecantatio 4, terra 1");
Aspects.set(<AWWayofTime:demonicSlate>, "victus 7, praecantatio 7, terra 1");
Aspects.set(<AWWayofTime:duskScribeTool>, "praecantatio 2, victus 2, cognito 2, sensus 3, potentia 2, ignis 2");
Aspects.set(<AWWayofTime:sigilOfTheBridge>, "victus 4, praecantatio 4, spiritus 2, iter 2");
Aspects.set(<AWWayofTime:armourInhibitor>, "praecantatio 3, lucrum 4, metallum 5, alienis 2");
Aspects.set(<AWWayofTime:demonPlacer>, "alienis 8, praecantatio 8, tenebrae 8, perditio 8, infernus 8, superbia 8");
Aspects.set(<AWWayofTime:weakFillingAgent>, "victus 1, praecantatio 1, potentia 2");
Aspects.set(<AWWayofTime:standardFillingAgent>, "victus 2, potentia 4, ignis 1, praecantatio 2, terra 1");
Aspects.set(<AWWayofTime:enhancedFillingAgent>, "victus 3, potentia 3, ignis 2, praecantatio 4, aqua 1");
Aspects.set(<AWWayofTime:weakBindingAgent>, "victus 1, potentia 2, ignis 2, praecantatio 1, aqua 1");
Aspects.set(<AWWayofTime:itemRitualDiviner>, "victus 4, praecantatio 4, ignis 2, terra 2, aer 2, aqua 2, sensus 4");
Aspects.set(<AWWayofTime:itemRitualDiviner:1>, "victus 9, praecantatio 9, ignis 2, terra 2, aer 2, aqua 2, sensus 6, tenebrae 2");
Aspects.set(<AWWayofTime:itemRitualDiviner:2>, "ignis 6, terra 6, aer 6, aqua 6, tenebrae 6, lux 6");
Aspects.set(<AWWayofTime:sigilOfMagnetism>, "alienis 3, iter 2, lucrum 4, metallum 8, praecantatio 4, victus 4");
Aspects.set(<AWWayofTime:itemKeyOfDiablo>, "praecantatio 4, lucrum 7, metallum 10, tempus 3");
Aspects.set(<AWWayofTime:energyBazooka>, "alienis 5, venenum 2, ira 6, telum 6, lucrum 4, perditio 3");
Aspects.set(<AWWayofTime:itemBloodLightSigil>, "victus 7, praecantatio 7, lux 10, vacuos 2");
Aspects.set(<AWWayofTime:itemComplexSpellCrystal>, "victus 3, potentia 2, ignis 2, praecantatio 3, perditio 1, lucrum 4");
Aspects.set(<AWWayofTime:sigilOfSupression>, "victus 6, praecantatio 6, vacuos 6, aqua 3, permutatio 4");
Aspects.set(<AWWayofTime:sigilOfEnderSeverance:1>, "victus 4, praecantatio 4, alienis 12, vinculum 4");
Aspects.set(<AWWayofTime:seerSigil>, "victus 3, praecantatio 3, ordo 4, sensus 2, invidia 1");
Aspects.set(<AWWayofTime:bucketLife>, "metallum 8, vacuos 1, praecantatio 1, victus 1");
Aspects.add(<AWWayofTime:itemDestinationClearer>, "victus 1, praecantatio 1");
Aspects.add(<AWWayofTime:bloodMagicBaseItems:2>, "pannus 2");
Aspects.remove(<AWWayofTime:bloodMagicBaseItems:3>, "bestia 3, pannus 1");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:4>, "terra 2, praecantatio 2, victus 2, metallum 4");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:5>, "praecantatio 5, telum 2, volatus 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:6>, "praecantatio 2, humanus 5, aer 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:7>, "praecantatio 2, telum 5, ira 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:8>, "metallum 6, ordo 3, machina 2");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:9>, "metallum 6, ordo 3, praecantatio 2");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:10>, "praecantatio 3, ignis 5, potentia 2");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:11>, " praecantatio 3, gelum 5, potentia 2");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:12>, "praecantatio 3, aer 5, potentia 2");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:13>, "praecantatio 3, terra 5, potentia 2");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:14>, "praecantatio 4, ordo 6, metallum 2");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:15>, "praecantatio 8, ordo 2, victus 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:16>, "praecantatio 12, ordo 4, victus 4");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:17>, "praecantatio 18, ordo 8, victus 6");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:18>, "praecantatio 2, vitreus 5, potentia 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:19>, "praecantatio 2, ignis 4, telum 3, potentia 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:20>, "praecantatio 2, tutamen 4, pannus 3, potentia 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:21>, "praecantatio 2, terra 4, perditio 3, potentia 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:22>, "praecantatio 2, terra 4, perditio 3, potentia 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:23>, "praecantatio 2, tutamen 3, vinculum 4, potentia 2");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:24>, "praecantatio 3, perditio 2,fames 3, potentia 5");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:25>, "terra 4, ignis 4, potentia 3, metallum 8");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:26>, "praecantatio 2, terra 3, instrumentum 5, potentia 3");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:27>, "praecantatio 11, victus 11");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:28>, "victus 37, potentia 4, ignis 4, praecantatio 37, perditio 1, tenebrae 1, infernus 10, mortuus 13");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:29>, "victus 37, potentia 4, ignis 4, praecantatio 37, perditio 1, tenebrae 1, infernus 10, spiritus 13");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:30>, "victus 34, praecantatio 34, spiritus 7, infernus 4, potentia 5");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:31>, "victus 28, praecantatio 28, metallum 11, lucrum 6");
Aspects.set(<AWWayofTime:bloodMagicBaseItems:32>, "alienis 2, iter 1, praecantatio 1, perditio 1");
Aspects.set(<AWWayofTime:bloodMagicBaseAlchemyItems>, "praecantatio 2, ignis 3, potentia 1, telum 1");
Aspects.set(<AWWayofTime:bloodMagicBaseAlchemyItems:1>, "praecantatio 2, tenebrae 1, tutamen 3, pannus 2, potentia 2");
Aspects.set(<AWWayofTime:bloodMagicBaseAlchemyItems:2>, "terra 3, perditio 2, ignis 1, praecantatio 3, potentia 2");
Aspects.set(<AWWayofTime:bloodMagicBaseAlchemyItems:3>, "praecantatio 3, ignis 2, sensus 1, potentia 3");
Aspects.set(<AWWayofTime:bloodMagicBaseAlchemyItems:4>, "praecantatio 3, mortuus 2, lucrum 2, potentia 3");
Aspects.set(<AWWayofTime:bloodMagicBaseAlchemyItems:5>, "mortuus 2,corpus 1, potentia 2, ignis 1");
Aspects.set(<AWWayofTime:bloodMagicBaseAlchemyItems:6>, "praecantatio 2, potentia 3, machina 1, ignis 1");
Aspects.set(<AWWayofTime:bloodMagicBaseAlchemyItems:7>, "praecantatio 2, potentia 2, vinculum 1");
Aspects.set(<AWWayofTime:bloodMagicBaseAlchemyItems:8>, "praecantatio 2, potentia 4, sensus 3, vitreus 2");
Aspects.set(<AWWayofTime:dawnScribeTool>, "praecantatio 7, victus 7, lux 7, sensus 2");
Aspects.set(<AWWayofTime:itemBloodPack>, "bestia 3, pannus 6, vacuos 2, instrumentum 1");
Aspects.set(<AWWayofTime:itemHarvestSigil>, "victus 11, praecantatio 11, herba 9, messis 7");
Aspects.set(<AWWayofTime:itemCompressionSigil>, "fabrico 3, machina 3, motus 2, praecantatio 7, victus 7");
Aspects.set(<AWWayofTime:boundHelmetWater>, "victus 54, potentia 3, ignis 3, praecantatio 54, aqua 2");
Aspects.set(<AWWayofTime:boundPlateWater>, "victus 61, potentia 3, ignis 2, praecantatio 61, aqua 2");
Aspects.set(<AWWayofTime:boundLeggingsWater>, "victus 38, potentia 2, ignis 2, praecantatio 38, aqua 1");
Aspects.set(<AWWayofTime:boundBootsWater>, "victus 31, potentia 2, ignis 1, praecantatio 31, aqua 1");
Aspects.set(<AWWayofTime:boundHelmetEarth>, "victus 54, potentia 3, ignis 3, praecantatio 54, terra 2");
Aspects.set(<AWWayofTime:boundPlateEarth>, "victus 61, potentia 3, ignis 2, praecantatio 61, terra 2");
Aspects.set(<AWWayofTime:boundLeggingsEarth>, "victus 38, potentia 2, ignis 2, praecantatio 38, terra 1");
Aspects.set(<AWWayofTime:boundBootsEarth>, "victus 31, potentia 2, ignis 1, praecantatio 31, terra 1");
Aspects.set(<AWWayofTime:boundHelmetWind>, "victus 54, potentia 3, ignis 3, praecantatio 54, aer 2");
Aspects.set(<AWWayofTime:boundPlateWind>, "victus 61, potentia 3, ignis 2, praecantatio 61, aer 2");
Aspects.set(<AWWayofTime:boundLeggingsWind>, "victus 38, potentia 2, ignis 2, praecantatio 38, aer 1");
Aspects.set(<AWWayofTime:boundBootsWind>, "victus 31, potentia 2, ignis 1, praecantatio 31, aer 1");
Aspects.set(<AWWayofTime:boundHelmetFire>, "victus 54, potentia 3, ignis 3, praecantatio 54, ignis 2");
Aspects.set(<AWWayofTime:boundPlateFire>, "victus 61, potentia 3, ignis 2, praecantatio 61, ignis 2");
Aspects.set(<AWWayofTime:boundLeggingsFire>, "victus 38, potentia 2, ignis 2, praecantatio 38, ignis 1");
Aspects.set(<AWWayofTime:boundBootsFire>, "victus 31, potentia 2, ignis 1, praecantatio 31, ignis 1");
Aspects.set(<AWWayofTime:inputRoutingFocus>, "alienis 2, motus 1, vitreus 2");
Aspects.set(<AWWayofTime:outputRoutingFocus>, "alienis 2, motus 1, terra 2");
Aspects.set(<AWWayofTime:outputRoutingFocus:1>, "alienis 2, motus 1, perditio 2");
Aspects.set(<AWWayofTime:outputRoutingFocus:2>, "alienis 2, motus 1, sensus 2");
Aspects.set(<AWWayofTime:outputRoutingFocus:3>, "alienis 2, motus 1, tenebrae 2");
Aspects.set(<AWWayofTime:outputRoutingFocus:4>, "alienis 2, motus 1, pannus 2");
Aspects.set(<AWWayofTime:bloodMagicIncenseItem>, "arbor 5, potentia 2, sensus 2");
Aspects.set(<AWWayofTime:bloodMagicIncenseItem:1>, "herba 5, potentia 2, sensus 2");
Aspects.set(<AWWayofTime:bloodMagicIncenseItem:2>, "lucrum 5, potentia 2, sensus 2");
Aspects.set(<AWWayofTime:bloodMagicIncenseItem:3>, "venenum 5, potentia 2, sensus 2");
Aspects.set(<AWWayofTime:bloodMagicIncenseItem:4>, "mortuus 5, potentia 2, sensus 2");

print("Initialized 'BloodMagic.zs'");
