local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if item:getActionId() == 11803 then
		if player:getStorageValue(Storage.Levels.Stats.Chaos) < 25 then
			player:teleportTo(Position(32720, 33047, 6))
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You need at least Chaos Level 25 to enter on Arkeron Continent.")
			return true
		else
			player:getPosition():sendMagicEffect(240)
			return true
		end
	elseif item:getActionId() == 11805 then
		if player:getStorageValue(Storage.Levels.Stats.Chaos) < 25 then
			player:teleportTo(Position(32725, 33046, 6))
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You need at least Chaos Level 25 to enter on Arkeron Continent.")
			return true
		else
			player:getPosition():sendMagicEffect(240)
			return true
		end
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(11803, 11805)
entrance:register()
