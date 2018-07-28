//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Malisis' Doors.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

# Imports
import mods.nei.NEI;

print("Initializing 'Malisis' Doors.zs'...");

## Disable fence gates as they are not compatible with Et Futurum fences
recipes.remove(<malisisdoors:acaciaFenceGate>);
NEI.hide(<malisisdoors:acaciaFenceGate>);
recipes.remove(<malisisdoors:birchFenceGate>);
NEI.hide(<malisisdoors:birchFenceGate>);
recipes.remove(<malisisdoors:darkOakFenceGate>);
NEI.hide(<malisisdoors:darkOakFenceGate>);
recipes.remove(<malisisdoors:jungleFenceGate>);
NEI.hide(<malisisdoors:jungleFenceGate>);
recipes.remove(<malisisdoors:spruceFenceGate>);
NEI.hide(<malisisdoors:spruceFenceGate>);
    
print("Initialized 'Malisis' Doors.zs'");
