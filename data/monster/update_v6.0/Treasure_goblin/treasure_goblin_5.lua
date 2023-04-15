local mType = Game.createMonsterType("Treasure Goblin the fifth")
local monster = {}

monster.description = "a Treasure Goblin the fifth"
monster.experience = 35000
monster.outfit = {
	lookType = 1505,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1637
monster.health = 125000
monster.maxHealth = 125000
monster.race = "undead"
monster.corpse = 2940
monster.speed = 600
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 90,
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
	{name = "Deathslicer", chance = 33, interval = 4000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "No one touch my treasure!", yell = false}
}

monster.loot = {
	{name = "Feather of Fate", chance = 20000, maxCount = 1},
	{name = "Bar of amber", chance = 10000, maxCount = 3},
	{name = "great mana potion", chance = 18000, maxCount = 2},
	{id = 10944, chance = 3000}, -- Dragon Egg
	{name = "ultimate health potion", chance = 20500, maxCount = 3},
	{name = "platinum coin", chance = 70000, maxCount = 15},
	{name = "bar of gold", chance = 7000},
	{name = "ancestral crystal", chance = 5000, maxCount = 2},
	{name = "demon shield", chance = 400},
	{name = "knight legs", chance = 5000},
	{name = "demoniac refined crystal", chance = 400},
	{name = "precious lava crystal", chance = 200},
	{name = "precious amber crystal", chance = 200},
	{name = "precious amethyst crystal", chance = 200},
	{name = "ancestral trout", chance = 150},
	{name = "damnation ark", chance = 250},
	{name = "sudden death rune", chance = 1200, maxCount = 3},
	{name = "avalanche rune", chance = 1200, maxCount = 3},
	{name = "ultimate health potion", chance = 12000, maxCount = 3},
	{name = "ultimate mana potion", chance = 12000, maxCount = 3},
	{name = "silver token", chance = 1000, maxCount = 2},
	{name = "tournament coin", chance = 800},
	{name = "platinum coin", chance = 20000, maxCount = 30},
	{name = "platinum coin", chance = 12000, maxCount = 80},
	{name = "crystal coin", chance = 3000, maxCount = 7}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000},
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -400, maxDamage = -1100, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -1300, length = 8, spread = 3, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -1500, range = 7, radius = 6, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="melee", interval = 1800, chance = 40, minDamage = 0, maxDamage = -1000},
	{name ="combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -1400, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -2400, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -980, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false},
}

monster.defenses = {
	defense = 45,
	armor = 40
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 45},
	{type = COMBAT_ENERGYDAMAGE, percent = 45},
	{type = COMBAT_EARTHDAMAGE, percent = 45},
	{type = COMBAT_FIREDAMAGE, percent = 45},
	{type = COMBAT_LIFEDRAIN, percent = 45},
	{type = COMBAT_MANADRAIN, percent = 45},
	{type = COMBAT_DROWNDAMAGE, percent = 45},
	{type = COMBAT_ICEDAMAGE, percent = 45},
	{type = COMBAT_HOLYDAMAGE , percent = 45},
	{type = COMBAT_DEATHDAMAGE , percent = 45}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
