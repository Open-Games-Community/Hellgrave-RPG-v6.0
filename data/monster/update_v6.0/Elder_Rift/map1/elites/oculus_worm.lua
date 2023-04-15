local mType = Game.createMonsterType("Oculus Worm [**]")
local monster = {}

monster.description = "an Oculus Worm [**]"
monster.experience = 90000
monster.outfit = {
	lookType = 1551,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 151
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 100,
	FirstUnlock = 25,
	SecondUnlock = 75,
	CharmsPoints = 200,
	Stars = 5,
	Occurrence = 3,
	Locations = "Boss from Elder Rift."
	}

monster.health = 200000
monster.maxHealth = 200000
monster.race = "blood"
monster.corpse = 23563
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
	{name = "crystal coin", chance = 60000, maxCount = 20},
	{name = "key of astral chest", chance = 3000},
	{name = "astral chest", chance = 1400},
	{name = "amber core", chance = 500},
	{name = "eldritch crystal", chance = 3000, maxCount = 2},
	{name = "star stone", chance = 7000, maxCount = 2},
	{name = "zodiac stone", chance = 6000, maxCount = 2},
	{name = "Parangon Scroll", chance = 18000, maxCount = 5},
	{name = "legendary rune", chance = 1200, maxCount = 2},
	{name = "divine rune", chance = 2800},
	{name = "rare endless crystal", chance = 10000},
	{name = "amber token", chance = 13010, maxCount = 10},
	{name = "rare divine crystal", chance = 5000},
	{name = "angel relic", chance = 3000, maxCount = 2},
	{name = "demoniac crystal stone", chance = 15000, maxCount = 2},
	{id = 39179, chance = 3000, maxCount = 2},
	{name = "rare amber crystal", chance = 3100},
	{name = "endless crystal", chance = 20000, maxCount = 20},
	{name = "epic equipment discovery scroll", chance = 700},
	{name = "amber sliver", chance = 18500, maxCount = 10},
	{name = "amber dust", chance = 32000, maxCount = 30},
	{name = "hellgrave coin", chance = 5100, maxCount = 3},
	{name = "crystal token", chance = 18000, maxCount = 4},
	{name = "ancestral Token", chance = 18000, maxCount = 2},
	{name = "star token", chance = 9500, maxCount = 3},
	{name = "electrical token", chance = 7000, maxCount = 3},
	{name = "wind token", chance = 3000, maxCount = 2},
	{name = "mystery token", chance = 2000, maxCount = 2},
	{name = "legendary emblem", chance = 11600, maxCount = 2},
	{name = "normal emblem", chance = 13000, maxCount = 3},
	{name = "epic emblem", chance = 6350},
	{name = "tournament coin", chance = 2500, maxCount = 3},
	{name = "astral source", chance = 1340},
	{name = "ancestral source", chance = 2000},
	{name = "elder amphora", chance = 950},
	{id = 36823, chance = 150},
	{id = 36824, chance = 320},
	{id = 36825, chance = 370},
	{id = 36826, chance = 280},
	{id = 36827, chance = 190},
	{id = 36853, chance = 220},
	{name = "identification parchment", chance = 550},
	{name = "rejuvenation spirit potion", chance = 79540, maxCount = 7},
	{name = "rejuvenation mana potion", chance = 70000, maxCount = 5},
	{name = "rejuvenation health potion", chance = 70000, maxCount = 5},
	{name = "mistery coin", chance = 1000, maxCount = 2},
	{name = "celestial relic", chance = 3000},
	{name = "ediem carp", chance = 400},
	{name = "ancestral trout", chance = 800},
	{name = "refined lava crystal", chance = 7600},
	{name = "refined amethyst crystal", chance = 4000},
	{name = "gold ingot", chance = 7200, maxCount = 4},
	{name = "evil eye ring", chance = 1300},
	{name = "lotus amulet", chance = 9270},
	{name = "ancestral essence", chance = 9230, maxCount = 1},
	{id = 9735, chance = 980},
	{name = "impaler", chance = 800}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 125, attack = 115},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, minDamage = -1000, maxDamage = -1500, range = 7, radius = 9, effect = CONST_ME_MORTAREA, target = true},
	{name ="speed", interval = 1000, chance = 12, speedChange = -100, range = 7, radius = 4, effect = CONST_ME_POISONAREA, target = true, duration = 60000},
	{name ="condition", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 20, minDamage = -1000, maxDamage = -1900, length = 7, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="big energy purple wave", interval = 2000, chance = 25, minDamage = -1000, maxDamage = -3000, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -1600, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1300, length = 8, spread = 3, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -900, length = 8, spread = 3, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="big skill reducer", interval = 2000, chance = 25, target = false},
}


monster.defenses = {
	defense = 115,
	armor = 115,
}

monster.reflects = {
	{type = COMBAT_DEATHDAMAGE, percent = 6},
	{type = COMBAT_PHYSICALDAMAGE, percent = 6}
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
