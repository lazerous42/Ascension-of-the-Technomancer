//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Crystalwing.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Crystalwing.zs'...");

recipes.remove(<CrystalWing:crystalwing.crystalWing>);
recipes.addShaped(<CrystalWing:crystalwing.crystalWing>, [[<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>], 
							  							  [<ore:shardPrismarine>, <ore:craftingFeather>, <ore:craftingFeather>], 
							  							  [<HardcoreEnderExpansion:enhanced_ender_pearl>, <ore:shardPrismarine>, null]]);

print("Initialized 'Crystalwing.zs'");