//////////////////////////////////////////////////////////////////////////////////////////////
// Name: AdventOfAscension.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

## Imports
import mods.botania.Orechid;
import mods.thaumcraft.Infusion;

print("Initializing 'AdventOfAscension.zs'...");

##  Val Definitions
val ursaRaw = <nevermine:UrsaRaw>;
val ursaCooked = <nevermine:UrsaCooked>;
val chimeraChopRaw = <nevermine:ChimeraChopRaw>;
val chimeraChopCooked = <nevermine:ChimeraChopCooked>;
val furlionChopRaw = <nevermine:FurlionChopRaw>;
val furlionChopCooked = <nevermine:FurlionChop>;
val natureMelonSlice = <nevermine:NatureMelonSlice>;

val manaDiamond = <Botania:manaResource:2>;
val dragonEgg = <minecraft:dragon_egg>;
val dragonStone = <Botania:manaResource:9>;
val imbuedSlate = <AWWayofTime:imbuedSlate>;
val enderEssence = <arsmagica2:essence:9>;
val arcanePrism = <aura:prismWhite>;
val nullCatalyst = <witchery:ingredient:130>;
val salisMundis = <Thaumcraft:blockCrystal:6>;

val ancientTeleporterBluePrint = <nevermine:AncientTeleporterBlueprint>;

##  Ancient Teleporter
recipes.remove (ancientTeleporterBluePrint);
Infusion.addRecipe("RESEARCH", dragonEgg, [dragonStone, imbuedSlate, enderEssence, manaDiamond, arcanePrism, nullCatalyst, salisMundis, manaDiamond], "iter 40, praecantatio 30, alienis 20, auram 20", ancientTeleporterBluePrint, 5);

##  Food
<ore:listAllmeatraw>.add(ursaRaw);
<ore:listAllbeefraw>.add(ursaRaw);
<ore:listAllmeatcooked>.add(ursaCooked);
<ore:listAllbeefcooked>.add(ursaCooked);
<ore:listAllmeatraw>.add(chimeraChopRaw);
<ore:listAllmeatcooked>.add(chimeraChopCooked);
<ore:listAllporkraw>.add(chimeraChopRaw);
<ore:listAllporkcooked>.add(chimeraChopCooked);
<ore:listAllmeatraw>.add(furlionChopRaw);
<ore:listAllmeatcooked>.add(furlionChopCooked);
<ore:listAllporkraw>.add(furlionChopRaw);
<ore:listAllporkcooked>.add(furlionChopCooked);
<ore:listAllfruit>.add(natureMelonSlice);

##  Botaina Orechid
Orechid.addOre(<ore:oreAmethyst>, 2360);
Orechid.addOre(<ore:oreRosite>, 535);
Orechid.addOre(<ore:oreJade>, 481);
Orechid.addOre(<ore:oreLimonite>, 4443);
Orechid.addOre(<ore:oreSapphire>, 343);
Orechid.addOre(<ore:oreRunium>, 5058);

print("Initialized 'AdventOfAscension.zs'");
