local mType = Game.createMonsterType("Crustosteo")
local monster = {}

monster.description = "Crustosteo"
monster.experience = 175000
monster.outfit = {
	lookTypeEx = 32714,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 70000
monster.maxHealth = 70000
monster.race = "blood"
monster.corpse = 32714
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
	{name = "crustasteo mark", chance = 100000},
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
	{name = "golden armor", chance = 7000},
	{name = "radiance sigil of soul I", chance = 99000, maxCount = 20},
	{name = "crown legs", chance = 5500},
	{name = "vampire shield", chance = 4000},
	{name = "savage chest", chance = 3900},
	{name = "pile of ancient scrolls", chance = 12000, maxCount = 2},
	{name = "aquamarine cluster", chance = 5000},
	{name = "ancient spiritual tablet", chance = 5000},
	{name = "ancient mystic tablet", chance = 3000},
	{name = "ancient void tablet", chance = 2000},
	{name = "key of savage chest", chance = 4900},
	{name = "hellgrave coin", chance = 10000, maxCount = 2},
	{name = "bar of silver", chance = 4500, maxCount = 4},
	{name = "rare identification rune", chance = 3000, maxCount = 2},
	{name = "very rare identification rune", chance = 2800, maxCount = 2},
	{name = "dark crystal helmet", chance = 3800},
	{name = "dark crystal armor", chance = 2700},
	{name = "dark crystal legs", chance = 3300},
	{name = "dark crystal boots", chance = 5100},
	{name = "malachite club", chance = 2500},
	{name = "malachite sword", chance = 2500},
	{name = "malachite axe", chance = 2500},
	{name = "graviton crossbow", chance = 2800},
	{name = "dark crystal wand", chance = 2800},

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -290},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = 720, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -700, length = 5, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="outfit", interval = 1000, chance = 1, radius = 1, target = true, duration = 2000, outfitMonster = "crab"}
}

monster.defenses = {
	defense = 120,
	armor = 100,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 100, maxDamage = 300, effect = CONST_ME_MAGIC_GREEN, target = false},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
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
