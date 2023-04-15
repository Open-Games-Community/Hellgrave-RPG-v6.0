local mType = Game.createMonsterType("Evil Beholder [***]")
local monster = {}

monster.description = "a Evil Beholder [***]"
monster.experience = 45000
monster.outfit = {
	lookType = 1583,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 164
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
	monster.corpse = 34626
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
	{name = "crystal coin", chance = 11000, maxCount = 4},
	{name = "Parangon scroll", chance = 1200},
	{name = "master rune", chance = 600},
	{name = "demoniac dust", chance = 6000, maxCount = 8},
	{name = "demoniac crystal", chance = 3770, maxCount = 3},
	{name = "chaos token", chance = 450},
	{name = "third fragment of dimensional chaos", chance = 800},
	{name = "piece of endless crystal", chance = 2000},
	{name = "piece of divine crystal", chance = 1400},
	{name = "fire token", chance = 900},
	{name = "star token", chance = 900},
	{name = "electrical token", chance = 1100},
	{name = "demonic token", chance = 900},
	{name = "silver mirror token", chance = 800},
	{name = "piece of amber crystal", chance = 800},
	{name = "normal emblem", chance = 3000, maxCount = 5},
	{name = "legendary emblem", chance = 900, maxCount = 2},
	{name = "epic emblem", chance = 550},
	{name = "tournament coin", chance = 800, maxCount = 2},
	{name = "winged helmet", chance = 25},
	{name = "epiphany", chance = 18},
	{name = "menacing egg", chance = 70},
	{name = "wrath pulished crystal", chance = 800},
	{name = "wrath crystal fragment", chance = 650},
	{name = "thunder hammer", chance = 25},
	{name = "endless refined crystal", chance = 270},
	{name = "empty tree trunk", chance = 4600},
	{name = "dorsal fur", chance = 5000},
	{name = "rejuvenation spirit potion", chance = 99500, maxCount = 2},
	{name = "rejuvenation mana potion", chance = 96000, maxCount = 1},
	{name = "rejuvenation health potion", chance = 95000, maxCount = 1},
	{name = "monster intestines", chance = 3250},
	{name = "arch of destruction", chance = 750},
	{name = "exaltation chest", chance = 100},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -450, maxDamage = -1350},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -750, maxDamage = -1600, radius = 4, effect = CONST_ME_PINK_BEAM, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -550, maxDamage = -1900, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1550, length = 8, effect = CONST_ME_STEPSHORIZONTAL, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -450, maxDamage = -1780, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false}
	}


	monster.defenses = {
		defense = 150,
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
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
