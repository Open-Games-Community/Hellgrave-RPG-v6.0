local mType = Game.createMonsterType("Emerald Leviathan")
local monster = {}

monster.description = "Emerald Leviathan"
monster.experience = 800000
monster.outfit = {
	lookTypeEx = 35093,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 250000
monster.maxHealth = 250000
monster.race = "blood"
monster.corpse = 35093
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
	{text = "Stop tickling me!", yell = true},
	{text = "He would imprison you in the depths of falanaar!", yell = true},

}

monster.loot = {
	{name = "crystal coin", chance = 40000, maxCount = 16},
	{name = "demoniac dust", chance = 8000, maxCount = 9},
	{name = "amber sliver", chance = 4000, maxCount = 2},
	{name = "demoniac crystal", chance = 11000, maxCount = 4},
	{name = "endless rune", chance = 4000},
	{id = 39178, chance = 3500, maxCount = 2},
	{id = 39179, chance = 3500, maxCount = 2},
	{id = 13560, chance = 2800, maxCount = 2},
	{id = 33983, chance = 5500, maxCount = 3},
	{id = 24807, chance = 4000, maxCount = 2},
	{name = "coin of heroism", chance = 8000, maxCount = 3},
	{name = "endless coin", chance = 10000, maxCount = 3},
	{name = "worldboss token", chance = 10000, maxCount = 6},
	{name = "time coin", chance = 8000 ,maxCount = 3},
	{name = "nether pearl", chance = 6500, maxCount = 2},
	{name = "silver mirror token", chance = 5000, maxCount = 3},
	{name = "radiance sigil of soul I", chance = 50000, maxCount = 10},
	{name = "annihilation sigil of soul I", chance = 50000, maxCount = 5},
	{name = "spirit sigil of soul I", chance = 50000, maxCount = 8},
	{name = "nightmare sigil of soul I", chance = 50000, maxCount = 6},
	{name = "calamity sigil of soul I", chance = 50000, maxCount = 5},
	{name = "heirloom sigil of soul I", chance = 50000, maxCount = 5},
	{name = "cryptic sigil of soul I", chance = 50000, maxCount = 3},
	{name = "void chalice", chance = 3000},
	{name = "box of nether pearls", chance = 3000},
	{name = "relic of astaroth", chance = 4000},
	{name = "shadow lantern", chance = 4000},
	{name = "despair potion", chance = 2000},
	{name = "silver treasure chest", chance = 11000},
	{name = "key of silver treasure chest", chance = 11000},
	{name = "stellar orb", chance = 8000, maxCount = 2},
	{name = "sunblast orb", chance = 18000, maxCount = 2},
	{name = "rainbow tear", chance = 8000},
	{name = "chaos pure brooch fragment", chance = 5000},
	{name = "relic of abaddon", chance = 2200},
	{name = "giant dragon horn", chance = 5500},
	{name = "hellgrave coin", chance = 10000, maxCount = 2},
	{name = "demoniac bar", chance = 4500, maxCount = 2},
	{name = "divine blessed crystal", chance = 3000, maxCount = 2},
	{name = "very rare weapon discovery scroll", chance = 2800},
	{name = "very rare equipment discovery scroll", chance = 3800},
	{name = "very rare identification rune", chance = 5500},
	{name = "enchanted elementium bar", chance = 2000},
	{name = "spirit infused orb", chance = 3000},
	{name = "heraldic feather", chance = 5000},
	{name = "ancient tablet scroll", chance = 3000},
	{name = "fragment ordnance wing", chance = 2000},
	{name = "fragment chaos wing", chance = 3300},
	{name = "radiant helmet", chance = 2000},
	{name = "radiant armor", chance = 1100},
	{name = "radiant crossbow", chance = 1300},
	{name = "radiant legs", chance = 1500},
	{name = "radiant boots", chance = 2200},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1088},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -450, maxDamage = -1100, length = 10, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, minDamage = -630, maxDamage = -760, radius = 5, shootEffect = CONST_ANI_DEATH, effect = 246, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_EARTHDAMAGE, minDamage = -700, maxDamage = -885, length = 8, spread = 3, effect = 248, target = false},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_ICEDAMAGE, minDamage = -400, maxDamage = -930, radius = 6, effect = CONST_ME_ICETORNADO, target = false},
	{name ="drunk", interval = 3000, chance = 11, radius = 6, effect = CONST_ME_SOUND_PURPLE, target = false},
	-- energy damage
	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 15, minDamage = -250, maxDamage = -550, radius = 4, effect = 240, target = false}
}

monster.defenses = {
	defense = 110,
	armor = 180,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = -11},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -5},
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
