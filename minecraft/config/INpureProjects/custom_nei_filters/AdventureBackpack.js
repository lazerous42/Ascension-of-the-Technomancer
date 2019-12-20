if (FML.isModLoaded("adventurebackpack") && AdventureBackpack_enabled) {
	NEI.hide("adventurebackpack:copterPack");
	NEI.hide("adventurebackpack:steamJetpack");
	NEI.hide("adventurebackpack:clockworkCrossbow");
	NEI.override("adventurebackpack:backpackComponent", [0, 1, 2, 3, 4]);
}