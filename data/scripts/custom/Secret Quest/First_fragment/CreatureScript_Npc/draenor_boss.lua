local masterBossMission = CreatureEvent("masterBossMission")

local config = {
	['ancestral spirit'] = {amount = 1, storage = 19592, startstorage = 19591, startvalue = 1}
}
function masterBossMission.onKill(cid, target)
	local monster = config[getCreatureName(target):lower()]
	if isPlayer(target) or not monster or isSummon(target) then
		return true
	end

	if (getPlayerStorageValue(cid, monster.storage)+1) < monster.amount and getPlayerStorageValue(cid, monster.startstorage) >= monster.startvalue then
		setPlayerStorageValue(cid, monster.storage, getPlayerStorageValue(cid, monster.storage) + 1)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Mission message: '..(getPlayerStorageValue(cid, monster.storage)+1)..' of '..monster.amount..' '..getCreatureName(target)..'s killed.')
	end
	if (getPlayerStorageValue(cid, monster.storage)+1) == monster.amount then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Congratulations, you have killed '..(getPlayerStorageValue(cid, monster.storage)+1)..' '..getCreatureName(target)..'s and completed The First Fragment Quest.')
		setPlayerStorageValue(cid, monster.storage, getPlayerStorageValue(cid, monster.storage) + 1)
	end
	return true
end

masterBossMission:register()
