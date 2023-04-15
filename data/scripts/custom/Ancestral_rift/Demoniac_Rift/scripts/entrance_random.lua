local randomTeleports = {
    Position(29127, 31942, 9)
}

local actionID = 12345
local rank = "Platinum" 
local points_need = 4
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
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have entered to the Demoniac Rift.")
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