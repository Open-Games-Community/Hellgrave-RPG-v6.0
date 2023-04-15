local mType = Game.createMonsterType("Lurkbringer [**]")
local monster = {}

monster.description = "a Lurkbringer [**]"
monster.experience = 22500
monster.outfit = {
	lookType = 1572,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 157
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

monster.health = 27500
monster.maxHealth = 27500
monster.race = "blood"
monster.corpse = 24128
monster.speed = 300
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
	{name = "amber sliver", chance = 1000, maxCount = 2},
	{name = "amber dust", chance = 7200, maxCount = 5},
	{name = "ancient token", chance = 900},
	{name = "ancestral Token", chance = 750},
	{name = "quantum token", chance = 900},
	{name = "endless crystal", chance = 5000, maxCount = 2},
	{name = "amber crystal stone", chance = 5000, maxCount = 10},
	{name = "fabulous legs", chance = 800},
	{name = "soulful legs", chance = 600},
	{name = "pair of nightmare boots", chance = 300},
	{name = "reliquary spirit potion", chance = 79540, maxCount = 3},
	{name = "reliquary mana potion", chance = 70000, maxCount = 2},
	{name = "reliquary health potion", chance = 70000, maxCount = 3},
	{name = "ghost backpack", chance = 350},
	{name = "time coin", chance = 800},
	{name = "darkness coin", chance = 790},
	{name = "endless coin", chance = 780},
	{name = "coin of heroism", chance = 770},
	{name = "coin of valor", chance = 760},
	{name = "giant amethyst", chance = 1100},
	{name = "giant topaz", chance = 1100},
	{name = "amber token", chance = 3010, maxCount = 2},
	{name = "diamond", chance = 2000},
	{name = "normal emblem", chance = 1000, maxCount = 1},
	{name = "nightmare blade", chance = 6500},
	{name = "blue robe", chance = 5500},
	{name = "rare blessed dust", chance = 4000, maxCount = 3},
	{name = "very rare blessed dust", chance = 2200, maxCount = 2},
	{name = "epic blessed dust", chance = 1700, maxCount = 2},
	{name = "divine blessed dust", chance = 1000, maxCount = 2},
	{name = "rare rune powder", chance = 3500, maxCount = 3},
	{name = "very rare rune powder", chance = 1600, maxCount = 2},
	{name = "epic rune powder", chance = 1200, maxCount = 2},
	{name = "divine rune powder", chance = 900, maxCount = 2},
	{name = "demon shield", chance = 400},
	{name = "mastermind shield", chance = 300},
	{name = "spooky hood", chance = 200},
	{name = "ghost chestplate", chance = 100},
	{name = "phantasmal axe", chance = 80},
	{name = "skull coin", chance = 1500, maxCount = 5},
}

monster.attacks = {
	{name ="melee", interval = 3000, chance = 100, skill = 110, attack = 150},
	-- energy damage
	{name ="condition", type = CONDITION_ENERGY, interval = 1000, chance = 10, minDamage = -300, maxDamage = -800, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_SMALLPLANTS, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -1000, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="abyssador poison wave", interval = 1000, chance = 20, minDamage = -720, maxDamage = -1200, target = false}
}


	monster.defenses = {
		defense = 95,
		armor = 70
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
