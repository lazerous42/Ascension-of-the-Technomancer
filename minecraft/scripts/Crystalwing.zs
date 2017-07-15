//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Crystalwing.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Crystalwing.zs'...");

recipes.remove(<CrystalWing:crystalwing.crystalWing>);
recipes.addShaped(<CrystalWing:crystalwing.crystalWing>, [[<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>], 
							  [<HardcoreEnderExpansion:enhanced_ender_pearl>, <ore:craftingFeather>, <ore:craftingFeather>], 
							  [null, null, null]]);

print("Initialized 'Crystalwing.zs'");