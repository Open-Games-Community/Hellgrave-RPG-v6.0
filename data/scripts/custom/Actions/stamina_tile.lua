local staminaOnTrainer = MoveEvent()

local function Stamina(playerId, seconds)
    local player = Player(playerId)
    if seconds > 0 and player then
            player:setStamina(player:getStamina() + 1)
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Regenerating Stamina")
        addEvent(Stamina, 120000, playerId, seconds - 1)
    end
end

local coolDownStorageID = 327144
local coolDownSeconds = 180

function staminaOnTrainer.onStepIn(player, item, position, fromPosition)
    if player:getStorageValue(coolDownStorageID) <= os.time() then
        player:setStorageValue(coolDownStorageID, os.time() + (coolDownSeconds - 10))
        return Stamina(player:getId(), coolDownSeconds)
    end
    return not player:sendCancelMessage("You are exhausted.")
end

staminaOnTrainer:aid(47777)
staminaOnTrainer:register()