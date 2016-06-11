//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Project Red.zs
// Author: Lazerous/Jason McRay
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.gregtech.AlloySmelter;
import mods.gregtech.CuttingSaw;
import mods.gregtech.ChemicalBath;
import mods.gregtech.Assembler;
import minetweaker.item.IItemStack;
import mods.nei.NEI;

print("Initializing 'Project Red.zs'...");

##  Val Entries
var ingotIron = <minecraft:iron_ingot>;
var coalBlock = <minecraft:coal_block>;
var sand = <minecraft:sand:*>;
var water = <liquid:water>;
var lubricant = <liquid:lubricant>;
var distilledWater = <liquid:ic2distilledwater>;
var moltenRedstone = <liquid:molten.redstone>;
var moltenGlowstone = <liquid:molten.glowstone>;
var rodIron = <gregtech:gt.metaitem.01:23032>;
var wireFineCopperGT = <gregtech:gt.metaitem.02:19035>;
var wireFineGoldGT = <gregtech:gt.metaitem.02:19086>;
var wireFineIronGT = <gregtech:gt.metaitem.02:19032>;
var sawDiamond = <ForgeMicroblock:sawDiamond:*>;

val peridotAxe = <ProjRed|Exploration:projectred.exploration.axeperidot>;
val peridotBoots = <ProjRed|Exploration:projectred.exploration.peridotboots>;
val peridotChest = <ProjRed|Exploration:projectred.exploration.peridotchestplate>;
val peridotHelmet = <ProjRed|Exploration:projectred.exploration.peridothelmet>;
val peridotHoe = <ProjRed|Exploration:projectred.exploration.hoeperidot>;
val peridotLeggings = <ProjRed|Exploration:projectred.exploration.peridotleggings>;
val peridotPickaxe = <ProjRed|Exploration:projectred.exploration.pickaxeperidot>;
val peridotShovel = <ProjRed|Exploration:projectred.exploration.shovelperidot>;
val peridotSickle = <ProjRed|Exploration:projectred.exploration.sickleperidot>;
val peridotSword = <ProjRed|Exploration:projectred.exploration.swordperidot>;
val rubyAxe = <ProjRed|Exploration:projectred.exploration.axeruby>;
val rubyBoots = <ProjRed|Exploration:projectred.exploration.rubyboots>;
val rubyChest = <ProjRed|Exploration:projectred.exploration.rubychestplate>;
val rubyHelmet = <ProjRed|Exploration:projectred.exploration.rubyhelmet>;
val rubyHoe = <ProjRed|Exploration:projectred.exploration.hoeruby>;
val rubyLeggings = <ProjRed|Exploration:projectred.exploration.rubyleggings>;
val rubyPickaxe = <ProjRed|Exploration:projectred.exploration.pickaxeruby>;
val rubyShovel = <ProjRed|Exploration:projectred.exploration.shovelruby>;
val rubySickle = <ProjRed|Exploration:projectred.exploration.sickleruby>;
val rubySword = <ProjRed|Exploration:projectred.exploration.swordruby>;
val sapphireAxe = <ProjRed|Exploration:projectred.exploration.axesapphire>;
val sapphireBoots = <ProjRed|Exploration:projectred.exploration.sapphireboots>;
val sapphireChest = <ProjRed|Exploration:projectred.exploration.sapphirechestplate>;
val sapphireHelmet = <ProjRed|Exploration:projectred.exploration.sapphirehelmet>;
val sapphireHoe = <ProjRed|Exploration:projectred.exploration.hoesapphire>;
val sapphireLeggings = <ProjRed|Exploration:projectred.exploration.sapphireleggings>;
val sapphirePickaxe = <ProjRed|Exploration:projectred.exploration.pickaxesapphire>;
val sapphireShovel = <ProjRed|Exploration:projectred.exploration.shovelsapphire>;
val sapphireSickle = <ProjRed|Exploration:projectred.exploration.sicklesapphire>;
val sapphireSword = <ProjRed|Exploration:projectred.exploration.swordsapphire>;
var stoneSickle = <ProjRed|Exploration:projectred.exploration.sicklestone>;
var diamondSickle = <ProjRed|Exploration:projectred.exploration.sicklediamond>;
var PRArmor = [peridotLeggings, peridotHelmet, peridotChest, peridotBoots, rubyLeggings, rubyHelmet, rubyChest, rubyBoots, sapphireLeggings, sapphireHelmet, sapphireChest, sapphireBoots] as IItemStack[];
var PRTools = [peridotSword, peridotShovel, peridotSickle, peridotPickaxe, peridotAxe, peridotHoe, rubySword, rubyShovel, rubySickle, rubyPickaxe, rubyAxe, rubyHoe, sapphireSword, sapphireShovel, sapphireSickle, sapphirePickaxe, sapphireAxe, sapphireHoe, diamondSickle, stoneSickle] as IItemStack[];

val bouleSilicon = <ProjRed|Core:projectred.core.part:11>;
val silicon = <ProjRed|Core:projectred.core.part:12>;
val infusedSilicon = <ProjRed|Core:projectred.core.part:13>;
val redSiliconCompound = <ProjRed|Core:projectred.core.part:42>;
val energizedSilicon = <ProjRed|Core:projectred.core.part:14>;
val glowingSiliconCompound = <ProjRed|Core:projectred.core.part:43>;
val copperCoil = <ProjRed|Core:projectred.core.part:16>;
val ironCoil = <ProjRed|Core:projectred.core.part:17>;
val goldCoil = <ProjRed|Core:projectred.core.part:18>;
val ingotElectrotineAlloy = <ProjRed|Core:projectred.core.part:55>;
val electrotineIronCompound = <ProjRed|Core:projectred.core.part:57>;
val dustElectrotine = <ProjRed|Core:projectred.core.part:56>;
val electroSilicon = <ProjRed|Core:projectred.core.part:59>;
val electroSiliconCompound = <ProjRed|Core:projectred.core.part:58>;

##  Removing Gem Tools/Armor
for armor in PRArmor {
    recipes.remove(armor);
    NEI.hide(armor);
    }
for tool in PRTools {
    recipes.remove(tool);
    NEI.hide(tool);
    }

## OreDict Entries
<ore:gemRuby>.remove(<ProjRed|Core:projectred.core.part:37>);
<ore:gemSapphire>.remove(<ProjRed|Core:projectred.core.part:38>);
<ore:gemOlivine>.remove(<ProjRed|Core:projectred.core.part:39>);

## Silicon Boule
furnace.remove(bouleSilicon);
AlloySmelter.addRecipe(bouleSilicon, coalBlock, sand * 8, 100, 8);

recipes.remove(silicon);
recipes.addShaped(silicon * 4, [[sawDiamond], [bouleSilicon]]);
CuttingSaw.addRecipe([silicon * 8], bouleSilicon, water * 5, 400, 8);
CuttingSaw.addRecipe([silicon * 12], bouleSilicon, lubricant * 1, 200, 8);
CuttingSaw.addRecipe([silicon * 8], bouleSilicon, distilledWater * 3, 200, 8);

furnace.remove(infusedSilicon);
recipes.remove(redSiliconCompound);
ChemicalBath.addRecipe([infusedSilicon], silicon, moltenRedstone * 1152, [10000], 400, 2);

furnace.remove(energizedSilicon);
recipes.remove(glowingSiliconCompound);
ChemicalBath.addRecipe([energizedSilicon], silicon, moltenGlowstone * 1152, [10000], 400, 2);

recipes.remove(copperCoil);
Assembler.addRecipe(copperCoil, rodIron, wireFineCopperGT * 8, 200, 8);
recipes.remove(ironCoil);
Assembler.addRecipe(ironCoil, rodIron, wireFineIronGT * 8, 200, 8);
recipes.remove(goldCoil);
Assembler.addRecipe(goldCoil, rodIron, wireFineGoldGT * 8, 200, 8);

furnace.remove(ingotElectrotineAlloy);
recipes.remove(electrotineIronCompound);
AlloySmelter.addRecipe(ingotElectrotineAlloy, ingotIron, dustElectrotine * 8, 100, 8);

furnace.remove(electroSilicon);
recipes.remove(electroSiliconCompound);
AlloySmelter.addRecipe(electroSilicon, silicon, dustElectrotine * 8, 100, 8);

print("Initialized 'Project Red.zs'");
