local mType = Game.createMonsterType("Demon Hunter [2]")
local monster = {}

monster.description = "a Demon Hunter [2]"
monster.experience = 5500
monster.outfit = {
	lookType = 761,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 138
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 30,
	Stars = 3,
	Occurrence = 0,
	Locations = "Ancestral Rift Level [2]."
	}

monster.health = 6200
monster.maxHealth = 6200
monster.race = "blood"
monster.corpse = 6068
monster.speed = 330
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
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

monster.events = {
	"onDeath_randomTierDrops"
}

monster.loot = {
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "bar of bronze", chance = 5090, maxCount = 2},
	{name = "divine rune powder", chance = 600, maxCount = 2},
	{name = "cactus leaf", chance = 2050, maxCount = 1},
	{name = "skull of dragon", chance = 1000},
	{name = "fragment endless crystal", chance = 400},
	{name = "dust", chance = 3200, maxCount = 4},
	{name = "ancestral crystal", chance = 1100},
	{name = "loot coin", chance = 5000},
	{name = "spectral coin", chance = 800},
	{name = "spirit coin", chance = 750},
	{name = "coin of mind", chance = 700},
	{name = "fetish coin", chance = 700},
	{name = "salvage material", chance = 2500, maxCount = 3},
	{name = "golden armor", chance = 300},
	{name = "boots of haste", chance = 250},
	{name = "blue crystal splinter", chance = 870},
	{name = "platinum coin", chance = 90540, maxCount = 6},
	{name = "great mana potion", chance = 22220, maxCount = 2},
	{name = "ultimate health potion", chance = 19540, maxCount = 2},
	{name = "great spirit potion", chance = 18510, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -380, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -250, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -400, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false}
}


monster.defenses = {
	defense = 60,
	armor = 50,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
