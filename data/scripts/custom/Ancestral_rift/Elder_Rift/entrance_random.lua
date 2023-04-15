local randomTeleports = {
    Position(29543, 32264, 8),
    Position(29676, 32311, 8),
    Position(29420, 32278, 9)
}

local actionID = 11545 
local rank = "Gold" 
local points_need = 3
local removePoints =  true 

local moveEvent = MoveEvent()

function moveEvent.onStepIn(creature, item, pos, fromPosition)
    if not creature:isPlayer() then
        return true
    end

    local player = creature:getPlayer()
    local randomPosition = randomTeleports[math.random(#randomTeleports)]
    if rankIsEqualOrHigher(getRankTask(creature), rank) and taskPoints_get(creature) >= 1 then
    fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
    player:teleportTo(randomPosition, false)
    randomPosition:sendMagicEffect(CONST_ME_TELEPORT)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have entered to the Elder Rift.")
    if removePoints then
        taskPoints_remove(creature, points_need)
    end
    else
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Your Ancestral rank must be equal to or higher than "..rank.." to pass and you need at least " ..points_need.. " Ancestral Points to enter.")
    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    player:teleportTo(fromPosition, false)

    return true
end
end

moveEvent:aid(actionID)
moveEvent:register()