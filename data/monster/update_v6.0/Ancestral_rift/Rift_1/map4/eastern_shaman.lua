local mType = Game.createMonsterType("Eastern Shaman [1]")
local monster = {}

monster.description = "a Eastern Shaman [1]"
monster.experience = 2850
monster.outfit = {
	lookType = 1512,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.raceId = 131
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 20,
	Stars = 2,
	Occurrence = 0,
	Locations = "Ancestral Rift Level [1]."
	}

monster.health = 2000
monster.maxHealth = 2000
monster.race = "blood"
monster.corpse = 22391
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
	level = 3,
	color = 210
}

monster.summons = {
}

monster.loot = {
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "gold ore", chance = 1090, maxCount = 1},
	{name = "salvage material", chance = 2500, maxCount = 3},
	{name = "light solar ore", chance = 1050, maxCount = 1},
	{name = "gronnstalker boots", chance = 800},
	{name = "epic blessed dust", chance = 800, maxCount = 2},
	{name = "fragment endless crystal", chance = 400},
	{name = "gronnstalker legs", chance = 600},
	{name = "loot coin", chance = 5000},
	{name = "spectral coin", chance = 800},
	{name = "spirit coin", chance = 750},
	{name = "coin of mind", chance = 700},
	{name = "fetish coin", chance = 700},
	{name = "gronnstalker armor", chance = 500},
	{name = "fragment of zodiac stone", chance = 140},
	{name = "Humonkfish", chance = 1500, maxCount = 1},
	{name = "focus cape", chance = 2000},
	{name = "medusa shield", chance = 900},
	{name = "small topaz", chance = 1470, maxCount = 2},
	{name = "platinum coin", chance = 90540, maxCount = 6},
	{name = "gudgeon", chance = 14700, maxCount = 5},
	{name = "great mana potion", chance = 22220, maxCount = 2},
	{name = "magic leaf", chance = 1100, maxCount = 2},
	{name = "ultimate health potion", chance = 19540, maxCount = 2},
	{name = "great spirit potion", chance = 18510, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
	{name ="combat", interval = 4000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -80, maxDamage = -130, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -80, maxDamage = -75, radius = 4, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -250, range = 7, shootEffect = CONST_ANI_SPECTRALBOLT, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 2000, chance = 24, type = COMBAT_HOLYDAMAGE, minDamage = -60, maxDamage = -120, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_GROUNDSHAKER, target = true}
}


monster.defenses = {
	defense = 35,
	armor = 25,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
