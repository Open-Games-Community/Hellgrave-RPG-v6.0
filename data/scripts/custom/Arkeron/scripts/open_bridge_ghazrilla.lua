local config = {
    [31904] = {
        object = {
            position = Position(33043, 32768, 9),
            itemId = 1304,
            removeTimer = 60 -- seconds
        },
        tilePositions = {
            Position(33020, 32762, 10)
        }
    },
}

local function removeAndReAddObject(position, objectId, timer)
    position:sendMagicEffect(CONST_ME_POFF)
    if timer > 0 then
        Tile(position):getItemById(objectId):remove()
        addEvent(removeAndReAddObject, timer, position, objectId, 0)
    else
        Game.createItem(objectId, 1, position)
    end
end

local stepTilesRemoveObject = MoveEvent()
stepTilesRemoveObject:type("stepin")

function stepTilesRemoveObject.onStepIn(player, item, position, fromPosition)

    -- confirm is player
    if not player:isPlayer() then
        return true
    end
   
    -- confirm index
    local actionId = item:getActionId()
    local index = config[actionId]
    if not index then
        print("LUA error: ActionId not in table." .. actionId)
        return true
    end
   
    -- confirm that object exists
    if Tile(index.object.position):getItemCountById(index.object.itemId) == 0 then
        position:sendMagicEffect(CONST_ME_POFF)
        return true
    end
   
    -- confirm if all tiles are occupied
    local positionAmount = #index.tilePositions
    local playerCount = 0
    for i = 1, positionAmount do
        local creature = Tile(index.tilePositions[i]):getTopCreature()
        if not creature or not creature:isPlayer() then
            index.tilePositions[i]:sendMagicEffect(CONST_ME_MAGIC_RED)
        else
            index.tilePositions[i]:sendMagicEffect(CONST_ME_MAGIC_GREEN)
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You checked the mirror and see is broken")
            playerCount = playerCount + 1
        end           
    end
   
    -- remove and reAdd stone
    if playerCount == positionAmount then
        removeAndReAddObject(index.object.position, index.object.itemId, index.object.removeTimer * 1000)
    end   
    return true
end

for actionid, _ in pairs(config) do
    stepTilesRemoveObject:aid(actionid) -- adds all actionid's from config
end
stepTilesRemoveObject:register()