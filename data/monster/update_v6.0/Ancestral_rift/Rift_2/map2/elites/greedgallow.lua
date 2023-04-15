local mType = Game.createMonsterType("[Unique] Greedgallow [2]")
local monster = {}

monster.description = "a [Unique] Greedgallow [2]"
monster.experience = 28500
monster.outfit = {
	lookType = 1521,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 139
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
monster.corpse = 21583
monster.speed = 380
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
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "sliver", chance = 8000, maxCount = 6},
	{name = "dust", chance = 19500, maxCount = 12},
	{name = "eldritch crystal", chance = 2000, maxCount = 3},
	{name = "dragon scale mail", chance = 800},
	{name = "amber crystal stone", chance = 2000, maxCount = 3},
	{name = "relic sword", chance = 6000},
	{name = "royal helmet", chance = 900},
	{name = "dragon lance", chance = 26000},
	{name = "endless token", chance = 2800, maxCount = 3},
	{name = "loot coin", chance = 15000, maxCount = 8},
	{name = "spectral coin", chance = 1000},
	{name = "spirit coin", chance = 950},
	{name = "coin of mind", chance = 1000},
	{name = "fetish coin", chance = 1100},
	{id = 7861, chance = 3000, maxCount = 2},
	{id = 7753, chance = 3000, maxCount = 2},
	{name = "orb of misery", chance = 250},
	{name = "elemental relic", chance = 450},
	{name = "very rare rune powder", chance = 1000, maxCount = 2},
	{name = "rare rune powder", chance = 2000, maxCount = 3},
	{name = "very rare blessed dust", chance = 1000, maxCount = 2},
	{name = "rare blessed dust", chance = 2000, maxCount = 3},
	{name = "kralove", chance = 1400, maxCount = 5},
	{name = "very rare blessed crystal", chance = 1200},
	{name = "very rare identification rune", chance = 900},
	{name = "very rare equipment discovery scroll", chance = 700},
	{name = "very rare weapon discovery scroll", chance = 550},
	{name = "ink snapper", chance = 1000, maxCount = 2},
	{name = "focus cape", chance = 17800},
	{name = "crystal coin", chance = 11500, maxCount = 4},
	{name = "parangon scroll", chance = 2000, maxCount = 2},
	{name = "silver token", chance = 7000, maxCount = 1},
	{name = "ganoderma lucidium", chance = 1000, maxCount = 2},
	{name = "gold token", chance = 1000, maxCount = 1},
	{name = "ancestral crystal", chance = 5000, maxCount = 10},
	{name = "platinum coin", chance = 90540, maxCount = 45},
	{name = "fragment endless crystal", chance = 1000, maxCount = 3}
}

monster.attacks = {
	{name ="energized raging mage skill reducer", interval = 3000, chance = 15, target = false},
	{name ="energyfield", interval = 2000, chance = 20, range = 7, radius = 2, shootEffect = CONST_ANI_ENERGY, target = true},
	{name ="melee", interval = 2000, chance = 100, skill = 32, attack = 37},
	{name ="thunderstorm", interval = 2000, chance = 40, minDamage = -150, maxDamage = -730, range = 7, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -200, maxDamage = -810, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -450, length = 8, spread = 3, effect = CONST_ME_BIGCLOUDS, target = false}
}
monster.defenses = {
	defense = 50,
	armor = 30,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
