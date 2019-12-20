//////////////////////////////////////////////////////////////////////////////////////////////
// Name: AdvancedHooks.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'AdvancedHooks.zs'...");

## Val Statements
val cellEmpty = <IC2:itemCellEmpty>;
val chain = <battlegear2:chain>;
val fiberHemp = <ImmersiveEngineering:material:3>;
val stringMana = <Botania:manaResource:16>;

## Remove hook recipes, they are chest loot
recipes.remove(<adhooks:pudge_hook>);
recipes.remove(<adhooks:pudge_launcher>);
recipes.addShaped(<adhooks:pudge_launcher>, [[<ore:dyeRed>, fiberHemp, <adhooks:pudge_hook>], 
											 [fiberHemp, cellEmpty, fiberHemp], 
											 [<thebetweenlands:smoothBetweenstoneButton>, fiberHemp, <ore:dyeRed>]]);
recipes.remove(<adhooks:spear_hook>);
recipes.remove(<adhooks:spear_launcher>);
recipes.addShaped(<adhooks:spear_launcher>, [[<ore:dyeBlack>, chain, <adhooks:spear_hook>], 
											 [chain, cellEmpty, chain], 
											 [<thebetweenlands:smoothBetweenstoneButton>, chain, <ore:dyeBlack>]]);
recipes.remove(<adhooks:web_hook>);
recipes.remove(<adhooks:web_launcher>);
recipes.addShaped(<adhooks:web_launcher>, [[<ore:dyeBlue>, stringMana, <adhooks:web_launcher>], 
										   [stringMana, cellEmpty, stringMana], 
										   [<thebetweenlands:smoothBetweenstoneButton>, stringMana, <ore:dyeBlue>]]);

print("Initialized 'AdvancedHooks.zs'");
