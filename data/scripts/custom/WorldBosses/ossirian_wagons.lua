local entrance = Action()

function entrance.onUse(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if item:getActionId() == 27508 then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 1 or player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 2 then
			player:teleportTo(Position(31940, 32533, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		else
			player:teleportTo(Position(31928, 32508, 8))
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You didn't find the traces of this world boss.")
			return true
		end
	elseif item:getActionId() == 27509 then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 1 or player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 2 then
			player:teleportTo(Position(31928, 32507, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	elseif item:getActionId() == 27510 then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 1 or player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 2 then
			player:teleportTo(Position(31939, 32520, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	elseif item:getActionId() == 27511 then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 1 or player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 2 then
			player:teleportTo(Position(31940, 32529, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	elseif item:getActionId() == 27512 then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 1 or player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 2 then
			player:teleportTo(Position(31970, 32534, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	elseif item:getActionId() == 27513 then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 1 or player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 2 then
			player:teleportTo(Position(31940, 32516, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	end
	return true
end

entrance:aid(27508, 27509, 27510, 27511, 27512, 27513)
entrance:register()
