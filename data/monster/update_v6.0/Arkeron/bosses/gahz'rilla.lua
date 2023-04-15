local mType = Game.createMonsterType("Gahz'rilla [*****]")
local monster = {}

monster.description = "a Gahz'rilla [*****]"
monster.experience = 1000000
monster.outfit = {
	lookType = 1611,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 193
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

monster.health = 950000
monster.maxHealth = 950000
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
	health = 25,
	damage = 40,
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
	{name = "crystal coin", chance = 87000, maxCount = 40},
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
	{name = "divine equipment discovery scroll", chance = 1700},
	{name = "divine weapon discovery scroll", chance = 1300},
	{name = "key of dragon obscurus chest", chance = 11000},
	{name = "dragon obscurus chest", chance = 8500},
	{name = "box of chaos pearls", chance = 6000},
	{name = "nether pearl", chance = 5000, maxCount = 5},
	{name = "gold mirror token", chance = 3000, maxCount = 2},
	{name = "mystery token", chance = 4500, maxCount = 3},
	{name = "imperial blue topaz tear", chance = 1000},
	{name = "imperial orange topaz tear", chance = 1000},
	{name = "chaos token", chance = 11000, maxCount = 3},
	{name = "awakening mark", chance = 8000},
	{name = "exalted core", chance = 20000, maxCount = 4},
	{name = "astral source", chance = 2000},
	{name = "ancestral source", chance = 3000},
	{name = "elder amphora", chance = 2000},
	{name = "endless flame", chance = 300},
	{name = "awakening celestial seal", chance = 2000},
	{name = "amber core", chance = 1500},
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
	{name ="melee", interval = 2000, chance = 100, skill = 300, attack = 300},
	{name ="speed", interval = 2000, chance = 20, speedChange = -400, range = 7, shootEffect = 37, target = false, duration = 2500},
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -820, maxDamage = -1650, range = 7, effect = 251, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -1250, maxDamage = -2000, range = 3, effect = 240, target = true}
}

monster.defenses = {
	defense = 190,
	armor = 190,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 2500, effect = 254, target = false},
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
	{type = COMBAT_PHYSICALDAMAGE, percent = -90},
	{type = COMBAT_ENERGYDAMAGE, percent = -90},
	{type = COMBAT_EARTHDAMAGE, percent = -90},
	{type = COMBAT_FIREDAMAGE, percent = -90},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -90},
	{type = COMBAT_HOLYDAMAGE , percent = -90},
	{type = COMBAT_DEATHDAMAGE , percent = -90}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
