//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Et Futurum.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'Et Futurum.zs'...");

##  Val Definitions
val muttonRaw = <etfuturum:mutton_raw>;
val muttonCooked = <etfuturum:mutton_cooked>;

## Raw Mutton
<ore:listAllmuttonraw>.add(muttonRaw);
<ore:listAllmeatraw>.add(muttonRaw);

## Cooked Mutton
<ore:listAllmuttoncooked>.add(muttonCooked);
<ore:listAllmeatcooked>.add(muttonCooked);

print("Initialized 'Et Futurum.zs'");
