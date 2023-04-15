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
		points_need = 2,
		removePoints =  true
	}
	if item:getActionId() == 27533 then
		if rankIsEqualOrHigher(getRankTask(creature), configStorages.rank) and taskPoints_get(creature) >= 2 and configStorages.parangonStor >= 15 and configStorages.gearScoreStor >= 1000 then
			player:teleportTo(Position(31766, 32569, 4))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			if configStorages.removePoints then
				taskPoints_remove(creature, configStorages.points_need)
			end
			return true
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(Position(31766, 32572, 4))
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You find the Tygrosa Portal, you need at least Ancestral Rank 'Bronze', Ancestral Points: 2, Parangon Level: 15 and Gear Score: 1000.")
			return true
		end
	elseif item:getActionId() == 27534 then
		if player then
			player:teleportTo(Position(31765, 32569, 4))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(27533, 27534)
entrance:register()
