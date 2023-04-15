local mType = Game.createMonsterType("Deathwing")
local monster = {}

monster.description = "Deathwing"
monster.experience = 1200000
monster.outfit = {
	lookTypeEx = 32705,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 325000
monster.maxHealth = 325000
monster.race = "blood"
monster.corpse = 32705
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
	{text = "I would throw you in the lava crummy!", yell = true},
	{text = "How dare you attack a baron from hell?", yell = true},
	{text = "Die everyone!", yell = false},
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
	{name = "star token", chance = 5000, maxCount = 3},
	{name = "electrical token", chance = 4000, maxCount = 3},
	{name = "worldboss token", chance = 10000, maxCount = 6},
	{name = "time coin", chance = 8000 ,maxCount = 3},
	{name = "nether pearl", chance = 6500, maxCount = 2},
	{name = "treasure map scroll", chance = 11000},
	{name = "silver mirror token", chance = 5000, maxCount = 3},
	{name = "radiance sigil of soul I", chance = 50000, maxCount = 10},
	{name = "annihilation sigil of soul I", chance = 50000, maxCount = 5},
	{name = "spirit sigil of soul I", chance = 50000, maxCount = 8},
	{name = "nightmare sigil of soul I", chance = 50000, maxCount = 6},
	{name = "calamity sigil of soul I", chance = 50000, maxCount = 5},
	{name = "heirloom sigil of soul I", chance = 50000, maxCount = 5},
	{name = "cryptic sigil of soul I", chance = 50000, maxCount = 3},
	{name = "void chalice", chance = 3000},
	{name = "rainbow tear", chance = 4000},
	{name = "box of nether pearls", chance = 3000},
	{name = "despair potion", chance = 2000},
	{name = "golden treasure chest", chance = 11000},
	{name = "key of golden treasure chest", chance = 11000},
	{name = "stellar orb", chance = 8000, maxCount = 2},
	{name = "sunblast orb", chance = 18000, maxCount = 2},
	{name = "rainbow tear", chance = 8000},
	{name = "chaos pure brooch fragment", chance = 5000},
	{name = "relic of abaddon", chance = 2200},
	{name = "giant dragon horn", chance = 5500},
	{name = "tournament coin", chance = 10000, maxCount = 2},
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
	{id = 39155, chance = 1200},
	{id = 39156, chance = 1150},
	{id = 39157, chance = 1000},
	{id = 39158, chance = 1300},
	{id = 36204, chance = 1000},
	{id = 36205, chance = 1000},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -350, maxDamage = -800},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -1400, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = 245, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 1000, chance = 11, minDamage = -300, maxDamage = -1300, length = 5, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 3000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -600, length = 8, spread = 3, effect = 251, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -680, maxDamage = -900, range = 4, radius = 1, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1150, radius = 6, effect = 250, target = false}
}

monster.defenses = {
	defense = 200,
	armor = 170,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 12},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = -8},
	{type = COMBAT_FIREDAMAGE, percent = 60},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
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
