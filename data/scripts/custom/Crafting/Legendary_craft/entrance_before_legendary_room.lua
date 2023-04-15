local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if item:getActionId() == 13487 then
		if player:getStorageValue(30568) < 499 then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(Position(29123, 31990, 11))
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You need at least Craft Skill 500 before enter on the Legendary Room.")
			return true
		else
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:teleportTo(Position(29123, 31986, 11))
			return true
		end
	elseif item:getActionId() == 13488 then
		if player then
			player:teleportTo(Position(29123, 31990, 11))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(13487, 13488)
entrance:register()
