
local amberScroll = Action()

 
function amberScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Amber.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned very rare equipements recipes.")
	else
	player:setStorageValue(Storage.Amber.scroll.unlock, 1)
	item:remove(1)
end
end
amberScroll:id(8985)
amberScroll:register()