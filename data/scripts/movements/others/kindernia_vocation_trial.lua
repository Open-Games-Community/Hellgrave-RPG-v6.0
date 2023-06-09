local tutorialEffects = {
	CONST_ME_TUTORIALARROW,
	CONST_ME_TUTORIALSQUARE
}

local vocationTrials = {
	-- Mage trial
	[21005] = {
		tutorialId = 5,
		effectPosition = {x = 33201, y = 32202, z = 6},
		storage = Storage.Kindernia.Sorcerer,
		message = "As a Mage, you can use the following spells: Exura infir, Exori infir vis, Exevo infir flam hur.",
		vocation = {
			id = VOCATION.ID.MAGE,
			name = "sorcerer",
			outfit = {
				lookType = {
					[PLAYERSEX_FEMALE] = 138,
					[PLAYERSEX_MALE] = 130
				},
				lookHead = 95,
				lookBody = 109,
				lookLegs = 112,
				lookFeet = 128
			}
		},
		items = {
			{id = 23719, amount = 1, slot = CONST_SLOT_LEFT}, -- The scorcher
			{id = 23771, amount = 1, slot = CONST_SLOT_RIGHT}, -- Spellbook of the novice
			{id = 8704, amount = 2, storage = Storage.Kindernia.SorcererHealthPotion, limit = 1}, -- Health potion
			{id = 7620, amount = 10, storage = Storage.Kindernia.SorcererManaPotion, limit = 1}, -- Mana potion
			{id = 23723, amount = 2, storage = Storage.Kindernia.SorcererLightestMissile, limit = 1}, -- Lightest missile runes
			{id = 23722, amount = 2, storage = Storage.Kindernia.SorcererLightStoneShower, limit = 1}, -- Light stone shower runes
			{id = 2666, amount = 1, storage = Storage.Kindernia.SorcererMeat, limit = 1} -- Meat
		}
	},
	-- Priest trial
	[21006] = {
		tutorialId = 6,
		effectPosition = {x = 33207, y = 32202, z = 6},
		storage = Storage.Kindernia.Druid,
		message = "As a Priest, you can use these spells: Exori infir tera, Exevo infir frigo hur, Exura infir.",
		vocation = {
			id = VOCATION.ID.PRIEST,
			name = "priest",
			outfit = {
				lookType = {
					[PLAYERSEX_FEMALE] = 138,
					[PLAYERSEX_MALE] = 130
				},
				lookHead = 95,
				lookBody = 123,
				lookLegs = 9,
				lookFeet = 118
			}
		},
		items = {
			{id = 23721, amount = 1, slot = CONST_SLOT_LEFT}, -- The chiller
			{id = 23771, amount = 1, slot = CONST_SLOT_RIGHT}, -- Spellbook of the novice
			{id = 8704, amount = 2, storage = Storage.Kindernia.DruidHealthPotion, limit = 1}, -- Health potion
			{id = 7620, amount = 10, storage = Storage.Kindernia.DruidManaPotion, limit = 1}, -- Mana potion
			{id = 23723, amount = 2, storage = Storage.Kindernia.DruidLightestMissile, limit = 1}, -- Lightest missile runes
			{id = 23722, amount = 2, storage = Storage.Kindernia.DruidLightStoneShower, limit = 1}, -- Light stone shower runes
			{id = 2666, amount = 1, storage = Storage.Kindernia.DruidMeat, limit = 1} -- Meat
		}
	},
	-- Hunter trial
	[25007] = {
		tutorialId = 4,
		effectPosition = {x = 33207, y = 32198, z = 6},
		storage = Storage.Kindernia.Paladin,
		message = "As a hunter, you can use the following spells: Exura infir, Exevo infir con.",
		vocation = {
			id = VOCATION.ID.HUNTER,
			name = "hunter",
			outfit = {
				lookType = {
					[PLAYERSEX_FEMALE] = 137,
					[PLAYERSEX_MALE] = 129
				},
				lookHead = 95,
				lookBody = 117,
				lookLegs = 98,
				lookFeet = 78
			}
		},
		items = {
			{id = 2456, amount = 1, slot = CONST_SLOT_LEFT}, -- Bow
			{id = 40397, amount = 1, slot = CONST_SLOT_RIGHT}, -- Quiver
			{id = 23839, amount = 100}, -- Simple arrow
			{id = 8704, amount = 7, storage = Storage.Kindernia.PaladinHealthPotion, limit = 2}, -- Health potion
			{id = 7620, amount = 5, storage = Storage.Kindernia.PaladinManaPotion, limit = 2}, -- Mana potion
			{id = 23723, amount = 1, storage = Storage.Kindernia.PaladinLightestMissile, limit = 1}, -- Lightest missile rune
			{id = 23722, amount = 1, storage = Storage.Kindernia.PaladinLightStoneShower, limit = 1}, -- Light stone shower rune
			{id = 2666, amount = 1, storage = Storage.Kindernia.PaladinMeat, limit = 1} -- Meat
		}
	},
	-- Warrior trial
	[25008] = {
		tutorialId = 3,
		effectPosition = {x = 33201, y = 32198, z = 6},
		storage = Storage.Kindernia.Knight,
		message = "As a Warrior, you can use the following spells: Exura infir ico.",
		vocation = {
			id = VOCATION.ID.WARRIOR,
			name = "Warrior",
			outfit = {
				lookType = {
					[PLAYERSEX_FEMALE] = 139,
					[PLAYERSEX_MALE] = 131
				},
				lookHead = 95,
				lookBody = 38,
				lookLegs = 94,
				lookFeet = 115
			}
		},
		items = {
			{id = 2379, amount = 1, slot = CONST_SLOT_LEFT}, -- Dagger
			{id = 2512, amount = 1, slot = CONST_SLOT_RIGHT}, -- Wooden shield
			{id = 8704, amount = 10, storage = Storage.Kindernia.KnightHealthPotion, limit = 2}, -- Health potion
			{id = 7620, amount = 2, storage = Storage.Kindernia.KnightManaPotion, limit = 2}, -- Mana potion
			{id = 2666, amount = 1, storage = Storage.Kindernia.KnightMeat, limit = 2} -- Meat
		}
	}
}

-- First items, added only in first step and having no vocation
local function addFirstItems(player)
	local firstItems = {
		slots = {
			[CONST_SLOT_HEAD] = Game.createItem(2461),
			[CONST_SLOT_ARMOR] = Game.createItem(2651),
			[CONST_SLOT_LEGS] = Game.createItem(2649),
			[CONST_SLOT_FEET] = Game.createItem(2643)
		}
	}
	for slot, item in pairs(firstItems.slots) do
		local ret = player:addItemEx(item, false, sot)
		if not ret then
			player:addItemEx(item, false, INDEX_WHEREEVER, 0)
		end
	end
end

-- On step in tiles, for first step, second and third or more steps
local function tileStep(player, trial)
	-- First Step
	local vocationId = player:getVocation():getId()
	if vocationId == VOCATION.ID.NONE then
		for i = 1, #tutorialEffects do
			Position(trial.effectPosition):sendMagicEffect(tutorialEffects[i])
		end
		player:sendTutorial(trial.tutorialId)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		"As this is the first time you try out a vocation, the Guild has kitted you out. " .. trial.message)
		addFirstItems(player)
	-- Second step
	elseif player:getStorageValue(trial.storage) == -1 and vocationId ~= VOCATION.ID.NONE then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("As this is your first time as a \z
		".. trial.vocation.name ..', you received a few extra items. ' .. trial.message))
		player:setStorageValue(trial.storage, 1)
		player:sendTutorial(trial.tutorialId)
	-- Other steps
	elseif player:getStorageValue(trial.storage) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You have received the weapons of a \z
		".. trial.vocation.name ..'. ' .. trial.message))
	end
	return true
end

-- Remove vocation trial equipment items
local function removeItems(player)
	local equipmentItemIds = {
		23719,	-- The scorcher
		23721,	-- The chiller
		23771,	-- Spellbook of the novice
		2456,	-- Bow
		2379,	-- Dagger
		2512,	-- Wooden shield
		40397	-- Quiver
	}
	for i = 1, #equipmentItemIds do
		local equipmentItemAmount = player:getItemCount(equipmentItemIds[i])
		if equipmentItemAmount > 0 then
			player:removeItem(equipmentItemIds[i], equipmentItemAmount)
		end
	end
end

-- Add items to player from trial items data
local function addItems(player, items)
	local backpack = player:getSlotItem(CONST_SLOT_BACKPACK)
	for i = 1, #items do
		local extra
		if not items[i].slot then
			extra = true
		else
			local equipped = player:getSlotItem(items[i].slot)
			if equipped and backpack then
				equipped:moveTo(backpack)
			end
		end
		local giveItem = true
		if items[i].limit and items[i].storage then
			local given = math.max(player:getStorageValue(items[i].storage), 0)
			if given >= items[i].limit then
				giveItem = false
			else
				player:setStorageValue(items[i].storage, given + 1)
			end
		end
		if giveItem then
			if extra then
				local itemType = ItemType(items[i].id)
				if itemType:getWeaponType() == WEAPON_AMMO and isInArray({AMMO_ARROW, AMMO_BOLT}, itemType:getAmmoType()) then
					local equipment = player:getSlotItem(CONST_SLOT_RIGHT)
					local equipmentType = ItemType(equipment.itemid)
					if equipment and equipmentType:getWeaponType() == WEAPON_QUIVER then
						equipment:addItem(items[i].id, items[i].amount)
					end
				else
					player:addItemEx(Game.createItem(items[i].id, items[i].amount), true, CONST_SLOT_WHEREEVER)
				end
			else
				player:addItemEx(Game.createItem(items[i].id, items[i].amount), true, items[i].slot)
			end
		end
	end
end

-- Set player outfit from trial outfit data
local function setOutfit(player, outfit)
	player:setOutfit({
		lookTypeEx = 0,
		lookType = outfit.lookType[player:getSex()],
		lookHead = outfit.lookHead,
		lookBody = outfit.lookBody,
		lookLegs = outfit.lookLegs,
		lookFeet = outfit.lookFeet,
		lookAddons = 0,
		lookMount = 0
	})
end

-- Dawnport trial tiles step event
local kinderniaVocationTrial = MoveEvent()

function kinderniaVocationTrial.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local trial = vocationTrials[item.actionid]
	if trial then
		-- Center room position
		local centerPosition = Position(33204, 32200, 6)
		if centerPosition:getDistance(fromPosition) < centerPosition:getDistance(position) then
			-- Blocks the vocation trial if same vocation or after level 30
			if player:getVocation():getId() == trial.vocation.id then
				return true
			end
			-- On step in the tile
			tileStep(player, trial)
			-- Change to new vocation, convert magic level and skills and set proper stats
			player:changeVocation(trial.vocation.id)
			-- Remove vocation trial equipment items
			removeItems(player)
			-- Add player item
			addItems(player, trial.items)
			-- Change outfit
			setOutfit(player, trial.vocation.outfit)
			player:getPosition():sendMagicEffect(CONST_ME_BLOCKHIT)
			return true
		end
	end
	return true
end

for index, value in pairs(vocationTrials) do
	kinderniaVocationTrial:aid(index)
end

kinderniaVocationTrial:register()

