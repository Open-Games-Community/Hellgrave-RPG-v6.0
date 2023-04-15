local mType = Game.createMonsterType("Goshnar Greed")
local monster = {}

monster.description = "Goshnar Greed"
monster.experience = 85700
monster.outfit = {
	lookType = 1304,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "fire"
monster.corpse = 38698
monster.speed = 350
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your soul will be mine!!", yell = false},
	{text = "MUHAHAHAHA!!", yell = false},
	{text = "CHAMEK ATH UTHUL ARAK!!", yell = false},
	{text = "I SMELL FEEEEAAAAAR!!", yell = false}
}

monster.loot = {
	{name = "figurine of greed", chance = 1000},
	{name = "white gem", chance = 10000},
	{id = 7729, chance = 80}, -- Evil Eye
	{name = "platinum coin", chance = 100000, maxCount = 40},
	{name = "Mastermind Potion", chance = 91460, maxCount = 1},
	{name = "giant topaz", chance = 14330, maxCount = 1},
	{name = "giant sapphire", chance = 13560, maxCount = 1},
	{name = "malice's horn", chance = 15980, maxCount = 2},
	{name = "crystal coin", chance = 50030, maxCount= 5},
	{name = "Malice's Spine", chance = 15003, maxCount = 2},
	{name = "Giant Amethyst", chance = 16000},
	{name = "bag you desire", chance = 150},
	{name = "Supreme Health Potion", chance = 15960, maxCount = 15},
	{name = "Gold Ingot", chance = 19960, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 210, attack = 260},
	-- fire
	{name ="condition", type = CONDITION_FIRE, interval = 1000, chance = 7, minDamage = -600, maxDamage = -750, range = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -650, radius = 6, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 1000, chance = 50, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -550, radius = 5, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="ice crystal bomb", interval = 2000, chance = 30, minDamage = -600, maxDamage = -950, target = true},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -780, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -850, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -600, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 300, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
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
