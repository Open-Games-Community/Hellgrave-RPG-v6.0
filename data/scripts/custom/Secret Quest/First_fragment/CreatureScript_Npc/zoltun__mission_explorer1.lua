local masterMission = CreatureEvent("masterMission")

local config = {
	['behemoth'] = {amount = 50, storage = 19708, startstorage = 19703, startvalue = 1},
	['serpent spawn'] = {amount = 100, storage = 19709, startstorage = 19703, startvalue = 1}
}
function masterMission.onKill(cid, target)
	local monster = config[getCreatureName(target):lower()]
	if isPlayer(target) or not monster or isSummon(target) then
		return true
	end

	if (getPlayerStorageValue(cid, monster.storage)+1) < monster.amount and getPlayerStorageValue(cid, monster.startstorage) >= monster.startvalue then
		setPlayerStorageValue(cid, monster.storage, getPlayerStorageValue(cid, monster.storage) + 1)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Mission message: '..(getPlayerStorageValue(cid, monster.storage)+1)..' of '..monster.amount..' '..getCreatureName(target)..'s killed.')
	end
	if (getPlayerStorageValue(cid, monster.storage)+1) == monster.amount then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Congratulations, you have killed '..(getPlayerStorageValue(cid, monster.storage)+1)..' '..getCreatureName(target)..'s and completed the '..getCreatureName(target)..'s mission.')
		setPlayerStorageValue(cid, monster.storage, getPlayerStorageValue(cid, monster.storage) + 1)
	end
	return true
end

masterMission:register()
