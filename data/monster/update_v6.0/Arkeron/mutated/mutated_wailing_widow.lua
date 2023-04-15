local mType = Game.createMonsterType("Mutated Wailing Widow [****]")
local monster = {}

monster.description = "a Mutated Wailing Widow [****]"
monster.experience = 70000
monster.outfit = {
	lookType = 1627,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 207
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
monster.corpse = 11310
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
	{name = "void essence", chance = 1000},
	{name = "void mark", chance = 1300},
	{id = 39178, chance = 3000},
	{name = "cursed token", chance = 1200},
	{name = "fire token", chance = 1200},
	{name = "demonic token", chance = 1200},
	{name = "coin of heroism", chance = 1200},
	{name = "silver mirror token", chance = 1200},
	{id = 39179, chance = 3000},
	{name = "contest snapper", chance = 400},
	{name = "purple seadream", chance = 550},
	{name = "frozen icefish", chance = 500},
	{name = "hammer of wrath", chance = 700},
	{name = "heavy mace", chance = 650},
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
	{name = "arkeron coin", chance = 1250},
	{name = "master mana potion", chance = 41000, maxCount = 2},
	{name = "master health potion", chance = 41000, maxCount = 2},
	{name = "master spirit potion", chance = 39000, maxCcount = 1},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1100, condition = {type = CONDITION_POISON, totalDamage = 4000, interval = 4000}},
	{name ="drunk", interval = 2000, chance = 20, range = 7, radius = 4, effect = CONST_ME_SOUND_RED, target = false, duration = 4000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -1400, radius = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -600, maxDamage = -1600, range = 7, shootEffect = 248, target = false}
}

monster.defenses = {
	defense = 115,
	armor = 175,
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 42},
	{type = COMBAT_FIREDAMAGE, percent = -6},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = -12}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
