
local tierIIRunes = Action()

 
function tierIIRunes.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.RunesTierII.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned to craft Tier II Runes.")
	else
	player:setStorageValue(Storage.RunesTierII.scroll.unlock, 1)
	item:remove(1)
end
end
tierIIRunes:id(23460)
tierIIRunes:register()