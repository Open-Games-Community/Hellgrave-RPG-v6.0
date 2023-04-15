local mType = Game.createMonsterType("[Unique] Phantom Explorer [1]")
local monster = {}

monster.description = "an [Unique] Phantom Explorer [1]"
monster.experience = 18000
monster.outfit = {
	lookType = 251,
	lookHead = 0,
	lookBody = 77,
	lookLegs = 77,
	lookFeet = 77,
	lookAddons = 3,
	lookMount = 1285
}

monster.raceId = 102
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 100,
	FirstUnlock = 25,
	SecondUnlock = 75,
	CharmsPoints = 50,
	Stars = 2,
	Occurrence = 0,
	Locations = "Boss from Ancestral Rift Level [1]."
	}

monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 280
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
	{name = "[Unique] Starkoh [1]", chance = 10, interval = 2000}
}

monster.loot = {
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "Tupe-Halett Pike", chance = 2000, maxCount = 5},
	{name = "karma arch", chance = 1000},
	{name = "key of savage chest", chance = 2000},
	{name = "savage chest", chance = 1600},
	{name = "epic rune powder", chance = 800, maxCount = 2},
	{name = "divine rune powder", chance = 600, maxCount = 2},
	{name = "epic blessed dust", chance = 800, maxCount = 2},
	{name = "divine blessed dust", chance = 600, maxCount = 2},
	{name = "sanctified helmet", chance = 400},
	{name = "sanctified armor", chance = 600},
	{name = "parangon scroll", chance = 800},
	{name = "loot coin", chance = 15000, maxCount = 8},
	{name = "spectral coin", chance = 1000},
	{name = "spirit coin", chance = 950},
	{name = "coin of mind", chance = 800},
	{name = "fetish coin", chance = 800},
	{name = "sanctified pants", chance = 700},
	{name = "sanctified boots", chance = 900},
	{id = 7877, chance = 3000, maxCount = 2},
	{name = "sanctified wand", chance = 500},
	{name = "fragment of zodiac stone", chance = 500},
	{name = "crusader helmet", chance = 1500},
	{name = "dragon lance", chance = 2000},
	{name = "tower shield", chance = 4000},
	{name = "rare blessed crystal", chance = 1200},
	{name = "rare identification rune", chance = 900},
	{name = "rare equipment discovery scroll", chance = 700},
	{name = "rare weapon discovery scroll", chance = 550},
	{name = "fragment of star stone", chance = 800},
	{name = "sliver", chance = 3500, maxCount = 4},
	{name = "dust", chance = 14000, maxCount = 10},
	{name = "ancestral crystal", chance = 5350, maxCount = 5},
	{name = "platinum coin", chance = 35540, maxCount = 15},
	{name = "great mana potion", chance = 22220, maxCount = 5},
	{name = "ultimate health potion", chance = 19540, maxCount = 5},
	{name = "great spirit potion", chance = 18510, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = -30, maxDamage = -180, range = 7, radius = 4, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -12, maxDamage = -100, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -10, maxDamage = -150, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -180, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -50, maxDamage = -110, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -100, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -10, maxDamage = -175, radius = 3, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 35,
	armor = 25,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 15},
	{type = COMBAT_FIREDAMAGE, percent = 25},
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
