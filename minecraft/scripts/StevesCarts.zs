//////////////////////////////////////////////////////////////////////////////////////////////
// Name: StevesCarts.zs
// Author: Lazerous/Feed the Beast
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'StevesCarts.zs'...");

##Val Definitions
val dustRedstone = <ore:dustRedstone>;
val ingotIron = <ore:ingotIron>;
val glassPane = <minecraft:glass_pane>;
val chipsetRedstone = <ore:chipsetRed>;
val chipsetIron = <ore:chipsetIron>;
val chipsetGold = <ore:chipsetGold>;
val tubeGold = <Forestry:thermionicTubes:4>;
val tubeCertus = <customthings:item>;
val tubeLapis = <Forestry:thermionicTubes:11>;
val ingotInvar = <ore:ingotInvar>;
val silicon = <EnderIO:itemMaterial>;
val ingotPlatinum = <ore:ingotPlatinum>;
val gearNickel = <ore:gearNickel>;
val gearPlatinum = <ore:gearPlatinum>;
val tubeDiamond = <Forestry:thermionicTubes:5>;
val ingotReinforced = <StevesCarts:ModuleComponents:22>;
val pcbSimple = <StevesCarts:ModuleComponents:9>;
val pcbAdvanced = <StevesCarts:ModuleComponents:16>;
val cartAssembler = <StevesCarts:BlockCartAssembler>;
val graphicalInterface = <StevesCarts:ModuleComponents:10>;

##  Chunk Loader
recipes.remove(<StevesCarts:CartModule:49>);
recipes.addShaped(<StevesCarts:CartModule:49>, [[null, <Railcraft:machine.alpha>, null], [pcbSimple, ingotIron, pcbSimple], [ingotReinforced, pcbAdvanced, ingotReinforced]]);

## PCBs
recipes.remove(pcbSimple);
recipes.addShaped(pcbSimple, [[silicon, chipsetRedstone, silicon], [dustRedstone, tubeGold, dustRedstone], [silicon, chipsetRedstone, silicon]]);
recipes.remove(pcbAdvanced);
recipes.addShaped(pcbAdvanced, [[silicon, chipsetIron, silicon], [pcbSimple, tubeCertus, pcbSimple], [silicon, chipsetIron, silicon]]);

## Cart Assembler
recipes.remove(cartAssembler);
recipes.addShaped(cartAssembler,[[ingotPlatinum,gearNickel,ingotPlatinum],[gearPlatinum,ingotInvar,gearPlatinum],[pcbSimple,ingotInvar,pcbSimple]]);

## Graphical Interface
recipes.remove(graphicalInterface);
recipes.addShaped(graphicalInterface, [[chipsetGold, tubeDiamond, chipsetGold], [glassPane, pcbSimple, glassPane], [tubeLapis, glassPane, tubeLapis]]);

print("Initialized 'StevesCarts.zs'");
