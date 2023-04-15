local config = {
	[1] = {storage = 15007}
}

local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
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
	if item:getActionId() == 24840 then
		if complete then
			player:teleportTo(Position(31830, 32353, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		else
			player:teleportTo(Position(31830, 32353, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	elseif item:getActionId() == 24841 then
		if player:getStorageValue(15007) < 1 then
			player:teleportTo(Position(31830, 32353, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You didn't finished the Secret Quest, first part.")
			return true
		end
		player:teleportTo(Position(31822, 32389, 8))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(24840, 24841)
entrance:register()
