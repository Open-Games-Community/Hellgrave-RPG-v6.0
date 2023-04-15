local mType = Game.createMonsterType("Unspeakable Terror [**]")
local monster = {}

monster.description = "a Unspeakable Terror [**]"
monster.experience = 22500
monster.outfit = {
	lookType = 1571,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 153
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
monster.corpse = 24207
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
	{name = "endless crystal", chance = 5000, maxCount = 2},
	{name = "amber sliver", chance = 1000, maxCount = 2},
	{name = "amber dust", chance = 7200, maxCount = 5},
	{name = "ancient token", chance = 900},
	{name = "quantum token", chance = 900},
	{name = "normal emblem", chance = 1000, maxCount = 1},
	{name = "amber crystal stone", chance = 5000, maxCount = 10},
	{name = "perch", chance = 3000, maxCount = 15},
	{name = "muddy trout", chance = 1500, maxCount = 15},
	{name = "Luminous Concoction", chance = 450},
	{name = "Luminous Potion", chance = 110},
	{name = "amber token", chance = 3010, maxCount = 2},
	{name = "time coin", chance = 800},
	{name = "darkness coin", chance = 790},
	{name = "endless coin", chance = 780},
	{name = "coin of heroism", chance = 770},
	{name = "coin of valor", chance = 760},
	{name = "crystalline axe", chance = 800},
	{name = "maimer", chance = 90},
	{name = "devileye", chance = 10},
	{name = "impaler of the igniter", chance = 100},
	{name = "tower shield", chance = 8600},
	{name = "medusa shield", chance = 4600},
	{name = "reliquary spirit potion", chance = 79540, maxCount = 3},
	{name = "reliquary mana potion", chance = 70000, maxCount = 2},
	{name = "reliquary health potion", chance = 70000, maxCount = 3},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -1060},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -1400, length = 8, spread = 3, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_REDSTAR, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -750, length = 8, spread = 3, effect = CONST_ME_ICEAREA, target = false},
	{name ="outfit", interval = 2000, chance = 10, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 4000, outfitItem = 21134},
	{name ="speed", interval = 2000, chance = 15, speedChange = -400, range = 7, effect = CONST_ME_ICETORNADO, target = false, duration = 20000}}


	monster.defenses = {
		defense = 60,
		armor = 150
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
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
