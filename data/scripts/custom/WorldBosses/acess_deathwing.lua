local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local configStorages = {
		parangonStor = player:getStorageValue(Storage.Levels.Stats.Parangon),
		gearScoreStor = player:getStorageValue(Storage.Levels.Stats.GearScore),
		rank = "Gold", 
		points_need = 5,
		removePoints =  true
	}
	if item:getActionId() == 27523 then
		if rankIsEqualOrHigher(getRankTask(creature), configStorages.rank) and taskPoints_get(creature) >= 5 and configStorages.parangonStor >= 40 and configStorages.gearScoreStor >= 2800 then
			player:teleportTo(Position(32874, 32405, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			if configStorages.removePoints then
				taskPoints_remove(creature, configStorages.points_need)
			end
			return true
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(Position(32601, 31823, 8))
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You find the Deathwing Portal, you need at least Ancestral Rank 'Gold', Ancestral Points: 5, Parangon Level: 40 and Gear Score: 2800.")
			return true
		end
	elseif item:getActionId() == 27524 then
		if player then
			player:teleportTo(Position(32601, 31823, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(27523, 27524)
entrance:register()
