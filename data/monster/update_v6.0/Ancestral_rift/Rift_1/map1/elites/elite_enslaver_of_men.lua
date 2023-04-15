local mType = Game.createMonsterType("[Elite] Enslaver of Men [1]")
local monster = {}

monster.description = "an [Elite] Enslaver of Men [1]"
monster.experience = 5000
monster.outfit = {
	lookType = 133,
	lookHead = 0,
	lookBody = 87,
	lookLegs = 87,
	lookFeet = 87,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 127
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 20,
	Stars = 2,
	Occurrence = 2,
	Locations = "Ancestral Rift Level [1]."
	}

monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 250
monster.manaCost = 0
monster.maxSummons = 2

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
	{name = "[Elite] Illusion Enslaver of Men [1]", chance = 10, interval = 2000}
}

monster.loot = {
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "wood branch", chance = 2000, maxCount = 5},
	{name = "dust", chance = 2350},
	{name = "epic rune powder", chance = 800, maxCount = 2},
	{name = "divine rune powder", chance = 600, maxCount = 2},
	{name = "epic blessed dust", chance = 800, maxCount = 2},
	{name = "divine blessed dust", chance = 600, maxCount = 2},
	{name = "brillant rose", chance = 3000},
	{name = "loot coin", chance = 5000},
	{name = "spectral coin", chance = 800},
	{name = "spirit coin", chance = 750},
	{name = "coin of mind", chance = 700},
	{name = "fetish coin", chance = 700},
	{id = 7861, chance = 3000, maxCount = 2},
	{name = "foresworn legs", chance = 700},
	{name = "fragment endless crystal", chance = 800},
	{name = "foresworn boots", chancec = 800},
	{name = "big branch", chance = 1100},
	{name = "monster hair", chance = 1000},
	{name = "silver dragon scale", chance = 850, maxCount = 2},
	{name = "platinum coin", chance = 90540, maxCount = 15},
	{name = "great mana potion", chance = 22220, maxCount = 5},
	{name = "ultimate health potion", chance = 19540, maxCount = 5},
	{name = "great spirit potion", chance = 18510, maxCount = 5}
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -95, maxDamage = -250, range = 1, radius = 1, effect = CONST_ME_SMALLCLOUDS, target = true},
	{name ="speed", interval = 2000, chance = 15, speedChange = -50, range = 7, radius = 6, effect = CONST_ME_POFF, target = false, duration = 15000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -206, maxDamage = -302, radius = 6, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -220, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="speed", interval = 2000, chance = 20, speedChange = -50, range = 7, shootEffect = CONST_ANI_SNOWBALL, target = true, duration = 10000}
}

monster.defenses = {
	defense = 35,
	armor = 25,
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
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
