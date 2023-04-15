local mType = Game.createMonsterType("Valkyrie Anomaly [****]")
local monster = {}

monster.description = "a Valkyrie Anomaly [****]"
monster.experience = 90000
monster.outfit = {
	lookType = 1657,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 280
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
monster.corpse = 20523
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
	{name = "harmonious moonstone", chance = 7500},
	{name = "darkness moonstone", chance = 5000},
	{name = "dimensional moonstone", chance = 3500},
	{name = "dimensional crystal", chance = 1500},
	{name = "primal crystal", chance = 1000},
	{name = "hellstone cluster", chance = 3000},
	{name = "awakening crystal", chance = 900},
	{name = "infusion prismatic crystal", chance = 3000},
	{name = "spirit prismatic crystal", chance = 2450},
	{name = "rocky egg", chance = 5000},
	{name = "crystal egg", chance = 4000},
	{name = "guardian egg", chance = 2500},
	{name = "infusion eye", chance = 4200},
	{name = "sulfur eye", chance = 2800},
	{name = "turbulent flask", chance = 3000},
	{name = "ancient token", chance = 2000},
	{name = "quantum token", chance = 2000},
	{name = "primal seal", chance = 3000, maxCount = 2},
	{name = "awakening seal", chance = 2000, maxCount = 2},
	{id = 26250, chance = 3000},
	{name = "infernal serpents", chance = 7400},
	{name = "spirit geode", chance = 4600},
	{name = "shadow chaos relic", chance = 2800},
	{name = "guardian's emblem", chance = 4000},
	{name = "forgotten feather", chance = 3000},
	{name = "sulfur geode", chance = 4000},
	{name = "inferno geode", chance = 3600},
	{name = "jewel of evil's", chance = 1000},
	{name = "arkeron coin", chance = 2500},
	{name = "small chaos demonic stone", chance = 2000, maxCount = 2},
	{name = "master mana potion", chance = 41000, maxCount = 2},
	{name = "master health potion", chance = 41000, maxCount = 2},
	{name = "master spirit potion", chance = 39000, maxCcount = 1},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -1200},
	{name ="outfit", interval = 2000, chance = 1, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 4000, outfitItem = 25706},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -1300, length = 5, spread = 2, effect = 238, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -1750, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = 237, target = true},
	{name ="speed", interval = 2000, chance = 15, speedChange = -600, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false, duration = 20000}
}

monster.defenses = {
	defense = 160,
	armor = 160
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
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
