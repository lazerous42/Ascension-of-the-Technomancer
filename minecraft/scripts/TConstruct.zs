//////////////////////////////////////////////////////////////////////////////////////////////
// Name: TConstruct.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

## Imports
import mods.tconstruct.Casting;
import mods.tconstruct.Smeltery;
import mods.gregtech.Assembler;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Arcane;
import mods.immersiveengineering.ArcFurnace;
import mods.nei.NEI;

print("Initializing 'TConstruct.zs'...");

## We're basically going to remove everything from this mod
## And the electively re-activate just the hp boost containers, crafting tables, and the mechworks stuff

# Tool Station/Forge Blocks
recipes.remove(<TConstruct:ToolStationBlock:*>);
NEI.hide(<TConstruct:ToolStationBlock:*>);
recipes.remove(<TConstruct:ToolForgeBlock:*>);
NEI.hide(<TConstruct:ToolForgeBlock:*>);
recipes.remove(<TConstruct:CraftingSlab:1>);
recipes.remove(<TConstruct:CraftingSlab:2>);
recipes.remove(<TConstruct:CraftingSlab:3>);
recipes.remove(<TConstruct:CraftingSlab:4>);
recipes.remove(<TConstruct:CraftingSlab:5>);
NEI.hide(<TConstruct:CraftingSlab:1>);
NEI.hide(<TConstruct:CraftingSlab:2>);
NEI.hide(<TConstruct:CraftingSlab:3>);
NEI.hide(<TConstruct:CraftingSlab:4>);
NEI.hide(<TConstruct:CraftingSlab:5>);

# Smeltery Blocks ~ Only allow for overworld variant
recipes.remove(<TConstruct:SmelteryNether:*>);
NEI.hide(<TConstruct:SmelteryNether:*>);
recipes.remove(<TConstruct:LavaTankNether:*>);
NEI.hide(<TConstruct:LavaTankNether:*>);
recipes.remove(<TConstruct:SearedBlockNether:*>);
NEI.hide(<TConstruct:SearedBlockNether:*>);

# Patterns
recipes.remove(<TConstruct:blankPattern>);
NEI.hide(<TConstruct:blankPattern>);

var woodPatternMeta = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25] as int[];
for meta in woodPatternMeta {
	recipes.remove(<TConstruct:woodPattern>.definition.makeStack(meta));
	NEI.hide(<TConstruct:woodPattern>.definition.makeStack(meta));
}

# Wow, the rediculous BS around trying to script this mod.  I cann't remove the arrowhead case (TConstruct:metalPattern:25) 
# because it throws errors while also removing the item
var metalPatternMeta = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 22] as int[];
for meta in metalPatternMeta {
	Casting.removeTableRecipe(<TConstruct:metalPattern>.definition.makeStack(meta));
	NEI.hide(<TConstruct:metalPattern>.definition.makeStack(meta));
}

#Casting.removeTableRecipe(<TConstruct:blankPattern:*>);
#NEI.hide(<TConstruct:blankPattern:1>);
#NEI.hide(<TConstruct:blankPattern:2>);
#Casting.removeTableRecipe(<TConstruct:metalPattern>);
#NEI.hide(<TConstruct:metalPattern>);
#Casting.removeTableRecipe(<TConstruct:metalPattern:1>);

# Remove Aluminum Brass
Smeltery.removeMelting(<TConstruct:blankPattern:1>);
recipes.remove(<TConstruct:materials:42>);
NEI.hide(<TConstruct:materials:42>);
ArcFurnace.removeRecipe(<ImmersiveEngineering:metal:14>);
NEI.hide(<TConstruct:materials:14>);

# Tools
#recipes.remove(<TConstruct:pickaxe>);
NEI.hide(<TConstruct:pickaxe>);
#recipes.remove(<TConstruct:shovel>);
NEI.hide(<TConstruct:shovel>);
#recipes.remove(<TConstruct:hatchet>);
NEI.hide(<TConstruct:hatchet>);
#recipes.remove(<TConstruct:broadsword>);
NEI.hide(<TConstruct:broadsword>);
#recipes.remove(<TConstruct:longsword>);
NEI.hide(<TConstruct:longsword>);
#recipes.remove(<TConstruct:rapier>);
NEI.hide(<TConstruct:rapier>);
#recipes.remove(<TConstruct:dagger>);
NEI.hide(<TConstruct:dagger>);
#recipes.remove(<TConstruct:cutlass>);
NEI.hide(<TConstruct:cutlass>);
#recipes.remove(<TConstruct:frypan>);
NEI.hide(<TConstruct:frypan>);
#recipes.remove(<TConstruct:battlesign>);
NEI.hide(<TConstruct:battlesign>);
#recipes.remove(<TConstruct:mattock>);
NEI.hide(<TConstruct:mattock>);
#recipes.remove(<TConstruct:chisel>);
NEI.hide(<TConstruct:chisel>);
#recipes.remove(<TConstruct:lumberaxe>);
NEI.hide(<TConstruct:lumberaxe>);
recipes.remove(<TConstruct:cleaver>);
NEI.hide(<TConstruct:cleaver>);
#recipes.remove(<TConstruct:scythe>);
NEI.hide(<TConstruct:scythe>);
#recipes.remove(<TConstruct:excavator>);
NEI.hide(<TConstruct:excavator>);
#recipes.remove(<TConstruct:hammer>);
NEI.hide(<TConstruct:hammer>);
#recipes.remove(<TConstruct:battleaxe>);
NEI.hide(<TConstruct:battleaxe>);

# Parts
Casting.removeTableRecipe(<TConstruct:toolRod:*>);
recipes.remove(<TConstruct:toolRod:*>);
NEI.hide(<TConstruct:toolRod:*>);
Casting.removeTableRecipe(<TConstruct:pickaxeHead:*>);
recipes.remove(<TConstruct:pickaxeHead:*>);
NEI.hide(<TConstruct:pickaxeHead:*>);
Casting.removeTableRecipe(<TConstruct:shovelHead:*>);
recipes.remove(<TConstruct:shovelHead:*>);
NEI.hide(<TConstruct:shovelHead:*>);
Casting.removeTableRecipe(<TConstruct:hatchetHead:*>);
recipes.remove(<TConstruct:hatchetHead:*>);
NEI.hide(<TConstruct:hatchetHead:*>);
NEI.hide(<TConstruct:toolShard:*>);
Casting.removeTableRecipe(<TConstruct:binding:*>);
recipes.remove(<TConstruct:binding:*>);
NEI.hide(<TConstruct:binding:*>);
Casting.removeTableRecipe(<TConstruct:toughBinding:*>);
recipes.remove(<TConstruct:toughBinding:*>);
NEI.hide(<TConstruct:toughBinding:*>);
Casting.removeTableRecipe(<TConstruct:toughRod:*>);
recipes.remove(<TConstruct:toughRod:*>);
NEI.hide(<TConstruct:toughRod:*>);
Casting.removeTableRecipe(<TConstruct:heavyPlate:*>);
recipes.remove(<TConstruct:heavyPlate:*>);
NEI.hide(<TConstruct:heavyPlate:*>);
Casting.removeTableRecipe(<TConstruct:swordBlade:*>);
recipes.remove(<TConstruct:swordBlade:*>);
NEI.hide(<TConstruct:swordBlade:*>);
Casting.removeTableRecipe(<TConstruct:wideGuard:*>);
recipes.remove(<TConstruct:wideGuard:*>);
NEI.hide(<TConstruct:wideGuard:*>);
Casting.removeTableRecipe(<TConstruct:handGuard:*>);
recipes.remove(<TConstruct:handGuard:*>);
NEI.hide(<TConstruct:handGuard:*>);
Casting.removeTableRecipe(<TConstruct:crossbar:*>);
recipes.remove(<TConstruct:crossbar:*>);
NEI.hide(<TConstruct:crossbar:*>);
Casting.removeTableRecipe(<TConstruct:knifeBlade:*>);
recipes.remove(<TConstruct:knifeBlade:*>);
NEI.hide(<TConstruct:knifeBlade:*>);
Casting.removeTableRecipe(<TConstruct:fullGuard:*>);
recipes.remove(<TConstruct:fullGuard:*>);
NEI.hide(<TConstruct:fullGuard:*>);
Casting.removeTableRecipe(<TConstruct:frypanHead:*>);
recipes.remove(<TConstruct:frypanHead:*>);
NEI.hide(<TConstruct:frypanHead:*>);
Casting.removeTableRecipe(<TConstruct:signHead:*>);
recipes.remove(<TConstruct:signHead:*>);
NEI.hide(<TConstruct:signHead:*>);
Casting.removeTableRecipe(<TConstruct:chiselHead:*>);
recipes.remove(<TConstruct:chiselHead:*>);
NEI.hide(<TConstruct:chiselHead:*>);
Casting.removeTableRecipe(<TConstruct:scytheBlade:*>);
recipes.remove(<TConstruct:scytheBlade:*>);
NEI.hide(<TConstruct:scytheBlade:*>);
Casting.removeTableRecipe(<TConstruct:broadAxeHead:*>);
recipes.remove(<TConstruct:broadAxeHead:*>);
NEI.hide(<TConstruct:broadAxeHead:*>);
Casting.removeTableRecipe(<TConstruct:excavatorHead:*>);
recipes.remove(<TConstruct:excavatorHead:*>);
NEI.hide(<TConstruct:excavatorHead:*>);
Casting.removeTableRecipe(<TConstruct:largeSwordBlade:*>);
recipes.remove(<TConstruct:largeSwordBlade:*>);
NEI.hide(<TConstruct:largeSwordBlade:*>);
Casting.removeTableRecipe(<TConstruct:hammerHead:*>);
recipes.remove(<TConstruct:hammerHead:*>);
NEI.hide(<TConstruct:hammerHead:*>);
NEI.hide(<TConstruct:creativeModifier:*>);

# Travelers Gear
recipes.remove(<TConstruct:travelGoggles>);
NEI.hide(<TConstruct:travelGoggles>);
recipes.remove(<TConstruct:travelVest>);
NEI.hide(<TConstruct:travelVest>);
recipes.remove(<TConstruct:travelWings>);
NEI.hide(<TConstruct:travelWings>);
recipes.remove(<TConstruct:travelBoots>);
NEI.hide(<TConstruct:travelBoots>);
recipes.remove(<TConstruct:travelGlove>);
NEI.hide(<TConstruct:travelGlove>);
recipes.remove(<TConstruct:travelBelt>);
NEI.hide(<TConstruct:travelBelt>);

# Materials
recipes.remove(<TConstruct:materials>);
NEI.hide(<TConstruct:materials>);
furnace.remove(<TConstruct:materials:1>);
NEI.hide(<TConstruct:materials:1>);

# Stained Glass
recipes.addShapeless(<TConstruct:GlassBlock>, [<EnderIO:blockFusedQuartz:1>]);
recipes.addShapeless(<EnderIO:blockFusedQuartz:1>, [<TConstruct:GlassBlock>]);
recipes.addShapedMirrored(<TConstruct:GlassPane> * 16, [[<TConstruct:GlassBlock>, <TConstruct:GlassBlock>, <TConstruct:GlassBlock>],
						   	[<TConstruct:GlassBlock>, <TConstruct:GlassBlock>, <TConstruct:GlassBlock>],
						   	[null, null, null]]);

# Ore Berries
NEI.hide(<TConstruct:oreBerries>);
NEI.hide(<TConstruct:oreBerries:1>);
NEI.hide(<TConstruct:oreBerries:2>);
NEI.hide(<TConstruct:oreBerries:3>);
NEI.hide(<TConstruct:oreBerries:4>);

# Grout
recipes.remove(<TConstruct:CraftedSoil:1>);
recipes.addShapeless(<TConstruct:CraftedSoil:1>, [<minecraft:sand>, <minecraft:gravel>, <minecraft:clay_ball>, <ImmersiveEngineering:material:13>, <advancedRocketry:moonTurf>]);

# Misc
recipes.remove(<TConstruct:GlueBlock:*>);
NEI.hide(<TConstruct:GlueBlock:*>);
Casting.removeTableRecipe(<TConstruct:goldHead>);
recipes.remove(<TConstruct:manualBook:*>);
NEI.hide(<TConstruct:manualBook>);
NEI.hide(<TConstruct:manualBook:1>);
NEI.hide(<TConstruct:manualBook:2>);
NEI.hide(<TConstruct:manualBook:3>);
NEI.hide(<TConstruct:manualBook:4>);
NEI.hide(<TConstruct:potionLauncher>);

## Now for setting the allowed recipes

# Removing lava as a smeltery fuel (pyrothium only)
Smeltery.removeFuel(<liquid:lava>);

# Knapsack 
recipes.addShapedMirrored(<TConstruct:knapsack>, [[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], 
					  	  						  [<ore:stickBrass>, <ore:ingotBrass>, <ore:stickBrass>], 
					  	  						  [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

# Landmines
recipes.remove(<TConstruct:Redstone.Landmine>);
recipes.addShaped(<TConstruct:Redstone.Landmine>, [[<ore:planksWood>, <ore:plateBrass>, <ore:planksWood>], [<ore:dustRedstone>, <minecraft:stone_pressure_plate>, <ore:dustRedstone>], [null, null, null]]);
recipes.remove(<TConstruct:Redstone.Landmine:1>);
recipes.addShaped(<TConstruct:Redstone.Landmine:1>, [[<ore:stone>, <ore:plateBrass>, <ore:stone>], [<ore:dustRedstone>, <minecraft:stone_pressure_plate>, <ore:dustRedstone>], [null, null, null]]);
recipes.remove(<TConstruct:Redstone.Landmine:2>);
recipes.addShaped(<TConstruct:Redstone.Landmine:2>, [[<ore:stoneObsidian>, <ore:plateBrass>, <ore:stoneObsidian>], [<ore:dustRedstone>, <minecraft:stone_pressure_plate>, <ore:dustRedstone>], [null, null, null]]);
recipes.remove(<TConstruct:Redstone.Landmine:3>);
recipes.addShaped(<TConstruct:Redstone.Landmine:3>, [[<minecraft:repeater>, <ore:plateBrass>, <minecraft:repeater>], [<ore:dustRedstone>, <minecraft:stone_pressure_plate>, <ore:dustRedstone>], [null, null, null]]);

# Empty Heart Canister
recipes.remove(<TConstruct:heartCanister>);
Assembler.addRecipe(<TConstruct:heartCanister>, <gregtech:gt.metaitem.01:17331> * 4, <nevermine:IngotEmberstone> * 4, <liquid:liquidessence> * 4000, 64, 32);
# Red Heart Canister
recipes.remove(<TConstruct:heartCanister:2>);
Infusion.addRecipe("REDHEARTCANISTER", <TConstruct:heartCanister>, [<TConstruct:heartCanister:1>, <TConstruct:materials:8>, <TConstruct:diamondApple>, <IC2:itemPartCircuit>, <Thaumcraft:ItemShard:6>, <nevermine:GhostStone>, <arsmagica2:desertNova>, <EnderIO:itemBasicCapacitor>], "victus 20, sano 10, spiritus 15, auram 10, humanus 20", <TConstruct:heartCanister:2>, 5);
# Yellow Heart Canister
recipes.remove(<TConstruct:heartCanister:4>);
Infusion.addRecipe("YELLOWHEARTCANISTER", <TConstruct:heartCanister:2>, [<TConstruct:heartCanister:3>, <IC2:itemPartCircuitAdv>, <ExtraUtilities:unstableingot:2>, <HardcoreEnderExpansion:living_matter>, <TwilightForest:item.carminite>, <AWWayofTime:weakBloodShard>, <EnderIO:itemBasicCapacitor:2>, <nevermine:NethengeicCallstone>], "victus 40, sano 20, spiritus 30, auram 15, humanus 20", <TConstruct:heartCanister:4>, 7);
# Green Heart Canister
recipes.remove(<TConstruct:heartCanister:6>);
Infusion.addRecipe("GREENHEARTCANISTER", <TConstruct:heartCanister:4>, [<TConstruct:heartCanister:5>, <AWWayofTime:demonBloodShard>, <gregtech:gt.metaitem.03:32085>, <gregtech:gt.blockgem1:6>, <ThaumicTinkerer:kamiResource:2>, <StevesCarts:ModuleComponents:49>, <nevermine:LunaverCoin>, <PneumaticCraft:printedCircuitBoard>], "victus 60, sano 30, spiritus 45, auram 20, humanus 20", <TConstruct:heartCanister:6>, 10);

print("Initialized 'TConstruct.zs'");