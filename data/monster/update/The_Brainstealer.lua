local mType = Game.createMonsterType("The Brainstealer")
local monster = {}

monster.description = "The Brainstealer"
monster.experience = 75000
monster.outfit = {
	lookType = 1412,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 250000
monster.maxHealth = 250000
monster.race = "blood"
monster.corpse = 41676
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.events = {
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "crystal coin", chance = 100000, maxCount = 15},
	{name = "Supreme Health Potion", chance = 30000, maxCount = 15},
	{name = "Ultimate Health Potion", chance = 100000, maxCount = 15},
	{name = "Ultimate Mana Potion", chance = 100000, maxCount = 15},
	{name = "Ultimate Spirit Potion", chance = 100000, maxCount = 15},
	{name = "white gem", chance = 30000, maxCount = 1},
	{name = "giant sapphire", chance = 7000, maxCount = 1},
	{name = "Moonstone", chance = 50000, maxCount = 2},
	{name = "platinum coin", chance = 999900, maxCount = 20},
	{name = "demoniac dust", chance = 15000, maxCount = 3},
	{name = "demoniac sliver", chance = 5000},
	{name = "Brainstealer's brain", chance = 7120},
	{name = "Brainstealer's brainwave", chance = 9120, maxCount = 2},
	{name = "Brainstealer's tissue", chance = 20470, maxCount = 2},
	{id = 41491, chance = 4230},
	{id = 41492, chance = 2700},
	{id = 41493, chance = 2200},
	{id = 41494, chance = 3200},
	{id = 41495, chance = 5200},
	{id = 41496, chance = 3230},
	{id = 41497, chance = 3230},
	{id = 41498, chance = 2400},
	{id = 41499, chance = 3100},
	{id = 41500, chance = 2820},
	{id = 41501, chance = 3000},
	{id = 41502, chance = 1870},
	{id = 41503, chance = 3450},
	{id = 41670, chance = 3450, maxCount = 5},
	{id = 41504, chance = 4120},
	{id = 41505, chance = 3280},
	{id = 41506, chance = 2400},
	{id = 41507, chance = 1920},
	{id = 41508, chance = 1920},
	{id = 41509, chance = 2340},
	{id = 41510, chance = 2490}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 95, attack = 100},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, minDamage = -1000, maxDamage = -1500, range = 7, radius = 9, effect = CONST_ME_MORTAREA, target = true},
	{name ="speed", interval = 1000, chance = 12, speedChange = -100, range = 7, radius = 4, effect = CONST_ME_POISONAREA, target = true, duration = 60000},
	{name ="condition", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 20, minDamage = -1000, maxDamage = -1200, length = 7, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
	defense = 64,
	armor = 52,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
