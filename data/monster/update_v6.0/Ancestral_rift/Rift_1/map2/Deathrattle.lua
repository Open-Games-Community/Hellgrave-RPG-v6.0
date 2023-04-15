local mType = Game.createMonsterType("Deathrattle [1]")
local monster = {}

monster.description = "a Deathrattle [1]"
monster.experience = 2900
monster.outfit = {
	lookType = 88,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 107
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

monster.health = 2250
monster.maxHealth = 2250
monster.race = "blood"
monster.corpse = 6031
monster.speed = 300
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
	{name = "platinum coin", chance = 70540, maxCount = 4},
	{name = "ultimate health potion", chance = 3220, maxCount = 3},
	{name = "bar of bronze", chance = 2060, maxCount = 3},
	{name = "gold coin", chance = 78000, maxCount = 200},
	{name = "monster ribs", chance = 10107},
	{name = "gold ingot", chance = 300},
	{name = "loot coin", chance = 5000},
	{name = "spectral coin", chance = 800},
	{name = "spirit coin", chance = 750},
	{name = "coin of mind", chance = 700},
	{name = "fetish coin", chance = 700},
	{name = "green gem", chance = 860},
	{name = "fragment endless crystal", chance = 400},
	{name = "very rare blessed dust", chance = 1000, maxCount = 2},
	{name = "kor'kron armor", chance = 700},
	{name = "salvage material", chance = 2500, maxCount = 3},
	{name = "kor'kron legs", chance = 620},
	{name = "green crystal shard", chance = 2560},
	{name = "sapphir stone", chance = 920},
	{name = "lava stone", chance = 920, maxCount = 2},
	{name = "amethyst stone", chance = 900, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -155},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -180, radius = 3, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -98, maxDamage = -145, length = 4, spread = 3, effect = CONST_ME_ENERGY, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -165, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_SOUND_YELLOW, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -98, maxDamage = -145, length = 4, spread = 3, effect = CONST_ME_POFF, target = false}
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
