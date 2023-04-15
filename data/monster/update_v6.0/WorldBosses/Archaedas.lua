local mType = Game.createMonsterType("Archaedas")
local monster = {}

monster.description = "Archaedas"
monster.experience = 375000
monster.outfit = {
	lookTypeEx = 32625,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 120000
monster.maxHealth = 120000
monster.race = "blood"
monster.corpse = 32625
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
	{text = "No Prisoners!", yell = true},
	{text = "You're not match for me!", yell = true},
	{text = "Is that you ... Asira ?", yell = true},
}

monster.loot = {
	{name = "crystal coin", chance = 40000, maxCount = 5},
	{name = "archaedas mark", chance = 100000},
	{name = "dust", chance = 8000, maxCount = 9},
	{name = "sliver", chance = 4000, maxCount = 2},
	{name = "ancestral crystal", chance = 11000, maxCount = 4},
	{name = "endless token", chance = 4000, maxCount = 3},
	{id = 39178, chance = 3500, maxCount = 2},
	{id = 39179, chance = 3500, maxCount = 2},
	{id = 13560, chance = 2800, maxCount = 2},
	{id = 33983, chance = 5500, maxCount = 3},
	{id = 24807, chance = 4000, maxCount = 2},
	{name = "loot coin", chance = 23000, maxCount = 10},
	{name = "spectral coin", chance = 10000, maxCount = 3},
	{name = "worldboss token", chance = 10000, maxCount = 4},
	{name = "coin of valor", chance = 6000 ,maxCount = 3},
	{name = "spirit coin", chance = 5000, maxCount = 3},
	{name = "coin of mind", chance = 3500, maxCount = 3},
	{name = "calamity sigil of soul I", chance = 99000, maxCount = 20},
	{name = "savage chest", chance = 3900},
	{name = "key of savage chest", chance = 4900},
	{name = "hellgrave coin", chance = 10000, maxCount = 2},
	{name = "bar of silver", chance = 4500, maxCount = 4},
	{name = "rare identification rune", chance = 3000, maxCount = 2},
	{name = "very rare identification rune", chance = 2800, maxCount = 2},
	{name = "onslaught helmet", chance = 3800},
	{name = "onslaught armor", chance = 2700},
	{name = "pile of ancient scrolls", chance = 12000, maxCount = 2},
	{name = "aquamarine cluster", chance = 5000},
	{name = "ancient spiritual tablet", chance = 5000},
	{name = "ancient mystic tablet", chance = 3000},
	{name = "ancient void tablet", chance = 2000},
	{name = "onslaught legs", chance = 3300},
	{name = "onslaught boots", chance = 5100},
	{name = "starkoh quiver", chance = 2500},
	{name = "shattered sword", chance = 2500},
	{name = "shattered rod", chance = 2500},
	{name = "dragon scale legs", chance = 800},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -750},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -175, maxDamage = -500, radius = 8, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -900, length = 8, spread = 5, effect = 243, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -700, length = 8, spread = 9, effect = 246, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DROWNDAMAGE, minDamage = -300, maxDamage = -650, radius = 5, effect = 238, target = false}
}

monster.defenses = {
	defense = 80,
	armor = 65,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 350, maxDamage = 800, effect = CONST_ME_MAGIC_GREEN, target = false},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 17},
	{type = COMBAT_FIREDAMAGE, percent = 8},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -11},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
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
