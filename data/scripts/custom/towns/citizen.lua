local config = {
	[9059] = TOWNS_LIST.MORDRAGOR,
	[9056] = TOWNS_LIST.FALANAAR,
	[9060] = TOWNS_LIST.DOLWATHA,
	[9057] = TOWNS_LIST.MISTFALL,
	[9058] = TOWNS_LIST.FREEWIND,
	[9061] = TOWNS_LIST.ROSHAMUUL,
	[9062] = TOWNS_LIST.ARKERON,
}

local citizen = MoveEvent()

function citizen.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local townId = config[item.uid]
	if not townId then
		return true
	end

	local town = Town(townId)
	if not town then
		return true
	end


	player:setTown(town)
	player:teleportTo(town:getTemplePosition())
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You are now a citizen of ' .. town:getName() .. '.')
	return true
end

citizen:type("stepin")

for index, value in pairs(config) do
	citizen:uid(index)
end

citizen:register()
