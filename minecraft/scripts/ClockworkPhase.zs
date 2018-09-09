//////////////////////////////////////////////////////////////////////////////////////////////
// Name: ClockworkPhase.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

import mods.gregtech.AlloySmelter;
import mods.gregtech.Extruder;
import mods.gregtech.FluidSolidifier;
import mods.immersiveengineering.MetalPress;
import mods.auraCascade.Pylon;

print("Initializing 'ClockworkPhase.zs'...");

##  Remove Clockwork Phase gear recipes
recipes.remove(<clockworkphase:gearCopper>);
recipes.remove(<clockworkphase:gearTin>);
recipes.remove(<clockworkphase:gearBronze>);
recipes.remove(<clockworkphase:gearBrass>);
recipes.remove(<clockworkphase:gearIron>);
recipes.remove(<clockworkphase:gearSilver>);
recipes.remove(<clockworkphase:gearLead>);
recipes.remove(<clockworkphase:gearSteel>);
recipes.remove(<clockworkphase:gearThaumium>);
recipes.remove(<clockworkphase:gearDiamond>);
recipes.remove(<clockworkphase:gearEmerald>);

recipes.remove(<clockworkphase:gearTemporal>);
recipes.addShaped(<clockworkphase:gearTemporal>, [[<ore:nuggetTemporal>, <ore:ingotTemporal>, <ore:nuggetTemporal>], [<ore:ingotTemporal>, <ore:craftingToolWrench>, <ore:ingotTemporal>], [<ore:nuggetTemporal>, <ore:ingotTemporal>, <ore:nuggetTemporal>]]);

MetalPress.removeRecipe(<clockworkphase:gearTemporal>);
MetalPress.addRecipe(<clockworkphase:gearTemporal>, <ore:ingotTemporal>, <ImmersiveEngineering:mold:1>, 6400, 6);
AlloySmelter.addRecipe(<clockworkphase:gearTemporal>, <ore:ingotTemporal> * 8, <gregtech:gt.metaitem.01:32303> * 0, 760, 32);
Extruder.addRecipe(<clockworkphase:gearTemporal>, <ore:ingotTemporal> * 4, <gregtech:gt.metaitem.01:32372> * 0, 300, 128);
FluidSolidifier.addRecipe(<clockworkphase:gearTemporal>, <gregtech:gt.metaitem.01:32303> * 0, <liquid:temporal> * 576, 120, 8);

##  Adjust Clockwork Phase recipes to require temporal ingots to start working with the mod
recipes.remove(<clockworkphase:clockworkAssemblyTable>);
Pylon.addRecipe(<clockworkphase:clockworkAssemblyTable>, <aura:WHITE_AURA> * 5000, <Botania:dreamwood>, <aura:BLUE_AURA> * 5000, <clockworkphase:gearTemporal>,  <aura:BLUE_AURA> * 5000, <clockworkphase:gearTemporal>, <aura:WHITE_AURA> * 5000, <Botania:dreamwood>);

print("Initialized 'ClockworkPhase.zs'");