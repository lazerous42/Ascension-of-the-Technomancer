# Ascension-of-the-Technomancer
Current LIVE Config Version 5.3.2
Repository Config Version 5.4.2

Hello there friend. It seems as though you've met with a terrible fate, haven't you?

Welcome to the world of Ascension of the Technomancer, a high difficulty alternative to typical "kitchen sink" type packs. This pack has a major focus on exploration, and features a high degree of cross mod integration. The recipes used in this pack were initially derived from a mix of FTB Infinity Evolved expert mode and InfiTech 2, but were heavily customized from there to ensure a unique modded Minecraft experience like no other.

Advent of Ascension, Hardcore Ender Expansion, and Twilight Forest, Advanced Rocketry, and The Aether II provide the player with more than 30 new planets and dimensions to explore across five star systems. Ore generation is a mix of GregTech style veins scattered clusters. This encourages exploration to find the next big deposit of essential resources, while not leaving you stuck if you can’t find the type of ore vein you need.

The tech side of the pack centers around GregTech 5 experimental, but includes all of the major tech mods (Thermal Expansion, EnderIO, MFR...) you’ve come to know and love. The magic side of the house features all of the major 1.7.10 magic mods, along with some less common fare like Ars Magica, and Aura Cascade to bring a unique twist to aspiring witches and wizards. Reika's mods Rotarycraft, ReactorCraft, and ChromatiCraft are also here, giving you the rare opportunity to experience some of the most challenging, engaging, and sophisticated mods ever written.

Survival challenges have been enhanced with Hunger Overhaul, Spice of Life, Harvestcraft, and Agricraft.   There are 100s of new mobs ranging from cute and fluffy woodland creatures to nightmarish eldritch horrors. All organized into custom spawn tables, written from the ground up with Just Another Spawner. The landscape is littered with countless; cities, ruins, castles, monuments, and dungeons that are filled with treasures for you to discover. The loot tables are heavily customized with hundereds different items to help you survie and thrive in this vast, harsh landscape.

All of this comes together to create one of the biggest modpacks ever made available, serving as a loving tribute to the epic 1.7.10 modding scene. Sure, there are now newer versions of modded Minecraft to explore, but nothing matching the vast scope of what was available for this release.

Do you consider yourself a Minecraft expert? Then welcome to your greatest challenge... or your undoing.  Good luck friend, You're going to need it.

UPDATE1: Although I have been MIA for quite a while version 6.0.1 should be reviewed for go-live soon.  Tons of new content and bugfixes to enjoy.

* A note about config version numbers ~ The least significant version number applies to config changes only, where that the middle number increments with mod versions.  Although configs from newer versions of mods won't normally cause issues, there is a small chance so I figured I should mention it just in case.  The most significant digit indicates a major structural change, i.e. a substantial content change.  Mixing configs across major version updates is NOT recommended.  Not all of the earlier releases follow this pattern exactly, but this standard is being maintained now and henceforth.

** Have an idea or useful tweak, pull requests are welcome and will be reviewed.

ChangeLog
-- Version 6.0.1§r§1§l (Brave New World update)
- Bugfix: Fixed Roguelike Dungeons loot spawning issues based on filename / load order issues.  Also, the loot should be substantially danker
- Config: Adjust ReactorCraft oregen settings to account for GT ores
- Bugfix: Adjust JAS spawn tick spacing.  Individual spacing seems to block most (hostile) mob spawns, where as the global does not.  Should save on processing cycles.
- Added ~ DynamicSurroundings, BetterFoliage
- Removed ~ JourneyMap
- Config ~ Turned off BetterFoliage grass and decreased effect view distance from 1000->750
- Updated ~ DragonAPI, RotaryCraft, ReactorCraft, GeoStrata, and MeteorCraft, Chunk Pregenerator, EternalSingularity, and Steve's Workshop
- BugFix ~ Added missing DimMapping tag to Lunalis in planetDefs.xml
- Config ~ Added oceanBlock of lava to planet Vultomas
- Config ~ Iron shafts added to IE villager crates
- Config ~ Added Elytras to more chest locations
- Config ~ Ancient Teleporter Blueprint can now only appear in nether fortresses and strongholds (it's a major progression item so it should be very rare to find)
- Updated ~ Corrected script naming convention issues (no spaces)
- Config ~ Massive structure library update for recurrent complex options
- Config ~ Finalized RTG/CC config
- Updated ~ GregTech to 5.09.32.pre4
- Updated ~ New AoA version Whoooo Hoooo!
- Updated ~ OpenSecurity
- Config ~ Tweaked RTG/CC biome spawning
- Config ~ Enabled Named Villages ocean monument spawning, Et Futurum based spawning doesn't work in RTG
- Config ~ Used script to disable Malisis' Doors fence gates, use Et Futurum
- Config ~ Less project Red volcanos
- BugFix ~ Any form or prismarine will work for blood orb recipes
- Updated ~ Set village/volcano settings in RTG/CC
- Updated ~ Dungeonpack structures spawnable biome range expanded + some disabled structures re-activated
- Updated ~ Removing aesthetic mods (except Chunk Animations), too heavy on processor
- Added ~ GeoStrata
- Added ~ MeteorCraft
- Added ~ Tumbleweed
- Added ~ Better Foliage
- Added ~ Astikoor (e.g. a horse cart)
- Removed ~ Baublelicious, I miss understood what this mod does
- Config ~ Added Elytra to some loot tables
- BugFix ~ Attempt to get GT zinc dust to play nice with smelting.  This seems to be a GT bug/quirk, as you can smelt the dirty dust, but not the clean
- Config ~ Started a Magneticraft script
- Config ~ Calibrate RTG settings
- Config ~ Tweak oregen for RTG worlds
- Removed ~ Generator mods, it doesn't seem to respect the frequency settings and is generating some questionable quality structures
- Config ~ Fix ChromatiCraft client side configs (the got reset)
- Config ~ Generator Mods walled city can only appear in FeyWeld
- Added ~ RTG and Climate Control
- Added ~ Llamas
- Added ~ Back in Slime
- BugFix ~ Correct InPureCore NEI config bug for Open Blocks
- Config ~ Decreased Generatormod structure frequency
- Config ~ Created loot table for Generatormod
- Config ~ Added WTF Expedition caves to Feyweld
- Config ~ Setup itlt (It's the Little Thing) resources
- Config ~  Added custom Elytra recipe
- Added ~ Generatormods + structure data for ruined cities
- Added ~ Magic Cookies
- Added ~ BackLyrta.  Yup, that's right a 1.7.10 pack with an Elytra (still needs recipe)
- Config ~ Updated Steves Workshop script to work with Ewy's Workshop
- Config ~ Update NEI filters to not show every liquids Open Blocks tank recipe
- Added ~ Chunk Pre-Generator
- Removed ~ chunkgen
- Config ~ Removed unneeded MineTweaker script logic in favor of using zzzcustom config to build new oredict entries
- Added ~ Ewysworkshop and replaced Steve's Workshot
- Added ~ WTF Expedition to get more interesting cave generation
- Added ~ SetNow, you will now be able to use a bed to set your spawn point at anytime of the day or night
- Added ~ Open Sensors
- Added ~ Nether Portal Fix
- Added ~ Lore Expansion (for future use)
- BugFix ~ Corrected the inability to make colored diamond dust for Minecraft Comes Alive
- Config ~ Moar work moving OreDict refs into launch sequence

Version 5.5.0 (The Endless Obsession Update)
- Config ~ Creating oredict records at init time.  This make the need to rename the Mo' Creatures configs each update obsolete
- Config ~ Not Enough Wands recipe and config cleanup
- Config ~ Moving oredict setup to zzzcustom configs to setup equivalents are launch so mod init can take advantage of the records automatically.
- BugFix ~ Changing HS Rail and Village Names recipes in zzzcustom configs to prevent GregTech from setting up improper recipes
- BugFix ~ Mo' Creatures oredict recipes are now established in here as this can handle the absence of the mod where the .zs file cannot.  Now users won't need to edit files in their scripts folder every time the pack updates
- Removed ~ Concrete Mod - Functionality replaced by Village Names.  The powder to concrete conversion works more accurately too.  Concrete Mod powder would freeze above water if it was placed directly above water, as opposed to falling in as expected
- Added ~ Village Names
- Added ~ NotEnoughThaumcraftTabs
- Config ~ Oredicted glazed terracotta
- Removed ~ Blur mod as it was blurring out the view of the BiblioCraft atlas.  This atlas leverages vanilla mapping and will most likely be supplanting JourneyMap to save on processing overhead and to provide a more engaging experience (you'll actually have to worry about getting lost)
- Config ~  Added a new recipe for compasses that is cheaper as you progress into GT 
- Config ~ Added custom chemical X recipe
- BugFix ~ Script cleanup 
- Added ~ Not Enough Wands + recipe script
- Config ~ Guide tweaks
- Added ~ ForbiddenMagic.zs script
- Config ~ High-speed rails now require compressed iron
- Config ~ Better TiCon NEI filters
- Config ~ Moves some QED recipes to normal crafting to break dependence on getting Enderium

-- Version 5.4.2 
- Config ~ Added custom chemical X recipe
- BugFix ~ Script cleanup 
- Added ~ Not Enough Wands + recipe script
- Config ~ Guide tweaks
- Added ~ ForbiddenMagic.zs script
- Config ~ High-speed rails now require compressed iron
- Config ~ Better TiCon NEI filters
- Config ~ Moves some QED recipes to normal crafting to break dependence on getting Enderium
- Added ~ ArchitectureCraft
- Added ~ Mutant Creatures (no overworld spawns)
- Config ~ Added Mutant Creatures to low pressure biome + atmosphere exclusion
- BugFix ~ Cleaned up old unused living handlers
- Config ~ Added a few uses for prismarine shards
- BugFix ~ Re-applied ChromaticCraft client settings lost during version 19 update
- Config ~ Living wood/rock are now only craftable with Aether logs/stones
- BugFix ~ Allowed each creature type to make 8 attempts at passive spawning (up from 4) to account for the reduced spawn ticks for said groups
- Config ~ Added Chocobos to Aether

-- Version 5.4.1 (Return From the Abyss Update)
- Config ~ Tweaked some Ars Magica 2 and Witchery items to use more diverse materials
- Config ~ Pure Daisy now has special requirements for living wood/rock.  Check the Technical notes section of the guide for more details on what input blocks are required.
- Config ~ Updated guide book memory recommendations from 6GB to 8GB for SSP
- Config ~ Chromaticraft client settings that were lost
- Config ~ Mob auto-despawn distance is now farther from players (64 blocks) and instant despawn time has been increased to 600 ticks to work better with less frequent spawning ticks.
- Config ~ Disabled EIO Farming station in favor of the Agricraft one
- Config ~ Sorted Loot Tables.zs
- Config ~ Added a rew more items to ChocolateQuest chests
- Config ~ Cleanup BiomeGroups.cfg
- Added ~ FairyLights
- Config ~ Corrected minable gasses list for Adv Rocketry
- Config ~ Changed list of vacuum tolerant entities and low pressure spawn tables (Adv Rocketry doesn't recognize MoC or CoFH entity names)
- Config ~ Corrected typos in Adv Rocketry asteroid definitions
- Config ~ Added custom loot table for Roguelike dungeons to make them worthwhile
- Config ~ Disabled global spawn tick spacing in favor of a larger creature type interval
- Config ~ Removed Fancy Block Particles, crash with Malisis doors being broken.
- Config ~ Allow for chunk purging in Overworld, Nether, and End
- Config ~ Minor guide changes for increasing performance + renamed a page
- Added ~ Add Blur, Chunk Animator, Dynamic Surroundings, and NOVA for more Blood Magic goodness
- BugFix ~ Fluid Converters mod to "oredict" fluids.  This is being used to fix RotaryCraft converting GT lubricant into it's own (which doesn't work for GT machines)
- Config ~ Default minimal key bindings will now be shipped/applied on clients with no options.txt file found
- BugFix ~ Removed misplaced customthings folder
- BugFix ~ Added script to convert Moar Signs oak sign into vanilla sign and back
- Config ~ More dungeon loot, more chance cube (are you feeling lucky?)
- Config ~ Gregified Project Red recipes
- Added ~ Added aesthetic mods: Railcraft Cosmetics, Dynamic Dynamos, and Barkifier
- Config ~ Added guide hint for twilight key
- Config ~ Shadow ore spawns only in Twilight and Deep Dark (to avoid retrogen), Dimensional shards can spawn in deep dark
- Config ~ Deep Dark portal can now be found as rare chest loot
- BugFix ~ Fixed saw->treated stick recipes to work with middle column of crafting grid
- Config ~ Added some Recurrent Complex structures
- Config ~ Updated mob spawn tables to add more mobs to Aether and Twilight
- Config ~ more uses for shadow metal in Blood Magic and Lycanites
- Config ~  More chocolateQuest chest loot 
- Config ~  Unversioned MineMenu data folder (so I stop overwriting your custom menu entries)
- Config ~  Created loot tables for ChocolateQuest dungeons
- Config ~  Added oregen for shadow metal
- Config ~  Corrected oregen for magma blocks in nether/land of darkness
- Config ~  Spawn table updates for Twilight and Aether to fill in the gaps after the removal of dungeon mobs

-- Version 5.4.0 
- Added ~ Chocolate Quest
- Added ~ BigDoors mod, this allows for a 3 wide double door
- Config ~ Mod updates, including Reika's mods
- Config ~ Minor change to auto-generated JAS files for the removal of Dungeon Mobs

-- Version 5.3.2
- Removed dungeon mobs due to balance issues

-- Version 5.3.1 
- BugFix ~ Ensure no trailing spaceson any lines in dimlets.cfg.  This seems to cause crashes for some people although I cannot reproduce it.  There must be an additional factor involved in triggering this issue.

-- Version 5.3.0 (1.7.10 Shall Live Forever Release) 
- Updated ~ Dynamic Sword Skills updated 
- Updated ~ CustomNPCs updated 
- Updated ~ Eiramoticons updated 
- Updated ~ LibVulpes updated 
- Updated ~ Open Computer updated 
- Updated ~ Open Security updated 
- Updated ~ Spice of Life updated

-- Version 5.2.1 
- Config ~ Railcraft anchors give 6 hours of chunkloading per pearl.  Players already have FTBUtil chunkloading, and pearls are pretty abundant via AoA
- Config ~ Added iron/steel shafts (wind/watermill component, not RoC) to Armadron order list (periodic)

-- Version 5.2.0
- BugFix ~ Fix 128 sub-biome bug causing dense forest to spawn on the moon
- Added ~ Witching Gadgets
- Added ~ Traveler's Gear

-- Version 5.1.2
- Bugfix ~ Added GT mithril ore to ore:oreMithril so that it will get proper machine processing recipes at load
- Added ~ Gregtania 
- Config ~ A shapeless recipe has been added to allow for the direct conversion of an ESM ghast souls vial, into a vanilla ghast souls vial.  This is a one way, direct conversion that can be performwed in the players inventory
- Config ~ Reduced Chromaticraft structure difficulty from 3 -> 2 to reduce tedium

-- Version ~ 5.1.1
- BugFix ~ Modular Power Suits mode change was bound to mouse wheel, conflicting with Chromaticraft
- Config ~ Added more flowers to the Forestry apiculture.cfg 
- Config ~ Guide book update with AoA dimension access mechanics and descriptions
- Config ~ Added some extra "standard" ores, one for each AR controlled planet
- BugFix ~ CoFH worldgen tweaks Config.  Turned off some of the older retrogen triggers in CoFH (they are from over a year ago, and the CoFH files were renamed for consistency).  Added some extra ore generation to AR planets to make them more distinct and valuable.
- BugFix ~ Re-working GT worldgen file to deal with infinite recursion generating AoA dimensions

-- Version 5.1.0 (The Greeeeegggg Strikes Back Update)
- Config ~ Turned on connected inner edge of chisel CTM textures
- Config ~ Allow chiseling back to vanilla leaves
- Bugfix ~ Renamed all CoFH oregen files.  A previous revision added a -Ores suffix to all files.  This caused CoFH to recreate a default vanilla ore file (with retrogen on!).  This is obviously bad, so the suffix was dropped from all files
- Bugfix ~ The TE induction smelter can now create brass
- ExtraCells is now thoroughly Greggy
- Dimensional shard ore will spawn on AR control worlds (but not vacuum worlds or Feyweald)
- Fixed naming convention of some CoFH files
- Corrected Moon of Foopt having a number designation, not a proper name
- Allow flourite recoloring - Pylons will now generate in non-overworld dimensions - Allow alternate fragment generation (killing villagers with pylons, I think)
- Rotarycraft config tweaks.  It was set to EASY MODE!!!!!  This will not stand
- Added MPUtils for better display of changelog and issue reporting - Added AdHooks, because we need grappling hooks in this pack
- Fixed missing TiCon drying rack recipe
- Added a CoFH ore generation for Magmaox magma blocks (retrogen requested)
- Gregified BiblioCraft (based off of GT:NH)
- Added script for NVLSimple blocks unification with other mods that add 1.8+ stones
- Updated GT5u from 5.09.30 -> 5.09.31
- Added Tainted Magic
- Added Magmaox to add the 1.10 nether blocks into the pack (worldgen pending)
- Added Twilight Portal Catalyst mod to define a special key to the twilight (recipe pending).
- Added Concrete and Terracotta blocks (pending request approval)

-- Version 5.0.2 
- Removed the Galacticraft ore generation blacklist record from CoFH oregen files
- Added small clay pockets that can spawn underground (will retrogen)

-- Version 5.0.1 (Boldly going where no update has gone before)
- Fixed using compressor to make unstable ingot blocks out of mobius ingots.  You can also used the unstable ones in a crafting table again.
- Turn off colored beacon beams.  They break the psudo-inversion sigil ritual
- Geodes should be a bit smaller on average / dilithium in geodes
- Fix biome groups type
- Moved OceanSpires biome to be 136 (collision with desert oil field)
- Star map. final revision
- Resizing/positioning planets (again)
- More starmap/planet biome tweaks to try and prevent the 128+ sub-biome bug
- Hot dry rock now marked as low pressure to make the gathering of DiLithium a bit more interesting
- Added note about TC Inventory Scanner to the guide
- Fixed missing realmstone drops from AoA2.5 snapshot
    Dyrehorn/GiantSlug -> Gardencia
    PodPlant/FlowerFace/Squasher -> VoxPonds
    Stalker -> Shyrelands
- Added planet Draygonia (Wyvern Lair).  Should display "Destination Unreachable" if Mo' Creatures is not installed
- Re-organized AR biomes to (hopefully) prevent the 128+ sub-biome bug
- Adding 2 more stars + a few moar planets
- Ensure that worldgen structures spawn in The FeyWeald
- Allow oreberries in the nether
- Toggle off enabled version checkers
- Aluminium and Titanium "pure" ores are a bit more rare (cough, use GT, cough, cough)
- Setting some initial orbital theta values for each planet
- Disable hardcore darkness in AR space dimension (kind of doesn't make sense)
- Asteroid distance tweaks
- More oredict consolidation of aluminum/aluminium and aluminium accessories.  This consolidation was moved to the initial scripts file, as it's more generic than commands that apply to just AR
- AR laser drill ore list was changed to a blacklist and emptied out, as all ores that spawn on a planet are eligible for laser drilling (because it's actually grabbing blocks from the planet surface)
- Lots more ores available in geodes
- Exposure to vacuum made extra deadly... for extra fun
- Added redstone/electrotine asteroid and tinkered with probabilities/variability of asteroids
- AR ore spawning tweaks.  Aluminium and Titanium are only found in "Alien Biomes" as pure ores (need to use GT ores otherwise).  The also occur in asteroids.  Dilithium only spawns in on airless moons and asteroids.
- AR configs tweaked for increased difficulty.  Also, I accidentally left the rocket fuel requirement toggled off.
- Update JAS backup + spawn group auto-sorting
- Added a few more commands to the useful commands page.
- Added low pressure atmosphere effect exclusions for certain mobs and created a separate spawnings biome groups for those mobs
- A few vanilla biomes missing form planet defs
- Removed MultiWorld in favor of using advanced rocketry as the dimension generator for the FeyWeald (MultiWorld is request only for public packs)
- Hide all planets not in home star system
- Added Buildcraft oil biomes to The FeyWeald
- Add Ruins and Recurrent Complex structures to FeyWeald
- Turned off AE2 caching to prevent incompatibilities with Chromaticraft
- Added a few more asteroids
- A few more recipe tweaks to Advanced Rocketry
- Updated AE2v2 -> AE2v3, along with the required dependency updates to Thaumicenergistics, and AE2Stuff
- Removed AE2 custom inscriber recipes from script logic due to CraftTweaker being incompatible with AE2v3
- Changed to Railcraft and Immersive Engineering coke ovens to give the unique uses as opposed to the IE version being demonstrably better. IE's coke over is faster at 1200 ticks per operation where as Railcraft's produces twice as much creosote (500mb instead of 250mb)
- Added GT Vein Locator
- Setting more Advanced Rocketry recipes
- Rebuilt spawn tables by forcing an update of BiomeGroups.cfg to eliminate references to biomes that no longer exist, and also to cleanup the net.* name collision resolutions that built up over the development process
- Gas mining for Reactorcraft gasses from gas giants allowed
- set all JWIN ore unification settings to off just in case
- turned off Project Red update checking (again)
- Added iridium to Technomancy settings
- Smeltery will provide 3 ingots per ore due to it requiring pyrothium fuel and lunar regolith for the bricks
- DiLithium only spawns in "Alien" biomes
- Coal and dirt should not spawn in the moon biome
- Added LosGrak to the special thanks section of the guide
- Allow deleting of RFTools dimensions
- Removing Galacticraft and related mods, replaced by Adv Roocketry
- Updated AoA biome dimlet exclusions
- MultiWorld mod FeyWeald locked to vanilla and magical overworld biomes only
- Unversion journeymap data folder and log
- Fucking AOBD file keeps resetting my changes, I fucking love it
- MoC sharks moved to WATERMONSTER spawn list
- Moar starz = Moar Funz
- Added a guide book page about Advanced Rocketry
- Tweaking Advanced Rocketry configs
- Dilithium now accessible with laser drill and geodes
- more rocket fuels
- Added minable gasses to gas giants (I think it's right now)
- Added Ancient Teleporter blueprint to loot tables
- Added iron shaft to loot tables
- Realmstones required for warping to AoA planets
- Added some dimension, biome, and ore table config for advanced rocketery
- Warpdrive mod removed
- Added most AoA dimensions as planets of the Alpha Centauri system that AotT takes place in
- Added AoA skills page to the guide book (about time huh)
- Fastcraft reverted to 1.23 and Optifine back to D6.  It was causing crashes in iChunUtil
- Setting up Adv Rocketry recipes and plantary layout
- Updated GTTweaker
- Removed all reference to Galacticraft and it's addons
- Easy colored text for signs and books, who doesn't love that
- Added Advanced Rocketry/LibVulpes
- Added Default World Generator to lock the main overworld to BIOMESOP type
- Added a biome tracking tool: Natures Compass
- Now I laugh at you each time you die

-- Version 4.5.0 (Lazerous Saves the World Update)
- Introducing MultiWorld to create an alternate DEFAULT overworld, unaffected by Chromaticraft's inability to play nice with BIOMESOP world types

-- Version 4.4.0 (A Blast from the Past Update)
- Added Fossils and Archeology Revival 
- Mod version updates
- Smeltery is now enabled for ore processing
- Knapsack recipe now enabled
- Re-introducing smeltery as a later game ore multiplier.  3x returns, but requires trip to the moon and pyrothium for fuel.  Guide notes have been updated accordingly.

-- Version 4.3.9
- Fixed unification exploit with the AnyIron and AnyCopper oredict entries and JABBA barrels.  Also deactivated AnyCopper and AnyIron in AOBD and Technomancy pure ores

-- Version 4.3.8
- Disabled Baublelicious magic items because they have easy recipes.  This mod should still allow for Botania and Thaumcraft baubles to be consolidated using the entangling items.  If it doesn't then this mod will be pulled from the load out in a future release

-- Version 4.3.7
- Fixed GlobalProperties.cfg from JAS restore after update
- Added a special thanks section for users who have helped with bug tracking to the introduction page of the FTBUtils guide
- Disable Railcraft residual heat block to prevent associated bugs (what the hell does this block even do anyway?), it is known to cause incompatibilities with Chromaticraft pylon reconstruction.

-- Version 4.3.5
- Sort out changes to spawn tables after deactivating BoP biome overrides
- Updated ThaumicExploration
- Back dates ThaumicNEI to prevent last TC recipe accessed from "sticking" in the NEI recipes array in memory and appearing inappropriately in subsequent lookups
- Back ported InPureCore from 5.0.0b for NEI item filtering (to make bug squasking easier)
-- Version 4.2.4
- Disabled Naquada and related oreberry bushes
- ore berry bushes are 25% rarer
- turned off unnecessary mod types in AOBD configs
- changed material properties for mithril from 67 to 203 to enable more ore products

-- Version 4.2.3
- turn off BoP vanilla biome overrides to prevent issues with Chromaticraft plant spawning (specifically void reeds)
- Taint too common now (although ethereal blooms are basically free), dropped from 25 to 15.  Wake up and smell the TAINT

-- Version 4.2.2
- Deactivated ore conversions in JWIN, GT5u is already doing this, a competing mod doing this is disruptive to controlled
- GT5u settings are the cause of passive mobs harming each other.  3 in a single block causes them to damage each other.  This has been increased to 5
- Passive WATERCREATURE type enemies have had their spawn cap lowered 10->5 (Minecraft default with normal spawning), and spawn tick rate increased 10->100.  Chunk spawning now enabled at the default rate of 0.1.
- MoC sharks moved to WATERMONSTER spawn list

-- Version 4.2.1
- Reduced WATERCREATURE spawn cap from 15 to 10
- Added a spawn cycle reduction to WATERCREATURE and AMBIANT from 1 to 10
- Added performance tip to guide regarding journeymap
- Electrotine cluster size increase
- Added guide tip
- Deactivate thoqqua spawning in dungeonmobs.cfg, this may prevent them spawning all together, but the out of control fire in the nether required correction
- Decrease rarity of Thoqqua, too much fire
- Fix gear in GT alloy smelter recipes, should require 8 ingots, not 6
- Fix missing paren

-- Version 4.2.0 (Thermonuclear Shaft Update)
- Increased taint biome frequency again, still too rare
- One last fragment weight tweak.  Fragments are a moderately common drop now
- Guide tweaks
- Stupid fragments, stupid loot table, just spawn when and were I tell you to.
- More weight for fragments!!! Custom weights and spawn counts don't seem to have an effect.  However, multiple instances of fragments can be added to the loot table to simulate higher weights.  Each instance added to the loot table will take the standard properties of a CC fragment record in that loot table (weight, min, and max)
- Another boost to ChromatiCraft fragment spawn weight
- Allow admins to open all guardian chests
- Coal coke now requires a compressor to turn into blocks
- Imm. Eng lightning rod now as a slightly easier recipe that Infinity Evolved
- BUGFIX: Added zzzzzcustomconfigs to fix Pam's HarvestCraft sesame seeds not dropping when grown on Agricraft crops.  It does this by adding the appropriate oredict entries during client/server init (onWorldLoad isn't early enough in the process)
- During some non-Agricraft testing, it was observed that using a watering can is more than 2x as effective at inducing growth ticks in Agricraft crops.  The growth tick multiplier was adjusted 1.0 -> 0.6
- Weeds will destroy crop sticks when the player doesn't use a rake.
- Mobius ingots are now a part of high tier HP upgrade canisters
- In game manual updated with more performance tips
- Fix Agricraft grass drop settings, they were preventing RotaryCraft canola seeds from dropping
- Allow TiCon to control the oreberries it recognizes to prevent confusion in AOBDBBB
- Disable Rutile ore berries
- Removing ElecriCraft for balance reasons (Seriously, a 60 Trillion RF capacity battery?!)
- RotaryCraft config tweaks
- Removed ReactorCraft-Ores.json file, it has literally no effect (sorry, no retrogen.  The built in one hangs on world load)
- Another slight boost in info fragment weights (there are like ~250 to find, they need to be a common chest drop)
- Added a CoFH file for TiCon cobalt to retrogen it
- Lava is not allowed as a fuel for the smeltery.  This is a preventative action as the smeltery is still disabled at this time, but it will probably be allowed in a future update
- Advent of Ascension updated to 2.5
- Updated CustomNPCs and OpenSecurity
- Removed Hearts mod and loot table entries.  Replaced with TiCon Heart Canisters
- Advanced drawbridges are created in GT assembler, I literally can't make a vanilla crafting recipe for them.  MineTweaker just throws errors
- BUGFIX: Added Thaumic NEI to address issues with custom infusion recipes not appearing in NEI because you never actually "unlock" them
- Added custom recipes for the Tinkers Construct HP upgrades
- Added link to pack GitHub on the client login screen
- Added CrystalWing with custom recipe and loot table entries
- TiCin supppression progress commit
- Adding in Tinkers' Construct for drawbridges, and heart containers (Pending: Disable all TiCon recipes and only enable select items like canisters and drawbridges using non-tinkers materials
- Fixed indium spawning definition in ReactorCraft configs.  Still not sure if CoFH can control ReC oregen at all.  More testing is needed
- Added new GregTech vein and small ores for ReactorCraft ores (Cadmium, Indium)
- Development config cleanup progress commit (mainly worldgen cleanup for GalacticCraft)

-- Version 4.1.1
- Added some oredict fixes for Aether 2
- A few minor Gregginess tweaks for Biomes O Plenty
- Added CoFH Core Interstellar Ores config for ReactorCraft
- Disabled GalacticCraft ore spawns for ores created by Interstellar Ores

-- Version 4.1.0b
- Re-syncing branch and updated Rotary/Electri/ReactorCraft to v17
- Bedrockium now requires bedrock dust to make

-- Version 4.0.0b
- Added Rotarycraft, Electricraft, Reactorcraft
- Creating 4.0 beta branch for experimenting with Rotary/Electi/Reactorcraft

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