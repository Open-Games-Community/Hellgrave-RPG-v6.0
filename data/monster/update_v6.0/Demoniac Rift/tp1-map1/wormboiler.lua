local mType = Game.createMonsterType("Wormboiler [***]")
local monster = {}

monster.description = "a Wormboiler [***]"
monster.experience = 45000
monster.outfit = {
	lookType = 1579,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 163
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 75,
	Stars = 5,
	Occurrence = 1,
	Locations = "Demoniac Rift Monster."
	}

monster.health = 45000
monster.maxHealth = 45000
monster.race = "blood"
monster.corpse = 24139
monster.speed = 400
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 30,
	health = 20,
	damage = 20,
	random = 30,
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
	{name = "crystal coin", chance = 87000, maxCount = 3},
	{name = "first fragment of dimensional chaos", chance = 1500, maxCount = 2},
	{name = "piece of endless crystal", chance = 2000},
	{name = "piece of divine crystal", chance = 1400},
	{name = "piece of amber crystal", chance = 800},
	{name = "second fragment of dimensional chaos", chance = 1000},
	{name = "demoniac crystal", chance = 4000, maxCount = 3},
	{name = "sparkling potion", chance = 3000},
	{name = "giant ruby", chance = 2000},
	{name = "fire token", chance = 900},
	{name = "chaos token", chance = 450},
	{name = "star token", chance = 900},
	{name = "electrical token", chance = 1100},
	{name = "demonic token", chance = 900},
	{name = "silver mirror token", chance = 800},
	{name = "giant emerald", chance = 3000},
	{name = "axe enhancement", chance = 700},
	{name = "Parangon scroll", chance = 1200},
	{name = "master rune", chance = 600},
	{name = "wrath pulished crystal", chance = 800},
	{name = "wrath crystal fragment", chance = 650},
	{name = "demoniac dust", chance = 6000, maxCount = 8},
	{name = "rejuvenation spirit potion", chance = 99500, maxCount = 2},
	{name = "rejuvenation mana potion", chance = 96000, maxCount = 1},
	{name = "rejuvenation health potion", chance = 95000, maxCount = 1},
	{name = "surprise backpack", chance = 5500},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -450, maxDamage = -1300},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -1410, range = 3, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -450, maxDamage = -1350, range = 3, shootEffect = CONST_ANI_HOLY, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -1300, length = 4, spread = 1, effect = CONST_ME_FIREAREA, target = false}}

monster.defenses = {
	defense = 100,
	armor = 90
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 10},
	{type = COMBAT_MANADRAIN, percent = 10},
	{type = COMBAT_DROWNDAMAGE, percent = 10},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
