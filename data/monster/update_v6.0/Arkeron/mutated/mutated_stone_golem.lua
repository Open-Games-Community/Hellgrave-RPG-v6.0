local mType = Game.createMonsterType("Mutated Stone Golem [****]")
local monster = {}

monster.description = "a Mutated Stone Golem [****]"
monster.experience = 70000
monster.outfit = {
	lookType = 1625,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 206
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

monster.health = 68500
monster.maxHealth = 68500
monster.race = "blood"
monster.corpse = 6005
monster.speed = 480
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 35,
	health = 0,
	damage = 50,
	random = 15,
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
	{name = "rare endless crystal", chance = 2000},
	{name = "rare divine crystal", chance = 1250},
	{name = "rare amber crystal", chance = 850},
	{id = 39178, chance = 3000},
	{id = 39179, chance = 3000},
	{name = "heroic axe", chance = 700},
	{name = "void essence", chance = 1000},
	{name = "void mark", chance = 1300},
	{name = "lavos armor", chance = 550},
	{name = "cursed token", chance = 1200},
	{name = "darkness seal", chance = 4800, maxCount = 2},
	{name = "fire token", chance = 1200},
	{name = "demonic token", chance = 1200},
	{name = "coin of heroism", chance = 1200},
	{name = "silver mirror token", chance = 1200},
	{name = "ink snapper", chance = 800},
	{name = "grawn", chance = 900},
	{name = "kiye gudgeon", chance = 1100},
	{name = "demoniac token", chance = 1170},
	{name = "soul potion", chance = 1100},
	{name = "legendary emblem", chance = 800},
	{name = "shadow chest", chance = 2000},
	{id = 39225, chance = 5000, maxCount = 3},
	{name = "first fragment of dimensional chaos", chance = 5500},
	{name = "second fragment of dimensional chaos", chance = 2500},
	{name = "third fragment of dimensional chaos", chance = 1200},
	{id = 11400, chance = 2000, maxCount = 2},
	{name = "mystic stone fragment", chance = 11000, maxCount = 5},
	{name = "abyssal stone fragment", chance = 8000, maxCount = 3},
	{name = "ascending stone fragment", chance = 6000, maxCount = 3},
	{name = "chaos stone fragment", chance = 3500, maxCount = 3},
	{name = "harmonious seal", chance = 1800, maxCount = 2},
	{name = "arkeron coin", chance = 950},
	{name = "master mana potion", chance = 41000, maxCount = 2},
	{name = "master health potion", chance = 41000, maxCount = 2},
	{name = "master spirit potion", chance = 39000, maxCcount = 1},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1603},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -520, maxDamage = -1780, range = 5, effect = 247, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -1230, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -320, maxDamage = -1250, length = 8, spread = 3, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -210, maxDamage = -1400, radius = 4, effect = CONST_ME_MORTAREA, target = false},
	{name ="ghastly dragon curse", interval = 2000, chance = 5, range = 5, target = false},
	{name ="speed", interval = 2000, chance = 20, speedChange = -800, range = 7, effect = CONST_ME_SMALLCLOUDS, target = true, duration = 30000}
}

monster.defenses = {
	defense = 145,
	armor = 145,
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
	{type = COMBAT_EARTHDAMAGE, percent = -2},
	{type = COMBAT_FIREDAMAGE, percent = -18},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -50},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
