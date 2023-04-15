local mType = Game.createMonsterType("Mangler [**]")
local monster = {}

monster.description = "a Mangler [**]"
monster.experience = 22500
monster.outfit = {
	lookType = 1573,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 158
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

monster.health = 35000
monster.maxHealth = 35000
monster.race = "blood"
monster.corpse = 24136
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
	{name = "cluster of solace", chance = 4000, maxCount = 2},
	{name = "time coin", chance = 800},
	{name = "darkness coin", chance = 790},
	{name = "endless coin", chance = 780},
	{name = "coin of heroism", chance = 770},
	{name = "ancient token", chance = 900},
	{name = "quantum token", chance = 900},
	{name = "ancestral Token", chance = 750},
	{name = "coin of valor", chance = 760},
	{name = "legendary rune", chance = 1010},
	{name = "amber token", chance = 3010, maxCount = 2},
	{name = "rare rune powder", chance = 2500, maxCount = 3},
	{name = "very rare rune powder", chance = 1600, maxCount = 2},
	{name = "epic rune powder", chance = 1000, maxCount = 2},
	{name = "fragment divine crystal", chance = 2000},
	{name = "fragment of star stone", chance = 1400},
	{name = "fragment of zodiac stone", chance = 700},
	{name = "fragment endless crystal", chance = 1200},
	{name = "normal emblem", chance = 1000, maxCount = 1},
	{name = "fragment amber crystal", chance = 700},
	{name = "divine rune powder", chance = 600, maxCount = 2},
	{name = "reliquary spirit potion", chance = 79540, maxCount = 3},
	{name = "reliquary mana potion", chance = 70000, maxCount = 2},
	{name = "reliquary health potion", chance = 70000, maxCount = 3},
	{name = "winged ring", chance = 735},
	{name = "visage of the end days", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -377},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -458, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -366, maxDamage = -570, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -360, maxDamage = -570, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = -250, maxDamage = -450, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_MANADRAIN, minDamage = -300, maxDamage = -475, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000}}


	monster.defenses = {
		defense = 175,
		armor = 160
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
