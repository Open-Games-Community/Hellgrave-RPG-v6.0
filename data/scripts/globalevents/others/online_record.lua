local playerrecord = GlobalEvent("playerrecord")
function playerrecord.onRecord(current, old)
	addEvent(Game.broadcastMessage, 150, 'New record on server: ' .. current .. ' players online.', MESSAGE_STATUS_DEFAULT)
	return true
end
playerrecord:register()
