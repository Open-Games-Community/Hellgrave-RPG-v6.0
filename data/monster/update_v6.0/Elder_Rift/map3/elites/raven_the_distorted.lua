local mType = Game.createMonsterType("Raven the Distorted [**]")
local monster = {}

monster.description = "Raven the Distorted [**]"
monster.experience = 90000
monster.outfit = {
	lookType = 1579,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 160
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 100,
	FirstUnlock = 25,
	SecondUnlock = 75,
	CharmsPoints = 200,
	Stars = 5,
	Occurrence = 3,
	Locations = "Boss from Elder Rift."
	}

monster.health = 200000
monster.maxHealth = 200000
monster.race = "blood"
monster.corpse = 24139
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
}

monster.loot = {
	{name = "crystal coin", chance = 61000, maxCount = 15},
	{name = "amber sliver", chance = 18500, maxCount = 10},
	{name = "amber dust", chance = 32000, maxCount = 30},
	{name = "amber core", chance = 500},
	{name = "endless crystal", chance = 20000, maxCount = 20},
	{name = "bar of amber", chance = 1000, maxCount = 2},
	{name = "eldritch crystal", chance = 10000, maxCount = 2},
	{name = "star stone", chance = 1000, maxCount = 2},
	{name = "zodiac stone", chance = 1000, maxCount = 2},
	{name = "angel relic", chance = 3000, maxCount = 2},
	{id = 39179, chance = 3000, maxCount = 2},
	{name = "crystal token", chance = 18000, maxCount = 4},
	{name = "star token", chance = 9500, maxCount = 3},
	{name = "electrical token", chance = 7000, maxCount = 3},
	{name = "wind token", chance = 3000, maxCount = 2},
	{name = "mystery token", chance = 2000, maxCount = 2},
	{name = "ancestral Token", chance = 18000, maxCount = 2},
	{name = "amber token", chance = 13010, maxCount = 10},
	{name = "arch of destruction", chance = 2300},
	{name = "curse of monolith", chance = 3600},
	{name = "epic weapon discovery scroll", chance = 700},
	{name = "legendary rune", chance = 1200, maxCount = 2},
	{name = "divine rune", chance = 2800},
	{name = "demoniac crystal stone", chance = 15000, maxCount = 2},
	{name = "rejuvenation spirit potion", chance = 9540, maxCount = 7},
	{name = "rejuvenation mana potion", chance = 7000, maxCount = 5},
	{name = "rejuvenation health potion", chance = 7000, maxCount = 5},
	{name = "ancestral source", chance = 3000},
	{name = "astral source", chance = 1340},
	{name = "ancestral source", chance = 2000},
	{name = "elder amphora", chance = 950},
	{id = 9735, chance = 8000},
	{id = 36831, chance = 400},
	{name = "epic equipment discovery scroll", chance = 700},
	{id = 36833, chance = 450},
	{id = 36849, chance = 300},
	{id = 36850, chance = 290},
	{id = 36851, chance = 360},
	{id = 36852, chance = 410},
	{id = 36854, chance = 300},
	{name = "identification parchment", chance = 550},
	{name = "parangon scroll", chance = 3000, maxCount = 3},
	{name = "ornamented armor", chance = 200},
	{name = "luminous potion", chance = 1100},
	{name = "legendary emblem", chance = 11600, maxCount = 2},
	{name = "normal emblem", chance = 13000, maxCount = 3},
	{name = "epic emblem", chance = 6350},
	{name = "ornamented helmet", chance = 300},
	{name = "ornamented legs", chance = 300},
	{name = "mistery coin", chance = 1000, maxCount = 2},
	{name = "Falcon Greaves", chance = 800},
	{name = "Eldritch Breeches", chance = 1000},
	{name = "Gnome Armor", chance = 1800},
	{name = "Lion Plate", chance = 1800},
	{name = "Horned Helmet", chance = 1200},
	{name = "Falcon Coif", chance = 1000},
	{name = "rose shield", chance = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1400, maxDamage = -1800},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -1750, radius = 6, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -700, maxDamage = -2000, radius = 5, effect = CONST_ME_ICETORNADO, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -700, maxDamage = -1150, range = 6, shootEffect = CONST_ANI_ARROW, effect = CONST_ME_EXPLOSIONAREA, target = true}
}


	monster.defenses = {
		defense = 75,
		armor = 70,
		{name ="speed", interval = 2000, chance = 12, speedChange = 1250, effect = CONST_ME_THUNDER, target = false, duration = 10000},
		{name ="raven summon", interval = 2000, chance = 20, target = false}
	}

	monster.reflects = {
		{type = COMBAT_EARTHDAMAGE, percent = 6},
		{type = COMBAT_DEATHDAMAGE, percent = 6},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
