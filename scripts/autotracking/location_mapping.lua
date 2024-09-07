-- use this file to map the AP location ids to your locations
-- to reference a location in Pop use @ in the beginning and then path to the section (more info: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#locations)
-- to reference an item use it's code
-- here are the SM locations as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/location_mapping.lua
BASE = 27022002000

LOCATION_MAPPING = {
    [BASE + 0] = {"@Start/Impa Gift/"},
    [BASE + 1] = {"@Overworld/Start/Nayru's House/"},    
    [BASE + 2] = {"@Overworld/Lynna|South Shore|Palace/Lynna City Chest/"},
    [BASE + 3] = {"@Overworld/Lynna|South Shore|Palace/Shop/First Item"},
    [BASE + 4] = {"@Overworld/Lynna|South Shore|Palace/Shop/Second Item"},
    [BASE + 5] = {"@Overworld/Lynna|South Shore|Palace/Shop/Third Item"},
    [BASE + 6] = {"@Overworld/Lynna|South Shore|Palace/Hidden Shop/First Item"},
    [BASE + 7] = {"@Overworld/Lynna|South Shore|Palace/Hidden Shop/Second Item"},
    [BASE + 8] = {"@Overworld/Lynna|South Shore|Palace/Hidden Shop/Third Item"},
    [BASE + 9] = {"@Overworld/Lynna|South Shore|Palace/Mayor Plen's House/"},
    [BASE + 10] = {"@Overworld/Lynna|South Shore|Palace/Vasu's Gift/"},
    [BASE + 11] = {"@Overworld/Lynna|South Shore|Palace/Black Tower Worker/"},
    [BASE + 12] = {"@Overworld/Lynna|South Shore|Palace/Gasha Farmer/"},
    [BASE + 13] = {"@Overworld/Lynna|South Shore|Palace/Advance Shop/First Item"},
    [BASE + 14] = {"@Overworld/Lynna|South Shore|Palace/Advance Shop/Second Item"},
    [BASE + 15] = {"@Overworld/Lynna|South Shore|Palace/Advance Shop/Third Item"},
    [BASE + 16] = {"@Overworld/Lynna|South Shore|Palace/Ambi's Palace/Palace Chest/"},
    [BASE + 17] = {"@Overworld/Lynna|South Shore|Palace/Ambi's Palace/Rescue Nayru/"},
    [BASE + 18] = {"@Overworld/Lynna|South Shore|Palace/Maku Tree Gift/"},   
    [BASE + 19] = {"@Overworld/Lynna|South Shore|Palace/South Shore Dirt/"},    
    -- move all of these
    [BASE + 20] = {"@Overworld/Lynna|South Shore|Palace/Tingle Present/"},    
    [BASE + 21] = {"@Overworld/Lynna|South Shore|Palace/Tingle Upgrade/"},    
    [BASE + 22] = {"@Overworld/Yoll Graveyard/Cheval's Test/"},    
    [BASE + 23] = {"@Overworld/Yoll Graveyard/Cheval's Invention/"},    
    [BASE + 24] = {"@Overworld/Yoll Graveyard/Grave Under The Tree/"},    
    [BASE + 25] = {"@Overworld/Yoll Graveyard/Syrup's Shop/First"},    
    [BASE + 26] = {"@Overworld/Yoll Graveyard/Syrup's Shop/Second"},    
    [BASE + 27] = {"@Overworld/Yoll Graveyard/Syrup's Shop/Third"},    
    [BASE + 28] = {"@Overworld/Fairies' Woods/Fairie's Woods Chest/"},    
    [BASE + 29] = {"@Overworld/Fairies' Woods/Deku Forest Cave East/"},    
    [BASE + 30] = {"@Overworld/Fairies' Woods/Deku Forest Cave West/"},    
    [BASE + 31] = {"@Overworld/Fairies' Woods/Deku Forest Soldier/"},    
    [BASE + 32] = {"@Overworld/Crescent Island/Hidden Tokay Cave/"},    
    [BASE + 33] = {"@Overworld/Crescent Island/Tokay Crystal Cave/"},    
    [BASE + 34] = {"@Overworld/Crescent Island/Tokay Bomb Cave/"},    
    [BASE + 35] = {"@Overworld/Crescent Island/Wild Tokay Game/"},    
    [BASE + 36] = {"@Overworld/Crescent Island/Tokay Market/First Item"},    
    [BASE + 37] = {"@Overworld/Crescent Island/Tokay Market/Second Item"},    
    [BASE + 38] = {"@Overworld/Crescent Island/Tokay Pot Cave/"},    
    [BASE + 39] = {"@Overworld/Crescent Island/Under Crescent Island/"},    
    [BASE + 40] = {{"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Nuun Cave - Ricky/"},{"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Nuun Cave - Dimitri/"},{"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Nuun Cave - Moosh/"}},   
    [BASE + 41] = {"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Symmetry City Brothers/first talk to sister, then the two brothers to the NE|NW"},    
    [BASE + 42] = {"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Tokkey's Composition/"},    
    [BASE + 43] = {"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Bomb Fairy/"},    
    [BASE + 44] = {"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Talus Peaks Chest/"},    
    [BASE + 45] = {"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Patch Tuni Nut Ceremony/"},    
    [BASE + 46] = {"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Patch Broken Sword Ceremony/"},    
    [BASE + 47] = {"@Overworld/Rolling Ridge West/Goron Elder/"},    
    [BASE + 48] = {"@Overworld/Rolling Ridge West/Rolling Ridge Entrance/Ridge West Surface Stair"},    
    [BASE + 49] = {"@Overworld/Rolling Ridge West/Moblin Keep/Under Moblin Keep"},    
    [BASE + 50] = {"@Overworld/Rolling Ridge West/Moblin Keep/Defeat Great Moblin"},    
    [BASE + 51] = {"@Overworld/Rolling Ridge West/Rolling Ridge Entrance/Goron's Hiding Place"},    
    [BASE + 52] = {"@Overworld/Rolling Ridge West/Rolling Ridge Entrance/Ridge Chest West Base On Terrace"},    
    [BASE + 53] = {"@Overworld/Rolling Ridge East (Past)/Bomb Goron Head/"},    
    [BASE + 54] = {"@Overworld/Rolling Ridge East (Past)/Treasure Hunting Goron/"},
    [BASE + 55] = {"@Overworld/Rolling Ridge East (Present)/Goron caves (Present)/First Goron Dance"},
    [BASE + 56] = {"@Overworld/Rolling Ridge East (Past)/Goron caves (Past)/Goron Dance, With Letter"},
    [BASE + 57] = {"@Overworld/Rolling Ridge East (Past)/Goron caves (Past)/Trade Goron Vase"},
    [BASE + 58] = {"@Overworld/Rolling Ridge East (Past)/East Ridge Base/Ridge Base Past Bomb"},
    [BASE + 59] = {"@Overworld/Rolling Ridge East (Past)/East Ridge Base/Ridge Diamonds Past"},
    [BASE + 60] = {"@Overworld/Rolling Ridge East (Present)/Pool in D6 Entrance/"},
    [BASE + 61] = {"@Overworld/Rolling Ridge East (Present)/Goron caves (Present)/Trade Rock Brisket"},
    [BASE + 62] = {"@Overworld/Rolling Ridge East (Past)/Goron Shooting Gallery/100 points"},
    [BASE + 63] = {"@Overworld/Rolling Ridge East (Past)/Goron caves (Past)/Trade Lava Juice"},
    [BASE + 64] = {"@Overworld/Rolling Ridge East (Past)/Goron caves (Past)/Ridge Bush Cave"},
    [BASE + 65] = {"@Overworld/Rolling Ridge East (Present)/Target Carts Minigame/First reward"},
    [BASE + 66] = {"@Overworld/Rolling Ridge East (Present)/Target Carts Minigame/Second reward"},
    [BASE + 67] = {"@Overworld/Rolling Ridge East (Present)/Goron caves (Present)/Big Bang Game"},
    [BASE + 68] = {"@Overworld/Rolling Ridge East (Present)/Goron caves (Present)/Ridge NE Cave Present"},
    [BASE + 69] = {"@Overworld/Rolling Ridge East (Present)/Goron caves (Present)/Goron Diamond Cave"},
    [BASE + 70] = {"@Overworld/Zora Village|Zora Seas/Zora Village Present Chest/"},
    [BASE + 71] = {"@Overworld/Zora Village|Zora Seas/Zora Palace (Present)/Zora Palace Chest"},
    [BASE + 72] = {"@Overworld/Zora Village|Zora Seas/Zora NW Cave/"},
    [BASE + 73] = {"@Overworld/Zora Village|Zora Seas/Fairies' Coast Chest/"},
    [BASE + 74] = {"@Overworld/Zora Village|Zora Seas/Zora Palace (Present)/Zora King Gift"},
    [BASE + 75] = {"@Overworld/Zora Village|Zora Seas/Library Present/"},
    [BASE + 76] = {"@Overworld/Zora Village|Zora Seas/Library Past/"},
    [BASE + 77] = {"@Overworld/Zora Village|Zora Seas/Zora Seas Chest/"},
    [BASE + 78] = {"@Overworld/Zora Village|Zora Seas/Fisher's Island Cave/"},
    [BASE + 79] = {"@Overworld/Zora Village|Zora Seas/Zora's Reward/"},
    [BASE + 80] = {"@Overworld/Sea of Storms|No Return/Piratian Captain/"},
    [BASE + 81] = {"@Overworld/Sea of Storms|No Return/Sea of Storms Past/"},
    [BASE + 82] = {"@Overworld/Sea of Storms|No Return/Sea of No Return/"},
    -- TRADE
    [BASE + 83] = {"@Overworld/Yoll Graveyard/Graveyard Poe Trade/"},
    [BASE + 84] = {"@Overworld/Lynna|South Shore|Palace/Postman Trade/"},
    [BASE + 85] = {"@Overworld/Lynna|South Shore|Palace/The Toilet Hand Trade/"},
    [BASE + 86] = {"@Overworld/Crescent Island/Tokay Chef Trade/"},
    [BASE + 87] = {"@Overworld/Fairies' Woods/Happy Mask Salesman Trade/"},
    [BASE + 88] = {"@Overworld/Lynna|South Shore|Palace/Mamamu Yan Trade/"},
    [BASE + 89] = {"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Middle Man Trade/"},
    [BASE + 90] = {"@Overworld/Lynna|South Shore|Palace/Comedian Trade/"},
    [BASE + 91] = {"@Overworld/Lynna|South Shore|Palace/Sad Boi Trade/"},
    [BASE + 92] = {"@Overworld/Yoll Graveyard/Maple Trade/"},
    [BASE + 93] = {"@Overworld/Lynna|South Shore|Palace/Rafton Trade/"},
    [BASE + 94] = {"@Overworld/Rolling Ridge West/Old Zora Trade/"},
    -- HEART PIECES
    [BASE + 95] = {"@Overworld/Lynna|South Shore|Palace/Black Tower Heart Piece/"},
    [BASE + 96] = {"@Overworld/Lynna|South Shore|Palace/Maku Path/Heart Piece"},
    [BASE + 97] = {"@Overworld/Yoll Graveyard/Yoll Graveyard Heart Piece/"},
    [BASE + 98] = {"@Overworld/Fairies' Woods/Deku Forest Heart Piece/"},
    [BASE + 99] = {"@Overworld/Fairies' Woods/Restoration Wall Heart Piece/"},
    [BASE + 100] = {"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Symmetry City Heart Piece/"},
    [BASE + 101] = {"@Overworld/Rolling Ridge West/Rolling Ridge Entrance/Ridge West Heart Piece"},
    [BASE + 102] = {"@Overworld/Rolling Ridge East (Past)/Ridge Upper Heart Piece/"},
    -- MAKU PATH
    [BASE + 103] = {"@Overworld/Lynna|South Shore|Palace/Maku Path/Key Chest"},
    [BASE + 104] = {"@Overworld/Lynna|South Shore|Palace/Maku Path/Basement"},
    -- SPIRITS GRAVE
    [BASE + 105] = {{"@Dungeons/Spirit's Grave (D1)/One-Button Chest/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/One-Button Chest/"}},
    [BASE + 106] = {{"@Dungeons/Spirit's Grave (D1)/Two-Buttons Chest/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/Two-Buttons Chest/"}},
    [BASE + 107] = {{"@Dungeons/Spirit's Grave (D1)/Wide Room/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/Wide Room/"}},
    [BASE + 108] = {{"@Dungeons/Spirit's Grave (D1)/Crystal Room/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/Crystal Room/"}},
    [BASE + 109] = {{"@Dungeons/Spirit's Grave (D1)/Crossroad/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/Crossroad/"}},
    [BASE + 110] = {{"@Dungeons/Spirit's Grave (D1)/West Terrace/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/West Terrace/"}},
    [BASE + 111] = {{"@Dungeons/Spirit's Grave (D1)/Pot Chest/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/Pot Chest/"}},
    [BASE + 112] = {{"@Dungeons/Spirit's Grave (D1)/East Terrace/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/East Terrace/"}},
    [BASE + 113] = {{"@Dungeons/Spirit's Grave (D1)/Ghini Drop/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/Ghini Drop/"}},
    [BASE + 114] = {{"@Dungeons/Spirit's Grave (D1)/Basement/"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/Basement/"}},
    [BASE + 115] = {{"@Dungeons/Spirit's Grave (D1)/Pumpkin Head/Boss"},{"@Dungeons (Shuffled)/Spirit's Grave (D1)/Pumpkin Head/Boss"}},
    -- WING DUNGEON
    [BASE + 116] = {{"@Dungeons/Wing Dungeon (D2)/(1F): Color Room/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(1F): Color Room/"}},
    [BASE + 117] = {{"@Dungeons/Wing Dungeon (D2)/(1F): Bombed Terrace/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(1F): Bombed Terrace/"}},
    [BASE + 118] = {{"@Dungeons/Wing Dungeon (D2)/(1F): Moblin Platform/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(1F): Moblin Platform/"}},
    [BASE + 119] = {{"@Dungeons/Wing Dungeon (D2)/(1F): Rope Room/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(1F): Rope Room/"}},
    [BASE + 120] = {{"@Dungeons/Wing Dungeon (D2)/(1F): Ladder Chest/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(1F): Ladder Chest/"}},
    [BASE + 121] = {{"@Dungeons/Wing Dungeon (D2)/(1F): Moblin Drop/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(1F): Moblin Drop/"}},
    [BASE + 122] = {{"@Dungeons/Wing Dungeon (D2)/(1F): Statue Puzzle/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(1F): Statue Puzzle/"}},
    [BASE + 123] = {{"@Dungeons/Wing Dungeon (D2)/(B1F): Thwomp Shelf/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(B1F): Thwomp Shelf/"}},
    [BASE + 124] = {{"@Dungeons/Wing Dungeon (D2)/(B1F): Thwomp Tunnel/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(B1F): Thwomp Tunnel/"}},
    [BASE + 125] = {{"@Dungeons/Wing Dungeon (D2)/(B1F): Basement Chest/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(B1F): Basement Chest/"}},
    -- FIX ALL BELOW
    [BASE + 126] = {{"@Dungeons/Wing Dungeon (D2)/(B1F): Basement Drop/"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/(B1F): Basement Drop/"}},
    [BASE + 127] = {{"@Dungeons/Wing Dungeon (D2)/Head Thwomp/(1F): Boss"},{"@Dungeons (Shuffled)/Wing Dungeon (D2)/Head Thwomp/(1F): Boss"}},
    -- MOONLIT GROTTO
    [BASE + 128] = {{"@Dungeons/Moonlit Grotto (D3)/(1F): Bridge Chest/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(1F): Bridge Chest/"}},
    [BASE + 129] = {{"@Dungeons/Moonlit Grotto (D3)/(1F): Mimic Room/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(1F): Mimic Room/"}},
    [BASE + 130] = {{"@Dungeons/Moonlit Grotto (D3)/(1F): Bush Beetle Room/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(1F): Bush Beetle Room/"}},
    [BASE + 131] = {{"@Dungeons/Moonlit Grotto (D3)/(1F): Crossroad/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(1F): Crossroad/"}},
    [BASE + 132] = {{"@Dungeons/Moonlit Grotto (D3)/(1F): Pols Voice Chest/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(1F): Pols Voice Chest/"}},
    [BASE + 133] = {{"@Dungeons/Moonlit Grotto (D3)/(1F): Armos Drop/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(1F): Armos Drop/"}},
    [BASE + 134] = {{"@Dungeons/Moonlit Grotto (D3)/(1F): Statue Drop/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(1F): Statue Drop/"}},
    [BASE + 135] = {{"@Dungeons/Moonlit Grotto (D3)/(1F): Six Blocs Drop/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(1F): Six Blocs Drop/"}},
    [BASE + 136] = {{"@Dungeons/Moonlit Grotto (D3)/(B1F): Moldorm Drop/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(B1F): Moldorm Drop/"}},
    [BASE + 137] = {{"@Dungeons/Moonlit Grotto (D3)/(B1F): East/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(B1F): East/"}},
    [BASE + 138] = {{"@Dungeons/Moonlit Grotto (D3)/(B1F): Torch Chest/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(B1F): Torch Chest/"}},
    [BASE + 139] = {{"@Dungeons/Moonlit Grotto (D3)/(B1F): Conveyor Belt Room/"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/(B1F): Conveyor Belt Room/"}},
    [BASE + 140] = {{"@Dungeons/Moonlit Grotto (D3)/Shadow Hag/(B1F): Boss"},{"@Dungeons (Shuffled)/Moonlit Grotto (D3)/Shadow Hag/(B1F): Boss"}},
    -- SKULL DUNGEON
    [BASE + 141] = {{"@Dungeons/Skull Dungeon (D4)/(1F): Second Crystal Switch/"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/(1F): Second Crystal Switch/"}},
    [BASE + 142] = {{"@Dungeons/Skull Dungeon (D4)/(1F): Lava Pot Chest/"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/(1F): Lava Pot Chest/"}},
    [BASE + 143] = {{"@Dungeons/Skull Dungeon (D4)/(1F): Small Floor Puzzle/"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/(1F): Small Floor Puzzle/"}},
    [BASE + 144] = {{"@Dungeons/Skull Dungeon (D4)/(1F): First Chest/"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/(1F): First Chest/"}},
    [BASE + 145] = {{"@Dungeons/Skull Dungeon (D4)/(1F): Minecart Chest/"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/(1F): Minecart Chest/"}},
    [BASE + 146] = {{"@Dungeons/Skull Dungeon (D4)/(1F): Cube Chest/"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/(1F): Cube Chest/"}},
    [BASE + 147] = {{"@Dungeons/Skull Dungeon (D4)/(1F): First Crystal Switch/"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/(1F): First Crystal Switch/"}},
    [BASE + 148] = {{"@Dungeons/Skull Dungeon (D4)/(1F): Color Tile Drop/"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/(1F): Color Tile Drop/"}},
    [BASE + 149] = {{"@Dungeons/Skull Dungeon (D4)/(B1F): Large Floor Puzzle/"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/(B1F): Large Floor Puzzle/"}},
    [BASE + 150] = {{"@Dungeons/Skull Dungeon (D4)/Eyesoar/(B1F): Boss"},{"@Dungeons (Shuffled)/Skull Dungeon (D4)/Eyesoar/(B1F): Boss"}},
    -- CROWN DNGEON
    [BASE + 151] = {{"@Dungeons/Crown Dungeon (D5)/(1F): Diamond Chest/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(1F): Diamond Chest/"}},
    [BASE + 152] = {{"@Dungeons/Crown Dungeon (D5)/(1F): Eyes Chest/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(1F): Eyes Chest/"}},
    [BASE + 153] = {{"@Dungeons/Crown Dungeon (D5)/(1F): Three-Statue Puzzle/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(1F): Three-Statue Puzzle/"}},
    [BASE + 154] = {{"@Dungeons/Crown Dungeon (D5)/(1F): Blue Peg Chest/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(1F): Blue Peg Chest/"}},
    [BASE + 155] = {{"@Dungeons/Crown Dungeon (D5)/(B1F): Like-Like Chest/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(B1F): Like-Like Chest/"}},
    [BASE + 156] = {{"@Dungeons/Crown Dungeon (D5)/(B1F): Red Peg Chest/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(B1F): Red Peg Chest/"}},
    [BASE + 157] = {{"@Dungeons/Crown Dungeon (D5)/(B1F): Owl Puzzle/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(B1F): Owl Puzzle/"}},
    [BASE + 158] = {{"@Dungeons/Crown Dungeon (D5)/(B1F): Two-Statue Puzzle/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(B1F): Two-Statue Puzzle/"}},
    [BASE + 159] = {{"@Dungeons/Crown Dungeon (D5)/(B1F): Dark Room/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(B1F): Dark Room/"}},
    [BASE + 160] = {{"@Dungeons/Crown Dungeon (D5)/(B1F): Six-Statue Puzzle/"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/(B1F): Six-Statue Puzzle/"}},
    [BASE + 161] = {{"@Dungeons/Crown Dungeon (D5)/Smog/(1F): Boss"},{"@Dungeons (Shuffled)/Crown Dungeon (D5)/Smog/(1F): Boss"}},
    -- MERMAIDS CAVE PRESENT
    [BASE + 162] = {{"@Dungeons/Mermaid's Cave [Present] (D6)/Vire Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Present] (D6)/Vire Chest/"}},
    [BASE + 163] = {{"@Dungeons/Mermaid's Cave [Present] (D6)/Spinner Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Present] (D6)/Spinner Chest/"}},
    [BASE + 164] = {{"@Dungeons/Mermaid's Cave [Present] (D6)/Rope Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Present] (D6)/Rope Chest/"}},
    [BASE + 165] = {{"@Dungeons/Mermaid's Cave [Present] (D6)/RNG Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Present] (D6)/RNG Chest/"}},
    [BASE + 166] = {{"@Dungeons/Mermaid's Cave [Present] (D6)/Diamond Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Present] (D6)/Diamond Chest/"}},
    [BASE + 167] = {{"@Dungeons/Mermaid's Cave [Present] (D6)/Beamos Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Present] (D6)/Beamos Chest/"}},
    [BASE + 168] = {{"@Dungeons/Mermaid's Cave [Present] (D6)/Cube Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Present] (D6)/Cube Chest/"}},
    [BASE + 169] = {{"@Dungeons/Mermaid's Cave [Present] (D6)/Channel Chest"},{"@Dungeons (Shuffled)/Mermaid's Cave [Present] (D6)/Channel Chest"}},
    -- MERMAIDS CAVE PAST
    [BASE + 170] = {{"@Dungeons/Mermaid's Cave [Past] (D6)/(1F): Stalfos Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Past] (D6)/(1F): Stalfos Chest/"}},
    [BASE + 171] = {{"@Dungeons/Mermaid's Cave [Past] (D6)/(1F): Color Room/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Past] (D6)/(1F): Color Room/"}},
    [BASE + 172] = {{"@Dungeons/Mermaid's Cave [Past] (D6)/(1F): Pool Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Past] (D6)/(1F): Pool Chest/"}},
    [BASE + 173] = {{"@Dungeons/Mermaid's Cave [Past] (D6)/(1F): Wizzrobe/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Past] (D6)/(1F): Wizzrobe/"}},
    [BASE + 174] = {{"@Dungeons/Mermaid's Cave [Past] (D6)/(B1F): Diamond Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Past] (D6)/(B1F): Diamond Chest/"}},
    [BASE + 175] = {{"@Dungeons/Mermaid's Cave [Past] (D6)/(B1F): Spear Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Past] (D6)/(B1F): Spear Chest/"}},
    [BASE + 176] = {{"@Dungeons/Mermaid's Cave [Past] (D6)/(B1F): Rope Chest/"},{"@Dungeons (Shuffled)/Mermaid's Cave [Past] (D6)/(B1F): Rope Chest/"}},
    [BASE + 177] = {{"@Dungeons/Mermaid's Cave [Past] (D6)/Octogon/(1F): Boss"},{"@Dungeons (Shuffled)/Mermaid's Cave [Past] (D6)/Octogon/(1F): Boss"}},
    -- JABU-JABUS BELLY
    [BASE + 178] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(1F): Island Chest/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(1F): Island Chest/"}},
    [BASE + 179] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(1F): Stairway Chest/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(1F): Stairway Chest/"}},
    [BASE + 180] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(1F): Miniboss Chest/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(1F): Miniboss Chest/"}},
    [BASE + 181] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(1F): Cane|Diamond Puzzle/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(1F): Cane|Diamond Puzzle/"}},
    [BASE + 182] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(1F): Boxed Chest/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(1F): Boxed Chest/"}},
    [BASE + 183] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(1F): Flower Room/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(1F): Flower Room/"}},
    [BASE + 184] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(1F): Diamond Puzzle/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(1F): Diamond Puzzle/"}},
    [BASE + 185] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(1F): Crab Chest/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(1F): Crab Chest/"}},
    [BASE + 186] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(2F): Left Wing/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(2F): Left Wing/"}},
    [BASE + 187] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(2F): Right Wing/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(2F): Right Wing/"}},
    [BASE + 188] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(2F): Spike Chest/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(2F): Spike Chest/"}},
    [BASE + 189] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(3F): Hallway Chest/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(3F): Hallway Chest/"}},
    [BASE + 190] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(3F): Post-Hallway Chest/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(3F): Post-Hallway Chest/"}},
    [BASE + 191] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/(3F): Terrace/"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/(3F): Terrace/"}},
    [BASE + 192] = {{"@Dungeons/Jabu-Jabu's Belly (D7)/Plasmarine/(2F): Boss"},{"@Dungeons (Shuffled)/Jabu-Jabu's Belly (D7)/Plasmarine/(2F): Boss"}},
    -- ANCIENT TOMB
    [BASE + 193] = {{"@Dungeons/Ancient Tomb (D8)/(1F): Single Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(1F): Single Chest/"}},
    [BASE + 194] = {{"@Dungeons/Ancient Tomb (D8)/(B2F): Maze Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B2F): Maze Chest/"}},
    [BASE + 195] = {{"@Dungeons/Ancient Tomb (D8)/(B2F): NW Slate Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B2F): NW Slate Chest/"}},
    [BASE + 196] = {{"@Dungeons/Ancient Tomb (D8)/(B2F): NE Slate Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B2F): NE Slate Chest/"}},
    [BASE + 197] = {{"@Dungeons/Ancient Tomb (D8)/(B2F): Ghini Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B2F): Ghini Chest/"}},
    [BASE + 198] = {{"@Dungeons/Ancient Tomb (D8)/(B2F): SE Slate Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B2F): SE Slate Chest/"}},
    [BASE + 199] = {{"@Dungeons/Ancient Tomb (D8)/(B2F): SW Slate Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B2F): SW Slate Chest/"}},
    [BASE + 200] = {{"@Dungeons/Ancient Tomb (D8)/(B1F): NW Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B1F): NW Chest/"}},
    [BASE + 201] = {{"@Dungeons/Ancient Tomb (D8)/(B1F): Sarcophagus Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B1F): Sarcophagus Chest/"}},
    [BASE + 202] = {{"@Dungeons/Ancient Tomb (D8)/(B1F): Blade Trap/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B1F): Blade Trap/"}},
    [BASE + 203] = {{"@Dungeons/Ancient Tomb (D8)/(B1F): Blue Peg Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B1F): Blue Peg Chest/"}},
    [BASE + 204] = {{"@Dungeons/Ancient Tomb (D8)/(B1F): Floor Puzzle/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B1F): Floor Puzzle/"}},
    [BASE + 205] = {{"@Dungeons/Ancient Tomb (D8)/(B2F): Tile Room/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B2F): Tile Room/"}},
    [BASE + 206] = {{"@Dungeons/Ancient Tomb (D8)/(B1F): Stalfos/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B1F): Stalfos/"}},
    [BASE + 207] = {{"@Dungeons/Ancient Tomb (D8)/(B3F): Single Chest/"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/(B3F): Single Chest/"}},
    [BASE + 208] = {{"@Dungeons/Ancient Tomb (D8)/Ramrock/(B3F): Boss"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/Ramrock/(B3F): Boss"}},
    -- ESSENCES
    [BASE + 209] = {{"@Dungeons/Ancient Tomb (D8)/Eternal Spirit/Essence"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/Eternal Spirit/Essence"}},
    [BASE + 210] = {{"@Dungeons/Ancient Tomb (D8)/Ancient Wood/Essence"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/Ancient Wood/Essence"}},
    [BASE + 211] = {{"@Dungeons/Ancient Tomb (D8)/Echoing Howl/Essence"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/Echoing Howl/Essence"}},
    [BASE + 212] = {{"@Dungeons/Ancient Tomb (D8)/Burning Flame/Essence"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/Burning Flame/Essence"}},
    [BASE + 213] = {{"@Dungeons/Ancient Tomb (D8)/Sacred Soil/Essence"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/Sacred Soil/Essence"}},
    [BASE + 214] = {{"@Dungeons/Ancient Tomb (D8)/Lonely Peak/Essence"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/Lonely Peak/Essence"}},
    [BASE + 215] = {{"@Dungeons/Ancient Tomb (D8)/Rolling Sea/Essence"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/Rolling Sea/Essence"}},
    [BASE + 216] = {{"@Dungeons/Ancient Tomb (D8)/Falling Star/Essence"},{"@Dungeons (Shuffled)/Ancient Tomb (D8)/Falling Star/Essence"}},
    -- SEED TREES
    [BASE + 217] = {"@Overworld/Lynna|South Shore|Palace/Lynna City Seed Tree/"},
    [BASE + 218] = {"@Overworld/Lynna|South Shore|Palace/Ambi's Palace Seed Tree/"},
    [BASE + 219] = {"@Overworld/Fairies' Woods/Deku Forest Seed Tree/"},
    [BASE + 220] = {"@Overworld/Crescent Island/Crescent Island Seed Tree/"},
    [BASE + 221] = {"@Overworld/Nuun Highlands|Symmetry City|Talus Peaks/Symmetry City Seed Tree/"},
    [BASE + 222] = {"@Overworld/Rolling Ridge West/Rolling Ridge West Seed Tree/"},
    [BASE + 223] = {"@Overworld/Rolling Ridge East (Past)/Rolling Ridge East Seed Tree/"},
    [BASE + 224] = {"@Overworld/Zora Village|Zora Seas/Zora Village Seed Tree/"}
}
