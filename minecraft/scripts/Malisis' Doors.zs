//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Malisis' Doors.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

# Imports
import mods.nei.NEI;

print("Initializing 'Malisis' Doors.zs'...");

## Disable fence gates as they are not compatible with Et Futurum fences
recipes.remove(<malisisdoors:acaciaFenceGate>);
recipes.remove(<malisisdoors:birchFenceGate>);
recipes.remove(<malisisdoors:darkOakFenceGate>);
recipes.remove(<malisisdoors:jungleFenceGate>);
recipes.remove(<malisisdoors:spruceFenceGate>);
    
print("Initialized 'Malisis' Doors.zs'");
