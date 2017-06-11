//////////////////////////////////////////////////////////////////////////////////////////////
// Name: GregTech.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'GregTech.zs'...");

##  Val Definitions
val flour = <ore:foodFlour>;
val dough = <gregtech:gt.metaitem.02:32559>;
val rodIron = <gregtech:gt.metaitem.01:23032>;
val ringIron = <gregtech:gt.metaitem.01:28032>;
val gtHammer = <gregtech:gt.metatool.01:12>;

#   Constantan <-> Cupronickel
<ore:dustConstantan>.addAll(<ore:dustCupronickel>);
<ore:dustCupronickel>.mirror(<ore:dustConstantan>);
<ore:ingotConstantan>.addAll(<ore:ingotCupronickel>);
<ore:ingotCupronickel>.mirror(<ore:ingotConstantan>);
<ore:blockConstantan>.addAll(<ore:blockCupronickel>);
<ore:blockCupronickel>.mirror(<ore:blockConstantan>);

#   Coal/Charcoal Dust as black dye
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2535>);
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2536>);

## Val Definitions
val circuitAssemblerHV = <gregtech:gt.blockmachines:1182>;
val robotArmHV = <gregtech:gt.metaitem.01:32652>;
val conveyorModuleHV = <gregtech:gt.metaitem.01:32632>;
val emitterHV = <gregtech:gt.metaitem.01:32682>;
val machineHullHV  = <gregtech:gt.blockmachines:13>;
val cableGoldHV  = <gregtech:gt.blockmachines:1426>;
val advancedCircuit = <IC2:itemPartCircuitAdv>;

## Fix wrought iron ingot -> conversion
recipes.addShapeless(<gregtech:gt.metaitem.01:9304> * 9, [<gregtech:gt.metaitem.01:11304>]);

##  Iron Rod ~ Remove toolless crafting
recipes.removeShaped(rodIron * 4, [[<ore:ingotIron>, null, null],[<ore:ingotIron>, null, null], [null, null, null]]);

##  Dough
recipes.remove(dough);
recipes.addShapeless(dough, [flour, <minecraft:water_bucket>.giveBack(<minecraft:bucket>)]);
recipes.addShapeless(dough, [flour, <minecraft:potion>.giveBack(<minecraft:glass_bottle>)]);
recipes.addShapeless(dough, [flour, <harvestcraft:freshwaterItem>]);

##  Chainmail made from iron (not steel)
recipes.removeShaped(<minecraft:chainmail_helmet>);
recipes.removeShaped(<minecraft:chainmail_chestplate>);
recipes.removeShaped(<minecraft:chainmail_leggings>);
recipes.removeShaped(<minecraft:chainmail_boots>);
recipes.addShaped(<minecraft:chainmail_helmet>, [[ringIron, ringIron, ringIron], [ringIron, gtHammer, ringIron], [null, null, null]]);
recipes.addShaped(<minecraft:chainmail_chestplate>, [[ringIron, gtHammer, ringIron], [ringIron, ringIron, ringIron], [ringIron, ringIron, ringIron]]);
recipes.addShaped(<minecraft:chainmail_leggings>, [[ringIron, ringIron, ringIron], [ringIron, gtHammer, ringIron], [ringIron, null, ringIron]]);
recipes.addShaped(<minecraft:chainmail_boots>, [[ringIron, null, ringIron], [ringIron, gtHammer, ringIron], [null, null, null]]);

## HV Circuit Assembler Fix
# This machine requires a data stick which is overpriced at 160 EU in GT 5.28, making this machine impossible to make
# Fixed in GT5.29, but it crashes the nether.
#
# Now using 5.09.30 pre-release, nether is fine and recipe no longer needed
# recipes.addShaped(circuitAssemblerHV, [[robotArmHV, advancedCircuit, emitterHV], [conveyorModuleHV, machineHullHV, conveyorModuleHV], [cableGoldHV, advancedCircuit, cableGoldHV]]);

print("Initialized 'GregTech.zs'");
