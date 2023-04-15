local mType = Game.createMonsterType("Rust Crawler [***]")
local monster = {}

monster.description = "a Rust Crawler [***]"
monster.experience = 45000
monster.outfit = {
	lookType = 1564,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 172
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

	monster.health = 55000
	monster.maxHealth = 55000
	monster.race = "blood"
	monster.corpse = 23873
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
	{name = "demoniac crystal", chance = 10000, maxCount = 2},
	{name = "demoniac crystal", chance = 3000, maxCount = 2},
	{name = "demoniac dust", chance = 15000, maxCount = 8},
	{name = "falcon rod", chance = 800},
	{name = "chaos token", chance = 450},
	{name = "falcon coif", chance = 700},
	{name = "first fragment of dimensional chaos", chance = 1500, maxCount = 2},
	{name = "piece of endless crystal", chance = 2000},
	{name = "piece of divine crystal", chance = 1400},
	{name = "piece of amber crystal", chance = 900},
	{name = "fire token", chance = 900},
	{name = "silver mirror token", chance = 800},
	{name = "star token", chance = 900},
	{name = "electrical token", chance = 1100},
	{name = "demonic token", chance = 900},
	{name = "rejuvenation spirit potion", chance = 99500, maxCount = 2},
	{name = "rejuvenation mana potion", chance = 96000, maxCount = 1},
	{name = "rejuvenation health potion", chance = 95000, maxCount = 1},
	{name = "refined crystal", chance = 350},
	{name = "refined gold crystal", chance = 350},
	{name = "divine plant of the depths", chance = 780},
	{name = "wrath pulished crystal", chance = 800},
	{name = "wrath crystal fragment", chance = 650},
	{name = "pilea leaf", chance = 950},
	{name = "empty tree trunk", chance = 1200, maxCount = 2},
	{name = "kiye gudgeon", chance = 2000, maxCount = 3},
	{name = "igloo fish", chance = 900},
	{name = "Frozen Icefish", chance = 700},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -450, maxDamage = -1510, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -560, maxDamage = -1450, length = 10, spread = 3, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DROWNDAMAGE, minDamage = -1000, maxDamage = -1280, radius = 4, effect = CONST_ME_BUBBLES, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -800, maxDamage = -1900, range = 7, effect = CONST_ME_SMALLPLANTS, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -600, maxDamage = -1400, range = 7, effect = CONST_ME_SMALLPLANTS, target = false},
}


	monster.defenses = {
		defense = 130,
		armor = 70
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
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 40},
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
