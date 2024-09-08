CURRENT_ITEM = nil

BASE = 27022002000

ITEM_MAPPING = {
    [BASE + 0] = {"shield", "progressive"},
    [BASE + 1] = {"bomb", "toggle"},
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
    [BASE + 32] = {"potion", "toggle"},
    -- SMALL KEYS
    [BASE + 33] = {"pathkey", "toggle"},
    [BASE + 34] = {"d1sk", "consumable"},
    [BASE + 35] = {"d2sk", "consumable"},
    [BASE + 36] = {"d3sk", "consumable"},
    [BASE + 37] = {"d4sk", "consumable"},
    [BASE + 38] = {"d5sk", "consumable"},
    [BASE + 39] = {"d6_1sk", "consumable"},
    [BASE + 40] = {"d6_2sk", "consumable"},
    [BASE + 41] = {"d7sk", "consumable"},
    [BASE + 42] = {"d8sk", "consumable"},
    -- MASTER KEYS?
    [BASE + 43] = {"d1mk", "toggle"},
    [BASE + 44] = {"d2mk", "toggle"},
    [BASE + 45] = {"d3mk", "toggle"},
    [BASE + 46] = {"d4mk", "toggle"},
    [BASE + 47] = {"d5mk", "toggle"},
    [BASE + 48] = {"d6_1mk", "toggle"},
    [BASE + 49] = {"d6_2mk", "toggle"},
    [BASE + 50] = {"d7mk", "toggle"},
    [BASE + 51] = {"d8mk", "toggle"},
    -- BOSS KEYS
    [BASE + 52] = {"d1bk", "toggle"},
    [BASE + 53] = {"d2bk", "toggle"},
    [BASE + 54] = {"d3bk", "toggle"},
    [BASE + 55] = {"d4bk", "toggle"},
    [BASE + 56] = {"d5bk", "toggle"},
    [BASE + 57] = {"d6bk", "toggle"},
    [BASE + 58] = {"d7bk", "toggle"},
    [BASE + 59] = {"d8bk", "toggle"},
    -- TRADE still need to do
    [BASE + 79] = {"poeclock", "toggle"},
    [BASE + 80] = {"stationary", "toggle"},
    [BASE + 81] = {"stinkbag", "toggle"},
    [BASE + 82] = {"tastymeat", "toggle"},
    [BASE + 83] = {"doggiemask", "toggle"},
    [BASE + 84] = {"dumbbell", "toggle"},
    [BASE + 85] = {"mustache", "toggle"},
    [BASE + 86] = {"funnyjoke", "toggle"},
    [BASE + 87] = {"touchingbook", "toggle"},
    [BASE + 88] = {"magicoar", "toggle"},
    [BASE + 89] = {"seaukulele", "toggle"},
    [BASE + 90] = {"brokensword", "toggle"},
    -- RANDOM ITEMS
    [BASE + 91] = {"bombflower", "toggle"},
    [BASE + 92] = {"book", "toggle"},
    [BASE + 93] = {"emblem", "toggle"},
    [BASE + 94] = {"cheval", "toggle"},
    [BASE + 95] = {"crownkey", "toggle"},
    [BASE + 96] = {"powder", "toggle"},
    [BASE + 97] = {"vase", "toggle"},
    [BASE + 98] = {"goronade", "toggle"},
    [BASE + 99] = {"gravekey", "toggle"},
    [BASE + 100] = {"chart", "toggle"},
    [BASE + 101] = {"lavajuice", "toggle"},
    [BASE + 102] = {"introduction", "toggle"},
    [BASE + 103] = {"librarykey", "toggle"},
    [BASE + 104] = {"d6keypast", "toggle"},
    [BASE + 105] = {"d6keypresent", "toggle"},
    [BASE + 106] = {"gloves", "toggle"},
    [BASE + 107] = {"brisket", "toggle"},
    [BASE + 108] = {"seedling", "toggle"},
    [BASE + 109] = {"d8slate", "consumable"},
    [BASE + 110] = {"eyeball", "toggle"},
    [BASE + 111] = {"tuniupgrade", "progressive"},
    [BASE + 112] = {"tuniupgrade", "progressive"},
    [BASE + 113] = {"scale", "toggle"},
    -- RINGS
    [BASE + 125] = {"ring_expert", "toggle"}, -- FISXED
    [BASE + 132] = {"ring_toss", "toggle"},
    [BASE + 163] = {"ring_energy", "toggle"},
    [BASE + 176] = {"ring_fist", "toggle"},
    -- ESSENCE
    [BASE + 178] = {"d1", "toggle"},
    [BASE + 179] = {"d2", "toggle"},
    [BASE + 180] = {"d3", "toggle"},
    [BASE + 181] = {"d4", "toggle"},
    [BASE + 182] = {"d5", "toggle"},
    [BASE + 183] = {"d6", "toggle"},
    [BASE + 184] = {"d7", "toggle"},
    [BASE + 185] = {"d8", "toggle"},
}