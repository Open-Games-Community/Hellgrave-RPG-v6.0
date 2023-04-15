local mType = Game.createMonsterType("Drume")
local monster = {}

monster.description = "Drume"
monster.experience = 14000
monster.outfit = {
	lookType = 1317,
	lookHead = 114,
	lookBody = 78,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 34000
monster.maxHealth = 34000
monster.race = "blood"
monster.corpse = 38159
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 3000,
	chance = 40
}

monster.strategiesTarget = {
	nearest = 70,
	health = 20,
	damage = 20,
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
}

monster.loot = {
	{name = "Platinum Coin", chance = 40500, maxCount = 9},
	{name = "Supreme Health Potion", chance = 35000, maxCount = 14},
	{name = "Ultimate Mana Potion", chance = 35000, maxCount = 5},
	{name = "Energy Bar", chance = 4500},
	{name = "Red Gem", chance = 4000},
	{name = "Royal Star", chance = 2300, maxCount = 50},
	{name = "Bullseye Potion", chance = 3500},
	{name = "Green Gem", chance = 2500},
	{name = "Stone Skin Amulet", chance = 8000, charges= 5},
	{name = "Terra Legs", chance = 15000},
	{name = "Terra Mantle", chance = 15400},
	{name = "Crystal Coin", chance = 5000, maxCount = 3},
	{name = "Giant Sapphire", chance = 400},
	{name = "Mastermind Potion", chance = 500},
	{id = 25376, chance = 12230, maxCount = 20},
	{id = 25378, chance = 8230, maxCount = 12},
	{id = 25380, chance = 4830, maxCount = 8},
	{id = 25379, chance = 4630, maxCount = 6},
	{id = 37418, chance = 4430, maxCount = 5},
	{name = "Terra Amulet", chance = 300, charges = 200},
	{name = "Lion Axe", chance = 200},
	{name = "Lion Hammer", chance = 250},
	{name = "Lion Longbow", chance = 200,},
	{name = "Lion Axe", chance = 200,},
	{name = "Lion Wand", chance = 200,},
	{name = "Lion Plate", chance = 250},
	{name = "Lion Rod", chance = 200},
	{name = "Lion Spangenhelm", chance = 150},
	{name = "Lion Spellbook", chance = 150},
	{name = "Lion Shield", chance = 150},
	{name = "Terra Rod", chance = 3000},
	{name = "Silver Token", chance = 3000, maxCount = 3},
	{name = "Gold Ingot", chance = 3000, maxCount = 1}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1450, shootEffect = CONST_ANI_SMALLEARTH, target = false},
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -970, condition = {type = CONDITION_POISON, totalDamage = 80, interval = 4000}},
    {name ="combat", interval = 2000, chance = 65, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false}
}

monster.defenses = {
	defense = 75,
	armor = 78,
	{name ="speed", interval = 2000, chance = 8, speedChange = 480, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
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
