local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local configStorages = {
		parangonStor = player:getStorageValue(Storage.Levels.Stats.Parangon),
		gearScoreStor = player:getStorageValue(Storage.Levels.Stats.GearScore),
		chaosStor = player:getStorageValue(Storage.Levels.Stats.Chaos),
		rank = "Platinum", 
		points_need = 8,
		removePoints =  true
	}
	if item:getActionId() == 27535 then
		if rankIsEqualOrHigher(getRankTask(creature), configStorages.rank) and taskPoints_get(creature) >= 8 and configStorages.parangonStor >= 100 and configStorages.gearScoreStor >= 5000 and configStorages.chaosStor >= 25 then
			player:teleportTo(Position(33129, 32686, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			if configStorages.removePoints then
				taskPoints_remove(creature, configStorages.points_need)
			end
			return true
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(Position(33010, 32887, 13))
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You find the The Wyrm, The terror of Abysm, you need at least Ancestral Rank 'Platinum', Ancestral Points: 8, Parangon Level: 100, Gear Score: 5000 and Chaos Level: 25, in order to enter in this portal.")
			return true
		end
	elseif item:getActionId() == 27536 then
		if player then
			player:teleportTo(Position(33010, 32887, 13))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(27535, 27536)
entrance:register()
