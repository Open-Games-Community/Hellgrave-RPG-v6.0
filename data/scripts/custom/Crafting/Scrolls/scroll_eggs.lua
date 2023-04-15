
local dragonEggsCraft = Action()

 
function dragonEggsCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.EggHunter.scroll.unlock) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already learned Dragon Egg's recipes.")
	else
	player:setStorageValue(Storage.EggHunter.scroll.unlock, 1)
	item:remove(1)
end
end
dragonEggsCraft:id(27403)
dragonEggsCraft:register()