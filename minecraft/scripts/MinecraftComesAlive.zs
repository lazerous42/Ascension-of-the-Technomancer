//////////////////////////////////////////////////////////////////////////////////////////////
// Name: MinecraftComesAlive.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'MinecraftComesAlive.zs'...");

# Dimond Dust
recipes.remove(<MCA:DiamondDust>);
recipes.addShapeless(<MCA:ColoredDiamondDust>, [<ore:dustDiamond>,<ore:dyeBlack>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:1>, [<ore:dustDiamond>,<ore:dyeRed>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:2>, [<ore:dustDiamond>,<ore:dyeGreen>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:3>, [<ore:dustDiamond>,<ore:dyeBrown>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:4>, [<ore:dustDiamond>,<ore:dyeBlue>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:5>, [<ore:dustDiamond>,<ore:dyePurple>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:6>, [<ore:dustDiamond>,<ore:dyeCyan>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:7>, [<ore:dustDiamond>,<ore:dyeLightGrey>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:8>, [<ore:dustDiamond>,<ore:dyeGrey>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:9>, [<ore:dustDiamond>,<ore:dyePink>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:10>, [<ore:dustDiamond>,<ore:dyeLime>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:11>, [<ore:dustDiamond>,<ore:dyeYellow>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:12>, [<ore:dustDiamond>,<ore:dyeLightBlue>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:13>, [<ore:dustDiamond>,<ore:dyeMagenta>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:14>, [<ore:dustDiamond>,<ore:dyeOrange>]);
recipes.addShapeless(<MCA:ColoredDiamondDust:15>, [<ore:dustDiamond>,<ore:dyeWhite>]);

print("Initialized 'MinecraftComesAlive.zs'");
