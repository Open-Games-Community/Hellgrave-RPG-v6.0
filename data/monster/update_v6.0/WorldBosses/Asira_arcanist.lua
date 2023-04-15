local mType = Game.createMonsterType("Asira Arcanist")
local monster = {}

monster.description = "Asira Arcanist"
monster.experience = 375000
monster.outfit = {
	lookTypeEx = 32626,
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
monster.corpse = 32626
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
	{text = "My heart!", yell = true},
	{text = "Turn back to your life , leave this country!", yell = true},

}

monster.loot = {
	{name = "crystal coin", chance = 40000, maxCount = 5},
	{name = "asira arcanist mark", chance = 100000},
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
	{name = "darkshore sword", chance = 3800},
	{name = "darkshore axe", chance = 2700},
	{name = "pile of ancient scrolls", chance = 12000, maxCount = 2},
	{name = "aquamarine cluster", chance = 5000},
	{name = "ancient spiritual tablet", chance = 5000},
	{name = "ancient mystic tablet", chance = 3000},
	{name = "ancient void tablet", chance = 2000},
	{name = "darkshore wand", chance = 3300},
	{name = "darkshore bow", chance = 5100},
	{name = "darkshore rod", chance = 2500},
	{name = "dragon scale helmet", chance = 800},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -170, maxDamage = -800, range = 3, length = 9, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -750, range = 3, length = 9, spread = 4, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -900, radius = 8, effect = 202, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -270, maxDamage = -890, radius = 8, effect = CONST_ME_BLACKSMOKE, target = false}
}

monster.defenses = {
	defense = 120,
	armor = 100,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = -12},
	{type = COMBAT_EARTHDAMAGE, percent = -4},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = 3},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
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
