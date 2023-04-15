local mType = Game.createMonsterType("[Unique] Devilkin [1]")
local monster = {}

monster.description = "a [Unique] Devilkin [1]"
monster.experience = 16000
monster.outfit = {
	lookType = 242,
	lookHead = 0,
	lookBody = 77,
	lookLegs = 77,
	lookFeet = 77,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 126
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 100,
	FirstUnlock = 25,
	SecondUnlock = 75,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 3,
	Locations = "Boss from Ancestral Rift Level [1]."
	}

monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 6324
monster.speed = 250
monster.manaCost = 0
monster.maxSummons = 2

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
	{name = "[Unique] Illusion Lord of Damnation [1]", chance = 10, interval = 2000}
}

monster.loot = {
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "amethyst ore", chance = 800, maxCount = 1},
	{name = "light solar ore", chance = 1000, maxCount = 2},
	{name = "frozen armor", chance = 700},
	{name = "fragment of zodiac stone", chance = 500},
	{name = "epic rune powder", chance = 1200, maxCount = 2},
	{name = "divine rune powder", chance = 900, maxCount = 2},
	{name = "epic blessed dust", chance = 1200, maxCount = 2},
	{name = "loot coin", chance = 15000, maxCount = 8},
	{name = "spectral coin", chance = 1000},
	{name = "spirit coin", chance = 950},
	{name = "coin of mind", chance = 800},
	{name = "fetish coin", chance = 800},
	{id = 7869, chance = 3000, maxCount = 2},
	{name = "divine blessed dust", chance = 900, maxCount = 2},
	{name = "parangon scroll", chance = 800},
	{name = "rare blessed crystal", chance = 1200},
	{name = "rare identification rune", chance = 900},
	{name = "rare equipment discovery scroll", chance = 700},
	{name = "rare weapon discovery scroll", chance = 550},
	{name = "frozen boots", chance = 500},
	{name = "frozen helmet", chance = 200},
	{name = "sliver", chance = 3200, maxCount = 4},
	{name = "dust", chance = 11000, maxCount = 10},
	{name = "frozen legs", chance = 600},
	{name = "karma arch", chance = 1000},
	{name = "ancestral crystal", chance = 4000, maxCount = 5},
	{name = "platinum coin", chance = 90540, maxCount = 15},
	{name = "great mana potion", chance = 22220, maxCount = 5},
	{name = "ultimate health potion", chance = 19540, maxCount = 5},
	{name = "great spirit potion", chance = 18510, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 100},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_FIREDAMAGE, minDamage = -65, maxDamage = -555, length = 7, spread = 3, target = false},
	{name ="massive fire elemental soulfire", interval = 2000, chance = 12, target = false},
	{name ="firefield", interval = 2000, chance = 11, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONHIT, target = true},
	{name ="firefield", interval = 2000, chance = 11, radius = 3, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.defenses = {
	defense = 35,
	armor = 25,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
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
