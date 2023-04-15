local mType = Game.createMonsterType("Larva Queen")
local monster = {}

monster.description = "Larva Queen"
monster.experience = 650000
monster.outfit = {
	lookTypeEx = 15460,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 225000
monster.maxHealth = 225000
monster.race = "venom"
monster.corpse = 15460
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
	{text = "I am the giant Larva Queen!", yell = true},
	{text = "Larvas! Kill them!", yell = true},
	{text = "I Will crush you all!", yell = false},
}

monster.loot = {
	{name = "crystal coin", chance = 40000, maxCount = 14},
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
	{name = "nether pearl", chance = 6500, maxCount = 2},
	{name = "time coin", chance = 8000 ,maxCount = 3},
	{name = "silver mirror token", chance = 5000, maxCount = 3},
	{name = "radiance sigil of soul I", chance = 50000, maxCount = 10},
	{name = "annihilation sigil of soul I", chance = 50000, maxCount = 5},
	{name = "spirit sigil of soul I", chance = 50000, maxCount = 8},
	{name = "nightmare sigil of soul I", chance = 50000, maxCount = 6},
	{name = "calamity sigil of soul I", chance = 50000, maxCount = 5},
	{name = "heirloom sigil of soul I", chance = 50000, maxCount = 5},
	{name = "cryptic sigil of soul I", chance = 50000, maxCount = 3},
	{name = "silver treasure chest", chance = 11000},
	{name = "key of silver treasure chest", chance = 11000},
	{name = "stellar orb", chance = 8000, maxCount = 2},
	{name = "sunblast orb", chance = 18000, maxCount = 2},
	{name = "rainbow tear", chance = 8000},
	{name = "chaos pure brooch fragment", chance = 5000},
	{name = "demon catcher", chance = 5500},
	{name = "hourglass of time", chance = 3000},
	{name = "relic of horus", chance = 4000},
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
	{name = "kirin wand", chance = 2500},
	{name = "kirin club", chance = 2500},
	{name = "kirin axe", chance = 2500},
	{name = "kirin sword", chance = 2500},
	{name = "kirin scythe", chance = 2500},
}

monster.attacks = {
	{name ="melee", interval = 1300, chance = 100, skill = 80, attack = 120},
	{name ="speed", interval = 2000, chance = 20, speedChange = -400, range = 7, shootEffect = CONST_ANI_WHIRLWINDAXE, target = false, duration = 2500},
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_EARTHDAMAGE, minDamage = -820, maxDamage = -950, range = 7, effect = 247, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -800, range = 3, effect = 242, target = true}
}

monster.defenses = {
	defense = 120,
	armor = 100,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = -12},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -4},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
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
