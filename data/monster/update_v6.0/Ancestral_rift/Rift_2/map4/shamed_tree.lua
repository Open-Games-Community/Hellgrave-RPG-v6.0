local mType = Game.createMonsterType("Shamed Tree [2]")
local monster = {}

monster.description = "a Shamed Tree [2]"
monster.experience = 5550
monster.outfit = {
	lookType = 1532,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 152
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 30,
	Stars = 3,
	Occurrence = 0,
	Locations = "Ancestral Rift Level [2]."
	}

monster.health = 6500
monster.maxHealth = 6500
monster.race = "blood"
monster.corpse = 19953
monster.speed = 330
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

monster.events = {
	"onDeath_randomTierDrops"
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
	{name = "wood quiver", chance = 1500},
	{name = "club ring", chance = 4050},
	{name = "platinum coin", chance = 11000, maxCount = 9},
	{name = "dwarven ring", chance = 6000},
	{name = "loot coin", chance = 5000},
	{name = "spectral coin", chance = 800},
	{name = "spirit coin", chance = 750},
	{name = "coin of mind", chance = 700},
	{name = "fetish coin", chance = 700},
	{name = "energy ring", chance = 4000},
	{name = "divine rune powder", chance = 600, maxCount = 2},
	{name = "dust", chance = 3900, maxCount = 4},
	{name = "life ring", chance = 4000},
	{name = "power ring", chance = 2400},
	{name = "ancestral crystal", chance = 1100},
	{name = "salvage material", chance = 2500, maxCount = 3},
	{name = "ring of healing", chance = 2400},
	{name = "fragment endless crystal", chance = 400},
	{name = "stealth ring", chance = 1770},
	{name = "sword ring", chance = 2000},
	{name = "axe ring", chance = 2220},
}

monster.attacks = {
	{name ="melee", interval = 200, chance = 20, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 200, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -500, target = false},
	{name ="combat", interval = 500, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -120, maxDamage = -300, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 500, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -300, radius = 8, effect = CONST_ME_MORTAREA, target = false}
}


monster.defenses = {
	defense = 50,
	armor = 30,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
