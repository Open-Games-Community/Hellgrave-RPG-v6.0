local mType = Game.createMonsterType("Goshnar Malice")
local monster = {}

monster.description = "Goshnar Malice"
monster.experience = 86700
monster.outfit = {
	lookType = 1306,
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
monster.corpse = 38706
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
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
	{name = "purple tome", chance = 10000},
	{name = "figurine of malice", chance = 1000},
	{name = "platinum coin", chance = 100000, maxCount = 40},
	{name = "Bullseye Potion", chance = 91460, maxCount = 1},
	{name = "giant topaz", chance = 15330, maxCount = 1},
	{id = 7729, chance = 80}, -- Evil Eye
	{name = "giant sapphire", chance = 15560, maxCount = 1},
	{name = "malice's horn", chance = 10980, maxCount = 2},
	{name = "crystal coin", chance = 99030, maxCount= 5},
	{name = "Malice's Spine", chance = 11003, maxCount = 2},
	{name = "Giant Amethyst", chance = 15000},
	{name = "The Skull of a Beast", chance = 10000},
	{name = "bag you desire", chance = 150},
	{name = "Supreme Health Potion", chance = 39960, maxCount = 15},
	{name = "Gold Ingot", chance = 19960, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 200, chance = 20, minDamage = -400, maxDamage = -750},
	{name ="combat", interval = 200, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -700, target = false},
	{name ="ice crystal bomb", interval = 2000, chance = 30, minDamage = -600, maxDamage = -750, target = true},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -750, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 500, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 500, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -650, maxDamage = -750, radius = 8, effect = CONST_ME_MORTAREA, target = false}
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
	{type = COMBAT_FIREDAMAGE, percent = 10},
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
