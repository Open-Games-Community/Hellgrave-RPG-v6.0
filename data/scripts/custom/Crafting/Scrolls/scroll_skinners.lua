
local skinningScroll = Action()

 
function skinningScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Skinning.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned skinner's recipes.")
	else
	player:setStorageValue(Storage.Skinning.scroll.unlock, 1)
	item:remove(1)
end
end
skinningScroll:id(6120)
skinningScroll:register()