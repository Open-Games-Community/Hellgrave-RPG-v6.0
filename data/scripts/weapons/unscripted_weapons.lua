local weapons = {
	{
		itemId = 40737,
		type = WEAPON_AMMO,
		level = 150,
		unproperly = true,
		action = "removecount"
	}, -- spectral bolt (no decay)
	{
		itemId = 40357,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 150,
		mana = 19,
		damage = {80, 100},
		vocation = {
			{"mage", true},
			{"elite mage"} 
		}
	}, -- jungle wand
	{
		itemId = 40356,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 150,
		mana = 19,
		damage = {80, 100},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- jungle rod
	{
		itemId = 42033,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 300,
		mana = 28,
		damage = {200, 300},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		},
	}, -- Angelic Wand
	{
		itemId = 40804,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 300,
		mana = 30,
		damage = {250, 350},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		},
	}, -- Angelic Wand +1
	{
		itemId = 40805,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 300,
		mana = 34,
		damage = {300, 400},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		},
	}, -- Angelic Wand +3
	{
		itemId = 40806,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 300,
		mana = 40,
		damage = {350, 450},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		},
	}, -- Angelic Wand +5
	{
		itemId = 40353,
		type = WEAPON_DISTANCE,
		level = 150,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- jungle bow
	{
		itemId = 41449,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Eagletalon Bow
	{
		itemId = 39284,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- darkshore bow
	{
		itemId = 39290,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- darkshore elven bow
	{
		itemId = 36862,
		type = WEAPON_DISTANCE,
		level = 100,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Tentacle Bow
	{
		itemId = 40350,
		type = WEAPON_AXE,
		level = 150,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- throwing axe
	{
		itemId = 39216,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- divine axe
	{
		itemId = 40349,
		type = WEAPON_CLUB,
		level = 150,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- jungle flail
	{
		itemId = 39217,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- divine mace
	{
		itemId = 38990,
		type = WEAPON_SWORD,
		level = 270,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- lion longsword
	{
		itemId = 39218,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- divine sword
	{
		itemId = 39859,
		type = WEAPON_AXE,
		level = 70,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Stalker Axe
	{
		itemId = 39858,
		type = WEAPON_SWORD,
		level = 70,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Colossal Sword
	{
		itemId = 41492,
		type = WEAPON_SWORD,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Eldritch Claymore
	{
		itemId = 41493,
		type = WEAPON_SWORD,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Gilded Eldritch Claymore
	{
		itemId = 41494,
		type = WEAPON_CLUB,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Eldritch Warmace
	{
		itemId = 41495,
		type = WEAPON_CLUB,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Gilded Eldritch Warmace
	{
		itemId = 41496,
		type = WEAPON_AXE,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Eldritch Greataxe
	{
		itemId = 41497,
		type = WEAPON_AXE,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Gilded Eldritch Greataxe
	{
		itemId = 42035,
		type = WEAPON_SWORD,
		level = 300,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Night Heaven Sword
	{
		itemId = 42038,
		type = WEAPON_SWORD,
		level = 300,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Night Heaven Axe
	{
		itemId = 42036,
		type = WEAPON_SWORD,
		level = 500,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Inferno Sword
	{
		itemId = 39173,
		type = WEAPON_CLUB,
		level = 300,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Khazra Mace
	{
		itemId = 29222,
		type = WEAPON_SWORD,
		level = 600,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Legacy Fallen Sword
	{
		itemId = 29223,
		type = WEAPON_SWORD,
		level = 610,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Legacy Azure Sword
	{
		itemId = 29224,
		type = WEAPON_SWORD,
		level = 620,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Legacy Avalon Sword
	{
		itemId = 29283,
		type = WEAPON_SWORD,
		level = 630,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Abyssal Fallen Sword
	{
		itemId = 29284,
		type = WEAPON_SWORD,
		level = 640,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Abyssal Azure Sword
	{
		itemId = 29285,
		type = WEAPON_SWORD,
		level = 650,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Abyssal Avalon Sword
	{
		itemId = 29253,
		type = WEAPON_SWORD,
		level = 660,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Chaos Fallen Sword
	{
		itemId = 29254,
		type = WEAPON_SWORD,
		level = 680,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Chaos Azure Sword
	{
		itemId = 29255,
		type = WEAPON_SWORD,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Chaos Avalon Sword
	{
		itemId = 25900,
		type = WEAPON_SWORD,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Dimensional Blade
	{
		itemId = 25907,
		type = WEAPON_SWORD,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Primal Blade
	{
		itemId = 25914,
		type = WEAPON_SWORD,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Awakening Blade
	{
		itemId = 29228,
		type = WEAPON_AXE,
		level = 600,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Legacy Fallen Axe
	{
		itemId = 29229,
		type = WEAPON_AXE,
		level = 610,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Legacy Azure Axe
	{
		itemId = 29230,
		type = WEAPON_AXE,
		level = 620,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Legacy Avalon Axe
	{
		itemId = 29289,
		type = WEAPON_AXE,
		level = 630,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Abyssal Fallen Axe
	{
		itemId = 29290,
		type = WEAPON_AXE,
		level = 640,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Abyssal Azure Axe
	{
		itemId = 29291,
		type = WEAPON_AXE,
		level = 650,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Abyssal Avalon Axe
	{
		itemId = 29259,
		type = WEAPON_AXE,
		level = 660,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Chaos Fallen Axe
	{
		itemId = 29260,
		type = WEAPON_AXE,
		level = 680,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Chaos Azure Axe
	{
		itemId = 29261,
		type = WEAPON_AXE,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Chaos Avalon Axe
	{
		itemId = 25901,
		type = WEAPON_AXE,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Dimensional Axe
	{
		itemId = 25908,
		type = WEAPON_AXE,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Primal Axe
	{
		itemId = 25915,
		type = WEAPON_AXE,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Awakening Axe
	{
		itemId = 29234,
		type = WEAPON_CLUB,
		level = 600,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Legacy Fallen Club
	{
		itemId = 29235,
		type = WEAPON_CLUB,
		level = 610,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Legacy Azure Club
	{
		itemId = 29236,
		type = WEAPON_CLUB,
		level = 620,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Legacy Avalon Club
	{
		itemId = 29295,
		type = WEAPON_CLUB,
		level = 630,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Abyssal Fallen Club
	{
		itemId = 29296,
		type = WEAPON_CLUB,
		level = 640,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Abyssal Azure Club
	{
		itemId = 29297,
		type = WEAPON_CLUB,
		level = 650,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Abyssal Avalon Club
	{
		itemId = 29259,
		type = WEAPON_AXE,
		level = 660,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Chaos Fallen Club
	{
		itemId = 29260,
		type = WEAPON_AXE,
		level = 680,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Chaos Azure Club
	{
		itemId = 29261,
		type = WEAPON_AXE,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Chaos Avalon Club
	{
		itemId = 25902,
		type = WEAPON_AXE,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Dimensional Chopper
	{
		itemId = 25909,
		type = WEAPON_AXE,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Primal Hammer
	{
		itemId = 25916,
		type = WEAPON_AXE,
		level = 700,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Awakening Hammer
	{
		itemId = 29237,
		type = WEAPON_DISTANCE,
		level = 600,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Legacy Fallen Bow
	{
		itemId = 29238,
		type = WEAPON_DISTANCE,
		level = 610,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Legacy Azure Bow
	{
		itemId = 29239,
		type = WEAPON_DISTANCE,
		level = 620,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Legacy Avalon Bow
	{
		itemId = 29298,
		type = WEAPON_DISTANCE,
		level = 630,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Abyssal Fallen Bow
	{
		itemId = 29299,
		type = WEAPON_DISTANCE,
		level = 640,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Abyssal Azure Bow
	{
		itemId = 29300,
		type = WEAPON_DISTANCE,
		level = 650,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Abyssal Avalon Bow
	{
		itemId = 29268,
		type = WEAPON_DISTANCE,
		level = 660,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Chaos Fallen Bow
	{
		itemId = 29269,
		type = WEAPON_DISTANCE,
		level = 680,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Chaos Azure Bow
	{
		itemId = 29270,
		type = WEAPON_DISTANCE,
		level = 700,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Chaos Avalon Bow
	{
		itemId = 25903,
		type = WEAPON_DISTANCE,
		level = 700,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Dimensional Bow
	{
		itemId = 25910,
		type = WEAPON_DISTANCE,
		level = 700,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Primal Bow
	{
		itemId = 25917,
		type = WEAPON_DISTANCE,
		level = 700,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Awakening Bow
	{
		itemId = 29240,
		type = WEAPON_DISTANCE,
		level = 600,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Legacy Fallen Crossbow
	{
		itemId = 29241,
		type = WEAPON_DISTANCE,
		level = 610,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Legacy Azure Crossbow
	{
		itemId = 29242,
		type = WEAPON_DISTANCE,
		level = 620,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Legacy Avalon Crossbow
	{
		itemId = 29301,
		type = WEAPON_DISTANCE,
		level = 630,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Abyssal Fallen Crossbow
	{
		itemId = 29302,
		type = WEAPON_DISTANCE,
		level = 640,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Abyssal Azure Crossbow
	{
		itemId = 29303,
		type = WEAPON_DISTANCE,
		level = 650,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Abyssal Avalon Crossbow
	{
		itemId = 29271,
		type = WEAPON_DISTANCE,
		level = 660,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Chaos Fallen Crossbow
	{
		itemId = 29272,
		type = WEAPON_DISTANCE,
		level = 680,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Chaos Azure Crossbow
	{
		itemId = 29273,
		type = WEAPON_DISTANCE,
		level = 700,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Chaos Avalon Crossbow
	{
		itemId = 25904,
		type = WEAPON_DISTANCE,
		level = 700,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Dimensional Crossbow
	{
		itemId = 25911,
		type = WEAPON_DISTANCE,
		level = 700,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Primal Crossbow
	{
		itemId = 25918,
		type = WEAPON_DISTANCE,
		level = 700,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Awakening Crossbow
	{
		itemId = 29246,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 20,
		damage = {75, 125},
		level = 600,
		unproperly = true,
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Legacy Fallen Rod
	{
		itemId = 29247,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 25,
		damage = {100, 150},
		level = 610,
		unproperly = true,
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Legacy Azure Rod
	{
		itemId = 29248,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 30,
		damage = {125, 175},
		level = 620,
		unproperly = true,
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Legacy Avalon Rod
	{
		itemId = 29307,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 35,
		damage = {150, 200},
		level = 630,
		unproperly = true,
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Abyssal Fallen Rod
	{
		itemId = 29308,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 40,
		damage = {175, 225},
		level = 640,
		unproperly = true,
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Abyssal Azure Rod
	{
		itemId = 29309,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 45,
		damage = {200, 250},
		level = 650,
		unproperly = true,
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Abyssal Avalon Rod
	{
		itemId = 29277,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 55,
		damage = {230, 280},
		level = 660,
		unproperly = true,
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Chaos Fallen Rod
	{
		itemId = 29278,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 60,
		damage = {260, 310},
		level = 680,
		unproperly = true,
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Chaos Azure Rod
	{
		itemId = 29279,
		level = 700,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 65,
		damage = {290, 350},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Chaos Avalon Rod
	{
		itemId = 25906,
		level = 700,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 65,
		damage = {325, 425},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Dimensional Rod
	{
		itemId = 25913,
		level = 700,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 65,
		damage = {425, 600},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Primal Rod
	{
		itemId = 25922,
		level = 700,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 65,
		damage = {600, 800},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Awakening Rod
	{
		itemId = 29243,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 20,
		damage = {75, 125},
		level = 600,
		unproperly = true,
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Legacy Fallen Wand
	{
		itemId = 29244,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 25,
		damage = {100, 150},
		level = 610,
		unproperly = true,
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Legacy Azure Wand
	{
		itemId = 29245,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 30,
		damage = {125, 175},
		level = 620,
		unproperly = true,
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Legacy Avalon Wand
	{
		itemId = 29304,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 35,
		damage = {150, 200},
		level = 630,
		unproperly = true,
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Abyssal Fallen Wand
	{
		itemId = 29305,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 40,
		damage = {175, 225},
		level = 640,
		unproperly = true,
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Abyssal Azure Wand
	{
		itemId = 29306,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 45,
		damage = {200, 250},
		level = 650,
		unproperly = true,
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Abyssal Avalon Wand
	{
		itemId = 29274,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 55,
		damage = {230, 280},
		level = 660,
		unproperly = true,
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Chaos Fallen Wand
	{
		itemId = 29275,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 60,
		damage = {260, 310},
		level = 680,
		unproperly = true,
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Chaos Azure Wand
	{
		itemId = 29276,
		level = 700,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 65,
		damage = {290, 350},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Chaos Avalon Wand
	{
		itemId = 25905,
		level = 700,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 65,
		damage = {325, 425},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Dimensional Wand
	{
		itemId = 25912,
		level = 700,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 65,
		damage = {425, 600},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Primal Wand
	{
		itemId = 25921,
		level = 700,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 65,
		damage = {600, 800},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Awakening Wand
	{
		itemId = 39089,
		type = WEAPON_CLUB,
		level = 270,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- lion hammer
	{
		itemId = 39088,
		type = WEAPON_AXE,
		level = 270,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- lion axe
	{
		itemId = 38987,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 220,
		mana = 21,
		damage = {89, 109},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- lion wand
	{
		itemId = 36858,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 100,
		mana = 18,
		damage = {65, 90},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- Tentacle wand
	{
		itemId = 36858,
		type = WEAPON_WAND,
		wandType = "death",
		mana = 16,
		damage = {35, 55},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- Defias wand
	{
		itemId = 38986,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 270,
		mana = 20,
		damage = {85, 105},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- lion rod
	{
		itemId = 38985,
		type = WEAPON_DISTANCE,
		level = 270,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- lion longbow
	{
		itemId = 39219,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- divine bow
	{
		itemId = 36957,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- defias bow
	{
		itemId = 41499,
		type = WEAPON_DISTANCE,
		level = 200,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Eldritch bow
	{
		itemId = 41503,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 200,
		mana = 22,
		damage = {100, 130},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- eldritch wand
	{
		itemId = 41504,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 200,
		mana = 22,
		damage = {130, 160},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- gilded eldritch wand
	{
		itemId = 41500,
		type = WEAPON_DISTANCE,
		level = 200,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Gilded Eldritch bow
	{
		itemId = 38926,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 400,
		mana = 21,
		damage = {98, 118},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- soulhexer rod
	{
		itemId = 41509,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 200,
		mana = 22,
		damage = {100, 130},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- eldritch rod
	{
		itemId = 41510,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 400,
		mana = 22,
		damage = {130, 160},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- gilded eldritch rod
	{
		itemId = 24317,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 200,
		mana = 35,
		damage = {230, 280},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Ancestral Rifter Rod
	{
		itemId = 40785,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 200,
		mana = 38,
		damage = {245, 300},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Ancestral Rifter Rod +1 
	{
		itemId = 40745,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 200,
		mana = 42,
		damage = {265, 320},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Ancestral Rifter Rod +3
	{
		itemId = 39171,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 200,
		mana = 45,
		damage = {280, 340},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Ancestral Rifter Rod +5
	{
		itemId = 39186,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 200,
		mana = 35,
		damage = {230, 280},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Ancestral Evil Wand
	{
		itemId = 39193,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 200,
		mana = 38,
		damage = {245, 300},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Ancestral Evil Wand +1 
	{
		itemId = 39194,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 200,
		mana = 42,
		damage = {275, 330},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Ancestral Evil Wand +3
	{
		itemId = 39195,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 200,
		mana = 45,
		damage = {295, 370},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Ancestral Evil Wand +5
	{
		itemId = 20624,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 100,
		mana = 22,
		damage = {90, 120},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Frigost Wand
	{
		itemId = 41481,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 100,
		mana = 26,
		damage = {110, 140},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Frigost Wand +1 
	{
		itemId = 41482,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 100,
		mana = 30,
		damage = {125, 165},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Frigost Wand +3
	{
		itemId = 41483,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 100,
		mana = 33,
		damage = {140, 185},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
		
	}, -- Frigost Wand +5
	{
		itemId = 24332,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 100,
		mana = 33,
		damage = {125, 165},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Rod of Venom
	{
		itemId = 39180,
		type = WEAPON_WAND,
		wandType = "death",
		mana = 30,
		damage = {145, 195},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Skull wand of the depth
	{
		itemId = 12542,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 200,
		mana = 30,
		damage = {188, 230},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Ekatrix rod
	{
		itemId = 18497,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 200,
		mana = 32,
		damage = {200, 250},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Ekatrix rod +1
	{
		itemId = 18498,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 200,
		mana = 35,
		damage = {215, 275},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Ekatrix rod +3
	{
		itemId = 18499,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 200,
		mana = 40,
		damage = {230, 300},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Ekatrix rod +5
	{
		itemId = 35088,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 120,
		mana = 22,
		damage = {65, 100},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Dark Crystal Wand
	{
		itemId = 35089,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 80,
		mana = 22,
		damage = {50, 90},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Wand of Flame
	{
		itemId = 35089,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 80,
		mana = 18,
		damage = {50, 90},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Rod of Flame
	{
		itemId = 40855,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 30,
		damage = {175, 225},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Tentugly's Wand
	{
		itemId = 39190,
		type = WEAPON_WAND,
		wandType = "earth",
		mana = 27,
		damage = {140, 190},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Wrath of Nature
	{
		itemId = 39191,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 27,
		damage = {135, 200},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- Spark of Demeter
	{
		itemId = 39192,
		type = WEAPON_WAND,
		wandType = "earth",
		mana = 27,
		damage = {160, 195},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Enlighted of Dryad's
	{
		itemId = 40786,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 27,
		damage = {150, 180},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Frozen Hell
	{
		itemId = 12573,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 200,
		mana = 30,
		damage = {188, 230},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- kraken wand
	{
		itemId = 18500,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 200,
		mana = 32,
		damage = {200, 250},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- kraken wand +1
	{
		itemId = 18501,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 200,
		mana = 35,
		damage = {215, 275},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- kraken wand +3
	{
		itemId = 18502,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 200,
		mana = 40,
		damage = {230, 300},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- kraken wand +5
	{
		itemId = 38925,
		type = WEAPON_WAND,
		wandType = "death",
		level = 400,
		mana = 21,
		damage = {100, 120},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- soultainter wand
	{
		itemId = 38924,
		type = WEAPON_DISTANCE,
		level = 400,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- soulpiercer crossbow
	{
		itemId = 24777,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Evil Master Crossbow
	{
		itemId = 38923,
		type = WEAPON_DISTANCE,
		level = 400,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- soulbleeder bow
	{
		itemId = 38922,
		type = WEAPON_CLUB,
		level = 400,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- soulmaimer club
	{
		itemId = 38921,
		type = WEAPON_CLUB,
		level = 400,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- soulcrusher club
	{
		itemId = 38920,
		type = WEAPON_AXE,
		level = 400,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- souleater axe
	{
		itemId = 41463,
		type = WEAPON_AXE,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- ancestral evil axe
	{
		itemId = 41314,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Dreadwake Sword
	{
		itemId = 41315,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Dreadwake Axe
	{
		itemId = 41316,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Dreadwake Club
	{
		itemId = 41456,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- skull axe of the depth
	{
		itemId = 41454,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- skull hammer of the depth
	{
		itemId = 38138,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- obscurus axe
	{
		itemId = 36952,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- defias axe
	{
		itemId = 38919,
		type = WEAPON_AXE,
		level = 400,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- soulbiter axe
	{
		itemId = 38918,
		type = WEAPON_SWORD,
		level = 400,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- soulshredder sword
	{
		itemId = 39220,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- obscurus sword
	{
		itemId = 39222,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- obscurus mace
	{
		itemId = 38917,
		type = WEAPON_SWORD,
		level = 400,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- soulcutter sword
	{
		itemId = 37451,
		type = WEAPON_AXE,
		level = 180,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- phantasmal axe
	{
		itemId = 36449,
		type = WEAPON_SWORD,
		level = 250,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- tagralt blade
	{
		itemId = 36416,
		type = WEAPON_DISTANCE,
		level = 250,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- bow of cataclysm
	{
		itemId = 41464,
		type = WEAPON_DISTANCE,
		level = 200,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- ancestral evil bow
	{
		itemId = 39185,
		type = WEAPON_DISTANCE,
		level = 200,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- ancestral rifter bow
	{
		itemId = 40959,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Dreadwake Bow
	{
		itemId = 40854,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Hellfire Bow
	{
		itemId = 41452,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- skull bow of the depth
	{
		itemId = 41451,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- skull crossbow of the depth
	{
		itemId = 39221,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- obscurus bow
	{
		itemId = 36415,
		type = WEAPON_CLUB,
		level = 220,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- mortal mace
	{
		itemId = 39188,
		type = WEAPON_CLUB,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- ancestral evil club
	{
		itemId = 39187,
		type = WEAPON_CLUB,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- ancestral rifter club
	{
		itemId = 39429,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- defias club
	{
		itemId = 39428,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Defias Sword
	{
		itemId = 24316,
		type = WEAPON_SWORD,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Ancestral Rifter Dagger
	{
		itemId = 41787,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Megalithe Slayer
	{
		itemId = 41788,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Megalithe Sword
	{
		itemId = 41789,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Megalithe Scythe
	{
		itemId = 41460,
		type = WEAPON_AXE,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Ancestral Rifter Scythe
	{
		itemId = 41791,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Megalithe Axe
	{
		itemId = 41790,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Megalithe Hammer
	{
		itemId = 39405,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Plagueheart Sword
	{
		itemId = 39406,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Aldro Axe
	{
		itemId = 12562,
		type = WEAPON_CLUB,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Lurker mace
	{
		itemId = 35235,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 220,
		mana = 21,
		damage = {70, 110},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- cobra rod
	{
		itemId = 41778,
		type = WEAPON_WAND,
		wandType = "earth",
		mana = 32,
		damage = {108, 145},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- cruel's gladiator rod
	{
		itemId = 35234,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 270,
		mana = 22,
		damage = {94, 100},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- cobra wand
	{
		itemId = 41779,
		type = WEAPON_WAND,
		wandType = "earth",
		mana = 32,
		damage = {108, 145},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- cruel's gladiator wand
	{
		itemId = 35233,
		type = WEAPON_SWORD,
		level = 220,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- cobra sword
	{
		itemId = 35231,
		type = WEAPON_AXE,
		level = 220,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- cobra axe
	{
		itemId = 12563,
		type = WEAPON_AXE,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Lurker axe
	{
		itemId = 35230,
		type = WEAPON_CLUB,
		level = 220,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- cobra club
	{
		itemId = 35228,
		type = WEAPON_DISTANCE,
		level = 220,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- cobra crossbow
	{
		itemId = 40697,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- radiant crossbow
	{
		itemId = 41781,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- cruel's gladiator bow
	{
		itemId = 41782,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- cruel's gladiator crossbow
	{
		itemId = 35112,
		type = WEAPON_AXE
	}, -- ice hatchet
	{
		itemId = 34063,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 180,
		mana = 24,
		damage = {88, 108},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- energized limb
	{
		itemId = 34060,
		type = WEAPON_SWORD,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- winterblade
	{
		itemId = 40731,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- vanguard sword
	{
		itemId = 34060,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- vanguard mace
	{
		itemId = 12564,
		type = WEAPON_SWORD,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Lurker Sword
	{
		itemId = 34059,
		type = WEAPON_SWORD,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- summerblade
	{
		itemId = 34057,
		type = WEAPON_CLUB,
		level = 230,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- resizer
	{
		itemId = 34055,
		type = WEAPON_DISTANCE,
		level = 220,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- living vine bow
	{
		itemId = 40734,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- vanguard bow
	{
		itemId = 33925,
		type = WEAPON_AXE
	}, -- golden axe
	{
		itemId = 33267,
		type = WEAPON_WAND
	}, -- wand of destruction test
	{
		itemId = 33266,
		type = WEAPON_DISTANCE
	}, -- umbral master bow test
	{
		itemId = 33254,
		type = WEAPON_WAND
	}, -- mage test weapon
	{
		itemId = 33253,
		type = WEAPON_DISTANCE
	}, -- bow of destruction test
	{
		itemId = 33252,
		type = WEAPON_SWORD
	}, -- test weapon for Warriors
	{
		itemId = 32529,
		type = WEAPON_CLUB,
		level = 80,
		unproperly = true
	}, -- sulphurous demonbone
	{
		itemId = 32528,
		type = WEAPON_CLUB,
		level = 80,
		unproperly = true
	}, -- unliving demonbone
	{
		itemId = 32527,
		type = WEAPON_CLUB,
		level = 80,
		unproperly = true
	}, -- energized demonbone
	{
		itemId = 32526,
		type = WEAPON_CLUB,
		level = 80,
		unproperly = true
	}, -- rotten demonbone
	{
		itemId = 32523,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 230,
		mana = 23,
		damage = {80, 120},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- deepling fork
	{
		itemId = 39407,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 23,
		damage = {90, 140},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, --kirin wand
	{
		itemId = 32523,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 27,
		damage = {85, 135},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- vanguard wand
	{
		itemId = 32522,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 180,
		mana = 23,
		damage = {86, 98},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- deepling ceremonial dagger
	{
		itemId = 32425,
		type = WEAPON_CLUB,
		level = 300,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- falcon mace
	{
		itemId = 36810,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- vindictive sword
	{
		itemId = 39408,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- kirin club
	{
		itemId = 39408,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- kirin axe
	{
		itemId = 39412,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- kirin scythe
	{
		itemId = 39409,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- kirin sword
	{
		itemId = 32424,
		type = WEAPON_AXE,
		level = 300,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- falcon battleaxe
	{
		itemId = 32423,
		type = WEAPON_SWORD,
		level = 300,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- falcon longsword
	{
		itemId = 32418,
		type = WEAPON_DISTANCE,
		level = 300,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- falcon bow
	{
		itemId = 32417,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 300,
		mana = 21,
		damage = {86, 102},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- falcon wand
	{
		itemId = 32416,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 300,
		mana = 20,
		damage = {87, 101},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- falcon rod
	{
		itemId = 30886,
		type = WEAPON_SWORD,
		level = 250,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- gnome sword
	{
		itemId = 30760,
		type = WEAPON_CLUB
	}, -- mallet handle
	{
		itemId = 30758,
		type = WEAPON_CLUB
	}, -- strange mallet
	{
		itemId = 30693,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 200,
		mana = 20,
		damage = {80, 110},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- rod of destruction
	{
		itemId = 30692,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 200,
		mana = 20,
		damage = {80, 110},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of destruction
	{
		itemId = 30691,
		type = WEAPON_DISTANCE,
		level = 200,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- crossbow of destruction
	{
		itemId = 30690,
		type = WEAPON_DISTANCE,
		level = 200,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- bow of destruction
	{
		itemId = 30689,
		type = WEAPON_CLUB,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- hammer of destruction
	{
		itemId = 30688,
		type = WEAPON_CLUB,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- mace of destruction
	{
		itemId = 30687,
		type = WEAPON_AXE,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- chopper of destruction
	{
		itemId = 30686,
		type = WEAPON_AXE,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- axe of destruction
	{
		itemId = 30685,
		type = WEAPON_SWORD,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- slayer of destruction
	{
		itemId = 30684,
		type = WEAPON_SWORD,
		level = 200,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- blade of destruction
	{
		itemId = 29060,
		type = WEAPON_WAND,
		wandType = "death",
		level = 41,
		mana = 15,
		damage = {75, 95},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of darkness
	{
		itemId = 29059,
		type = WEAPON_DISTANCE,
		level = 120,
		unproperly = true,
		breakChance = 30
	}, -- royal star
	{
		itemId = 29058,
		type = WEAPON_AMMO,
		level = 150,
		unproperly = true,
		action = "removecount"
	}, -- spectral bolt
	{
		itemId = 29036,
		type = WEAPON_DISTANCE,
		level = 60,
		unproperly = true,
		breakChance = 40
	}, -- leaf star
	{
		itemId = 29005,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 80,
		mana = 18,
		damage = {63, 77},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- dream blossom staff
	{
		itemId = 40692,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Bloodscale Bow
	{
		itemId = 40691,
		type = WEAPON_WAND,
		wandType = "fire",
		mana = 18,
		damage = {70, 115},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- Bloodscale wand
	{
		itemId = 40690,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Bloodscale GreatAxe
	{
		itemId = 40688,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Bloodscale Axe
	{
		itemId = 40689,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Bloodscale Club
	{
		itemId = 25523,
		type = WEAPON_DISTANCE,
		level = 120,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- rift crossbow
	{
		itemId = 25522,
		type = WEAPON_DISTANCE,
		level = 120,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- rift bow
	{
		itemId = 25422,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 100,
		mana = 19,
		damage = {80, 110},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- ferumbras' staff (enchanted)
	{
		itemId = 39277,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 21,
		damage = {80, 110},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- frozen hell wand
	{
		itemId = 25421,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 65,
		mana = 17,
		damage = {65, 95},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- ferumbras' staff (failed)
	{
		itemId = 25420,
		type = WEAPON_CLUB,
		level = 100,
		unproperly = true
	}, -- Ferumbras' staff
	{
		itemId = 25418,
		type = WEAPON_CLUB,
		level = 150,
		unproperly = true
	}, -- maimer
	{
		itemId = 25416,
		type = WEAPON_SWORD,
		level = 150,
		unproperly = true
	}, -- Impaler of the igniter
	{
		itemId = 25415,
		type = WEAPON_AXE,
		level = 150,
		unproperly = true
	}, -- plague bite
	{
		itemId = 25383,
		type = WEAPON_AXE,
		level = 70,
		unproperly = true
	}, -- rift lance
	{
		itemId = 24839,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 37,
		mana = 13,
		damage = {56, 74},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- ogre sceptra
	{
		itemId = 24828,
		type = WEAPON_AXE,
		level = 25,
		unproperly = true
	}, -- ogre choppa
	{
		itemId = 24827,
		type = WEAPON_AXE,
		level = 50,
		unproperly = true
	}, -- ogre klubba
	{
		itemId = 23839,
		type = WEAPON_AMMO,
		action = "removecount"
	}, -- simple arrow
	{
		itemId = 23719,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 1,
		mana = 2,
		damage = {4, 8},
		vocation = {
			{"Mage", true}}
	},
	{
		itemId = 23721,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 1,
		mana = 2,
		damage = {4, 8},
		vocation = {
			{"Priest", true}}
	},
	{
		itemId = 23590,
		type = WEAPON_CLUB,
		level = 70,
		unproperly = true
	}, -- one hit wonder
	{
		itemId = 23551,
		type = WEAPON_AXE,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- glooth axe
	{
		itemId = 39276,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- frozen hell axe
	{
		itemId = 23550,
		type = WEAPON_SWORD,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- glooth blade
	{
		itemId = 23549,
		type = WEAPON_CLUB,
		level = 75,
		unproperly = true,
		action = "removecharge",
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- glooth club
	{
		itemId = 23548,
		type = WEAPON_SWORD,
		level = 25,
		unproperly = true
	}, -- cowtana
	{
		itemId = 23547,
		type = WEAPON_AXE,
		level = 55,
		unproperly = true
	}, -- execowtioner axe
	{
		itemId = 23545,
		type = WEAPON_AXE,
		level = 45,
		unproperly = true
	}, -- mino lance
	{
		itemId = 23544,
		type = WEAPON_CLUB,
		level = 60,
		unproperly = true
	}, -- moohtant cudgel
	{
		itemId = 23543,
		type = WEAPON_CLUB,
		level = 25,
		unproperly = true
	}, -- glooth whip
	{
		itemId = 23542,
		type = WEAPON_CLUB,
		level = 55,
		unproperly = true
	}, -- metal bat
	{
		itemId = 23529,
		type = WEAPON_DISTANCE,
		level = 60,
		unproperly = true,
		breakChance = 2
	}, -- glooth spear
	{
		itemId = 22421,
		type = WEAPON_DISTANCE,
		level = 250,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- umbral master crossbow
	{
		itemId = 39275,
		type = WEAPON_DISTANCE,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- frozen hell bow
	{
		itemId = 22420,
		type = WEAPON_DISTANCE,
		level = 120,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- umbral crossbow
	{
		itemId = 22419,
		type = WEAPON_DISTANCE,
		level = 75,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- crude umbral crossbow
	{
		itemId = 22418,
		type = WEAPON_DISTANCE,
		level = 250,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- umbral master bow
	{
		itemId = 42045,
		type = WEAPON_DISTANCE,
		level = 300,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Night Heaven Bow
	{
		itemId = 22417,
		type = WEAPON_DISTANCE,
		level = 120,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- umbral bow
	{
		itemId = 22416,
		type = WEAPON_DISTANCE,
		level = 75,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- crude umbral bow
	{
		itemId = 22415,
		type = WEAPON_CLUB,
		level = 250,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral master hammer
	{
		itemId = 22414,
		type = WEAPON_CLUB,
		level = 120,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral hammer
	{
		itemId = 22413,
		type = WEAPON_CLUB,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- crude umbral hammer
	{
		itemId = 22412,
		type = WEAPON_CLUB,
		level = 250,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral master mace
	{
		itemId = 22411,
		type = WEAPON_CLUB,
		level = 120,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral mace
	{
		itemId = 22410,
		type = WEAPON_CLUB,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- crude umbral mace
	{
		itemId = 22409,
		type = WEAPON_AXE,
		level = 250,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral master chopper
	{
		itemId = 22408,
		type = WEAPON_AXE,
		level = 120,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral chopper
	{
		itemId = 22407,
		type = WEAPON_AXE,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- guardian halberd
	{
		itemId = 22406,
		type = WEAPON_AXE,
		level = 250,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral master axe
	{
		itemId = 22405,
		type = WEAPON_AXE,
		level = 120,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral axe
	{
		itemId = 22404,
		type = WEAPON_AXE,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- crude umbral axe
	{
		itemId = 22403,
		type = WEAPON_SWORD,
		level = 250,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral master slayer
	{
		itemId = 39270,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Shattered Sword
	{
		itemId = 22402,
		type = WEAPON_SWORD,
		level = 120,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral slayer
	{
		itemId = 22401,
		type = WEAPON_SWORD,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- crude umbral slayer
	{
		itemId = 22400,
		type = WEAPON_SWORD,
		level = 250,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral masterblade
	{
		itemId = 22399,
		type = WEAPON_SWORD,
		level = 120,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- umbral blade
	{
		itemId = 22398,
		type = WEAPON_SWORD,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- crude umbral blade
	{
		itemId = 21696,
		type = WEAPON_DISTANCE,
		unproperly = true
	}, -- icicle bow
	{
		itemId = 21690,
		type = WEAPON_DISTANCE,
		level = 70,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- triple bolt crossbow
	{
		itemId = 12580,
		type = WEAPON_DISTANCE,
		level = 200,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Engraved crossbow
	{
		itemId = 20139,
		type = WEAPON_CLUB,
		level = 20,
		unproperly = true
	}, -- spiky club
	{
		itemId = 20108,
		type = WEAPON_CLUB,
		level = 50,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- pair of iron fists
	{
		itemId = 20104,
		type = WEAPON_CLUB
	}, -- swampling club
	{
		itemId = 20093,
		type = WEAPON_CLUB,
		level = 15,
		unproperly = true
	}, -- life preserver
	{
		itemId = 20092,
		type = WEAPON_SWORD,
		level = 15,
		unproperly = true
	}, -- ratana
	{
		itemId = 19391,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 1,
		mana = 2,
		damage = {8, 18},
		vocation = {
			{"None", true}
		}
	}, -- sorc and priest staff
	{
		itemId = 39271,
		type = WEAPON_WAND,
		wandType = "ice",
		mana = 19,
		damage = {65, 89},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- Shattered Rod
	{
		itemId = 39213,
		type = WEAPON_WAND,
		wandType = "death",
		mana = 14,
		damage = {33, 55},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- Foresworn Wand
	{
		itemId = 19390,
		type = WEAPON_DISTANCE,
		breakChance = 3,
		vocation = {
			{"None", true}
		}
	}, -- mean hunter spear
	{
		itemId = 19389,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"None", true}
		}
	}, -- mean Warrior sword
	{
		itemId = 18465,
		type = WEAPON_SWORD,
		level = 120,
		unproperly = true
	}, -- shiny blade
	{
		itemId = 18454,
		type = WEAPON_DISTANCE,
		level = 105,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- mycological bow
	{
		itemId = 18453,
		type = WEAPON_DISTANCE,
		level = 90,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- crystal crossbow
	{
		itemId = 18452,
		type = WEAPON_CLUB,
		level = 120,
		unproperly = true
	}, -- mycological mace
	{
		itemId = 18451,
		type = WEAPON_AXE,
		level = 120,
		unproperly = true
	}, -- crystalline axe
	{
		itemId = 18450,
		type = WEAPON_SWORD,
		level = 62,
		unproperly = true
	}, -- crystalline sword
	{
		itemId = 18437,
		type = WEAPON_AMMO,
		level = 70,
		unproperly = true,
		action = "removecount"
	}, -- envenomed arrow
	{
		itemId = 18436,
		type = WEAPON_AMMO,
		level = 70,
		unproperly = true,
		action = "removecount"
	}, -- drill bolt
	{
		itemId = 18435,
		type = WEAPON_AMMO,
		level = 90,
		unproperly = true,
		action = "removecount"
	}, -- prismatic bolt
	{
		itemId = 18412,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 65,
		mana = 17,
		damage = {75, 95},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- glacial rod
	{
		itemId = 18411,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 65,
		mana = 17,
		damage = {75, 95},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- muck rod
	{
		itemId = 18409,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 65,
		mana = 17,
		damage = {75, 95},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of everblazing
	{
		itemId = 18390,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 65,
		mana = 17,
		damage = {75, 95},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of defiance
	{
		itemId = 18304,
		type = WEAPON_AMMO,
		level = 90,
		unproperly = true,
		action = "removecount"
	}, -- crystalline arrow
	{
		itemId = 18303,
		type = WEAPON_AMMO,
		action = "removecount"
	}, -- crystal bolt
	{
		itemId = 16111,
		type = WEAPON_DISTANCE,
		level = 150,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- thorn spitter
	{
		itemId = 15649,
		type = WEAPON_AMMO,
		level = 40,
		unproperly = true,
		action = "removecount"
	}, -- vortex bolt
	{
		itemId = 15648,
		type = WEAPON_AMMO,
		level = 30,
		unproperly = true,
		action = "removecount"
	}, -- tarsal arrow
	{
		itemId = 15647,
		type = WEAPON_CLUB,
		level = 48,
		unproperly = true
	}, -- deepling squelcher
	{
		itemId = 15644,
		type = WEAPON_DISTANCE,
		level = 50,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- ornate crossbow
	{
		itemId = 15643,
		type = WEAPON_DISTANCE,
		level = 85,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- hive bow
	{
		itemId = 15492,
		type = WEAPON_AXE,
		level = 70,
		unproperly = true
	}, -- hive scythe
	{
		itemId = 15454,
		type = WEAPON_AXE,
		level = 50,
		unproperly = true
	}, -- guardian axe
	{
		itemId = 15451,
		type = WEAPON_AXE,
		level = 40,
		unproperly = true
	}, -- warrior's axe
	{
		itemId = 15414,
		type = WEAPON_CLUB,
		level = 90,
		unproperly = true
	}, -- ornate mace
	{
		itemId = 15404,
		type = WEAPON_AXE,
		level = 80,
		unproperly = true
	}, -- deepling axe
	{
		itemId = 15400,
		type = WEAPON_CLUB,
		level = 38,
		unproperly = true
	}, -- deepling staff
	{
		itemId = 13880,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 40,
		mana = 13,
		damage = {56, 74},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- shimmer wand
	{
		itemId = 13873,
		type = WEAPON_DISTANCE,
		level = 40,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- shimmer bow
	{
		itemId = 13872,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 40,
		mana = 13,
		damage = {56, 74},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- shimmer rod
	{
		itemId = 13871,
		type = WEAPON_SWORD,
		level = 40,
		unproperly = true
	}, -- shimmer sword
	{
		itemId = 32448,
		type = WEAPON_SWORD,
		level = 300,
		unproperly = true
	}, -- Naga sword
	{
		itemId = 13838,
		type = WEAPON_AXE,
		level = 25,
		unproperly = true
	}, -- heavy trident
	{
		itemId = 32449,
		type = WEAPON_AXE,
		level = 300,
		unproperly = true
	}, -- Naga Axe
	{
		itemId = 13829,
		type = WEAPON_SWORD
	}, -- wooden sword
	{
		itemId = 13760,
		type = WEAPON_WAND,
		wandType = "death",
		level = 37,
		mana = 9,
		damage = {44, 62},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of dimensions
	{
		itemId = 12649,
		type = WEAPON_SWORD,
		level = 82,
		unproperly = true
	}, -- blade of corruption
	{
		itemId = 12648,
		type = WEAPON_CLUB,
		level = 82,
		unproperly = true
	}, -- snake god's sceptre
	{
		itemId = 33429,
		type = WEAPON_CLUB,
		level = 300,
		unproperly = true
	}, -- Naga club
	{
		itemId = 12613,
		type = WEAPON_SWORD,
		level = 58,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- twiceslicer
	{
		itemId = 11323,
		type = WEAPON_AXE,
		level = 25,
		unproperly = true
	}, -- Zaoan halberd
	{
		itemId = 11309,
		type = WEAPON_SWORD,
		level = 20,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- twin hooks
	{
		itemId = 11308,
		type = WEAPON_CLUB,
		level = 55,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- drachaku
	{
		itemId = 11307,
		type = WEAPON_SWORD,
		level = 55,
		unproperly = true
	}, -- Zaoan sword
	{
		itemId = 11306,
		type = WEAPON_SWORD,
		level = 50,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- sai
	{
		itemId = 11305,
		type = WEAPON_AXE,
		level = 60,
		unproperly = true
	}, -- drakinata
	{
		itemId = 10313,
		type = WEAPON_SWORD
	}, -- incredible mumpiz slayer
	{
		itemId = 8932,
		type = WEAPON_SWORD,
		level = 100,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- the calamity
	{
		itemId = 8931,
		type = WEAPON_SWORD,
		level = 120,
		unproperly = true
	}, -- the epiphany
	{
		itemId = 34642,
		type = WEAPON_SWORD,
		level = 100,
		unproperly = true,
		vocation = {
		{"warrior", true},
		{"elite warrior"}
		},
	}, -- malachite sword
	{
		itemId = 8930,
		type = WEAPON_SWORD,
		level = 100,
		unproperly = true
	}, -- emerald sword
	{
		itemId = 8929,
		type = WEAPON_CLUB,
		level = 100,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- the stomper
	{
		itemId = 34641,
		type = WEAPON_CLUB,
		level = 100,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- malachite club
	{
		itemId = 8928,
		type = WEAPON_CLUB,
		level = 100,
		unproperly = true
	}, -- obsidian truncheon
	{
		itemId = 8927,
		type = WEAPON_CLUB,
		level = 120,
		unproperly = true
	}, -- dark trinity mace
	{
		itemId = 8926,
		type = WEAPON_AXE,
		level = 120,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- demonwing axe
	{
		itemId = 39212,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- foresworn axe
	{
		itemId = 34644,
		type = WEAPON_AXE,
		level = 100,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- malachite axe
	{
		itemId = 8925,
		type = WEAPON_AXE,
		level = 130,
		unproperly = true
	}, -- solar axe
	{
		itemId = 8924,
		type = WEAPON_AXE,
		level = 110,
		unproperly = true
	}, -- hellforged axe
	{
		itemId = 8922,
		type = WEAPON_WAND,
		wandType = "death",
		level = 42,
		mana = 13,
		damage = {56, 74},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of voodoo
	{
		itemId = 8921,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 22,
		mana = 5,
		damage = {23, 37},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of draconia
	{
		itemId = 8920,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 37,
		mana = 13,
		damage = {56, 74},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of starmstorm
	{
		itemId = 8912,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 37,
		mana = 13,
		damage = {56, 74},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- springsprout rod
	{
		itemId = 8911,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 22,
		mana = 5,
		damage = {23, 37},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- northwind rod
	{
		itemId = 8910,
		type = WEAPON_WAND,
		wandType = "death",
		level = 42,
		mana = 13,
		damage = {56, 74},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- underworld rod
	{
		itemId = 8858,
		type = WEAPON_DISTANCE,
		level = 70,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- elethriel's elemental bow
	{
		itemId = 8857,
		type = WEAPON_DISTANCE,
		level = 40,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- silkweaver bow
	{
		itemId = 8856,
		type = WEAPON_DISTANCE,
		level = 60,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- yol's bow
	{
		itemId = 8855,
		type = WEAPON_DISTANCE,
		level = 50,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- composite hornbow
	{
		itemId = 8854,
		type = WEAPON_DISTANCE,
		level = 80,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- warsinger bow
	{
		itemId = 8853,
		type = WEAPON_DISTANCE,
		level = 80,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- ironworker
	{
		itemId = 8852,
		type = WEAPON_DISTANCE,
		level = 100,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- devileye
	{
		itemId = 35044,
		type = WEAPON_DISTANCE,
		level = 100,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Vorpal Flame
	{
		itemId = 8851,
		type = WEAPON_DISTANCE,
		level = 130,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- royal crossbow
	{
		itemId = 34806,
		type = WEAPON_DISTANCE,
		level = 100,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Graviton Crossbow
	{
		itemId = 34807,
		type = WEAPON_DISTANCE,
		level = 100,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- The Face Crusher
	{
		itemId = 33930,
		type = WEAPON_DISTANCE,
		level = 300,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- Naga crossbow
	{
		itemId = 8850,
		type = WEAPON_DISTANCE,
		level = 60,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- chain bolter
	{
		itemId = 8849,
		type = WEAPON_DISTANCE,
		level = 45,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- modified crossbow
	{
		itemId = 8602,
		type = WEAPON_SWORD
	}, -- jagged sword
	{
		itemId = 8601,
		type = WEAPON_AXE
	}, -- steel axe
	{
		itemId = 7850,
		type = WEAPON_AMMO,
		level = 20,
		unproperly = true,
		action = "removecount"
	}, -- earth arrow
	{
		itemId = 7840,
		type = WEAPON_AMMO,
		level = 20,
		unproperly = true,
		action = "removecount"
	}, -- flaming arrow
	{
		itemId = 7839,
		type = WEAPON_AMMO,
		level = 20,
		unproperly = true,
		action = "removecount"
	}, -- shiver arrow
	{
		itemId = 7838,
		type = WEAPON_AMMO,
		level = 20,
		unproperly = true,
		action = "removecount"
	}, -- flash arrow
	{
		itemId = 7777,
		type = WEAPON_CLUB,
		level = 50,
		unproperly = true,
		action = "removecharge",
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- icy war hammer
	{
		itemId = 39292,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- foresworn club
	{
		itemId = 7776,
		type = WEAPON_CLUB,
		level = 35,
		unproperly = true,
		action = "removecharge"
	}, -- icy orcish maul
	{
		itemId = 7775,
		type = WEAPON_CLUB,
		level = 60,
		unproperly = true,
		action = "removecharge"
	}, -- icy cranial basher
	{
		itemId = 7774,
		type = WEAPON_CLUB,
		level = 35,
		unproperly = true,
		action = "removecharge"
	}, -- icy crystal mace
	{
		itemId = 7773,
		type = WEAPON_CLUB,
		level = 20,
		unproperly = true,
		action = "removecharge"
	}, -- icy clerical mace
	{
		itemId = 7772,
		type = WEAPON_AXE,
		level = 65,
		unproperly = true,
		action = "removecharge",
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- icy war axe
	{
		itemId = 7771,
		type = WEAPON_AXE,
		level = 35,
		unproperly = true,
		action = "removecharge",
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- icy headchopper
	{
		itemId = 7770,
		type = WEAPON_AXE,
		level = 60,
		unproperly = true,
		action = "removecharge"
	}, -- icy heroic axe
	{
		itemId = 7769,
		type = WEAPON_AXE,
		level = 25,
		unproperly = true,
		action = "removecharge"
	}, -- icy Warrior axe
	{
		itemId = 7768,
		type = WEAPON_AXE,
		level = 20,
		unproperly = true,
		action = "removecharge"
	}, -- icy barbarian axe
	{
		itemId = 7767,
		type = WEAPON_SWORD,
		level = 45,
		unproperly = true,
		action = "removecharge",
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- icy dragon slayer
	{
		itemId = 39291,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- foresworn sword
	{
		itemId = 7766,
		type = WEAPON_SWORD,
		level = 35,
		unproperly = true,
		action = "removecharge",
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- icy blacksteel sword
	{
		itemId = 7765,
		type = WEAPON_SWORD,
		level = 60,
		unproperly = true,
		action = "removecharge"
	}, -- icy mystic blade
	{
		itemId = 7456,
		type = WEAPON_AXE,
		level = 35,
		unproperly = true
	}, -- noble axe
	{
		itemId = 7455,
		type = WEAPON_AXE,
		level = 80,
		unproperly = true
	}, -- mythril axe
	{
		itemId = 7454,
		type = WEAPON_AXE,
		level = 30,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- glorious axe
	{
		itemId = 7453,
		type = WEAPON_AXE,
		level = 85,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- executioner
	{
		itemId = 39272,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- guardian axe
	{
		itemId = 7452,
		type = WEAPON_CLUB,
		level = 30,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- spiked squelcher
	{
		itemId = 7451,
		type = WEAPON_CLUB,
		level = 35,
		unproperly = true
	}, -- shadow sceptre
	{
		itemId = 7450,
		type = WEAPON_CLUB,
		level = 120,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- hammer of prophecy
	{
		itemId = 7449,
		type = WEAPON_SWORD,
		level = 25,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- crystal sword
	{
		itemId = 39281,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Darkshore Sword
	{
		itemId = 39286,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Lightforged Sword
	{
		itemId = 39282,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Darkshore Axe
	{
		itemId = 39288,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Lightforged Axe
	{
		itemId = 39287,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Lightforged Club
	{
		itemId = 39288,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Darkshore Club
	{
		itemId = 7438,
		type = WEAPON_DISTANCE
	}, -- elvish bow
	{
		itemId = 7437,
		type = WEAPON_CLUB,
		level = 30,
		unproperly = true
	}, -- sapphire hammer
	{
		itemId = 7436,
		type = WEAPON_AXE,
		level = 45,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- angelic axe
	{
		itemId = 7435,
		type = WEAPON_AXE,
		level = 85,
		unproperly = true
	}, -- impaler
	{
		itemId = 7434,
		type = WEAPON_AXE,
		level = 75,
		unproperly = true
	}, -- royal axe
	{
		itemId = 7433,
		type = WEAPON_AXE,
		level = 65,
		unproperly = true
	}, -- ravenwing
	{
		itemId = 7432,
		type = WEAPON_CLUB,
		level = 20,
		unproperly = true
	}, -- furry club
	{
		itemId = 7431,
		type = WEAPON_CLUB,
		level = 80,
		unproperly = true
	}, -- demonbone
	{
		itemId = 7430,
		type = WEAPON_CLUB,
		level = 30,
		unproperly = true
	}, -- dragonbone staff
	{
		itemId = 7429,
		type = WEAPON_CLUB,
		level = 75,
		unproperly = true
	}, -- blessed sceptre
	{
		itemId = 7428,
		type = WEAPON_CLUB,
		level = 55,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- bonebreaker
	{
		itemId = 7427,
		type = WEAPON_CLUB,
		level = 45,
		unproperly = true
	}, -- chaos mace
	{
		itemId = 7426,
		type = WEAPON_CLUB,
		level = 40,
		unproperly = true
	}, -- amber staff
	{
		itemId = 7425,
		type = WEAPON_CLUB,
		level = 20,
		unproperly = true
	}, -- taurus mace
	{
		itemId = 7424,
		type = WEAPON_CLUB,
		level = 30,
		unproperly = true
	}, -- lunar staff
	{
		itemId = 7423,
		type = WEAPON_CLUB,
		level = 85,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- skullcrusher
	{
		itemId = 7422,
		type = WEAPON_CLUB,
		level = 70,
		unproperly = true
	}, -- jade hammer
	{
		itemId = 7421,
		type = WEAPON_CLUB,
		level = 65,
		unproperly = true
	}, -- onyx flail
	{
		itemId = 7420,
		type = WEAPON_AXE,
		level = 70,
		unproperly = true
	}, -- reaper's axe
	{
		itemId = 7419,
		type = WEAPON_AXE,
		level = 40,
		unproperly = true
	}, -- dreaded cleaver
	{
		itemId = 7418,
		type = WEAPON_SWORD,
		level = 70,
		unproperly = true
	}, -- nightmare blade
	{
		itemId = 7417,
		type = WEAPON_SWORD,
		level = 65,
		unproperly = true
	}, -- runed sword
	{
		itemId = 7416,
		type = WEAPON_SWORD,
		level = 55,
		unproperly = true
	}, -- bloody edge
	{
		itemId = 7415,
		type = WEAPON_CLUB,
		level = 60,
		unproperly = true
	}, -- cranial basher
	{
		itemId = 7414,
		type = WEAPON_CLUB,
		level = 60,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- abyss hammer
	{
		itemId = 7413,
		type = WEAPON_AXE,
		level = 40,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- titan axe
	{
		itemId = 7412,
		type = WEAPON_AXE,
		level = 45,
		unproperly = true
	}, -- butcher's axe
	{
		itemId = 7411,
		type = WEAPON_AXE,
		level = 50,
		unproperly = true
	}, -- ornamented axe
	{
		itemId = 7410,
		type = WEAPON_CLUB,
		level = 55,
		unproperly = true
	}, -- queen's sceptre
	{
		itemId = 7409,
		type = WEAPON_CLUB,
		level = 50,
		unproperly = true
	}, -- northern star
	{
		itemId = 7408,
		type = WEAPON_SWORD,
		level = 25,
		unproperly = true
	}, -- wyvern fang
	{
		itemId = 7407,
		type = WEAPON_SWORD,
		level = 30,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- haunted blade
	{
		itemId = 7406,
		type = WEAPON_SWORD,
		level = 35,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- blacksteel sword
	{
		itemId = 7405,
		type = WEAPON_SWORD,
		level = 70,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- havoc blade
	{
		itemId = 7404,
		type = WEAPON_SWORD,
		level = 40,
		unproperly = true
	}, -- assassin dagger
	{
		itemId = 7403,
		type = WEAPON_SWORD,
		level = 65,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- berserker
	{
		itemId = 7402,
		type = WEAPON_SWORD,
		level = 45,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- dragon slayer
	{
		itemId = 7392,
		type = WEAPON_CLUB,
		level = 35,
		unproperly = true
	}, -- orcish maul
	{
		itemId = 7391,
		type = WEAPON_SWORD,
		level = 50,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- thaian sword
	{
		itemId = 7390,
		type = WEAPON_SWORD,
		level = 75,
		unproperly = true
	}, -- the justice seeker
	{
		itemId = 7389,
		type = WEAPON_AXE,
		level = 60,
		unproperly = true
	}, -- heroic axe
	{
		itemId = 7388,
		type = WEAPON_AXE,
		level = 55,
		unproperly = true
	}, -- vile axe
	{
		itemId = 7387,
		type = WEAPON_CLUB,
		level = 25,
		unproperly = true
	}, -- diamond sceptre
	{
		itemId = 7386,
		type = WEAPON_SWORD,
		level = 40,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- mercenary sword
	{
		itemId = 7385,
		type = WEAPON_SWORD,
		level = 20,
		unproperly = true
	}, -- crimson sword
	{
		itemId = 7384,
		type = WEAPON_SWORD,
		level = 60,
		unproperly = true
	}, -- mystic blade
	{
		itemId = 7383,
		type = WEAPON_SWORD,
		level = 50,
		unproperly = true
	}, -- relic sword
	{
		itemId = 7382,
		type = WEAPON_SWORD,
		level = 60,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- demonrage sword
	{
		itemId = 7381,
		type = WEAPON_CLUB,
		level = 20,
		unproperly = true
	}, -- mammoth whopper
	{
		itemId = 7380,
		type = WEAPON_AXE,
		level = 35,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- headchopper
	{
		itemId = 7379,
		type = WEAPON_CLUB,
		level = 25,
		unproperly = true
	}, -- brutetamer's staff
	{
		itemId = 7378,
		type = WEAPON_DISTANCE,
		level = 25,
		unproperly = true,
		breakChance = 3
	}, -- royal spear
	{
		itemId = 7368,
		type = WEAPON_DISTANCE,
		level = 80,
		unproperly = true,
		breakChance = 33
	}, -- assassin star
	{
		itemId = 7367,
		type = WEAPON_DISTANCE,
		level = 42,
		unproperly = true,
		breakChance = 1
	}, -- enchanted spear
	{
		itemId = 7365,
		type = WEAPON_AMMO,
		level = 40,
		unproperly = true,
		action = "removecount"
	}, -- onyx arrow
	{
		itemId = 7364,
		type = WEAPON_AMMO,
		level = 20,
		unproperly = true,
		action = "removecount"
	}, -- sniper arrow
	{
		itemId = 7363,
		type = WEAPON_AMMO,
		level = 30,
		unproperly = true,
		action = "removecount"
	}, -- piercing bolt
	{
		itemId = 6553,
		type = WEAPON_AXE,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- ruthless axe
	{
		itemId = 6529,
		type = WEAPON_AMMO,
		level = 110,
		unproperly = true,
		action = "removecount"
	}, -- infernal bolt
	{
		itemId = 6528,
		type = WEAPON_SWORD,
		level = 75,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- the avenger
	{
		itemId = 36857,
		type = WEAPON_SWORD,
		level = 100,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Tentacle Sword
	{
		itemId = 36866,
		type = WEAPON_CLUB,
		level = 100,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Tentacle Club
	{
		itemId = 36859,
		type = WEAPON_AXE,
		level = 100,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Tentacle Axe
	{
		itemId = 41450,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Eagletalon Axe
	{
		itemId = 39183,
		type = WEAPON_CLUB,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Eagletalon Club
	{
		itemId = 39184,
		type = WEAPON_SWORD,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- Eagletalon Sword
	{
		itemId = 6101,
		type = WEAPON_SWORD
	}, -- Ron the Ripper's sabre
	{
		itemId = 5803,
		type = WEAPON_DISTANCE,
		level = 75,
		unproperly = true,
		vocation = {
			{"hunter", true},
			{"elite hunter"}
		}
	}, -- arbalest
	{
		itemId = 3966,
		type = WEAPON_CLUB
	}, -- banana staff
	{
		itemId = 3965,
		type = WEAPON_DISTANCE,
		level = 20,
		unproperly = true,
		breakChance = 6
	}, -- hunting spear
	{
		itemId = 3964,
		type = WEAPON_AXE
	}, -- ripper lance
	{
		itemId = 3963,
		type = WEAPON_SWORD
	}, -- templar scytheblade
	{
		itemId = 3962,
		type = WEAPON_AXE,
		level = 30,
		unproperly = true
	}, -- beastslayer axe
	{
		itemId = 3961,
		type = WEAPON_CLUB,
		level = 40,
		unproperly = true
	}, -- lich staff
	{
		itemId = 2550,
		type = WEAPON_CLUB
	}, -- scythe
	{
		itemId = 2547,
		type = WEAPON_AMMO,
		level = 55,
		unproperly = true,
		action = "removecount"
	}, -- power bolt
	{
		itemId = 2544,
		type = WEAPON_AMMO,
		action = "removecount"
	}, -- arrow
	{
		itemId = 2543,
		type = WEAPON_AMMO,
		action = "removecount"
	}, -- bolt
	{
		itemId = 42102,
		type = WEAPON_AMMO,
		level = 450,
		unproperly = true,
		action = "removecount"
	}, -- spur bolt
	{
		itemId = 42101,
		type = WEAPON_AMMO,
		level = 450,
		unproperly = true,
		action = "removecount"
	}, -- spur arrow
	{
		itemId = 42100,
		type = WEAPON_AMMO,
		level = 300,
		unproperly = true,
		action = "removecount"
	}, -- thorn bolt
	{
		itemId = 42099,
		type = WEAPON_AMMO,
		level = 300,
		unproperly = true,
		action = "removecount"
	}, -- thorn arrow
	{
		itemId = 2456,
		type = WEAPON_DISTANCE
	}, -- bow
	{
		itemId = 2455,
		type = WEAPON_DISTANCE
	}, -- crossbow
	{
		itemId = 2454,
		type = WEAPON_AXE,
		level = 65,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- war axe
	{
		itemId = 2453,
		type = WEAPON_CLUB,
		level = 75,
		unproperly = true
	}, -- arcane staff
	{
		itemId = 2452,
		type = WEAPON_CLUB,
		level = 70,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- heavy mace
	{
		itemId = 2451,
		type = WEAPON_SWORD,
		level = 35,
		unproperly = true
	}, -- djinn blade
	{
		itemId = 2450,
		type = WEAPON_SWORD
	}, -- bone sword
	{
		itemId = 2449,
		type = WEAPON_CLUB
	}, -- bone club
	{
		itemId = 2448,
		type = WEAPON_CLUB
	}, -- studded club
	{
		itemId = 2447,
		type = WEAPON_AXE,
		level = 50,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- twin axe
	{
		itemId = 2446,
		type = WEAPON_SWORD,
		level = 45,
		unproperly = true
	}, -- pharaoh sword
	{
		itemId = 2445,
		type = WEAPON_CLUB,
		level = 35,
		unproperly = true
	}, -- crystal mace
	{
		itemId = 2444,
		type = WEAPON_CLUB,
		level = 65,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- hammer of wrath
	{
		itemId = 2443,
		type = WEAPON_AXE,
		level = 70,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- ravager's axe
	{
		itemId = 2442,
		type = WEAPON_SWORD
	}, -- heavy machete
	{
		itemId = 2441,
		type = WEAPON_AXE
	}, -- daramian axe
	{
		itemId = 2440,
		type = WEAPON_AXE,
		level = 25,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- daramian waraxe
	{
		itemId = 2439,
		type = WEAPON_CLUB
	}, -- daramian mace
	{
		itemId = 2438,
		type = WEAPON_SWORD,
		level = 30,
		unproperly = true
	}, -- epee
	{
		itemId = 2437,
		type = WEAPON_CLUB
	}, -- light mace
	{
		itemId = 2436,
		type = WEAPON_CLUB,
		level = 30,
		unproperly = true
	}, -- skull staff
	{
		itemId = 2435,
		type = WEAPON_AXE,
		level = 20,
		unproperly = true
	}, -- dwarven axe
	{
		itemId = 2434,
		type = WEAPON_CLUB,
		level = 25,
		unproperly = true
	}, -- dragon hammer
	{
		itemId = 2433,
		type = WEAPON_CLUB
	}, -- enchanted staff
	{
		itemId = 2432,
		type = WEAPON_AXE,
		level = 35,
		unproperly = true
	}, -- fire axe
	{
		itemId = 2431,
		type = WEAPON_AXE,
		level = 90,
		unproperly = true
	}, -- stonecutter axe
	{
		itemId = 2430,
		type = WEAPON_AXE,
		level = 25,
		unproperly = true
	}, -- Warrior axe
	{
		itemId = 2429,
		type = WEAPON_AXE,
		level = 20,
		unproperly = true
	}, -- barbarian axe
	{
		itemId = 2428,
		type = WEAPON_AXE
	}, -- orcish axe
	{
		itemId = 2427,
		type = WEAPON_AXE,
		level = 55,
		unproperly = true
	}, -- guardian halberd
	{
		itemId = 2426,
		type = WEAPON_AXE,
		level = 25,
		unproperly = true
	}, -- naginata
	{
		itemId = 2425,
		type = WEAPON_AXE,
		level = 20,
		unproperly = true
	}, -- obsidian lance
	{
		itemId = 2424,
		type = WEAPON_CLUB,
		level = 45,
		unproperly = true
	}, -- silver mace
	{
		itemId = 2423,
		type = WEAPON_CLUB,
		level = 20,
		unproperly = true
	}, -- clerical mace
	{
		itemId = 2422,
		type = WEAPON_CLUB
	}, -- iron hammer
	{
		itemId = 2421,
		type = WEAPON_CLUB,
		level = 85,
		unproperly = true
	}, -- thunder hammer
	{
		itemId = 2420,
		type = WEAPON_SWORD
	}, -- machete
	{
		itemId = 2419,
		type = WEAPON_SWORD
	}, -- scimitar
	{
		itemId = 2418,
		type = WEAPON_AXE
	}, -- golden sickle
	{
		itemId = 2417,
		type = WEAPON_CLUB
	}, -- battle hammer
	{
		itemId = 2416,
		type = WEAPON_CLUB
	}, -- crowbar
	{
		itemId = 2415,
		type = WEAPON_AXE,
		level = 95,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- great axe
	{
		itemId = 2414,
		type = WEAPON_AXE,
		level = 60,
		unproperly = true
	}, -- dragon lance
	{
		itemId = 2413,
		type = WEAPON_SWORD,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- broadsword
	{
		itemId = 2412,
		type = WEAPON_SWORD
	}, -- katana
	{
		itemId = 2411,
		type = WEAPON_SWORD
	}, -- poison dagger
	{
		itemId = 2410,
		type = WEAPON_DISTANCE,
		breakChance = 7
	}, -- throwing knife
	{
		itemId = 2409,
		type = WEAPON_SWORD
	}, -- serpent sword
	{
		itemId = 2408,
		type = WEAPON_SWORD,
		level = 120,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- warlord sword
	{
		itemId = 2407,
		type = WEAPON_SWORD,
		level = 30,
		unproperly = true
	}, -- bright sword
	{
		itemId = 2406,
		type = WEAPON_SWORD
	}, -- short sword
	{
		itemId = 2405,
		type = WEAPON_AXE
	}, -- sickle
	{
		itemId = 2404,
		type = WEAPON_SWORD
	}, -- combat knife
	{
		itemId = 2403,
		type = WEAPON_SWORD
	}, -- knife
	{
		itemId = 2402,
		type = WEAPON_SWORD
	}, -- silver dagger
	{
		itemId = 2401,
		type = WEAPON_CLUB
	}, -- staff
	{
		itemId = 2400,
		type = WEAPON_SWORD,
		level = 80,
		unproperly = true
	}, -- magic sword
	{
		itemId = 2399,
		type = WEAPON_DISTANCE,
		breakChance = 10
	}, -- throwing star
	{
		itemId = 2398,
		type = WEAPON_CLUB
	}, -- mace
	{
		itemId = 2397,
		type = WEAPON_SWORD
	}, -- longsword
	{
		itemId = 2396,
		type = WEAPON_SWORD,
		action = "removecharge",
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- ice rapier
	{
		itemId = 2395,
		type = WEAPON_SWORD
	}, -- carlin sword
	{
		itemId = 2394,
		type = WEAPON_CLUB
	}, -- morning star
	{
		itemId = 2393,
		type = WEAPON_SWORD,
		level = 55,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- giant sword
	{
		itemId = 2392,
		type = WEAPON_SWORD,
		level = 30,
		unproperly = true
	}, -- fire sword
	{
		itemId = 2391,
		type = WEAPON_CLUB,
		level = 50,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- war hammer
	{
		itemId = 2390,
		type = WEAPON_SWORD,
		level = 140,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- magic longsword
	{
		itemId = 2389,
		type = WEAPON_DISTANCE,
		breakChance = 0
	}, -- spear
	{
		itemId = 2388,
		type = WEAPON_AXE
	}, -- hatchet
	{
		itemId = 2387,
		type = WEAPON_AXE,
		level = 25,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- double axe
	{
		itemId = 2386,
		type = WEAPON_AXE
	}, -- axe
	{
		itemId = 2385,
		type = WEAPON_SWORD
	}, -- sabre
	{
		itemId = 2384,
		type = WEAPON_SWORD
	}, -- rapier
	{
		itemId = 2383,
		type = WEAPON_SWORD
	}, -- spike sword
	{
		itemId = 2382,
		type = WEAPON_CLUB
	}, -- club
	{
		itemId = 2381,
		type = WEAPON_AXE,
		level = 25,
		unproperly = true
	}, -- halberd
	{
		itemId = 2380,
		type = WEAPON_AXE
	}, -- hand axe
	{
		itemId = 2379,
		type = WEAPON_SWORD
	}, -- dagger
	{
		itemId = 2378,
		type = WEAPON_AXE,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- battle axe
	{
		itemId = 2377,
		type = WEAPON_SWORD,
		level = 20,
		unproperly = true,
		vocation = {
			{"warrior", true},
			{"elite warrior"}
		}
	}, -- two handed sword
	{
		itemId = 2376,
		type = WEAPON_SWORD
	}, -- sword
	{
		itemId = 2321,
		type = WEAPON_CLUB
	}, -- giant smithhammer
	{
		itemId = 2191,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 13,
		mana = 3,
		damage = {13, 25},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of dragonbreath
	{
		itemId = 2190,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 6,
		mana = 1,
		damage = {8, 18},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of vortex
	{
		itemId = 33932,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 250,
		mana = 21,
		damage = {90, 120},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- naga wand
	{
		itemId = 18503,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 250,
		mana = 24,
		damage = {105, 135},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- naga wand +1
	{
		itemId = 18504,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 250,
		mana = 27,
		damage = {115, 150},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- naga wand +3
	{
		itemId = 18505,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 250,
		mana = 30,
		damage = {130, 175},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- naga wand +5
	{
		itemId = 2189,
		type = WEAPON_WAND,
		wandType = "energy",
		level = 26,
		mana = 8,
		damage = {37, 53},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of cosmic energy
	{
		itemId = 2188,
		type = WEAPON_WAND,
		wandType = "death",
		level = 19,
		mana = 5,
		damage = {23, 37},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of decay
	{
		itemId = 39404,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 25,
		mana = 8,
		damage = {33, 50},
		vocation = {
			{"mage", true},
			{"priest", true, true},
			{"elite mage"},
			{"elite priest"}
		}
	}, -- sanctified wand
	{
		itemId = 39283,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 25,
		damage = {75, 105},
		vocation = {
			{"mage", true},
			{"elite mage"},
		}
	}, -- darkshore wand
	{
		itemId = 39215,
		type = WEAPON_WAND,
		wandType = "fire",
		mana = 32,
		damage = {110, 145},
		vocation = {
			{"mage", true},
			{"elite mage"},
		}
	}, -- divine wand
	{
		itemId = 39285,
		type = WEAPON_WAND,
		wandType = "energy",
		mana = 25,
		damage = {75, 105},
		vocation = {
			{"priest", true},
			{"elite priest"},
		}
	}, -- darkshore rod
	{
		itemId = 2187,
		type = WEAPON_WAND,
		wandType = "fire",
		level = 33,
		mana = 8,
		damage = {56, 74},
		vocation = {
			{"mage", true},
			{"elite mage"}
		}
	}, -- wand of inferno
	{
		itemId = 2186,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 13,
		mana = 3,
		damage = {13, 25},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- moonlight rod
	{
		itemId = 33933,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 250,
		mana = 21,
		damage = {90, 110},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- naga rod
	{
		itemId = 18506,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 250,
		mana = 24,
		damage = {105, 135},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- naga rod +1
	{
		itemId = 18507,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 250,
		mana = 27,
		damage = {115, 150},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- naga rod +3
	{
		itemId = 18508,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 250,
		mana = 30,
		damage = {130, 175},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- naga rod +5
	{
		itemId = 2185,
		type = WEAPON_WAND,
		wandType = "death",
		level = 19,
		mana = 5,
		damage = {23, 37},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- necrotic rod
	{
		itemId = 2183,
		type = WEAPON_WAND,
		wandType = "ice",
		level = 33,
		mana = 13,
		damage = {56, 74},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- hailstorm rod
	{
		itemId = 2182,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 6,
		mana = 2,
		damage = {8, 18},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- snakebit rod
	{
		itemId = 2181,
		type = WEAPON_WAND,
		wandType = "earth",
		level = 26,
		mana = 8,
		damage = {37, 53},
		vocation = {
			{"priest", true},
			{"elite priest"}
		}
	}, -- terra rod
	{
		itemId = 2111,
		type = WEAPON_DISTANCE,
		action = "removecount"
	}, -- snowball
	{
		itemId = 1294,
		type = WEAPON_DISTANCE,
		breakChance = 3
	} -- small stone
}

for index, weaponTable in ipairs(weapons) do
	local weapon = Weapon(weaponTable.type)
	weapon:id(weaponTable.itemId)

	if(weaponTable.action) then
		weapon:action(weaponTable.action)
	end
	if(weaponTable.breakChance) then
		weapon:breakChance(weaponTable.breakChance)
	end
	if(weaponTable.level) then
		weapon:level(weaponTable.level)
	end
	if(weaponTable.mana) then
		weapon:mana(weaponTable.mana)
	end
	if(weaponTable.unproperly) then
		weapon:wieldUnproperly(weaponTable.unproperly)
	end
	if(weaponTable.damage) then
		weapon:damage(weaponTable.damage[1], weaponTable.damage[2])
	end
	if(weaponTable.wandType) then
		weapon:element(weaponTable.wandType)
	end
	if(weaponTable.vocation) then
		for index, vocation in ipairs(weaponTable.vocation) do
			weapon:vocation(vocation[1], vocation[2] or false, vocation[3] or false)
		end
	end

	weapon:register()
end
