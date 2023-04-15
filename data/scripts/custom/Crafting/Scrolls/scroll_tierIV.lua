
local tierIVRune = Action()

 
function tierIVRune.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.RunesTierIV.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned to craft Tier IV Runes.")
	else
	player:setStorageValue(Storage.RunesTierIV.scroll.unlock, 1)
	item:remove(1)
end
end
tierIVRune:id(33543)
tierIVRune:register()