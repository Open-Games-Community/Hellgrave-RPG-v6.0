--[[
 __  __     _      _        _               _    
 \ \/ /    (_)    | |__    (_)    _ _      (_)   
  >  <     | |    | / /    | |   | ' \     | |   
 /_/\_\   _|_|_   |_\_\   _|_|_  |_||_|   _|_|_  
_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| 
"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' 

]]--

local rewardsTable = {
    [19951] = {
        containerId = 1988,
        chestReturnTime = 900, 
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

local disappearingLootChestWorld = Action()

function disappearingLootChestWorld.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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
        player:addItem(13165, 1)
        player:addItem(13166, 1)
        player:addItem(2152, 15)
    end
    
    
    lootChestDeAndReappear(toPosition, item:getId(), actionId, index.magicEffect, index.chestReturnTime * 1000)
    return true
end

for actionid, _ in pairs(rewardsTable) do
    disappearingLootChestWorld:aid(actionid) 
end
disappearingLootChestWorld:register()