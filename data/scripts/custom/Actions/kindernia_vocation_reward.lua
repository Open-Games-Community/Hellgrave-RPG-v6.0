local welcomeToServer = [[
Brave adventurer,
Welcome to the New World.
This server is totally custom and get a lot of features.
Some of them:
Secret Systems, Arena Events, Chest Events, Daily Quests, Daily Arenas, Unique Quests and Unique and Customs Items and sets.
A plenty of new and customs monsters, a new spawns and zones like Ancestral Rift, Elder Rift and Demoniac Rift, creating an 
entire system based on players, gathering, collecting, looting and play with friends.
There is also some jobs in Hellgrave:
Mining
Herbalist
Lumberjack
Skinning
Fishing
To start unlocking all system, first of all start doing the Secret Quest around level 100, then you will grow and discover this world.
In order to start this jobs, start the mission with the right Npc, check website if you need help.
Enjoy the server and start exploring the world of Hellgrave.
]]


local reward = {
	container = 1988,
	commonItems = {
		{id = 1953, amount = 1, text = welcomeToServer}
	},
	vocationItems = {
        --- Mages
		[14025] = {
			{id = 8820, amount = 1},	-- Mage hat
			{id = 8819, amount = 1},	-- Magician's robe
			{id = 2649, amount = 1},	-- Leather legs
			{id = 2643, amount = 1},	-- Leather boots
			{id = 2190, amount = 1},	-- Wand of vortex
			{id = 2175, amount = 1}		-- Spellbook
		},
		-- Priests
		[14026] = {
			{id = 8820, amount = 1},	-- Mage hat
			{id = 8819, amount = 1},	-- Magician's robe
			{id = 2649, amount = 1},	-- Leather legs
			{id = 2643, amount = 1},	-- Leather boots
			{id = 2182, amount = 1},	-- Snakebite rod
			{id = 2175, amount = 1}		-- Spellbook
		},
		-- Hunters
		[14027] = {
			{id = 2461, amount = 1},	-- Leader helmet
			{id = 2660, amount = 1},	-- Ranger's cloak
			{id = 8923, amount = 1},	-- Ranger legs
			{id = 2643, amount = 1},	-- Leather boots
			{id = 2456, amount = 1},	-- Bow
			{id = 2389, amount = 1},	-- Spear
			{id = 40397, amount = 1},	-- Quiver
			{id = 2544, amount = 100}	-- Arrows
		},
		-- Warriors
		[14028] = {
			{id = 2481, amount = 1},	-- Soldier helmet
			{id = 2465, amount = 1},	-- Brass armor
			{id = 2478, amount = 1},	-- Brass legs
			{id = 2643, amount = 1},	-- Leather boots
			{id = 8602, amount = 1},	-- Jagged sword
			{id = 2509, amount = 1}		-- Steel shield
		}
		}
}
local vocationReward = Action()
function vocationReward.onUse(player, item, fromPosition, itemEx, toPosition)
	local vocationItems = reward.vocationItems[item.uid]
	-- Check there is items for item.uid
	if not vocationItems then
		return true
	end
	-- Check quest storage
	if player:getStorageValue(Storage.Quest.Kindernia.VocationReward) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The " .. item:getName() .. " is empty.")
		return true
	end
	-- Calculate reward weight
	local rewardsWeight = ItemType(reward.container):getWeight()
	for i = 1, #vocationItems do
		rewardsWeight = rewardsWeight + (ItemType(vocationItems[i].id):getWeight() * vocationItems[i].amount)
	end
    for i = 1, #reward.commonItems do
		rewardsWeight = rewardsWeight + (ItemType(reward.commonItems[i].id):getWeight() * reward.commonItems[i].amount)
	end	
	-- Check if enough weight capacity
	if player:getFreeCapacity() < rewardsWeight then
		player:sendTextMessage(
			MESSAGE_EVENT_ADVANCE,
			"You have found a " .. getItemName(reward.container) ..
			". Weighing " .. (rewardsWeight / 100) .. " oz it is too heavy."
		)
		return true
	end
	-- Check if enough free slots
	if player:getFreeBackpackSlots() < 1 then
		player:sendTextMessage(
			MESSAGE_EVENT_ADVANCE,
			"You have found a " .. getItemName(reward.container) .. ". There is no room."
		)
		return true
	end
	-- Create reward container
	local container = Game.createItem(reward.container)
	-- Iterate in inverse order due on addItem/addItemEx by default its added at first index
	-- Add common items
	for i = #reward.commonItems, 1, -1 do
		if reward.commonItems[i].text then
			-- Create item to customize
			local document = Game.createItem(reward.commonItems[i].id)
			document:setAttribute(ITEM_ATTRIBUTE_TEXT, reward.commonItems[i].text)
			container:addItemEx(document)
		else
			container:addItem(reward.commonItems[i].id, reward.commonItems[i].amount)
		end
	end	
	-- Add vocation items
	for i = #vocationItems, 1, -1 do
		container:addItem(vocationItems[i].id, vocationItems[i].amount)
	end

    -- Ensure reward was added properly to player
	if player:addItemEx(container, false, CONST_SLOT_WHEREEVER) == RETURNVALUE_NOERROR then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. container:getName() .. ".")
		player:setStorageValue(Storage.Quest.Kindernia.VocationReward, 1)
	end
	return true
end
for index, value in pairs(reward.vocationItems) do
	vocationReward:uid(index)
end
vocationReward:register()
