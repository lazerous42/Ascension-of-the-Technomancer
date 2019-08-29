//////////////////////////////////////////////////////////////////////////////////////////////
// Name: PortalGun.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'PortalGun.zs'...");

# Remove all portal gun recipes, loot only

recipes.remove(<PortalGun:PortalGunBlue>);

recipes.remove(<PortalGun:MiniBlackHole>);
recipes.remove(<PortalGun:PortalPotato>);
recipes.remove(<PortalGun:PortalGunSpawner>);
recipes.remove(<PortalGun:PortalGunPedestal>);
    
print("Initialized 'PortalGun.zs'");
