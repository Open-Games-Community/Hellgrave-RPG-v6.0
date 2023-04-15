
local fishingScroll = Action()

 
function fishingScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Fishing.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned fisher's recipes.")
	else
	player:setStorageValue(Storage.Fishing.scroll.unlock, 1)
	item:remove(1)
end
end
fishingScroll:id(6509)
fishingScroll:register()