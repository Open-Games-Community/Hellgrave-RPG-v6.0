
local sigilScroll = Action()

 
function sigilScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Sigil.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned Sigil's recipes.")
	else
	player:setStorageValue(Storage.Sigil.scroll.unlock, 1)
	item:remove(1)
end
end
sigilScroll:id(27404)
sigilScroll:register()