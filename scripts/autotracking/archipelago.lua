ScriptHost:LoadScript("scripts/autotracking/item_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/location_mapping.lua")

CUR_INDEX = -1
SLOT_DATA = nil
LOCAL_ITEMS = {}
GLOBAL_ITEMS = {}
HOSTED = {}

function onSetReply(key, value, _)
    local slot_player = "Slot:" .. Archipelago.PlayerNumber
    if key == slot_player .. ":Current Map" then
        if Tracker:FindObjectForCode("auto_tab").CurrentStage == 1 then
            if TABS_MAPPING[value] then
                CURRENT_ROOM = TABS_MAPPING[value]
            else
                CURRENT_ROOM = CURRENT_ROOM_ADDRESS
            end
            Tracker:UiHint("ActivateTab", CURRENT_ROOM)
        end
    end
    for long_name, short_name in pairs(data_storage_table) do
        if key == slot_player .. ":" .. long_name then
            Tracker:FindObjectForCode(short_name, ITEMS).Active = value
        end
    end
end

function retrieved(key, value)
    for long_name, short_name in pairs(data_storage_table) do
        if key == "Slot:" .. Archipelago.PlayerNumber .. ":" .. long_name then
            Tracker:FindObjectForCode(short_name, ITEMS).Active = value
        end
    end
end

function onClear(slot_data)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onClear, slot_data:\n%s", dump_table(slot_data)))
    end
    SLOT_DATA = slot_data
    CUR_INDEX = -1
    -- reset locations
    for _, v in pairs(LOCATION_MAPPING) do
        if v[1] then
            if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: clearing location %s", v[1]))
            end
            local obj = Tracker:FindObjectForCode(v[1])
            if obj then
                if v[1]:sub(1, 1) == "@" then
                    obj.AvailableChestCount = obj.ChestCount
                else
                    obj.Active = false
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: could not find object for code %s", v[1]))
            end
        end
    end
    -- reset items
    for _, v in pairs(ITEM_MAPPING) do
        if v[1] and v[2] then
            if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: clearing item %s of type %s", v[1], v[2]))
            end
            local obj = Tracker:FindObjectForCode(v[1])
            if obj then
                if v[2] == "toggle" then
                    obj.Active = false
                elseif v[2] == "progressive" then
                    obj.CurrentStage = 0
                    obj.Active = false
                elseif v[2] == "consumable" then
                    obj.AcquiredCount = 0
                elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                    print(string.format("onClear: unknown item type %s for code %s", v[2], v[1]))
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: could not find object for code %s", v[1]))
            end
        end
    end
    -- reset hosted items
    for k, _ in pairs(HOSTED) do
        local obj = Tracker:FindObjectForCode(k)
        if obj then
            obj.Active = false
        end
    end
    -- companions
    if slot_data["animal_companion"] then
        if slot_data["animal_companion"] == "Ricky" then
            Tracker:FindObjectForCode("companions").CurrentStage = 1
        elseif slot_data["animal_companion"] == "Dimitri" then
            Tracker:FindObjectForCode("companions").CurrentStage = 2
        elseif slot_data["animal_companion"] == "Moosh" then
            Tracker:FindObjectForCode("companions").CurrentStage = 3
        end
    end
    -- logic 
    if slot_data["logic_difficulty"] then
        if slot_data["logic_difficulty"] == 0 then
            Tracker:FindObjectForCode("logic").CurrentStage = 0
        elseif slot_data["logic_difficulty"] == 1 then
            Tracker:FindObjectForCode("logic").CurrentStage = 1
        elseif slot_data["logic_difficulty"] == 2 then
            Tracker:FindObjectForCode("logic").CurrentStage = 2
        end
    end
    --dungeon er
    if slot_data["shuffle_dungeons"] then
        if slot_data["shuffle_dungeons"] == 0 then
            Tracker:FindObjectForCode("dungeon_er_off").CurrentStage = 0
        elseif slot_data["shuffle_dungeons"] == 1 then
            Tracker:FindObjectForCode("dungeon_er_on").CurrentStage = 1
        end
    end
    --essences
    if slot_data["required_essences"] then
        Tracker:FindObjectForCode("allessence").AcquiredCount = slot_data["required_essences"]
    end
    --advance_shop
    if slot_data["advance_shop"] then
        local obj = Tracker:FindObjectForCode("advanceshop")
        if obj then
            obj.Active = slot_data["advance_shop"] == 1
        end
    end
    --slates
    if slot_data["required_slates"] then
        Tracker:FindObjectForCode("requiredslates").AcquiredCount = slot_data["required_slates"]
    end
    --starting seed
    if slot_data["default_seed"] then
        local obj = Tracker:FindObjectForCode("emberseeds")
        if obj then
            obj.Active = slot_data["default_seed"] == "Ember Seeds"
        end
    end
    if slot_data["default_seed"] then
        local obj = Tracker:FindObjectForCode("scentseeds")
        if obj then
            obj.Active = slot_data["default_seed"] == "Scent Seeds"
        end
    end
    if slot_data["default_seed"] then
        local obj = Tracker:FindObjectForCode("pegasusseeds")
        if obj then
            obj.Active = slot_data["default_seed"] == "Pegasus Seeds"
        end
    end
    if slot_data["default_seed"] then
        local obj = Tracker:FindObjectForCode("galeseeds")
        if obj then
            obj.Active = slot_data["default_seed"] == "Gale Seeds"
        end
    end
    if slot_data["default_seed"] then
        local obj = Tracker:FindObjectForCode("mysteryseeds")
        if obj then
            obj.Active = slot_data["default_seed"] == "Mystery Seeds"
        end
    end
    
    if SLOT_DATA == nil then
        return
    end
    
    LOCAL_ITEMS = {}
    GLOBAL_ITEMS = {}

end

-- called when an item gets collected
function onItem(index, item_id, item_name, player_number)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onItem: %s, %s, %s, %s, %s", index, item_id, item_name, player_number, CUR_INDEX))
    end
    if not AUTOTRACKER_ENABLE_ITEM_TRACKING then
        return
    end
    if index <= CUR_INDEX then
        return
    end
    local is_local = player_number == Archipelago.PlayerNumber
    CUR_INDEX = index;
    local v = ITEM_MAPPING[item_id]
    if not v then
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
            print(string.format("onItem: could not find item mapping for id %s", item_id))
        end
        return
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("onItem: code: %s, type %s", v[1], v[2]))
    end
    if not v[1] then
        return
    end
    local obj = Tracker:FindObjectForCode(v[1])
    if obj then
        if v[2] == "toggle" then
            obj.Active = true
        elseif v[2] == "progressive" then
            if obj.Active then
                obj.CurrentStage = obj.CurrentStage + 1
            else
                obj.Active = true
            end
        elseif v[2] == "consumable" then
            obj.AcquiredCount = obj.AcquiredCount + obj.Increment
        elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
            print(string.format("onItem: unknown item type %s for code %s", v[2], v[1]))
        end
    elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("onItem: could not find object for code %s", v[1]))
    end
    -- track local items via snes interface
    if is_local then
        if LOCAL_ITEMS[v[1]] then
            LOCAL_ITEMS[v[1]] = LOCAL_ITEMS[v[1]] + 1
        else
            LOCAL_ITEMS[v[1]] = 1
        end
    else
        if GLOBAL_ITEMS[v[1]] then
            GLOBAL_ITEMS[v[1]] = GLOBAL_ITEMS[v[1]] + 1
        else
            GLOBAL_ITEMS[v[1]] = 1
        end
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("local items: %s", dump_table(LOCAL_ITEMS)))
        print(string.format("global items: %s", dump_table(GLOBAL_ITEMS)))
    end
    if PopVersion < "0.20.1" or AutoTracker:GetConnectionState("SNES") == 3 then
        -- add snes interface functions here for local item tracking
    end
end

-- called when a location gets cleared
function onLocation(location_id, location_name)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onLocation: %s, %s", location_id, location_name))
    end
    local v = LOCATION_MAPPING[location_id]
    if not v and AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("onLocation: could not find location mapping for id %s", location_id))
    end
    if not v[1] then
        return
    end
    local obj = Tracker:FindObjectForCode(v[1])
    if obj then
        if v[1]:sub(1, 1) == "@" then
            obj.AvailableChestCount = obj.AvailableChestCount - 1
        else
            obj.Active = true
        end
    elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("onLocation: could not find object for code %s", v[1]))
    end
    if location_name == "Maku Path: Key Chest" then
        obj = Tracker:FindObjectForCode("@Overworld/Lynna|South Shore|Palace/Maku Path (Rear Entrance)/Key Chest")
        obj.AvailableChestCount = obj.AvailableChestCount - 1
    end
    if location_name == "Maku Path: Basement" then
        obj = Tracker:FindObjectForCode("@Overworld/Lynna|South Shore|Palace/Maku Path (Rear Entrance)/Basement")
        obj.AvailableChestCount = obj.AvailableChestCount - 1
    end
    if location_name == "Maku Path Heart Piece" then
        obj = Tracker:FindObjectForCode("@Overworld/Lynna|South Shore|Palace/Maku Path (Rear Entrance)/Heart Piece")
        obj.AvailableChestCount = obj.AvailableChestCount - 1
    end
end

-- called when a locations is scouted
function onScout(location_id, location_name, item_id, item_name, item_player)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onScout: %s, %s, %s, %s, %s", location_id, location_name, item_id, item_name,
            item_player))
    end
end

-- called when a bounce message is received 
function onBounce(json)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onBounce: %s", dump_table(json)))
    end
    -- your code goes here
end

-- add AP callbacks
-- un-/comment as needed
Archipelago:AddClearHandler("clear handler", onClear)
Archipelago:AddItemHandler("item handler", onItem)
Archipelago:AddLocationHandler("location handler", onLocation)
Archipelago:AddSetReplyHandler("set reply handler", onSetReply)
-- Archipelago:AddScoutHandler("scout handler", onScout)
-- Archipelago:AddBouncedHandler("bounce handler", onBounce)
Archipelago:AddRetrievedHandler("retrieved", retrieved)
