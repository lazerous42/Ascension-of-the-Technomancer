//////////////////////////////////////////////////////////////////////////////////////////////
// Name: AdventOfAscension.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

## Imports
import mods.botania.Orechid;

print("Initializing 'AdventOfAscension.zs'...");

##  Val Definitions
val lampOfCinders = <TwilightForest:item.lampOfCinders>;
val manaDiamond = <Botania:manaResource:2>;
val dragonEgg = <minecraft:dragon_egg>;
val dragonStone = <Botania:manaResource:9>;
val imbuedSlate = <AWWayofTime:imbuedSlate>;
val enderEssence = <arsmagica2:essence:9>;
val arcanePrism = <aura:prismWhite>;
val nullCatalyst = <witchery:ingredient:130>;
val salisMundis = <Thaumcraft:ItemResource:14>;

val pedalsHollyTop = <nevermine:HollyTopPedals>;
val ingotLimonite = <nevermine:IngotLimonite>;
val arrowHollyTop = <nevermine:ElementalArrow>;
val ancientTeleporterBluePrint = <nevermine:AncientTeleporterBlueprint>;

##  Ancient Teleporter
recipes.remove(ancientTeleporterBluePrint);

##  Botaina Orechid
Orechid.addOre(<ore:oreAmethyst>, 2360);
Orechid.addOre(<ore:oreRosite>, 535);
Orechid.addOre(<ore:oreJade>, 481);
Orechid.addOre(<ore:oreLimonite>, 4443);
Orechid.addOre(<ore:oreSapphire>, 343);
Orechid.addOre(<ore:oreRunium>, 5058);

##  Use OreDict Feathers for Hollytop Arrows
recipes.removeShaped(arrowHollyTop, [[null, pedalsHollyTop, null], [null, ingotLimonite, null], [null, <ore:craftingFeather>, null]]);
recipes.addShaped(arrowHollyTop * 4, [[null, pedalsHollyTop, null], [null, ingotLimonite, null], [null, <ore:craftingFeather>, null]]);

print("Initialized 'AdventOfAscension.zs'");
