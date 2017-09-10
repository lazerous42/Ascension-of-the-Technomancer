//////////////////////////////////////////////////////////////////////////////////////////////
// Name: ImmersiveEngineering.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.CokeOven;
import mods.ic2.Compressor;

print("Initializing 'ImmersiveEngineering.zs'...");

##  Val Definitions
val ingotIron = <ore:ingotIron>;
val dustRedstone = <ore:dustRedstone>;
val ingotCopper = <ore:ingotCopper>;
val ingotSteel = <ore:ingotSteel>;
val ingotConstantan = <ore:ingotConstantan>;
val plankWood = <ore:plankWood>;
val itemCharcoal = <minecraft:coal:1>;
val bottleCreosoteIE = <ImmersiveEngineering:fluidContainers>;
val bottleCreosoteRC = <Railcraft:fluid.creosote.bottle>;

val wireFineAnyCopper = <ore:wireFineAnyCopper>;
val wireFineElectrum = <ore:wireFineElectrum>;
val wireFineSteel = <ore:wireFineSteel>;
val wireFineAluminium = <ore:wireFineAluminium>;

val itemCoalCoke = <ImmersiveEngineering:material:6>;
val blockCoalCoke = <ImmersiveEngineering:stoneDecoration:3>;
val stickTreated = <ImmersiveEngineering:material>;
val planksTreated = <ImmersiveEngineering:treatedWood>;
val engineersHammer = <ImmersiveEngineering:tool>;

##  Creosote Bottle Oredict
<ore:bottleCreosote>.add(bottleCreosoteIE);

## Coal Coke
recipes.remove(blockCoalCoke);
Compressor.addRecipe(blockCoalCoke, itemCoalCoke * 9);

## Coke Oven Tweaks
# Charcoal
CokeOven.removeRecipe(itemCharcoal);
for logWood in <ore:logWood>.items {
	CokeOven.addRecipe(itemCharcoal, 250, logWood, 1200); 
}
# Coal Coke
CokeOven.removeRecipe(itemCoalCoke);
CokeOven.addRecipe(itemCoalCoke, 250, <minecraft:coal>, 1200); 

##  Treated Sticks
recipes.remove(<ImmersiveEngineering:material>);
recipes.addShapedMirrored(<ImmersiveEngineering:material> * 2, [[<ImmersiveEngineering:treatedWood>, null], [<ImmersiveEngineering:treatedWood>, null]]);
recipes.addShapedMirrored(<ImmersiveEngineering:material> * 4, [[<ore:craftingToolSaw>, null, null], [<ImmersiveEngineering:treatedWood>, null, null], [<ImmersiveEngineering:treatedWood>, null, null]]);

##  Treated Planks Bottle Return Fix (using creosote bottles to make treated planks only returns one bottle no matter how many are in the crafting grid)
recipes.removeShaped(planksTreated, [[plankWood, plankWood, plankWood], [plankWood, bottleCreosoteIE, plankWood], [plankWood, plankWood, plankWood]]);
recipes.removeShaped(planksTreated, [[plankWood, plankWood, plankWood], [plankWood, bottleCreosoteRC, plankWood], [plankWood, plankWood, plankWood]]);
recipes.addShaped(planksTreated * 8, [[plankWood, plankWood, plankWood], [plankWood, <ore:bottleCreosote>.giveBack(<minecraft:glass_bottle>), plankWood], [plankWood, plankWood, plankWood]]);

#lightning rod base
recipes.remove(<ImmersiveEngineering:metalMultiblock>);
recipes.addShaped(<ImmersiveEngineering:metalMultiblock>, [[<ImmersiveEngineering:coil:2>, <IC2:blockFenceIron>, <ImmersiveEngineering:coil:2>], [<ImmersiveEngineering:metalDevice:7>, <IC2:blockFenceIron>, <ImmersiveEngineering:metalDevice:7>], [<ore:blockDarkSteel>, <StevesCarts:ModuleComponents:7>, <ore:blockDarkSteel>]]);

##  Engineers Hammer
recipes.remove(engineersHammer);
recipes.addShaped(engineersHammer, [[null, ingotIron, <minecraft:string>], [null, stickTreated, ingotIron], [stickTreated, null, null]]);

##  Wire
recipes.remove(<ImmersiveEngineering:coil:2>);
recipes.remove(<ImmersiveEngineering:coil:1>);
recipes.remove(<ImmersiveEngineering:coil>);
recipes.addShaped(<ImmersiveEngineering:coil:2> * 2, [[null, wireFineSteel, null], [wireFineAluminium, <ore:treatedStick>, wireFineAluminium], [null, wireFineSteel, null]]);
recipes.addShaped(<ImmersiveEngineering:coil:1> * 2, [[null, wireFineElectrum, null], [wireFineElectrum, <ore:treatedStick>, wireFineElectrum], [null, wireFineElectrum, null]]);
recipes.addShaped(<ImmersiveEngineering:coil> * 2, [[null, wireFineAnyCopper, null], [wireFineAnyCopper, <ore:treatedStick>, wireFineAnyCopper], [null, wireFineAnyCopper, null]]);

##  PowerGen
recipes.remove(<ImmersiveEngineering:metalDevice:9>);
recipes.remove(<ImmersiveEngineering:metalDevice:10>);
recipes.remove(<ImmersiveEngineering:woodenDevice:2>);
recipes.remove(<ImmersiveEngineering:woodenDevice:1>);
recipes.remove(<ImmersiveEngineering:woodenDevice:3>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:9>, [[ingotIron, <ImmersiveEngineering:metalDevice:3>, ingotIron], [dustRedstone, <ImmersiveEngineering:storage:9>, dustRedstone], [ingotSteel, ingotSteel, ingotSteel]]);
recipes.addShaped(<ImmersiveEngineering:metalDevice:10>, [[<ore:ingotConstantan>, <ImmersiveEngineering:metalDevice:7>, <ore:ingotConstantan>], [<ore:ingotEnderium>, <ImmersiveEngineering:storage:10>, <ore:ingotEnderium>], [<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>]]);
recipes.addShaped(<ImmersiveEngineering:woodenDevice:3>, [[<ImmersiveEngineering:material:5>, <ImmersiveEngineering:material:5>, <ImmersiveEngineering:material:5>], [<ImmersiveEngineering:material:5>, <IC2:itemRecipePart:12>, <ImmersiveEngineering:material:5>], [<ImmersiveEngineering:material:5>, <ImmersiveEngineering:material:5>, <ImmersiveEngineering:material:5>]]);
recipes.addShaped(<ImmersiveEngineering:woodenDevice:1>, [[<ImmersiveEngineering:material:1>, <ImmersiveEngineering:material:1>, <ImmersiveEngineering:material:1>], [<ImmersiveEngineering:material:1>, <IC2:itemRecipePart:11>, <ImmersiveEngineering:material:1>], [<ImmersiveEngineering:material:1>, <ImmersiveEngineering:material:1>, <ImmersiveEngineering:material:1>]]);
recipes.addShaped(<ImmersiveEngineering:woodenDevice:2>, [[<ImmersiveEngineering:material:2>, <ImmersiveEngineering:material:2>, <ImmersiveEngineering:material:2>], [<ImmersiveEngineering:material:2>, <IC2:itemRecipePart:11>, <ImmersiveEngineering:material:2>], [<ImmersiveEngineering:material:2>, <ImmersiveEngineering:material:2>, <ImmersiveEngineering:material:2>]]);

##  Drill Heads
recipes.remove(<ImmersiveEngineering:drillhead>);
recipes.remove(<ImmersiveEngineering:drillhead:1>);
recipes.addShaped(<ImmersiveEngineering:drillhead:1>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, null], [<minecraft:iron_block>, <minecraft:iron_block>, <GraviSuite:advDDrill:*>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, null]]);
recipes.addShaped(<ImmersiveEngineering:drillhead>, [[ingotSteel, ingotSteel, null], [<ore:blockSteel>, <ore:blockSteel>, <IC2:itemToolIridiumDrill:*>], [ingotSteel, ingotSteel, null]]);

##  Light Engineering Block
recipes.remove(<ImmersiveEngineering:metalDecoration:7>);
recipes.addShaped(<ImmersiveEngineering:metalDecoration:7>, [[ingotIron, <ImmersiveEngineering:material:11>, ingotIron], [ingotConstantan, ingotConstantan, ingotConstantan], [ingotIron, <ImmersiveEngineering:material:11>, ingotIron]]);

##  Blueprints
recipes.addShaped(<ImmersiveEngineering:blueprint:2>, [[<ImmersiveEngineering:metal:20>, null, <ImmersiveEngineering:metal:20>], [<ImmersiveEngineering:metal:20>, <ImmersiveEngineering:blueprint>, <ImmersiveEngineering:metal:20>], [<ImmersiveEngineering:metal:20>, <minecraft:emerald_block>, <ImmersiveEngineering:metal:20>]]);
recipes.addShaped(<ImmersiveEngineering:blueprint:1>, [[<ore:ingotHOPGraphite>, <ore:blockEmerald>, <ore:ingotHOPGraphite>], [<ore:ingotHOPGraphite>, <ImmersiveEngineering:blueprint>, <ore:ingotHOPGraphite>], [<ore:ingotHOPGraphite>, <ore:blockEmerald>, <ore:ingotHOPGraphite>]]);

##  Metal Press Plate Recipies
//MetalPress.addRecipe(plateBrass, <Steamcraft:steamcraftIngot:2>, <ImmersiveEngineering:mold>, 2400);
//MetalPress.addRecipe(plateBrass, <Steamcraft:steamcraftIngot:2>, <ImmersiveEngineering:mold>, 2400);
//MetalPress.addRecipe(plateBronze, <ThermalFoundation:material:73>, <ImmersiveEngineering:mold>, 2400);
//MetalPress.addRecipe(plateBronze, <minecraft:gold_ingot>, <ImmersiveEngineering:mold>, 2400);
//MetalPress.addRecipe(plateTin, <ThermalFoundation:material:65>, <ImmersiveEngineering:mold>, 2400);
//MetalPress.addRecipe(plateZinc, <Steamcraft:steamcraftIngot:1>, <ImmersiveEngineering:mold>, 2400);

print("Initialized 'ImmersiveEngineering.zs'");
