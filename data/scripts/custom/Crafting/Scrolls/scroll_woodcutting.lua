
local woodcuttersScroll = Action()

 
function woodcuttersScroll.onUse(player, item)
	if player:getStorageValue(Storage.Woodcutting.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned Woodcutter's recipes.")
	else
	player:setStorageValue(Storage.Woodcutting.scroll.unlock, 1)
	item:remove(1)
end
end
woodcuttersScroll:id(6125)
woodcuttersScroll:register()