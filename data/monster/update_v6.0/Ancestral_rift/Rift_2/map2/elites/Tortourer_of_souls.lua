local mType = Game.createMonsterType("[Unique] Torturer of Souls")
local monster = {}

monster.description = "a [Unique] Torturer of Souls"
monster.experience = 295000
monster.outfit = {
	lookType = 1535,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 135
monster.Bestiary = {
	class = "Rift",
	race = BESTY_RACE_RIFT,
	toKill = 100,
	FirstUnlock = 25,
	SecondUnlock = 75,
	CharmsPoints = 80,
	Stars = 5,
	Occurrence = 3,
	Locations = "A rare Boss."
	}

monster.health = 180000
monster.maxHealth = 180000
monster.race = "blood"
monster.corpse = 21399
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 4

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

monster.events = {
	"broadBossOne",
	"onDeath_randomTierDrops"
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
	{name = "[Minion] Lava Torturer", chance = 10, interval = 3000}
}

monster.loot = {
	{name = "crystal coin", chance = 60000, maxCount = 26},
	{name = "key of reliquary chest", chance = 8000},
	{name = "reliquary chest", chance = 1000},
	{name = "amber core", chance = 800},
	{name = "star stone", chance = 8500},
	{name = "zodiac stone", chance = 6000},
	{name = "darkness coin", chance = 5000, maxCount = 2},
	{name = "time coin", chance = 4000, maxCount = 2},
	{name = "endless coin", chance = 3050},
	{name = "mystery token", chance = 5000},
	{name = "fire token", chance = 700},
	{name = "golden helmet", chance = 10},
	{name = "magic longsword", chance = 3},
	{name = "Parangon Scroll", chance = 3000, maxCount = 5},
	{name = "rare endless crystal", chance = 4500},
	{name = "rare divine crystal", chance = 2500},
	{name = "rare amber crystal", chance = 1500},
	{name = "ancestral Token", chance = 18000, maxCount = 3},
	{name = "chaos Token", chance = 18000, maxCount = 1},
	{name = "ancestral crystal", chance = 3000, maxCount = 25},
	{name = "amber token", chance = 2800, maxCount = 3},
	{name = "endless crystal", chance = 2800, maxCount = 15},
	{name = "endless rune", chance = 600},
	{name = "platinum coin", chance = 90540, maxCount = 15},
	{name = "reliquary spirit potion", chance = 19540, maxCount = 3},
	{name = "reliquary mana potion", chance = 17000, maxCount = 3},
	{name = "reliquary health potion", chance = 17000, maxCount = 3},
	{name = "demoniac crystal stone", chance = 42000, maxCount = 5},
	{name = "hell token", chance = 89000},
	{name = "amber sliver", chance = 6500, maxCount = 5},
	{name = "amber dust", chance = 11000, maxCount = 15},
	{name = "hellgrave coin", chance = 89100, maxCount = 2},
	{name = "tournament coin", chance = 31000, maxCount = 2},
	{name = "portal scroll", chance = 3000, maxCount = 1},
	{name = "dust", chance = 49000, maxCount = 50},
	{name = "amber dust", chance = 30000, maxCount = 25},
	{name = "demoniac dust", chance = 15000, maxCount = 10},
	{name = "ornamented ring", chance = 13000},
	{name = "enchanted magic leaf", chance = 8000},
	{name = "precious lava crystal", chance = 5000},
	{name = "precious magma crystal", chance = 3700},
	{name = "bar of gold", chance = 11000},
	{name = "bar of amber", chance = 6600},
	{name = "monster skull", chance = 4000},
	{name = "rare red carp", chance = 300},
	{id = 39179, chance = 14200},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 140, attack = 160},
	{name ="torturer of souls curse", interval = 2000, chance = 5, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -480, maxDamage = -1695, range = 5, radius = 5, effect = CONST_ME_FIREAREA, target = true},
	{name ="speed", interval = 2000, chance = 20, speedChange = -600, radius = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 10000},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -710, maxDamage = -2095, length = 9, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_POISONDAMAGE, minDamage = -410, maxDamage = -1595, radius = 7, effect = CONST_ME_POISON, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -450, maxDamage = -1630, radius = 6, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 115,
	armor = 100,
}

monster.reflects = {
{type = COMBAT_PHYSICALDAMAGE, percent = 6},
{type = COMBAT_ENERGYDAMAGE, percent = 6},
{type = COMBAT_EARTHDAMAGE, percent = 6},
{type = COMBAT_FIREDAMAGE, percent = 100},
{type = COMBAT_LIFEDRAIN, percent = 6},
{type = COMBAT_MANADRAIN, percent = 6},
{type = COMBAT_DROWNDAMAGE, percent = 6},
{type = COMBAT_ICEDAMAGE, percent = 6},
{type = COMBAT_HOLYDAMAGE , percent = 6},
{type = COMBAT_DEATHDAMAGE , percent = 6}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 15},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 15},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
