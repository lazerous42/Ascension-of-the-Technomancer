//////////////////////////////////////////////////////////////////////////////////////////////
// Name: Betweenlands.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'WR-CBE.zs'...");

val remote = <WR-CBE|Addons:remote>;
val sniffer = <WR-CBE|Addons:sniffer>;
val privateSniffer = <WR-CBE|Addons:psniffer>;
val blazeTransceiver = <WR-CBE|Core:blazeTransceiver>;
val blazeRecieverDish = <WR-CBE|Core:blazeRecieverDish>;
val retherPearl = <WR-CBE|Core:retherPearl>;
val recieverDish = <WR-CBE|Core:recieverDish>;
val wirelessTransceiver = <WR-CBE|Core:wirelessTransceiver>;
val wirelessTransmitter = <WR-CBE|Logic:wirelessLogic>;
val wirelessReciever = <WR-CBE|Logic:wirelessLogic:1>;
val wirelessJammer = <WR-CBE|Logic:wirelessLogic:2>;

val ambrosiumShard = <aether:ambrosiumShard>;
val anode = <ProjRed|Core:projectred.core.part:4>;
val cathode = <ProjRed|Core:projectred.core.part:5>;
val electronTubeCertus = <customthings:item>;
val itemCasingAluminium = <customthings:item:1>;
val pulsatingChipset = <BuildCraft|Silicon:redstoneChipset:4>;
val redgem = <erebus:materials:12>;
val wiredPlate = <ProjRed|Core:projectred.core.part:2>;

## rether Pearl
recipes.remove(retherPearl);
recipes.addShaped(retherPearl, [[redgem, ambrosiumShard,redgem], 
						    	[ambrosiumShard, <ore:gemEnderPearl>, ambrosiumShard],
						    	[redgem, ambrosiumShard, redgem]]);

## Remote
recipes.remove(remote);
recipes.addShapedMirrored(remote, [[wirelessTransceiver, null], 
						    	   [itemCasingAluminium, null],
						    	   [pulsatingChipset, null]]);

## Transmitter
recipes.remove(wirelessTransmitter);
recipes.addShaped(wirelessTransmitter, [[retherPearl, null, null], 
						    			[<ore:stickObsidian>, electronTubeCertus, null],
						    			[anode, wiredPlate, wiredPlate]]);

## Receiver
recipes.remove(wirelessReciever);
recipes.addShaped(wirelessReciever, [[recieverDish, null, null], 
						    		 [<ore:stickObsidian>, electronTubeCertus, null],
						    		 [cathode, wiredPlate, wiredPlate]]);

## Sniffer
recipes.remove(sniffer);
recipes.addShaped(sniffer, [[recieverDish, wirelessTransceiver, recieverDish], 
						    [<ore:dustElectrotine>, electronTubeCertus, <ore:dustElectrotine>],
						    [itemCasingAluminium, itemCasingAluminium, itemCasingAluminium]]);

## Private Sniffer
recipes.remove(privateSniffer);
recipes.addShaped(privateSniffer, [[blazeRecieverDish, blazeTransceiver, blazeRecieverDish], 
						     	   [<ore:dustElectrotine>, electronTubeCertus, <ore:dustElectrotine>],
						     	   [itemCasingAluminium, itemCasingAluminium, itemCasingAluminium]]);

## Jammer
recipes.remove(wirelessJammer);
recipes.addShaped(wirelessJammer, [[blazeTransceiver, null, null], 
						    	   [<ore:rodBlaze>, electronTubeCertus, null],
						    	   [cathode, wiredPlate, wiredPlate]]);

print("Initialized 'WR-CBE.zs'");