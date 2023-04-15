local mType = Game.createMonsterType("[Unique] Deepth Eel [2]")
local monster = {}

monster.description = "a [Unique] Deepth Eel [2]"
monster.experience = 28500
monster.outfit = {
	lookType = 1528,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 147
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 100,
	FirstUnlock = 25,
	SecondUnlock = 75,
	CharmsPoints = 60,
	Stars = 3,
	Occurrence = 3,
	Locations = "Boss from Ancestral Rift Level [2]."
	}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 21391
monster.speed = 450
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
	{name = "platinum coin", chance = 14000, maxCount = 70},
	{name = "sliver", chance = 8000, maxCount = 6},
	{name = "dust", chance = 19500, maxCount = 12},
	{name = "eldritch crystal", chance = 2000, maxCount = 3},
	{name = "fragment endless crystal", chance = 1100},
	{id = 7877, chance = 1500, maxCount = 2},
	{id = 7745, chance = 1500, maxCount = 2},
	{name = "fragment divine crystal", chance = 900},
	{name = "fragment amber crystal", chance = 550},
	{name = "loot coin", chance = 15000, maxCount = 8},
	{name = "spectral coin", chance = 1000},
	{name = "spirit coin", chance = 1050},
	{name = "coin of mind", chance = 1000},
	{name = "fetish coin", chance = 1000},
	{name = "epic rune powder", chance = 800, maxCount = 2},
	{name = "divine rune powder", chance = 600, maxCount = 2},
	{name = "epic blessed dust", chance = 800, maxCount = 2},
	{name = "divine blessed dust", chance = 600, maxCount = 2},
	{name = "depth lorica", chance = 580},
	{name = "falcon circlet", chance = 310},
	{name = "amber crystal stone", chance = 2000, maxCount = 3},
	{name = "parangon scroll", chance = 800},
	{name = "hellgrave coin", chance = 1000, maxCount = 2},
	{id = 10158, chance = 7900, maxCount = 2},
	{name = "magic plate armor", chance = 3070},
	{name = "rare red carp", chance = 110},
	{name = "relic of the sky", chance = 920},
	{name = "mistery coin", chance = 400},
	{name = "silver token", chance = 7000, maxCount = 1},
	{name = "amber sliver", chance = 1000, maxCount = 2},
	{name = "gold token", chance = 1000, maxCount = 1},
	{name = "endless token", chance = 2800, maxCount = 3},
	{name = "endless rune", chance = 600},
	{name = "fragment of zodiac stone", chance = 600},
	{name = "very rare blessed crystal", chance = 1200},
	{name = "very rare identification rune", chance = 900},
	{name = "very rare equipment discovery scroll", chance = 700},
	{name = "very rare weapon discovery scroll", chance = 550},
	{name = "ancestral crystal", chance = 5000, maxCount = 10},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -150, maxDamage = -400, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -50, maxDamage = -390, radius = 4, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -600, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -80, maxDamage = -500, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -675, radius = 4, effect = CONST_ME_ICEATTACK, target = false}
}


monster.defenses = {
	defense = 55,
	armor = 35,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 60},
	{type = COMBAT_DEATHDAMAGE , percent = -30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
