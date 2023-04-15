local mType = Game.createMonsterType("Shaper of Flesh [**]")
local monster = {}

monster.description = "a Shaper of Flesh [**]"
monster.experience = 22500
monster.outfit = {
	lookType = 1566,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 154
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 75,
	Stars = 4,
	Occurrence = 1,
	Locations = "Elder Rift Monster."
	}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 23876
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
	{name = "crystal coin", chance = 70540},
	{name = "platinum coin", chance = 90540, maxCount = 50}, 
	{name = "Parangon scroll", chance = 900},
	{name = "ancestral Token", chance = 750},
	{name = "amber sliver", chance = 1000, maxCount = 2},
	{name = "ancient token", chance = 900},
	{name = "quantum token", chance = 900},
	{name = "amber dust", chance = 7200, maxCount = 5},
	{name = "endless crystal", chance = 5000, maxCount = 2},
	{name = "amber crystal stone", chance = 5000, maxCount = 10},
	{name = "refined amber crystal", chance = 1400},
	{name = "refined crystal", chance = 1300},
	{name = "fragment of star stone", chance = 1400},
	{name = "fragment of zodiac stone", chance = 700},
	{name = "fragment divine crystal", chance = 2000},
	{name = "time coin", chance = 800},
	{name = "darkness coin", chance = 790},
	{name = "endless coin", chance = 780},
	{name = "coin of heroism", chance = 770},
	{name = "coin of valor", chance = 760},
	{name = "amber token", chance = 3010, maxCount = 2},
	{name = "fragment endless crystal", chance = 1200},
	{name = "fragment amber crystal", chance = 700},
	{name = "reliquary spirit potion", chance = 79540, maxCount = 3},
	{name = "reliquary mana potion", chance = 70000, maxCount = 2},
	{name = "reliquary health potion", chance = 70000, maxCount = 3},
	{name = "crude umbral bow", chance = 100},
	{name = "rare blessed dust", chance = 3000, maxCount = 3},
	{name = "normal emblem", chance = 1000, maxCount = 1},
	{name = "very rare blessed dust", chance = 1200, maxCount = 2},
	{name = "epic blessed dust", chance = 700, maxCount = 2},
	{name = "divine blessed dust", chance = 500, maxCount = 2},
	{name = "rare rune powder", chance = 2500, maxCount = 3},
	{name = "very rare rune powder", chance = 1600, maxCount = 2},
	{name = "epic rune powder", chance = 1000, maxCount = 2},
	{name = "divine rune powder", chance = 600, maxCount = 2},
	{name = "crude umbral crossbow", chance = 100},
	{name = "crude umbral spellbook", chance = 100},
	{name = "crude umbral axe", chance = 100},
	{name = "crude umbral slayer", chance = 100},
	{name = "crude umbral mace", chance = 100},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -730},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -700, range = 7, radius = 6, shootEffect = CONST_ANI_DIAMONDARROW, effect = CONST_ME_PURPLEENERGY, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -800, range = 7, radius = 6, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_BLOCKHIT, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -750, length = 5, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -200, maxDamage = -900, radius = 5, effect = CONST_ME_MAGIC_BLUE, target = false}
}


	monster.defenses = {
		defense = 115,
		armor = 100
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
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
