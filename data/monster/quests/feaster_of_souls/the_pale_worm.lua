local mType = Game.createMonsterType("The Pale Worm")
local monster = {}

monster.description = "The Pale Worm"
monster.experience = 13090
monster.outfit = {
	lookType = 1272,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 37568
monster.speed = 500
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
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
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "crystal coin", chance = 18080, maxCount = 3},
	{name = "white gem", chance = 5240, maxCount = 2},
	{name = "moonstone", chance = 5240, maxCount = 2},
	{name = "ultimate mana potion", chance = 4340, maxCount = 6},
	{name = "supreme health potion", chance = 2940, maxCount = 6},
	{name = "silver hand mirror", chance = 2750},
	{name = "berserk potion", chance = 2530, maxCount = 10},
	{name = "ultimate spirit potion", chance = 2330, maxCount = 6},
	{name = "bullseye potion", chance = 1910, maxCount = 10},
	{name = "mastermind potion", chance = 1910, maxCount = 10},
	{name = "death toll", chance = 1330, maxCount = 2},
	{name = "ivory comb", chance = 1330},
	{name = "cursed bone", chance = 1160},
	{name = "diamond", chance = 1170},
	{name = "cursed bone", chance = 780},
	{name = "amber with a bug", chance = 780},
	{name = "giant topaz", chance = 1580},
	{name = "amber", chance = 580},
	{name = "amber with a dragonfly", chance = 390},
	{name = "fabulous legs", chance = 300},
	{name = "soulful legs", chance = 350},
	{name = "phantasmal axe", chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -675},
	{name ="combat", interval = 2000, chance = 16, type = COMBAT_PHYSICALDAMAGE, minDamage = -465, maxDamage = -850, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_EARTHDAMAGE, minDamage = -455, maxDamage = -755, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 2500, chance = 14, type = COMBAT_EARTHDAMAGE, minDamage = -533, maxDamage = -983, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2500, chance = 22, type = COMBAT_MANADRAIN, minDamage = -185, maxDamage = -210, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, target = true},
	{name ="speed", interval = 2000, chance = 20, speedChange = -350, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true, duration = 30000},
	-- curse
	{name ="condition", type = CONDITION_CURSED, interval = 2000, chance = 15, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true}
}

monster.defenses = {
	defense = 80,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 80},
	{type = COMBAT_ENERGYDAMAGE, percent = 80},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 80},
	{type = COMBAT_HOLYDAMAGE , percent = 80},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = false},
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
