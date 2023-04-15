local mType = Game.createMonsterType("Arcangel [****]")
local monster = {}

monster.description = "a Arcangel [****]"
monster.experience = 70000
monster.outfit = {
	lookType = 1602,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 185
monster.Bestiary = {
	class = "Chaos",
	race = BESTY_RACE_CHAOS,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 85,
	Stars = 5,
	Occurrence = 1,
	Locations = "Chaos Monster."
	}

monster.health = 65000
monster.maxHealth = 65000
monster.race = "blood"
monster.corpse = 34801
monster.speed = 200
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 80,
	health = 5,
	damage = 5,
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
	{name = "crystal coin", chance = 87000, maxCount = 8},
	{name = "rare endless crystal", chance = 3000},
	{name = "rare divine crystal", chance = 2250},
	{name = "rare amber crystal", chance = 1150},
	{name = "demoniac token", chance = 2170},
	{id = 39225, chance = 5000, maxCount = 3},
	{id = 11400, chance = 3000, maxCount = 2},
	{name = "mystic stone fragment", chance = 11000, maxCount = 5},
	{name = "abyssal stone fragment", chance = 8000, maxCount = 3},
	{name = "cursed token", chance = 1200},
	{name = "fire token", chance = 1200},
	{name = "demonic token", chance = 1200},
	{name = "affliction essence", chance = 2000},
	{name = "shadow mark", chance = 1300},
	{name = "coin of heroism", chance = 1200},
	{name = "silver mirror token", chance = 1200},
	{name = "ascending stone fragment", chance = 6000, maxCount = 3},
	{name = "chaos stone fragment", chance = 3500, maxCount = 3},
	{name = "harmonious seal", chance = 1800, maxCount = 2},
	{name = "arkeron coin", chance = 1000},
	{name = "parchment of ancient writings", chance = 1380},
	{name = "master mana potion", chance = 41000, maxCount = 2},
	{name = "master health potion", chance = 41000, maxCount = 2},
	{name = "master spirit potion", chance = 39000, maxCcount = 1},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -670, maxDamage = -990, radius = 4, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -880, maxDamage = -1410, radius = 4, effect = 238, target = true},
	{name ="combat", interval = 2000, chance = 5200, type = COMBAT_ICEDAMAGE, minDamage = -780, maxDamage = -1370, effect = 237, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -1290, length = 5, spread = 3, effect = CONST_ME_ICEATTACK, target = false}
}

monster.defenses = {
	defense = 150,
	armor = 150,
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 12},
	{type = COMBAT_ENERGYDAMAGE, percent = 12},
	{type = COMBAT_EARTHDAMAGE, percent = 12},
	{type = COMBAT_FIREDAMAGE, percent = 12},
	{type = COMBAT_LIFEDRAIN, percent = 12},
	{type = COMBAT_MANADRAIN, percent = 12},
	{type = COMBAT_DROWNDAMAGE, percent = 12},
	{type = COMBAT_ICEDAMAGE, percent = 12},
	{type = COMBAT_HOLYDAMAGE , percent = 12},
	{type = COMBAT_DEATHDAMAGE , percent = 12}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
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
