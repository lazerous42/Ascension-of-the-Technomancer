//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Agricraft.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

import minetweaker.item.IItemStack;
import mods.agricraft.SeedMutation;
import mods.agricraft.growing.Soil;
import mods.agricraft.growing.FertileSoils;

print("Initializing 'Agricraft.zs'...");

val seedCarrot = <AgriCraft:seedCarrot>;
val seedPotato = <AgriCraft:seedPotato>;
val seedCactus = <AgriCraft:seedCactus>;
val seedOrchid = <AgriCraft:seedOrchid>;
val seedAllium = <AgriCraft:seedAllium>;
val seedMushroomRed = <AgriCraft:seedShroomRed>;

val seedBelladonna = <witchery:seedsbelladonna>;
val seedMandrake = <witchery:seedsmandrake>;
val seedArtichoke = <witchery:seedsartichoke>;
val seedSnowbell = <witchery:seedssnowbell>;
val seedWolfsbane = <witchery:seedswolfsbane>;
val seedWormwood = <witchery:seedswormwood>;
val seedGarlic = <witchery:garlic>;

val seedAum = <AgriCraft:seedAum>;
val seedTarmaRoot = <AgriCraft:seedTarmaRoot>;
val seedCerublossom = <AgriCraft:seedCerublossom>;
val seedDesertNova = <AgriCraft:seedDesertNova>;
val seedWakebloom = <AgriCraft:seedWakebloom>;

val seedCinderpearl = <AgriCraft:seedCinderpearl>;
val seedShimmerleaf = <AgriCraft:seedShimmerleaf>;
val seedVishroom = <AgriCraft:seedVishroom>;
val seedTaintRoot = <AgriCraft:seedTaintedRoot>;

val seedMysticalRed = <AgriCraft:seedBotaniaRed>;
val seedMysticalYellow = <AgriCraft:seedBotaniaYellow>;
val seedMysticalBlue = <AgriCraft:seedBotaniaBlue>;
val seedMysticalOrange = <AgriCraft:seedBotaniaOrange>;
val seedMysticalPurple = <AgriCraft:seedBotaniaPurple>;
val seedMysticalGreen = <AgriCraft:seedBotaniaGreen>;
val seedMysticalMagenta = <AgriCraft:seedBotaniaMagenta>;
val seedMysticalPink = <AgriCraft:seedBotaniaPink>;
val seedMysticalLime = <AgriCraft:seedBotaniaLime>;
val seedMysticalCyan = <AgriCraft:seedBotaniaCyan>;
val seedMysticalLightBlue = <AgriCraft:seedBotaniaLightBlue>;
val seedMysticalBlack = <AgriCraft:seedBotaniaBlack>;
val seedMysticalWhite = <AgriCraft:seedBotaniaWhite>;
val seedMysticalGray = <AgriCraft:seedBotaniaGray>;
val seedMysticalLightGray = <AgriCraft:seedBotaniaLightGray>;
val seedMysticalBrown = <AgriCraft:seedBotaniaBrown>;

val magicSeeds = [seedMysticalRed,
		  seedMysticalYellow,
		  seedMysticalBlue,
		  seedMysticalOrange,
		  seedMysticalPurple,
		  seedMysticalGreen,
		  seedMysticalMagenta,
		  seedMysticalPink,
		  seedMysticalLime,
		  seedMysticalCyan,
		  seedMysticalLightBlue,
		  seedMysticalBlack,
		  seedMysticalWhite,
		  seedMysticalGray,
		  seedMysticalLightGray,
		  seedMysticalBrown,
		  seedShimmerleaf,
		  seedCinderpearl,
		  seedVishroom,
		  seedAum,
		  seedCerublossom,
		  seedTarmaRoot] as IItemStack[];

val tilledGardenSoil = <GardenCore:garden_farmland>;

## Magical plants require garden soil to grow
for i, seed in magicSeeds {
	Soil.set(seed, tilledGardenSoil);
}

## Magical Seeed Mutations
# Witchery
SeedMutation.add(seedBelladonna, seedMysticalBlack, seedAllium);
SeedMutation.add(seedMandrake, seedBelladonna, seedPotato);
SeedMutation.add(seedArtichoke, seedMandrake, seedBelladonna);
SeedMutation.add(seedSnowbell, seedArtichoke, seedOrchid);
SeedMutation.add(seedGarlic, seedSnowbell, seedCarrot);
SeedMutation.add(seedWolfsbane, seedSnowbell, seedMandrake);
SeedMutation.add(seedWormwood, seedMandrake, seedGarlic);

#  Ars Magica
SeedMutation.add(seedCerublossom, seedMysticalLightBlue, seedSnowbell);
SeedMutation.add(seedWakebloom, seedArtichoke, seedCerublossom);
SeedMutation.add(seedDesertNova, seedBelladonna, seedCactus);
SeedMutation.add(seedTarmaRoot, seedMandrake, seedWormwood);
SeedMutation.add(seedAum, seedCerublossom, seedDesertNova);

#  Thaumcraft
SeedMutation.add(seedShimmerleaf, seedAum, seedDesertNova);
SeedMutation.add(seedVishroom, seedMandrake, seedMushroomRed);
SeedMutation.add(seedCinderpearl, seedShimmerleaf, seedDesertNova);
SeedMutation.add(seedTaintRoot, seedBelladonna, seedTarmaRoot);

print("Initialized 'Agricraft.zs'");
