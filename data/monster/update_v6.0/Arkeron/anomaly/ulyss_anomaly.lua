local mType = Game.createMonsterType("Ulyss Anomaly [****]")
local monster = {}

monster.description = "a Ulyss Anomaly [****]"
monster.experience = 90000
monster.outfit = {
	lookType = 1644,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 231
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

monster.health = 85000
monster.maxHealth = 85000
monster.race = "blood"
monster.corpse = 38709
monster.speed = 600
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 30,
	health = 20,
	damage = 50,
	random = 0,
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
	{name = "crystal coin", chance = 87000, maxCount = 10},
	{name = "primal moonstone", chance = 2800},
	{name = "awakening moonstone", chance = 1800},
	{name = "harmonious crystal", chance = 2900},
	{name = "darkness crystal", chance = 2200},
	{name = "swirling crystal", chance = 2800},
	{name = "small elementium stone", chance = 2000},
	{name = "turbulent flask", chance = 3000},
	{name = "infusion geode", chance = 7000},
	{name = "celestial geode", chance = 5000},
	{name = "primal seal", chance = 3000, maxCount = 2},
	{name = "awakening seal", chance = 2000, maxCount = 2},
	{name = "flame egg", chance = 5500},
	{name = "forest egg", chance = 4700},
	{name = "wind egg", chance = 3000},
	{name = "angel egg", chance = 2000},
	{name = "ancient token", chance = 2000},
	{name = "quantum token", chance = 2000},
	{name = "spirit eye", chance = 3200},
	{name = "titan eye", chance = 1700},
	{name = "titan geode", chance = 2800},
	{name = "inferno prismatic crystal", chance = 1700},
	{name = "titan prismatic crystal", chance = 1300},
	{name = "divine star", chance = 3000},
	{name = "imbued thorn", chance = 2200},
	{name = "great chaos demonic stone", chance = 1000},
	{name = "celestial star shell", chance = 1500},
	{name = "jewel of angels", chance = 1000},
	{name = "arkeron coin", chance = 2500},
	{name = "mark of shadows", chance = 3600},
	{name = "small chaos divine stone", chance = 2000, maxCount = 2},
	{name = "master mana potion", chance = 41000, maxCount = 2},
	{name = "master health potion", chance = 41000, maxCount = 2},
	{name = "master spirit potion", chance = 39000, maxCcount = 1},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 200, attack = 200},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -400, maxDamage = -1400, radius = 6, effect = 246, target = false},
	{name ="berserk", interval = 2000, chance = 15, minDamage = -400, maxDamage = -1600, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -1000, length = 4, spread = 3, effect = 62, target = false}
}

monster.defenses = {
	defense = 140,
	armor = 200
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 9},
	{type = COMBAT_ENERGYDAMAGE, percent = 28},
	{type = COMBAT_EARTHDAMAGE, percent = 11},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
