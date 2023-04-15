local mType = Game.createMonsterType("King Gem Goblin")
local monster = {}

monster.description = "a King Gem Goblin"
monster.experience = 0
monster.outfit = {
	lookType = 1505,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 15000
monster.maxHealth = 15000
monster.race = "blood"
monster.corpse = 2940
monster.speed = 400
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
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
	{name = "platinum coin", chance = 100000, maxCount = 100},
	{name = "cyan crystal fragment", chance = 80000, maxCount = 3},
	{name = "red crystal fragment", chance = 80000, maxCount = 3},
	{name = "green crystal fragment", chance = 80000, maxCount = 3},
	{name = "green crystal splinter", chance = 80000, maxCount = 3},
	{name = "blue crystal splinter", chance = 80000, maxCount = 3},
	{name = "brown crystal splinter", chance = 80000, maxCount = 3},
	{name = "blue crystal shard", chance = 65000, maxCount = 2},
	{name = "green crystal shard", chance = 65000, maxCount = 2},
	{name = "violet crystal shard", chance = 65000, maxCount = 2},
	{name = "diamond", chance = 40000},
	{name = "giant ruby", chance = 2240},
	{name = "giant sapphire", chance = 2280},
	{name = "giant emerald", chance = 2180},
	{name = "giant amethyst", chance = 2260}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -180},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -280, range = 3, length = 6, spread = 8, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -230, range = 3, length = 9, spread = 4, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -180, radius = 2, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -150, radius = 8, effect = CONST_ME_HITAREA, target = false}

}

monster.defenses = {
	defense = 80,
	armor = 75
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
