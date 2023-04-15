local mType = Game.createMonsterType("Lost Terror [*****]")
local monster = {}

monster.description = "a Lost Terror [*****]"
monster.experience = 1750000
monster.outfit = {
	lookType = 1616,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 198
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 100,
	FirstUnlock = 25,
	SecondUnlock = 50,
	CharmsPoints = 500,
	Stars = 5,
	Occurrence = 3,
	Locations = "Chaos Boss."
	}

monster.health = 550000
monster.maxHealth = 550000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 600
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 10,
	health = 15,
	damage = 50,
	random = 25,
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
	{name = "crystal coin", chance = 87000, maxCount = 100},
	{name = "mystic essence", chance = 49000, maxCount = 3},
	{name = "abyssal essence", chance = 37000, maxCount = 2},
	{name = "ascending essence", chance = 28500},
	{name = "chaos essence", chance = 20000},
	{name = "arkeron coin", chance = 18500, maxCount = 5},
	{name = "mystic book of chaos", chance = 17000, maxCount = 3},
	{name = "fragment of dimensional chaos", chance = 17000, maxCount = 3},
	{name = "exotic book of chaos", chance = 16000, maxCount = 2},
	{name = "legacy book of chaos", chance = 15000, maxCount = 2},
	{name = "legendary emblem", chance = 14000, maxCount = 2},
	{name = "fragment ordnance wing", chance = 5000, maxCount = 2},
	{name = "fragment chaos wing", chance = 5000, maxCount = 2},
	{name = "quantum token", chance = 35000, maxCount = 5},
	{name = "key of dragon obscurus chest", chance = 19000},
	{name = "dragon obscurus chest", chance = 18500},
	{name = "box of chaos pearls", chance = 10000, maxCount = 2},
	{name = "nether pearl", chance = 25000, maxCount = 5},
	{name = "gold mirror token", chance = 3000, maxCount = 2},
	{name = "mystery token", chance = 4500, maxCount = 3},
	{name = "imperial blue topaz tear", chance = 1000},
	{name = "imperial orange topaz tear", chance = 1000},
	{name = "chaos token", chance = 11000, maxCount = 3},
	{name = "divine equipment discovery scroll", chance = 3700},
	{name = "divine weapon discovery scroll", chance = 3300},
	{name = "awakening mark", chance = 8000},
	{name = "exalted core", chance = 20000, maxCount = 4},
	{name = "astral source", chance = 2000},
	{name = "ancestral source", chance = 3000},
	{name = "elder amphora", chance = 2000},
	{name = "demoniac refined crystal", chance = 10000},
	{name = "demoniac essence", chance = 4000},
	{name = "endless flame", chance = 1000},
	{name = "awakening celestial seal", chance = 2000},
	{name = "demoniac core", chance = 2500},
	{name = "caphras chest", chance = 3000},
	{name = "master rune", chance = 8000},
	{name = "void chest", chance = 6000},
	{name = "shadow chest", chance = 12000},
	{id = 7868, chance = 5000},
	{id = 7876, chance = 5000},
	{id = 7744, chance = 5000},
	{id = 7752, chance = 5000},
	{id = 7764, chance = 5000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1100, maxDamage = -1950},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -950, maxDamage = -1950, range = 3, length = 9, spread = 3, effect = 237, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -1000, maxDamage = -2100, range = 3, length = 9, spread = 4, effect = 204, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -1900, radius = 8, effect = 62, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -750, maxDamage = -2500, radius = 8, effect = 236, target = false},
	{name ="combat", interval = 3000, chance = 7, type = COMBAT_ENERGYDAMAGE, minDamage = -3000, maxDamage = -6000, length = 8, spread = 3, effect = 242, target = false},
}

monster.defenses = {
	defense = 225,
	armor = 225,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 3000, effect = 254, target = false},
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 20},
	{type = COMBAT_MANADRAIN, percent = 20},
	{type = COMBAT_DROWNDAMAGE, percent = 20},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -25},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = -35},
	{type = COMBAT_LIFEDRAIN, percent = -10},
	{type = COMBAT_MANADRAIN, percent = -10},
	{type = COMBAT_DROWNDAMAGE, percent = -10},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
