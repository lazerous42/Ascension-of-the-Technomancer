# Ascension-of-the-Technomancer
Current LIVE Config Version 3.12.1
Repository Config Version 3.13.9

Hello there friend.  It seems as though you've met with a terrible fate, haven't you?  

Welcome to the world of Ascension of the Technomancer, a high difficulty alternative to typical "kitchen sink" type packs.  This pack features a high degree of cross mod integration, with a special focus on exploration.  Advent of Ascension, Hardcore Ender Expansion, and Twilight Forest, GalacticCraft, and The Aether II provide the player with more than 30 new dimensions to explore.  The tech side of the pack centers around GregTech 5 experimental, using a mix of GregTech style and traditional oregen. The magic side of the house features all of the major 1.7.10 magic mods, along with some less common fare like Ars Magica and ChromaticCraft to spice things up.  Survival challenges have been enhanced with Hunger Overhaul, Spice of Life, Harvestcraft, and Agricraft.  The 100s of mobs in the pack have been organized into custom spawn tables, written from the ground up with Just Another Spawner.  The recipes used in this pack were initially derived from Infinity Expert mode with a dash of InfiTech 2, but heavily customized from there to ensure a unique experience.  Do you consider yourself a Minecraft expert?  Then welcome to your greatest challenge... or your undoing.  

Good luck friend.

* A note about config version numbers ~ The least significant version number applies to config changes only, where that the middle number increments with mod versions.  Although configs from newer versions of mods won't normally cause issues, there is a small chance so I figured I should mention it just in case.  The most significant digit indicates a major structural change, i.e. a substantial content change.  Note all of the earlier releases follow this pattern exactly, but this standard is being maintained now and henceforth.

ChangeLog
-- Version 3.13.9
- Deactivated Et Futurum doors to eliminate iron dupe using the 6 iron plates -> 3 iron doors recipe.  Malisis Doors already creates the 1.8+ doors
-- Version 3.13.8
- Fixed the TE energy cell recipes that we're broken in a previous update ("cheaper" looking duplicate recipes involved frames, not cells)
-- Version 3.13.7
- Increase in electrotine ore deposits (solar panels can be very expensive)
-- Version 3.13.6
- Switched GT "magic metals" vein to generate less silver and more gold
- Given "magic metals" vein a smaller size, these produced a massive vein in test worlds.  Mithril is also available in small clumps in overworld and nether
-- Version 3.13.5
- Fixed the TE electrical steel recipes requiring steel plates and not the item
- Fixed TE pulverizer creating silicon plates and not the item
-- Version 3.13.4
- BUGFIX:  Thermal Dynamics hardened fluiduct impossible to craft to to GT unification.  It was specifically requiring Thermal Foundation invar blend.  Switched to proper oredict reference.
- Bloodmoon frequency increased from 2% to 3% of nights
- Update version number
-- Version 3.13.3
- Corrected configs for universal singularities
- Disable xray mobs
- added more resistance after changing dimensions (world load lag compensation)
- Added Avaritia support library + EternalSingularity
-- Version 3.13.2
- Removed concrete mod, requires requested permission to public pack and I don't want to hold up this release
- Disable xray mobs
- added more resistance after changing dimensions (world load lag compensation)
- Added Avaritia support library + EternalSingularity
- Major cut back on the number of registered heads for headcrumbs.  They are seriously polluting the loot tables

-- Version 3.13.1
- GT5u updated to 5.09.30 (w00t!)
- Lowered spawn weights of all dungeonmobs, especially Rakshasa (invisible catman douche)
- Added Avaritiaddons, and 1.12 concrete
- OreDict Maple logs into ore:logWood to allow for easier sorting
- Steel drum now requires 8 steel plates, no weighted pressure plates

-- Version 3.13.0 (The Update For the Man Who Has it All)
- Added Avaritia and related end game achievement content (if your into collecting mass quantities of resources as a matter of principle)
- Added Baublelicious to allow consolidation of certain baubles
- Updated GT 5.09.30pre3 to use pre-release build with nether generation fix.  Add this to your pack manually to get new GT changes without nether problems until a formal release of 5.09.30

-- Version 3.12.1
- Just a MOTD flavor text change
- BUGFIX: Cannot fire AoA bows without a regular arrow in inventory in addition to holly arrows (Disabled infibows in EnderCore)

-- Version 3.12.0 (Need a Hand Update)
- Mine and Blade Battlegear has been re-introduced to the pack to help cope with the number of weapons and tools that need to share limited hotbar space
- Chocobo feathers are now oredicted into ore:craftingFeather
- AoA HollyTop Arrows now use ore:craftingFeather for the basic recipe.

-- Version 3.11.2 (Quality of Death Addendum)
- Moar mobs!! Moar pain!!, Dungeon creatures added to Twilight, Aether, and special overworld biomes (SPOOKY, MAGICAL)

-- Version 3.11.1
- Added enderium ingots to loot tables (are you feeling lucky?)
- Moar gold and iron in loot tables

-- Version 3.11.0 (Quality of Life Update)
- Updated Chromaticraft to v17c, biome, potion, and enchantment IDs adjusted accordingly.  Spawn tables updated for new biome
- Mod Updates
- Super Crafting Frame (Easing your GT micro-crafting pains)
- ChiselTones (Chisel base Ztone blocks for game mechanic consistency)
- Thaumcraft Node Tracker (GTore veins probably already flood your FOV with waypoints)
- Neat (Mob heath bars to give you a vague idea of the ass kicking your about to receive)

-- Version 3.10.0
- BUGFIX (Critical): GT5.29 is causing terrain generation crashes in the nether.  Most likely to occur in when generating large amounts of chunks (i.e. initial generation)
- IC2 advanced circuit is allowed for making the HV circuit assembler (impossible to make required data stick in GT5.28, but fixed in GT5.29)
- Increased weight of tainted lands biome to compensate for BoP

-- Version 3.9.1
- Majorly increased the drop rate of Chromaticraft info fragments in the loot tables

-- Version 3.9.0 
-Mod version updates

-- Version 3.8.3
- BUGFIX: GregTech unification was causing Ars Magica 2 blue topaz and Thaumium blocks not to be craftable because the compressor was only returning the GT variant

-- Version 3.8.2
- BUGFIX: Corrected aura cascade vortex infusion crafting recipes of Ars Magica 2 runes.  Recipes cannot differ by aura color alone

-- Version 3.8.1
- Bugfix: Rune of winter required ore:blockSnow, which is not registered.  Reference changed to minecraft:snow

-- Version 3.8.0
- Fix MOTD and starting items
- Updated MOTD about new GT fluid spawns
- Mod version updates
- Reduced security time in GuardianChest.cfg down to 10 seconds.  This is to mitigate the use access bug (chest doesn't recognize you and makes you wait for 5 min to reclaim your items) while still providing damage protection until the user arrives.
- BUGFIX: Switched Nuclear Control to use GregTech recipes
- Client directory cleanup/maintenance
- Project Red configs are generating electrotine on their own.  COFH Core should be handling all generation of this resource.

- Version 3.7.2
- EnderIO and RFTools machine frames are now crafted in the QED
- Various recipe tweaks to EnderIO recipes to integrate with GregTech
- Corrected bad formatting codes on the FTBUtils admin commands page
- Added Achievements for the Aether

-- Version 3.7.1
- A few RFTools recipe tweaks

-- Version 3.7.0 (Skybound update)
- Added Mouse Tweaks for ease of inventory manipulation
- Added Aether 2
- Aether progression is now required for getting the airship (QED)
- Twilight Forest progression is now required for accessing AoA dimensions (QED)

-- Version 3.6.0
- Multiple recipe bugfixes relating to IC2 or typos
- BUGFIX:  Ender IO alloy furnace requires unavailable IC2 machines.  Corrected by requiring iron furnaces
- Added a few more uses for electrotine
- Update GregTech configs post-update
- Updated GregTech
- BUGFIX: Typo in manaweave cloth recipe was causing it to be 16000 mana, it should be 1600.  Even this is a little high, it was set to 1000 even
- Fix bad Galacticraft download
- Updated Galacticraft
- Updated JourneyMap configs
- Updated JourneyMap, ModularPowerSuits, and Open Modular Turrets

-- Version 3.5.5
- Witchery plants should require tilled garden soil to grow (except water artichoke)
- Disallowed use of rainbow trees to create rainbow forests because the "allow danger in rainbow forests" setting still doesn't allow for hostile mob spawns

-- Version 3.5.4
- BUGFIX Addendum: 4 regular steel plates are required for the basic machine frame (instead of the dense one)
- Chromaticraft lumen wheel moved to lower left corner of screen (where it was originally intended to be)
- Added admin commands to guide

-- Version 3.5.3
- Redstone furnace can now make charcoal from all logs
- Natura logs no longer smelt to charcoal in vanilla furnaces
- Changed Chocopedia recipe to allow for any black dye, not just ink sacks
- BUGFIX:  Need diamond gear for assembly table and GT recipe requires flawless diamonds and far too much infrastructure.  Changed to invar gear
- Adjust deep resonance ore generation file to made resonating ore a little more common and hopefully file crystal generation.  This only applies to the location where these ores are allowed to generate
- BUGFIX:  Hobbyist steam engine is referencing ore:gearBrass, this is not a gear added by GT.  It was switched back to gold gears
- Changed Bibliocraft big writing book default text scale to 1.0
- Added MOTD to inform players about retrogen

-- Version 3.5.2
- Retrogening vanilla coal deposits as well, tooo hard to find coal veins for coke/coal dust/coal chunks and other uses where charcoal is not allowed
- Re-introduced railcraft ore spawning through cofh.  Sulfur, Saltpeter, and Firestones (rare) will be RETROGENED into existing worlds to address balance issues with vulcanizing rubber.
- BUGFIX: RE-Battery is not craftable with GT tin cables.  Need to use ore dict entry for initial battery buffer batteries.
- Added agricraft soil entry for Random Things fertilized dirt
- Added cutting edge tree tapping kit
- Turned off "slender man" effects for enderman.  This Epic Siege Mod effect seemed to get stuck on the player after aggroing an enderman, even after the enderman was killed.
- Fixed ESM dimension mob stat multiplier syntax
- commit missing eiramoticons.cfg file and OpenComputers dlls that were missed from the main 3.5.1 commit
- Underdark, Twilight Forest, and The Outerlands now have mob base stat modifiers
- Endermen now cause slenderman style effects
- Added eiramoticons
- UI changes for better YouTubing.  Thaumcraft and Chromaticraft (hopefully) "mana" displays will now be rendered in the lower left to prevent standard face cam location from overlapping with them.
- Enable player head drop on death 100% of the time for more funs

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
-- Update to version 3.5.0 (Bells and Whisles Update)
- Misc mod updates
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
- Toggle off LogisticsPipes.cfg update checker, it was throwing exceptions and it shouldn't be showing update messages to end users anyway
- Adjust spectre dimension key to have a harder recipe (need void metal)
- Added Chromic Lexicon to the stronghold library chests
- Removed FastLeafDecay, Random Things provides this and will crash if it's present
- Added more exclusions to Hardcore Darkness settings, specifically the Nether and Chroma (which shouldn't be affected by this anyway)
- Increased spawn weights of many non-AoA mobs, especially lycanitesmobs
- Smalll buffs to the stats of some of the Lycanites mobs that look as though they should be stronger.  This should bring them more into line with the tougher AoA overworld mobs

-- Verion 3.3.0 (Space Madness Update)
- Added Simple Achievements with achievement book to provide an early game guide and a set of late game objectives
- Added Galacticraft + Galactic GregTech + Interstellar Ores
- Added Warp Drive
- Added Simple Achievements
- Remove ghast breaching effect, too difficult and destructive.  Also, reduced range to 48 blocks and fire delay to 3 seconds
- Added flint and blaze recipe to allow for fire creation without steel (however you do need a blaze rod from the overworld)
 
-- Version 3.2.6
- Reduced Hunger Overhaul food modifier from 1.75 down to 1.5.  Combat drains too much hunger
- Turn off passive animal aggro, they attach themselves in pens
- Fix splash.properties
- Reduced spawn cap of AMBIENT from 15 to 10 for lag prevention
 
-- Version 3.2.5
- Added Lycanites arctic mobs to Polar Chasm
- Tweaked Hunger Overhaul logic to reduce effect on food value reduction
- Put the correct version of Wawla into pack (duh)
- Guide tweaks, a few extra pointers.
- Remove ChromaticraftData from repo
- Adjusted some of the HungerOverhaul timers (specifically, tree crop growth) to have smaller multipliers
- Magical plants now require garden soil
- Ghasts can spawn in spooky biomes
- Update spawn table restore files
- Adjusted CREATURE spawns to be lass frequent
- The Airship now requires Twilight Forest completion (lamp of cinders) to acquire the first one
- Removed stacking of mushroom soup, the game just eats the whole stack of soup anyway.  This cannot be fixed without a custom mod
- Added some Doomlike dungeon loot
- Swapped Monster Swarm for Epic Siege Mod again, Monster swarm is spawning mobs right next to the player
- Removed nether nikolite, doubt that GT unification can properly convert it to electrotine
- Mod updates.  Updated pack to version 3.2.4
- Added Wawla, Emotes, and the Secret Rooms Mod
- Switched back to MonsterSwarm
 
-- Version 3.2.3 
- Fix the Natura/Spice of Life bug.  Glowshroom soup and Natura Mushroom soup disabled.  Vanilla stew given boost and allowed to stack
- Updated Epic Siege Mod configs to fit in with the early game of pack better (2 weeks until mod kicks in)
- Swapped Monster Swarm for Epic Siege Mod
- Vanilla mob spawns increased by 50%
- Updated guide to document world events
 
-- Version 3.2.2 (The Spreading Evil Update)
- Mobs will now swarm every 7 days and attempt to raid the players base
- Mobs will now occasionally attack neutral entities, the CREATURE type spawn tick modifier has been halved to compensate for this
- Increased mob spawn caps back to original values
- Doubled number of spawn ticks (1 -> 2 per second)
- Remove ExtendedPotions, DragonAPI extends to potion range
- Increased headless hunter spawn rate for early hunter levels
- Minor guide tweak to explain how to produce peanut butter and jelly sandwiches
- Agricraft cactus farms will now produce cactus blocks
- Chainmail now requires iron and not steel
- Reduced spawn weight of death hunter
- Removed RTG base on structure spawning issues.  Reika mentioned that using terrain generator mods affects Chromaticraft structure spawn rates (and ocean temples are already to scarce)
- Prevent general type ruins structures from spawning in the ocean
- Quick update of spawn table backups to make the directory compare clean
 
-- Version 3.1.2
- Guide updated to reflect that Chococraft is now included, plus re wording and spelling and grammar tweaks.
- Added chance cube pendants to loot tables
- increased the likely hood of finding health ups in chest loot
- Scanner and silk touch pendant for chance cubes can be made with any modifier pendant
- Village spawning changes
- Added in ChanceCubes to replace PandorasBox due to the ability to customize Chance Cube rewards
- Added a proper background wallpaper for the title screen
- Added CustomThings in place of Quadrum, it has more customization functionality available
- Updated GT, IC2, and GTweaker
- Added recipe to convert 3 gravel to one flint
- Added leader set to player starting inventory
- Turned of Et Futurum skin overlays to prevent skin corruption on death/reload, compatibility issue with Dragon API (and other mods) 
- Update JAS restore configs
- JAS spawn tweaks to increase performance
- Decreased distance between villages from 24 to 18 (default 12)
- Increased frequency of coral reef and kelp forest biomes
- Switch main block of RTG volcanos to Project Red basalt
- Turned off flat bedrock
- Removed InfniBows, EnderCore provides this functionality
- Some configs updated by adding their docs
- ClimateControl will now show small preference for warm/cool climates as opposed to hot/cold climates
- Restored splash.properties forge loading progress meter (load takes FOREVER, meters are needed)
- Increased Rainbow and Ender forest weight from 3 to 4
- Enable ender forest custom colors + other Chromaticraft tweaks
- Changed backup default rate to once per hour
- Added Thaumic Horizons
- Updated Doomlike Dungeons, with config flush to prevent crashes
- Disallow crafting of pandora's boxes
 
-- Version 3.0.1
- Guide update with JVM args and world type info
- Increased distance between village spawns (24 min, 60 max)
- MFR "single block solution" machines will use 50% 100% more power per work cycle
- Dimension worldgen tweaks
- Spawnlist cleanup (again)
 
-- Version 3.0.0 (All the Pretty Colors Update)
- Fixed some BoP biomes that were turned off in RWG by default
- Hopefully prevented villages from spawning in the ocean
- Cleaned up the spawn tables from Chromaticraft adding new biomes
- Addition of Chromaticraft and RGW
- Added creosote bottle oredict entry
- attempted to correct treated planks creosote bottle consumption bug, no matter how many recipe instances are in the crafting grid, all of creosote bottles get eaten and only one recipe worth of planks gets created.  This doesn't seem fixable in CraftTweaker.
- Nether ores will now smelt directly to ingots thanks to GregTech providing a uranium ingot
- Added Open Modular Turrets
- Added Modular Power Suits
 
-- Updated to version 2.4.2
- Mod Version Updates
- Unversion carpenters blocks cached resources
- Added guide hint about Geonaks spawning from user placed ore blocks
- Nether platinum way too common
 
-- Update to version 2.4.1
- Eliminate electrotine <-> nikolite conversion
- Updated pack to version 2.4.0
- Fixed lava mob spawns (except for khalk, he wants to be a cock and not spawn)
- Added Hardcore wither
- Corrected world reload bug (also /mt reload failure bug)
 
-- Version 2.3.1
- Mod updates to 
- Openblocks fan now uses GT roter
- Added guide note about addons getting removed by official updates
- Added small boats mod
- Updated guide with info on wrought iron tools
- Tweaked Botania mana infusion recipes for 
     Tough Fabric -> Manaweave
     Electrotine -> Mana Powder
     Electrotine -> Redstone -> Glowstone (Alchemy Catalyst)
- Fix botania mana steel recipe
- Fixed iron chests recipes
 
-- Update to 2.2.0
- Mod Updates
 
-- Update to 2.1.4
- Disable hardcore darkness in the twilight forest 
- Disabled oreberries in the twilight
- Added guide note about crafting vanilla tools as crafting ingredients
- Prevent Project Red Peridot (and other gem) ores from spawning in the overworld
- Sugar can now be crafted using the food processing mortal and pestles (Havestcraft and Botania), and will work in the cooking for blockheads kitchen with the correct tools.
- Fixed GregTech dough recipe to use oredict
- Updated Mo' Creatures and Chococraft installation notes
- Added JustAnotherSpawnerRestore folder
 
-- Update version to 2.1.1
- Changed Spice of Life food history to use hunger restored as opposed to pure number of items consumed
- Tweak notes page about installing Mo' Creatures and Chococraft
- Added page about installing Mo' Creatures and Chcocraft to guide
- Disable signon update messages
- Disable IGW missing message at signon
- OreDict GregTech Coal/Charcoal dust as black dye
- Fixed incorrect weight balance in redstone/electrotine generation
- Kitchen tools were using aluminium ore and not ingots
- GregTech wood nerf applied to Natura wood
- Added presser and market to chest loot tables
- Fixed potion ID conflict between BoP paralysis and IC2 radiation
- Added Gadomancy
- Hobbiest steam engine now requires brass gears
- Corrected oredict for constantan <-> cupronickel
- Highland biome missing from all biome spawning groups
- Reduced spawn weight of those fucking bears, bad bear.
- Make treated stick recipe respect the use of GT saws
- Buildcraft engines can explode
- Script bugfixes
- Remove Advanced Solar Panels (not compatible with GregTech)
 
-- Updated to 2.1.0b
- Cleaned up modpack guide
- Added Gendustry, Cooking for Blockheads, and GTTweaker
- Cleaned up old configs
- Script updates for version 2.1.0b
- Updated FTBUtils guide for the addition of GregTech and related changes.
- Added Gravisuite
 
-- Update to version 2.0.4b
- Mod updates 2.0.4b
- Re-introduced some "vanilla" type ore generation to counterbalance the difficulties of finding TG ore veins.  About 35% of the original AotT oregen will be used with CoFH type ore blocks as G non-ticking tile entity type ore blocks cannot be placed by CoFH Core.  This will also correct the issue with Geonach spawning.
- Default Railcraft firestone generation will now be used for the material
- Fixed recipes that involved plates to work correctly with GregTech
- Allow the default crafting recipes for lumium, signalium, and enderium gears
 
-- Version 2.0.3b
- Mod updates
- Added Magneticraft
- Disable Agricraft mod specific drops.  This was converting Harvestcraft grapes to GregTech grapes (about 50% of the time), preventing the conversion into seeds.  Als, this option is just plain fucking broken
- Increased the production of crops per craft 1 -> 2.
- Remove commented out wood nerf, GregTech already implements this
- Fixed bad meta-data assignment for initial inventory
- Disable the fucking EIO dirt slimes!!!
- GregTech worldgen changes for non-flat bedrock
- Revert CoFH oregen for GregTeh ores, it cannot handle tile entity ore blocks
 
-- Version 2.0.2b
- Tweaks to Oreberry generation to eliminate "useless" element berries
- Add in CoFH ore generation at lower values to compensate for the difficulty in finding appropriate ore veins from GregTech alone
- Reduce frequency of witchwood forest
- Added recipes/loot table records for health and damage increase items
 
-- Version 2.0.1b
- Moar!!! mod updates
- Update Loot++ files post TConstruct
- Disable open computers manual on spawn
- GregTech world gen tweaks
- Removal of Tinkers Construct and related mods
- Script changes for TiCon removal
 
-- Version 2.0.0b (Greg Will Break You Update)
- Remove non-GregTech gear production
- Removed ComputerCraft in favor of OpenComputers
- Initial setup of GregTech worldgen instead of cofh
- Removed unnecessary oregen files

