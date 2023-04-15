local mType = Game.createMonsterType("Ancestral Spirit")
local monster = {}

monster.description = "Ancestral Spirit"
monster.experience = 550000
monster.outfit = {
	lookType = 1069,
	lookHead = 0,
	lookBody = 55,
	lookLegs = 124,
	lookFeet = 11,
	lookAddons = 3,
	lookMount = 761
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "fire"
monster.corpse = 3058
monster.speed = 200
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 40
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Is time for you to die today.", yell = true},
	{text = "The Fragment is mine, leave mortal, you will see my power!", yell = true},
	{text = "Chaos!", yell = true}
}

monster.loot = {
	{id = 16004, chance = 5100, maxCount = 5}, 
	{name = "platinum coin", chance = 18000, maxCount = 10},
	{name = "magma stone", chance = 1000, maxCount = 2},
	{name = "lava stone", chance = 1000, maxCount = 2},
	{name = "three leaf clover", chance = 1000, maxCount = 2},
	{name = "laurel leaf", chance = 1000, maxCount = 2},
	{name = "thick branch", chance = 1000, maxCount = 2},
	{name = "perch", chance = 1000, maxCount = 2},
	{name = "karma arch", chance = 300},
	{name = "parangon scroll", chance = 800},
	{name = "fragment endless crystal", chance = 1000},
	{name = "relic of venom", chance = 200},
	{name = "savage chest", chance = 100},
	{name = "key of savage chest", chance = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 100, attack = 60},
	{name ="ancestral summon", interval = 3000, chance = 25, target = false},
	{name ="strength", interval = 3000, chance = 10, minDamage = -50, maxDamage = -250, radius = 5, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 3000, chance = 8, type = COMBAT_ENERGYDAMAGE, minDamage = -60, maxDamage = -170, radius = 7, effect = CONST_ME_YELLOWENERGY, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -400, length = 5, spread = 5, effect = CONST_ME_ICEAREA, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -400, length = 5, spread = 5, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
	defense = 145,
	armor = 188,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 10},
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
