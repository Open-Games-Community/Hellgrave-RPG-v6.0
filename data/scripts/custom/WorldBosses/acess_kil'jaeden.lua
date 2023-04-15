local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local configStorages = {
		parangonStor = player:getStorageValue(Storage.Levels.Stats.Parangon),
		gearScoreStor = player:getStorageValue(Storage.Levels.Stats.GearScore),
		rank = "Silver", 
		points_need = 4,
		removePoints =  true
	}
	if item:getActionId() == 27529 then
		if rankIsEqualOrHigher(getRankTask(creature), configStorages.rank) and taskPoints_get(creature) >= 4 and configStorages.parangonStor >= 35 and configStorages.gearScoreStor >= 2500 then
			player:teleportTo(Position(33051, 32448, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			if configStorages.removePoints then
				taskPoints_remove(creature, configStorages.points_need)
			end
			return true
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(Position(32686, 32255, 10))
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You find the Kil'Jaeden Portal, you need at least Ancestral Rank 'Silver', Ancestral Points: 4, Parangon Level: 35 and Gear Score: 2500.")
			return true
		end
	elseif item:getActionId() == 27530 then
		if player then
			player:teleportTo(Position(32686, 32255, 10))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(27529, 27530)
entrance:register()
