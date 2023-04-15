local mType = Game.createMonsterType("[Unique] Soulshifter [2]")
local monster = {}

monster.description = "a [Unique] Soulshifter [2]"
monster.experience = 28500
monster.outfit = {
	lookType = 1534,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 144
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
monster.corpse = 21381
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
	{name = "crystal coin", chance = 14000, maxCount = 3},
	{name = "sliver", chance = 5000, maxCount = 8},
	{name = "dust", chance = 9500, maxCount = 20},
	{name = "amber crystal stone", chance = 2000, maxCount = 3},
	{name = "eldritch crystal", chance = 2000, maxCount = 2},
	{name = "amazon armor", chance = 100},
	{id = 7869, chance = 3000, maxCount = 2},
	{name = "hellgrave coin", chance = 1000, maxCount = 2},
	{name = "endless token", chance = 2800, maxCount = 3},
	{name = "very rare blessed crystal", chance = 1200},
	{name = "loot coin", chance = 15000, maxCount = 8},
	{name = "spectral coin", chance = 1000},
	{name = "spirit coin", chance = 1050},
	{name = "coin of mind", chance = 1000},
	{name = "fetish coin", chance = 1000},
	{name = "very rare identification rune", chance = 900},
	{name = "very rare equipment discovery scroll", chance = 700},
	{name = "very rare weapon discovery scroll", chance = 550},
	{name = "royal helmet", chance = 900},
	{name = "demon armor", chance = 70},
	{name = "orb of nature", chance = 300},
	{name = "parangon scroll", chance = 800},
	{name = "very rare rune powder", chance = 1000, maxCount = 2},
	{name = "rare rune powder", chance = 2000, maxCount = 3},
	{name = "very rare blessed dust", chance = 1000, maxCount = 2},
	{name = "rare blessed dust", chance = 2000, maxCount = 3},
	{name = "damnation ark", chance = 300},
	{name = "empty tree trunk", chance = 600, maxCount = 5},
	{name = "refined gold crystal", chance = 300},
	{name = "winged helmet", chance = 60},
	{name = "silver token", chance = 7000, maxCount = 1},
	{name = "gold token", chance = 1000, maxCount = 1},
	{name = "ancestral crystal", chance = 5000, maxCount = 10},
	{name = "fragment divine crystal", chance = 1000, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 70, attack = 80},
	{name ="melee", interval = 2000, chance = 2, skill = 153, attack = 100},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = -465, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -620, length = 8, spread = 3, target = false},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -225, maxDamage = -575, radius = 4, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -500, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false}
}


monster.defenses = {
	defense = 55,
	armor = 35,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -8},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
