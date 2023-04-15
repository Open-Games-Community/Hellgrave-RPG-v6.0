local mType = Game.createMonsterType("[Unique] Spiner of Lies [2]")
local monster = {}

monster.description = "a [Unique] Spiner of Lies [2]"
monster.experience = 28500
monster.outfit = {
	lookType = 1522,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 142
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 100,
	FirstUnlock = 25,
	SecondUnlock = 75,
	CharmsPoints = 60,
	Stars = 3,
	Occurrence = 3,
	Locations = "Boss from Ancestral Rift Level [2]."
	}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 21383
monster.speed = 250
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

monster.loot = {
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "key of divine chest", chance = 2200},
	{name = "divine chest", chance = 800},
	{name = "key of tyranic chest", chance = 500, maxCount = 1},
	{name = "very rare rune powder", chance = 2000, maxCount = 2},
	{name = "rare rune powder", chance = 2000, maxCount = 3},
	{name = "very rare blessed dust", chance = 1000, maxCount = 2},
	{name = "rare blessed dust", chance = 2000, maxCount = 3},
	{name = "ancestral crystal", chance = 5000, maxCount = 5},
	{name = "platinum coin", chance = 90540, maxCount = 30},
	{name = "amber crystal stone", chance = 2000, maxCount = 3},
	{name = "tournament coin", chance = 500, maxCount = 1},
	{name = "portal scroll", chance = 700, maxCount = 1},
	{name = "parangon scroll", chance = 800},
	{name = "sliver", chance = 2200, maxCount = 3},
	{name = "endless token", chance = 2800, maxCount = 3},
	{name = "loot coin", chance = 15000, maxCount = 8},
	{name = "spectral coin", chance = 1000},
	{name = "spirit coin", chance = 950},
	{name = "coin of mind", chance = 800},
	{name = "fetish coin", chance = 800},
	{name = "endless rune", chance = 450},
	{name = "silver token", chance = 7000, maxCount = 2},
	{id = 7753, chance = 2000, maxCount = 2},
	{name = "dust", chance = 5000, maxCount = 3},
	{name = "very rare blessed crystal", chance = 1200},
	{name = "very rare identification rune", chance = 900},
	{name = "very rare equipment discovery scroll", chance = 700},
	{name = "very rare weapon discovery scroll", chance = 550},
	{name = "fragment of zodiac stone", chance = 500},
	{name = "fragment of star stone", chance = 800},
	{name = "dust", chance = 8000, maxCount = 5},
	{name = "mirror relic", chance = 330},
	{name = "bar of bronze", chance = 4000, maxCount = 3},
	{name = "bar of silver", chance = 2000, maxCount = 3},
	{name = "crystal coin", chance = 3000, maxCount = 3},
	{name = "great mana potion", chance = 22220, maxCount = 5},
	{name = "ultimate health potion", chance = 19540, maxCount = 5},
	{name = "great spirit potion", chance = 18510, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 1300, chance = 100, skill = 70, attack = 100},
	{name ="speed", interval = 2000, chance = 20, speedChange = -400, range = 7, shootEffect = CONST_ANI_WHIRLWINDAXE, target = false, duration = 2500},
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -420, maxDamage = -750, range = 7, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -600, range = 3, effect = CONST_ME_PURPLEENERGY, target = true}
}

monster.defenses = {
	defense = 55,
	armor = 35,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 33},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 33},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
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
