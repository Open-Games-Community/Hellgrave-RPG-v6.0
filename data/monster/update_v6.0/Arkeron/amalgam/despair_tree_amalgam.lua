local mType = Game.createMonsterType("Despair Tree Amalgam [****]")
local monster = {}

monster.description = "a Despair Tree Amalgam [****]"
monster.experience = 59500
monster.outfit = {
	lookType = 1660,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 300
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

monster.health = 59500
monster.maxHealth = 59500
monster.race = "blood"
monster.corpse = 21425
monster.speed = 400
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 10,
	health = 10,
	damage = 50,
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
	{name = "awakening moonstone", chance = 1800},
	{name = "darkness moonstone", chance = 5000},
	{name = "primal crystal", chance = 1000},
	{name = "swirling essence", chance = 2000},
	{name = "great elementium stone", chance = 1700},
	{name = "celestial prismatic crystal", chance = 2700},
	{name = "imprisoned pure essence", chance = 3000},
	{name = "infernal serpents", chance = 7400},
	{name = "sulfur prismatic crystal", chance = 2000},
	{name = "celestial eye", chance = 3600},
	{name = "ancient token", chance = 2000},
	{name = "quantum token", chance = 2000},
	{name = "wing of corruption", chance = 6000},
	{name = "inferno eye", chance = 2200},
	{name = "jewel of angels", chance = 1000},
	{name = "titan eye", chance = 1800},
	{name = "demonic crystallized flower", chance = 2700},
	{name = "sacred seal", chance = 4000, maxCount = 2},
	{name = "dimensional seal", chance = 3500, maxCount = 2},
	{name = "awakening crystal", chance = 900},
	{name = "celestial star shell", chance = 1500},
	{name = "spirit geode", chance = 4600},
	{name = "sulfur geode", chance = 4000},
	{name = "arkeron coin", chance = 2500},
	{name = "small chaos divine stone", chance = 2000, maxCount = 2},
	{name = "master mana potion", chance = 41000, maxCount = 2},
	{name = "master health potion", chance = 41000, maxCount = 2},
	{name = "master spirit potion", chance = 39000, maxCcount = 1},
}

monster.attacks = {
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -900, radius = 4, effect = 236, target = true},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -1500, length = 1, spread = 0, effect = 60, target = false},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_POISONDAMAGE, minDamage = -500, maxDamage = -1300, radius = 4, effect = 247, target = true}
}

monster.defenses = {
	defense = 140,
	armor = 140
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
	{type = COMBAT_ENERGYDAMAGE, percent = -37},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -22},
	{type = COMBAT_HOLYDAMAGE , percent = -17},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
