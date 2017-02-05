//////////////////////////////////////////////////////////////////////////////////////////////
// Name: IndustrialCraft2.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.buildcraft.AssemblyTable;

print("Initializing 'IndustrialCraft2.zs'...");

##  Basic Machine Frame
recipes.remove(<IC2:blockMachine>);
recipes.addShaped(<IC2:blockMachine>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <ore:chipsetIron>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

##  Craftable Iridium Ore
AssemblyTable.addRecipe(<IC2:itemOreIridium>, 80000000, [<IC2:itemRTGPellet>, <IC2:itemMOX>]);

##  Advanced Mining Machine
recipes.remove(<IC2:blockMachine2:11>);
recipes.addShaped(<IC2:blockMachine2:11>, [[<IC2:itemPartAlloy>, <BuildCraft|Factory:miningWellBlock>, <IC2:itemPartAlloy>], [<IC2:blockElectric:1>, <IC2:blockMachine:12>, <IC2:blockMachine2>], [<IC2:itemPartAlloy>, <BuildCraft|Factory:miningWellBlock>, <IC2:itemPartAlloy>]]);

##  Re-Batt
recipes.remove(<IC2:itemBatREDischarged>);
recipes.addShaped(<IC2:itemBatREDischarged>, [[null, <ore:craftingWireTin>, null], [<IC2:itemCasing:1>, <ore:dustElectrotine>, <IC2:itemCasing:1>], [<IC2:itemCasing:1>, <ore:dustElectrotine>, <IC2:itemCasing:1>]]);

##  Semi-Fluid Generator
recipes.remove(<IC2:blockGenerator:7>);
recipes.addShaped(<IC2:blockGenerator:7>, [[<ore:circuitBasic>, <IC2:itemFluidCell>, <ore:circuitBasic>], [<IC2:itemFluidCell>, <IC2:blockGenerator:8>, <IC2:itemFluidCell>], [<ore:circuitBasic>, <IC2:itemFluidCell>, <ore:circuitBasic>]]);

print("Initialized 'IndustrialCraft2.zs'");
