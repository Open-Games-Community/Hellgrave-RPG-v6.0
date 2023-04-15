local mType = Game.createMonsterType("The Reckoner [**]")
local monster = {}

monster.description = "a Reckoner [**]"
monster.experience = 90000
monster.outfit = {
	lookType = 1664,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 156
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
monster.corpse = 6068
monster.speed = 250
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
	{name = "eldritch crystal", chance = 10000, maxCount = 2},
	{name = "amber dust", chance = 32000, maxCount = 30},
	{name = "star stone", chance = 3000, maxCount = 2},
	{name = "legendary rune", chance = 1200, maxCount = 2},
	{name = "crystal token", chance = 18000, maxCount = 4},
	{name = "star token", chance = 9500, maxCount = 3},
	{name = "electrical token", chance = 7000, maxCount = 3},
	{name = "wind token", chance = 3000, maxCount = 2},
	{name = "mystery token", chance = 2000, maxCount = 2},
	{name = "divine rune", chance = 2800},
	{name = "zodiac stone", chance = 2000, maxCount = 2},
	{name = "amber core", chance = 500},
	{name = "endless crystal", chance = 20000, maxCount = 20},
	{name = "legendary emblem", chance = 11600, maxCount = 2},
	{name = "normal emblem", chance = 13000, maxCount = 3},
	{name = "epic emblem", chance = 6350},
	{name = "amber token", chance = 13010, maxCount = 10},
	{name = "epic weapon discovery scroll", chance = 700},
	{name = "ancestral Token", chance = 18000, maxCount = 2},
	{name = "angel relic", chance = 3000, maxCount = 2},
	{id = 39179, chance = 3000, maxCount = 2},
	{name = "demoniac crystal stone", chance = 15000, maxCount = 2},
	{id = 15408, chance = 3600},
	{name = "rejuvenation spirit potion", chance = 79540, maxCount = 7},
	{name = "rejuvenation mana potion", chance = 70000, maxCount = 5},
	{name = "rejuvenation health potion", chance = 70000, maxCount = 5},
	{name = "astral source", chance = 1340},
	{name = "ancestral source", chance = 2000},
	{name = "elder amphora", chance = 950},
	{id = 36828, chance = 250},
	{id = 36829, chance = 270},
	{id = 36830, chance = 190},
	{id = 36832, chance = 210},
	{id = 36834, chance = 200},
	{id = 36835, chance = 200},
	{name = "identification parchment", chance = 550},
	{name = "parangon scroll", chance = 5000, maxCount = 4},
	{name = "luminous potion", chance = 1100},
	{name = "falcon circlet", chance = 2000},
	{name = "golden boots", chance = 1500},
	{name = "lilyad backpack", chance = 6000},
	{name = "mistery coin", chance = 1000, maxCount = 2},
	{name = "Treader of Torment", chance = 2000},
	{name = "Cobra Boots", chance = 1000},
	{name = "Warlord Sword", chance = 4000},
	{name = "Lion Longsword", chance = 600},
	{name = "Jungle Rod", chance = 1800},
	{name = "jungle wand", chance = 1800},
	{name = "solar axe", chance = 800},
	{name = "Mortal Mace", chance = 50}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 100, attack = 100, condition = {type = CONDITION_POISON, totalDamage = 100, interval = 4000}},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -420, maxDamage = -610, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 22, minDamage = -800, maxDamage = -1400, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -80, maxDamage = -150, radius = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -720, range = 7, radius = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="mutated rat paralyze", interval = 2000, chance = 20, range = 7, target = false}}


	monster.defenses = {
		defense = 75,
		armor = 70
	}

	monster.reflects = {
		{type = COMBAT_EARTHDAMAGE, percent = 6}
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
