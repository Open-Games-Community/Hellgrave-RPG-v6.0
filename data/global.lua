math.randomseed(os.time())
dofile('data/lib/lib.lua')


NOT_MOVEABLE_ACTION = 100
PARTY_PROTECTION = 1 -- Set to 0 to disable.
ADVANCED_SECURE_MODE = 1 -- Set to 0 to disable.

STORAGEVALUE_PROMOTION = 30018

SERVER_NAME = configManager.getString(configKeys.SERVER_NAME)

-- Bestiary charm
GLOBAL_CHARM_GUT = 0
GLOBAL_CHARM_SCAVENGE = 0

--WEATHER
weatherConfig = {
	groundEffect = CONST_ME_LOSEENERGY,
	fallEffect = 29,
	thunderEffect = configManager.getBoolean(configKeys.WEATHER_THUNDER),
	minDMG = 5,
	maxDMG = 15
}

lavaConfig = {
	groundEffect = 60,
	fallEffect = 4,
	thunderEffect = configManager.getBoolean(configKeys.WEATHER_THUNDER),
	minDMG = 25,
	maxDMG = 50
}

-- Event Schedule
SCHEDULE_LOOT_RATE = 100
SCHEDULE_EXP_RATE = 100
SCHEDULE_SKILL_RATE = 100

-- MARRY
PROPOSED_STATUS = 1
MARRIED_STATUS = 2
PROPACCEPT_STATUS = 3
LOOK_MARRIAGE_DESCR = TRUE
ITEM_WEDDING_RING = 2121
ITEM_ENGRAVED_WEDDING_RING = 10502

-- Scarlett Etzel
SCARLETT_MAY_TRANSFORM = 0
SCARLETT_MAY_DIE = 0

ropeSpots = {384, 418, 8278, 8592, 13189, 14436, 15635, 19518, 26019, 24621, 24622, 24623, 24624}
specialRopeSpots = { 14435 }

-- Impact Analyser
-- Every 2 seconds
updateInterval = 2
-- Healing
-- Global table to insert data
healingImpact = {}
-- Damage
-- Global table to insert data
damageImpact = {}

-- New prey => preyTimeLeft
nextPreyTime = {}

startupGlobalStorages = {
	GlobalStorage.TheAncientTombs.AshmunrahSwitchesGlobalStorage,
	GlobalStorage.TheAncientTombs.DiprathSwitchesGlobalStorage,
	GlobalStorage.TheAncientTombs.ThalasSwitchesGlobalStorage,
	GlobalStorage.HeroRathleton.FirstMachines,
	GlobalStorage.HeroRathleton.SecondMachines,
	GlobalStorage.HeroRathleton.ThirdMachines,
	GlobalStorage.HeroRathleton.DeepRunning,
	GlobalStorage.HeroRathleton.HorrorRunning,
	GlobalStorage.HeroRathleton.LavaRunning,
	GlobalStorage.HeroRathleton.MaxxenRunning,
	GlobalStorage.HeroRathleton.LavaCounter,
	GlobalStorage.HeroRathleton.FourthMachines,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal1,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal2,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal3,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal4,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal5,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal6,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal7,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal8,
	GlobalStorage.FerumbrasAscendant.Crystals.AllCrystals,
	GlobalStorage.FerumbrasAscendant.FerumbrasEssence,
	GlobalStorage.Feroxa.Active,
	GlobalStorage.FerumbrasAscendant.Habitats.AllHabitats,
	GlobalStorage.FerumbrasAscendant.Elements.Active,
	GlobalStorage.FerumbrasAscendant.Elements.First,
	GlobalStorage.FerumbrasAscendant.Elements.Second,
	GlobalStorage.FerumbrasAscendant.Elements.Third,
	GlobalStorage.FerumbrasAscendant.Elements.Done
}

do -- Event Schedule rates
	local lootRate = Game.getEventSLoot()
	if lootRate ~= 100 then
		SCHEDULE_LOOT_RATE = lootRate
	end

	local expRate = Game.getEventSExp()
	if expRate ~= 100 then
		SCHEDULE_EXP_RATE = expRate
	end

	local skillRate = Game.getEventSSkill()
	if skillRate ~= 100 then
		SCHEDULE_SKILL_RATE = skillRate
	end
end

table.contains = function(array, value)
	for _, targetColumn in pairs(array) do
		if targetColumn == value then
			return true
		end
	end
	return false
end

string.split = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v
	end
	return res
end

string.splitTrimmed = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v:trim()
	end
	return res
end

string.trim = function(str)
	return str:match'^()%s*$' and '' or str:match'^%s*(.*%S)'
end

-- Stamina
if nextUseStaminaTime == nil then
	nextUseStaminaTime = {}
end

if nextUseStaminaPrey == nil then
	nextUseStaminaPrey = {}
end

if nextUseXpStamina == nil then
	nextUseXpStamina = {}
end

if lastItemImbuing == nil then
	lastItemImbuing = {}
end

if nextDelayPreyReroll == nil then
	nextDelayPreyReroll = {}
end

-- Delay potion
if not playerDelayPotion then
	playerDelayPotion = {}
end

-- Increase Stamina when Attacking Trainer
staminaBonus = {
	target = 'Training Machine',
	period = configManager.getNumber(configKeys.STAMINA_TRAINER_DELAY) * 60 * 1000, -- time on miliseconds trainers
	bonus = configManager.getNumber(configKeys.STAMINA_TRAINER_GAIN), -- gain stamina trainers
	eventsTrainer = {}, -- stamina in trainers
	eventsPz = {} -- stamina in Pz
}
dofile('data/events/scripts/system.lua')
function addStamina(playerId, ...)
	-- Creature:onTargetCombat
	if playerId then
		local player = Player(playerId)
		if configManager.getBoolean(configKeys.STAMINA_TRAINER) then
			if not player then
				staminaBonus.eventsTrainer[playerId] = nil
			else
				local target = player:getTarget()
				if not target or target:getName() ~= staminaBonus.target then
					staminaBonus.eventsTrainer[playerId] = nil
				else
					player:setStamina(player:getStamina() + staminaBonus.bonus)
					player:sendTextMessage(MESSAGE_STATUS,
																string.format("%i of stamina has been refilled.",
																configManager.getNumber(configKeys.STAMINA_TRAINER_GAIN)))
					staminaBonus.eventsTrainer[playerId] = addEvent(addStamina, staminaBonus.period, playerId)
				end
			end
		end
		return not configManager.getBoolean(configKeys.STAMINA_TRAINER)
	end
	-- Player:onChangeZone
	local localPlayerId, delay = ...

	if localPlayerId and delay then
		if not staminaBonus.eventsPz[localPlayerId] then return false end
		stopEvent(staminaBonus.eventsPz[localPlayerId])

		local player = Player(localPlayerId)
		if not player then
			staminaBonus.eventsPz[localPlayerId] = nil
			return false
		end

		local actualStamina = player:getStamina()

		if actualStamina > 2400 and actualStamina < 2520 then
			delay = configManager.getNumber(configKeys.STAMINA_GREEN_DELAY) * 60 * 1000 -- Stamina Green 12 min.
		elseif actualStamina == 2520 then
			player:sendTextMessage(MESSAGE_STATUS, "You are no longer refilling stamina, \z
                                                         because your stamina is already full.")
			staminaBonus.eventsPz[localPlayerId] = nil
			return false
		end

		player:setStamina(player:getStamina() + configManager.getNumber(configKeys.STAMINA_PZ_GAIN))
		player:sendTextMessage(MESSAGE_STATUS,
                               string.format("%i of stamina has been refilled.",
                                             configManager.getNumber(configKeys.STAMINA_PZ_GAIN)
                               )
        )
		staminaBonus.eventsPz[localPlayerId] = addEvent(addStamina, delay, nil, localPlayerId, delay)
		return true
	end
	return false
end

-- Exercise Training
onExerciseTraining = {}
function capAll(str)
    local newStr = ""; wordSeparate = string.gmatch(str, "([^%s]+)")
    for v in wordSeparate do
        v = v:gsub("^%l", string.upper)
        if newStr ~= "" then
            newStr = newStr.." "..v
        else
            newStr = v
        end
    end
    return newStr
end

-- Upgrader System v2.0
function getItemAttribute(uid, key)
	local i = ItemType(Item(uid):getId())
	local string_attributes = {
	  [ITEM_ATTRIBUTE_NAME] = i:getName(),
	  [ITEM_ATTRIBUTE_ARTICLE] = i:getArticle(),
	  [ITEM_ATTRIBUTE_PLURALNAME] = i:getPluralName(),
	  ["name"] = i:getName(),
	  ["article"] = i:getArticle(),
	  ["pluralname"] = i:getPluralName()
	}
 
	local numeric_attributes = {
	  [ITEM_ATTRIBUTE_WEIGHT] = i:getWeight(),
	  [ITEM_ATTRIBUTE_ATTACK] = i:getAttack(),
	  [ITEM_ATTRIBUTE_DEFENSE] = i:getDefense(),
	  [ITEM_ATTRIBUTE_EXTRADEFENSE] = i:getExtraDefense(),
	  [ITEM_ATTRIBUTE_ARMOR] = i:getArmor(),
	  [ITEM_ATTRIBUTE_HITCHANCE] = i:getHitChance(),
	  [ITEM_ATTRIBUTE_SHOOTRANGE] = i:getShootRange(),
	  ["weight"] = i:getWeight(),
	  ["attack"] = i:getAttack(),
	  ["defense"] = i:getDefense(),
	  ["extradefense"] = i:getExtraDefense(),
	  ["armor"] = i:getArmor(),
	  ["hitchance"] = i:getHitChance(),
	  ["shootrange"] = i:getShootRange()
	}
	
	local attr = Item(uid):getAttribute(key)
	if tonumber(attr) then
	  if numeric_attributes[key] then
		return attr ~= 0 and attr or numeric_attributes[key]
	  end
	else
	  if string_attributes[key] then
		if attr == "" then
		  return string_attributes[key]
		end
	  end
	end
 return attr
 end
 
 function doItemSetAttribute(uid, key, value)
	return Item(uid):setAttribute(key, value)
 end
 
 function doItemEraseAttribute(uid, key)
	return Item(uid):removeAttribute(key)
 end








---------------------


 --- CRAFTING LEG ---
 CRAFTING = {
    -- Magic Helmet
    {
        patternList = {
            {{42075, 100}, {40807, 1}, {42074, 100}},
            {{42073, 3}, {42085, 1}, {42106, 25}},
            {{42081, 10}, {12540, 1}, {12570, 1}}
        },
        output = {42028, 1}
    },
    -- Elder Shield
    {
        patternList = {
			{{24776, 1}, {40705, 1}, {12566, 1}},
            {{42106, 25}, {38840, 1}, {25315, 5}},
            {{42083, 3}, {40744, 5}, {12671, 10}}
        },
        output = {42026, 1}
    },
	-- Burnished Helm of Might
	{
        patternList = {
			{{42075, 100}, {40807, 1}, {42074, 100}},
            {{12565, 1}, {42085, 1}, {42089, 1}},
            {{42073, 2}, {32446, 100}, {25316, 20}}
        },
        output = {42029, 1}
    },
	-- Amber Chestplate
	{
        patternList = {
			{{42073, 5}, {42032, 10}, {25315, 5}},
            {{42085, 1}, {42079, 1}, {42080, 1}},
            {{42064, 1}, {12567, 1}, {42068, 1}}
        },
        output = {42030, 1}
    },
	-- Dragonscale Aegis
	{
        patternList = {
			{{35197, 1}, {40705, 1}, {41761, 1}},
            {{42072, 5}, {42079, 1}, {42071, 10}},
            {{39178, 100}, {42073, 11}, {39179, 100}}
        },
        output = {42031, 1}
    },
	-- Angelic Wand
	{
        patternList = {
			{{39186, 1}, {39192, 1}, {24317, 1}},
            {{42085, 1}, {42076, 1}, {40807, 5}},
            {{33976, 20}, {42073, 20}, {33974, 20}}
        },
        output = {42033, 1}
    },
	-- Night Heaven Sword
	{
        patternList = {
			{{24316, 1}, {32448, 1}, {12564, 1}},
            {{40807, 5}, {42076, 1}, {27632, 20}},
            {{42052, 100}, {42077, 35}, {42083, 30}}
        },
        output = {42035, 1}
    },
	-- Inferno Sword
	{
        patternList = {
			{{41314, 1}, {39184, 1}, {32448, 1}},
            {{42080, 1}, {42079, 1}, {42076, 1}},
            {{42073, 5}, {40807, 2}, {25312, 100}}
        },
        output = {42036, 1}
    },
	-- Legacy Helmet
	{
        patternList = {
			{{42091, 1}, {35201, 1}, {39189, 1}},
            {{32446, 100}, {42085, 1}, {41945, 3}},
            {{25315, 10}, {42073, 1}, {40744, 1}}
        },
        output = {42037, 1}
    },
	-- Night Heaven Axe
	{
        patternList = {
			{{41460, 1}, {32449, 1}, {41463, 1}},
            {{40807, 5}, {42076, 1}, {27632, 20}},
            {{42106, 100}, {42071, 40}, {25316, 40}}
        },
        output = {42038, 1}
    },
	-- Night Heaven Spellbook
	{
        patternList = {
			{{39855, 1}, {12572, 1}, {41485, 1}},
            {{42073, 5}, {42079, 1}, {13561, 10}},
            {{32446, 100}, {40744, 5}, {40787, 10}}
        },
        output = {42039, 1}
    },
	-- Demoniac Quiver
	{
        patternList = {
			{{41457, 1}, {41461, 1}, {41462, 1}},
            {{42073, 1}, {40807, 2}, {25315, 4}},
            {{39178, 100}, {42072, 6}, {39179, 100}}
        },
        output = {41459, 1}
    },
	-- Master Evil Crossbow
	{
        patternList = {
			{{12580, 1}, {33930, 1}, {41464, 1}},
            {{40807, 5}, {42076, 1}, {27632, 20}},
            {{37592, 100}, {42072, 50}, {42081, 100}}
        },
        output = {24777, 1}
    },
	-- Hellfire Bow
	{
        patternList = {
			{{12580, 1}, {33930, 1}, {41464, 1}},
            {{40807, 5}, {42076, 1}, {27632, 20}},
            {{42106, 40}, {25315, 55}, {42032, 50}}
        },
        output = {40854, 1}
    },
	-- Night Backpack
	{
        patternList = {
			{{39178, 25}, {42061, 5}, {39179, 25}},
            {{25315, 3}, {40807, 1}, {42074, 20}},
            {{32446, 50}, {42105, 20}, {42081, 5}}
        },
        output = {42043, 1}
    },
	-- Sun Backpack
	{
        patternList = {
			{{25315, 3}, {40807, 1}, {42074, 20}},
			{{39178, 25}, {42061, 5}, {39179, 25}},
            {{32446, 50}, {42105, 20}, {42081, 5}}
        },
        output = {42044, 1}
    },
	-- Night heaven Bow
	{
        patternList = {
			{{12671, 30}, {33930, 1}, {42073, 10}},
            {{42085, 1}, {42076, 1}, {42083, 11}},
            {{33976, 100}, {42071, 100}, {33974, 100}}
        },
        output = {40854, 1}
    },
	 -- Dark Elder Shield
    {
        patternList = {
			{{24776, 1}, {40705, 1}, {12566, 1}},
            {{42106, 25}, {38840, 1}, {25315, 5}},
            {{42083, 3}, {40744, 5}, {12671, 10}}
        },
        output = {42046, 1}
    },
	 -- Luminous Shield
	 {
        patternList = {
			{{24776, 1}, {40705, 1}, {12566, 1}},
            {{42083, 3}, {40744, 5}, {12671, 10}},
			{{42106, 25}, {38840, 1}, {25315, 5}},
        },
        output = {42048, 1}
    },
	-- Diamond Backpack
	{
        patternList = {
			{{25315, 6}, {40807, 2}, {42074, 40}},
			{{39178, 50}, {42061, 5}, {39179, 50}},
            {{32446, 100}, {42105, 40}, {42081, 10}}
        },
        output = {12581, 1}
    },
	-- Anubis Backpack
	{
        patternList = {
			{{12671, 2}, {40787, 2}, {42083, 2}},
			{{26309, 10}, {26286, 2}, {40807, 1}},
            {{27216, 1}, {27217, 1}, {27218, 1}}
        },
        output = {41489, 1}
    },
	-- Evil Backpack
	{
        patternList = {
			{{42074, 50}, {42084, 50}, {41944, 50}},
			{{40744, 1}, {42080, 1}, {27632, 20}},
            {{42073, 5}, {42083, 15}, {41945, 20}}
        },
        output = {41458, 1}
    },
	-- Khazra Mace
	{
        patternList = {
			{{39187, 1}, {33429, 1}, {12562, 1}},
			{{42085, 1}, {42076, 1}, {42085, 1}},
            {{40807, 5}, {27632, 20}, {42073, 4}}
        },
        output = {39173, 1}
    },
	-- Legendary Fishing Rod
	{
        patternList = {
			{{38146, 1}, {10615, 50}, {38146, 1}},
			{{42085, 1}, {36551, 10}, {42085, 1}},
            {{2636, 50}, {36467, 100}, {2638, 50}}
        },
        output = {39198, 1}
    },
	-- Elemental Amulet
	{
        patternList = {
			{{7492, 1}, {8712, 1}, {12582, 1}},
			{{42085, 1}, {42080, 1}, {42085, 1}},
            {{25312, 100}, {25315, 100}, {42074, 100}}
        },
        output = {12588, 1}
    },
}