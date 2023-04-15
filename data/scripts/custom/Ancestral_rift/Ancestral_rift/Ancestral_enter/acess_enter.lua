local setting = {
	[14248] = {
		sacrificePosition = Position(31479, 32249, 6),
		pushPosition = Position(31480, 32250, 6),
		destination = Position(31822, 32389, 8)
	}
}

local ancestralRiftRoom = MoveEvent()


function ancestralRiftRoom.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local fragment = setting[item.actionid]
	if not fragment then
		return true
	end

	local sacrificeId, sacrifice = Tile(fragment.sacrificePosition):getThing(1).itemid, true
	if not isInArray({15462}, sacrificeId) then
		sacrifice = false
	end

	if not sacrifice then
		player:teleportTo(fragment.pushPosition)
		position:sendMagicEffect(CONST_ME_ENERGYHIT)
		fragment.pushPosition:sendMagicEffect(CONST_ME_ENERGYHIT)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need the First Fragment in order to enter on the Ancestral Room.")
		return true
	end

	local firstFragmentItem = Tile(fragment.sacrificePosition):getItemById(sacrificeId)
	if firstFragmentItem then
		firstFragmentItem:remove()
	end

	player:teleportTo(fragment.destination)
	position:sendMagicEffect(CONST_ME_FIREWORK_RED)
	fragment.sacrificePosition:sendMagicEffect(CONST_ME_FIREWORK_RED)
	fragment.destination:sendMagicEffect(CONST_ME_FIREWORK_RED)
    player:setStorageValue(Storage.AncestralRift.Entrance.Access, 1)
	return true
end

ancestralRiftRoom:type("stepin")

for index, value in pairs(setting) do
	ancestralRiftRoom:aid(index)
end

ancestralRiftRoom:register()
