local mType = Game.createMonsterType("Amazon Anomaly [****]")
local monster = {}

monster.description = "a Amazon Anomaly [****]"
monster.experience = 90000
monster.outfit = {
	lookType = 1658,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 297
monster.Bestiary = {
	class = "Chaos",
	race = BESTY_RACE_CHAOS,
	toKill = 500,
	FirstUnlock = 100,
	SecondUnlock = 300,
	CharmsPoints = 85,
	Stars = 5,
	Occurrence = 1,
	Locations = "Chaos Monster."
	}

monster.health = 85000
monster.maxHealth = 85000
monster.race = "blood"
monster.corpse = 20323
monster.speed = 550
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 30,
	health = 20,
	damage = 50,
	random = 0,
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
	{name = "crystal coin", chance = 87000, maxCount = 10},
	{name = "primal moonstone", chance = 2800},
	{name = "awakening moonstone", chance = 1800},
	{name = "harmonious crystal", chance = 2900},
	{name = "flames of power", chance = 4000},
	{name = "ancient relic fragment", chance = 3800},
	{name = "staff of lost souls", chance = 3000},
	{name = "primal seal", chance = 3000, maxCount = 2},
	{name = "awakening seal", chance = 2000, maxCount = 2},
	{name = "darkness crystal", chance = 2200},
	{name = "swirling crystal", chance = 2800},
	{name = "small elementium stone", chance = 2000},
	{name = "turbulent flask", chance = 3000},
	{name = "infusion geode", chance = 7000},
	{name = "celestial geode", chance = 5000},
	{name = "spirit eye", chance = 3200},
	{name = "titan eye", chance = 1700},
	{name = "flame egg", chance = 5500},
	{name = "forest egg", chance = 4700},
	{name = "wind egg", chance = 3000},
	{name = "angel egg", chance = 2000},
	{name = "titan geode", chance = 2800},
	{name = "inferno prismatic crystal", chance = 1700},
	{name = "titan prismatic crystal", chance = 1300},
	{name = "divine star", chance = 3000},
	{name = "imbued thorn", chance = 2200},
	{name = "great chaos demonic stone", chance = 1000},
	{name = "celestial star shell", chance = 1500},
	{name = "ancient token", chance = 2000},
	{name = "quantum token", chance = 2000},
	{name = "jewel of angels", chance = 1000},
	{name = "arkeron coin", chance = 2500},
	{name = "mark of shadows", chance = 3600},
	{name = "small chaos divine stone", chance = 2000, maxCount = 2},
	{name = "master mana potion", chance = 41000, maxCount = 2},
	{name = "master health potion", chance = 41000, maxCount = 2},
	{name = "master spirit potion", chance = 39000, maxCcount = 1},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -1200},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1300, length = 5, spread = 2, effect = 62, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -550, maxDamage = -1750, range = 7, shootEffect = CONST_ANI_EARTH, effect = 248, target = true},
	{name ="condition", type = CONDITION_DAZZLED, interval = 3000, chance = 15, minDamage = -200, maxDamage = -1000, range = 6, shootEffect = CONST_ANI_HOLY, effect = 252, target = false}
}

monster.defenses = {
	defense = 160,
	armor = 160
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 12},
	{type = COMBAT_ENERGYDAMAGE, percent = 12},
	{type = COMBAT_EARTHDAMAGE, percent = 12},
	{type = COMBAT_FIREDAMAGE, percent = 12},
	{type = COMBAT_LIFEDRAIN, percent = 12},
	{type = COMBAT_MANADRAIN, percent = 12},
	{type = COMBAT_DROWNDAMAGE, percent = 12},
	{type = COMBAT_ICEDAMAGE, percent = 12},
	{type = COMBAT_HOLYDAMAGE , percent = 12},
	{type = COMBAT_DEATHDAMAGE , percent = 12}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
