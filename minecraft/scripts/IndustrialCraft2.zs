//////////////////////////////////////////////////////////////////////////////////////////////
// Name: IndustrialCraft2.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.buildcraft.AssemblyTable;
import mods.thermalexpansion.Pulverizer;

print("Initializing 'IndustrialCraft2.zs'...");

##  Basic Machine Frame
recipes.remove(<IC2:blockMachine>);
recipes.addShaped(<IC2:blockMachine>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <ore:chipsetIron>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

##  Macerator
//recipes.remove(<IC2:blockMachine:3>);
//recipes.addShaped(<IC2:blockMachine:3>, [[<Railcraft:cube:4>, <Railcraft:cube:4>, <Railcraft:cube:4>], [<ore:cobblestone>, <IC2:blockMachine>, <ore:cobblestone>], [null, <ore:circuitBasic>, null]]);

##  Craftable Iridium Ore
AssemblyTable.addRecipe(<IC2:itemOreIridium>, 80000000, [<IC2:itemRTGPellet>, <IC2:itemMOX>]);

##  Hammer
//recipes.remove(<IC2:itemToolForgeHammer>);
//recipes.addShaped(<IC2:itemToolForgeHammer>, [[null, <ore:ingotIron>, <ore:ingotIron>], [<ore:treatedStick>, <ore:treatedStick>, <ore:ingotIron>], [null, <ore:ingotIron>, <ore:ingotIron>]]);
//recipes.addShaped(<IC2:itemToolForgeHammer>, [[<ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <ore:treatedStick>, <ore:treatedStick>], [<ore:ingotIron>, <ore:ingotIron>]]);

##  Advanced Mining Machine
recipes.remove(<IC2:blockMachine2:11>);
recipes.addShaped(<IC2:blockMachine2:11>, [[<IC2:itemPartAlloy>, <BuildCraft|Factory:miningWellBlock>, <IC2:itemPartAlloy>], [<IC2:blockElectric:1>, <IC2:blockMachine:12>, <IC2:blockMachine2>], [<IC2:itemPartAlloy>, <BuildCraft|Factory:miningWellBlock>, <IC2:itemPartAlloy>]]);

##  Re-Batt
recipes.remove(<IC2:itemBatREDischarged>);
recipes.addShaped(<IC2:itemBatREDischarged>, [[null, <ore:craftingWireTin>, null], [<IC2:itemCasing:1>, <ore:dustElectrotine>, <IC2:itemCasing:1>], [<IC2:itemCasing:1>, <ore:dustElectrotine>, <IC2:itemCasing:1>]]);

##  Nerf Hammer Recipes
//recipes.remove(<IC2:itemCasing:6>);
//recipes.remove(<IC2:itemCasing:4>);
//recipes.remove(<IC2:itemCasing:3>);
//recipes.remove(<IC2:itemCasing:2>);
//recipes.remove(<IC2:itemCasing:1>);
//recipes.remove(<IC2:itemCasing>);
//recipes.remove(<IC2:itemPlates:6>);
//recipes.remove(<IC2:itemPlates:4>);
//recipes.remove(<IC2:itemPlates:3>);
//recipes.remove(<IC2:itemPlates:2>);
//recipes.remove(<IC2:itemPlates:1>);
//recipes.remove(<IC2:itemPlates>);
//recipes.addShapeless(<IC2:itemPlates:6>, [<ore:craftingToolForgeHammer>, <ore:ingotLead>, <ore:ingotLead>]);
//recipes.addShapeless(<IC2:itemPlates:4>, [<ore:craftingToolForgeHammer>, <ore:ingotIron>, <ore:ingotIron>]);
//recipes.addShapeless(<IC2:itemPlates:3>, [<ore:craftingToolForgeHammer>, <ore:ingotGold>, <ore:ingotGold>]);
//recipes.addShapeless(<IC2:itemPlates:2>, [<ore:craftingToolForgeHammer>, <ore:ingotBronze>, <ore:ingotBronze>]);
//recipes.addShapeless(<IC2:itemPlates:1>, [<ore:craftingToolForgeHammer>, <ore:ingotTin>, <ore:ingotTin>]);
//recipes.addShapeless(<IC2:itemPlates>, [<ore:craftingToolForgeHammer>, <ore:ingotCopper>, <ore:ingotCopper>]);
//recipes.addShapeless(<IC2:itemCasing:6>, [<ore:craftingToolForgeHammer>, <ore:plateLead>]);
//recipes.addShapeless(<IC2:itemCasing:4>, [<ore:craftingToolForgeHammer>, <ore:plateIron>]);
//recipes.addShapeless(<IC2:itemCasing:3>, [<ore:craftingToolForgeHammer>, <ore:plateGold>]);
//recipes.addShapeless(<IC2:itemCasing:2>, [<ore:craftingToolForgeHammer>, <ore:plateBronze>]);
//recipes.addShapeless(<IC2:itemCasing:1>, [<ore:craftingToolForgeHammer>, <ore:plateTin>]);
//recipes.addShapeless(<IC2:itemCasing>, [<ore:craftingToolForgeHammer>, <ore:plateCopper>]);

##  Advanced Circuit
recipes.remove(<IC2:itemPartCircuitAdv>);
recipes.addShaped(<IC2:itemPartCircuitAdv>, [[<ore:chipsetRed>, <Forestry:chipsets:3>, <ore:chipsetRed>], [<EnderIO:itemBasicCapacitor>, <ore:circuitBasic>, <EnderIO:itemBasicCapacitor>], [<ore:chipsetRed>, <Forestry:chipsets:3>, <ore:chipsetRed>]]);
recipes.addShaped(<IC2:itemPartCircuitAdv>, [[<ore:chipsetRed>, <EnderIO:itemBasicCapacitor>, <ore:chipsetRed>], [<Forestry:chipsets:3>, <ore:circuitBasic>, <Forestry:chipsets:3>], [<ore:chipsetRed>, <EnderIO:itemBasicCapacitor>, <ore:chipsetRed>]]);

##  Semi-Fluid Generator
recipes.remove(<IC2:blockGenerator:7>);
recipes.addShaped(<IC2:blockGenerator:7>, [[<ore:circuitBasic>, <IC2:itemFluidCell>, <ore:circuitBasic>], [<IC2:itemFluidCell>, <IC2:blockGenerator:8>, <IC2:itemFluidCell>], [<ore:circuitBasic>, <IC2:itemFluidCell>, <ore:circuitBasic>]]);

print("Initialized 'IndustrialCraft2.zs'");
