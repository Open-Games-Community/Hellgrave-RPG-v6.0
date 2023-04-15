local vocationDoors = {
	-- Mage
	[22001] = {
		vocation = VOCATION.ID.MAGE,
		destination = {x = 33300, y = 32198, z = 8}
	},
	-- Priest
	[22002] = {
		vocation = VOCATION.ID.PRIEST,
		destination = {x = 33319, y = 32198, z = 8}
	},
	-- Hunter
	[22003] = {
		vocation = VOCATION.ID.HUNTER,
		destination = {x = 33305, y = 32198, z = 8}
	},
	-- Warrior
	[22004] = {
		vocation = VOCATION.ID.WARRIOR,
		destination = {x = 33314, y = 32198, z = 8}
	},
}

local vocationDoor = Action()

function vocationDoor.onUse(player, item, target, position, fromPosition)
	local door = vocationDoors[item.uid]
	--Check Oressa storage before choose vocation
	if player:getStorageValue(Storage.Kindernia.DoorVocation) == door.vocation then
		player:teleportTo(door.destination)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:sendTextMessage(
			MESSAGE_EVENT_ADVANCE,
			"Open the chest and take your gear, young " .. player:getVocation():getName():lower() .. "!"
		)
	elseif player:getStorageValue(Storage.Kindernia.DoorVocation) ~= door.vocation then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The door seems to be sealed against unwanted intruders.")
	end
	return true
end

for index, value in pairs(vocationDoors) do
	vocationDoor:uid(index)
end

vocationDoor:register()
