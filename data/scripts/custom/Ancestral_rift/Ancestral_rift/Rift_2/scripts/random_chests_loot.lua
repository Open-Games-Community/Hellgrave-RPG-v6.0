--[[
 __  __     _      _        _               _    
 \ \/ /    (_)    | |__    (_)    _ _      (_)   
  >  <     | |    | / /    | |   | ' \     | |   
 /_/\_\   _|_|_   |_\_\   _|_|_  |_||_|   _|_|_  
_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| 
"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' 

]]--

local rewardsTable = {
    [34020] = {
        containerId = 1988,
        chestReturnTime = 1800, 
        magicEffect = CONST_ME_TELEPORT,
        {4866, 1, 3, 2500}
    },
}

local function lootChestDeAndReappear(position, chestId, actionId, effect, timer)
    position:sendMagicEffect(effect)
    if timer > 0 then
        Tile(position):getItemById(chestId):remove()
        addEvent(lootChestDeAndReappear, timer, position, chestId, actionId, effect, 0)
    else
        local chest = Game.createItem(chestId, 1, position)
        chest:setActionId(actionId)
    end
end

local disappearingLootChest = Action()

function disappearingLootChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local actionId = item:getActionId()
    local index = rewardsTable[actionId]
    if not index then
        print("LUA error: ActionId not in table." .. item:getActionId())
        return true
    end
    
    local rewardItems = {}
    local amount = 0
    for i = 1, #index do
        if math.random(10000) <= index[i][4] then
            amount = math.random(index[i][2], index[i][3])
            table.insert(rewardItems, {index[i][1], amount})
        end
    end

    if #rewardItems > 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You looted the following items: 3 Slivers, 1 Dust, 1 Ancestral Crystal, 15 Salvage Materials and 1 Sparkling potion.")
        player:addItem(41944, 3)
        player:addItem(41995, 1)
        player:addItem(16004, 1)
        player:addItem(8613, 15)
        player:addItem(37419, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "No reward this time!.")
        
    end
    
    lootChestDeAndReappear(toPosition, item:getId(), actionId, index.magicEffect, index.chestReturnTime * 1000)
    return true
end

for actionid, _ in pairs(rewardsTable) do
    disappearingLootChest:aid(actionid) 
end
disappearingLootChest:register()