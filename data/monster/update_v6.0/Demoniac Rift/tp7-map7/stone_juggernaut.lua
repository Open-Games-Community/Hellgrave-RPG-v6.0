local mType = Game.createMonsterType("Stone Juggernaut [***]")
local monster = {}

monster.description = "a Stone Juggernaut [***]"
monster.experience = 45000
monster.outfit = {
	lookType = 1546,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 174
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 75,
	Stars = 5,
	Occurrence = 1,
	Locations = "Demoniac Rift Monster."
	}

	monster.health = 75000
	monster.maxHealth = 75000
	monster.race = "blood"
	monster.corpse = 21553
	monster.speed = 400
	monster.manaCost = 0
	monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 30,
	health = 20,
	damage = 20,
	random = 30,
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
	{name = "crystal coin", chance = 11000, maxCount = 5},
	{name = "Parangon scroll", chance = 1200},
	{name = "master rune", chance = 600},
	{name = "wrath pulished crystal", chance = 800},
	{name = "wrath crystal fragment", chance = 650},
	{name = "demoniac dust", chance = 15000, maxCount = 10},
	{name = "first fragment of dimensional chaos", chance = 1500, maxCount = 2},
	{name = "piece of endless crystal", chance = 2000},
	{name = "chaos token", chance = 450},
	{name = "piece of divine crystal", chance = 1400},
	{name = "fire token", chance = 900},
	{name = "silver mirror token", chance = 800},
	{name = "star token", chance = 900},
	{name = "electrical token", chance = 1100},
	{name = "demonic token", chance = 900},
	{name = "piece of amber crystal", chance = 900},
	{name = "rejuvenation spirit potion", chance = 99500, maxCount = 2},
	{name = "rejuvenation mana potion", chance = 96000, maxCount = 1},
	{name = "rejuvenation health potion", chance = 95000, maxCount = 1},
	{name = "epic emblem", chance = 550},
	{name = "falcon greaves", chance = 170},
	{name = "fireborn giant armor", chance = 200},
	{name = "lavos armor", chance = 80},
	{name = "tournament coin", chance = 2000, maxCount = 2},
	{name = "luminous insect", chance = 1800},
	{name = "eldritch crystal", chance = 3200},
	{name = "karma arch", chance = 4000},
	{name = "fire artefact", chance = 17000},
	{name = "orb of misery", chance = 5000},
	{name = "dorsal bone", chance = 1000},
	{name = "golden dragon scale", chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -2000},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -1200, length = 10, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="speed", interval = 2000, chance = 25, speedChange = -600, radius = 7, effect = CONST_ME_GREEN_RINGS, target = false, duration = 15000},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -1700, radius = 7, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -700, radius = 5, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1500, maxDamage = -1800, length = 12, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_ENERGYHIT, target = false}}


	monster.defenses = {
		defense = 110,
		armor = 150
	}

	monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 10},
	{type = COMBAT_MANADRAIN, percent = 10},
	{type = COMBAT_DROWNDAMAGE, percent = 10},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
