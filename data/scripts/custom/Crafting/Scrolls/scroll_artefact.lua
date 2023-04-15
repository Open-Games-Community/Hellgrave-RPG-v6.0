
local artefactScroll = Action()

 
function artefactScroll.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Artefact.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned artefact recipes.")
	else
	player:setStorageValue(Storage.Artefact.scroll.unlock, 1)
	item:remove(1)
end
end
artefactScroll:id(9114)
artefactScroll:register()