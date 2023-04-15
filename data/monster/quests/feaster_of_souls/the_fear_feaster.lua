local mType = Game.createMonsterType("The Fear Feaster")
local monster = {}

monster.description = "The Fear Feaster"
monster.experience = 13090
monster.outfit = {
	lookType = 1276,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 80000
monster.maxHealth = 80000
monster.race = "undead"
monster.corpse = 37572
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
	{name = "crystal coin", chance = 16080, maxCount = 2},
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
	{name = "angel figurine", chance = 1160},
	{name = "diamond", chance = 1170},
	{name = "cursed bone", chance = 780},
	{name = "soulforged lantern", chance = 780},
	{name = "grimace", chance = 580},
	{name = "amber", chance = 580},
	{name = "amber with a dragonfly", chance = 390},
	{name = "ghost claw", chance = 1960},
	{name = "bloody tears", chance = 1500},
	{name = "ghost chestplate", chance = 150},
	{name = "spooky hood", chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -700},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -680, range = 7, shootEffect = CONST_ANI_EARTHARROW, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -500, maxDamage = -575, length = 5, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -430, maxDamage = -680, range = 7, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="melee", interval = 1000, chance = 100, minDamage = -300, maxDamage = -450},
	{name ="thunderstorm", interval = 2000, chance = 35, minDamage = -300, maxDamage = -600, range = 7, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -100, maxDamage = -200, range = 7, target = false},
	{name ="energyfield", interval = 2000, chance = 15, range = 7, radius = 2, shootEffect = CONST_ANI_ENERGY, target = true}
}

monster.defenses = {
	defense = 80,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
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
