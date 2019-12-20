//////////////////////////////////////////////////////////////////////////////////////////////
// Name: XenosReliquary.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'XenosReliquary.zs'...");

## Val Statements
val manaEssence = <Artifacts:dust_orichalcum>;
val paneManaGlass = <Botania:manaGlassPane>;

## Glowing Water
recipes.remove(<xreliquary:glowing_water>);
recipes.addShaped(<xreliquary:glowing_water> * 5, [[paneManaGlass, <ore:listAllWater>, paneManaGlass], 
											   	   [paneManaGlass, manaEssence, paneManaGlass], 
											       [<erebus:glowGemBlock>, paneManaGlass, <erebus:glowGemBlock>]]);


## Holy Hand Grenade
recipes.remove(<xreliquary:holy_hand_grenade>);
recipes.addShapeless(<xreliquary:holy_hand_grenade>, [<xreliquary:glowing_water>, <minecraft:tnt>, <xreliquary:mob_ingredient:3>, <ThermalFoundation:bucket:5>]);

## Bullets
#  Neutral Shot
recipes.remove(<xreliquary:bullet:1>);
recipes.addShapeless(<xreliquary:bullet:1> * 8, [<ore:itemFlint>, <ore:dustGunpowder>, <ore:ingotBrass>]);
#  Shell Recycling
recipes.removeShapeless(<minecraft:gold_nugget>, [<xreliquary:bullet>, <xreliquary:bullet>, <xreliquary:bullet>, <xreliquary:bullet>]);
recipes.addShapeless(<gregtech:gt.metaitem.01:9301>, [<xreliquary:bullet>, <xreliquary:bullet>]);
    
print("Initialized 'XenosReliquary.zs'");