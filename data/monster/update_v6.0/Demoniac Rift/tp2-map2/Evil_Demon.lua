local mType = Game.createMonsterType("Evil Demon [***]")
local monster = {}

monster.description = "a Evil Demon [***]"
monster.experience = 45000
monster.outfit = {
	lookType = 1584,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 165
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

	monster.health = 55000
	monster.maxHealth = 55000
	monster.race = "blood"
	monster.corpse = 35115
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
	{name = "crystal coin", chance = 15000, maxCount = 4},
	{name = "ediem carp", chance = 1300},
	{name = "tempest shield", chance = 100},
	{name = "furious frock", chance = 200},
	{name = "chain bolter", chance = 140},
	{name = "shroud of despair", chance = 150},
	{name = "third fragment of dimensional chaos", chance = 800},
	{name = "Parangon scroll", chance = 1200},
	{name = "demoniac dust", chance = 6000, maxCount = 8},
	{name = "mythril axe", chance = 150},
	{name = "wrath pulished crystal", chance = 800},
	{name = "wrath crystal fragment", chance = 650},
	{name = "fire token", chance = 900},
	{name = "star token", chance = 900},
	{name = "electrical token", chance = 1100},
	{name = "demonic token", chance = 900},
	{name = "endless rune", chance = 650},
	{name = "chaos token", chance = 450},
	{name = "legendary rune", chance = 450},
	{name = "elder amphora", chance = 200},
	{name = "silver mirror token", chance = 800},
	{name = "hells arch", chance = 6800},
	{name = "divine elixir", chance = 200},
	{id = 12289, chance = 7500},
	{name = "rejuvenation spirit potion", chance = 99500, maxCount = 2},
	{name = "rejuvenation mana potion", chance = 96000, maxCount = 1},
	{name = "rejuvenation health potion", chance = 95000, maxCount = 1},
	{name = "evil eye", chance = 100},
	{name = "luminous concoction", chance = 1050},
	{name = "golden legs", chance = 3000},
	{name = "demon shield", chance = 11000},
	{name = "brillant rose", chance = 5000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1850},
	{name ="fire wave", interval = 2000, chance = 15, minDamage = -350, maxDamage = -1500, length = 1, spread = 0, target = true},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -1800, radius = 4, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -2150, range = 1, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -2580, length = 6, spread = 3, effect = CONST_ME_HOLYAREA, target = false}}


	monster.defenses = {
		defense = 180,
		armor = 180
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
