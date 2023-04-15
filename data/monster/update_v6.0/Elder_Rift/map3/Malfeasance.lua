local mType = Game.createMonsterType("Malfeasance [**]")
local monster = {}

monster.description = "a Malfeasance [**]"
monster.experience = 22500
monster.outfit = {
	lookType = 1575,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 159
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 75,
	Stars = 4,
	Occurrence = 1,
	Locations = "Elder Rift Monster."
	}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 24174
monster.speed = 60
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
	{name = "crystal coin", chance = 70540},
	{name = "platinum coin", chance = 90540, maxCount = 50}, 
	{name = "Parangon scroll", chance = 900},
	{name = "amber sliver", chance = 1000, maxCount = 2},
	{name = "amber dust", chance = 7200, maxCount = 5},
	{name = "endless crystal", chance = 5000, maxCount = 2},
	{name = "amber crystal stone", chance = 5000, maxCount = 10},
	{name = "exaltation chest", chance = 100},
	{name = "astral chest", chance = 350},
	{name = "key of astral chest", chance = 900},
	{id = 39179, chance = 4200},
	{name = "ancestral Token", chance = 750},
	{name = "Luminous Concoction", chance = 1050},
	{name = "ancient token", chance = 900},
	{name = "quantum token", chance = 900},
	{name = "amber token", chance = 3010, maxCount = 2},
	{name = "time coin", chance = 800},
	{name = "darkness coin", chance = 790},
	{name = "endless coin", chance = 780},
	{name = "coin of heroism", chance = 770},
	{name = "coin of valor", chance = 760},
	{name = "Luminous Potion", chance = 130},
	{name = "celestial relic", chance = 1170},
	{name = "hardened skin", chance = 4000},
	{name = "tail bone", chance = 3000, maxCount = 2},
	{name = "thick leather", chance = 10050},
	{name = "monster skull", chance = 1500},
	{name = "golden helmet", chance = 10},
	{name = "dragon scale legs", chance = 18},
	{name = "normal emblem", chance = 1000, maxCount = 1},
	{id = 24783, chance = 35},
	{id = 24784, chance = 35},
	{id = 24785, chance = 35},
	{name = "reliquary spirit potion", chance = 79540, maxCount = 3},
	{name = "reliquary mana potion", chance = 70000, maxCount = 2},
	{name = "reliquary health potion", chance = 70000, maxCount = 3},
	{id = 24786, chance = 35},
	{id = 24788, chance = 35},
	{id = 24790, chance = 35}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1200},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -2350, range = 7, length = 3, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = 0, maxDamage = -1800, range = 7, length = 3, spread = 3, effect = CONST_ME_HITBYFIRE, target = false}
}

	monster.defenses = {
		defense = 30,
		armor = 75
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
