local entrance = Action()

function entrance.onUse(creature, item, position, fromPosition)
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
	if item:getActionId() == 27519 then
		if rankIsEqualOrHigher(getRankTask(creature), configStorages.rank) and taskPoints_get(creature) >= 2 and configStorages.parangonStor >= 15 and configStorages.gearScoreStor >= 1000 then
			player:teleportTo(Position(32098, 32666, 14))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			if configStorages.removePoints then
				taskPoints_remove(creature, configStorages.points_need)
			end
			return true
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(Position(32095, 32666, 14))
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You find the Larva Queen Entrance, you need at least Ancestral Rank 'Bronze', Ancestral Points: 2, Parangon Level: 15 and Gear Score: 1000.")
			return true
		end
	elseif item:getActionId() == 27520 then
		if player then
			player:teleportTo(Position(32102, 32670, 14))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
		return true
	end
	return true
end

entrance:aid(27519, 27520)
entrance:register()
