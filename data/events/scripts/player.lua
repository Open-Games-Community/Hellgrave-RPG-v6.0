CONTAINER_WEIGHT_CHECK = true -- true = enable / false = disable
CONTAINER_WEIGHT_MAX = 1000000 -- 1000000 = 10k = 10000.00 oz

local storeItemID = {
	-- registered item ids here are not tradable with players
	-- these items can be set to moveable at items.xml
	-- 500 charges exercise weapons
	32384, -- exercise sword
	32385, -- exercise axe
	32386, -- exercise club
	32387, -- exercise bow
	32388, -- exercise rod
	32389, -- exercise wand

	-- 50 charges exercise weapons
	32124, -- training sword
	32125, -- training axe
	32126, -- training club
	32127, -- training bow
	32128, -- training wand
	32129, -- training club

	-- magic gold and magic converter (activated/deactivated)
	32109, -- magic gold converter
	33299, -- magic gold converter
	26378, -- gold converter
	29020, -- gold converter

	-- foods
	35172, -- roasted wyvern wings
	35173, -- carrot pie
	35174, -- tropical marinated tiger
	35175, -- delicatessen salad
	35176, -- chilli con carniphila
	35177, -- svargrond salmon filet
	35178, -- carrion casserole
	35179, -- consecrated beef
	35180, -- overcooked noodles
}

-- Players cannot throw items on teleports if set to true
local blockTeleportTrashing = true

local titles = {
	{storageID = 14960, title = " Scout"},
	{storageID = 14961, title = " Sentinel"},
	{storageID = 14962, title = " Steward"},
	{storageID = 14963, title = " Warden"},
	{storageID = 14964, title = " Squire"},
	{storageID = 14965, title = " Warrior"},
	{storageID = 14966, title = " Keeper"},
	{storageID = 14967, title = " Guardian"},
	{storageID = 14968, title = " Sage"},
	{storageID = 14969, title = " Tutor"},
	{storageID = 14970, title = " Senior Tutor"},
	{storageID = 14971, title = " King"},
}

local function getTitle(uid)
	local player = Player(uid)
	if not player then return false end

	for i = #titles, 1, -1 do
		if player:getStorageValue(titles[i].storageID) == 1 then
			return titles[i].title
		end
	end

	return false
end

function Player:onBrowseField(position)
	return true
end

local function getHours(seconds)
	return math.floor((seconds/60)/60)
end

local function getMinutes(seconds)
	return math.floor(seconds/60)
end

local function getSeconds(seconds)
	return seconds%60
end

local function getTime(seconds)
	local hours, minutes = getHours(seconds), getMinutes(seconds)
	if (minutes > 59) then
		minutes = minutes-hours*60
	end

	if (minutes < 10) then
		minutes = "0" ..minutes
	end

	return hours..":"..minutes.. "h"
end

local function getTimeinWords(secs)
	local hours, minutes, seconds = getHours(secs), getMinutes(secs), getSeconds(secs)
	if (minutes > 59) then
		minutes = minutes-hours*60
	end

	local timeStr = ''

	if hours > 0 then
		timeStr = timeStr .. ' hours '
	end

	timeStr = timeStr .. minutes .. ' minutes and '.. seconds .. ' seconds.'

	return timeStr
end

function Player:onLook(thing, position, distance)
	local description = "You see "
	if thing:isItem() then
		if thing.actionid == 5640 then
			description = description .. "a honeyflower patch."
		elseif thing.actionid == 5641 then
			description = description .. "a banana palm."
		elseif thing.itemid >= ITEM_HEALTH_CASK_START and thing.itemid <= ITEM_HEALTH_CASK_END
		or thing.itemid >= ITEM_MANA_CASK_START and thing.itemid <= ITEM_MANA_CASK_END
		or thing.itemid >= ITEM_SPIRIT_CASK_START and thing.itemid <= ITEM_SPIRIT_CASK_END
		or thing.itemid >= ITEM_KEG_START and thing.itemid <= ITEM_KEG_END then
			description = description .. thing:getDescription(distance)
			local charges = thing:getCharges()
			if charges then
				description = string.format("%s\nIt has %d refillings left.", description, charges)
			end
		else
			description = description .. thing:getDescription(distance)
		end
	else
		description = description .. thing:getDescription(distance)
		if thing:isMonster() then
			local master = thing:getMaster()
			if master and table.contains({'mage familiar','warrior familiar','priest familiar','hunter familiar'},
																						thing:getName():lower()) then
				description = description..' (Master: ' .. master:getName() .. '). \z
				It will disappear in ' .. getTimeinWords(master:getStorageValue(Storage.FamiliarSummon) - os.time())
			end
		end
	end
	if thing:isCreature() then
		if thing:isPlayer() then
			description = string.format("%s\n Ancestral Rank: "..getRankTask(thing), description)
		end
	end
	if thing:isCreature() then
		if thing:isPlayer() then
			description = string.format("%s\nParangon Level: [%d]", description, thing:getStorageValue(Storage.Levels.Stats.Parangon))
		end
	end
	if thing:isCreature() then
		if thing:isPlayer() then
			description = string.format("%s\nChaos Level: [%d]", description, thing:getStorageValue(Storage.Levels.Stats.Chaos))
		end
	end
	if thing:isCreature() then
		if thing:isPlayer() then
			description = string.format("%s\nGear Score: +[%d]", description, thing:getStorageValue(Storage.Levels.Stats.GearScore))
		end
	end
	if thing:isCreature() then
		if thing:isPlayer() then
			description = string.format("%s\nPrestige: [%d]", description, thing:getStorageValue(Storage.Levels.Stats.Prestige))
		end
	end
	if thing:isCreature() then
		if thing:isPlayer() then
			description = string.format("%s\nMonster Hunter Level: [%d]", description, thing:getStorageValue(95007))
		end
	end

	if self:getGroup():getAccess() then
		if thing:isItem() then
			description = string.format("%s\nItem ID: %d", description, thing:getId())

			local actionId = thing:getActionId()
			if actionId ~= 0 then
				description = string.format("%s, Action ID: %d", description, actionId)
			end

			local uniqueId = thing:getAttribute(ITEM_ATTRIBUTE_UNIQUEID)
			if uniqueId > 0 and uniqueId < 65536 then
				description = string.format("%s, Unique ID: %d", description, uniqueId)
			end

			local itemType = thing:getType()

			local transformEquipId = itemType:getTransformEquipId()
			local transformDeEquipId = itemType:getTransformDeEquipId()
			if transformEquipId ~= 0 then
				description = string.format("%s\nTransforms to: %d (onEquip)", description, transformEquipId)
			elseif transformDeEquipId ~= 0 then
				description = string.format("%s\nTransforms to: %d (onDeEquip)", description, transformDeEquipId)
			end

			local decayId = itemType:getDecayId()
			if decayId ~= -1 then
				description = string.format("%s\nDecays to: %d", description, decayId)
			end

			local clientId = itemType:getClientId()
			if clientId then
				description = string.format("%s\nClient ID: %d", description, clientId)
			end

		elseif thing:isCreature() then
			local str = "%s\nHealth: %d / %d"
			if thing:isPlayer() and thing:getMaxMana() > 0 then
				str = string.format("%s, Mana: %d / %d", str, thing:getMana(), thing:getMaxMana())
			end
			description = string.format(str, description, thing:getHealth(), thing:getMaxHealth()) .. "."
		end

		description = string.format(
		"%s\nPosition: %d, %d, %d",
		description, position.x, position.y, position.z
		)

		if thing:isCreature() then
			if thing:isPlayer() then
				description = string.format("%s\nIP: %s.", description, Game.convertIpToString(thing:getIp()))
			end
		end
	end
	self:sendTextMessage(MESSAGE_LOOK, description)
end

function Player:onLookInBattleList(creature, distance)
	local description = "You see " .. creature:getDescription(distance)
	if creature:isMonster() then
		local master = creature:getMaster()
		local summons = {'mage familiar','warrior familiar','priest familiar','hunter familiar'}
		if master and table.contains(summons, creature:getName():lower()) then
			description = description..' (Master: ' .. master:getName() .. '). \z
				It will disappear in ' .. getTimeinWords(master:getStorageValue(Storage.FamiliarSummon) - os.time())
		end
	end
	if self:getGroup():getAccess() then
		local str = "%s\nHealth: %d / %d"
		if creature:isPlayer() and creature:getMaxMana() > 0 then
			str = string.format("%s, Mana: %d / %d", str, creature:getMana(), creature:getMaxMana())
		end
		description = string.format(str, description, creature:getHealth(), creature:getMaxHealth()) .. "."

		local position = creature:getPosition()
		description = string.format(
		"%s\nPosition: %d, %d, %d",
		description, position.x, position.y, position.z

		)

		if creature:isPlayer() then
			description = string.format("%s\nIP: %s", description, Game.convertIpToString(creature:getIp()))
		end
	end
	self:sendTextMessage(MESSAGE_LOOK, description)
end

function Player:onLookInTrade(partner, item, distance)
	self:sendTextMessage(MESSAGE_LOOK, "You see " .. item:getDescription(distance))
end

function Player:onLookInShop(itemType, count)
	return true
end

local config = {
	maxItemsPerSeconds = 1,
	exhaustTime = 2000,
}

if not pushDelay then
	pushDelay = { }
end

local function antiPush(self, item, count, fromPosition, toPosition, fromCylinder, toCylinder)
	if toPosition.x == CONTAINER_POSITION then
		return true
	end

	local tile = Tile(toPosition)
	if not tile then
		self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		return false
	end

	local cid = self:getId()
	if not pushDelay[cid] then
		pushDelay[cid] = {items = 0, time = 0}
	end

	pushDelay[cid].items = pushDelay[cid].items + 1

	local currentTime = os.mtime()
	if pushDelay[cid].time == 0 then
		pushDelay[cid].time = currentTime
	elseif pushDelay[cid].time == currentTime then
		pushDelay[cid].items = pushDelay[cid].items + 1
	elseif currentTime > pushDelay[cid].time then
		pushDelay[cid].time = 0
		pushDelay[cid].items = 0
	end

	if pushDelay[cid].items > config.maxItemsPerSeconds then
		pushDelay[cid].time = currentTime + config.exhaustTime
	end

	if pushDelay[cid].time > currentTime then
		self:sendCancelMessage("You can't move that item so fast.")
		return false
	end

	return true
end

function Player:onMoveItem(item, count, fromPosition, toPosition, fromCylinder, toCylinder)

	-- No move items with actionID = 100
	if item:getActionId() == NOT_MOVEABLE_ACTION then
		self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		return false
	end

	-- No move if item count > 20 items
	local tile = Tile(toPosition)
	if tile and tile:getItemCount() > 20 then
		self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		return false
	end

	-- No move parcel very heavy
	if CONTAINER_WEIGHT_CHECK and ItemType(item:getId()):isContainer()
	and item:getWeight() > CONTAINER_WEIGHT_MAX then
		self:sendCancelMessage("Your cannot move this item too heavy.")
		return false
	end

	-- Players cannot throw items on teleports
	if blockTeleportTrashing and toPosition.x ~= CONTAINER_POSITION then
		local thing = Tile(toPosition):getItemByType(ITEM_TYPE_TELEPORT)
		if thing then
			self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
			self:getPosition():sendMagicEffect(CONST_ME_POFF)
			return false
		end
	end

	-- Cults of Tibia begin
	local frompos = Position(33023, 31904, 14) -- Checagem
	local topos = Position(33052, 31932, 15) -- Checagem
	if self:getPosition():isInRange(frompos, topos) and item:getId() == 26397 then
		local tileBoss = Tile(toPosition)
		if tileBoss and tileBoss:getTopCreature() and tileBoss:getTopCreature():isMonster() then
			if tileBoss:getTopCreature():getName():lower() == 'the remorseless corruptor' then
				tileBoss:getTopCreature():addHealth(-17000)
				item:remove(1)
				if tileBoss:getTopCreature():getHealth() <= 300 then
					tileBoss:getTopCreature():remove()
					local monster = Game.createMonster('the corruptor of souls', toPosition)
					monster:registerEvent('CheckTile')
					if Game.getStorageValue('healthSoul') > 0 then
						monster:addHealth(-(monster:getHealth() - Game.getStorageValue('healthSoul')))
					end
					Game.setStorageValue('CheckTile', os.time()+30)
				end
			elseif tileBoss:getTopCreature():getName():lower() == 'the corruptor of souls' then
				Game.setStorageValue('CheckTile', os.time()+30)
				item:remove(1)
			end
		end
	end
	-- Cults of Tibia end

	-- SSA exhaust
	local exhaust = { }
	if toPosition.x == CONTAINER_POSITION and toPosition.y == CONST_SLOT_NECKLACE
	and item:getId() == ITEM_STONE_SKIN_AMULET then
		local pid = self:getId()
		if exhaust[pid] then
			self:sendCancelMessage(RETURNVALUE_YOUAREEXHAUSTED)
			return false
		else
			exhaust[pid] = true
			addEvent(function() exhaust[pid] = false end, 2000, pid)
			return true
		end
	end

	-- Store Inbox
	local containerIdFrom = fromPosition.y - 64
	local containerFrom = self:getContainerById(containerIdFrom)
	if (containerFrom) then
		if (containerFrom:getId() == ITEM_STORE_INBOX
		and toPosition.y >= 1 and toPosition.y <= 11 and toPosition.y ~= 3) then
			self:sendCancelMessage(RETURNVALUE_CONTAINERNOTENOUGHROOM)
			return false
		end
	end

	local containerTo = self:getContainerById(toPosition.y-64)
	if (containerTo) then
		if (containerTo:getId() == ITEM_STORE_INBOX) or (containerTo:getParent():isContainer() and containerTo:getParent():getId() == ITEM_STORE_INBOX and containerTo:getId() ~= ITEM_GOLD_POUCH) then
			self:sendCancelMessage(RETURNVALUE_CONTAINERNOTENOUGHROOM)
			return false
		end
		-- Gold Pouch
		if (containerTo:getId() == ITEM_GOLD_POUCH) then
			if (not (item:getId() == ITEM_CRYSTAL_COIN or item:getId() == ITEM_PLATINUM_COIN
			or item:getId() == ITEM_GOLD_COIN or item:getId() == ITEM_AMBER_COIN or item:getId() == ITEM_TOURNAMENT_COIN or item:getId() == ITEM_DEMONIAC_COIN)) then
				self:sendCancelMessage("You can move only money, amber coins, demoniac coins and tournament coins.")
				return false
			end
		end
	end


	-- Bath tube
	local toTile = Tile(toCylinder:getPosition())
	local topDownItem = toTile:getTopDownItem()
	if topDownItem and table.contains({ BATHTUB_EMPTY, BATHTUB_FILLED }, topDownItem:getId()) then
		return false
	end

	-- Handle move items to the ground
	if toPosition.x ~= CONTAINER_POSITION then
		return true
	end

	-- Check two-handed weapons
	if item:getTopParent() == self and bit.band(toPosition.y, 0x40) == 0 then
		local itemType, moveItem = ItemType(item:getId())
		if bit.band(itemType:getSlotPosition(), SLOTP_TWO_HAND) ~= 0 and toPosition.y == CONST_SLOT_LEFT then
			moveItem = self:getSlotItem(CONST_SLOT_RIGHT)
			if moveItem and itemType:getWeaponType() == WEAPON_DISTANCE and ItemType(moveItem:getId()):getWeaponType() == WEAPON_QUIVER then
				return true
			end
		elseif itemType:getWeaponType() == WEAPON_SHIELD and toPosition.y == CONST_SLOT_RIGHT then
			moveItem = self:getSlotItem(CONST_SLOT_LEFT)
			if moveItem and bit.band(ItemType(moveItem:getId()):getSlotPosition(), SLOTP_TWO_HAND) == 0 then
				return true
			end
		end

		if moveItem then
			local parent = item:getParent()
			if parent:getSize() == parent:getCapacity() then
				self:sendTextMessage(MESSAGE_FAILURE, Game.getReturnMessage(RETURNVALUE_CONTAINERNOTENOUGHROOM))
				return false
			else
				return moveItem:moveTo(parent)
			end
		end
	end

	-- Reward System
	if toPosition.x == CONTAINER_POSITION then
		local containerId = toPosition.y - 64
		local container = self:getContainerById(containerId)
		if not container then
			return true
		end

		-- Do not let the player insert items into either the Reward Container or the Reward Chest
		local itemId = container:getId()
		if itemId == ITEM_REWARD_CONTAINER or itemId == ITEM_REWARD_CHEST then
			self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
			return false
		end

		-- The player also shouldn't be able to insert items into the boss corpse
		local tileCorpse = Tile(container:getPosition())
		for index, value in ipairs(tileCorpse:getItems() or { }) do
			if value:getAttribute(ITEM_ATTRIBUTE_CORPSEOWNER) == 2^31 - 1 and value:getName() == container:getName() then
				self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
				return false
			end
		end
	end

	-- Do not let the player move the boss corpse.
	if item:getAttribute(ITEM_ATTRIBUTE_CORPSEOWNER) == 2^31 - 1 then
		self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		return false
	end

	-- Players cannot throw items on reward chest
	local tileChest = Tile(toPosition)
	if tileChest and tileChest:getItemById(ITEM_REWARD_CHEST) then
		self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		self:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	if tile and tile:getItemById(370) then -- Trapdoor
		self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		self:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	if not antiPush(self, item, count, fromPosition, toPosition, fromCylinder, toCylinder) then
		return false
	end

	return true
end

function Player:onItemMoved(item, count, fromPosition, toPosition, fromCylinder, toCylinder)
end

function Player:onMoveCreature(creature, fromPosition, toPosition)
	local player = creature:getPlayer()
	if player and onExerciseTraining[player:getId()] and self:getGroup():hasFlag(PlayerFlag_CanPushAllCreatures) == false then
		self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
	return false
	end
	return true
end

local function hasPendingReport(name, targetName, reportType)
	local f = io.open(string.format("data/reports/players/%s-%s-%d.txt", name, targetName, reportType), "r")
	if f then
		io.close(f)
		return true
	else
		return false
	end
end

function Player:onReportRuleViolation(targetName, reportType, reportReason, comment, translation)
	local name = self:getName()
	if hasPendingReport(name, targetName, reportType) then
		self:sendTextMessage(MESSAGE_REPORT, "Your report is being processed.")
		return
	end

	local file = io.open(string.format("data/reports/players/%s-%s-%d.txt", name, targetName, reportType), "a")
	if not file then
		self:sendTextMessage(MESSAGE_REPORT,
			"There was an error when processing your report, please contact a gamemaster.")
		return
	end

	io.output(file)
	io.write("------------------------------\n")
	io.write("Reported by: " .. name .. "\n")
	io.write("Target: " .. targetName .. "\n")
	io.write("Type: " .. reportType .. "\n")
	io.write("Reason: " .. reportReason .. "\n")
	io.write("Comment: " .. comment .. "\n")
	if reportType ~= REPORT_TYPE_BOT then
		io.write("Translation: " .. translation .. "\n")
	end
	io.write("------------------------------\n")
	io.close(file)
	self:sendTextMessage(MESSAGE_REPORT, string.format("Thank you for reporting %s. Your report \z
	will be processed by %s team as soon as possible.", targetName, configManager.getString(configKeys.SERVER_NAME)))
	return
end

function Player:onReportBug(message, position, category)
	if self:getAccountType() == ACCOUNT_TYPE_NORMAL then
		return false
	end

	local name = self:getName()
	local file = io.open("data/reports/bugs/" .. name .. " report.txt", "a")

	if not file then
		self:sendTextMessage(MESSAGE_REPORT,
			"There was an error when processing your report, please contact a gamemaster.")
		return true
	end

	io.output(file)
	io.write("------------------------------\n")
	io.write("Name: " .. name)
	if category == BUG_CATEGORY_MAP then
		io.write(" [Map position: " .. position.x .. ", " .. position.y .. ", " .. position.z .. "]")
	end
	local playerPosition = self:getPosition()
	io.write(" [Player Position: " .. playerPosition.x .. ", " .. playerPosition.y .. ", " .. playerPosition.z .. "]\n")
	io.write("Comment: " .. message .. "\n")
	io.close(file)

	self:sendTextMessage(MESSAGE_REPORT,
		"Your report has been sent to " .. configManager.getString(configKeys.SERVER_NAME) .. ".")
	return true
end

function Player:onTurn(direction)
	if self:getGroup():getAccess() and self:getDirection() == direction then
		local nextPosition = self:getPosition()
		nextPosition:getNextPosition(direction)

		self:teleportTo(nextPosition, true)
	end

	return true
end

function Player:onTradeRequest(target, item)
	local protectedArea = {
		fromFloorUn = Position(31126, 31427, 1),
		toFloorUn = Position(34149, 33794, 1),

		fromFloorDeux = Position(31126, 31427, 2),
		toFloorDeux = Position(34149, 33794, 2),

		fromFloorTrois = Position(31126, 31427, 3),
		toFloorTrois = Position(34149, 33794, 3),

		fromFloorQuatre = Position(31126, 31427, 4),
		toFloorQuatre = Position(34149, 33794, 4),

		fromFloorCinq = Position(31126, 31427, 5),
		toFloorCinq = Position(34149, 33794, 5),

		fromFloorSix = Position(31126, 31427, 6),
		toFloorSix = Position(34149, 33794, 6),

		fromFloorSept = Position(31126, 31427, 7),
		toFloorSept = Position(34149, 33794, 7),

		fromFloorHuit = Position(31126, 31427, 8),
		toFloorHuit = Position(34149, 33794, 8),

		fromFloorNeuf = Position(31126, 31427, 9),
		toFloorNeuf = Position(34149, 33794, 9),

		fromFloorDix = Position(31126, 31427, 10),
		toFloorDix = Position(34149, 33794, 10),

		fromFloorOnze = Position(31126, 31427, 11),
		toFloorOnze = Position(34149, 33794, 11),

		fromFloorDouze = Position(31126, 31427, 12),
		toFloorDouze = Position(34149, 33794, 12),

		fromFloorTreize = Position(31126, 31427, 13),
		toFloorTreize = Position(34149, 33794, 13),

		fromFloorQuatorze = Position(31126, 31427, 14),
		toFloorQuatorze = Position(34149, 33794, 14),

		fromFloorQuinze = Position(31126, 31427, 15),
		toFloorQuinze = Position(34149, 33794, 15),

	}
	local position
    position = self:getPosition()
    if position and position:isInRange(protectedArea.fromFloorUn, protectedArea.toFloorUn) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorDeux, protectedArea.toFloorDeux) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorTrois, protectedArea.toFloorTrois) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorQuatre, protectedArea.toFloorQuatre) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorCinq, protectedArea.toFloorCinq) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorSix, protectedArea.toFloorSix) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorSept, protectedArea.toFloorSept) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorHuit, protectedArea.toFloorHuit) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorNeuf, protectedArea.toFloorNeuf) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorDix, protectedArea.toFloorDix) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorOnze, protectedArea.toFloorOnze) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorDouze, protectedArea.toFloorDouze) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorTreize, protectedArea.toFloorTreize) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorQuatorze, protectedArea.toFloorQuatorze) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
	elseif position and position:isInRange(protectedArea.fromFloorQuinze, protectedArea.toFloorQuinze) then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot trade here.")
        return false
    end
	-- No trade items with actionID = 100
	if item:getActionId() == NOT_MOVEABLE_ACTION then
		return false
	end

	if isInArray(storeItemID,item.itemid) then
		return false
	end
	return true
end

function Player:onTradeAccept(target, item, targetItem)
	self:closeImbuementWindow()
	target:closeImbuementWindow()
	return true
end

local soulCondition = Condition(CONDITION_SOUL, CONDITIONID_DEFAULT)
soulCondition:setTicks(4 * 60 * 1000)
soulCondition:setParameter(CONDITION_PARAM_SOULGAIN, 1)

local function useStamina(player)
	local staminaMinutes = player:getStamina()
	if staminaMinutes == 0 then
		return
	end

	local playerId = player:getId()
	local currentTime = os.time()
	local timePassed = currentTime - nextUseStaminaTime[playerId]
	if timePassed <= 0 then
		return
	end

	if timePassed > 60 then
		if staminaMinutes > 2 then
			staminaMinutes = staminaMinutes - 2
		else
			staminaMinutes = 0
		end
		nextUseStaminaTime[playerId] = currentTime + 120
	else
		staminaMinutes = staminaMinutes - 1
		nextUseStaminaTime[playerId] = currentTime + 60
	end
	player:setStamina(staminaMinutes)
end

local function useStaminaXp(player)
	local staminaMinutes = player:getExpBoostStamina() / 60
	if staminaMinutes == 0 then
		return
	end

	local playerId = player:getId()
	local currentTime = os.time()
	local timePassed = currentTime - nextUseXpStamina[playerId]
	if timePassed <= 0 then
		return
	end

	if timePassed > 60 then
		if staminaMinutes > 2 then
			staminaMinutes = staminaMinutes - 2
		else
			staminaMinutes = 0
		end
		nextUseXpStamina[playerId] = currentTime + 120
	else
		staminaMinutes = staminaMinutes - 1
		nextUseXpStamina[playerId] = currentTime + 60
	end
	player:setExpBoostStamina(staminaMinutes * 60)
end

local worldMonsterKiller = {
	maxLevel = 100000,
	experiencePerLevel = 500, 
	storage = {
		level = 95007,
		experience = 95008
	},
}

local function worldMonstersGiveExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function worldMonstersGiveExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local worldMonsterLevel = player:getStorageValue(worldMonsterKiller.storage.level)
    worldMonsterLevel = worldMonsterLevel >= 0 and worldMonsterLevel or 0
 
    local worldMonsterExperience = player:getStorageValue(worldMonsterKiller.storage.experience)
    worldMonsterExperience = worldMonsterExperience >= 0 and worldMonsterExperience or 0
 
    
    worldMonsterExperience = worldMonsterExperience + amount
 
    if worldMonsterLevel < worldMonsterKiller.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = worldMonsterLevel * worldMonsterKiller.experiencePerLevel
            if worldMonsterExperience >= ExperienceRequiredForNextLevel then
                worldMonsterExperience = worldMonsterExperience - ExperienceRequiredForNextLevel
                worldMonsterLevel = worldMonsterLevel + 1
                local text = "You have advanced to Monster Hunter level " .. worldMonsterLevel .. "."
                if worldMonsterLevel == worldMonsterKiller.maxLevel then
                    text = "You have reached the maximum Monster Hunter level."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (worldMonsterLevel == worldMonsterKiller.maxLevel)
    end
 
    player:setStorageValue(worldMonsterKiller.storage.level, worldMonsterLevel)
    player:setStorageValue(worldMonsterKiller.storage.experience, worldMonsterExperience)
    return true
end

function Player:onGainExperience(source, exp, rawExp)
	local experienceRan = exp / 4.00
	if not source or source:isPlayer() then
		return exp
	end
	if worldMonstersGiveExperience(self:getId(), experienceRan) then
		self:sendTextMessage(MESSAGE_INFO_DESCR, "You gained "..experienceRan.." experience on World Monster Level.")
	end
	if self:getStorageValue(6000) >= os.time() then
        exp = exp * 2.00
    end
	if self:getStorageValue(113284) >= os.time() then
        exp = exp * 2.00
    end
	if self:getStorageValue(114337) >= os.time() then
        exp = exp * 2.50
    end

	-- Soul regeneration
	local vocation = self:getVocation()
	if self:getSoul() < vocation:getMaxSoul() and exp >= self:getLevel() then
		soulCondition:setParameter(CONDITION_PARAM_SOULTICKS, vocation:getSoulGainTicks())
		self:addCondition(soulCondition)
	end

	-- Experience Stage Multiplier
	local expStage = getRateFromTable(experienceStages, self:getLevel(), configManager.getNumber(configKeys.RATE_EXP))
	exp = exp * expStage
	baseExp = rawExp * expStage
	if Game.getStorageValue(GlobalStorage.XpDisplayMode) > 0 then
		displayRate = expStage
	else
		displayRate = 1
	end

	-- Prey Bonus
	for slot = CONST_PREY_SLOT_FIRST, CONST_PREY_SLOT_THIRD do
		if (self:getPreyCurrentMonster(slot) == source:getName()
		and self:getPreyBonusType(slot) == CONST_BONUS_XP_BONUS) then
			exp = exp + math.floor(exp * (self:getPreyBonusValue(slot) / 100))
			break
		end
		if (self:getPreyTimeLeft(slot) / 60) > 0 then
			preyTimeLeft(self, slot) -- slot consumption, outside of the mosnter check
		end
	end

	-- Store Bonus
	useStaminaXp(self) -- Use store boost stamina

	local Boost = self:getExpBoostStamina()
	local stillHasBoost = Boost > 0
	local storeXpBoostAmount = stillHasBoost and self:getStoreXpBoost() or 0

	self:setStoreXpBoost(storeXpBoostAmount)

	if (storeXpBoostAmount > 0) then
		exp = exp + (baseExp * (storeXpBoostAmount/100)) -- Exp Boost
	end

	-- Stamina Bonus
	if configManager.getBoolean(configKeys.STAMINA_SYSTEM) then
		useStamina(self)
		local staminaMinutes = self:getStamina()
		if staminaMinutes > 2340 and self:isPremium() then
			exp = exp * 1.5
			self:setStaminaXpBoost(150)
		elseif staminaMinutes <= 840 then
			exp = exp * 0.5 --TODO destroy loot of people with 840- stamina
			self:setStaminaXpBoost(50)
		else
			self:setStaminaXpBoost(100)
		end
	end

	-- Boosted creature
	if source:getName():lower() == (Game.getBoostedCreature()):lower() then
		exp = exp * 2
	end

	-- Event scheduler
	if SCHEDULE_EXP_RATE ~= 100 then
		exp = (exp * SCHEDULE_EXP_RATE)/100
	end
	self:setBaseXpGain(displayRate * 100)
	return exp
end

function Player:onLoseExperience(exp)
	return exp
end

function Player:onGainSkillTries(skill, tries)
	-- Dawnport skills limit
	if isSkillGrowthLimited(self, skill) then
		return 0
	end
	if APPLY_SKILL_MULTIPLIER == false then
		return tries
	end

	-- Event scheduler skill rate
	if SCHEDULE_SKILL_RATE ~= 100 then
		tries = (tries * SCHEDULE_SKILL_RATE)/100
	end

	local skillRate = configManager.getNumber(configKeys.RATE_SKILL)
	local magicRate = configManager.getNumber(configKeys.RATE_MAGIC)

	if(skill == SKILL_MAGLEVEL) then -- Magic getLevel
		return tries * getRateFromTable(magicLevelStages, self:getBaseMagicLevel(), magicRate)
	end

	return tries * getRateFromTable(skillsStages, self:getSkillLevel(skill), skillRate)
end

function Player:onRemoveCount(item)
	self:sendWaste(item:getId())
end

function Player:onRequestQuestLog()
	self:sendQuestLog()
end

function Player:onRequestQuestLine(questId)
	self:sendQuestLine(questId)
end

function Player:onStorageUpdate(key, value, oldValue, currentFrameTime)
	self:updateStorage(key, value, oldValue, currentFrameTime)
end

function Player:onCombat(target, item, primaryDamage, primaryType, secondaryDamage, secondaryType)
	if not item or not target then
		return primaryDamage, primaryType, secondaryDamage, secondaryType
	end

	if ItemType(item:getId()):getWeaponType() == WEAPON_AMMO then
		if isInArray({ITEM_OLD_DIAMOND_ARROW, ITEM_DIAMOND_ARROW}, item:getId()) then
			return primaryDamage, primaryType, secondaryDamage, secondaryType
		else
			item = self:getSlotItem(CONST_SLOT_LEFT)
		end
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:onChangeZone(zone)
	if self:isPremium() then
		local event = staminaBonus.eventsPz[self:getId()]

		if configManager.getBoolean(configKeys.STAMINA_PZ) then
			if zone == ZONE_PROTECTION then
				if self:getStamina() < 2520 then
					if not event then
						local delay = configManager.getNumber(configKeys.STAMINA_ORANGE_DELAY)
						if self:getStamina() > 2400 and self:getStamina() <= 2520 then
							delay = configManager.getNumber(configKeys.STAMINA_GREEN_DELAY)
						end

						self:sendTextMessage(MESSAGE_STATUS,
                                             string.format("In protection zone. \
                                                           Every %i minutes, gain %i stamina.",
                                                           delay, configManager.getNumber(configKeys.STAMINA_PZ_GAIN)
                                             )
                        )
						staminaBonus.eventsPz[self:getId()] = addEvent(addStamina, delay * 60 * 1000, nil, self:getId(), delay * 60 * 1000)
					end
				end
			else
				if event then
					self:sendTextMessage(MESSAGE_STATUS, "You are no longer refilling stamina, \z
                                         since you left a regeneration zone.")
					stopEvent(event)
					staminaBonus.eventsPz[self:getId()] = nil
				end
			end
			return not configManager.getBoolean(configKeys.STAMINA_PZ)
		end
	end
	return false
end


