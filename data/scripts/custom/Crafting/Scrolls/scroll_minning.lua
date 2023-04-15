
local minningScroll = Action()

 
function minningScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Minning.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned minner's recipes.")
	else
	player:setStorageValue(Storage.Minning.scroll.unlock, 1)
	item:remove(1)
end
end
minningScroll:id(6507)
minningScroll:register()