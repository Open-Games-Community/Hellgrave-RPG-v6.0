local chestRooms = {
	entrances = {
		[25010] = {destination = {x = 33300, y = 32198, z = 8}},
		[25011] = {destination = {x = 33319, y = 32198, z = 8}},
		[25012] = {destination = {x = 33305, y = 32198, z = 8}},
		[25013] = {destination = {x = 33314, y = 32198, z = 8}}
	},
	exits = {
		[25014] = {vocation = VOCATION.ID.MAGE, destination = {x = 33300, y = 32194, z = 8}},
		[25015] = {vocation = VOCATION.ID.PRIEST, destination = {x = 33319, y = 32194, z = 8}},
		[25016] = {vocation = VOCATION.ID.HUNTER, destination = {x = 33305, y = 32194, z = 8}},
		[25017] = {vocation = VOCATION.ID.WARRIOR, destination = {x = 33314, y = 32194, z = 8}}
	}
}

local effects = {
	CONST_ME_TUTORIALARROW,
	CONST_ME_TUTORIALSQUARE
}

local chestRoomTile = MoveEvent()

function chestRoomTile.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local chestRoomExit = chestRooms.exits[item.actionid]
	if chestRoomExit then
		if player:getVocation():getId() == chestRoomExit.vocation then
			if player:getStorageValue(Storage.Quest.Kindernia.VocationReward) == -1 then
				player:sendTextMessage(
					MESSAGE_EVENT_ADVANCE,
					"You should check the chest for your " .. player:getVocation():getName() .. " equipment."
				)
			elseif player:getStorageValue(Storage.Quest.Kindernia.VocationReward) == 1 then
				player:teleportTo(chestRoomExit.destination, true)
				player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				player:sendTextMessage(
					MESSAGE_EVENT_ADVANCE,
					"You should leave for the Mainland now. Go talk with the Prophet."
				)
			end
		elseif player:getVocation():getId() ~= chestRoomExit.vocation then
			player:teleportTo(chestRoomExit.destination, true)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have not the right vocation to enter this room.")
		end
		return true
	end
	local chestRoomEntrance = chestRooms.entrances[item.actionid]
	if chestRoomEntrance then
		if player:getStorageValue(Storage.Kindernia.DoorVocation) == player:getVocation():getId() then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have chosen your vocation. You cannot go back.")
			player:teleportTo(chestRoomEntrance.destination, true)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		end
		return true
	end
	return true
end

for index, value in pairs(chestRooms.entrances) do
	chestRoomTile:aid(index)
end

for index, value in pairs(chestRooms.exits) do
	chestRoomTile:aid(index)
end

chestRoomTile:register()

-- Oressa ladder
local templeStairs = MoveEvent()

function templeStairs.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if player:getStorageValue(Storage.Kindernia.DoorVocation) == player:getVocation():getId() then
		player:sendTextMessage(
			MESSAGE_EVENT_ADVANCE,
			"You cannot go upstairs. You have chosen a vocation and must now leave for the Mainlands."
		)
		player:teleportTo({x = 33300, y = 32204, z = 8}, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	elseif player:getLevel() >= 10000 then
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

templeStairs:aid(25009)
templeStairs:register()

-- First tutorial tile, on the first kindernia town
local tutorialTile = MoveEvent()

function tutorialTile.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getLastLoginSaved() == 0 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Use these stairs to enter on Kidnernia Isle.")
		player:sendTutorial(1)
		for i = 1, #effects do
			Position({x = 33204, y = 32212, z = 7}):sendMagicEffect(effects[i])
		end
	end
	
	return true
end

tutorialTile:position({x = 33204, y = 32214, z = 7})
tutorialTile:register()

-- Before up stair on the first kindernia town
local tutorialTile1 = MoveEvent()

function tutorialTile1.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if player:getStorageValue(Storage.Quest.Kindernia.Questline) == 1 then
		return true
	end
	if player:getStorageValue(Storage.Quest.Kindernia.Questline) < 1 then
		player:sendTextMessage(
			MESSAGE_EVENT_ADVANCE,
			"Welcome to Kindernia! Walk around choose a vocation and explore Kindernia."
		)
		player:sendTutorial(2)
		player:setStorageValue(Storage.Quest.Kindernia.Questline, 1)
		player:setStorageValue(Storage.Quest.Kindernia.GoMain, 1)
		player:setTown(Town(TOWNS_LIST.KINDERNIA))
	end
	return true
end

tutorialTile1:position({x = 33204, y = 32211, z = 6})
tutorialTile1:register()

-- Tutorial tile for not back to kindernia first town
local tutorialTile2 = MoveEvent()

function tutorialTile2.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if item.itemid == 41538 then
		player:teleportTo({x = 33204, y = 32214, z = 7}, true)
	elseif item.itemid == 23745 then
		player:teleportTo({x = 33204, y = 32212, z = 6}, true)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "It seems to be locked.")
	end
	return true
end

tutorialTile2:id(41538, 23745)
tutorialTile2:register()

-- Message on step in the stair for go to NPC's
local tutorialTile3 = MoveEvent()

function tutorialTile3.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if player:getStorageValue(Storage.Kindernia.Tutorial) ~= 0 then
		player:sendTextMessage(
			MESSAGE_EVENT_ADVANCE,
			"To walk on STAIRS, use your arrow keys on your keyboard. You can also use them to walk in general."
		)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:setStorageValue(Storage.Kindernia.Tutorial, 0)
	end
	return true
end

local positions = {
	{x = 33210, y = 32201, z = 6},
}

for i = 1, #positions do
	tutorialTile3:position(positions[i])
end

tutorialTile3:register()

-- Message before down stairs of vocation tiles
local tutorialTile4 = MoveEvent()

function tutorialTile4.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if player:getStorageValue(Storage.Kindernia.MessageStair) < 1 then
		player:sendTextMessage(
			MESSAGE_EVENT_ADVANCE,
			"To ATTACK, click on a target in the battle list next to the game window. \z
			A red frame shows which enemy you're attacking."
		)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:setStorageValue(Storage.Kindernia.MessageStair, 1)
	end
	
	return true
end

local positions = {
	{x = 33258, y = 32200, z = 6},
	{x = 33258, y = 32201, z = 6},
	{x = 33258, y = 32202, z = 6},
}

for i = 1, #positions do
	tutorialTile4:position(positions[i])
end

tutorialTile4:register()

local cureTile = MoveEvent()

function cureTile.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if player:getCondition(CONDITION_POISON) then
		player:removeCondition(CONDITION_POISON)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are cured.")
	end
	return true
end

cureTile:aid(20001)
cureTile:register()
