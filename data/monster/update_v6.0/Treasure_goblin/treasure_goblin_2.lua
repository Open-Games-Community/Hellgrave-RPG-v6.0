local mType = Game.createMonsterType("Treasure Goblin the second")
local monster = {}

monster.description = "a Treasure Goblin the second"
monster.experience = 12000
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
monster.health = 25000
monster.maxHealth = 25000
monster.race = "undead"
monster.corpse = 2940
monster.speed = 360
monster.manaCost = 0
monster.maxSummons = 0

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
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "No one touch my treasure!", yell = false}
}

monster.loot = {
	{name = "Feather of Fate", chance = 6000, maxCount = 1},
	{name = "bar of bronze", chance = 10000, maxCount = 3},
	{name = "ancestral crystal", chance = 3500, maxCount = 3},
	{name = "bar of silver", chance = 1000, maxCount = 2},
	{name = "great mana potion", chance = 18000, maxCount = 2},
	{name = "ultimate health potion", chance = 20500, maxCount = 3},
	{name = "platinum coin", chance = 70000, maxCount = 15},
	{id = 10944, chance = 1000}, -- Dragon Egg
	{name = "platinum coin", chance = 20000, maxCount = 30},
	{name = "platinum coin", chance = 12000, maxCount = 80}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -330},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -600, range = 7, radius = 6, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_PURPLEENERGY, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -600, range = 7, radius = 6, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -600, length = 5, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -250, maxDamage = -600, radius = 5, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.defenses = {
	defense = 55,
	armor = 90
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 60}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
