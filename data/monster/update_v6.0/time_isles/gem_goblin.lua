local mType = Game.createMonsterType("Gem Goblin")
local monster = {}

monster.description = "a Gem Goblin"
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


monster.health = 5000
monster.maxHealth = 5000
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
	runHealth = 5000,
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
	{name = "small diamond", chance = 80000, maxCount = 5},
	{name = "small amethyst", chance = 50000, maxCount = 5},
	{name = "platinum coin", chance = 80000, maxCount = 10},
	{name = "small ruby", chance = 50000, maxCount = 5},
	{name = "small emerald", chance = 50000, maxCount = 5},
	{name = "small sapphire", chance = 50000, maxCount = 5},
	{name = "cyan crystal fragment", chance = 30000, maxCount = 3},
	{name = "red crystal fragment", chance = 30000, maxCount = 3},
	{name = "green crystal fragment", chance = 20000, maxCount = 3},
	{name = "green crystal splinter", chance = 20000, maxCount = 3},
	{name = "blue crystal splinter", chance = 20000, maxCount = 3},
	{name = "brown crystal splinter", chance = 20000, maxCount = 3},
	{name = "blue crystal shard", chance = 13000, maxCount = 2},
	{name = "green crystal shard", chance = 13000, maxCount = 2},
	{name = "violet crystal shard", chance = 13000, maxCount = 2},
	{name = "diamond", chance = 1000},
	{name = "giant ruby", chance = 240},
	{name = "giant sapphire", chance = 280},
	{name = "giant emerald", chance = 180},
	{name = "giant amethyst", chance = 260}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1}
}

monster.defenses = {
	defense = 5,
	armor = 5
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
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
