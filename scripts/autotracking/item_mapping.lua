CURRENT_ITEM = nil

BASE = 27022002000

ITEM_MAPPING = {
    [BASE + 0] = {"shield", "progressive"},
    [BASE + 1] = {"bomb", "progressive"},
    [BASE + 2] = {"swordupgrade", "progressive"},
    [BASE + 3] = {"boomerang", "progressive"},
    [BASE + 4] = {"harpupgrade", "progressive"},
    [BASE + 5] = {"hookupgrade", "progressive"},
    [BASE + 6] = {"cane", "toggle"},
    [BASE + 7] = {"bigsword", "toggle"},
    [BASE + 8] = {"flute", "toggle"},
    --[BASE + 8] = {"nuun_ricky", "progressive"},
    [BASE + 9] = {"flute", "toggle"},
    --[BASE + 9] = {"nuun_dimitri", "progressive"},
    [BASE + 10] = {"flute", "toggle"},
    --[BASE + 10] = {"nuun_moosh", "progressive"},
    [BASE + 11] = {"shooter", "toggle"},
    [BASE + 12] = {"shovel", "toggle"},
    [BASE + 13] = {"liftupgrade", "progressive"},
    [BASE + 14] = {"feather", "progressive"},
    [BASE + 15] = {"satchel", "toggle"},
    [BASE + 16] = {"emberseeds", "toggle"},
    [BASE + 17] = {"scentseeds", "toggle"},
    [BASE + 18] = {"pegasusseeds", "toggle"},
    [BASE + 19] = {"galeseeds", "toggle"},
    [BASE + 20] = {"mysteryseeds", "toggle"},
    [BASE + 31] = {"swimupgrade", "progressive"},
    [BASE + 33] = {"potion", "toggle"},
    -- SMALL KEYS
    [BASE + 34] = {"pathkey", "toggle"},
    [BASE + 35] = {"d1sk", "consumable"},
    [BASE + 36] = {"d2sk", "consumable"},
    [BASE + 37] = {"d3sk", "consumable"},
    [BASE + 38] = {"d4sk", "consumable"},
    [BASE + 39] = {"d5sk", "consumable"},
    [BASE + 40] = {"d6_1sk", "consumable"},
    [BASE + 41] = {"d6_2sk", "consumable"},
    [BASE + 42] = {"d7sk", "consumable"},
    [BASE + 43] = {"d8sk", "consumable"},
    -- MASTER KEYS
    [BASE + 44] = {"pathkey", "toggle"},
    [BASE + 45] = {"d1mk", "toggle"},
    [BASE + 46] = {"d2mk", "toggle"},
    [BASE + 47] = {"d3mk", "toggle"},
    [BASE + 48] = {"d4mk", "toggle"},
    [BASE + 49] = {"d5mk", "toggle"},
    [BASE + 50] = {"d6_1mk", "toggle"},
    [BASE + 51] = {"d6_2mk", "toggle"},
    [BASE + 52] = {"d7mk", "toggle"},
    [BASE + 53] = {"d8mk", "toggle"},
    -- BOSS KEYS
    [BASE + 54] = {"d1bk", "toggle"},
    [BASE + 55] = {"d2bk", "toggle"},
    [BASE + 56] = {"d3bk", "toggle"},
    [BASE + 57] = {"d4bk", "toggle"},
    [BASE + 58] = {"d5bk", "toggle"},
    [BASE + 59] = {"d6bk", "toggle"},
    [BASE + 60] = {"d7bk", "toggle"},
    [BASE + 61] = {"d8bk", "toggle"},
    -- TRADE
    [BASE + 81] = {"poeclock", "toggle"},
    [BASE + 82] = {"stationary", "toggle"},
    [BASE + 83] = {"stinkbag", "toggle"},
    [BASE + 84] = {"tastymeat", "toggle"},
    [BASE + 85] = {"doggiemask", "toggle"},
    [BASE + 86] = {"dumbbell", "toggle"},
    [BASE + 87] = {"mustache", "toggle"},
    [BASE + 88] = {"funnyjoke", "toggle"},
    [BASE + 89] = {"touchingbook", "toggle"},
    [BASE + 90] = {"magicoar", "toggle"},
    [BASE + 91] = {"seaukulele", "toggle"},
    [BASE + 92] = {"brokensword", "toggle"},
    -- RANDOM ITEMS
    [BASE + 93] = {"bombflower", "toggle"},
    [BASE + 94] = {"book", "toggle"},
    [BASE + 95] = {"emblem", "toggle"},
    [BASE + 96] = {"cheval", "toggle"},
    [BASE + 97] = {"crownkey", "toggle"},
    [BASE + 98] = {"powder", "toggle"},
    [BASE + 99] = {"vase", "toggle"},
    [BASE + 100] = {"goronade", "toggle"},
    [BASE + 101] = {"gravekey", "toggle"},
    [BASE + 102] = {"chart", "toggle"},
    [BASE + 103] = {"lavajuice", "toggle"},
    [BASE + 104] = {"introduction", "toggle"},
    [BASE + 105] = {"librarykey", "toggle"},
    [BASE + 106] = {"d6keypast", "toggle"},
    [BASE + 107] = {"d6keypresent", "toggle"},
    [BASE + 108] = {"gloves", "toggle"},
    [BASE + 109] = {"brisket", "toggle"},
    [BASE + 110] = {"seedling", "toggle"},
    [BASE + 111] = {"d8slate", "consumable"},
    [BASE + 112] = {"eyeball", "toggle"},
    [BASE + 113] = {"tuninut", "toggle"},
    [BASE + 114] = {"repairednut", "toggle"},
    [BASE + 115] = {"scale", "toggle"},
    -- RINGS
    [BASE + 127] = {"ring_expert", "toggle"},
    [BASE + 134] = {"ring_toss", "toggle"},
    [BASE + 165] = {"ring_energy", "toggle"},
    [BASE + 178] = {"ring_fist", "toggle"},
    -- ESSENCE
    [BASE + 180] = {"d1", "toggle"},
    [BASE + 181] = {"d2", "toggle"},
    [BASE + 182] = {"d3", "toggle"},
    [BASE + 183] = {"d4", "toggle"},
    [BASE + 184] = {"d5", "toggle"},
    [BASE + 185] = {"d6", "toggle"},
    [BASE + 186] = {"d7", "toggle"},
    [BASE + 187] = {"d8", "toggle"},
}