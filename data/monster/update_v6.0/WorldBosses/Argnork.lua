local mType = Game.createMonsterType("Argnork")
local monster = {}

monster.description = "Argnork"
monster.experience = 700000
monster.outfit = {
	lookTypeEx = 32713,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 240000
monster.maxHealth = 240000
monster.race = "blood"
monster.corpse = 32713
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
	{text = "You will be mine!", yell = true},
	{text = "Idiot! I am strongest than you!", yell = true},
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
	{name = "demon catcher", chance = 5500},
	{name = "silver treasure chest", chance = 11000},
	{name = "key of silver treasure chest", chance = 11000},
	{name = "relic of horus", chance = 4000},
	{name = "hourglass of time", chance = 3000},
	{name = "stellar orb", chance = 8000, maxCount = 2},
	{name = "sunblast orb", chance = 18000, maxCount = 2},
	{name = "rainbow tear", chance = 8000},
	{name = "chaos pure brooch fragment", chance = 5000},
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
	{name = "frost axe", chance = 2000},
	{name = "frost bow", chance = 2000},
	{name = "tyrant spellbook", chance = 1300},
	{name = "vengeful spellbook", chance = 1100},
}

monster.attacks = {
	{name ="melee", interval = 1300, chance = 100, skill = 170, attack = 180},
	{name ="speed", interval = 2000, chance = 20, speedChange = -400, range = 7, shootEffect = CONST_ANI_WHIRLWINDAXE, target = false, duration = 2500},
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -820, maxDamage = -1250, range = 7, effect = 235, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_MANADRAIN, minDamage = -630, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -450, maxDamage = -1100, range = 3, effect = 240, target = true}
}

monster.defenses = {
	defense = 160,
	armor = 180,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false},
	}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -7},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 40},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
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
