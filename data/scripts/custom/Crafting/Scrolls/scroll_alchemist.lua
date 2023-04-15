
local alchemistScroll = Action()

 
function alchemistScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Alchemist.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned alchemist recipes.")
	else
	player:setStorageValue(Storage.Alchemist.scroll.unlock, 1)
	item:remove(1)
end
end
alchemistScroll:id(6501)
alchemistScroll:register()