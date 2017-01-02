# Ascension-of-the-Technomancer
Newest Config Version 3.5.1

Hello there friend.  It seems as though you've met with a terrible fate, haven't you?  

Welcome to the world of Ascension of the Technomancer, a high difficulty alternative to typical "kitchen sink" type packs.  This pack features a high degree of cross mod integration, with a special focus on exploration.  Advent of Ascension, Hardcore Ender Expansion, and Twilight Forest provide the player with more than 20 new dimensions to explore.  The tech side of the pack centers around GregTech 5 experimental with a mix of GregTech style and traditional oregen. The magic side of the house features all of the major 1.7.10 magic mods.  Survival challenges have been enhanced with Hunger Overhaul, Spice of Life, Harvestcraft, and Agricraft.  The 100s of mobs in the pack have been organized into custom spawn tables, written from the ground up with Just Another Spawner.  The recipes used in this pack were initially derived from Infinity Expert mode with a dash of InfiTech 2, but heavily customized from there to ensure a unique experience.  Do you consider yourself a Minecraft expert?  Then welcome to your greatest challenge... and your undoing.  

Good luck friend.

ChangeLog
-- Version 3.5.1
- HOTFIX: RE-Battery is not craftable with GT tin cables.  Need to use ore dict entry for initial battery buffer batteries.
- Added agricraft soil entry for Random Things fertilized dirt
- Added cutting edge tree tapping kit
- Turned off "slender man" effects for enderman.  This Epic Siege Mod effect seemed to get stuck on the player after aggroing an enderman, even after the enderman was killed.
- Fixed ESM dimension mob stat multiplier syntax
- commit missing eiramoticons.cfg file and OpenComputers dlls that were missed from the main 3.5.1 commit
- Underdark, Twilight Forest, and The Outerlands now have mob base stat modifiers
- Endermen now cause slenderman style effects
- UI changes for better YouTubing.  Thaumcraft and Chromaticraft (hopefully) "mana" displays will now be rendered in the lower left to prevent standard face cam location from overlapping with them.
- Enable player head drop on death 100% of the time for more funs
- Added forge microblocks support for GregTech machine case blocks
- Added Easter egg type message to Morpheus night passage text
-- Update to version 3.5.0
- 3.5.x mod updates
- Added eiramoticons
- Added Crafting Tweaks
-- Version 3.4.3
- Consolidate all gear recipes to follow GregTech guidelines
- Added some ztones tweaks
- Toggle off LogisticsPipes.cfg update checker, it was throwing exceptions and it shouldn't be showing update messages to end users anyway
- Adjust spectre dimension key to have a harder recipe (need void metal), this time actually committing the change
- Added Chromic Lexicon to the stronghold library chests
- Adjust spectre dimension key to have a harder recipe (need void metal)
-- Update to Version 3.4.2
-Toggle off LogisticsPipes.cfg update checker, it was throwing exceptions and it shouldn't be showing update messages to end users anyway
-Adjust spectre dimension key to have a harder recipe (need void metal)
-Added Chromic Lexicon to the stronghold library chests
-Removed FastLeafDecay, Random Things provides this and will crash if it's present
-Added more exclusions to Hardcore Darkness settings, specifically the Nether and Chroma (which shouldn't be affected by this anyway)
-Increased spawn weights of many non-AoA mobs, especially lycanitesmobs
-Smalll buffs to the stats of some of the Lycanites mobs that look as though they should be stronger.  This should bring them more into line with the tougher AoA overworld mobs

-- Update to verions 3.3.0
-Added Simple Achievements with achievement book to provide an early game guide and a set of late game objectives
-Added Galacticraft + Galactic GregTech + Interstellar Ores
-Added Warp Drive
-Added Simple Achievements
-Remove ghast breaching effect, too difficult and destructive.  Also, reduced range to 48 blocks and fire delay to 3 seconds
-Added flint and blaze recipe to allow for fire creation without steel (however you do need a blaze rod from the overworld)
 
-- Version 3.2.6
-Reduced Hunger Overhaul food modifier from 1.75 down to 1.5.  Combat drains too much hunger
-Turn off passive animal aggro, they attach themselves in pens
-Fix splash.properties
-Reduced spawn cap of AMBIENT from 15 to 10 for lag prevention
 
-- Updated to version 3.2.5 (Release version)
-Added Lycanites arctic mobs to Polar Chasm
-Tweaked Hunger Overhaul logic to reduce effect on food value reduction
-Put the correct version of Wawla into pack (duh)
-Guide tweaks, a few extra pointers.
-Remove ChromaticraftData from repo
-Adjusted some of the HungerOverhaul timers (specifically, tree crop growth) to have smaller multipliers
-Magical plants now require garden soil
-Ghasts can spawn in spooky biomes
-Update spawn table restore files
-Adjusted CREATURE spawns to be lass frequent
-The Airship now requires Twilight Forest completion (lamp of cinders) to acquire the first one
-Removed stacking of mushroom soup, the game just eats the whole stack of soup anyway.  This cannot be fixed without a custom mod
-Added some Doomlike dungeon loot
-Swapped Monster Swarm for Epic Siege Mod again, Monster swarm is spawning mobs right next to the player
-Removed nether nikolite, doubt that GT unification can properly convert it to electrotine
-Mod updates.  Updated pack to version 3.2.4
-Added Wawla, Emotes, and the Secret Rooms Mod
-Switched back to MonsterSwarm
 
-- Version 3.2.3 
-Fix the Natura/Spice of Life bug.  Glowshroom soup and Natura Mushroom soup disabled.  Vanilla stew given boost and allowed to stack
-Updated Epic Siege Mod configs to fit in with the early game of pack better (2 weeks until mod kicks in)
-Swapped Monster Swarm for Epic Siege Mod
-Vanilla mob spawns increased by 50%
-Updated guide to document world events
 
-- Version 3.2.2: The spreading evil update
-Mobs will now swarm every 7 days and attempt to raid the players base
-Mobs will now occasionally attack neutral entities, the CREATURE type spawn tick modifier has been halved to compensate for this
-Increased mob spawn caps back to original values
-Doubled number of spawn ticks (1 -> 2 per second)
-Remove ExtendedPotions, DragonAPI extends to potion range
-Increased headless hunter spawn rate for early hunter levels
-Minor guide tweak to explain how to produce peanut butter and jelly sandwiches
-Agricraft cactus farms will now produce cactus blocks
-Chainmail now requires iron and not steel
-Reduced spawn weight of death hunter
-Removed RTG base on structure spawning issues.  Reika mentioned that using terrain generator mods affects Chromaticraft structure spawn rates (and ocean temples are already to scarce)
-Prevent general type ruins structures from spawning in the ocean
-Quick update of spawn table backups to make the directory compare clean
 
-- Version 3.1.2
-Guide updated to reflect that Chococraft is now included, plus re wording and spelling and grammar tweaks.
-Added chance cube pendants to loot tables
-increased the likely hood of finding health ups in chest loot
-Scanner and silk touch pendant for chance cubes can be made with any modifier pendant
-Village spawning changes
-Added in ChanceCubes to replace PandorasBox due to the ability to customize Chance Cube rewards
-Added a proper background wallpaper for the title screen
-Added CustomThings in place of Quadrum, it has more customization functionality available
-Updated GT, IC2, and GTweaker
-Added recipe to convert 3 gravel to one flint
-Added leader set to player starting inventory
-Turned of Et Futurum skin overlays to prevent skin corruption on death/reload, compatibility issue with Dragon API (and other mods) 
-Update JAS restore configs
-JAS spawn tweaks to increase performance
-Decreased distance between villages from 24 to 18 (default 12)
-Increased frequency of coral reef and kelp forest biomes
-Switch main block of RTG volcanos to Project Red basalt
-Turned off flat bedrock
-Removed InfniBows, EnderCore provides this functionality
-Some configs updated by adding their docs
-ClimateControl will now show small preference for warm/cool climates as opposed to hot/cold climates
-Restored splash.properties forge loading progress meter (load takes FOREVER, meters are needed)
-Increased Rainbow and Ender forest weight from 3 to 4
-Enable ender forest custom colors + other Chromaticraft tweaks
-Changed backup default rate to once per hour
-Added Thaumic Horizons
-Updated Doomlike Dungeons, with config flush to prevent crashes
-Disallow crafting of pandora's boxes
 
-- Version 3.0.1
-Guide update with JVM args and world type info
-Increased distance between village spawns (24 min, 60 max)
-MFR "single block solution" machines will use 50% 100% more power per work cycle
-Dimension worldgen tweaks
-Spawnlist cleanup (again)
 
-- Version 3.0.0
-Fixed some BoP biomes that were turned off in RWG by default
-Hopefully prevented villages from spawning in the ocean
-Cleaned up the spawn tables from Chromaticraft adding new biomes
-Addition of Chromaticraft and RGW
-Added creosote bottle oredict entry
-attempted to correct treated planks creosote bottle consumption bug, no matter how many recipe instances are in the crafting grid, all of creosote bottles get eaten and only one recipe worth of planks gets created.  This doesn't seem fixable in CraftTweaker.
-Nether ores will now smelt directly to ingots thanks to GregTech providing a uranium ingot
-Added Open Modular Turrets
-Added Modular Power Suits
 
-- Updated to version 2.4.2
-Mod Version Updates
-Unversion carpenters blocks cached resources
-Added guide hint about Geonaks spawning from user placed ore blocks
-Nether platinum way too common
 
-- Update to version 2.4.1
-Eliminate electrotine <-> nikolite conversion
-Updated pack to version 2.4.0
-Fixed lava mob spawns (except for khalk, he wants to be a cock and not spawn)
-Added Hardcore wither
-Corrected world reload bug (also /mt reload failure bug)
 
-- version 2.3.1
-Mod updates to 
-Openblocks fan now uses GT roter
-Added guide note about addons getting removed by official updates
-Added small boats mod
-Updated guide with info on wrought iron tools
-Tweaked Botania mana infusion recipes for 
     Tough Fabric -> Manaweave
     Electrotine -> Mana Powder
     Electrotine -> Redstone -> Glowstone (Alchemy Catalyst)
-Fix botania mana steel recipe
-Fixed iron chests recipes
 
-- Update to 2.2.0
-Mod Updates
 
-- Update to 2.1.4
-Disable hardcore darkness in the twilight forest 
-Disabled oreberries in the twilight
-Added guide note about crafting vanilla tools as crafting ingredients
-Prevent Project Red Peridot (and other gem) ores from spawning in the overworld
-Sugar can now be crafted using the food processing mortal and pestles (Havestcraft and Botania), and will work in the cooking for blockheads kitchen with the correct tools.
-Fixed GregTech dough recipe to use oredict
-Updated Mo' Creatures and Chococraft installation notes
-Added JustAnotherSpawnerRestore folder
 
-- Update version to 2.1.1
-Changed Spice of Life food history to use hunger restored as opposed to pure number of items consumed
-Tweak notes page about installing Mo' Creatures and Chococraft
-Added page about installing Mo' Creatures and Chcocraft to guide
-Disable signon update messages
-Disable IGW missing message at signon
-OreDict GregTech Coal/Charcoal dust as black dye
-Fixed incorrect weight balance in redstone/electrotine generation
-Kitchen tools were using aluminium ore and not ingots
-GregTech wood nerf applied to Natura wood
-Added presser and market to chest loot tables
-Fixed potion ID conflict between BoP paralysis and IC2 radiation
-Added Gadomancy
-Hobbiest steam engine now requires brass gears
-Corrected oredict for constantan <-> cupronickel
-Highland biome missing from all biome spawning groups
-Reduced spawn weight of those fucking bears, bad bear.
-Make treated stick recipe respect the use of GT saws
-Buildcraft engines can explode
-Script bugfixes
-Remove Advanced Solar Panels (not compatible with GregTech)
 
-- Updated to 2.1.0b
-Cleaned up modpack guide
-Added Gendustry, Cooking for Blockheads, and GTTweaker
-Cleaned up old configs
-Script updates for version 2.1.0b
-Updated FTBUtils guide for the addition of GregTech and related changes.
 Added Gravisuite
 
-- Update to version 2.0.4b
-Mod updates for version 2.0.4b
-Re-introduced some "vanilla" type ore generation to counterbalance the difficulties of finding TG ore veins.  About 35% of the original AotT oregen will be used with CoFH type ore blocks as G non-ticking tile entity type ore blocks cannot be placed by CoFH Core.  This will also correct the issue with Geonach spawning.
-Default Railcraft firestone generation will now be used for the material
-Fixed recipes that involved plates to work correctly with GregTech
-Allow the default crafting recipes for lumium, signalium, and enderium gears
 
-- Version 2.0.3b: Minor mod updates
-Added Magneticraft
-Disable Agricraft mod specific drops.  This was converting Harvestcraft grapes to GregTech grapes (about 50% of the time), preventing the conversion into seeds.  Als, this option is just plain fucking broken
-Increased the production of crops per craft 1 -> 2.
-Remove commented out wood nerf, GregTech already implements this
-Fixed bad meta-data assignment for initial inventory
-Disable the fucking EIO dirt slimes!!!
-GregTech worldgen changes for non-flat bedrock
-Revert CoFH oregen for GregTeh ores, it cannot handle tile entity ore blocks
 
-- Version 2.0.2b, tweaks to Oreberry generation to eliminate "useless" element berries
-Add in CoFH ore generation at lower values to compensate for the difficulty in finding appropriate ore veins from GregTech alone
-Reduce frequency of witchwood forest
-Added recipes/loot table records for health and damage increase items
 
-- Updated to version 2.0.1b
-Moar!!! mod updates
-Update Loot++ files post TConstruct
-Disable open computers manual on spawn
-GregTech world gen tweaks
-Removal of Tinkers Construct and related mods
-Script changes for TiCon removal
 
-- Version 2.0.0b GregTech branch initial commit
-Remove non-GregTech gear production
-Removed ComputerCraft in favor of OpenComputers
-Initial setup of GregTech worldgen instead of cofh
-Removed unnecessary oregen files
 
-
