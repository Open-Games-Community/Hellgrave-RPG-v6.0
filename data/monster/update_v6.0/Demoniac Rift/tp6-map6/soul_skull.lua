local mType = Game.createMonsterType("Soul Skull [***]")
local monster = {}

monster.description = "a Soul Skull [***]"
monster.experience = 45000
monster.outfit = {
	lookType = 1519,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 173
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
	monster.corpse = 22475
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
	{name = "royal draken mail", chance = 600},
	{name = "royal scale robe", chance = 500},
	{name = "robe of the ice queen", chance = 800},
	{name = "major crystalline token", chance = 2500, maxCount = 1},
	{name = "cobra hood", chance = 400},
	{name = "fire token", chance = 900},
	{name = "silver mirror token", chance = 800},
	{name = "chaos token", chance = 450},
	{name = "star token", chance = 900},
	{name = "electrical token", chance = 1100},
	{name = "demonic token", chance = 900},
	{name = "dark whispers", chance = 200},
	{name = "first fragment of dimensional chaos", chance = 1500, maxCount = 2},
	{name = "piece of endless crystal", chance = 2000},
	{name = "piece of divine crystal", chance = 1400},
	{name = "Parangon scroll", chance = 1200},
	{name = "piece of amber crystal", chance = 800},
	{name = "demoniac dust", chance = 15000, maxCount = 10},
	{id = 9693, chance = 300},
	{id = 9699, chance = 200},
	{name = "wrath pulished crystal", chance = 800},
	{name = "wrath crystal fragment", chance = 650},
	{id = 9735, chance = 200},
	{name = "rejuvenation spirit potion", chance = 99500, maxCount = 2},
	{name = "rejuvenation mana potion", chance = 96000, maxCount = 1},
	{name = "rejuvenation health potion", chance = 95000, maxCount = 1},
	{name = "small sapphire", chance = 33000, maxCount = 8},
	{name = "small ruby", chance = 28000, maxCount = 5}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1410},
	{name ="combat", interval = 2000, chance = 50, type = COMBAT_DEATHDAMAGE, minDamage = -560, maxDamage = -1650, length = 6, spread = 0, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2750, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -490, maxDamage = -1720, range = 5, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2750, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -720, maxDamage = -1810, range = 5, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="lavafungus ring", interval = 2000, chance = 20, minDamage = -450, maxDamage = -1210},
	{name ="lavafungus x wave", interval = 2000, chance = 10, minDamage = -640, maxDamage = -1730},
}


	monster.defenses = {
		defense = 50,
		armor = 250
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
		{type = COMBAT_FIREDAMAGE, percent = 50},
		{type = COMBAT_LIFEDRAIN, percent = 0},
		{type = COMBAT_MANADRAIN, percent = 0},
		{type = COMBAT_DROWNDAMAGE, percent = 0},
		{type = COMBAT_ICEDAMAGE, percent = 0},
		{type = COMBAT_HOLYDAMAGE , percent = 0},
		{type = COMBAT_DEATHDAMAGE , percent = 50}
	}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
