local autoSave = GlobalEvent("autoSave")
local cleanMapAtSave = false

local function serverSave(interval)
    if cleanMapAtSave then
        cleanMap()
    end

    saveServer()
	Game.broadcastMessage('Server save complete. Next save in ' .. math.floor(interval / 60000) .. ' minutes!', MESSAGE_STATUS_WARNING)
end

function autoSave.onThink(interval)
    addEvent(serverSave, 60000, interval)
    return true
end

autoSave:interval(1800000)
autoSave:register()
