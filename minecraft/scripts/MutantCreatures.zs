//////////////////////////////////////////////////////////////////////////////////////////////
// Name: MutantCreatures.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

import mods.gregtech.ChemicalReactor;

print("Initializing 'Mutant Creatures.zs'...");

## Chemical X
recipes.remove(<MutantCreatures:item.chemicalX>);
ChemicalReactor.addRecipe(<MutantCreatures:item.chemicalX>, null, <deepresonance:resonatingCrystalBlock>, <gregtech:gt.metaitem.01:2101>, <liquid:endergoo> * 1000, 600, 30);
    
print("Initialized 'Mutant Creatures.zs'");
