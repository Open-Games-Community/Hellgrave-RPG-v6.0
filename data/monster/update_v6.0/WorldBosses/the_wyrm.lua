local mType = Game.createMonsterType("The Wyrm")
local monster = {}

monster.description = "The Wyrm"
monster.experience = 5000000
monster.outfit = {
	lookTypeEx = 36969,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 425000
monster.maxHealth = 425000
monster.race = "blood"
monster.corpse = 36969
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
	{text = "NO ONE WILL STOP ME THIS TIME!", yell = true},
	{text = "Arkeron is mine!", yell = true},
	{text = "I returned from death and you dream about defeating me?", yell = false},
	{text = "Witness the first seconds of my eternal world domination!", yell = false},
	{text = "Even in my weakened state I will crush you all!", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 40000, maxCount = 60},
	{name = "worldboss token", chance = 10000, maxCount = 15},
	{name = "nether pearl", chance = 6500, maxCount = 12},
	{name = "stellar orb", chance = 8000, maxCount = 4},
	{name = "sunblast orb", chance = 18000, maxCount = 6},
	{name = "rainbow tear", chance = 8000, maxCount = 2},
	{name = "chaos pure brooch fragment", chance = 5000, maxCount = 2},
	{name = "imperial blue topaz tear", chance = 3000},
	{name = "imperial orange topaz tear", chance = 3000},
	{name = "tournament coin", chance = 10000, maxCount = 2},
	{name = "hellgrave coin", chance = 10000, maxCount = 2},
	{name = "carnelian diamond", chance = 4500},
	{name = "golden treasure chest", chance = 35000, maxCount = 2},
	{name = "key of golden treasure chest", chance = 35000, maxCount = 2},
	{name = "exodus chest", chance = 30000, maxCount = 2},
	{name = "key of exodus chest", chance = 30000, maxCount = 2},
	{name = "fragment ordnance wing", chance = 2000},
	{name = "fragment chaos wing", chance = 3300},
	{name = "arkeron coin", chance = 25000, maxCount = 30},
	{name = "box of chaos pearls", chance = 2000},
	{name = "box of nether pearls", chance = 5000},
	{name = "relic of valor", chance = 1600},
	{name = "elemental potion", chance = 9000},
	{name = "vast experience scroll", chance = 12000, maxCount = 3},
	{name = "elementium lizard", chance = 4000},
	{name = "awakening mark", chance = 8000, maxCount = 2},
	{name = "chaos token", chance = 9000, maxCount = 5},
	{name = "ancestral Token", chance = 18000, maxCount = 4},
	{name = "caphras chest", chance = 11000},
	{name = "exaltation chest", chance = 1500},
	{name = "astral chest", chance = 3000},
	{name = "key of astral chest", chance = 11000},
	{name = "reliquary chest", chance = 6000},
	{name = "key of reliquary chest", chance = 12000},
	{name = "hell token", chance = 4000, maxCount = 3},
	{name = "divine elixir", chance = 2000},
	{name = "evil eye", chance = 3000},
	{name = "epic emblem", chance = 5000, maxCount = 4},
	{name = "legendary emblem", chance = 8000, maxCount = 6},
	{name = "normal emblem", chance = 15000, maxCount = 12},
	{name = "amber coin", chance = 800},
	{name = "endless essence", chance = 600},
	{name = "divine essence", chance = 400},
	{name = "demoniac essence", chance = 200},
	{name = "chaos triumph badge", chance = 100},
	{name = "demonic pure heart", chance = 100},
	{id = 42063, chance = 80},
	{id = 42064, chance = 80},
	{id = 42065, chance = 80},
	{id = 42066, chance = 80},
	{id = 42067, chance = 80},
	{id = 42068, chance = 80},
	{id = 42069, chance = 80},
	{id = 42070, chance = 80},
	{id = 39185, chance = 80},
	{id = 39187, chance = 80},
	{id = 41464, chance = 80},
	{id = 41463, chance = 80},
	{id = 39186, chance = 80},
	{id = 39188, chance = 80},
	{id = 39189, chance = 80},
	{id = 24776, chance = 80},
	{id = 24316, chance = 80},
	{id = 24317, chance = 80},
	{id = 41460, chance = 80}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 350, attack = 380},
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_MANADRAIN, minDamage = -400, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_ENERGY, effect = 252, target = false},
	{name ="drunk", interval = 1000, chance = 7, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="strength", interval = 1000, chance = 9, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_LIFEDRAIN, minDamage = -1000, maxDamage = -2600, radius = 10, effect = 242, target = false},
	{name ="strength", interval = 1000, chance = 8, radius = 4, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1000, maxDamage = -1850, length = 8, spread = 3, effect = 237, target = false}
}

monster.defenses = {
	defense = 120,
	armor = 100,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false},
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
