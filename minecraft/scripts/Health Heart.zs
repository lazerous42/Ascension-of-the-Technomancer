//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Health Heart.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

import mods.thaumcraft.Infusion;
import mods.thermalexpansion.Furnace;

print("Initializing 'Health Heart.zs'...");

## Val Definitions
val notchApple = <minecraft:golden_apple:1>;
val heartOfGold = <witchery:ingredient:165>;
val demonHeart = <witchery:ingredient:23>;
val refinedEvil = <witchery:ingredient:38>;
val potionnInstantHealth2 = <minecraft:potion:8229>;
val potionnInstantHarming2 = <minecraft:potion:8236>;
val bloodShardWeak = <AWWayofTime:weakBloodShard>;
val lifeEssence = <arsmagica2:essence:8>;
val wrathRune = <Botania:rune:13>;

val healthHeart = <heart:healthHeart>;
val damageBuff = <heart:damageBuff>;

##  Health Heart
recipes.remove(healthHeart);
furnace.remove(healthHeart);
Furnace.removeRecipe(healthHeart);
Infusion.addRecipe("RESEARCH", heartOfGold, [notchApple, potionnInstantHealth2, bloodShardWeak, lifeEssence], "victus 50, sano 50, humanus 30, corpus 30", healthHeart, 8);

##  Damage Buff
recipes.remove(damageBuff);
furnace.remove(damageBuff);
Furnace.removeRecipe(damageBuff);
Infusion.addRecipe("RESEARCH", demonHeart, [wrathRune, potionnInstantHarming2, bloodShardWeak, refinedEvil], "mortuus 50, telum 50, ira 30, corpus 30", damageBuff, 8);

print("Initialized 'Health Heart.zs'");
