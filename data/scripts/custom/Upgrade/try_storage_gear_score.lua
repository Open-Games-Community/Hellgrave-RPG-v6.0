local config = {
	[1] = {storage = 150000}
}
local gearScore = 0
local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local complete = false
	for i = 1, #config do
		local storage = config[i].storage
		if player:getStorageValue(storage) ~= 1 then
			complete = false
		else
			complete = true
		end
	end
	if item:getActionId() == 54837 then
		if complete then
			player:teleportTo(Position(32367, 32242, 7))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		else
			player:teleportTo(Position(32367, 32242, 7))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	elseif item:getActionId() == 54838 then
		if player:getStorageValue(150000) < 0 then
			player:teleportTo(Position(32374, 32243, 7))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_INFO_DESCR,
			"You don't have the Gear Score required, required +["..gearScore.."] to enter")
			return true
		end
		player:teleportTo(Position(32367, 32242, 7))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:addAchievement('Allow Cookies?')
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have teleported because you reach +[4500] Gear Score.")
		return true
	end
	return true
end

entrance:type("stepin")
entrance:aid(54837, 54838)
entrance:register()
