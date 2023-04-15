
local scrollCraft = Action()

 
function scrollCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.scrollCraft.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned to craft Scrolls to upgrade equipments.")
	else
	player:setStorageValue(Storage.scrollCraft.scroll.unlock, 1)
	item:remove(1)
end
end
scrollCraft:id(24164)
scrollCraft:register()