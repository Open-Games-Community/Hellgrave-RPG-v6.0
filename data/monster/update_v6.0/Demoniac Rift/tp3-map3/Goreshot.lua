local mType = Game.createMonsterType("Goreshot [***]")
local monster = {}

monster.description = "a Goreshot [***]"
monster.experience = 45000
monster.outfit = {
	lookType = 1555,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 167
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

	monster.health = 50000
	monster.maxHealth = 50000
	monster.race = "blood"
	monster.corpse = 22474
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
	runHealth = 1,
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
	{name = "crystal coin", chance = 11000, maxCount = 4},
	{name = "demoniac crystal", chance = 4770, maxCount = 5},
	{name = "supremacy relic", chance = 420},
	{name = "soulmaimer", chance = 100},
	{name = "chaos token", chance = 450},
	{name = "soulcrusher", chance = 200},
	{name = "first fragment of dimensional chaos", chance = 1500, maxCount = 2},
	{name = "divine rune", chance = 170},
	{name = "legendary rune", chance = 370},
	{name = "silver mirror token", chance = 800},
	{name = "fire token", chance = 900},
	{name = "star token", chance = 900},
	{name = "electrical token", chance = 1100},
	{name = "demonic token", chance = 900},
	{name = "wrath pulished crystal", chance = 800},
	{name = "wrath crystal fragment", chance = 650},
	{name = "demoniac dust", chance = 8500, maxCount = 8},
	{name = "spellbook of ancient arcana", chance = 500},
	{name = "relic of the sky", chance = 2000},
	{name = "rejuvenation spirit potion", chance = 99500, maxCount = 2},
	{name = "rejuvenation mana potion", chance = 96000, maxCount = 1},
	{name = "rejuvenation health potion", chance = 95000, maxCount = 1},
	{name = "monster coast", chance = 3000},
	{name = "fractured bones", chance = 2350},
	{name = "luminous concoction", chance = 550},
	{name = "vertebral column", chance = 3000},
	{name = "monster tail", chance = 11000},
	{name = "giant monster fur", chance = 2000, maxCount = 2},
	{name = "clogs", chance = 8000, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 120, attack = 110},
	{name ="combat", interval = 1500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -1250, range = 7, shootEffect = CONST_ANI_WHIRLWINDSWORD, target = false},
	{name ="combat", interval = 2000, chance = 7, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -1360, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_SOUND_RED, target = true},
	{name ="combat", interval = 2000, chance = 11, type = COMBAT_LIFEDRAIN, minDamage = -500, maxDamage = -1385, radius = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="seacrest serpent wave", interval = 2000, chance = 30, minDamage = 0, maxDamage = -284, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1700, length = 4, spread = 3, effect = CONST_ME_MAGIC_BLUE, target = false}
}

	monster.defenses = {
		defense = 110,
		armor = 120
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
		{type = COMBAT_PHYSICALDAMAGE, percent = 35},
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
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
