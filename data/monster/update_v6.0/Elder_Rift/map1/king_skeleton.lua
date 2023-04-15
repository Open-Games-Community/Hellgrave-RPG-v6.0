local mType = Game.createMonsterType("King Skeleton [**]")
local monster = {}

monster.description = "a King Skeleton [**]"
monster.experience = 22500
monster.outfit = {
	lookType = 1537,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 148
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
monster.corpse = 21418
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
	runHealth = 1,
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
	{name = "fragment of star stone", chance = 1400},
	{name = "fragment of zodiac stone", chance = 700},
	{name = "Parangon scroll", chance = 900},
	{name = "amber token", chance = 3010, maxCount = 2},
	{name = "amber sliver", chance = 1000, maxCount = 2},
	{name = "amber dust", chance = 7200, maxCount = 5},
	{name = "endless crystal", chance = 5000, maxCount = 2},
	{name = "time coin", chance = 800},
	{name = "ancient token", chance = 900},
	{name = "quantum token", chance = 900},
	{name = "darkness coin", chance = 790},
	{name = "endless coin", chance = 780},
	{name = "coin of heroism", chance = 770},
	{name = "coin of valor", chance = 760},
	{name = "amber crystal stone", chance = 5000, maxCount = 10},
	{name = "normal emblem", chance = 1000, maxCount = 1},
	{name = "fragment divine crystal", chance = 2000},
	{name = "fragment endless crystal", chance = 1200},
	{name = "fragment amber crystal", chance = 700},
	{name = "willow plant", chance = 1100},
	{name = "epic blessed dust", chance = 700, maxCount = 2},
	{name = "divine blessed dust", chance = 500, maxCount = 2},
	{name = "epic rune powder", chance = 1000, maxCount = 2},
	{name = "divine rune powder", chance = 600, maxCount = 2},
	{name = "gynura leaves", chance = 1500},
	{name = "amanita spissa", chance = 1200},
	{name = "ancestral Token", chance = 750},
	{name = "empty tree trunk", chance = 1700},
	{id = 12583, chance = 800},
	{name = "steampunk ring", chance = 400},
	{name = "Astral source", chance = 100},
	{name = "ancestral source", chance = 500},
	{name = "reliquary spirit potion", chance = 79540, maxCount = 3},
	{name = "reliquary mana potion", chance = 70000, maxCount = 2},
	{name = "reliquary health potion", chance = 70000, maxCount = 3},
	{name = "ghost chestplate", chance = 350},
	{name = "golden horned helmet", chance = 40},
	{name = "golden legs", chance = 6000},
	{name = "beastslayer axe", chance = 51000},
	{name = "epee", chance = 27000},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -550, maxDamage = -1100, length = 5, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -1000, radius = 7, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -700, range = 7, radius = 5, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true}
	}


	monster.defenses = {
		defense = 80,
		armor = 100
	}
	
	monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 0},
		{type = COMBAT_ENERGYDAMAGE, percent = 0},
		{type = COMBAT_EARTHDAMAGE, percent = 40},
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_LIFEDRAIN, percent = 0},
		{type = COMBAT_MANADRAIN, percent = 0},
		{type = COMBAT_DROWNDAMAGE, percent = 0},
		{type = COMBAT_ICEDAMAGE, percent = 60},
		{type = COMBAT_HOLYDAMAGE , percent = -10},
		{type = COMBAT_DEATHDAMAGE , percent = 5}
	}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
