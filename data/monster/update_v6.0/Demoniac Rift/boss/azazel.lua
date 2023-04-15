local mType = Game.createMonsterType("Azazel [*****]")
local monster = {}

monster.description = "a Azazel [*****]"
monster.experience = 500000
monster.outfit = {
	lookType = 1565,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 176
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 100,
	FirstUnlock = 25,
	SecondUnlock = 50,
	CharmsPoints = 500,
	Stars = 5,
	Occurrence = 3,
	Locations = "Demoniac Rift Boss."
	}

monster.health = 375000
monster.maxHealth = 375000
monster.race = "blood"
monster.corpse = 23836
monster.speed = 480
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 50,
	health = 20,
	damage = 20,
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

monster.events = {
	"broadBossOne"
}

monster.summons = {
}

monster.loot = {
	{name = "crystal coin", chance = 87000, maxCount = 25},
	{name = "amber core", chance = 8000, maxCount = 2},
	{name = "wrath pulished crystal", chance = 4500, maxCount = 3},
	{name = "wrath crystal fragment", chance = 2950, maxCount = 3},
	{name = "Parangon scroll", chance = 20000, maxCount = 20},
	{name = "demoniac crystal", chance = 18000, maxCount = 6},
	{name = "endless crystal", chance = 38000, maxCount = 10},
	{name = "mystic stone essence", chance = 82000, maxCount = 5},
	{name = "mystic book of chaos", chance = 20000, maxCount = 5},
	{name = "demoniac sliver", chance = 35000, maxCount = 6},
	{name = "demoniac dust", chance = 32000, maxCount = 20},
	{name = "fire token", chance = 18000, maxCount = 3},
	{name = "star token", chance = 16000, maxCount = 3},
	{name = "electrical token", chance = 21000, maxCount = 3},
	{name = "demonic token", chance = 25000, maxCount = 3},
	{name = "silver mirror token", chance = 19000, maxCount = 3},
	{name = "chaos token", chance = 14000, maxCount = 3},
	{name = "demoniac crystal", chance = 18000, maxCount = 10},
	{name = "fragment of dimensional chaos", chance = 11111, maxCount = 5},
	{name = "rejuvenation spirit potion", chance = 19500, maxCount = 8},
	{name = "mystic stone fragment", chance = 11000, maxCount = 5},
	{name = "abyssal stone fragment", chance = 8000, maxCount = 3},
	{name = "ascending stone fragment", chance = 6000, maxCount = 3},
	{name = "chaos stone fragment", chance = 3500, maxCount = 3},
	{name = "amber rune", chance = 7000},
	{name = "elder amphora", chance = 2000},
	{name = "demoniac rune", chance = 5200},
	{name = "rejuvenation mana potion", chance = 14000, maxCount = 5},
	{name = "rejuvenation health potion", chance = 13000, maxCount = 5},
	{name = "divine equipment discovery scroll", chance = 800},
	{name = "divine weapon discovery scroll", chance = 600},
	{name = "crystal fluid", chance = 2500},
	{id = 11400, chance = 2000, maxCount = 3},
	{name = "identification parchment", chance = 550},
	{id = 36436, chance = 400},
	{id = 36437, chance = 320},
	{id = 36438, chance = 570},
	{id = 36439, chance = 610},
	{id = 36440, chance = 370},
	{id = 36441, chance = 320},
	{id = 36442, chance = 410},
	{id = 36815, chance = 490},
	{id = 36816, chance = 550},
	{id = 36818, chance = 610},
	{id = 36820, chance = 700}
}

monster.attacks = { 
	{name ="melee", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -2000},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -2300, length = 10, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="speed", interval = 2000, chance = 25, speedChange = -600, radius = 7, effect = CONST_ME_GREEN_RINGS, target = false, duration = 15000},
	{name ="azazelwavedice", interval = 2000, chance = 20, minDamage = -550, maxDamage = -1500, target = false},
	{name ="azazelexplosionwave", interval = 2000, chance = 20, minDamage = -600, maxDamage = -1500, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -1800, length = 10, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="azazeldoublewave", interval = 2000, chance = 20, minDamage = -100, maxDamage = -1000, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -800, maxDamage = -1750, radius = 5, effect = CONST_ME_ICETORNADO, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -900, maxDamage = -1950, range = 6, shootEffect = CONST_ANI_ARROW, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
	defense = 150,
	armor = 150,
	{name ="azazel summon", interval = 2000, chance = 15, target = false}
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 30},
	{type = COMBAT_MANADRAIN, percent = 30},
	{type = COMBAT_DROWNDAMAGE, percent = 30},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
