local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local configStorages = {
		parangonStor = player:getStorageValue(Storage.Levels.Stats.Parangon),
		gearScoreStor = player:getStorageValue(Storage.Levels.Stats.GearScore),
		rank = "Bronze", 
		points_need = 3,
		removePoints =  true
	}
	if item:getActionId() == 27521 then
		if rankIsEqualOrHigher(getRankTask(creature), configStorages.rank) and taskPoints_get(creature) >= 3 and configStorages.parangonStor >= 20 and configStorages.gearScoreStor >= 1500 then
			player:teleportTo(Position(32835, 32330, 7))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			if configStorages.removePoints then
				taskPoints_remove(creature, configStorages.points_need)
			end
			return true
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(Position(32835, 32333, 7))
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You find the Argnork Entrance, you need at least Ancestral Rank 'Bronze', Ancestral Points: 3, Parangon Level: 20 and Gear Score: 1500.")
			return true
		end
	elseif item:getActionId() == 27522 then
		if player then
			player:teleportTo(Position(32835, 32330, 7))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(27521, 27522)
entrance:register()
