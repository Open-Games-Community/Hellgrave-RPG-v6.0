local mType = Game.createMonsterType("Mutated Scourge Draptor [****]")
local monster = {}

monster.description = "a Mutated Scourge Draptor [****]"
monster.experience = 65000
monster.outfit = {
	lookType = 1622,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 204
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
monster.corpse = 13316
monster.speed = 400
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
	{name = "void essence", chance = 1000},
	{name = "void mark", chance = 1300},
	{id = 39179, chance = 3000},
	{name = "monster horn", chance = 900, maxCount = 2},
	{name = "monster skull", chance = 900, maxCount = 2},
	{name = "cursed token", chance = 1200},
	{name = "fire token", chance = 1200},
	{name = "demonic token", chance = 1200},
	{name = "coin of heroism", chance = 1200},
	{name = "silver mirror token", chance = 1200},
	{name = "pair of ribs bones", chance = 2100, maxCount = 3},
	{name = "mycological bow", chance = 700},
	{name = "mystic blade", chance = 700},
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -1480},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -1400, range = 7, radius = 4, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -325, maxDamage = -1600, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = 249, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -1390, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = 247, target = true},
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
