//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Aura Cascade.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Aura Cascade.zs'...");

val ingotSilver = <ore:ingotSilver>;
val ingotLumium = <ore:ingotLumium>;
val ingotThaumium = <Thaumcraft:ItemResource:2>;
val ingotFluxedElectrum = <RedstoneArsenal:material:32>;
val topazBlue = <arsmagica2:itemOre:5>;
val quicksilver = <Thaumcraft:ItemResource:3>;
val alumentum = <Thaumcraft:ItemResource>;
val dropQuicksilver = <Thaumcraft:ItemNugget:5>;
val amber = <Thaumcraft:ItemResource:6>;
val chimerite = <arsmagica2:itemOre:4>;
val diamondMana = <Botania:manaResource:2>;
val ingotTerraSteel = <Botania:manaResource:4>;
val bucketEtherium = <arsmagica2:liquidEssenceBucket>;
val precisionShears = <ExtraUtilities:shears>;
val ingotBedrockium = <ExtraUtilities:bedrockiumIngot>;
val arrowHolly = <nevermine:ElementalArrow>;
val runicMatrix = <Thaumcraft:blockStoneDevice:2>;
val chalkGolden = <witchery:chalkheart>;
val naturaPylon = <Botania:pylon:1>;
val dustPurifiedVinteum = <arsmagica2:itemOre:3>;
val redstoneSoup = <witchery:ingredient:40>;

val auraCrystalWhite = <aura:AuraCrystal>;
val ingotArcaneBlack = <aura:ingotBlack>;
val ingotArcaneBlue = <aura:ingotBlue>;
val ingotArcaneYellow = <aura:ingotYellow>;
val ingotArcaneViolet = <aura:ingotViolet>;
val ingotArcaneRed = <aura:ingotRed>;
val auraNode = <aura:auraNode>;
val cascadingColorer = <aura:consumerBlockdye>;
val travelersBricks = <aura:magicRoad>;
val burningAuraPump = <aura:auraNodepump>;
val momentumAuraPump = <aura:auraNodepumpFall>;
val lightAuraPump = <aura:auraNodepumpLight>;
val redstoneAuraPump = <aura:auraNodepumpRedstone>;
val projectileAuraPump = <aura:auraNodepumpProjectile>;
val vortexController = <aura:auraNodecraftingCenter>;

##  Aura Crystal
recipes.remove(auraCrystalWhite);
recipes.addShaped(auraCrystalWhite * 2, [[dropQuicksilver, topazBlue, dropQuicksilver], [topazBlue, ingotSilver, topazBlue], [dropQuicksilver, topazBlue, dropQuicksilver]]);

##  Aura Node
recipes.remove(auraNode);
recipes.addShaped(auraNode, [[chimerite, chimerite, chimerite], [chimerite, diamondMana,chimerite], [chimerite, chimerite, chimerite]]);

##  Aura Pump Burning
recipes.remove(burningAuraPump);
recipes.addShaped(burningAuraPump, [[ingotSilver, alumentum, ingotSilver], [ingotTerraSteel, auraNode, ingotTerraSteel], [ingotSilver, alumentum, ingotSilver]]);

##  Aura Pump Momentum
recipes.remove(momentumAuraPump);
recipes.addShaped(momentumAuraPump, [[bucketEtherium, bucketEtherium, bucketEtherium], [ingotArcaneBlue, burningAuraPump, ingotArcaneBlue], [ingotArcaneBlue, ingotThaumium, ingotArcaneBlue]]);

##  Aura Pump Light
recipes.remove(lightAuraPump);
recipes.addShaped(lightAuraPump, [[ingotLumium, ingotLumium, ingotLumium], [ingotArcaneYellow, burningAuraPump, ingotArcaneYellow], [ingotArcaneYellow, ingotThaumium, ingotArcaneYellow]]);

##  Aura Pump Projectile
recipes.remove(projectileAuraPump);
recipes.addShaped(projectileAuraPump, [[arrowHolly, arrowHolly, arrowHolly], [ingotArcaneViolet, burningAuraPump, ingotArcaneViolet], [ingotArcaneViolet, ingotThaumium, ingotArcaneViolet]]);

##  Aura Pump Redstone
recipes.remove(redstoneAuraPump);
recipes.addShaped(redstoneAuraPump, [[ingotFluxedElectrum, redstoneSoup, ingotFluxedElectrum], [ingotArcaneRed, burningAuraPump, ingotArcaneRed], [ingotArcaneRed, ingotThaumium, ingotArcaneRed]]);

##  Cascading Colorer
recipes.remove(cascadingColorer);
recipes.addShaped(cascadingColorer, [[<ore:blockCloth>, <ore:blockCloth>, <ore:blockCloth>], [<ore:blockCloth>, precisionShears, <ore:blockCloth>], [<ore:blockCloth>, <ore:blockCloth>, <ore:blockCloth>]]);

##  Travelers Road
recipes.remove(travelersBricks);
recipes.addShaped(travelersBricks * 16, [[ingotBedrockium, ingotArcaneBlack, ingotBedrockium], [ingotArcaneBlack, ingotBedrockium, ingotArcaneBlack], [ingotBedrockium, ingotArcaneBlack, ingotBedrockium]]);

##  Vortex Controller
recipes.remove(vortexController);
recipes.addShaped(vortexController, [[ingotArcaneYellow, chalkGolden, ingotArcaneYellow], [naturaPylon, runicMatrix, naturaPylon], [dustPurifiedVinteum, ingotArcaneRed, dustPurifiedVinteum]]);

print("Initialized 'Aura Cascade.zs'");
