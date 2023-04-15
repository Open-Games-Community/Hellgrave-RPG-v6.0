
local demoniacScroll = Action()

 
function demoniacScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Demoniac.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned legendary equipements recipes.")
	else
	player:setStorageValue(Storage.Demoniac.scroll.unlock, 1)
	item:remove(1)
end
end
demoniacScroll:id(9112)
demoniacScroll:register()