if (FML.isModLoaded("Botania") && Botania_enabled){
  NEI.hide("Botania:bifrost");
  NEI.hide("Botania:buriedPetals");
  NEI.hide("Botania:fakeAir");
  NEI.hide("Botania:prismarine");
  NEI.hide("Botania:*Slab*Full");
  NEI.hide("Botania:solidVine");
  NEI.override("Botania:twigWand", [0]);
}