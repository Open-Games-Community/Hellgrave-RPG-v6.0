local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if item:getActionId() == 29102 then
		if player:getStorageValue(71835) == 1 then
			player:teleportTo(Position(31834, 32388, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		else
			player:setStorageValue(71835, 1)
			player:teleportTo(Position(31834, 32388, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	elseif item:getActionId() == 29103 then
		if player:getStorageValue(71835) < 1 then
			player:teleportTo(Position(31834, 32388, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_INFO_DESCR,
			"You have not yet discovered the second part of the elevator.")
			return true
		end
		player:teleportTo(Position(29103, 32010, 9))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(29102, 29103)
entrance:register()
