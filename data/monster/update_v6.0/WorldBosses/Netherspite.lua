local mType = Game.createMonsterType("Netherspite")
local monster = {}

monster.description = "Netherspite"
monster.experience = 215000
monster.outfit = {
	lookTypeEx = 32716,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 90000
monster.maxHealth = 90000
monster.race = "blood"
monster.corpse = 32716
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
}

monster.loot = {
	{name = "crystal coin", chance = 40000, maxCount = 5},
	{name = "netherspite mark", chance = 100000},
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
	{name = "coin of valor", chance = 6000 ,maxCount = 3},
	{name = "spirit coin", chance = 5000, maxCount = 3},
	{name = "worldboss token", chance = 10000, maxCount = 4},
	{name = "coin of mind", chance = 3500, maxCount = 3},
	{name = "spirit sigil of soul I", chance = 99999, maxCount = 20},
	{name = "golden armor", chance = 7000},
	{name = "knight legs", chance = 5500},
	{name = "crown shield", chance = 4000},
	{name = "demon backpack", chance = 4000},
	{name = "pile of ancient scrolls", chance = 12000, maxCount = 2},
	{name = "aquamarine cluster", chance = 5000},
	{name = "ancient spiritual tablet", chance = 5000},
	{name = "ancient mystic tablet", chance = 3000},
	{name = "ancient void tablet", chance = 2000},
	{name = "savage chest", chance = 3900},
	{name = "key of savage chest", chance = 4900},
	{name = "hellgrave coin", chance = 10000, maxCount = 2},
	{name = "bar of gold", chance = 3800, maxCount = 2},
	{name = "elven hood helmet", chance = 4800},
	{name = "elven hood armor", chance = 3700},
	{name = "elven hood legs", chance = 3300},
	{name = "elven hood boots", chance = 5100},
	{name = "the face crusher", chance = 3500},
	{name = "vorpal flame", chance = 8500},
	{name = "wand of flame", chance = 9500},
	{name = "rod of flame", chance = 11800},
	{name = "ice hitter helmet", chance = 2800},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -669},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -700, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -500, length = 8, spread = 3, effect = 240, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -400, length = 8, spread = 3, effect = CONST_ME_BLACKSMOKE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -150, radius = 1, effect = 208, target = true, duration = 30000},
	{name ="drunk", interval = 2000, chance = 10, range = 3, radius = 4, effect = CONST_ME_STUN, target = true, duration = 4000}
}

monster.defenses = {
	defense = 120,
	armor = 100,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 50, maxDamage = 300, effect = CONST_ME_MAGIC_GREEN, target = false},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
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
