local firstWorldBoss = MoveEvent()

function firstWorldBoss.onStepIn(player, item, fromPosition)
    local storageValue = player:getStorageValue(Storage.WorldBosses.Unlock.Viscidius)
    if storageValue < 1 then
        player:setStorageValue(Storage.WorldBosses.Unlock.Viscidius, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found some rare Traces, check your questlog for additional information.")
        return true
    elseif storageValue == 1 or storageValue == 2 then
        return false
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found some Traces, but you didn't finish the Secret Quest and you don't know how to find a rare monster.")
    end
end

firstWorldBoss:type("stepin")
firstWorldBoss:aid(27506)
firstWorldBoss:register()