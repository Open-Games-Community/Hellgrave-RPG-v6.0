local mType = Game.createMonsterType("Warcaller [2]")
local monster = {}

monster.description = "a Warcaller [2]"
monster.experience = 5950
monster.outfit = {
	lookType = 1530,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 140
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

monster.health = 5800
monster.maxHealth = 5800
monster.race = "blood"
monster.corpse = 23563
monster.speed = 330
monster.manaCost = 0
monster.maxSummons = 0

monster.events = {
	"onDeath_randomTierDrops"
}

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

monster.loot = {
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "platinum coin", chance = 13000, maxCount = 8},
	{name = "kresch plant", chance = 5090, maxCount = 2},
	{name = "vibrant egg", chance = 15},
	{name = "salvage material", chance = 2500, maxCount = 3},
	{name = "loot coin", chance = 5000},
	{name = "spectral coin", chance = 800},
	{name = "spirit coin", chance = 750},
	{name = "coin of mind", chance = 700},
	{name = "fetish coin", chance = 700},
	{name = "menacing egg", chance = 15},
	{name = "hemp leaves", chance = 4050, maxCount = 2},
	{name = "very rare rune powder", chance = 1000, maxCount = 2},
	{name = "delphinium", chance = 6000, maxCount = 2},
	{name = "master rune", chance = 400, maxCount = 1},
	{name = "fragment endless crystal", chance = 400},
	{name = "ancestral crystal", chance = 1100},
	{name = "dust", chance = 3600, maxCount = 4},
	{name = "yalahari armor", chance = 600},
	{name = "brillant rose", chance = 3100},
	{name = "feather of fate", chance = 800, maxCount = 2},
	{name = "sparkling potion", chance = 870},
	{name = "magic enhancement", chance = 600},
	{name = "great mana potion", chance = 22220, maxCount = 2},
	{name = "ultimate health potion", chance = 19540, maxCount = 2},
	{name = "great spirit potion", chance = 18510, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -208},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -300, length = 5, spread = 2, effect = CONST_ME_BLACKSMOKE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -800, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false, duration = 7500},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -350, radius = 4, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES, target = true}
}


monster.defenses = {
	defense = 45,
	armor = 30,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
