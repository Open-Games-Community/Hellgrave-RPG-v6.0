local mType = Game.createMonsterType("Tentuglys Boss")
local monster = {}

monster.description = "a tentuglys boss"
monster.experience = 40000
monster.outfit = {
	lookTypeEx = 39940
}

monster.health = 75000
monster.maxHealth = 75000
monster.race = "blood"
monster.corpse = 40435
monster.speed = 0
monster.manaCost = 0
monster.maxSummons = 5

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 10,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = true,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "tentuglys tentacle", chance = 20, interval = 2000}
}

monster.loot = {
	{name = "Crystal Coin", chance = 68480, maxCount =2},
	{name = "Ultimate Health Potion", chance = 59780, maxCount =20},
	{name = "Ultimate Mana Potion", chance = 59780, maxCount =20},
 	{name = "Platinum Coin", chance = 23910, maxCount =10},
	{name = "Ultimate Spirit Potion", chance = 23910, maxCount =10},
	{name = "Mastermind Potion", chance = 19570, maxCount =5},
	{name = "Berserk Potion", chance = 18480, maxCount =5},
	{name = "Bullseye Potion", chance = 1630, maxCount =5},
	{name = "Pirate Coin", chance = 15220, maxCount =50},
	{name = "Small Treasure Chest", chance = 8700},
	{name = "Golden Dustbin", chance = 6520},
	{name = "Giant Amethyst", chance = 5430},
	{name = "Giant Ruby", chance = 4350},
	{name = "Tentacle of Tentugly", chance = 4170},
	{name = "Tentugly's Eye", chance = 2350},
	{name = "Tiara", chance = 4350},
	{name = "Raccon Backpack", chance = 3000},
	{name = "Giant Topaz", chance = 3260},
	{name = "Golden Skull", chance = 3260},
	{name = "Golden Cheese Wedge", chance = 2170},
	{name = "Plushie of Tentugly", chance = 1090},
	{name = "Tentugly's Jaws", chance = 999}
}

monster.events = {
	"onDeath_randomTierDrops"
}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -160, maxDamage = -250, range = 6, shootEffect = CONST_ANI_ENERGYBALL, target = true},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -70, maxDamage = -300, range = 7, target = false},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -490, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -80, maxDamage = -551, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DROWNDAMAGE, minDamage = -150, maxDamage = -180, radius = 8, effect = CONST_ME_WATERSPLASH, target = false},
	{name ="condition", type = CONDITION_DROWN, interval = 2000, chance = 10, minDamage = -180, maxDamage = -300, radius = 8, effect = CONST_ME_WATERSPLASH, target = false},
}

monster.defenses = {
	defense = 80,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = -130},
	{type = COMBAT_FIREDAMAGE, percent = -120},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType:register(monster)