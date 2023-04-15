local mType = Game.createMonsterType("Oculus Rift [**]")
local monster = {}

monster.description = "a Oculus Rift [**]"
monster.experience = 22500
monster.outfit = {
	lookType = 1552,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 149
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
monster.corpse = 22678
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
	{name = "endless crystal", chance = 5000, maxCount = 2},
	{name = "amber sliver", chance = 1000, maxCount = 2},
	{name = "amber dust", chance = 7200, maxCount = 5},
	{name = "amber crystal stone", chance = 5000, maxCount = 10},
	{name = "amber token", chance = 3010, maxCount = 2},
	{name = "purple Seadream", chance = 2700},
	{name = "Frozen Icefish", chance = 1600},
	{name = "Parangon scroll", chance = 900},
	{name = "time coin", chance = 800},
	{name = "darkness coin", chance = 790},
	{name = "ancient token", chance = 900},
	{name = "quantum token", chance = 900},
	{name = "endless coin", chance = 780},
	{name = "coin of heroism", chance = 770},
	{name = "luminous potion", chance = 1100},
	{name = "ancestral Token", chance = 750},
	{name = "coin of valor", chance = 760},
	{name = "igloo fish", chance = 2700},
	{name = "contest snapper", chance = 4100},
	{name = "refined solar crystal", chance = 1000},
	{name = "refined sapphir crystal", chance = 1000},
	{name = "refined malachite crystal", chance = 800},
	{name = "normal emblem", chance = 1000, maxCount = 1},
	{name = "enigma relic", chance = 600},
	{name = "reliquary spirit potion", chance = 79540, maxCount = 3},
	{name = "reliquary mana potion", chance = 70000, maxCount = 2},
	{name = "reliquary health potion", chance = 70000, maxCount = 3},
	{name = "curse of monolith", chance = 350},
	{name = "damned chest", chance = 190},
	{name = "Key of the Damned Chest", chance = 680},
	{name = "blessed shield", chance = 5},
	{name = "book of lies", chance = 350},
	{name = "mastermind shield", chance = 11000},
	{name = "spellbook of mind control", chance = 17000},
	{name = "bar of amber", chance = 4950},
	{name = "diapason", chance = 1100},
	{name = "bow of cataclysm", chance = 4050},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1050},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -750, maxDamage = -1000, radius = 4, effect = CONST_ME_PINK_BEAM, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -550, maxDamage = -900, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1250, length = 8, effect = CONST_ME_STEPSHORIZONTAL, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -780, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false}
	}


	monster.defenses = {
		defense = 80,
		armor = 100
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
