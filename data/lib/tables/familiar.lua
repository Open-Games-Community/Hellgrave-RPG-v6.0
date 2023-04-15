FAMILIAR_ID = {
	[VOCATION.BASE_ID.MAGE] = {id = 994, name = "Mage familiar"},
	[VOCATION.BASE_ID.PRIEST] = {id = 993, name = "Priest familiar"},
	[VOCATION.BASE_ID.HUNTER] = {id = 992, name = "Hunter familiar"},
	[VOCATION.BASE_ID.WARRIOR] = {id = 991, name = "Warrior familiar"},
}

FAMILIAR_TIMER = {
	[1] = {storage=Storage.FamiliarSummonEvent10, countdown=10, message = "10 seconds"},
	[2] = {storage=Storage.FamiliarSummonEvent60, countdown=60, message = "one minute"}
}

function sendMessageFunction(pid, message)
	if Player(pid) then
		Player(pid):sendTextMessage(MESSAGE_LOOT, "Your summon will disappear in less than " .. message)
	end
end

function removeFamiliar(creatureId, playerId)
	local creature = Creature(creatureId)
	local player = Player(playerId)
	if not creature or not player then
		return true
	end
	creature:remove()
	for sendMessage = 1, #FAMILIAR_TIMER do
		player:setStorageValue(FAMILIAR_TIMER[sendMessage].storage, -1)
	end
end
