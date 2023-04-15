local mType = Game.createMonsterType("Damned Soul [**]")
local monster = {}

monster.description = "a Damned Soul [**]"
monster.experience = 22500
monster.outfit = {
	lookType = 1561,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 150
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

monster.health = 32000
monster.maxHealth = 32000
monster.race = "blood"
monster.corpse = 6068
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
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "crystal coin", chance = 70540},
	{name = "platinum coin", chance = 90540, maxCount = 50}, 
	{name = "skullcracker armor", chance = 9450},
	{name = "swamplair armor", chance = 8250},
	{name = "time coin", chance = 800},
	{name = "ancestral Token", chance = 750},
	{name = "darkness coin", chance = 790},
	{name = "endless coin", chance = 780},
	{name = "ancient token", chance = 900},
	{name = "quantum token", chance = 900},
	{name = "coin of heroism", chance = 770},
	{name = "coin of valor", chance = 760},
	{name = "voltage armor", chance = 3300},
	{name = "amber token", chance = 3010, maxCount = 2},
	{name = "fragment divine crystal", chance = 10000},
	{name = "normal emblem", chance = 1000, maxCount = 1},
	{name = "fragment endless crystal", chance = 6200},
	{name = "fragment amber crystal", chance = 3700},
	{name = "Parangon scroll", chance = 900},
	{name = "endless crystal", chance = 5000, maxCount = 2},
	{name = "amber sliver", chance = 1000, maxCount = 2},
	{name = "amber dust", chance = 7200, maxCount = 5},
	{name = "amber crystal stone", chance = 5000, maxCount = 10},
	{name = "fragment of star stone", chance = 1400},
	{name = "fragment of zodiac stone", chance = 700},
	{name = "rare blessed dust", chance = 29000, maxCount = 3},
	{name = "very rare blessed dust", chance = 21200, maxCount = 2},
	{name = "epic blessed dust", chance = 15000, maxCount = 2},
	{name = "divine blessed dust", chance = 9500, maxCount = 2},
	{name = "rare rune powder", chance = 31500, maxCount = 3},
	{name = "very rare rune powder", chance = 25600, maxCount = 2},
	{name = "epic rune powder", chance = 18000, maxCount = 2},
	{name = "divine rune powder", chance = 6000, maxCount = 2},
	{name = "reliquary spirit potion", chance = 79540, maxCount = 3},
	{name = "reliquary mana potion", chance = 70000, maxCount = 2},
	{name = "reliquary health potion", chance = 70000, maxCount = 3},
	{name = "dream matter", chance = 1000},
	{name = "shaggy ogre bag", chance = 8000},
	{name = "mysterious remains", chance = 4800},
	{name = "bloody tears", chance = 1100, maxCount = 2},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
	{name ="combat", interval = 4000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -800, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_WHIRLWINDSWORD, effect = CONST_ME_PLANTATTACK, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -750, radius = 4, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SPECTRALBOLT, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 2000, chance = 24, type = COMBAT_HOLYDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, radius = 3, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_WHITE_ENERGY_SPARK, target = true}
}

monster.defenses = {
	defense = 90,
	armor = 107
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
