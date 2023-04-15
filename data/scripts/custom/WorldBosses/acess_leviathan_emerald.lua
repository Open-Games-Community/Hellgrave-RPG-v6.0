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
		points_need = 3,
		removePoints =  true
	}
	if item:getActionId() == 27527 then
		if rankIsEqualOrHigher(getRankTask(creature), configStorages.rank) and taskPoints_get(creature) >= 3 and configStorages.parangonStor >= 25 and configStorages.gearScoreStor >= 1800 then
			player:teleportTo(Position(31963, 32765, 9))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			if configStorages.removePoints then
				taskPoints_remove(creature, configStorages.points_need)
			end
			return true
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(Position(31963, 32762, 9))
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You find the Emerald Leviathan Portal, you need at least Ancestral Rank 'Silver', Ancestral Points: 3, Parangon Level: 25 and Gear Score: 1800.")
			return true
		end
	elseif item:getActionId() == 27528 then
		if player then
			player:teleportTo(Position(31963, 32767, 9))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(27527, 27528)
entrance:register()
