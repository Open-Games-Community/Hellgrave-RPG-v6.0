local mType = Game.createMonsterType("Goshnar Hatred")
local monster = {}

monster.description = "Goshnar Hatred"
monster.experience = 85700
monster.outfit = {
	lookType = 1307,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 120000
monster.maxHealth = 120000
monster.race = "fire"
monster.corpse = 38710
monster.speed = 350
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
	{name = "Mean Lost Soul", chance = 10, interval = 1000, max = 4}
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
	{name = "figurine of hatred", chance = 1000},
	{name = "white gem", chance = 10000},
	{name = "platinum coin", chance = 100000, maxCount = 40},
	{name = "Mastermind Potion", chance = 91460, maxCount = 1},
	{name = "Giant Ruby", chance = 91460, maxCount = 1},
	{name = "Yellow Gem", chance = 91460, maxCount = 1},
	{id = 7729, chance = 80}, -- Evil Eye
	{name = "crystal coin", chance = 50030, maxCount= 5},
	{name = "Vial of Hatred", chance = 16000},
	{name = "bag you desire", chance = 150},
	{name = "spectral horse tack", chance = 15960, maxCount = 15},
	{name = "spectral horseshoe", chance = 2000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 210, attack = 260},
	-- fire
	{name ="thunderstorm", interval = 2000, chance = 40, minDamage = -150, maxDamage = -330, range = 7, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -100, maxDamage = -410, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -350, radius = 3, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="drunk", interval = 2000, chance = 10, radius = 3, effect = CONST_ME_HITBYPOISON, target = false, duration = 5000},
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 300, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
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
