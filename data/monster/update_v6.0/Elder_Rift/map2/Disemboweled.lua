local mType = Game.createMonsterType("Disemboweled [**]")
local monster = {}

monster.description = "a Disemboweled [**]"
monster.experience = 22500
monster.outfit = {
	lookType = 1576,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 155
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
monster.corpse = 24123
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
	{name = "ancient token", chance = 900},
	{name = "quantum token", chance = 900},
	{name = "Parangon scroll", chance = 900},
	{name = "amber sliver", chance = 1000, maxCount = 2},
	{name = "amber dust", chance = 7200, maxCount = 5},
	{name = "endless crystal", chance = 5000, maxCount = 2},
	{name = "amber crystal stone", chance = 5000, maxCount = 10},
	{name = "bar of gold", chance = 3000},
	{name = "time coin", chance = 800},
	{name = "darkness coin", chance = 790},
	{name = "endless coin", chance = 780},
	{name = "coin of heroism", chance = 770},
	{name = "coin of valor", chance = 760},
	{name = "bar of amber", chance = 1000},
	{name = "fragment of star stone", chance = 1400},
	{name = "fragment of zodiac stone", chance = 700},
	{name = "astral source", chance = 100},
	{name = "ancestral source", chance = 450},
	{name = "fragment divine crystal", chance = 2000},
	{name = "fragment endless crystal", chance = 1200},
	{name = "fragment amber crystal", chance = 700},
	{name = "normal emblem", chance = 1000, maxCount = 1},
	{name = "Parangon scroll", chance = 900},
	{name = "ancestral Token", chance = 750},
	{name = "Glacier Mask", chance = 4000},
	{name = "amber token", chance = 3010, maxCount = 2},
	{name = "Glacier Robe", chance = 3000},
	{name = "rare blessed dust", chance = 3000, maxCount = 3},
	{name = "very rare blessed dust", chance = 1200, maxCount = 2},
	{name = "reliquary spirit potion", chance = 79540, maxCount = 3},
	{name = "reliquary mana potion", chance = 70000, maxCount = 2},
	{name = "reliquary health potion", chance = 70000, maxCount = 3},
	{name = "epic blessed dust", chance = 700, maxCount = 2},
	{name = "divine blessed dust", chance = 500, maxCount = 2},
	{name = "rare rune powder", chance = 2500, maxCount = 3},
	{name = "very rare rune powder", chance = 1600, maxCount = 2},
	{name = "epic rune powder", chance = 1000, maxCount = 2},
	{name = "divine rune powder", chance = 600, maxCount = 2},
	{name = "Lightning Robe", chance = 4000},
	{name = "Glacier Kilt", chance = 4000},
	{name = "Lightning Legs", chance = 4000},
	{name = "rose shield", chance = 10},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 100, attack = 100, condition = {type = CONDITION_POISON, totalDamage = 100, interval = 4000}},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -420, maxDamage = -610, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 22, minDamage = -800, maxDamage = -1400, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -80, maxDamage = -150, radius = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -720, range = 7, radius = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="mutated rat paralyze", interval = 2000, chance = 20, range = 7, target = false}}


	monster.defenses = {
		defense = 75,
		armor = 70
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
