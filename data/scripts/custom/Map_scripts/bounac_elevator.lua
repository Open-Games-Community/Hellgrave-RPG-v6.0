local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if item:getActionId() == 29117 then
			player:teleportTo(Position(31551, 32164, 3))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
	elseif item:getActionId() == 29118 then
		player:teleportTo(Position(31548, 32164, 7))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(29117, 29118)
entrance:register()
