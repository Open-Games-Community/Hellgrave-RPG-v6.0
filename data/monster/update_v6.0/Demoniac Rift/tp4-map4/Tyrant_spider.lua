local mType = Game.createMonsterType("Tyrant Spider [***]")
local monster = {}

monster.description = "a Tyrant spider [***]"
monster.experience = 45000
monster.outfit = {
	lookType = 1549,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 169
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

	monster.health = 45000
	monster.maxHealth = 45000
	monster.race = "blood"
	monster.corpse = 21566
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
	runHealth = 1,
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
	{name = "crystal coin", chance = 11000, maxCount = 4},
	{name = "rainbow amulet", chance = 900},
	{name = "embrace of nature", chance = 500},
	{name = "normal emblem", chance = 4500, maxCount = 3},
	{name = "legendary emblem", chance = 2900, maxCount = 2},
	{name = "epic emblem", chance = 400},
	{name = "fire token", chance = 900},
	{name = "star token", chance = 900},
	{name = "electrical token", chance = 1100},
	{name = "demonic token", chance = 900},
	{name = "the cobra amulet", chance = 1800},
	{name = "second fragment of dimensional chaos", chance = 1000},
	{name = "piece of endless crystal", chance = 2000},
	{name = "Parangon scroll", chance = 1200},
	{name = "demoniac dust", chance = 15000, maxCount = 10},
	{name = "piece of divine crystal", chance = 1400},
	{name = "chaos token", chance = 450},
	{name = "piece of amber crystal", chance = 800},
	{name = "silver mirror token", chance = 800},
	{name = "brillant rose", chance = 2500},
	{name = "endless refined crystal", chance = 550},
	{name = "mystic feather", chance = 7000},
	{name = "rejuvenation spirit potion", chance = 99500, maxCount = 2},
	{name = "rejuvenation mana potion", chance = 96000, maxCount = 1},
	{name = "rejuvenation health potion", chance = 95000, maxCount = 1},
	{name = "wrath pulished crystal", chance = 800},
	{name = "wrath crystal fragment", chance = 650},
	{name = "mistery coin", chance = 1050},
	{name = "sky dragon wing", chance = 1750},
	{name = "protruding eyes", chance = 4780},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1850},
	{name ="fire wave", interval = 2000, chance = 15, minDamage = -350, maxDamage = -1500, length = 1, spread = 0, target = true},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -1800, radius = 4, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -2150, range = 1, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -2580, length = 6, spread = 3, effect = CONST_ME_HOLYAREA, target = false}}


	monster.defenses = {
		defense = 180,
		armor = 180
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
