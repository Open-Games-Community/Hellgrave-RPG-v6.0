local mType = Game.createMonsterType("Revendroth")
local monster = {}

monster.description = "Revendroth"
monster.experience = 1200000
monster.outfit = {
	lookTypeEx = 35097,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 700000
monster.maxHealth = 700000
monster.race = "blood"
monster.corpse = 35097
monster.speed = 0
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 6,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}



monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Are you challenging a god?!", yell = true},
	{text = "No one can defeat a god, leave while there is still time!", yell = true},
	{text = "Argh!", yell = false},
}

monster.loot = {
	{name = "crystal coin", chance = 40000, maxCount = 20},
	{name = "demoniac dust", chance = 8000, maxCount = 9},
	{name = "amber sliver", chance = 4000, maxCount = 2},
	{name = "demoniac crystal", chance = 11000, maxCount = 4},
	{name = "endless rune", chance = 4000},
	{id = 39178, chance = 3500, maxCount = 2},
	{id = 39179, chance = 3500, maxCount = 2},
	{id = 13560, chance = 2800, maxCount = 2},
	{id = 33983, chance = 5500, maxCount = 3},
	{id = 24807, chance = 4000, maxCount = 2},
	{name = "coin of heroism", chance = 8000, maxCount = 3},
	{name = "endless coin", chance = 10000, maxCount = 3},
	{name = "worldboss token", chance = 10000, maxCount = 6},
	{name = "time coin", chance = 8000 ,maxCount = 3},
	{name = "nether pearl", chance = 6500, maxCount = 2},
	{name = "silver mirror token", chance = 5000, maxCount = 3},
	{name = "radiance sigil of soul I", chance = 50000, maxCount = 10},
	{name = "annihilation sigil of soul I", chance = 50000, maxCount = 5},
	{name = "spirit sigil of soul I", chance = 50000, maxCount = 8},
	{name = "nightmare sigil of soul I", chance = 50000, maxCount = 6},
	{name = "calamity sigil of soul I", chance = 50000, maxCount = 5},
	{name = "heirloom sigil of soul I", chance = 50000, maxCount = 5},
	{name = "cryptic sigil of soul I", chance = 50000, maxCount = 3},
	{name = "void chalice", chance = 3000},
	{name = "stellar orb", chance = 8000, maxCount = 2},
	{name = "sunblast orb", chance = 18000, maxCount = 2},
	{name = "rainbow tear", chance = 8000},
	{name = "box of nether pearls", chance = 3000},
	{name = "golden treasure chest", chance = 11000},
	{name = "key of golden treasure chest", chance = 11000},
	{name = "chaos pure brooch fragment", chance = 5000},
	{name = "relic of astaroth", chance = 4000},
	{name = "despair potion", chance = 2000},
	{name = "shadow lantern", chance = 4000},
	{name = "giant dragon horn", chance = 5500},
	{name = "relic of abaddon", chance = 2200},
	{name = "hellgrave coin", chance = 10000, maxCount = 2},
	{name = "demoniac bar", chance = 4500, maxCount = 2},
	{name = "divine blessed crystal", chance = 3000, maxCount = 2},
	{name = "very rare weapon discovery scroll", chance = 2800},
	{name = "very rare equipment discovery scroll", chance = 3800},
	{name = "very rare identification rune", chance = 5500},
	{name = "enchanted elementium bar", chance = 2000},
	{name = "spirit infused orb", chance = 3000},
	{name = "heraldic feather", chance = 5000},
	{name = "ancient tablet scroll", chance = 3000},
	{name = "fragment ordnance wing", chance = 2000},
	{name = "fragment chaos wing", chance = 3300},
	{id = 36833, chance = 1100},
	{id = 39153, chance = 1000},
	{id = 39154, chance = 1000},
	{id = 41474, chance = 1200}
}

monster.attacks = {
	{name ="energyfield", interval = 2000, chance = 20, range = 7, radius = 2, shootEffect = CONST_ANI_ENERGY, target = true},
	{name ="melee", interval = 2000, chance = 100, skill = 300, attack = 300},
	{name ="thunderstorm", interval = 2000, chance = 40, minDamage = -1000, maxDamage = -1800, range = 7, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -700, maxDamage = -1110, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -1300, length = 8, spread = 3, effect = 247, target = false}
}

monster.defenses = {
	defense = 120,
	armor = 100,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -70},
	{type = COMBAT_ENERGYDAMAGE, percent = -70},
	{type = COMBAT_EARTHDAMAGE, percent = -70},
	{type = COMBAT_FIREDAMAGE, percent = -70},
	{type = COMBAT_LIFEDRAIN, percent = -70},
	{type = COMBAT_MANADRAIN, percent = -70},
	{type = COMBAT_DROWNDAMAGE, percent = -70},
	{type = COMBAT_ICEDAMAGE, percent = -70},
	{type = COMBAT_HOLYDAMAGE , percent = -70},
	{type = COMBAT_DEATHDAMAGE , percent = -70}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
