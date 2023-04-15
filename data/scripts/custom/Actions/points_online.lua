
local config = {
    storage = 20000,
    pointItemId = 24774,
    pointsPerHour = 1,
    checkDuplicateIps = true
}

local onlinePointsEvent = GlobalEvent("GainPointPerHour")

function onlinePointsEvent.onThink(interval)
    local players = Game.getPlayers()
    if #players == 0 then
        return true
    end

    local checkIp = {}
    for _, player in pairs(players) do
        local ip = player:getIp()
        if ip ~= 0 and (not config.checkDuplicateIps or not checkIp[ip]) then
            checkIp[ip] = true
            local seconds = math.max(0, player:getStorageValue(config.storage))
            if seconds >= 3600 then
                player:setStorageValue(config.storage, 0)
                local item = player:addItem(config.pointItemId, config.pointsPerHour)
                if item then
			    player:sendTextMessage(MESSAGE_INFO_DESCR, "You received 1 Hellgrave Coin because you play 1 hour.")
                end
                return true
            end
            player:setStorageValue(config.storage, seconds +math.ceil(interval/1000))
        end
    end
    return true
end

onlinePointsEvent:interval(10000)
onlinePointsEvent:register()