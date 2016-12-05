//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Forestry.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

##  Imports
import mods.forestry.ThermionicFabricator;

print("Initializing 'Forestry.zs'...");

## Val Definitions
val gearBronze = <ore:gearBronze>;
val dustRedstone = <ore:dustRedstone>;
val ingotBrass = <ore:ingotBrass>;
val ingotAluminum = <ore:ingotAluminum>;
val quartzCertus = <appliedenergistics2:item.ItemMultiMaterial:0>;
val tubeCertus = <customthings:item>;

##  Add Aluminum Can Recipe
recipes.addShaped(<Forestry:canEmpty> * 10,[[null,ingotAluminum,null],[ingotAluminum,null,ingotAluminum]]);

##  Remove Non-GregTech Gears
recipes.remove(<Forestry:gearBronze>);
recipes.remove(<Forestry:gearCopper>);
recipes.remove(<Forestry:gearTin>);

##  Casing
recipes.remove(<Forestry:sturdyMachine>);
recipes.addShaped(<Forestry:sturdyMachine>, [[ingotBrass, gearBronze, ingotBrass], [gearBronze, null, gearBronze], [ingotBrass, gearBronze, ingotBrass]]);

##  Adding Certus Quartz Electron Tube
ThermionicFabricator.addCast(<liquid:glass> * 500, [[null, quartzCertus, null], [dustRedstone, quartzCertus, dustRedstone], [quartzCertus, quartzCertus, quartzCertus]], null, tubeCertus * 4);

##  Therm Fab
recipes.remove(<Forestry:factory2>);
recipes.addShaped(<Forestry:factory2>, [[<ore:ingotGold>, <ore:blockGlassColorless>, <ore:ingotGold>], [<ore:blockGlassColorless>, <Forestry:sturdyMachine>, <ore:blockGlassColorless>], [<ore:ingotGold>, <IronChest:BlockIronChest:1>, <ore:ingotGold>]]);

print("Initialized 'Forestry.zs'");
