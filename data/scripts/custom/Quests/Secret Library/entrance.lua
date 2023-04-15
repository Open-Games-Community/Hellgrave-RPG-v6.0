local entranceTp = Action()

function entranceTp.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(15002) == 3 then
		player:teleportTo(Position(29958, 33442, 8))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	else
		player:sendCancelMessage("You need start The Secret Quest in order to enter on Secret Library.")
		Position(fromPosition):sendMagicEffect(CONST_ME_POFF)
	end
	return true
end

entranceTp:aid(26698)
entranceTp:register()