local config = {
	[1] = {storage = 30568}
}

local entranceLegendary = MoveEvent()

function entranceLegendary.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local complete = false
	for i = 1, #config do
		local storage = config[i].storage
		if player:getStorageValue(storage) ~= 1 then
			complete = false
		else
			complete = true
		end
	end
	if item:getActionId() == 19497 then
		if complete then
			player:teleportTo(Position(29114, 31982, 11))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		else
			player:teleportTo(Position(29114, 31982, 11))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	elseif item:getActionId() == 19498 then
		if player:getStorageValue(30568) < 499 then
			player:teleportTo(Position(29114, 31982, 11))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_INFO_DESCR,
			"You need reach crafting skill level 500 before enter here.")
			return true
		end
		player:teleportTo(Position(29350, 31770, 11))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end
	return true
end

entranceLegendary:type("stepin")
entranceLegendary:aid(19497, 19498)
entranceLegendary:register()
