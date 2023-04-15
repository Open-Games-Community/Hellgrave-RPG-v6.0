-- Craft by Snavy --

local config = {
    -- set to 0 if you don't want any delay.
    CRAFTING_DELAY         = 5, -- seconds
    CRAFTING_DELAY_STORAGE = 187013,

    -- You probably don't wanna change this.
    TILE_MAX_ITEMS = 1,

    leverActionId = {
        -- The directions are relative to the
        -- center position of the crafting area.
        -- For example, the following setup should have actionid NORTH
        --   L
        -- . . .
        -- . . .
        -- . . .
        NORTH = 19207,
        WEST  = 19208,
        SOUTH = 19209,
        EAST  = 19210
    },

    -- You don't need to modify the following,
    -- .. area corners will be calculated
    -- .. based on the selected lever-action-id.
    craftingArea = {
        TOP_LEFT     = nil,
        BOTTOM_RIGHT = nil
    }
}
---------------------[ Don't touch ]--------------------
local positionModifier = {}
positionModifier[config.leverActionId.NORTH] = { 0,  2}
positionModifier[config.leverActionId.WEST]  = { 2,  0}
positionModifier[config.leverActionId.SOUTH] = { 0, -2}
positionModifier[config.leverActionId.EAST]  = {-2,  0}
local function calculatePositions(leverActionId, leverPosition)
    -- Define CENTER_POS and copy leverPosition
    local CENTER_POS = Position(leverPosition.x, leverPosition.y, leverPosition.z)
    -- Modify x & y based on given actionid
    CENTER_POS.x = CENTER_POS.x + positionModifier[leverActionId][1]
    CENTER_POS.y = CENTER_POS.y + positionModifier[leverActionId][2]
    -- calculate corners using CENTER_POS
    config.craftingArea.TOP_LEFT     = Position(CENTER_POS.x-1, CENTER_POS.y-1, CENTER_POS.z)
    config.craftingArea.BOTTOM_RIGHT = Position(CENTER_POS.x+1, CENTER_POS.y+1, CENTER_POS.z)
end
--------------------------------------------------------
local function removeTableItems()
    local z = config.craftingArea.TOP_LEFT.z
    for x = config.craftingArea.TOP_LEFT.x, config.craftingArea.BOTTOM_RIGHT.x do
        for y = config.craftingArea.TOP_LEFT.y, config.craftingArea.BOTTOM_RIGHT.y do
            local tile = Tile(x, y, z)
            local tileItems = tile:getItems()
            if tileItems then
                for _, item in pairs(tileItems) do
                    item:remove()
                    Position(x, y, z):sendMagicEffect(CONST_ME_POFF)
                end
            end
        end
    end
end

local function tableIsEqual(tableA, tableB)
    if #tableA ~= #tableB then
        return false
    end

    for index_i, row in pairs(tableA) do
        for index_j, col in pairs(row) do
            ------------------------------------------------------
            local f = (function(tableA, tableB, i, j)
                local itemA = tableA[i][j]
                local itemB = tableB[i][j]

                -- not same type means not same recepie, skip.
                if type(itemA) ~= type(itemB) then
                    return false
                end

                -- probably both == 0, skip.
                if type(itemA) ~= 'table' then
                    return true
                end

                --[ compare itemid & itemCount ]--
                -- not same itemID
                if (itemA[1] ~= itemB[1])
                or (itemA[2] ~= itemB[2]) then
                    return false
                end
                return true
            end)(tableA, tableB, index_i, index_j)
            ------------------------------------------------------
            if not f then
                return false
            end
        end
    end
    return true
end

local function findCraftingRecepie(craftingTable)
    for _, recepie in pairs(CRAFTING) do
        if tableIsEqual(craftingTable, recepie.patternList) then
            return recepie
        end 
    end
    return false
end

local function scanCraftingArea(player)
    if not config.craftingArea.TOP_LEFT or not config.craftingArea.BOTTOM_RIGHT then
        print('[Error - Crafting::scanCraftingArea] Corners not calculated.')
        return false
    end

    local tempTable = {}
    local z = config.craftingArea.TOP_LEFT.z
    for y = config.craftingArea.TOP_LEFT.y, config.craftingArea.BOTTOM_RIGHT.y do
        local innerTempTable = {}
        for x = config.craftingArea.TOP_LEFT.x, config.craftingArea.BOTTOM_RIGHT.x do
            local tile = Tile(x, y, z)
            if not tile then
                print('[Error - Crafting::scanCraftingArea] Tile not found.')
                return false
            end

            local tileItems = tile:getItems()
            if #tileItems > config.TILE_MAX_ITEMS then
                player:sendTextMessage(MESSAGE_STATUS_SMALL, 'Too many items on tile! Max: ' .. config.TILE_MAX_ITEMS)
                return false
            end

            if #tileItems == 0 then
                table.insert(innerTempTable, 0)
            else
                for _, item in pairs(tileItems) do
                    table.insert(innerTempTable, {item:getId(), item:getCount()})
                end
            end
        end
        table.insert(tempTable, innerTempTable)
    end
    return tempTable
end

local LegendaryCraft = {
	maxLevel = 1000,
	experiencePerLevel = 125,
	storage = {
		level = 39447,
		experience = 39448
	},
}

local function giveLegendaryCraftExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveLegendaryCraftExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local LegendaryLevel = player:getStorageValue(LegendaryCraft.storage.level)
    LegendaryLevel = LegendaryLevel >= 0 and LegendaryLevel or 0
 
    local LegendaryCraftExperience = player:getStorageValue(LegendaryCraft.storage.experience)
    LegendaryCraftExperience = LegendaryCraftExperience >= 0 and LegendaryCraftExperience or 0
 
    
    LegendaryCraftExperience = LegendaryCraftExperience + amount
 
    if LegendaryLevel < LegendaryCraft.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = LegendaryLevel * LegendaryCraft.experiencePerLevel
            if LegendaryCraftExperience >= ExperienceRequiredForNextLevel then
                LegendaryCraftExperience = LegendaryCraftExperience - ExperienceRequiredForNextLevel
                LegendaryLevel = LegendaryLevel + 1
                local text = "You have advanced to Legendary Craft level " .. LegendaryLevel .. "."
                if LegendaryLevel == LegendaryCraft.maxLevel then
                    text = "You have reached the maximum Legendary Craft level."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (LegendaryLevel == LegendaryCraft.maxLevel)
    end
 
    player:setStorageValue(LegendaryCraft.storage.level, LegendaryLevel)
    player:setStorageValue(LegendaryCraft.storage.experience, HerbalistExperience)
    return true
end

local ct = Action()
function ct.onUse(player, item, fromPosition, itemEx, toPosition)
    local levels = {
		expgainmin = 80, -- DO NOT CHANGE !
		expgainmax = 140, -- DO NOT CHANGE !
	}
	local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
    if config.CRAFTING_DELAY > 0 then
        local lastCraftingTime = player:getStorageValue(config.CRAFTING_DELAY_STORAGE)
        if lastCraftingTime > os.time() then
            player:sendTextMessage(MESSAGE_STATUS_SMALL, 'You have to wait ' .. (lastCraftingTime - os.time()) .. ' seconds before you can craft again.')
            fromPosition:sendMagicEffect(CONST_ME_POFF)
            return true
        end
    end

    calculatePositions(item.actionid, fromPosition)

    local craftingTable = scanCraftingArea(player)
    if not craftingTable then
        return true
    end

    local recepie = findCraftingRecepie(craftingTable)
    if not recepie then
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'Unknown recipe. Please try another form.')
        fromPosition:sendMagicEffect(CONST_ME_POFF)
        return true
    end

    local itemData  = recepie.output
    local itemId    = itemData[1]
    local itemCount = itemData[2]

    local it        = ItemType(itemId)
    local itemX     = Game.createItem(itemId, itemCount)
    local addItemX  = player:addItemEx(itemX, false)

    local playerCapacity = player:getFreeCapacity()

    if ((not addItemX) or addItemX ~= 0)
    or (it:getWeight() > playerCapacity) then
        local depot = player:getDepotChest(player:getTown():getId(), true)
        depot:addItemEx(itemX, INDEX_WHEREEVER, FLAG_NOLIMIT)
        player:sendTextMessage(MESSAGE_INFO_DESCR, itemCount .. ' ('.. it:getName() ..'x) has been sent to your depot.')
        removeTableItems()
        return true
    end
    if giveLegendaryCraftExperience(player:getId(), experienceRan) then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Legendary Craft.")
        
    end
    player:setStorageValue(config.CRAFTING_DELAY_STORAGE, config.CRAFTING_DELAY + os.time())
    player:sendTextMessage(MESSAGE_INFO_DESCR, 'You have successfully crafted '.. itemCount .. ' x '.. it:getName() ..'.')
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    removeTableItems()
    return true
end

ct:aid(
    config.leverActionId.NORTH,
    config.leverActionId.WEST,
    config.leverActionId.SOUTH,
    config.leverActionId.EAST
)
ct:register()