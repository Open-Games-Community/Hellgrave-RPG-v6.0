local mType = Game.createMonsterType("Venom Tyrant [2]")
local monster = {}

monster.description = "a Venom Tyrant [2]"
monster.experience = 7850
monster.outfit = {
	lookType = 1538,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 146
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

monster.health = 11000
monster.maxHealth = 11000
monster.race = "blood"
monster.corpse = 6324
monster.speed = 380
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
	{name = "platinum coin", chance = 9000, maxCount = 9},
	{name = "skullcracker armor", chance = 450},
	{name = "dust", chance = 3900, maxCount = 4},
	{name = "salvage material", chance = 2500, maxCount = 3},
	{name = "loot coin", chance = 5000},
	{name = "spectral coin", chance = 800},
	{name = "spirit coin", chance = 750},
	{name = "coin of mind", chance = 700},
	{name = "fetish coin", chance = 700},
	{name = "brillant rose", chance = 1100},
	{name = "very rare rune powder", chance = 1000, maxCount = 2},
	{name = "ancestral crystal", chance = 1100},
	{name = "feather of fate", chance = 800, maxCount = 2},
	{name = "sword enhancement", chance = 480},
	{name = "magic enhancement", chance = 600},
	{name = "ultimate health potion", chance = 19540, maxCount = 2},
	{name = "nightmare blade", chance = 4000},
	{name = "fragment endless crystal", chance = 400},
	{name = "dream matter", chance = 100},
	{name = "demonbone amulet", chance = 2000},
	{name = "surprise backpack", chance = 500},
	{name = "shaggy ogre bag", chance = 4000},
	{name = "mysterious remains", chance = 1200},
	{name = "dream matter", chance = 350, maxCount = 1},
	{name = "bloody tears", chance = 1100, maxCount = 2},
	{name = "great spirit potion", chance = 18510, maxCount = 2}
}

monster.events = {
	"onDeath_randomTierDrops"
}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -415},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -60, maxDamage = -315, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 11, type = COMBAT_MANADRAIN, minDamage = -82, maxDamage = -355, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA, target = true},
	{name ="speed", interval = 2000, chance = 11, speedChange = -450, radius = 6, effect = CONST_ME_PIXIE_EXPLOSION, target = false, duration = 5000}
}


monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
