if (FML.isModLoaded("appliedenergistics2") && AppliedEnergistics2_enabled) {
    NEI.override(AE2.getFacadeItem(), [java.random(AE2.getNumberOfTypes())]);
	NEI.hide("appliedenergistics2:item.ToolCertusQuartzCuttingKnife");
	NEI.hide("appliedenergistics2:item.ToolCertusQuartzWrench");
	NEI.hide("appliedenergistics2:item.ToolNetherQuartzCuttingKnife");
	NEI.hide("appliedenergistics2:item.ToolNetherQuartzWrench");
	NEI.hide("appliedenergistics2:item.ToolCertusQuartzAxe");
	NEI.hide("appliedenergistics2:item.ToolNetherQuartzAxe");
	NEI.hide("appliedenergistics2:item.ToolCertusQuartzHoe");
	NEI.hide("appliedenergistics2:item.ToolNetherQuartzHoe");
	NEI.hide("appliedenergistics2:item.ToolCertusQuartzSpade");
	NEI.hide("appliedenergistics2:item.ToolNetherQuartzSpade");
	NEI.hide("appliedenergistics2:item.ToolCertusQuartzPickaxe");
	NEI.hide("appliedenergistics2:item.ToolNetherQuartzPickaxe");
	NEI.hide("appliedenergistics2:item.ToolCertusQuartzSword");
	NEI.hide("appliedenergistics2:item.ToolNetherQuartzSword");
}