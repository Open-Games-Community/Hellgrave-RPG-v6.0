local firstWorldBoss = MoveEvent()

function firstWorldBoss.onStepIn(player, item, fromPosition)
    if player:getStorageValue(Storage.WorldBosses.Unlock.Wushoolay) < 1 then
        player:setStorageValue(Storage.WorldBosses.Unlock.Wushoolay, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found some rare Traces, check your questlog for additional information.")
        return true
    elseif player:getStorageValue(Storage.WorldBosses.Unlock.Wushoolay) == 1 or player:getStorageValue(Storage.WorldBosses.Unlock.Wushoolay) == 2 then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, "You already have discovered the rares traces.")
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found some Traces, but you didn't finish the Secret Quest and you dont know how to find a rare monster.")
    end
end
firstWorldBoss:type("stepin")
firstWorldBoss:aid(27517)
firstWorldBoss:register()