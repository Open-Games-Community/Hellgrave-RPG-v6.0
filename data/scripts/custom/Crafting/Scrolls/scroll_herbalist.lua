
local herbalistScroll = Action()

 
function herbalistScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Herbalist.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned herbalist recipes.")
	else
	player:setStorageValue(Storage.Herbalist.scroll.unlock, 1)
	item:remove(1)
end
end
herbalistScroll:id(6508)
herbalistScroll:register()