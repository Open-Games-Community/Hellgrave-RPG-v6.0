
local tierIIIRune = Action()

 
function tierIIIRune.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.RunesTierIII.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned to craft Tier III Runes.")
	else
	player:setStorageValue(Storage.RunesTierIII.scroll.unlock, 1)
	item:remove(1)
end
end
tierIIIRune:id(9113)
tierIIIRune:register()