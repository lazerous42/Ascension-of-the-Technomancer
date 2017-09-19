//////////////////////////////////////////////////////////////////////////////////////////////
// Name: BiblioCraft.zs
// Author: Lefty/DreamMasterXXL/Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

// --- Imports ---
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import mods.gregtech.CuttingSaw;

print("Initializing 'BiblioCraft.zs'...");

// --- Vars ---
var TypeWriterB = [
<BiblioCraft:BiblioTypewriter>,
<BiblioCraft:BiblioTypewriter:1>,
<BiblioCraft:BiblioTypewriter:2>,
<BiblioCraft:BiblioTypewriter:3>,
<BiblioCraft:BiblioTypewriter:4>,
<BiblioCraft:BiblioTypewriter:5>,
<BiblioCraft:BiblioTypewriter:6>,
<BiblioCraft:BiblioTypewriter:7>,
<BiblioCraft:BiblioTypewriter:8>,
<BiblioCraft:BiblioTypewriter:9>,
<BiblioCraft:BiblioTypewriter:10>,
<BiblioCraft:BiblioTypewriter:11>,
<BiblioCraft:BiblioTypewriter:12>,
<BiblioCraft:BiblioTypewriter:13>,
<BiblioCraft:BiblioTypewriter:14>,
<BiblioCraft:BiblioTypewriter:15>]
as IItemStack[];

var color16 = [
<gregtech:gt.metaitem.02:32429>,
<gregtech:gt.metaitem.02:32421>,
<gregtech:gt.metaitem.02:32422>,
<gregtech:gt.metaitem.02:32414>,
<gregtech:gt.metaitem.02:32415>,
<gregtech:gt.metaitem.02:32428>,
<gregtech:gt.metaitem.02:32425>,
<gregtech:gt.metaitem.02:32424>,
<gregtech:gt.metaitem.02:32416>,
<gregtech:gt.metaitem.02:32420>,
<gregtech:gt.metaitem.02:32426>,
<gregtech:gt.metaitem.02:32418>,
<gregtech:gt.metaitem.02:32419>,
<gregtech:gt.metaitem.02:32427>,
<gregtech:gt.metaitem.02:32423>,
<gregtech:gt.metaitem.02:32417>]
as IItemStack[];

var Swood = [
<minecraft:wooden_slab>,
<minecraft:wooden_slab:1>,
<minecraft:wooden_slab:2>,
<minecraft:wooden_slab:3>,
<minecraft:wooden_slab:4>,
<minecraft:wooden_slab:5>,
<BiblioCraft:item.FramingSheet>]
as IItemStack[];

var FClockB = [
<BiblioCraft:BiblioClock>,
<BiblioCraft:BiblioClock:1>,
<BiblioCraft:BiblioClock:2>,
<BiblioCraft:BiblioClock:3>,
<BiblioCraft:BiblioClock:4>,
<BiblioCraft:BiblioClock:5>,
<BiblioCraft:BiblioClock:6>]
as IItemStack[];

var FPT1 = [
<BiblioCraft:BiblioFlatPainting>,
<BiblioCraft:BiblioFlatPainting:1>,
<BiblioCraft:BiblioFlatPainting:2>,
<BiblioCraft:BiblioFlatPainting:3>,
<BiblioCraft:BiblioFlatPainting:4>,
<BiblioCraft:BiblioFlatPainting:5>,
<BiblioCraft:BiblioFlatPainting:6>]
as IItemStack[];

var PaintingB = [
<BiblioCraft:BiblioBorderlessPainting>,
<BiblioCraft:BiblioBorderlessPainting:1>,
<BiblioCraft:BiblioBorderlessPainting:2>,
<BiblioCraft:BiblioBorderlessPainting:3>,
<BiblioCraft:BiblioBorderlessPainting:4>,
<BiblioCraft:BiblioBorderlessPainting:5>,
<BiblioCraft:BiblioBorderlessPainting:6>]
as IItemStack[];

var FPT2 = [
<BiblioCraft:BiblioSimplePainting>,
<BiblioCraft:BiblioSimplePainting:1>,
<BiblioCraft:BiblioSimplePainting:2>,
<BiblioCraft:BiblioSimplePainting:3>,
<BiblioCraft:BiblioSimplePainting:4>,
<BiblioCraft:BiblioSimplePainting:5>,
<BiblioCraft:BiblioSimplePainting:6>]
as IItemStack[];

var FPT3 = [
<BiblioCraft:BiblioMiddlePainting>,
<BiblioCraft:BiblioMiddlePainting:1>,
<BiblioCraft:BiblioMiddlePainting:2>,
<BiblioCraft:BiblioMiddlePainting:3>,
<BiblioCraft:BiblioMiddlePainting:4>,
<BiblioCraft:BiblioMiddlePainting:5>,
<BiblioCraft:BiblioMiddlePainting:6>]
as IItemStack[];

var FPT4 = [
<BiblioCraft:BiblioFancyPainting>,
<BiblioCraft:BiblioFancyPainting:1>,
<BiblioCraft:BiblioFancyPainting:2>,
<BiblioCraft:BiblioFancyPainting:3>,
<BiblioCraft:BiblioFancyPainting:4>,
<BiblioCraft:BiblioFancyPainting:5>,
<BiblioCraft:BiblioFancyPainting:6>]
as IItemStack[];

var Pedestals = [
<BiblioCraft:BiblioSwordPedestal>,
<BiblioCraft:BiblioSwordPedestal:1>,
<BiblioCraft:BiblioSwordPedestal:2>,
<BiblioCraft:BiblioSwordPedestal:3>,
<BiblioCraft:BiblioSwordPedestal:4>,
<BiblioCraft:BiblioSwordPedestal:5>,
<BiblioCraft:BiblioSwordPedestal:6>,
<BiblioCraft:BiblioSwordPedestal:7>,
<BiblioCraft:BiblioSwordPedestal:8>,
<BiblioCraft:BiblioSwordPedestal:9>,
<BiblioCraft:BiblioSwordPedestal:10>,
<BiblioCraft:BiblioSwordPedestal:11>,
<BiblioCraft:BiblioSwordPedestal:12>,
<BiblioCraft:BiblioSwordPedestal:13>,
<BiblioCraft:BiblioSwordPedestal:14>,
<BiblioCraft:BiblioSwordPedestal:15>]
as IItemStack[];

var cwool16 = [
<minecraft:wool>,
<minecraft:wool:1>,
<minecraft:wool:2>,
<minecraft:wool:3>,
<minecraft:wool:4>,
<minecraft:wool:5>,
<minecraft:wool:6>,
<minecraft:wool:7>,
<minecraft:wool:8>,
<minecraft:wool:9>,
<minecraft:wool:10>,
<minecraft:wool:11>,
<minecraft:wool:12>,
<minecraft:wool:13>,
<minecraft:wool:14>,
<minecraft:wool:15>]
as IItemStack[];

var LableB = [
<BiblioCraft:BiblioLabel>,
<BiblioCraft:BiblioLabel:1>,
<BiblioCraft:BiblioLabel:2>,
<BiblioCraft:BiblioLabel:3>,
<BiblioCraft:BiblioLabel:4>,
<BiblioCraft:BiblioLabel:5>,
<BiblioCraft:BiblioLabel:6>]
as IItemStack[];

var FrameB = [
<BiblioCraft:BiblioMapFrames>,
<BiblioCraft:BiblioMapFrames:1>,
<BiblioCraft:BiblioMapFrames:2>,
<BiblioCraft:BiblioMapFrames:3>,
<BiblioCraft:BiblioMapFrames:4>,
<BiblioCraft:BiblioMapFrames:5>,
<BiblioCraft:BiblioMapFrames:6>]
as IItemStack[];

// --- Remove Recipes ---
// --- Printing Press
recipes.remove(<BiblioCraft:Printing Press>);
// --- Print Press Case
recipes.remove(<BiblioCraft:item.BiblioChase>);
// --- Typesetting Table
recipes.remove(<BiblioCraft:Typesetting Machine>);
// --- Framed Chest
recipes.remove(<BiblioCraft:tile.BiblioFramedChest>);
// --- Furniture Paneler
recipes.remove(<BiblioCraft:BiblioPaneler:*>);
// --- Painting Press
recipes.remove(<BiblioCraft:BiblioPaintPress>);
// --- Fancy Gold Latern
recipes.remove(<BiblioCraft:BiblioLantern>);
// --- Fancy Iron Latern
recipes.remove(<BiblioCraft:BiblioIronLantern>);
// --- Fancy Gold Lamp
recipes.remove(<BiblioCraft:BiblioLamp>);
// --- Fancy Iron Lamp
recipes.remove(<BiblioCraft:BiblioIronLamp>);
// --- Armor Stand
recipes.remove(<BiblioCraft:Armor Stand>);
// --- Desk Bell
recipes.remove(<BiblioCraft:BiblioBell>);
// --- Cookie Jar
recipes.remove(<BiblioCraft:BiblioStuffs>);
// --- Diner Plate
recipes.remove(<BiblioCraft:BiblioStuffs:2>);
// --- Framing Saw
recipes.remove(<BiblioCraft:item.FramingSaw>);
// --- Frame Sheet
recipes.remove(<BiblioCraft:item.FramingSheet>);
// --- Frame Board
recipes.remove(<BiblioCraft:item.FramingBoard>);
// --- Drafting Compas
recipes.remove(<BiblioCraft:item.BiblioMapTool>);
// --- Waypoint Compas
recipes.remove(<BiblioCraft:item.BiblioWayPointCompass>);
// --- Monocle
recipes.remove(<BiblioCraft:item.BiblioGlasses:2>);
// --- Plum Line
recipes.remove(<BiblioCraft:item.PlumbLine>);
// --- Reading Glasses
recipes.remove(<BiblioCraft:item.BiblioGlasses>);
// --- Hand Drill
recipes.remove(<BiblioCraft:item.HandDrill>);
// --- Screw Gun
recipes.remove(<BiblioCraft:item.BiblioDrill>);
// --- Tape Measure Real
recipes.remove(<BiblioCraft:item.tape>);
// --- Tape Maesure
recipes.remove(<BiblioCraft:item.tapeMeasure>);
// --- Clipboard
recipes.remove(<BiblioCraft:item.BiblioClipboard>);

// --- Add Recipes ---
// --- Printing Press
recipes.addShaped(<BiblioCraft:Printing Press>, [
[<ore:plateThaumium>, <ore:stickBlaze>, <ore:plateThaumium>],
[<ore:plateAluminium>, <gregtech:gt.metaitem.01:32601>, <ore:plateAluminium>],
[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]]);

// --- Print Press Case
recipes.addShaped(<BiblioCraft:item.BiblioChase>, [
[<ore:stickWoodSealed>, <ore:stickWoodSealed>, <ore:stickWoodSealed>],
[<ore:stickWoodSealed>, null, <ore:stickWoodSealed>],
[<ore:stickWoodSealed>, <ore:stickWoodSealed>, <ore:stickWoodSealed>]]);

// --- Typesetting Table
recipes.addShaped(<BiblioCraft:Typesetting Machine>, [
[<ore:plateAluminium>, <BiblioCraft:item.BiblioChase>, <ore:plateAluminium>],
[<ore:plateWoodSealed>, <ore:frameGtWoodSealed>, <ore:plateWoodSealed>],
[<ore:plateWoodSealed>, <ore:plateWoodSealed>, <ore:plateWoodSealed>]]);

// --- Framed Chest
recipes.addShaped(<BiblioCraft:tile.BiblioFramedChest>, [
[<BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>],
[<ore:screwIron>, <BiblioCraft:BiblioLabel:6>, <ore:screwIron>],
[<BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>]]);

// --- Oak Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler>, [
[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
[<minecraft:wooden_slab>, <gregtech:gt.metaitem.02:32470>, <minecraft:wooden_slab>],
[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);

// --- Spruce Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:1>, [
[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
[<minecraft:wooden_slab:1>, <gregtech:gt.metaitem.02:32471>, <minecraft:wooden_slab:1>],
[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]);

// --- Birce Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:2>, [
[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
[<minecraft:wooden_slab:2>, <gregtech:gt.metaitem.02:32472>, <minecraft:wooden_slab:2>],
[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]);

// --- Jungle Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:3>, [
[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
[<minecraft:wooden_slab:3>, <gregtech:gt.metaitem.02:32473>, <minecraft:wooden_slab:3>],
[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]);

// --- Arcacia Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:4>, [
[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
[<minecraft:wooden_slab:4>, <gregtech:gt.metaitem.02:32474>, <minecraft:wooden_slab:4>],
[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]);

// --- Dark Oak Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:5>, [
[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
[<minecraft:wooden_slab:5>, <gregtech:gt.metaitem.02:32475>, <minecraft:wooden_slab:5>],
[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]);

// --- Framed Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:6>, [
[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
[<BiblioCraft:item.FramingBoard>, <BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingBoard>],
[<BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>]]);

// Type Writers
for i, color in color16 {
    var TypeWriter = TypeWriterB[i];
    
    recipes.remove(TypeWriter);
    recipes.addShaped(TypeWriter, [[<ore:plateRubber>, <OpenComputers:item:20>, <ore:plateRubber>],[<ore:ringIron>, color, <ore:ringIron>],[<ore:plateIron>, <ore:blockIron>, <ore:plateIron>]]);
}

// Framed Clock
for i, slabs in Swood {
    var FClock = FClockB[i];
    
    recipes.remove(FClock);
    recipes.addShaped(FClock, [[slabs, <minecraft:clock>, slabs],[slabs, <ore:stickWood>, slabs],[slabs, <ore:plateGold>, slabs]]);
}

// Borderless Painting
for i, slabs in Swood {
    var CPainting = PaintingB[i];
    
    recipes.remove(CPainting);
    recipes.addShaped(CPainting, [[slabs, slabs, slabs],[slabs, <BiblioCraft:item.PaintingCanvas>, slabs],[slabs, slabs, slabs]]);
}

// Flat Painting
for i, Canvas in PaintingB {
    var FPainting = FPT1[i];
    
    recipes.remove(FPainting);
    recipes.addShaped(FPainting, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:stickWood>, Canvas, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
}

// Simple Painting
for i, Canvas1 in FPT1 {
    var SPainting = FPT2[i];
    
    recipes.remove(SPainting);
    recipes.addShaped(SPainting, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:stickWood>, Canvas1, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
}

// Middle Painting
for i, Canvas2 in FPT2 {
    var MPainting = FPT3[i];
    
    recipes.remove(MPainting);
    recipes.addShaped(MPainting, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:stickWood>, Canvas2, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
}

// Fancy Painting
for i, Canvas3 in FPT3 {
    var FPainting = FPT4[i];
    
    recipes.remove(FPainting);
    recipes.addShaped(FPainting, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:stickWood>, Canvas3, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
}

// Sword Pedetals
for i, cwool in cwool16 {
    var SPedestals = Pedestals[i];
    
    recipes.remove(SPedestals);
    recipes.addShaped(SPedestals, [[null, null, null],[<ore:plateIron>, <ore:ringIron>, <ore:plateIron>],[<ore:slabStone>, cwool, <ore:slabStone>]]);
}

// Wood Lable
for i, Frame in FrameB {
    var Lable = LableB[i];
    
    recipes.remove(Lable);
    recipes.addShaped(Lable, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:stickWood>, Frame, <ore:stickWood>],[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
}

// --- Painting Press
recipes.addShaped(<BiblioCraft:BiblioPaintPress>, [
[<ore:plateIron>, <ore:plateIron>, <ore:boltIron>],
[<ore:ringIron>, null, null],
[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]]);

// --- Fancy Gold Latern
recipes.addShaped(<BiblioCraft:BiblioLantern>, [
[<ore:plateGold>, <ore:dustGlowstone>, <ore:plateGold>],
[<ore:paneGlassColorless>, <harvestcraft:pamcandleDeco1>, <ore:paneGlassColorless>],
[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

// --- Fancy Iron Latern
recipes.addShaped(<BiblioCraft:BiblioIronLantern>, [
[<ore:plateIron>, <ore:dustGlowstone>, <ore:plateIron>],
[<ore:paneGlassColorless>, <harvestcraft:pamcandleDeco1>, <ore:paneGlassColorless>],
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

// --- Fancy Gold Lamp
recipes.addShaped(<BiblioCraft:BiblioLamp>, [
[<ore:plateIron>, <ThermalExpansion:Light>, <ore:plateIron>],
[null, <ore:stickGold>, null],
[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

// --- Fancy Iron Lamp
recipes.addShaped(<BiblioCraft:BiblioIronLamp>, [
[<ore:plateIron>, <ThermalExpansion:Light>, <ore:plateIron>],
[null, <ore:stickGold>, null],
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

// --- Armor Stand
recipes.addShaped(<BiblioCraft:Armor Stand>, [
[<ore:boltIron>, <ore:stickIron>, <ore:boltIron>],
[<ore:craftingToolHardHammer>, <ore:stickIron>, <ore:craftingToolSaw>],
[<ore:plateIron>, <minecraft:stone_pressure_plate>, <ore:plateIron>]]);

// --- Desk Bell
recipes.addShaped(<BiblioCraft:BiblioBell>, [
[null, <minecraft:stone_button>, null],
[null, <ore:plateIron>, null],
[<ore:plateIron>, null, <ore:plateIron>]]);

// --- Cookie Jar
recipes.addShaped(<BiblioCraft:BiblioStuffs>, [
[null, <ore:plateRubber>, null],
[<minecraft:glass_pane>, null, <minecraft:glass_pane>],
[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]]);

// --- Diner Plate
recipes.addShaped(<BiblioCraft:BiblioStuffs:2>, [
[null, null, null],
[<ore:plateNetherQuartz>, null, <ore:plateNetherQuartz>],
[null, <ore:plateNetherQuartz>, null]]);

// --- Frame Sheet
recipes.addShaped(<BiblioCraft:item.FramingSheet> * 2, [
[<gregtech:gt.metaitem.02:32470>, <ore:craftingToolSaw>]]);

// --- Frame Board
recipes.addShaped(<BiblioCraft:item.FramingBoard> * 2, [
[<BiblioCraft:item.FramingSheet>, <ore:craftingToolSaw>]]);

// --- Drafting Compas
recipes.addShaped(<BiblioCraft:item.BiblioMapTool>, [
[<ore:stickIron>, <ore:screwIron>, <ore:stickIron>],
[<ore:stickIron>, <ore:stickIron>, <ore:craftingToolFile>],
[<ore:stickIron>, <ore:screwIron>, <ore:craftingToolScrewdriver>]]);

// --- Waypoint Compas
recipes.addShaped(<BiblioCraft:item.BiblioWayPointCompass>, [
[<ore:stickGold>, <ore:ringGold>, <ore:craftingToolFile>],
[<ore:screwGold>, <minecraft:compass>, <ore:screwGold>],
[<ore:craftingToolScrewdriver>, <ore:ringGold>, <ore:stickGold>]]);

// --- Monocle
recipes.addShaped(<BiblioCraft:item.BiblioGlasses:2>, [
[<ore:ringGold>, <ore:wireFineGold>, <ore:wireFineGold>],
[<ore:lensGlass>, <ore:craftingToolSoftHammer>, <ore:wireFineGold>],
[null, <ore:wireFineGold>, null]]);

// --- Plum Line
recipes.addShaped(<BiblioCraft:item.PlumbLine>, [
[<ore:wireFineSteel>, <ore:wireFineSteel>, <ore:wireFineSteel>],
[<ore:plateLead>, <ore:craftingToolSoftHammer>, <ore:wireFineSteel>],
[<ore:roundLead>, null, <ore:wireFineSteel>]]);

// --- Reading Glasses
recipes.addShaped(<BiblioCraft:item.BiblioGlasses>, [
[<ore:stickIron>, <ore:screwIron>, <ore:stickIron>],
[<ore:ringIron>, <ore:boltIron>, <ore:ringIron>],
[<ore:lensGlass>, <ore:craftingToolScrewdriver>, <ore:lensGlass>]]);

// --- Screw Gun
recipes.addShaped(<BiblioCraft:item.BiblioDrill>, [
[<ore:screwIron>, <ore:boltIron>, <ore:craftingToolScrewdriver>],
[<ore:gearGtSmallIron>, <IC2:itemRecipePart:3>, <ore:gearGtSmallIron>],
[<ore:plateIron>, <IC2:itemBatREDischarged>, <ore:plateIron>]]);

// --- Tape Measure Real
recipes.addShaped(<BiblioCraft:item.tape>, [
[<ore:wireFineIron>, <ore:wireFineIron>, <ore:wireFineIron>],
[<ore:wireFineIron>, <ore:dyeYellow>, <ore:wireFineIron>],
[<ore:wireFineIron>, <ore:wireFineIron>, <ore:wireFineIron>]]);

// --- Tape Maesure
recipes.addShaped(<BiblioCraft:item.tapeMeasure>, [
[<BiblioCraft:item.tape>, <BiblioCraft:item.tape>, <BiblioCraft:item.tape>],
[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

// --- Clipboard
recipes.addShaped(<BiblioCraft:item.BiblioClipboard>, [
[<ore:screwIron>, <ore:springSmallIron>, <ore:screwIron>],
[<ore:craftingToolScrewdriver>, <gregtech:gt.metaitem.01:17809>, <ore:craftingToolSaw>],
[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// --- Cutting Saw Recipes ---
// --- Frame Sheet
CuttingSaw.addRecipe(<BiblioCraft:item.FramingSheet> * 4, null, <gregtech:gt.metaitem.02:32470>, <liquid:water> * 3, 50, 4);
CuttingSaw.addRecipe(<BiblioCraft:item.FramingSheet> * 4, null, <gregtech:gt.metaitem.02:32470>, <liquid:ic2distilledwater> * 2, 50, 4);
CuttingSaw.addRecipe(<BiblioCraft:item.FramingSheet> * 4, null, <gregtech:gt.metaitem.02:32470>, <liquid:lubricant> * 1, 25, 4);

// --- Frame Board
CuttingSaw.addRecipe(<BiblioCraft:item.FramingBoard> * 4, null, <BiblioCraft:item.FramingSheet>, <liquid:water> * 2, 50, 4);
CuttingSaw.addRecipe(<BiblioCraft:item.FramingBoard> * 4, null, <BiblioCraft:item.FramingSheet>, <liquid:ic2distilledwater> * 1, 50, 4);
CuttingSaw.addRecipe(<BiblioCraft:item.FramingBoard> * 4, null, <BiblioCraft:item.FramingSheet>, <liquid:lubricant> * 1, 25, 4);

print("Initialized 'BiblioCraft.zs'");