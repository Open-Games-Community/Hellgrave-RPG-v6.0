
local tierIRune = Action()

 
function tierIRune.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.RunesTierI.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned to craft Tier I Runes.")
	else
	player:setStorageValue(Storage.RunesTierI.scroll.unlock, 1)
	item:remove(1)
end
end
tierIRune:id(23461)
tierIRune:register()