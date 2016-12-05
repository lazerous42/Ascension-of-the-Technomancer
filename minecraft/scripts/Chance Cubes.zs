//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Chance Cubes.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Chance Cubes.zs'...");

## Val Definitions
val blockLapis = <minecraft:lapis_block>;
val blockGlass = <minecraft:glass>;
val ingotIron = <minecraft:iron_ingot>;

## OreDict
<ore:chanceModifierPendant>.add(<chancecubes:chancePendantTier1>);
<ore:chanceModifierPendant>.add(<chancecubes:chancePendantTier2>);
<ore:chanceModifierPendant>.add(<chancecubes:chancePendantTier3>);

## Remove Crafting Recipes for Chance Modifier Pendants (Chest Loot Only)
recipes.removeShaped(<chancecubes:chancePendantTier1>);
recipes.removeShaped(<chancecubes:chancePendantTier2>);
recipes.removeShaped(<chancecubes:chancePendantTier3>);

## Silk Touch Pendant Made from all Tiers
recipes.removeShaped(<chancecubes:silkTouchPendant>);
recipes.addShaped(<chancecubes:silkTouchPendant>, [[<minecraft:string>, blockLapis, <minecraft:string>], [<minecraft:string>, <ore:chanceModifierPendant>, <minecraft:string>], [<minecraft:string>, blockLapis, <minecraft:string>]]);

## Cube Scanner Pendant Made from all Tiers
recipes.removeShaped(<chancecubes:scanner>);
recipes.addShaped(<chancecubes:scanner>, [[ingotIron, blockGlass, ingotIron], [blockGlass, <ore:chanceModifierPendant>, blockGlass], [ingotIron, blockGlass, ingotIron]]);

print("Initialized 'Chance Cubes.zs'");