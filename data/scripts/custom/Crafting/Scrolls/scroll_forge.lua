
local forgeScroll = Action()

 
function forgeScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Forge.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned to craft resources on the Forge Exaltation.")
	else
	player:setStorageValue(Storage.Forge.scroll.unlock, 1)
	item:remove(1)
end
end
forgeScroll:id(9115)
forgeScroll:register()