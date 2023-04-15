
local tierVRune = Action()

 
function tierVRune.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.RunesTierV.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned to craft Tier V runes.")
	else
	player:setStorageValue(Storage.RunesTierV.scroll.unlock, 1)
	item:remove(1)
end
end
tierVRune:id(24127)
tierVRune:register()