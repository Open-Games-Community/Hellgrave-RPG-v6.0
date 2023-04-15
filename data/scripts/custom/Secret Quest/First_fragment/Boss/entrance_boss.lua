local config = {
	[1] = {storage = 15002}
}

local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local complete = false
	for i = 1, #config do
		local storage = config[i].storage
		if player:getStorageValue(storage) == 1 then
			complete = false
		else
			complete = true
		end
	end
	if item:getActionId() == 24847 then
		if complete then
			player:teleportTo(Position(31643, 32474, 12))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		else
			player:teleportTo(Position(31643, 32474, 12))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	elseif item:getActionId() == 24848 then
		if player:getStorageValue(15002) < 1 then
			player:teleportTo(Position(31695, 32501, 12))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_INFO_DESCR,
			"You need start the Secret Quest part 1.")
			return true
		end
		player:teleportTo(Position(31661, 32510, 12))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		doPlayerPopupFYI(creature, "You find the entrance of the Ancestral Spirit Boss, fight him and talk back to Dreanor.\n If boss is already defeated, just wait until respawn.")
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(24847, 24848)
entrance:register()
