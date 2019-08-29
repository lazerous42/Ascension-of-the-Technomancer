// Microblocks always require special handling.
if (FML.isModLoaded("BuildCraft|Transport") && BuildCraft_enabled) {
	NEI.hide("BuildCraft|Transport:pipeBlock");
    NEI.override("BuildCraft|Core:paintbrush", [0]);
    BC.obliterate_facades(java.random(BC.getFacadesSize()));
}