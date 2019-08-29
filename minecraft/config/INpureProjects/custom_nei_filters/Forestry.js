if (FML.isModLoaded("Forestry") && Forestry_enabled) {
	NEI.hide("Forestry:crated" + "*");
	NEI.override("Forestry:ffarm", [0, 2, 3, 4, 5]);
}